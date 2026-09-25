local _, ns = ...

-- Horde Era leveling route for Felwood, levels 55-56.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    FELWOOD = 1448,
    MOONGLADE = 1450,
    WINTERSPRING = 1452,
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
    id = "leveling-era-55-56-felwood",
    title = "55-56 Felwood (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 55 } },
        },
    },
    goals = {
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
            id = "accept-8460-timbermaw-ally",
            kind = "accept",
            priority = 50,
            text = "Accept Timbermaw Ally from Grazle in Emerald Sanctuary.",
            complete = QuestState(8460, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5094, 0.8500, "Grazle",
                    "Travel to Grazle."),
            },
        },
        {
            id = "objective-8460-timbermaw-ally",
            kind = "objective",
            priority = 60,
            text = "Kill the required Deadwood furbolg mobs in Deadwood Village.",
            dependsOn = { "accept-8460-timbermaw-ally" },
            complete = QuestState(8460, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4869, 0.9208, "Deadwood Warrior",
                    "Travel to Deadwood Warrior."),
            },
        },
        {
            id = "turnin-8460-timbermaw-ally",
            kind = "turnin",
            priority = 70,
            text = "Turn in Timbermaw Ally to Grazle in Emerald Sanctuary.",
            dependsOn = { "objective-8460-timbermaw-ally" },
            complete = QuestState(8460, "completed"),
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
            id = "objective-4293-cursed-ooze",
            kind = "objective",
            priority = 100,
            text = "Kill Cursed Ooze and start collecting Felwood Slime Sample, you will need about 35 total Clear both pool area and collect 20 Felwood Slime Sample for now.",
            complete = QuestState(4293, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4067, 0.6691, "Cursed Ooze",
                    "Travel to Cursed Ooze."),
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
                Point(MAP.FELWOOD, 0.4057, 0.5906, "Tainted Ooze",
                    "Travel to Tainted Ooze."),
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
            id = "objective-4102-cleansing-felwood",
            kind = "objective",
            priority = 200,
            text = "Kill Warpwood Moss Flayer and collect 15 Blood Amber in Irontree Woods, (low drop rate).",
            dependsOn = { "accept-4102-cleansing-felwood" },
            complete = QuestState(4102, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.5519, 0.1772, "Warpwood Moss Flayer",
                    "Travel to Warpwood Moss Flayer."),
            },
        },
        {
            id = "objective-4120-the-strength-of-corruption",
            kind = "objective",
            priority = 220,
            text = "Kill 12 Angerclaw Grizzly and 12 Felpaw Ravager in Irontree Woods.",
            complete = QuestState(4120, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.5676, 0.2496, "Angerclaw Grizzly",
                    "Travel to Angerclaw Grizzly."),
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
                Point(MAP.FELWOOD, 0.6477, 0.0817, "Nafien",
                    "Travel to Nafien."),
            },
        },
        {
            id = "turnin-8461-deadwood-of-the-north-2",
            kind = "turnin",
            priority = 270,
            text = "Turn in Deadwood of the North to Nafien in Timbermaw Hold.",
            dependsOn = { "objective-8461-deadwood-of-the-north" },
            complete = QuestState(8461, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.6476, 0.0819, "Nafien",
                    "Travel to Nafien."),
            },
        },
        {
            id = "accept-8465-speak-to-salfa",
            kind = "accept",
            priority = 280,
            text = "Accept Speak to Salfa from Nafien in Timbermaw Hold.",
            complete = QuestState(8465, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.6476, 0.0819, "Nafien",
                    "Travel to Nafien."),
            },
        },
        {
            id = "accept-4505-well-of-corruption",
            kind = "accept",
            priority = 310,
            text = "Accept Well of Corruption from Winna Hazzard in Bloodvenom Post.",
            complete = QuestState(4505, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.3421, 0.5234, "Winna Hazzard",
                    "Travel to Winna Hazzard."),
            },
        },
        {
            id = "objective-5882-cenarion-beacon",
            kind = "objective",
            priority = 330,
            conditions = {
                all = {
                    { quest = { id = 4102, state = "completed" } },
                },
            },
            text = "Speak to Maybess Riverbreeze to get Cenarion Beacon.",
            complete = QuestState(5882, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4675, 0.8313, "Maybess Riverbreeze",
                    "Travel to Maybess Riverbreeze."),
            },
        },
        {
            id = "accept-5157-collection-of-the-corrupt-water",
            kind = "accept",
            priority = 340,
            conditions = {
                all = {
                    { quest = { id = 5155, state = "completed" } },
                },
            },
            text = "Accept Collection of the Corrupt Water from Greta Mosshoof in Emerald Sanctuary.",
            complete = QuestState(5157, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5120, 0.8210, "Greta Mosshoof",
                    "Travel to Greta Mosshoof."),
            },
        },
        {
            id = "accept-8462-speak-to-nafien-2",
            kind = "accept",
            priority = 350,
            text = "Accept Speak to Nafien from Grazle in Emerald Sanctuary.",
            complete = QuestState(8462, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5093, 0.8503, "Grazle",
                    "Travel to Grazle."),
            },
        },
        {
            id = "objective-4505-well-of-corruption",
            kind = "objective",
            priority = 370,
            text = "Use Hardened Flasket next to the Jadefire Satyrs' moonwell in Ruins of Constellas.",
            dependsOn = { "accept-4505-well-of-corruption" },
            complete = QuestState(4505, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.3228, 0.6656, "Ruins of Constellas",
                    "Travel to Ruins of Constellas."),
            },
        },
        {
            id = "objective-5157-collection-of-the-corrupt-water",
            kind = "objective",
            priority = 390,
            conditions = {
                all = {
                    { quest = { id = 5155, state = "completed" } },
                },
            },
            text = "Use Empty Canteen next to the Corrupt Moonwell in Jaedenar.",
            dependsOn = { "accept-5157-collection-of-the-corrupt-water" },
            complete = QuestState(5157, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.3517, 0.5977, "Jaedenar",
                    "Travel to Jaedenar."),
            },
        },
        {
            id = "objective-5882-corrupted-soul-shard",
            kind = "objective",
            priority = 400,
            conditions = {
                all = {
                    { quest = { id = 4102, state = "completed" } },
                },
            },
            text = "Collect 6 Corrupted Soul Shard dropped from any mobs in Felwood, you need to turn in 'Salve by Hunting' quest.",
            complete = QuestState(5882, "complete"),
        },
        {
            id = "turnin-5882-salve-via-hunting",
            kind = "turnin",
            priority = 410,
            conditions = {
                all = {
                    { quest = { id = 4102, state = "completed" } },
                },
            },
            text = "Turn in Salve via Hunting to Maybess Riverbreeze in Felwood. This is an elite. Bring a group.",
            dependsOn = { "objective-5882-cenarion-beacon", "objective-5882-corrupted-soul-shard" },
            complete = QuestState(5882, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.4675, 0.8313, "Maybess Riverbreeze",
                    "Travel to Maybess Riverbreeze."),
            },
        },
        {
            id = "turnin-4505-well-of-corruption",
            kind = "turnin",
            priority = 430,
            text = "Turn in Well of Corruption to Winna Hazzard in Bloodvenom Post.",
            dependsOn = { "objective-4505-well-of-corruption" },
            complete = QuestState(4505, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.3421, 0.5232, "Winna Hazzard",
                    "Travel to Winna Hazzard."),
            },
        },
        {
            id = "accept-4506-corrupted-sabers",
            kind = "accept",
            priority = 440,
            text = "Accept Corrupted Sabers from Winna Hazzard in Bloodvenom Post.",
            complete = QuestState(4506, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.3421, 0.5232, "Winna Hazzard",
                    "Travel to Winna Hazzard."),
            },
        },
        {
            id = "turnin-6162-a-husband-s-last-battle",
            kind = "turnin",
            priority = 450,
            text = "Turn in A Husband's Last Battle to Dreka'Sur in Bloodvenom Post.",
            dependsOn = { "accept-6162-a-husband-s-last-battle" },
            complete = QuestState(6162, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.3480, 0.5271, "Dreka'Sur",
                    "Travel to Dreka'Sur."),
            },
        },
        {
            id = "turnin-5157-collection-of-the-corrupt-water",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { quest = { id = 5155, state = "completed" } },
                },
            },
            text = "Turn in Collection of the Corrupt Water to Greta Mosshoof in Emerald Sanctuary.",
            dependsOn = { "objective-5157-collection-of-the-corrupt-water" },
            complete = QuestState(5157, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.5121, 0.8210, "Greta Mosshoof",
                    "Travel to Greta Mosshoof."),
            },
        },
        {
            id = "objective-4506-corrupted-sabers",
            kind = "objective",
            priority = 490,
            text = "Bring Corrupted Saber back to Winna Hazzard in Bloodvenom Post.",
            dependsOn = { "accept-4506-corrupted-sabers" },
            complete = QuestState(4506, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.3421, 0.5237, "Corrupted Saber",
                    "Travel to Corrupted Saber."),
            },
        },
        {
            id = "turnin-4506-corrupted-sabers",
            kind = "turnin",
            priority = 500,
            text = "Turn in Corrupted Sabers to Winna Hazzard in Bloodvenom Post.",
            dependsOn = { "objective-4506-corrupted-sabers" },
            complete = QuestState(4506, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.3421, 0.5237, "Winna Hazzard",
                    "Travel to Winna Hazzard."),
            },
        },
        {
            id = "turnin-5084-falling-to-corruption",
            kind = "turnin",
            priority = 520,
            text = "Turn in Falling to Corruption in Felpaw Village.",
            complete = QuestState(5084, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.6020, 0.0588, "Felpaw Village",
                    "Travel to Felpaw Village."),
            },
        },
        {
            id = "accept-5085-mystery-goo",
            kind = "accept",
            priority = 530,
            text = "Accept Mystery Goo in Felpaw Village.",
            complete = QuestState(5085, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.6020, 0.0588, "Felpaw Village",
                    "Travel to Felpaw Village."),
            },
        },
        {
            id = "turnin-8464-winterfall-activity",
            kind = "turnin",
            priority = 550,
            text = "Turn in Winterfall Activity to Salfa in Frostfire Hot Springs.",
            complete = QuestState(8464, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.2775, 0.3458, "Salfa",
                    "Travel to Salfa."),
            },
        },
        {
            id = "turnin-5085-mystery-goo",
            kind = "turnin",
            priority = 560,
            text = "Turn in Mystery Goo to Donova Snowden in Frostfire Hot Springs.",
            dependsOn = { "accept-5085-mystery-goo" },
            complete = QuestState(5085, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.3127, 0.4515, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "accept-5086-toxic-horrors",
            kind = "accept",
            priority = 570,
            text = "Accept Toxic Horrors from Donova Snowden in Frostfire Hot Springs.",
            complete = QuestState(5086, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.3127, 0.4515, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
    },
})
