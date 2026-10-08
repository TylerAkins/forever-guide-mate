local _, ns = ...

-- Forever Casual spine: Feralas & Tanaris (44-48)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves:
-- 98155 Pristine Pesterhide Pelts from Kristy Grant at Thalanaar.
-- 98156 Packaged Pristine Pelts (Stormwind handoff) has no start pin — named only.
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
    TELDRASSIL = 1438,
    FERALAS = 1444,
    TANARIS = 1446,
    DARNASSUS = 1457,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-feralas-and-tanaris",
    title = "Feralas & Tanaris",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 44 } },
        },
    },
    goals = {
        {
            id = "accept-3022-handle-with-care",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Handle With Care.",
            complete = QuestState(3022, "activeOrCompleted"),
            route = {
                Point(1446, 0.5235, 0.2691, "Handle With Care",
                    "Travel to Handle With Care."),
            },
        },
        {
            id = "accept-2821-the-mark-of-quality",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Mark of Quality.",
            complete = QuestState(2821, "activeOrCompleted"),
            route = {
                Point(1444, 0.3063, 0.4271, "The Mark of Quality",
                    "Travel to The Mark of Quality."),
            },
        },
        {
            id = "accept-4124-the-missing-courier",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Courier.",
            complete = QuestState(4124, "activeOrCompleted"),
            route = {
                Point(1444, 0.3038, 0.4617, "The Missing Courier",
                    "Travel to The Missing Courier."),
            },
        },
        {
            id = "accept-2866-the-ruins-of-solarsal",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Ruins of Solarsal.",
            complete = QuestState(2866, "activeOrCompleted"),
            route = {
                Point(1444, 0.3028, 0.4617, "The Ruins of Solarsal",
                    "Travel to The Ruins of Solarsal."),
            },
        },
        {
            id = "accept-2939-in-search-of-knowledge",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept In Search of Knowledge.",
            complete = QuestState(2939, "activeOrCompleted"),
            route = {
                Point(1444, 0.3178, 0.4550, "In Search of Knowledge",
                    "Travel to In Search of Knowledge."),
            },
        },
        {
            id = "accept-2982-the-high-wilderness",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The High Wilderness.",
            complete = QuestState(2982, "activeOrCompleted"),
            route = {
                Point(1444, 0.3183, 0.4561, "The High Wilderness",
                    "Travel to The High Wilderness."),
            },
        },
        {
            id = "turnin-4124-the-missing-courier",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Courier.",
            complete = QuestState(4124, "completed"),
            dependsOn = { "accept-4124-the-missing-courier" },
            route = {
                Point(1444, 0.3186, 0.4513, "The Missing Courier",
                    "Travel to The Missing Courier."),
            },
        },
        {
            id = "accept-4125-the-missing-courier",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Courier.",
            complete = QuestState(4125, "activeOrCompleted"),
            route = {
                Point(1444, 0.3186, 0.4513, "The Missing Courier",
                    "Travel to The Missing Courier."),
            },
        },
        {
            id = "turnin-2866-the-ruins-of-solarsal",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Ruins of Solarsal.",
            complete = QuestState(2866, "completed"),
            dependsOn = { "accept-2866-the-ruins-of-solarsal" },
            route = {
                Point(1444, 0.2632, 0.5234, "The Ruins of Solarsal",
                    "Travel to The Ruins of Solarsal."),
            },
        },
        {
            id = "accept-2867-return-to-feathermoon-stronghold",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Feathermoon Stronghold.",
            complete = QuestState(2867, "activeOrCompleted"),
            route = {
                Point(1444, 0.2632, 0.5234, "Return to Feathermoon Stronghold",
                    "Travel to Feathermoon Stronghold."),
            },
        },
        {
            id = "turnin-2867-return-to-feathermoon-stronghold",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Feathermoon Stronghold.",
            complete = QuestState(2867, "completed"),
            dependsOn = { "accept-2867-return-to-feathermoon-stronghold" },
            route = {
                Point(1444, 0.3028, 0.4617, "Return to Feathermoon Stronghold",
                    "Travel to Feathermoon Stronghold."),
            },
        },
        {
            id = "accept-3130-against-the-hatecrest",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Against the Hatecrest.",
            complete = QuestState(3130, "activeOrCompleted"),
            route = {
                Point(1444, 0.3028, 0.4617, "Against the Hatecrest",
                    "Travel to Against the Hatecrest."),
            },
        },
        {
            id = "turnin-3130-against-the-hatecrest",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Against the Hatecrest.",
            complete = QuestState(3130, "completed"),
            dependsOn = { "accept-3130-against-the-hatecrest" },
            route = {
                Point(1444, 0.3038, 0.4617, "Against the Hatecrest",
                    "Travel to Against the Hatecrest."),
            },
        },
        {
            id = "accept-2869-against-the-hatecrest",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Against the Hatecrest.",
            complete = QuestState(2869, "activeOrCompleted"),
            route = {
                Point(1444, 0.3038, 0.4617, "Against the Hatecrest",
                    "Travel to Against the Hatecrest."),
            },
        },
        {
            id = "objective-2869-1-hatecrest-screamer",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill Hatecrest Screamer.",
            complete = QuestObjective(2869, 1, "Hatecrest Screamer"),
            dependsOn = { "accept-2869-against-the-hatecrest" },
            route = {
                Point(1444, 0.2900, 0.5360, "Hatecrest Screamer",
                    "Travel to Hatecrest Screamer."),
            },
        },
        {
            id = "turnin-2869-against-the-hatecrest",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Against the Hatecrest.",
            complete = QuestState(2869, "completed"),
            dependsOn = { "accept-2869-against-the-hatecrest", "objective-2869-1-hatecrest-screamer" },
            route = {
                Point(1444, 0.3038, 0.4617, "Against the Hatecrest",
                    "Travel to Against the Hatecrest."),
            },
        },
        {
            id = "accept-2870-against-lord-shalzaru",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Against Lord Shalzaru.",
            complete = QuestState(2870, "activeOrCompleted"),
            route = {
                Point(1444, 0.3038, 0.4617, "Against Lord Shalzaru",
                    "Travel to Against Lord Shalzaru."),
            },
        },
        {
            id = "objective-2870-1-lord-shalzaru",
            kind = "objective",
            priority = 180,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill Lord Shalzaru.",
            complete = QuestObjective(2870, 1, "Lord Shalzaru"),
            dependsOn = { "accept-2870-against-lord-shalzaru" },
            route = {
                Point(1444, 0.2609, 0.6726, "Lord Shalzaru",
                    "Travel to Lord Shalzaru."),
            },
        },
        {
            id = "accept-2766-find-oox-22-fe",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Find OOX-22/FE!.",
            complete = QuestState(2766, "activeOrCompleted"),
            route = {
                Point(1444, 0.2609, 0.6726, "Find OOX-22/FE!",
                    "Travel to Find OOX-22/FE!."),
            },
        },
        {
            id = "turnin-4125-the-missing-courier",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Courier.",
            complete = QuestState(4125, "completed"),
            dependsOn = { "accept-4125-the-missing-courier" },
            route = {
                Point(1444, 0.2609, 0.6726, "The Missing Courier",
                    "Travel to The Missing Courier."),
            },
        },
        {
            id = "accept-4127-boat-wreckage",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Boat Wreckage.",
            complete = QuestState(4127, "activeOrCompleted"),
            route = {
                Point(1444, 0.2609, 0.6726, "Boat Wreckage",
                    "Travel to Boat Wreckage."),
            },
        },
        {
            id = "turnin-4127-boat-wreckage",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Boat Wreckage.",
            complete = QuestState(4127, "completed"),
            dependsOn = { "accept-4127-boat-wreckage" },
            route = {
                Point(1444, 0.3186, 0.4513, "Boat Wreckage",
                    "Travel to Boat Wreckage."),
            },
        },
        {
            id = "accept-4129-the-knife-revealed",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Knife Revealed.",
            complete = QuestState(4129, "activeOrCompleted"),
            route = {
                Point(1444, 0.3186, 0.4513, "The Knife Revealed",
                    "Travel to The Knife Revealed."),
            },
        },
        {
            id = "turnin-4129-the-knife-revealed",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Knife Revealed.",
            complete = QuestState(4129, "completed"),
            dependsOn = { "accept-4129-the-knife-revealed" },
            route = {
                Point(1444, 0.3245, 0.4379, "The Knife Revealed",
                    "Travel to The Knife Revealed."),
            },
        },
        {
            id = "accept-4130-psychometric-reading",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Psychometric Reading.",
            complete = QuestState(4130, "activeOrCompleted"),
            route = {
                Point(1444, 0.3245, 0.4379, "Psychometric Reading",
                    "Travel to Psychometric Reading."),
            },
        },
        {
            id = "turnin-4130-psychometric-reading",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Psychometric Reading.",
            complete = QuestState(4130, "completed"),
            dependsOn = { "accept-4130-psychometric-reading" },
            route = {
                Point(1444, 0.3186, 0.4513, "Psychometric Reading",
                    "Travel to Psychometric Reading."),
            },
        },
        {
            id = "accept-4131-the-woodpaw-gnolls",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Woodpaw Gnolls.",
            complete = QuestState(4131, "activeOrCompleted"),
            route = {
                Point(1444, 0.3186, 0.4513, "The Woodpaw Gnolls",
                    "Travel to The Woodpaw Gnolls."),
            },
        },
        {
            id = "turnin-2870-against-lord-shalzaru",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Against Lord Shalzaru.",
            complete = QuestState(2870, "completed"),
            dependsOn = { "accept-2870-against-lord-shalzaru", "objective-2870-1-lord-shalzaru" },
            route = {
                Point(1444, 0.3038, 0.4617, "Against Lord Shalzaru",
                    "Travel to Against Lord Shalzaru."),
            },
        },
        {
            id = "accept-2871-delivering-the-relic",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Delivering the Relic.",
            complete = QuestState(2871, "activeOrCompleted"),
            route = {
                Point(1444, 0.3038, 0.4617, "Delivering the Relic",
                    "Travel to Delivering the Relic."),
            },
        },
        {
            id = "turnin-2871-delivering-the-relic",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Delivering the Relic.",
            complete = QuestState(2871, "completed"),
            dependsOn = { "accept-2871-delivering-the-relic" },
            route = {
                Point(1444, 0.3008, 0.4506, "Delivering the Relic",
                    "Travel to Delivering the Relic."),
            },
        },
        {
            id = "objective-3520-1-vale-screecher",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Kill Vale Screecher.",
            complete = QuestObjective(3520, 1, "Vale Screecher"),
            route = {
                Point(1444, 0.4320, 0.3700, "Vale Screecher",
                    "Travel to Vale Screecher."),
            },
        },
        {
            id = "turnin-3520-screecher-spirits",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Screecher Spirits.",
            complete = QuestState(3520, "completed"),
            dependsOn = { "objective-3520-1-vale-screecher" },
            route = {
                Point(1446, 0.6699, 0.2236, "Screecher Spirits",
                    "Travel to Screecher Spirits."),
            },
        },
        {
            id = "accept-3527-the-prophecy-of-mosh-aru",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Prophecy of Mosh'aru.",
            complete = QuestState(3527, "activeOrCompleted"),
            route = {
                Point(1446, 0.6699, 0.2236, "The Prophecy of Mosh'aru",
                    "Travel to The Prophecy of Mosh'aru."),
            },
        },
        {
            id = "accept-2768-divino-matic-rod",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept Divino-matic Rod.",
            complete = QuestState(2768, "activeOrCompleted"),
            route = {
                Point(1446, 0.5246, 0.2851, "Divino-matic Rod",
                    "Travel to Divino-matic Rod."),
            },
        },
        {
            id = "accept-2865-scarab-shells",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept Scarab Shells.",
            complete = QuestState(2865, "activeOrCompleted"),
            route = {
                Point(1446, 0.5157, 0.2676, "Scarab Shells",
                    "Travel to Scarab Shells."),
            },
        },
        {
            id = "accept-3042-troll-temper",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept Troll Temper.",
            complete = QuestState(3042, "activeOrCompleted"),
            route = {
                Point(1446, 0.5141, 0.2875, "Troll Temper",
                    "Travel to Troll Temper."),
            },
        },
        {
            id = "objective-3527-1-theka-the-martyr",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Kill Theka the Martyr.",
            complete = QuestObjective(3527, 1, "Theka the Martyr"),
            dependsOn = { "accept-3527-the-prophecy-of-mosh-aru" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-2768-1-sergeant-bly",
            kind = "objective",
            priority = 380,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Kill Sergeant Bly.",
            complete = QuestObjective(2768, 1, "Sergeant Bly"),
            dependsOn = { "accept-2768-divino-matic-rod" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-3527-2-hydromancer-velratha",
            kind = "objective",
            priority = 390,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Kill Hydromancer Velratha.",
            complete = QuestObjective(3527, 2, "Hydromancer Velratha"),
            dependsOn = { "accept-3527-the-prophecy-of-mosh-aru" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-3527-the-prophecy-of-mosh-aru",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Prophecy of Mosh'aru.",
            complete = QuestState(3527, "completed"),
            dependsOn = { "accept-3527-the-prophecy-of-mosh-aru", "objective-3527-1-theka-the-martyr", "objective-3527-2-hydromancer-velratha" },
            route = {
                Point(1446, 0.6699, 0.2236, "The Prophecy of Mosh'aru",
                    "Travel to The Prophecy of Mosh'aru."),
            },
        },
        {
            id = "turnin-2768-divino-matic-rod",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Divino-matic Rod.",
            complete = QuestState(2768, "completed"),
            dependsOn = { "accept-2768-divino-matic-rod", "objective-2768-1-sergeant-bly" },
            route = {
                Point(1446, 0.5246, 0.2851, "Divino-matic Rod",
                    "Travel to Divino-matic Rod."),
            },
        },
        {
            id = "turnin-2865-scarab-shells",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Scarab Shells.",
            complete = QuestState(2865, "completed"),
            dependsOn = { "accept-2865-scarab-shells" },
            route = {
                Point(1446, 0.5157, 0.2676, "Scarab Shells",
                    "Travel to Scarab Shells."),
            },
        },
        {
            id = "turnin-3042-troll-temper",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Troll Temper.",
            complete = QuestState(3042, "completed"),
            dependsOn = { "accept-3042-troll-temper" },
            route = {
                Point(1446, 0.5141, 0.2875, "Troll Temper",
                    "Travel to Troll Temper."),
            },
        },
        {
            id = "turnin-2766-find-oox-22-fe",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Find OOX-22/FE!.",
            complete = QuestState(2766, "completed"),
            dependsOn = { "accept-2766-find-oox-22-fe" },
            route = {
                Point(1444, 0.5522, 0.5639, "Find OOX-22/FE!",
                    "Travel to Find OOX-22/FE!."),
            },
        },
        {
            id = "objective-2982-2-gordunni-shaman",
            kind = "objective",
            priority = 450,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill 8 Gordunni Shaman.",
            complete = QuestObjective(2982, 2, "Gordunni Shaman"),
            dependsOn = { "accept-2982-the-high-wilderness" },
            route = {
                Point(1444, 0.6040, 0.6800, "Gordunni Shaman",
                    "Travel to Gordunni Shaman."),
            },
        },
        {
            id = "objective-2982-3-gordunni-brute",
            kind = "objective",
            priority = 460,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill 8 Gordunni Brute.",
            complete = QuestObjective(2982, 3, "Gordunni Brute"),
            dependsOn = { "accept-2982-the-high-wilderness" },
            route = {
                Point(1444, 0.6040, 0.5880, "Gordunni Brute",
                    "Travel to Gordunni Brute."),
            },
        },
        {
            id = "accept-2969-freedom-for-all-creatures",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Freedom for All Creatures.",
            complete = QuestState(2969, "activeOrCompleted"),
            route = {
                Point(1444, 0.6566, 0.4677, "Freedom for All Creatures",
                    "Travel to Freedom for All Creatures."),
            },
        },
        {
            id = "turnin-2969-freedom-for-all-creatures",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Freedom for All Creatures.",
            complete = QuestState(2969, "completed"),
            dependsOn = { "accept-2969-freedom-for-all-creatures" },
            route = {
                Point(1444, 0.6566, 0.4677, "Freedom for All Creatures",
                    "Travel to Freedom for All Creatures."),
            },
        },
        {
            id = "accept-2970-doling-justice",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Doling Justice.",
            complete = QuestState(2970, "activeOrCompleted"),
            route = {
                Point(1444, 0.6595, 0.4561, "Doling Justice",
                    "Travel to Doling Justice."),
            },
        },
        {
            id = "objective-2970-3-grimtotem-shaman",
            kind = "objective",
            priority = 500,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Grimtotem Shaman.",
            complete = QuestObjective(2970, 3, "Grimtotem Shaman"),
            dependsOn = { "accept-2970-doling-justice" },
            route = {
                Point(1444, 0.6740, 0.4640, "Grimtotem Shaman",
                    "Travel to Grimtotem Shaman."),
            },
        },
        {
            id = "objective-2970-2-grimtotem-raider",
            kind = "objective",
            priority = 510,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Grimtotem Raider.",
            complete = QuestObjective(2970, 2, "Grimtotem Raider"),
            dependsOn = { "accept-2970-doling-justice" },
            route = {
                Point(1444, 0.6740, 0.4640, "Grimtotem Raider",
                    "Travel to Grimtotem Raider."),
            },
        },
        {
            id = "objective-2970-1-grimtotem-naturalist",
            kind = "objective",
            priority = 520,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill 12 Grimtotem Naturalist.",
            complete = QuestObjective(2970, 1, "Grimtotem Naturalist"),
            dependsOn = { "accept-2970-doling-justice" },
            route = {
                Point(1444, 0.6740, 0.4640, "Grimtotem Naturalist",
                    "Travel to Grimtotem Naturalist."),
            },
        },
        {
            id = "turnin-2970-doling-justice",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Doling Justice.",
            complete = QuestState(2970, "completed"),
            dependsOn = { "accept-2970-doling-justice", "objective-2970-3-grimtotem-shaman", "objective-2970-2-grimtotem-raider", "objective-2970-1-grimtotem-naturalist" },
            route = {
                Point(1444, 0.6566, 0.4677, "Doling Justice",
                    "Travel to Doling Justice."),
            },
        },
        {
            id = "accept-2972-doling-justice",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Doling Justice.",
            complete = QuestState(2972, "activeOrCompleted"),
            route = {
                Point(1444, 0.6566, 0.4677, "Doling Justice",
                    "Travel to Doling Justice."),
            },
        },
        {
            id = "turnin-4131-the-woodpaw-gnolls",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Woodpaw Gnolls.",
            complete = QuestState(4131, "completed"),
            dependsOn = { "accept-4131-the-woodpaw-gnolls" },
            route = {
                Point(1444, 0.7331, 0.5631, "The Woodpaw Gnolls",
                    "Travel to The Woodpaw Gnolls."),
            },
        },
        {
            id = "accept-4135-the-writhing-deep",
            kind = "accept",
            priority = 560,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Writhing Deep.",
            complete = QuestState(4135, "activeOrCompleted"),
            route = {
                Point(1444, 0.7331, 0.5631, "The Writhing Deep",
                    "Travel to The Writhing Deep."),
            },
        },
        {
            id = "accept-4281-thalanaar-delivery",
            kind = "accept",
            priority = 570,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Use the Undelivered Parcel to accept Thalanaar Delivery.",
            complete = QuestState(4281, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-4135-the-writhing-deep",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Writhing Deep.",
            complete = QuestState(4135, "completed"),
            dependsOn = { "accept-4135-the-writhing-deep" },
            route = {
                Point(1444, 0.7317, 0.6388, "The Writhing Deep",
                    "Travel to The Writhing Deep."),
            },
        },
        {
            id = "accept-4265-freed-from-the-hive",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Freed from the Hive.",
            complete = QuestState(4265, "activeOrCompleted"),
            route = {
                Point(1444, 0.7317, 0.6388, "Freed from the Hive",
                    "Travel to Freed from the Hive."),
            },
        },
        {
            id = "turnin-2821-the-mark-of-quality",
            kind = "turnin",
            priority = 600,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Mark of Quality.",
            complete = QuestState(2821, "completed"),
            dependsOn = { "accept-2821-the-mark-of-quality" },
            route = {
                Point(1444, 0.3063, 0.4271, "The Mark of Quality",
                    "Travel to The Mark of Quality."),
            },
        },
        {
            id = "turnin-2982-the-high-wilderness",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The High Wilderness.",
            complete = QuestState(2982, "completed"),
            dependsOn = { "accept-2982-the-high-wilderness", "objective-2982-2-gordunni-shaman", "objective-2982-3-gordunni-brute" },
            route = {
                Point(1444, 0.3183, 0.4561, "The High Wilderness",
                    "Travel to The High Wilderness."),
            },
        },
        {
            id = "accept-3445-the-sunken-temple",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Sunken Temple.",
            complete = QuestState(3445, "activeOrCompleted"),
            route = {
                Point(1444, 0.3183, 0.4561, "The Sunken Temple",
                    "Travel to The Sunken Temple."),
            },
        },
        {
            id = "turnin-4265-freed-from-the-hive",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Freed from the Hive.",
            complete = QuestState(4265, "completed"),
            dependsOn = { "accept-4265-freed-from-the-hive" },
            route = {
                Point(1444, 0.3186, 0.4513, "Freed from the Hive",
                    "Travel to Freed from the Hive."),
            },
        },
        {
            id = "accept-4266-a-hero-s-welcome",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Hero's Welcome.",
            complete = QuestState(4266, "activeOrCompleted"),
            route = {
                Point(1444, 0.3186, 0.4513, "A Hero's Welcome",
                    "Travel to A Hero's Welcome."),
            },
        },
        {
            id = "turnin-4266-a-hero-s-welcome",
            kind = "turnin",
            priority = 650,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Hero's Welcome.",
            complete = QuestState(4266, "completed"),
            dependsOn = { "accept-4266-a-hero-s-welcome" },
            route = {
                Point(1444, 0.3028, 0.4617, "A Hero's Welcome",
                    "Travel to A Hero's Welcome."),
            },
        },
        {
            id = "accept-4267-rise-of-the-silithid",
            kind = "accept",
            priority = 660,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Rise of the Silithid.",
            complete = QuestState(4267, "activeOrCompleted"),
            route = {
                Point(1444, 0.3028, 0.4617, "Rise of the Silithid",
                    "Travel to Rise of the Silithid."),
            },
        },
        {
            id = "turnin-3022-handle-with-care",
            kind = "turnin",
            priority = 670,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Handle With Care.",
            complete = QuestState(3022, "completed"),
            dependsOn = { "accept-3022-handle-with-care" },
            route = {
                Point(1438, 0.5550, 0.9205, "Handle With Care",
                    "Travel to Handle With Care."),
            },
        },
        {
            id = "accept-3661-favored-of-elune",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Favored of Elune?.",
            complete = QuestState(3661, "activeOrCompleted"),
            route = {
                Point(1438, 0.5550, 0.9205, "Favored of Elune?",
                    "Travel to Favored of Elune?."),
            },
        },
        {
            id = "turnin-2939-in-search-of-knowledge",
            kind = "turnin",
            priority = 690,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in In Search of Knowledge.",
            complete = QuestState(2939, "completed"),
            dependsOn = { "accept-2939-in-search-of-knowledge" },
            route = {
                Point(1438, 0.5541, 0.9223, "In Search of Knowledge",
                    "Travel to In Search of Knowledge."),
            },
        },
        {
            id = "accept-2940-feralas-a-history",
            kind = "accept",
            priority = 700,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Feralas: A History.",
            complete = QuestState(2940, "activeOrCompleted"),
            route = {
                Point(1438, 0.5522, 0.9146, "Feralas: A History",
                    "Travel to Feralas: A History."),
            },
        },
        {
            id = "turnin-2940-feralas-a-history",
            kind = "turnin",
            priority = 710,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Feralas: A History.",
            complete = QuestState(2940, "completed"),
            dependsOn = { "accept-2940-feralas-a-history" },
            route = {
                Point(1438, 0.5541, 0.9223, "Feralas: A History",
                    "Travel to Feralas: A History."),
            },
        },
        {
            id = "accept-2941-the-borrower",
            kind = "accept",
            priority = 720,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Borrower.",
            complete = QuestState(2941, "activeOrCompleted"),
            route = {
                Point(1438, 0.5541, 0.9223, "The Borrower",
                    "Travel to The Borrower."),
            },
        },
        {
            id = "objective-4284-1-red-power-crystal",
            kind = "objective",
            priority = 730,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Collect 7 Red Power Crystal.",
            complete = QuestObjective(4284, 1, "Red Power Crystal"),
            route = {
                Point(1457, 0.5624, 0.5405, "Red Power Crystal",
                    "Travel to Red Power Crystal."),
            },
        },
        {
            id = "turnin-4267-rise-of-the-silithid",
            kind = "turnin",
            priority = 740,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Rise of the Silithid.",
            complete = QuestState(4267, "completed"),
            dependsOn = { "accept-4267-rise-of-the-silithid" },
            route = {
                Point(1457, 0.4185, 0.8562, "Rise of the Silithid",
                    "Travel to Rise of the Silithid."),
            },
        },
        {
            id = "turnin-2972-doling-justice",
            kind = "turnin",
            priority = 750,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Doling Justice.",
            complete = QuestState(2972, "completed"),
            dependsOn = { "accept-2972-doling-justice" },
            route = {
                Point(1457, 0.3910, 0.8159, "Doling Justice",
                    "Travel to Doling Justice."),
            },
        },
        {
            id = "turnin-4281-thalanaar-delivery",
            kind = "turnin",
            priority = 760,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Thalanaar Delivery.",
            complete = QuestState(4281, "completed"),
            dependsOn = { "accept-4281-thalanaar-delivery" },
            route = {
                Point(1444, 0.8964, 0.4657, "Thalanaar Delivery",
                    "Travel to Thalanaar Delivery."),
            },
        },
        {
            id = "woven-accept-98155-pristine-pesterhide-pelts",
            kind = "accept",
            priority = 1215,
            conditions = { all = {
                { level = { min = 31 } },
                { faction = "Alliance" },
            } },
            text = "Accept Pristine Pesterhide Pelts from Kristy Grant at Thalanaar.",
            complete = QuestState(98155, "activeOrCompleted"),
            route = {
                Point(1444, 0.8940, 0.4620, "Kristy Grant",
                    "Travel to Kristy Grant."),
            },
        },
        {
            id = "woven-objective-98155-pristine-pesterhide-pelts",
            kind = "objective",
            priority = 1216,
            conditions = { all = {
                { level = { min = 31 } },
                { faction = "Alliance" },
            } },
            text = "Pristine Pesterhide Pelts: collect Pristine Pesterhide Pelts.",
            complete = QuestObjective(98155, 1, "Pristine Pesterhide Pelt"),
            dependsOn = { "woven-accept-98155-pristine-pesterhide-pelts" },
            useClientPin = true,
            route = {
                Point(1444, 0.8940, 0.4620, "Kristy Grant",
                    "Travel to Kristy Grant."),
            },
        },
        {
            id = "woven-turnin-98155-pristine-pesterhide-pelts",
            kind = "turnin",
            priority = 1217,
            conditions = { all = {
                { level = { min = 31 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Pristine Pesterhide Pelts to Kristy Grant at Thalanaar.",
            complete = QuestState(98155, "completed"),
            dependsOn = { "woven-accept-98155-pristine-pesterhide-pelts", "woven-objective-98155-pristine-pesterhide-pelts" },
            route = {
                Point(1444, 0.8940, 0.4620, "Kristy Grant",
                    "Travel to Kristy Grant."),
            },
        },
        {
            id = "accept-2741-the-super-egg-o-matic",
            kind = "accept",
            priority = 770,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Super Egg-O-Matic.",
            complete = QuestState(2741, "activeOrCompleted"),
            route = {
                Point(1446, 0.5237, 0.2697, "The Super Egg-O-Matic",
                    "Travel to The Super Egg-O-Matic."),
            },
        },
        {
            id = "turnin-2941-the-borrower",
            kind = "turnin",
            priority = 780,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Borrower.",
            complete = QuestState(2941, "completed"),
            dependsOn = { "accept-2941-the-borrower" },
            route = {
                Point(1446, 0.5236, 0.2690, "The Borrower",
                    "Travel to The Borrower."),
            },
        },
        {
            id = "accept-2944-the-super-snapper-fx",
            kind = "accept",
            priority = 790,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Super Snapper FX.",
            complete = QuestState(2944, "activeOrCompleted"),
            route = {
                Point(1446, 0.5236, 0.2690, "The Super Snapper FX",
                    "Travel to The Super Snapper FX."),
            },
        },
        {
            id = "accept-2750-a-bad-egg",
            kind = "accept",
            priority = 800,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Bad Egg.",
            complete = QuestState(2750, "activeOrCompleted"),
            route = {
                Point(1446, 0.5236, 0.2691, "A Bad Egg",
                    "Travel to A Bad Egg."),
            },
        },
        {
            id = "accept-2749-an-ordinary-egg",
            kind = "accept",
            priority = 810,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept An Ordinary Egg.",
            complete = QuestState(2749, "activeOrCompleted"),
            route = {
                Point(1446, 0.5236, 0.2691, "An Ordinary Egg",
                    "Travel to An Ordinary Egg."),
            },
        },
        {
            id = "accept-2748-a-fine-egg",
            kind = "accept",
            priority = 820,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Fine Egg.",
            complete = QuestState(2748, "activeOrCompleted"),
            route = {
                Point(1446, 0.5236, 0.2691, "A Fine Egg",
                    "Travel to A Fine Egg."),
            },
        },
        {
            id = "accept-2747-an-extraordinary-egg",
            kind = "accept",
            priority = 830,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept An Extraordinary Egg.",
            complete = QuestState(2747, "activeOrCompleted"),
            route = {
                Point(1446, 0.5236, 0.2691, "An Extraordinary Egg",
                    "Travel to An Extraordinary Egg."),
            },
        },
        {
            id = "accept-992-gadgetzan-water-survey",
            kind = "accept",
            priority = 840,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept Gadgetzan Water Survey.",
            complete = QuestState(992, "activeOrCompleted"),
            route = {
                Point(1446, 0.5021, 0.2748, "Gadgetzan Water Survey",
                    "Travel to Gadgetzan Water Survey."),
            },
        },
        {
            id = "objective-992-1-untapped-dowsing-widget",
            kind = "objective",
            priority = 850,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Use Untapped Dowsing Widget.",
            complete = QuestObjective(992, 1, "Untapped Dowsing Widget"),
            dependsOn = { "accept-992-gadgetzan-water-survey" },
            route = {
                Point(1446, 0.3909, 0.2917, "Untapped Dowsing Widget",
                    "Travel to Untapped Dowsing Widget."),
            },
        },
        {
            id = "turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            priority = 860,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Gadgetzan Water Survey.",
            complete = QuestState(992, "completed"),
            dependsOn = { "accept-992-gadgetzan-water-survey", "objective-992-1-untapped-dowsing-widget" },
            route = {
                Point(1446, 0.5021, 0.2748, "Gadgetzan Water Survey",
                    "Travel to Gadgetzan Water Survey."),
            },
        },
        {
            id = "accept-82-noxious-lair-investigation",
            kind = "accept",
            priority = 870,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept Noxious Lair Investigation.",
            complete = QuestState(82, "activeOrCompleted"),
            route = {
                Point(1446, 0.5021, 0.2748, "Noxious Lair Investigation",
                    "Travel to Noxious Lair Investigation."),
            },
        },
        {
            id = "objective-82-1-centipaar-wasp",
            kind = "objective",
            priority = 880,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Kill Centipaar Wasp.",
            complete = QuestObjective(82, 1, "Centipaar Wasp"),
            dependsOn = { "accept-82-noxious-lair-investigation" },
            route = {
                Point(1446, 0.3600, 0.4000, "Centipaar Wasp",
                    "Travel to Centipaar Wasp."),
            },
        },
        {
            id = "turnin-82-noxious-lair-investigation",
            kind = "turnin",
            priority = 890,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Noxious Lair Investigation.",
            complete = QuestState(82, "completed"),
            dependsOn = { "accept-82-noxious-lair-investigation", "objective-82-1-centipaar-wasp" },
            route = {
                Point(1446, 0.5089, 0.2696, "Noxious Lair Investigation",
                    "Travel to Noxious Lair Investigation."),
            },
        },
        {
            id = "objective-1452-1-roc-gizzard",
            kind = "objective",
            priority = 900,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Alliance" },
            } },
            text = "Collect 3 Roc Gizzard.",
            complete = QuestObjective(1452, 1, "Roc Gizzard"),
            route = {
                Point(1446, 0.5230, 0.2891, "Roc Gizzard",
                    "Travel to Roc Gizzard."),
            },
        },
    },
})
