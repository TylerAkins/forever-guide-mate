local _, ns = ...

-- Forever Casual spine: Alterac Mountains & Arathi Highlands (38-39)
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
    ALTERAC_MOUNTAINS = 1416,
    ARATHI_HIGHLANDS = 1417,
    HILLSBRAD_FOOTHILLS = 1424,
}

ns:RegisterGuide({
    id = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
    title = "Alterac Mountains & Arathi Highlands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 38 } },
        },
    },
    goals = {
        {
            id = "accept-545-dalaran-patrols",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Dalaran Patrols.",
            complete = QuestState(545, "activeOrCompleted"),
            route = {
                Point(1424, 0.6160, 0.2084, "Dalaran Patrols",
                    "Travel to Dalaran Patrols."),
            },
        },
        {
            id = "accept-557-bracers-of-binding",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Bracers of Binding.",
            complete = QuestState(557, "activeOrCompleted"),
            route = {
                Point(1424, 0.6150, 0.2094, "Bracers of Binding",
                    "Travel to Bracers of Binding."),
            },
        },
        {
            id = "accept-566-wanted-baron-vardus",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept WANTED: Baron Vardus.",
            complete = QuestState(566, "activeOrCompleted"),
            route = {
                Point(1424, 0.6262, 0.2074, "WANTED: Baron Vardus",
                    "Travel to WANTED: Baron Vardus."),
            },
        },
        {
            id = "accept-503-gol-dir",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Gol'dir.",
            complete = QuestState(503, "activeOrCompleted"),
            route = {
                Point(1424, 0.6324, 0.2066, "Gol'dir",
                    "Travel to Gol'dir."),
            },
        },
        {
            id = "turnin-1712-cyclonian",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Turn in Cyclonian.",
            complete = QuestState(1712, "completed"),
            route = {
                Point(1416, 0.8050, 0.6692, "Cyclonian",
                    "Travel to Cyclonian."),
            },
        },
        {
            id = "accept-1713-the-summoning",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Accept The Summoning.",
            complete = QuestState(1713, "activeOrCompleted"),
            route = {
                Point(1416, 0.8050, 0.6692, "The Summoning",
                    "Travel to The Summoning."),
            },
        },
        {
            id = "turnin-1713-the-summoning",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Turn in The Summoning.",
            complete = QuestState(1713, "completed"),
            dependsOn = { "accept-1713-the-summoning" },
            route = {
                Point(1416, 0.8050, 0.6692, "The Summoning",
                    "Travel to The Summoning."),
            },
        },
        {
            id = "accept-1792-whirlwind-weapon",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Accept Whirlwind Weapon.",
            complete = QuestState(1792, "activeOrCompleted"),
            route = {
                Point(1416, 0.8050, 0.6692, "Whirlwind Weapon",
                    "Travel to Whirlwind Weapon."),
            },
        },
        {
            id = "objective-1136-1-hulking-mountain-lion",
            kind = "objective",
            priority = 90,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Kill Hulking Mountain Lion.",
            complete = QuestObjective(1136, 1, "Hulking Mountain Lion"),
            route = {
                Point(1416, 0.4840, 0.7500, "Hulking Mountain Lion",
                    "Travel to Hulking Mountain Lion."),
            },
        },
        {
            id = "objective-1136-1-fresh-carcass",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Use Fresh Carcass.",
            complete = QuestObjective(1136, 1, "Fresh Carcass"),
            route = {
                Point(1416, 0.3754, 0.6626, "Fresh Carcass",
                    "Travel to Fresh Carcass."),
            },
        },
        {
            id = "objective-503-1-jailor-borhuin",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Kill Jailor Borhuin.",
            complete = QuestObjective(503, 1, "Jailor Borhuin"),
            dependsOn = { "accept-503-gol-dir" },
            route = {
                Point(1416, 0.6313, 0.4347, "Jailor Borhuin",
                    "Travel to Jailor Borhuin."),
            },
        },
        {
            id = "turnin-503-gol-dir",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gol'dir.",
            complete = QuestState(503, "completed"),
            dependsOn = { "accept-503-gol-dir", "objective-503-1-jailor-borhuin" },
            route = {
                Point(1416, 0.5996, 0.4374, "Gol'dir",
                    "Travel to Gol'dir."),
            },
        },
        {
            id = "accept-506-blackmoore-s-legacy",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Blackmoore's Legacy.",
            complete = QuestState(506, "activeOrCompleted"),
            route = {
                Point(1416, 0.5996, 0.4374, "Blackmoore's Legacy",
                    "Travel to Blackmoore's Legacy."),
            },
        },
        {
            id = "objective-566-1-baron-vardus",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Kill Baron Vardus.",
            complete = QuestObjective(566, 1, "Baron Vardus"),
            dependsOn = { "accept-566-wanted-baron-vardus" },
            route = {
                Point(1416, 0.6030, 0.4321, "Baron Vardus",
                    "Travel to Baron Vardus."),
            },
        },
        {
            id = "turnin-506-blackmoore-s-legacy",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Blackmoore's Legacy.",
            complete = QuestState(506, "completed"),
            dependsOn = { "accept-506-blackmoore-s-legacy" },
            route = {
                Point(1424, 0.6324, 0.2066, "Blackmoore's Legacy",
                    "Travel to Blackmoore's Legacy."),
            },
        },
        {
            id = "accept-507-lord-aliden-perenolde",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Lord Aliden Perenolde.",
            complete = QuestState(507, "activeOrCompleted"),
            route = {
                Point(1424, 0.6324, 0.2066, "Lord Aliden Perenolde",
                    "Travel to Lord Aliden Perenolde."),
            },
        },
        {
            id = "turnin-566-wanted-baron-vardus",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in WANTED: Baron Vardus.",
            complete = QuestState(566, "completed"),
            dependsOn = { "accept-566-wanted-baron-vardus", "objective-566-1-baron-vardus" },
            route = {
                Point(1424, 0.6233, 0.2045, "WANTED: Baron Vardus",
                    "Travel to WANTED: Baron Vardus."),
            },
        },
        {
            id = "objective-557-1-elemental-slave",
            kind = "objective",
            priority = 180,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Kill Elemental Slave.",
            complete = QuestObjective(557, 1, "Elemental Slave"),
            dependsOn = { "accept-557-bracers-of-binding" },
            route = {
                Point(1416, 0.3889, 0.3943, "Elemental Slave",
                    "Travel to Elemental Slave."),
            },
        },
        {
            id = "objective-507-1-lord-aliden-perenolde",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Kill Lord Aliden Perenolde.",
            complete = QuestObjective(507, 1, "Lord Aliden Perenolde"),
            dependsOn = { "accept-507-lord-aliden-perenolde" },
            route = {
                Point(1416, 0.3932, 0.1458, "Lord Aliden Perenolde",
                    "Travel to Lord Aliden Perenolde."),
            },
        },
        {
            id = "turnin-507-lord-aliden-perenolde",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Lord Aliden Perenolde.",
            complete = QuestState(507, "completed"),
            dependsOn = { "accept-507-lord-aliden-perenolde", "objective-507-1-lord-aliden-perenolde" },
            route = {
                Point(1416, 0.3930, 0.1431, "Lord Aliden Perenolde",
                    "Travel to Lord Aliden Perenolde."),
            },
        },
        {
            id = "accept-508-taretha-s-gift",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Taretha's Gift.",
            complete = QuestState(508, "activeOrCompleted"),
            route = {
                Point(1416, 0.3930, 0.1431, "Taretha's Gift",
                    "Travel to Taretha's Gift."),
            },
        },
        {
            id = "objective-566-1-baron-vardus-2",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Kill Baron Vardus.",
            complete = QuestObjective(566, 1, "Baron Vardus"),
            dependsOn = { "accept-566-wanted-baron-vardus" },
            route = {
                Point(1416, 0.4740, 0.1700, "Baron Vardus",
                    "Travel to Baron Vardus."),
            },
        },
        {
            id = "turnin-545-dalaran-patrols",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Dalaran Patrols.",
            complete = QuestState(545, "completed"),
            dependsOn = { "accept-545-dalaran-patrols" },
            route = {
                Point(1424, 0.6160, 0.2084, "Dalaran Patrols",
                    "Travel to Dalaran Patrols."),
            },
        },
        {
            id = "turnin-557-bracers-of-binding",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Bracers of Binding.",
            complete = QuestState(557, "completed"),
            dependsOn = { "accept-557-bracers-of-binding", "objective-557-1-elemental-slave" },
            route = {
                Point(1424, 0.6150, 0.2094, "Bracers of Binding",
                    "Travel to Bracers of Binding."),
            },
        },
        {
            id = "turnin-508-taretha-s-gift",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Taretha's Gift.",
            complete = QuestState(508, "completed"),
            dependsOn = { "accept-508-taretha-s-gift" },
            route = {
                Point(1424, 0.6324, 0.2066, "Taretha's Gift",
                    "Travel to Taretha's Gift."),
            },
        },
        {
            id = "turnin-638-trollbane",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Trollbane.",
            complete = QuestState(638, "completed"),
            route = {
                Point(1417, 0.7380, 0.3395, "Trollbane",
                    "Travel to Trollbane."),
            },
        },
        {
            id = "accept-678-call-to-arms",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Call to Arms.",
            complete = QuestState(678, "activeOrCompleted"),
            route = {
                Point(1417, 0.7424, 0.3391, "Call to Arms",
                    "Travel to Call to Arms."),
            },
        },
        {
            id = "accept-701-guile-of-the-raptor",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Guile of the Raptor.",
            complete = QuestState(701, "activeOrCompleted"),
            route = {
                Point(1417, 0.7472, 0.3629, "Guile of the Raptor",
                    "Travel to Guile of the Raptor."),
            },
        },
        {
            id = "objective-642-1-drywhisker-kobold",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Kill Drywhisker Kobold.",
            complete = QuestObjective(642, 1, "Drywhisker Kobold"),
            route = {
                Point(1417, 0.7600, 0.4420, "Drywhisker Kobold",
                    "Travel to Drywhisker Kobold."),
            },
        },
        {
            id = "turnin-642-the-princess-trapped",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Princess Trapped.",
            complete = QuestState(642, "completed"),
            dependsOn = { "objective-642-1-drywhisker-kobold" },
            route = {
                Point(1417, 0.8090, 0.3996, "The Princess Trapped",
                    "Travel to The Princess Trapped."),
            },
        },
        {
            id = "accept-651-stones-of-binding",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Stones of Binding.",
            complete = QuestState(651, "activeOrCompleted"),
            route = {
                Point(1417, 0.8090, 0.3996, "Stones of Binding",
                    "Travel to Stones of Binding."),
            },
        },
        {
            id = "objective-678-2-boulderfist-magus",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Boulderfist Magus.",
            complete = QuestObjective(678, 2, "Boulderfist Magus"),
            dependsOn = { "accept-678-call-to-arms" },
            route = {
                Point(1417, 0.5140, 0.7240, "Boulderfist Magus",
                    "Travel to Boulderfist Magus."),
            },
        },
        {
            id = "objective-678-1-boulderfist-brute",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Boulderfist Brute.",
            complete = QuestObjective(678, 1, "Boulderfist Brute"),
            dependsOn = { "accept-678-call-to-arms" },
            route = {
                Point(1417, 0.5140, 0.7240, "Boulderfist Brute",
                    "Travel to Boulderfist Brute."),
            },
        },
        {
            id = "turnin-701-guile-of-the-raptor",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Guile of the Raptor.",
            complete = QuestState(701, "completed"),
            dependsOn = { "accept-701-guile-of-the-raptor" },
            route = {
                Point(1417, 0.7471, 0.3629, "Guile of the Raptor",
                    "Travel to Guile of the Raptor."),
            },
        },
        {
            id = "accept-702-guile-of-the-raptor",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Guile of the Raptor.",
            complete = QuestState(702, "activeOrCompleted"),
            route = {
                Point(1417, 0.7471, 0.3629, "Guile of the Raptor",
                    "Travel to Guile of the Raptor."),
            },
        },
        {
            id = "turnin-702-guile-of-the-raptor",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Guile of the Raptor.",
            complete = QuestState(702, "completed"),
            dependsOn = { "accept-702-guile-of-the-raptor" },
            route = {
                Point(1417, 0.7255, 0.3401, "Guile of the Raptor",
                    "Travel to Guile of the Raptor."),
            },
        },
        {
            id = "accept-847-guile-of-the-raptor",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Guile of the Raptor.",
            complete = QuestState(847, "activeOrCompleted"),
            route = {
                Point(1417, 0.7255, 0.3401, "Guile of the Raptor",
                    "Travel to Guile of the Raptor."),
            },
        },
        {
            id = "turnin-678-call-to-arms",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Call to Arms.",
            complete = QuestState(678, "completed"),
            dependsOn = { "accept-678-call-to-arms", "objective-678-2-boulderfist-magus", "objective-678-1-boulderfist-brute" },
            route = {
                Point(1417, 0.7424, 0.3391, "Call to Arms",
                    "Travel to Call to Arms."),
            },
        },
        {
            id = "turnin-847-guile-of-the-raptor",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Turn in Guile of the Raptor.",
            complete = QuestState(847, "completed"),
            dependsOn = { "accept-847-guile-of-the-raptor" },
            route = {
                Point(1417, 0.7471, 0.3629, "Guile of the Raptor",
                    "Travel to Guile of the Raptor."),
            },
        },
        {
            id = "turnin-651-stones-of-binding",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stones of Binding.",
            complete = QuestState(651, "completed"),
            dependsOn = { "accept-651-stones-of-binding" },
            route = {
                Point(1417, 0.3619, 0.5737, "Stones of Binding",
                    "Travel to Stones of Binding."),
            },
        },
        {
            id = "accept-663-land-ho",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Land Ho!.",
            complete = QuestState(663, "activeOrCompleted"),
            route = {
                Point(1417, 0.3122, 0.6535, "Land Ho!",
                    "Travel to Land Ho!."),
            },
        },
        {
            id = "turnin-663-land-ho",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Land Ho!.",
            complete = QuestState(663, "completed"),
            dependsOn = { "accept-663-land-ho" },
            route = {
                Point(1417, 0.3228, 0.8138, "Land Ho!",
                    "Travel to Land Ho!."),
            },
        },
        {
            id = "accept-662-deep-sea-salvage",
            kind = "accept",
            priority = 430,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Deep Sea Salvage.",
            complete = QuestState(662, "activeOrCompleted"),
            route = {
                Point(1417, 0.3277, 0.8147, "Deep Sea Salvage",
                    "Travel to Deep Sea Salvage."),
            },
        },
        {
            id = "accept-664-drowned-sorrows",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Drowned Sorrows.",
            complete = QuestState(664, "activeOrCompleted"),
            route = {
                Point(1417, 0.3400, 0.8079, "Drowned Sorrows",
                    "Travel to Drowned Sorrows."),
            },
        },
        {
            id = "accept-665-sunken-treasure",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Sunken Treasure.",
            complete = QuestState(665, "activeOrCompleted"),
            route = {
                Point(1417, 0.3387, 0.8055, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "turnin-665-sunken-treasure",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Sunken Treasure.",
            complete = QuestState(665, "completed"),
            dependsOn = { "accept-665-sunken-treasure" },
            route = {
                Point(1417, 0.3386, 0.8045, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "accept-666-sunken-treasure",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Sunken Treasure.",
            complete = QuestState(666, "activeOrCompleted"),
            route = {
                Point(1417, 0.3386, 0.8045, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "objective-662-2-elixir-of-water-breathing",
            kind = "objective",
            priority = 480,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Use Elixir of Water Breathing.",
            complete = QuestObjective(662, 2, "Elixir of Water Breathing"),
            dependsOn = { "accept-662-deep-sea-salvage" },
            route = {
                Point(1417, 0.2341, 0.8510, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "objective-662-1-elixir-of-water-breathing",
            kind = "objective",
            priority = 490,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Use Elixir of Water Breathing.",
            complete = QuestObjective(662, 1, "Elixir of Water Breathing"),
            dependsOn = { "accept-662-deep-sea-salvage" },
            route = {
                Point(1417, 0.2304, 0.8451, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "objective-662-3-elixir-of-water-breathing",
            kind = "objective",
            priority = 500,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Use Elixir of Water Breathing.",
            complete = QuestObjective(662, 3, "Elixir of Water Breathing"),
            dependsOn = { "accept-662-deep-sea-salvage" },
            route = {
                Point(1417, 0.2045, 0.8560, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "objective-662-4-elixir-of-water-breathing",
            kind = "objective",
            priority = 510,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Use Elixir of Water Breathing.",
            complete = QuestObjective(662, 4, "Elixir of Water Breathing"),
            dependsOn = { "accept-662-deep-sea-salvage" },
            route = {
                Point(1417, 0.2065, 0.8510, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "turnin-662-deep-sea-salvage",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Deep Sea Salvage.",
            complete = QuestState(662, "completed"),
            dependsOn = { "accept-662-deep-sea-salvage", "objective-662-2-elixir-of-water-breathing", "objective-662-1-elixir-of-water-breathing", "objective-662-3-elixir-of-water-breathing", "objective-662-4-elixir-of-water-breathing" },
            route = {
                Point(1417, 0.3280, 0.8148, "Deep Sea Salvage",
                    "Travel to Deep Sea Salvage."),
            },
        },
        {
            id = "turnin-664-drowned-sorrows",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Drowned Sorrows.",
            complete = QuestState(664, "completed"),
            dependsOn = { "accept-664-drowned-sorrows" },
            route = {
                Point(1417, 0.3400, 0.8079, "Drowned Sorrows",
                    "Travel to Drowned Sorrows."),
            },
        },
        {
            id = "turnin-666-sunken-treasure",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Sunken Treasure.",
            complete = QuestState(666, "completed"),
            dependsOn = { "accept-666-sunken-treasure" },
            route = {
                Point(1417, 0.3385, 0.8045, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "accept-668-sunken-treasure",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Sunken Treasure.",
            complete = QuestState(668, "activeOrCompleted"),
            route = {
                Point(1417, 0.3385, 0.8045, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "turnin-668-sunken-treasure",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Sunken Treasure.",
            complete = QuestState(668, "completed"),
            dependsOn = { "accept-668-sunken-treasure" },
            route = {
                Point(1417, 0.3229, 0.8138, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "accept-669-sunken-treasure",
            kind = "accept",
            priority = 570,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept Sunken Treasure.",
            complete = QuestState(669, "activeOrCompleted"),
            route = {
                Point(1417, 0.3229, 0.8138, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
    },
})
