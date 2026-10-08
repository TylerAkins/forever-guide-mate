local _, ns = ...

-- Forever Casual spine: Redridge & Westfall (19-20)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Dungeon quests (Deadmines) belong in Guides/Dungeons/Deadmines.lua.
-- Forever weaves ported from prior Leveling chapters (quest id >= 90000).
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
    ELWYNN_FOREST = 1429,
    REDRIDGE_MOUNTAINS = 1433,
    WESTFALL = 1436,
    STORMWIND_CITY = 1453,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-redridge-and-westfall",
    title = "Redridge & Westfall",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 19 } },
        },
    },
    goals = {
        {
            id = "accept-244-encroaching-gnolls",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
                { race = 4 },
            } },
            text = "Accept Encroaching Gnolls.",
            complete = QuestState(244, "activeOrCompleted"),
            route = {
                Point(1433, 0.1527, 0.7145, "Encroaching Gnolls",
                    "Travel to Encroaching Gnolls."),
            },
        },
        {
            id = "turnin-244-encroaching-gnolls",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
                { race = 4 },
            } },
            text = "Turn in Encroaching Gnolls.",
            complete = QuestState(244, "completed"),
            dependsOn = { "accept-244-encroaching-gnolls" },
            route = {
                Point(1433, 0.3074, 0.6000, "Encroaching Gnolls",
                    "Travel to Encroaching Gnolls."),
            },
        },
        {
            id = "accept-125-the-lost-tools",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Lost Tools.",
            complete = QuestState(125, "activeOrCompleted"),
            route = {
                Point(1433, 0.3214, 0.4864, "The Lost Tools",
                    "Travel to The Lost Tools."),
            },
        },
        {
            id = "accept-118-the-price-of-shoes",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Price of Shoes.",
            complete = QuestState(118, "activeOrCompleted"),
            route = {
                Point(1433, 0.3098, 0.4728, "The Price of Shoes",
                    "Travel to The Price of Shoes."),
            },
        },
        {
            id = "accept-120-messenger-to-stormwind",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Messenger to Stormwind.",
            complete = QuestState(120, "activeOrCompleted"),
            route = {
                Point(1433, 0.2999, 0.4445, "Messenger to Stormwind",
                    "Travel to Messenger to Stormwind."),
            },
        },
        {
            id = "accept-129-a-free-lunch",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Free Lunch.",
            complete = QuestState(129, "activeOrCompleted"),
            route = {
                Point(1433, 0.2675, 0.4435, "A Free Lunch",
                    "Travel to A Free Lunch."),
            },
        },
        {
            id = "turnin-65-the-defias-brotherhood",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Defias Brotherhood.",
            complete = QuestState(65, "completed"),
            route = {
                Point(1433, 0.2648, 0.4535, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "accept-132-the-defias-brotherhood",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Defias Brotherhood.",
            complete = QuestState(132, "activeOrCompleted"),
            route = {
                Point(1433, 0.2648, 0.4535, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "accept-92-redridge-goulash",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Redridge Goulash.",
            complete = QuestState(92, "activeOrCompleted"),
            route = {
                Point(1433, 0.2268, 0.4384, "Redridge Goulash",
                    "Travel to Redridge Goulash."),
            },
        },
        {
            id = "accept-3741-hilary-s-necklace",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Hilary's Necklace.",
            complete = QuestState(3741, "activeOrCompleted"),
            route = {
                Point(1433, 0.2932, 0.5363, "Hilary's Necklace",
                    "Travel to Hilary's Necklace."),
            },
        },
        {
            id = "objective-3741-1-glinting-mud",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Click Glinting Mud.",
            complete = QuestObjective(3741, 1, "Glinting Mud"),
            dependsOn = { "accept-3741-hilary-s-necklace" },
            route = {
                Point(1433, 0.2590, 0.5410, "Glinting Mud",
                    "Travel to Glinting Mud."),
            },
        },
        {
            id = "turnin-3741-hilary-s-necklace",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Hilary's Necklace.",
            complete = QuestState(3741, "completed"),
            dependsOn = { "accept-3741-hilary-s-necklace", "objective-3741-1-glinting-mud" },
            route = {
                Point(1433, 0.2924, 0.5363, "Hilary's Necklace",
                    "Travel to Hilary's Necklace."),
            },
        },
        {
            id = "turnin-132-the-defias-brotherhood",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Defias Brotherhood.",
            complete = QuestState(132, "completed"),
            dependsOn = { "accept-132-the-defias-brotherhood" },
            route = {
                Point(1436, 0.5633, 0.4752, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "accept-135-the-defias-brotherhood",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Defias Brotherhood.",
            complete = QuestState(135, "activeOrCompleted"),
            route = {
                Point(1436, 0.5633, 0.4752, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "turnin-120-messenger-to-stormwind",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Messenger to Stormwind.",
            complete = QuestState(120, "completed"),
            dependsOn = { "accept-120-messenger-to-stormwind" },
            route = {
                Point(1453, 0.6397, 0.7532, "Messenger to Stormwind",
                    "Travel to Messenger to Stormwind."),
            },
        },
        {
            id = "accept-121-messenger-to-stormwind",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Messenger to Stormwind.",
            complete = QuestState(121, "activeOrCompleted"),
            route = {
                Point(1453, 0.6397, 0.7532, "Messenger to Stormwind",
                    "Travel to Messenger to Stormwind."),
            },
        },
        {
            id = "turnin-135-the-defias-brotherhood",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Defias Brotherhood.",
            complete = QuestState(135, "completed"),
            dependsOn = { "accept-135-the-defias-brotherhood" },
            route = {
                Point(1453, 0.7578, 0.5984, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "accept-141-the-defias-brotherhood",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Defias Brotherhood.",
            complete = QuestState(141, "activeOrCompleted"),
            route = {
                Point(1453, 0.7578, 0.5984, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "turnin-141-the-defias-brotherhood",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Defias Brotherhood.",
            complete = QuestState(141, "completed"),
            dependsOn = { "accept-141-the-defias-brotherhood" },
            route = {
                Point(1436, 0.5633, 0.4752, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "accept-142-the-defias-brotherhood",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Defias Brotherhood.",
            complete = QuestState(142, "activeOrCompleted"),
            route = {
                Point(1436, 0.5633, 0.4752, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "objective-103-1-harvest-watcher",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Kill Harvest Watcher.",
            complete = QuestObjective(103, 1, "Harvest Watcher"),
            route = {
                Point(1436, 0.5340, 0.3460, "Harvest Watcher",
                    "Travel to Harvest Watcher."),
            },
        },
        {
            id = "objective-142-1-defias-messenger",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Kill Defias Messenger.",
            complete = QuestObjective(142, 1, "Defias Messenger"),
            dependsOn = { "accept-142-the-defias-brotherhood" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-103-keeper-of-the-flame",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Keeper of the Flame.",
            complete = QuestState(103, "activeOrCompleted"),
            route = {
                Point(1436, 0.3001, 0.8602, "Keeper of the Flame",
                    "Travel to Keeper of the Flame."),
            },
        },
        {
            id = "accept-104-the-coastal-menace",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Coastal Menace.",
            complete = QuestState(104, "activeOrCompleted"),
            route = {
                Point(1436, 0.3001, 0.8602, "The Coastal Menace",
                    "Travel to The Coastal Menace."),
            },
        },
        {
            id = "turnin-103-keeper-of-the-flame",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Keeper of the Flame.",
            complete = QuestState(103, "completed"),
            dependsOn = { "accept-103-keeper-of-the-flame", "objective-103-1-harvest-watcher" },
            route = {
                Point(1436, 0.3001, 0.8602, "Keeper of the Flame",
                    "Travel to Keeper of the Flame."),
            },
        },
        {
            id = "objective-104-1-old-murk-eye",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Kill Old Murk-Eye.",
            complete = QuestObjective(104, 1, "Old Murk-Eye"),
            dependsOn = { "accept-104-the-coastal-menace" },
            route = {
                Point(1436, 0.3240, 0.8260, "Old Murk-Eye",
                    "Travel to Old Murk-Eye."),
            },
        },
        {
            id = "turnin-104-the-coastal-menace",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Coastal Menace.",
            complete = QuestState(104, "completed"),
            dependsOn = { "accept-104-the-coastal-menace", "objective-104-1-old-murk-eye" },
            route = {
                Point(1436, 0.3001, 0.8602, "The Coastal Menace",
                    "Travel to The Coastal Menace."),
            },
        },
        {
            id = "turnin-142-the-defias-brotherhood",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Defias Brotherhood.",
            complete = QuestState(142, "completed"),
            dependsOn = { "accept-142-the-defias-brotherhood", "objective-142-1-defias-messenger" },
            route = {
                Point(1436, 0.5633, 0.4752, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "accept-155-the-defias-brotherhood",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Defias Brotherhood.",
            complete = QuestState(155, "activeOrCompleted"),
            route = {
                Point(1436, 0.5568, 0.4750, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "turnin-155-the-defias-brotherhood",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Defias Brotherhood.",
            complete = QuestState(155, "completed"),
            dependsOn = { "accept-155-the-defias-brotherhood" },
            route = {
                Point(1436, 0.5633, 0.4752, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "accept-246-assessing-the-threat",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Assessing the Threat.",
            complete = QuestState(246, "activeOrCompleted"),
            route = {
                Point(1433, 0.3074, 0.6000, "Assessing the Threat",
                    "Travel to Assessing the Threat."),
            },
        },
        {
            id = "turnin-129-a-free-lunch",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Free Lunch.",
            complete = QuestState(129, "completed"),
            dependsOn = { "accept-129-a-free-lunch" },
            route = {
                Point(1433, 0.1527, 0.7145, "A Free Lunch",
                    "Travel to A Free Lunch."),
            },
        },
        {
            id = "accept-130-visit-the-herbalist",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Visit the Herbalist.",
            complete = QuestState(130, "activeOrCompleted"),
            route = {
                Point(1433, 0.1527, 0.7145, "Visit the Herbalist",
                    "Travel to Visit the Herbalist."),
            },
        },
        {
            id = "objective-246-2-redridge-poacher",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Redridge Poacher.",
            complete = QuestObjective(246, 2, "Redridge Poacher"),
            dependsOn = { "accept-246-assessing-the-threat" },
            route = {
                Point(1433, 0.2940, 0.7840, "Redridge Poacher",
                    "Travel to Redridge Poacher."),
            },
        },
        {
            id = "turnin-246-assessing-the-threat",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Assessing the Threat.",
            complete = QuestState(246, "completed"),
            dependsOn = { "accept-246-assessing-the-threat", "objective-246-2-redridge-poacher" },
            route = {
                Point(1433, 0.3074, 0.6000, "Assessing the Threat",
                    "Travel to Assessing the Threat."),
            },
        },
        {
            id = "accept-2360-mathias-and-the-defias",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Alliance" },
                { class = 4 },
            } },
            text = "Accept Mathias and the Defias.",
            complete = QuestState(2360, "activeOrCompleted"),
            route = {
                Point(1453, 0.7578, 0.5985, "Mathias and the Defias",
                    "Travel to Mathias and the Defias."),
            },
        },
        {
            id = "accept-2281-redridge-rendezvous",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
                { class = 4 },
            } },
            text = "Accept Redridge Rendezvous.",
            complete = QuestState(2281, "activeOrCompleted"),
            route = {
                Point(1453, 0.7576, 0.6036, "Redridge Rendezvous",
                    "Travel to Redridge Rendezvous."),
            },
        },
        {
            id = "accept-1793-the-tome-of-valor",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
                { class = 2 },
            } },
            text = "Accept The Tome of Valor.",
            complete = QuestState(1793, "activeOrCompleted"),
            route = {
                Point(1453, 0.4305, 0.3448, "The Tome of Valor",
                    "Travel to The Tome of Valor."),
            },
        },
        {
            id = "accept-1649-the-tome-of-valor",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
                { class = 2 },
            } },
            text = "Accept The Tome of Valor from Daphne Stilwell in Westfall, or from Duthorian Rall if you already carry the tome.",
            complete = QuestState(1649, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-1649-the-tome-of-valor",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
                { class = 2 },
            } },
            text = "Turn in The Tome of Valor.",
            complete = QuestState(1649, "completed"),
            dependsOn = { "accept-1649-the-tome-of-valor" },
            route = {
                Point(1453, 0.3981, 0.2980, "The Tome of Valor",
                    "Travel to The Tome of Valor."),
            },
        },
        {
            id = "accept-1716-devourer-of-souls",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Accept Devourer of Souls.",
            complete = QuestState(1716, "activeOrCompleted"),
            route = {
                Point(1453, 0.2916, 0.7415, "Devourer of Souls",
                    "Travel to Devourer of Souls."),
            },
        },
        {
            id = "accept-3765-the-corruption-abroad",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Corruption Abroad.",
            complete = QuestState(3765, "activeOrCompleted"),
            route = {
                Point(1453, 0.2140, 0.5580, "The Corruption Abroad",
                    "Travel to The Corruption Abroad."),
            },
        },
        {
            id = "turnin-118-the-price-of-shoes",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Price of Shoes.",
            complete = QuestState(118, "completed"),
            dependsOn = { "accept-118-the-price-of-shoes" },
            route = {
                Point(1429, 0.4171, 0.6555, "The Price of Shoes",
                    "Travel to The Price of Shoes."),
            },
        },
        {
            id = "accept-119-return-to-verner",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Verner.",
            complete = QuestState(119, "activeOrCompleted"),
            route = {
                Point(1429, 0.4171, 0.6555, "Return to Verner",
                    "Travel to Verner."),
            },
        },
        {
            id = "accept-94-a-watchful-eye",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Watchful Eye.",
            complete = QuestState(94, "activeOrCompleted"),
            route = {
                Point(1429, 0.6522, 0.6971, "A Watchful Eye",
                    "Travel to A Watchful Eye."),
            },
        },
        {
            id = "objective-125-1-sunken-chest",
            kind = "objective",
            priority = 490,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Click Sunken Chest.",
            complete = QuestObjective(125, 1, "Sunken Chest"),
            dependsOn = { "accept-125-the-lost-tools" },
            route = {
                Point(1433, 0.4153, 0.5467, "Sunken Chest",
                    "Travel to Sunken Chest."),
            },
        },
        {
            id = "turnin-125-the-lost-tools",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Lost Tools.",
            complete = QuestState(125, "completed"),
            dependsOn = { "accept-125-the-lost-tools", "objective-125-1-sunken-chest" },
            route = {
                Point(1433, 0.3214, 0.4864, "The Lost Tools",
                    "Travel to The Lost Tools."),
            },
        },
        {
            id = "accept-89-the-everstill-bridge",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Everstill Bridge.",
            complete = QuestState(89, "activeOrCompleted"),
            route = {
                Point(1433, 0.3214, 0.4864, "The Everstill Bridge",
                    "Travel to The Everstill Bridge."),
            },
        },
        {
            id = "turnin-119-return-to-verner",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Verner.",
            complete = QuestState(119, "completed"),
            dependsOn = { "accept-119-return-to-verner" },
            route = {
                Point(1433, 0.3097, 0.4727, "Return to Verner",
                    "Travel to Verner."),
            },
        },
        {
            id = "accept-122-underbelly-scales",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Underbelly Scales.",
            complete = QuestState(122, "activeOrCompleted"),
            route = {
                Point(1433, 0.3097, 0.4727, "Underbelly Scales",
                    "Travel to Underbelly Scales."),
            },
        },
        {
            id = "accept-124-a-baying-of-gnolls",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Baying of Gnolls.",
            complete = QuestState(124, "activeOrCompleted"),
            route = {
                Point(1433, 0.3097, 0.4727, "A Baying of Gnolls",
                    "Travel to A Baying of Gnolls."),
            },
        },
        {
            id = "turnin-122-underbelly-scales",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Underbelly Scales.",
            complete = QuestState(122, "completed"),
            dependsOn = { "accept-122-underbelly-scales" },
            route = {
                Point(1433, 0.3097, 0.4727, "Underbelly Scales",
                    "Travel to Underbelly Scales."),
            },
        },
        {
            id = "turnin-121-messenger-to-stormwind",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Messenger to Stormwind.",
            complete = QuestState(121, "completed"),
            dependsOn = { "accept-121-messenger-to-stormwind" },
            route = {
                Point(1433, 0.2999, 0.4445, "Messenger to Stormwind",
                    "Travel to Messenger to Stormwind."),
            },
        },
        {
            id = "turnin-92-redridge-goulash",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Redridge Goulash.",
            complete = QuestState(92, "completed"),
            dependsOn = { "accept-92-redridge-goulash" },
            route = {
                Point(1433, 0.2268, 0.4384, "Redridge Goulash",
                    "Travel to Redridge Goulash."),
            },
        },
        {
            id = "turnin-130-visit-the-herbalist",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Visit the Herbalist.",
            complete = QuestState(130, "completed"),
            dependsOn = { "accept-130-visit-the-herbalist" },
            route = {
                Point(1433, 0.2186, 0.4633, "Visit the Herbalist",
                    "Travel to Visit the Herbalist."),
            },
        },
        {
            id = "accept-131-delivering-daffodils",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Delivering Daffodils.",
            complete = QuestState(131, "activeOrCompleted"),
            route = {
                Point(1433, 0.2186, 0.4633, "Delivering Daffodils",
                    "Travel to Delivering Daffodils."),
            },
        },
        {
            id = "turnin-131-delivering-daffodils",
            kind = "turnin",
            priority = 600,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Delivering Daffodils.",
            complete = QuestState(131, "completed"),
            dependsOn = { "accept-131-delivering-daffodils" },
            route = {
                Point(1433, 0.2675, 0.4434, "Delivering Daffodils",
                    "Travel to Delivering Daffodils."),
            },
        },
        {
            id = "objective-89-1-redridge-mystic",
            kind = "objective",
            priority = 610,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Kill Redridge Mystic.",
            complete = QuestObjective(89, 1, "Redridge Mystic"),
            dependsOn = { "accept-89-the-everstill-bridge" },
            route = {
                Point(1433, 0.2120, 0.3840, "Redridge Mystic",
                    "Travel to Redridge Mystic."),
            },
        },
        {
            id = "objective-89-2-iron-rivet",
            kind = "objective",
            priority = 620,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Collect 5 Iron Rivet.",
            complete = QuestObjective(89, 2, "Iron Rivet"),
            dependsOn = { "accept-89-the-everstill-bridge" },
            route = {
                Point(1433, 0.2120, 0.3840, "Iron Rivet",
                    "Travel to Iron Rivet."),
            },
        },
        {
            id = "turnin-2281-redridge-rendezvous",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
                { class = 4 },
            } },
            text = "Turn in Redridge Rendezvous.",
            complete = QuestState(2281, "completed"),
            dependsOn = { "accept-2281-redridge-rendezvous" },
            route = {
                Point(1433, 0.2806, 0.5204, "Redridge Rendezvous",
                    "Travel to Redridge Rendezvous."),
            },
        },
        {
            id = "accept-2282-alther-s-mill",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
                { class = 4 },
            } },
            text = "Accept Alther's Mill.",
            complete = QuestState(2282, "activeOrCompleted"),
            route = {
                Point(1433, 0.2806, 0.5204, "Alther's Mill",
                    "Travel to Alther's Mill."),
            },
        },
        {
            id = "turnin-124-a-baying-of-gnolls",
            kind = "turnin",
            priority = 650,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Baying of Gnolls.",
            complete = QuestState(124, "completed"),
            dependsOn = { "accept-124-a-baying-of-gnolls" },
            route = {
                Point(1433, 0.3097, 0.4727, "A Baying of Gnolls",
                    "Travel to A Baying of Gnolls."),
            },
        },
        {
            id = "turnin-89-the-everstill-bridge",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Everstill Bridge.",
            complete = QuestState(89, "completed"),
            dependsOn = { "accept-89-the-everstill-bridge", "objective-89-1-redridge-mystic", "objective-89-2-iron-rivet" },
            route = {
                Point(1433, 0.3214, 0.4864, "The Everstill Bridge",
                    "Travel to The Everstill Bridge."),
            },
        },
        {
            id = "turnin-2282-alther-s-mill",
            kind = "turnin",
            priority = 670,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
                { class = 4 },
            } },
            text = "Turn in Alther's Mill.",
            complete = QuestState(2282, "completed"),
            dependsOn = { "accept-2282-alther-s-mill" },
            route = {
                Point(1433, 0.2806, 0.5204, "Alther's Mill",
                    "Travel to Alther's Mill."),
            },
        },
        {
            id = "accept-166-the-defias-brotherhood",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Defias Brotherhood.",
            complete = QuestState(166, "activeOrCompleted"),
            route = {
                Point(1436, 0.5633, 0.4752, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "accept-214-red-silk-bandanas",
            kind = "accept",
            priority = 690,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Red Silk Bandanas.",
            complete = QuestState(214, "activeOrCompleted"),
            route = {
                Point(1436, 0.5667, 0.4735, "Red Silk Bandanas",
                    "Travel to Red Silk Bandanas."),
            },
        },
        {
            id = "turnin-166-the-defias-brotherhood",
            kind = "turnin",
            priority = 730,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Defias Brotherhood.",
            complete = QuestState(166, "completed"),
            dependsOn = { "accept-166-the-defias-brotherhood" },
            route = {
                Point(1436, 0.5633, 0.4752, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "turnin-214-red-silk-bandanas",
            kind = "turnin",
            priority = 740,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Red Silk Bandanas.",
            complete = QuestState(214, "completed"),
            dependsOn = { "accept-214-red-silk-bandanas" },
            route = {
                Point(1436, 0.5667, 0.4735, "Red Silk Bandanas",
                    "Travel to Red Silk Bandanas."),
            },
        },
        {
            id = "accept-373-the-unsent-letter",
            kind = "accept",
            priority = 750,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Use the A Waterlogged Envelope to accept The Unsent Letter.",
            complete = QuestState(373, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-373-the-unsent-letter",
            kind = "turnin",
            priority = 760,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Unsent Letter.",
            complete = QuestState(373, "completed"),
            dependsOn = { "accept-373-the-unsent-letter" },
            route = {
                Point(1453, 0.4919, 0.3028, "The Unsent Letter",
                    "Travel to The Unsent Letter."),
            },
        },
        {
            id = "accept-971-knowledge-in-the-deeps",
            kind = "accept",
            priority = 800,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept Knowledge in the Deeps.",
            complete = QuestState(971, "activeOrCompleted"),
            route = {
                Point(1455, 0.5083, 0.0562, "Knowledge in the Deeps",
                    "Travel to Knowledge in the Deeps."),
            },
        },
        {
            id = "woven-accept-98407-show-of-force",
            kind = "accept",
            priority = 810,
            conditions = { all = {
                { level = { min = 17 } },
                { quest = { id = 98407, state = "notCompleted" } },
            } },
            text = "Accept Show of Force from Deputy Feldon.",
            complete = QuestState(98407, "activeOrCompleted"),
            route = {
                Point(1433, 0.3080, 0.6000, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "woven-objective-98407-show-of-force",
            kind = "objective",
            priority = 820,
            conditions = { level = { min = 17 } },
            text = "Show of Force: collect 5 Spiked Collars from Redridge Thrashers.",
            complete = QuestState(98407, "complete"),
            route = {
                Point(1433, 0.3000, 0.8120, "Redridge Thrasher",
                    "Travel to Redridge Thrasher."),
            },
        },
        {
            id = "woven-turnin-98407-show-of-force",
            kind = "turnin",
            priority = 830,
            conditions = { level = { min = 17 } },
            text = "Turn in Show of Force to Deputy Feldon.",
            complete = QuestState(98407, "completed"),
            route = {
                Point(1433, 0.3080, 0.6000, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
    },
})
