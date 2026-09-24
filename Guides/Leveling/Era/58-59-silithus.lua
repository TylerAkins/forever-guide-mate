local _, ns = ...

-- Horde Era leveling route for Silithus, levels 58-59.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    SILITHUS = 1451,
    THUNDER_BLUFF = 1456,
    MOONGLADE = 1450,
    UNGORO = 1449,
    UNDERCITY = 1458,
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
    id = "leveling-era-58-59-silithus",
    title = "58-59 Silithus (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 58 } },
        },
    },
    goals = {
        {
            id = "travel-1123-thunder-bluff",
            kind = "travel",
            priority = 10,
            text = "Travel to Elder Rise in Thunder Bluff.",
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7570, 0.3154, "Elder Rise",
                    "Travel to Elder Rise."),
            },
        },
        {
            id = "accept-1000-the-new-frontier",
            kind = "accept",
            priority = 20,
            text = "Accept The New Frontier from Bluff Runner Windstrider in Thunder Bluff.",
            complete = QuestState(1000, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7855, 0.2859, "Bluff Runner Windstrider",
                    "Travel to Bluff Runner Windstrider."),
            },
        },
        {
            id = "turnin-4987-glyphed-oaken-branch",
            kind = "turnin",
            priority = 30,
            text = "Turn in Glyphed Oaken Branch to Nara Wildmane in Elder Rise.",
            complete = QuestState(4987, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7570, 0.3154, "Nara Wildmane",
                    "Travel to Nara Wildmane."),
            },
        },
        {
            id = "turnin-1004-the-new-frontier",
            kind = "turnin",
            priority = 40,
            text = "Turn in The New Frontier to Archdruid Hamuul Runetotem in Elder Rise.",
            complete = QuestState(1004, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7855, 0.2859, "Archdruid Hamuul Runetotem",
                    "Travel to Archdruid Hamuul Runetotem."),
            },
        },
        {
            id = "turnin-1000-the-new-frontier",
            kind = "turnin",
            priority = 50,
            text = "Turn in The New Frontier to Archdruid Hamuul Runetotem in Elder Rise.",
            dependsOn = { "accept-1000-the-new-frontier" },
            complete = QuestState(1000, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7855, 0.2859, "Archdruid Hamuul Runetotem",
                    "Travel to Archdruid Hamuul Runetotem."),
            },
        },
        {
            id = "turnin-1018-the-new-frontier",
            kind = "turnin",
            priority = 60,
            text = "Turn in The New Frontier to Archdruid Hamuul Runetotem in Elder Rise.",
            complete = QuestState(1018, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7855, 0.2859, "Archdruid Hamuul Runetotem",
                    "Travel to Archdruid Hamuul Runetotem."),
            },
        },
        {
            id = "accept-1123-rabine-saturna",
            kind = "accept",
            priority = 70,
            text = "Accept Rabine Saturna from Archdruid Hamuul Runetotem in Elder Rise.",
            complete = QuestState(1123, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7855, 0.2859, "Archdruid Hamuul Runetotem",
                    "Travel to Archdruid Hamuul Runetotem."),
            },
        },
        {
            id = "travel-1124-nighthaven",
            kind = "travel",
            priority = 80,
            text = "Travel to Nighthaven in.",
            route = {
                Point(MAP.MOONGLADE, 0.5172, 0.4507, "Nighthaven",
                    "Travel to Nighthaven."),
            },
        },
        {
            id = "turnin-1123-rabine-saturna",
            kind = "turnin",
            priority = 90,
            text = "Turn in Rabine Saturna to Rabine Saturna in Nighthaven.",
            dependsOn = { "accept-1123-rabine-saturna" },
            complete = QuestState(1123, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5172, 0.4507, "Rabine Saturna",
                    "Travel to Rabine Saturna."),
            },
        },
        {
            id = "accept-1124-wasteland",
            kind = "accept",
            priority = 100,
            text = "Accept Wasteland from Rabine Saturna in Nighthaven.",
            complete = QuestState(1124, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5172, 0.4507, "Rabine Saturna",
                    "Travel to Rabine Saturna."),
            },
        },
        {
            id = "objective-4642-melding-of-influences",
            kind = "objective",
            priority = 110,
            text = "Find a Primal Ooze and use Encased Corrupt Ooze near it. It becomes a Gargantuan Ooze. Kill it and collect the Merged Ooze Sample.",
            complete = QuestState(4642, "complete"),
            route = {
                Point(MAP.UNGORO, 0.3906, 0.1717, "Primal Ooze",
                    "Travel to Primal Ooze."),
            },
        },
        {
            id = "travel-1125-silithus",
            kind = "travel",
            priority = 120,
            text = "Travel to Silithus.",
            route = {
                Point(MAP.SILITHUS, 0.2912, 0.2211, "Continue toward Silithus",
                    "Continue toward Silithus."),
                Point(MAP.SILITHUS, 0.3006, 0.1041, "Silithus",
                    "Travel to Silithus."),
            },
        },
        {
            id = "travel-1125-valor-s-rest",
            kind = "travel",
            priority = 130,
            text = "Travel to Valor's Rest in Silithus.",
            route = {
                Point(MAP.SILITHUS, 0.8183, 0.1883, "Valor's Rest",
                    "Travel to Valor's Rest."),
            },
        },
        {
            id = "turnin-1124-wasteland",
            kind = "turnin",
            priority = 140,
            text = "Turn in Wasteland to Layo Starstrike in Valor's Rest.",
            dependsOn = { "accept-1124-wasteland" },
            complete = QuestState(1124, "completed"),
            route = {
                Point(MAP.SILITHUS, 0.8183, 0.1883, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "accept-1125-the-spirits-of-southwind",
            kind = "accept",
            priority = 150,
            text = "Accept The Spirits of Southwind from Layo Starstrike in Valor's Rest.",
            complete = QuestState(1125, "activeOrCompleted"),
            route = {
                Point(MAP.SILITHUS, 0.8179, 0.1874, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "travel-1125-southwind-village",
            kind = "travel",
            priority = 160,
            text = "Travel to Southwind Village.",
            route = {
                Point(MAP.SILITHUS, 0.6022, 0.5248, "Southwind Village",
                    "Travel to Southwind Village."),
            },
        },
        {
            id = "objective-1125-the-spirits-of-southwind",
            kind = "objective",
            priority = 170,
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
            priority = 180,
            text = "Turn in The Spirits of Southwind to Layo Starstrike in Valor's Rest.",
            dependsOn = { "objective-1125-the-spirits-of-southwind" },
            complete = QuestState(1125, "completed"),
            route = {
                Point(MAP.SILITHUS, 0.8187, 0.1893, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "travel-1125-valor-s-rest-2",
            kind = "travel",
            priority = 190,
            text = "Travel to Valor's Rest.",
            route = {
                Point(MAP.SILITHUS, 0.8187, 0.1888, "Valor's Rest",
                    "Travel to Valor's Rest."),
            },
        },
        {
            id = "accept-1126-hive-in-the-tower",
            kind = "accept",
            priority = 200,
            text = "Accept Hive in the Tower from Layo Starstrike in Valor's Rest.",
            complete = QuestState(1126, "activeOrCompleted"),
            route = {
                Point(MAP.SILITHUS, 0.8187, 0.1893, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "travel-1126-southwind-village",
            kind = "travel",
            priority = 210,
            text = "Travel to Southwind Village.",
            route = {
                Point(MAP.SILITHUS, 0.6022, 0.5248, "Southwind Village",
                    "Travel to Southwind Village."),
            },
        },
        {
            id = "objective-1126-hive-in-the-tower",
            kind = "objective",
            priority = 220,
            text = "Click on Hive' Ashi Pod on top of the tower and 2 Hive'Ashi Ambusher will spawn, kill them and collect Encrusted Silithid Object in Southwind Village.",
            dependsOn = { "accept-1126-hive-in-the-tower" },
            complete = QuestState(1126, "complete"),
            route = {
                Point(MAP.SILITHUS, 0.6022, 0.5248, "Hive'Ashi Ambusher",
                    "Travel to Hive'Ashi Ambusher."),
            },
        },
        {
            id = "travel-6844-valor-s-rest",
            kind = "travel",
            priority = 230,
            text = "Travel to Valor's Rest.",
            route = {
                Point(MAP.SILITHUS, 0.8187, 0.1888, "Valor's Rest",
                    "Travel to Valor's Rest."),
            },
        },
        {
            id = "turnin-1126-hive-in-the-tower",
            kind = "turnin",
            priority = 240,
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
            priority = 250,
            text = "Accept Umber, Archivist from Layo Starstrike in Valor's Rest.",
            complete = QuestState(6844, "activeOrCompleted"),
            route = {
                Point(MAP.SILITHUS, 0.8187, 0.1893, "Layo Starstrike",
                    "Travel to Layo Starstrike."),
            },
        },
        {
            id = "travel-undercity",
            kind = "travel",
            priority = 260,
            text = "Travel to Undercity.",
            route = {
                Point(MAP.UNDERCITY, 0.4749, 0.7340, "Undercity",
                    "Travel to Undercity."),
            },
        },
        {
            id = "turnin-4642-melding-of-influences",
            kind = "turnin",
            priority = 270,
            text = "Turn in Melding of Influences to Chemist Fuely in The Apothecarium.",
            dependsOn = { "objective-4642-melding-of-influences" },
            complete = QuestState(4642, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.4749, 0.7340, "Chemist Fuely",
                    "Travel to Chemist Fuely."),
            },
        },
        {
            id = "travel-5181-light-s-hope-chapel",
            kind = "travel",
            priority = 280,
            text = "Travel to Light's Hope Chapel.",
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.8151, 0.5977, "Light's Hope Chapel",
                    "Travel to Light's Hope Chapel."),
            },
        },
        {
            id = "turnin-5210-brother-carlin",
            kind = "turnin",
            priority = 290,
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
            priority = 300,
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
            priority = 310,
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
            priority = 320,
            text = "Collect the Shattered Sword of Marduk from down below in The Infectis Scar.",
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            complete = QuestObjective(5181, 2),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.5389, 0.6578, "The Infectis Scar",
                    "Travel to The Infectis Scar."),
            },
        },
        {
            id = "travel-light-s-hope-chapel",
            kind = "travel",
            priority = 330,
            text = "Travel to Light's Hope Chapel.",
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.8152, 0.5975, "Light's Hope Chapel",
                    "Travel to Light's Hope Chapel."),
            },
        },
        {
            id = "turnin-5181-villains-of-darrowshire",
            kind = "turnin",
            priority = 340,
            text = "Turn in Villains of Darrowshire to Carlin Redpath in Light's Hope Chapel.",
            dependsOn = { "objective-5181-1-skull-of-horgus", "objective-5181-2-shattered-sword-of-marduk" },
            complete = QuestState(5181, "completed"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.8152, 0.5975, "Carlin Redpath",
                    "Travel to Carlin Redpath."),
            },
        },
        {
            id = "travel-6135-the-marris-stead",
            kind = "travel",
            priority = 350,
            text = "Travel to The Marris Stead.",
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.2656, 0.7472, "The Marris Stead",
                    "Travel to The Marris Stead."),
            },
        },
        {
            id = "accept-6135-duskwing-oh-how-i-hate-thee",
            kind = "accept",
            priority = 360,
            text = "Accept Duskwing, Oh How I Hate Thee... from Nathanos Blightcaller in The Marris Stead.",
            complete = QuestState(6135, "activeOrCompleted"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.2656, 0.7472, "Nathanos Blightcaller",
                    "Travel to Nathanos Blightcaller."),
            },
        },
        {
            id = "accept-6136-the-corpulent-one",
            kind = "accept",
            priority = 370,
            text = "Accept The Corpulent One from Nathanos Blightcaller in The Marris Stead.",
            complete = QuestState(6136, "activeOrCompleted"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.2672, 0.7474, "Nathanos Blightcaller",
                    "Travel to Nathanos Blightcaller."),
            },
        },
        {
            id = "objective-6135-duskwing-oh-how-i-hate-thee",
            kind = "objective",
            priority = 380,
            text = "Kill Duskwing and collect Patch of Duskwing's Fur. This is an elite. Bring a group.",
            dependsOn = { "accept-6135-duskwing-oh-how-i-hate-thee" },
            complete = QuestState(6135, "complete"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.3114, 0.7203, "Duskwing",
                    "Travel to Duskwing."),
            },
        },
        {
            id = "turnin-6135-duskwing-oh-how-i-hate-thee",
            kind = "turnin",
            priority = 390,
            text = "Turn in Duskwing, Oh How I Hate Thee... to Nathanos Blightcaller in The Marris Stead.",
            dependsOn = { "objective-6135-duskwing-oh-how-i-hate-thee" },
            complete = QuestState(6135, "completed"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.2656, 0.7475, "Nathanos Blightcaller",
                    "Travel to Nathanos Blightcaller."),
            },
        },
        {
            id = "objective-6136-the-corpulent-one",
            kind = "objective",
            priority = 400,
            text = "Kill Borelgore. This is an elite. Bring a group.",
            dependsOn = { "accept-6136-the-corpulent-one" },
            complete = QuestState(6136, "complete"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.5362, 0.3189, "Continue toward The Corpulent One",
                    "Continue toward The Corpulent One."),
                Point(MAP.EASTERN_PLAGUELANDS, 0.6224, 0.3317, "Borelgore",
                    "Travel to Borelgore."),
            },
        },
        {
            id = "turnin-6136-the-corpulent-one",
            kind = "turnin",
            priority = 410,
            text = "Turn in The Corpulent One to Nathanos Blightcaller in The Marris Stead.",
            dependsOn = { "objective-6136-the-corpulent-one" },
            complete = QuestState(6136, "completed"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.2672, 0.7474, "Nathanos Blightcaller",
                    "Travel to Nathanos Blightcaller."),
            },
        },
    },
})
