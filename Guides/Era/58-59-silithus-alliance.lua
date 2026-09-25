local _, ns = ...

-- Alliance Era leveling route for Silithus, levels 58-59.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    SILITHUS = 1451,
    STORMWIND = 1453,
    TELDRASSIL = 1438,
    DARNASSUS = 1457,
    MOONGLADE = 1450,
    FELWOOD = 1448,
    TANARIS = 1446,
    UNGORO = 1449,
    IRONFORGE = 1455,
    EASTERN_PLAGUELANDS = 1423,
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
    id = "leveling-era-58-59-silithus-alliance",
    title = "58-59 Silithus (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 58 } },
        },
    },
    goals = {
        {
            id = "accept-1015-the-new-frontier",
            kind = "accept",
            priority = 10,
            text = "Accept The New Frontier from Crier Goodman in The Canals.",
            complete = QuestState(1015, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.4671, 0.6525, "Crier Goodman",
                    "Travel to Crier Goodman."),
            },
        },
        {
            id = "accept-6187-order-must-be-restored",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 6186, state = "completed" } },
                },
            },
            text = "Accept Order Must Be Restored from Highlord Bolvar Fordragon in Stormwind Keep.",
            complete = QuestState(6187, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7819, 0.1810, "Highlord Bolvar Fordragon",
                    "Travel to Highlord Bolvar Fordragon."),
            },
        },
        {
            id = "accept-979-find-ranshalla",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 978, state = "completed" } },
                },
            },
            text = "Accept Find Ranshalla from Erelas Ambersky in Rut'theran Village.",
            complete = QuestState(979, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5549, 0.9205, "Erelas Ambersky",
                    "Travel to Erelas Ambersky."),
            },
        },
        {
            id = "accept-6761-the-new-frontier",
            kind = "accept",
            priority = 50,
            text = "Accept The New Frontier from Archdruid Fandral Staghelm in Cenarion Enclave.",
            complete = QuestState(6761, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3470, 0.0906, "Archdruid Fandral Staghelm",
                    "Travel to Archdruid Fandral Staghelm."),
            },
        },
        {
            id = "turnin-6761-the-new-frontier",
            kind = "turnin",
            priority = 60,
            text = "Turn in The New Frontier to Mathrengyl Bearwalker in Cenarion Enclave.",
            dependsOn = { "accept-6761-the-new-frontier" },
            complete = QuestState(6761, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3539, 0.0835, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker."),
            },
        },
        {
            id = "accept-6762-rabine-saturna",
            kind = "accept",
            priority = 70,
            text = "Accept Rabine Saturna from Mathrengyl Bearwalker in Cenarion Enclave.",
            complete = QuestState(6762, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3539, 0.0835, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker."),
            },
        },
        {
            id = "objective-4441-felbound-ancients",
            kind = "objective",
            priority = 80,
            text = "Use Eridan's Vial in the fountain to get Vial of Blessed Water in Temple of the Moon.",
            complete = QuestState(4441, "complete"),
            route = {
                Point(MAP.DARNASSUS, 0.3904, 0.8459, "Temple of the Moon",
                    "Travel to Temple of the Moon."),
            },
        },
        {
            id = "accept-4493-march-of-the-silithid",
            kind = "accept",
            priority = 90,
            text = "Accept March of the Silithid from Gracina Spiritmight in Temple of the Moon.",
            complete = QuestState(4493, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.4183, 0.8562, "Gracina Spiritmight",
                    "Travel to Gracina Spiritmight."),
            },
        },
        {
            id = "turnin-6762-rabine-saturna",
            kind = "turnin",
            priority = 110,
            text = "Turn in Rabine Saturna to Mathrengyl Bearwalker in Nighthaven.",
            dependsOn = { "accept-6762-rabine-saturna" },
            complete = QuestState(6762, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5168, 0.4505, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker."),
            },
        },
        {
            id = "accept-1124-wasteland",
            kind = "accept",
            priority = 120,
            text = "Accept Wasteland from Rabine Saturna in Nighthaven.",
            complete = QuestState(1124, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5168, 0.4505, "Rabine Saturna",
                    "Travel to Rabine Saturna."),
            },
        },
        {
            id = "accept-4442-purified",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { quest = { id = 4441, state = "completed" } },
                },
            },
            text = "Accept Purified! from Eridan Bluewind in Emerald Sanctuary.",
            complete = QuestState(4442, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5135, 0.8153, "Eridan Bluewind",
                    "Travel to Eridan Bluewind."),
            },
        },
        {
            id = "turnin-4442-purified",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 4441, state = "completed" } },
                },
            },
            text = "Turn in Purified! to Eridan Bluewind in Emerald Sanctuary.",
            dependsOn = { "accept-4442-purified" },
            complete = QuestState(4442, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.5135, 0.8153, "Eridan Bluewind",
                    "Travel to Eridan Bluewind."),
            },
        },
        {
            id = "turnin-4493-march-of-the-silithid",
            kind = "turnin",
            priority = 160,
            text = "Turn in March of the Silithid to Alchemist Pestlezugg in Gadgetzan.",
            dependsOn = { "accept-4493-march-of-the-silithid" },
            complete = QuestState(4493, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5088, 0.2695, "Alchemist Pestlezugg",
                    "Travel to Alchemist Pestlezugg."),
            },
        },
        {
            id = "accept-4496-bungle-in-the-jungle",
            kind = "accept",
            priority = 170,
            text = "Accept Bungle in the Jungle from Alchemist Pestlezugg in Gadgetzan.",
            complete = QuestState(4496, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5091, 0.2696, "Alchemist Pestlezugg",
                    "Travel to Alchemist Pestlezugg."),
            },
        },
        {
            id = "objective-4496-1-gorishi-scent-gland",
            kind = "objective",
            priority = 190,
            text = "Kill Gorishi insects and collect Gorishi Scent Gland in The Slithering Scar.",
            dependsOn = { "accept-4496-bungle-in-the-jungle" },
            complete = QuestObjective(4496, 1),
            route = {
                Point(MAP.UNGORO, 0.5609, 0.6727, "Gorishi Reaver",
                    "Travel to Gorishi Reaver."),
            },
        },
        {
            id = "objective-4496-2-un-goro-soil",
            kind = "objective",
            priority = 200,
            text = "Collect 5 Un'Goro Soil from any npc or from Un'Goro Dirt Pile on the ground in Un'Goro.",
            dependsOn = { "accept-4496-bungle-in-the-jungle" },
            complete = QuestObjective(4496, 2),
        },
        {
            id = "turnin-1124-wasteland",
            kind = "turnin",
            priority = 220,
            text = "Turn in Wasteland to Layo Starstrike in Valor's Rest.",
            dependsOn = { "accept-1124-wasteland" },
            complete = QuestState(1124, "completed"),
            route = {
                Point(MAP.SILITHUS, 0.8187, 0.1888, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "accept-1125-the-spirits-of-southwind",
            kind = "accept",
            priority = 230,
            text = "Accept The Spirits of Southwind from Layo Starstrike in Valor's Rest.",
            complete = QuestState(1125, "activeOrCompleted"),
            route = {
                Point(MAP.SILITHUS, 0.8183, 0.1878, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "objective-1125-the-spirits-of-southwind",
            kind = "objective",
            priority = 250,
            text = "Kill Tortured Sentinel and 8 Tortured Druid in Southwind Village.",
            dependsOn = { "accept-1125-the-spirits-of-southwind" },
            complete = QuestState(1125, "complete"),
            route = {
                Point(MAP.SILITHUS, 0.6246, 0.5216, "Tortured Sentinel",
                    "Travel to Tortured Sentinel."),
            },
        },
        {
            id = "turnin-1125-the-spirits-of-southwind",
            kind = "turnin",
            priority = 260,
            text = "Turn in The Spirits of Southwind to Layo Starstrike in Valor's Rest.",
            dependsOn = { "objective-1125-the-spirits-of-southwind" },
            complete = QuestState(1125, "completed"),
            route = {
                Point(MAP.SILITHUS, 0.8187, 0.1893, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "accept-1126-hive-in-the-tower",
            kind = "accept",
            priority = 280,
            text = "Accept Hive in the Tower from Layo Starstrike in Valor's Rest.",
            complete = QuestState(1126, "activeOrCompleted"),
            route = {
                Point(MAP.SILITHUS, 0.8187, 0.1893, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "objective-1126-hive-in-the-tower",
            kind = "objective",
            priority = 300,
            text = "Click on Hive' Ashi Pod on top of the tower and 2 Hive'Ashi Ambusher will spawn, kill them and collect Encrusted Silithid Object in Southwind Village.",
            dependsOn = { "accept-1126-hive-in-the-tower" },
            complete = QuestState(1126, "complete"),
            route = {
                Point(MAP.SILITHUS, 0.6022, 0.5248, "Hive'Ashi Ambusher",
                    "Travel to Hive'Ashi Ambusher."),
            },
        },
        {
            id = "turnin-1126-hive-in-the-tower",
            kind = "turnin",
            priority = 320,
            text = "Turn in Hive in the Tower to Layo Starstrike in Valor's Rest.",
            dependsOn = { "objective-1126-hive-in-the-tower" },
            complete = QuestState(1126, "completed"),
            route = {
                Point(MAP.SILITHUS, 0.8187, 0.1893, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "accept-6844-umber-archivist",
            kind = "accept",
            priority = 330,
            text = "Accept Umber, Archivist from Layo Starstrike in Valor's Rest.",
            complete = QuestState(6844, "activeOrCompleted"),
            route = {
                Point(MAP.SILITHUS, 0.8187, 0.1893, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "turnin-4496-bungle-in-the-jungle",
            kind = "turnin",
            priority = 350,
            text = "Turn in Bungle in the Jungle to Alchemist Pestlezugg in Gadgetzan.",
            dependsOn = { "objective-4496-1-gorishi-scent-gland", "objective-4496-2-un-goro-soil" },
            complete = QuestState(4496, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5090, 0.2697, "Alchemist Pestlezugg",
                    "Travel to Alchemist Pestlezugg."),
            },
        },
        {
            id = "turnin-5210-brother-carlin",
            kind = "turnin",
            priority = 380,
            text = "Turn in Brother Carlin to Carlin Redpath in Light's Hope Chapel.",
            complete = QuestState(5210, "completed"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.8151, 0.5977, "Carlin Redpath",
                    "Travel to Carlin Redpath."),
            },
        },
        {
            id = "accept-5181-villains-of-darrowshire",
            kind = "accept",
            priority = 390,
            text = "Accept Villains of Darrowshire from Carlin Redpath in Light's Hope Chapel.",
            complete = QuestState(5181, "activeOrCompleted"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.8151, 0.5977, "Carlin Redpath",
                    "Travel to Carlin Redpath."),
            },
        },
        {
            id = "objective-5181-1-skull-of-horgus",
            kind = "objective",
            priority = 400,
            text = "Collect Skull of Horgus underwater in Blackwood Lake.",
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            complete = QuestObjective(5181, 1),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.5107, 0.4994, "Blackwood Lake",
                    "Travel to Blackwood Lake."),
            },
        },
        {
            id = "objective-5181-2-shattered-sword-of-marduk",
            kind = "objective",
            priority = 410,
            text = "Collect Shattered Sword of Marduk from down below in The Infectis Scar (53.89, 65.78.",
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            complete = QuestObjective(5181, 2),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.5389, 0.6578, "The Infectis Scar",
                    "Travel to The Infectis Scar."),
            },
        },
        {
            id = "turnin-5181-villains-of-darrowshire",
            kind = "turnin",
            priority = 430,
            text = "Turn in Villains of Darrowshire to Carlin Redpath in Light's Hope Chapel.",
            dependsOn = { "objective-5181-1-skull-of-horgus", "objective-5181-2-shattered-sword-of-marduk" },
            complete = QuestState(5181, "completed"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.8152, 0.5975, "Carlin Redpath",
                    "Travel to Carlin Redpath."),
            },
        },
    },
})
