local _, ns = ...

-- Forever Casual spine: Westfall (13-15)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
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
    WESTFALL = 1436,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-westfall",
    title = "Westfall",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 13 } },
        },
    },
    goals = {
        {
            id = "turnin-184-furlbrow-s-deed",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Turn in Furlbrow's Deed.",
            complete = QuestState(184, "completed"),
            route = {
                Point(1436, 0.5996, 0.1936, "Furlbrow's Deed",
                    "Travel to Furlbrow's Deed."),
            },
        },
        {
            id = "accept-64-the-forgotten-heirloom",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Accept The Forgotten Heirloom.",
            complete = QuestState(64, "activeOrCompleted"),
            route = {
                Point(1436, 0.5996, 0.1936, "The Forgotten Heirloom",
                    "Travel to The Forgotten Heirloom."),
            },
        },
        {
            id = "accept-109-report-to-gryan-stoutmantle",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Accept Report to Gryan Stoutmantle.",
            complete = QuestState(109, "activeOrCompleted"),
            route = {
                Point(1436, 0.5996, 0.1936, "Report to Gryan Stoutmantle",
                    "Travel to Report to Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-36-westfall-stew",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Accept Westfall Stew.",
            complete = QuestState(36, "activeOrCompleted"),
            route = {
                Point(1436, 0.5992, 0.1942, "Westfall Stew",
                    "Travel to Westfall Stew."),
            },
        },
        {
            id = "accept-151-poor-old-blanchy",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Accept Poor Old Blanchy.",
            complete = QuestState(151, "activeOrCompleted"),
            route = {
                Point(1436, 0.5992, 0.1942, "Poor Old Blanchy",
                    "Travel to Poor Old Blanchy."),
            },
        },
        {
            id = "accept-9-the-killing-fields",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Accept The Killing Fields.",
            complete = QuestState(9, "activeOrCompleted"),
            route = {
                Point(1436, 0.5605, 0.3122, "The Killing Fields",
                    "Travel to The Killing Fields."),
            },
        },
        {
            id = "turnin-36-westfall-stew",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Turn in Westfall Stew.",
            complete = QuestState(36, "completed"),
            dependsOn = { "accept-36-westfall-stew" },
            route = {
                Point(1436, 0.5642, 0.3052, "Westfall Stew",
                    "Travel to Westfall Stew."),
            },
        },
        {
            id = "accept-38-westfall-stew",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Accept Westfall Stew.",
            complete = QuestState(38, "activeOrCompleted"),
            route = {
                Point(1436, 0.5642, 0.3052, "Westfall Stew",
                    "Travel to Westfall Stew."),
            },
        },
        {
            id = "accept-22-goretusk-liver-pie",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Accept Goretusk Liver Pie.",
            complete = QuestState(22, "activeOrCompleted"),
            route = {
                Point(1436, 0.5642, 0.3052, "Goretusk Liver Pie",
                    "Travel to Goretusk Liver Pie."),
            },
        },
        {
            id = "turnin-109-report-to-gryan-stoutmantle",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Turn in Report to Gryan Stoutmantle.",
            complete = QuestState(109, "completed"),
            dependsOn = { "accept-109-report-to-gryan-stoutmantle" },
            route = {
                Point(1436, 0.5633, 0.4752, "Report to Gryan Stoutmantle",
                    "Travel to Report to Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-12-the-people-s-militia",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Accept The People's Militia.",
            complete = QuestState(12, "activeOrCompleted"),
            route = {
                Point(1436, 0.5633, 0.4752, "The People's Militia",
                    "Travel to The People's Militia."),
            },
        },
        {
            id = "accept-102-patrolling-westfall",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 4 }, { race = 7 } } },
            } },
            text = "Accept Patrolling Westfall.",
            complete = QuestState(102, "activeOrCompleted"),
            route = {
                Point(1436, 0.5642, 0.4762, "Patrolling Westfall",
                    "Travel to Patrolling Westfall."),
            },
        },
        {
            id = "accept-153-red-leather-bandanas",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Accept Red Leather Bandanas.",
            complete = QuestState(153, "activeOrCompleted"),
            route = {
                Point(1436, 0.5398, 0.5298, "Red Leather Bandanas",
                    "Travel to Red Leather Bandanas."),
            },
        },
        {
            id = "objective-153-1-defias-trapper",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Kill Defias Trapper.",
            complete = QuestObjective(153, 1, "Defias Trapper"),
            dependsOn = { "accept-153-red-leather-bandanas" },
            route = {
                Point(1436, 0.4840, 0.4540, "Defias Trapper",
                    "Travel to Defias Trapper."),
            },
        },
        {
            id = "objective-64-1-furlbrow-s-wardrobe",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Click Furlbrow's Wardrobe.",
            complete = QuestObjective(64, 1, "Furlbrow's Wardrobe"),
            dependsOn = { "accept-64-the-forgotten-heirloom" },
            route = {
                Point(1436, 0.4932, 0.1940, "Furlbrow's Wardrobe",
                    "Travel to Furlbrow's Wardrobe."),
            },
        },
        {
            id = "objective-102-1-riverpaw-gnoll",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Kill Riverpaw Gnoll.",
            complete = QuestObjective(102, 1, "Riverpaw Gnoll"),
            dependsOn = { "accept-102-patrolling-westfall" },
            route = {
                Point(1436, 0.5620, 0.1320, "Riverpaw Gnoll",
                    "Travel to Riverpaw Gnoll."),
            },
        },
        {
            id = "objective-38-2-murloc-raider",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Kill Murloc Raider.",
            complete = QuestObjective(38, 2, "Murloc Raider"),
            dependsOn = { "accept-38-westfall-stew" },
            route = {
                Point(1436, 0.5340, 0.1180, "Murloc Raider",
                    "Travel to Murloc Raider."),
            },
        },
        {
            id = "turnin-64-the-forgotten-heirloom",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Forgotten Heirloom.",
            complete = QuestState(64, "completed"),
            dependsOn = { "accept-64-the-forgotten-heirloom", "objective-64-1-furlbrow-s-wardrobe" },
            route = {
                Point(1436, 0.5996, 0.1936, "The Forgotten Heirloom",
                    "Travel to The Forgotten Heirloom."),
            },
        },
        {
            id = "turnin-151-poor-old-blanchy",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Poor Old Blanchy.",
            complete = QuestState(151, "completed"),
            dependsOn = { "accept-151-poor-old-blanchy" },
            route = {
                Point(1436, 0.5992, 0.1942, "Poor Old Blanchy",
                    "Travel to Poor Old Blanchy."),
            },
        },
        {
            id = "turnin-22-goretusk-liver-pie",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Goretusk Liver Pie.",
            complete = QuestState(22, "completed"),
            dependsOn = { "accept-22-goretusk-liver-pie" },
            route = {
                Point(1436, 0.5642, 0.3052, "Goretusk Liver Pie",
                    "Travel to Goretusk Liver Pie."),
            },
        },
        {
            id = "objective-38-4-harvest-watcher",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Kill Harvest Watcher.",
            complete = QuestObjective(38, 4, "Harvest Watcher"),
            dependsOn = { "accept-38-westfall-stew" },
            route = {
                Point(1436, 0.5600, 0.3120, "Harvest Watcher",
                    "Travel to Harvest Watcher."),
            },
        },
        {
            id = "turnin-9-the-killing-fields",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Killing Fields.",
            complete = QuestState(9, "completed"),
            dependsOn = { "accept-9-the-killing-fields" },
            route = {
                Point(1436, 0.5605, 0.3122, "The Killing Fields",
                    "Travel to The Killing Fields."),
            },
        },
        {
            id = "turnin-38-westfall-stew",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Westfall Stew.",
            complete = QuestState(38, "completed"),
            dependsOn = { "accept-38-westfall-stew", "objective-38-2-murloc-raider", "objective-38-4-harvest-watcher" },
            route = {
                Point(1436, 0.5642, 0.3052, "Westfall Stew",
                    "Travel to Westfall Stew."),
            },
        },
        {
            id = "turnin-12-the-people-s-militia",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The People's Militia.",
            complete = QuestState(12, "completed"),
            dependsOn = { "accept-12-the-people-s-militia" },
            route = {
                Point(1436, 0.5633, 0.4752, "The People's Militia",
                    "Travel to The People's Militia."),
            },
        },
        {
            id = "accept-65-the-defias-brotherhood",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Defias Brotherhood.",
            complete = QuestState(65, "activeOrCompleted"),
            route = {
                Point(1436, 0.5633, 0.4752, "The Defias Brotherhood",
                    "Travel to The Defias Brotherhood."),
            },
        },
        {
            id = "turnin-102-patrolling-westfall",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Patrolling Westfall.",
            complete = QuestState(102, "completed"),
            dependsOn = { "accept-102-patrolling-westfall", "objective-102-1-riverpaw-gnoll" },
            route = {
                Point(1436, 0.5642, 0.4762, "Patrolling Westfall",
                    "Travel to Patrolling Westfall."),
            },
        },
        {
            id = "turnin-153-red-leather-bandanas",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Red Leather Bandanas.",
            complete = QuestState(153, "completed"),
            dependsOn = { "accept-153-red-leather-bandanas", "objective-153-1-defias-trapper" },
            route = {
                Point(1436, 0.5398, 0.5298, "Red Leather Bandanas",
                    "Travel to Red Leather Bandanas."),
            },
        },
        {
            id = "objective-1141-1-darkshore-grouper",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Collect 6 Darkshore Grouper.",
            complete = QuestObjective(1141, 1, "Darkshore Grouper"),
            route = {
                Point(1455, 0.2416, 0.7467, "Darkshore Grouper",
                    "Travel to Darkshore Grouper."),
            },
        },
        {
            id = "woven-accept-92909-harvesting-the-harvesters",
            kind = "accept",
            priority = 290,
            conditions = { level = { min = 15 } },
            text = "Accept Harvesting the Harvesters from Ozwin Ironsprocket at Saldean's Farm.",
            complete = QuestState(92909, "activeOrCompleted"),
            route = {
                Point(1436, 0.5160, 0.3220, "Ozwin Ironsprocket",
                    "Travel to Ozwin Ironsprocket."),
            },
        },
        {
            id = "woven-accept-92742-testing-the-wells",
            kind = "accept",
            priority = 300,
            conditions = { level = { min = 12 } },
            text = "Accept Testing the Wells from Alba Fairmoon in Sentinel Hill.",
            complete = QuestState(92742, "activeOrCompleted"),
            route = {
                Point(1436, 0.5240, 0.5300, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "woven-accept-92744-murloc-gills",
            kind = "accept",
            priority = 310,
            conditions = { level = { min = 12 } },
            text = "Accept Murloc Gills from Alba Fairmoon in Sentinel Hill.",
            complete = QuestState(92744, "activeOrCompleted"),
            route = {
                Point(1436, 0.5240, 0.5300, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "woven-accept-92745-the-state-of-the-mines",
            kind = "accept",
            priority = 320,
            conditions = { level = { min = 14 } },
            text = "Accept The State of the Mines from Alba Fairmoon in Sentinel Hill.",
            complete = QuestState(92745, "activeOrCompleted"),
            route = {
                Point(1436, 0.5240, 0.5300, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "woven-accept-98021-journey-to-sentinel-hill",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { level = { min = 13 } },
                    { race = 95 },
                },
            },
            text = "Accept Journey to Sentinel Hill from Highlord Bolvar Fordragon in Stormwind Keep. This step is for Alliance Skyborne.",
            complete = QuestState(98021, "activeOrCompleted"),
            route = {
                Point(1453, 0.7800, 0.1800, "Highlord Bolvar Fordragon",
                    "Travel to Highlord Bolvar Fordragon."),
            },
        },
        {
            id = "woven-turnin-98021-journey-to-sentinel-hill",
            kind = "turnin",
            priority = 340,
            conditions = {
                all = {
                    { level = { min = 13 } },
                    { race = 95 },
                },
            },
            text = "Turn in Journey to Sentinel Hill to Gryan Stoutmantle in Sentinel Hill. This step is for Alliance Skyborne.",
            complete = QuestState(98021, "completed"),
            route = {
                Point(1436, 0.5620, 0.4760, "Gryan Stoutmantle",
                    "Travel to Gryan Stoutmantle."),
            },
        },
        {
            id = "woven-objective-92745-kobold-digger",
            kind = "objective",
            priority = 350,
            conditions = { level = { min = 14 } },
            text = "The State of the Mines: slay 4 Kobold Diggers in the Jangolode Mine.",
            complete = QuestObjective(92745, 1),
            route = {
                Point(1436, 0.4460, 0.2340, "Kobold Digger",
                    "Travel to Kobold Digger."),
            },
        },
        {
            id = "woven-objective-92742-testing-the-wells",
            kind = "objective",
            priority = 360,
            conditions = { level = { min = 12 } },
            useClientPin = true,
            text = "Testing the Wells: sample the wells at the Jansen Stead and the Molsen Farm. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(92742, "complete"),
            route = {
                Point(1436, 0.6000, 0.1937, "The Jansen Stead",
                    "Travel to The Jansen Stead."),
                Point(1436, 0.5600, 0.3120, "Saldean's Farm",
                    "Travel to Saldean's Farm."),
            },
        },
        {
            id = "woven-objective-92744-murloc-gills",
            kind = "objective",
            priority = 370,
            conditions = { level = { min = 12 } },
            text = "Murloc Gills: collect 7 Longshore Murloc Gills from murlocs along the shore.",
            complete = QuestState(92744, "complete"),
            route = {
                Point(1436, 0.2600, 0.5040, "Murloc Warrior",
                    "Travel to Murloc Warrior."),
            },
        },
        {
            id = "woven-turnin-92742-testing-the-wells",
            kind = "turnin",
            priority = 380,
            conditions = { level = { min = 12 } },
            text = "Turn in Testing the Wells to Alba Fairmoon in Sentinel Hill.",
            complete = QuestState(92742, "completed"),
            route = {
                Point(1436, 0.5240, 0.5300, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "woven-turnin-92744-murloc-gills",
            kind = "turnin",
            priority = 390,
            conditions = { level = { min = 12 } },
            text = "Turn in Murloc Gills to Alba Fairmoon in Sentinel Hill.",
            complete = QuestState(92744, "completed"),
            route = {
                Point(1436, 0.5240, 0.5300, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "woven-objective-92909-harvesting-the-harvesters",
            kind = "objective",
            priority = 400,
            conditions = { level = { min = 15 } },
            text = "Harvesting the Harvesters: collect 14 Golem Isosprings and 5 Harvester Gyrostabilizers from the harvest golems.",
            complete = QuestState(92909, "complete"),
            route = {
                Point(1436, 0.5640, 0.3500, "Harvest Golem",
                    "Travel to Harvest Golem."),
            },
        },
        {
            id = "woven-turnin-92909-harvesting-the-harvesters",
            kind = "turnin",
            priority = 410,
            conditions = { level = { min = 15 } },
            text = "Turn in Harvesting the Harvesters to Ozwin Ironsprocket at Saldean's Farm.",
            complete = QuestState(92909, "completed"),
            route = {
                Point(1436, 0.5160, 0.3220, "Ozwin Ironsprocket",
                    "Travel to Ozwin Ironsprocket."),
            },
        },
        {
            id = "woven-turnin-92910-harvesting-the-harvesters",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { level = { min = 15 } },
                    { quest = { id = 92910, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Harvesting the Harvesters to Ozwin Ironsprocket if a harvester dropped a Precessive Autocognition Assembly.",
            complete = QuestState(92910, "completed"),
            route = {
                Point(1436, 0.5160, 0.3220, "Ozwin Ironsprocket",
                    "Travel to Ozwin Ironsprocket."),
            },
        },
        {
            id = "woven-objective-92745-riverpaw-miner",
            kind = "objective",
            priority = 430,
            conditions = { level = { min = 14 } },
            text = "The State of the Mines: slay 6 Riverpaw Miners in the Gold Coast Quarry.",
            complete = QuestObjective(92745, 2),
            route = {
                Point(1436, 0.3000, 0.4740, "Riverpaw Miner",
                    "Travel to Riverpaw Miner."),
            },
        },
        {
            id = "woven-accept-92109-my-first-alchemy-set",
            kind = "accept",
            priority = 440,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = 171 } },
                },
            },
            useClientPin = true,
            text = "Accept My First Alchemy Set from the young alchemist in the Moonbrook barn. This step is for alchemists. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(92109, "activeOrCompleted"),
            route = {
                Point(1436, 0.4401, 0.6947, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "woven-objective-92109-my-first-alchemy-set",
            kind = "objective",
            priority = 450,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = 171 } },
                },
            },
            text = "My First Alchemy Set: gather 5 Empty Vials, 5 Peacebloom, and 5 Silverleaf for the young alchemist in the Moonbrook barn. This step is for alchemists.",
            complete = QuestState(92109, "complete"),
            route = {
                Point(1436, 0.4401, 0.6947, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "woven-turnin-92109-my-first-alchemy-set",
            kind = "turnin",
            priority = 460,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = 171 } },
                },
            },
            text = "Turn in My First Alchemy Set to the young alchemist in the Moonbrook barn. This step is for alchemists.",
            complete = QuestState(92109, "completed"),
            route = {
                Point(1436, 0.4401, 0.6947, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "woven-accept-92110-my-first-real-potion",
            kind = "accept",
            priority = 470,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = 171 } },
                },
            },
            text = "Accept My First Real Potion from the young alchemist in the Moonbrook barn. This step is for alchemists.",
            complete = QuestState(92110, "activeOrCompleted"),
            route = {
                Point(1436, 0.4401, 0.6947, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "woven-objective-92110-my-first-real-potion",
            kind = "objective",
            priority = 480,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = 171 } },
                },
            },
            text = "My First Real Potion: gather 3 Murloc Eyes for the young alchemist in the Moonbrook barn. This step is for alchemists.",
            complete = QuestState(92110, "complete"),
            route = {
                Point(1436, 0.4401, 0.6947, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "woven-turnin-92110-my-first-real-potion",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = 171 } },
                },
            },
            text = "Turn in My First Real Potion to the young alchemist in the Moonbrook barn. This step is for alchemists.",
            complete = QuestState(92110, "completed"),
            route = {
                Point(1436, 0.4401, 0.6947, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "woven-turnin-92745-the-state-of-the-mines",
            kind = "turnin",
            priority = 500,
            conditions = { level = { min = 14 } },
            text = "Turn in The State of the Mines to Alba Fairmoon in Sentinel Hill.",
            complete = QuestState(92745, "completed"),
            route = {
                Point(1436, 0.5240, 0.5300, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "woven-accept-92747-moonbrook-espionage",
            kind = "accept",
            priority = 510,
            conditions = { level = { min = 16 } },
            text = "Accept Moonbrook Espionage from Alba Fairmoon in Sentinel Hill.",
            complete = QuestState(92747, "activeOrCompleted"),
            route = {
                Point(1436, 0.5240, 0.5300, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "woven-accept-98407-show-of-force",
            kind = "accept",
            priority = 520,
            conditions = { level = { min = 17 } },
            text = "Accept Show of Force from Deputy Feldon.",
            complete = QuestState(98407, "activeOrCompleted"),
            route = {
                Point(1433, 0.3080, 0.6000, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "woven-objective-92747-moonbrook-espionage",
            kind = "objective",
            priority = 530,
            conditions = { level = { min = 16 } },
            useClientPin = true,
            text = "Moonbrook Espionage: collect 8 Suspicious Industrial Supplies in Moonbrook. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(92747, "complete"),
            route = {
                Point(1436, 0.4401, 0.6947, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "woven-turnin-92747-moonbrook-espionage",
            kind = "turnin",
            priority = 540,
            conditions = { level = { min = 16 } },
            text = "Turn in Moonbrook Espionage to Alba Fairmoon in Sentinel Hill.",
            complete = QuestState(92747, "completed"),
            route = {
                Point(1436, 0.5240, 0.5300, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "woven-objective-98407-show-of-force",
            kind = "objective",
            priority = 550,
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
            priority = 560,
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
