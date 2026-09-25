local _, ns = ...

-- Alliance Era leveling route for the Badlands, levels 40-41.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    BADLANDS = 1418,
    IRONFORGE = 1455,
    STORMWIND = 1453,
    LOCH_MODAN = 1432,
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
    id = "leveling-era-40-41-badlands-alliance",
    title = "40-41 Badlands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 40 } },
        },
    },
    goals = {
        {
            id = "accept-4486-the-tome-of-nobility",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept The Tome of Nobility from Brandur Ironhammer in Hall of Mysteries.",
            complete = QuestState(4486, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2332, 0.0633, "Brandur Ironhammer",
                    "Travel to Brandur Ironhammer."),
            },
        },
        {
            id = "turnin-4486-the-tome-of-nobility",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Nobility to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-4486-the-tome-of-nobility" },
            complete = QuestState(4486, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3983, 0.2983, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-4485-the-tome-of-nobility",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept The Tome of Nobility from Arthur the Faithful in Cathedral of Light.",
            complete = QuestState(4485, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3867, 0.3291, "Arthur the Faithful",
                    "Travel to Arthur the Faithful."),
            },
        },
        {
            id = "turnin-4485-the-tome-of-nobility",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Nobility to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-4485-the-tome-of-nobility" },
            complete = QuestState(4485, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3986, 0.2978, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "note-summon-warhorse",
            kind = "note",
            priority = 50,
            conditions = {
                all = {
                    { class = 2 },
                },
            },
            text = "Speak to Arthur the Faithful and train Summon Warhorse.",
            route = {
                Point(MAP.STORMWIND, 0.3867, 0.3291, "Arthur the Faithful",
                    "Travel to Arthur the Faithful."),
            },
        },
        {
            id = "objective-713-frost-oil",
            kind = "objective",
            priority = 70,
            text = "Buy Frost Oil.",
            complete = QuestState(713, "complete"),
            route = {
                Point(MAP.IRONFORGE, 0.2400, 0.7000, "Frost Oil",
                    "Travel to Frost Oil."),
            },
        },
        {
            id = "objective-713-gyrochronatom",
            kind = "objective",
            priority = 80,
            text = "Buy Gyrochronatom.",
            complete = QuestState(713, "complete"),
            route = {
                Point(MAP.IRONFORGE, 0.2400, 0.7000, "Gyrochronatom",
                    "Travel to Gyrochronatom."),
            },
        },
        {
            id = "objective-713-healing-potion",
            kind = "objective",
            priority = 90,
            text = "Buy Healing Potion.",
            complete = QuestState(713, "complete"),
            route = {
                Point(MAP.IRONFORGE, 0.2400, 0.7000, "Healing Potion",
                    "Travel to Healing Potion."),
            },
        },
        {
            id = "objective-713-lesser-invisibility-potion",
            kind = "objective",
            priority = 100,
            text = "Buy Lesser Invisibility Potion.",
            complete = QuestState(713, "complete"),
            route = {
                Point(MAP.IRONFORGE, 0.2400, 0.7000, "Lesser Invisibility Potion",
                    "Travel to Lesser Invisibility Potion."),
            },
        },
        {
            id = "objective-713-4-item-3404",
            kind = "objective",
            priority = 110,
            text = "Buy Buzzard Wing.",
            complete = QuestState(713, "complete"),
            route = {
                Point(MAP.IRONFORGE, 0.2400, 0.7000, "4 Buzzard Wing",
                    "Travel to 4 Buzzard Wing."),
            },
        },
        {
            id = "accept-707-ironband-wants-you",
            kind = "accept",
            priority = 120,
            text = "Accept Ironband Wants You! from Prospector Stormpike in The Library.",
            complete = QuestState(707, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7457, 0.1168, "Prospector Stormpike",
                    "Travel to Prospector Stormpike."),
            },
        },
        {
            id = "accept-2500-badlands-reagent-run",
            kind = "accept",
            priority = 140,
            text = "Accept Badlands Reagent Run from Ghak Healtouch in Thelsamar.",
            complete = QuestState(2500, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3706, 0.4936, "Ghak Healtouch",
                    "Travel to Ghak Healtouch."),
            },
        },
        {
            id = "turnin-707-ironband-wants-you",
            kind = "turnin",
            priority = 160,
            text = "Turn in Ironband Wants You! to Prospector Ironband in Ironband's Excavation Site.",
            dependsOn = { "accept-707-ironband-wants-you" },
            complete = QuestState(707, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6594, 0.6562, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "accept-738-find-agmond",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 707, state = "completed" } },
                },
            },
            text = "Accept Find Agmond from Prospector Ironband in Ironband's Excavation Site.",
            complete = QuestState(738, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6594, 0.6562, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "accept-706-fiery-blaze-enchantments",
            kind = "accept",
            priority = 190,
            text = "Accept Fiery Blaze Enchantments from Sigrun Ironhew in Badlands.",
            complete = QuestState(706, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.5370, 0.4330, "Sigrun Ironhew",
                    "Travel to Sigrun Ironhew."),
            },
        },
        {
            id = "accept-718-mirages",
            kind = "accept",
            priority = 200,
            text = "Accept Mirages from Sigrun Ironhew in Badlands.",
            complete = QuestState(718, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.5370, 0.4330, "Sigrun Ironhew",
                    "Travel to Sigrun Ironhew."),
            },
        },
        {
            id = "accept-719-a-dwarf-and-his-tools",
            kind = "accept",
            priority = 210,
            text = "Accept A Dwarf and His Tools from Prospector Ryedol in Badlands.",
            complete = QuestState(719, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.5340, 0.4340, "Prospector Ryedol",
                    "Travel to Prospector Ryedol."),
            },
        },
        {
            id = "accept-1108-indurium",
            kind = "accept",
            priority = 230,
            conditions = {
                all = {
                    { quest = { id = 1106, state = "completed" } },
                },
            },
            text = "Accept Indurium from Martek the Exiled in Valley of Fangs.",
            complete = QuestState(1108, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.4227, 0.5262, "Martek the Exiled",
                    "Travel to Martek the Exiled."),
            },
        },
        {
            id = "accept-703-barbecued-buzzard-wings",
            kind = "accept",
            priority = 240,
            text = "Accept Barbecued Buzzard Wings from Rigglefuzz in Valley of Fangs.",
            complete = QuestState(703, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.4237, 0.5294, "Rigglefuzz",
                    "Travel to Rigglefuzz."),
            },
        },
        {
            id = "objective-718-mirages",
            kind = "objective",
            priority = 260,
            text = "Collect Supply Crate from the Excavation Supply Crate in Camp Kosh.",
            dependsOn = { "accept-718-mirages" },
            complete = QuestState(718, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.6690, 0.2346, "Camp Kosh",
                    "Travel to Camp Kosh."),
            },
        },
        {
            id = "accept-720-a-sign-of-hope",
            kind = "accept",
            priority = 280,
            text = "Accept A Sign of Hope in Hammertoe's Digsite.",
            complete = QuestState(720, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.5300, 0.3410, "Hammertoe's Digsite",
                    "Travel to Hammertoe's Digsite."),
            },
        },
        {
            id = "objective-719-a-dwarf-and-his-tools",
            kind = "objective",
            priority = 290,
            text = "Kill Shadowforge mobs until you find Ryedol's Lucky Pick in Hammertoe's Digsite.",
            dependsOn = { "accept-719-a-dwarf-and-his-tools" },
            complete = QuestState(719, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.5100, 0.3100, "Shadowforge Tunneler",
                    "Travel to Shadowforge Tunneler."),
            },
        },
        {
            id = "turnin-718-mirages",
            kind = "turnin",
            priority = 300,
            text = "Turn in Mirages to Sigrun Ironhew in Badlands.",
            dependsOn = { "objective-718-mirages" },
            complete = QuestState(718, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.5370, 0.4330, "Sigrun Ironhew",
                    "Travel to Sigrun Ironhew."),
            },
        },
        {
            id = "accept-733-scrounging",
            kind = "accept",
            priority = 310,
            text = "Accept Scrounging from Sigrun Ironhew in Badlands.",
            complete = QuestState(733, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.5370, 0.4330, "Sigrun Ironhew",
                    "Travel to Sigrun Ironhew."),
            },
        },
        {
            id = "turnin-719-a-dwarf-and-his-tools",
            kind = "turnin",
            priority = 320,
            text = "Turn in A Dwarf and His Tools to Prospector Ryedol in Badlands.",
            dependsOn = { "objective-719-a-dwarf-and-his-tools" },
            complete = QuestState(719, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.5340, 0.4340, "Prospector Ryedol",
                    "Travel to Prospector Ryedol."),
            },
        },
        {
            id = "turnin-720-a-sign-of-hope",
            kind = "turnin",
            priority = 330,
            text = "Turn in A Sign of Hope to Prospector Ryedol in Badlands.",
            dependsOn = { "accept-720-a-sign-of-hope" },
            complete = QuestState(720, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.5340, 0.4340, "Prospector Ryedol",
                    "Travel to Prospector Ryedol."),
            },
        },
        {
            id = "accept-732-tremors-of-the-earth",
            kind = "accept",
            priority = 340,
            text = "Accept Tremors of the Earth from Garek in Badlands.",
            complete = QuestState(732, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.6191, 0.5423, "Garek",
                    "Travel to Garek."),
            },
        },
        {
            id = "turnin-738-find-agmond",
            kind = "turnin",
            priority = 350,
            conditions = {
                all = {
                    { quest = { id = 707, state = "completed" } },
                },
            },
            text = "Turn in Find Agmond in Agmond's End.",
            dependsOn = { "accept-738-find-agmond" },
            complete = QuestState(738, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.5092, 0.6236, "Agmond's End",
                    "Travel to Agmond's End."),
            },
        },
        {
            id = "accept-739-murdaloc",
            kind = "accept",
            priority = 360,
            conditions = {
                all = {
                    { quest = { id = 707, state = "completed" } },
                },
            },
            text = "Accept Murdaloc in Agmond's End.",
            complete = QuestState(739, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.5092, 0.6236, "Agmond's End",
                    "Travel to Agmond's End."),
            },
        },
        {
            id = "objective-739-1-murdaloc",
            kind = "objective",
            priority = 370,
            conditions = {
                all = {
                    { quest = { id = 707, state = "completed" } },
                },
            },
            text = "Find and kill Murdaloc in Agmond's End.",
            dependsOn = { "accept-739-murdaloc" },
            complete = QuestObjective(739, 1),
            route = {
                Point(MAP.BADLANDS, 0.4975, 0.6690, "Murdaloc",
                    "Travel to Murdaloc."),
            },
        },
        {
            id = "objective-739-2-murdaloc",
            kind = "objective",
            priority = 380,
            conditions = {
                all = {
                    { quest = { id = 707, state = "completed" } },
                },
            },
            text = "Kill 12 Stonevault Bonesnapper or Stonevault Shaman found nearby at Agmond's End.",
            dependsOn = { "accept-739-murdaloc" },
            complete = QuestObjective(739, 2),
            route = {
                Point(MAP.BADLANDS, 0.5000, 0.7000, "Stonevault Bonesnapper",
                    "Travel to Stonevault Bonesnapper."),
            },
        },
        {
            id = "objective-1108-indurium",
            kind = "objective",
            priority = 390,
            conditions = {
                all = {
                    { quest = { id = 1106, state = "completed" } },
                },
            },
            text = "Collect 10 Indurium Flake from Stonevault mobs in Agmond's End.",
            dependsOn = { "accept-1108-indurium" },
            complete = QuestState(1108, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.4997, 0.6831, "Stonevault Bonesnapper",
                    "Travel to Stonevault Bonesnapper."),
            },
        },
        {
            id = "turnin-1108-indurium",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { quest = { id = 1106, state = "completed" } },
                },
            },
            text = "Turn in Indurium to Martek the Exiled in Valley of Fangs.",
            dependsOn = { "objective-1108-indurium" },
            complete = QuestState(1108, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.4220, 0.5272, "Martek the Exiled",
                    "Travel to Martek the Exiled."),
            },
        },
        {
            id = "objective-732-tremors-of-the-earth",
            kind = "objective",
            priority = 420,
            text = "Kill Boss Tho'grun who patrol down to the southwest side of the zone and back in a circle. You should be able to pick Boss Tho'grun off the back of the pack easily.",
            dependsOn = { "accept-732-tremors-of-the-earth" },
            complete = QuestState(732, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.2300, 0.5200, "Boss Tho'grun",
                    "Travel to Boss Tho'grun."),
            },
        },
        {
            id = "objective-703-barbecued-buzzard-wings",
            kind = "objective",
            priority = 440,
            text = "Kill Starving Buzzard and collect 4 Buzzard Wing.",
            dependsOn = { "accept-703-barbecued-buzzard-wings" },
            complete = QuestState(703, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.5275, 0.2628, "Starving Buzzard",
                    "Travel to Starving Buzzard."),
            },
        },
        {
            id = "turnin-703-barbecued-buzzard-wings",
            kind = "turnin",
            priority = 450,
            text = "Turn in Barbecued Buzzard Wings to Rigglefuzz in Valley of Fangs.",
            dependsOn = { "objective-703-barbecued-buzzard-wings" },
            complete = QuestState(703, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.4237, 0.5294, "Rigglefuzz",
                    "Travel to Rigglefuzz."),
            },
        },
        {
            id = "accept-1137-news-for-fizzle",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { quest = { id = 1106, state = "completed" } },
                },
            },
            text = "Accept News for Fizzle from Martek the Exiled in Valley of Fangs.",
            complete = QuestState(1137, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.4217, 0.5310, "Martek the Exiled",
                    "Travel to Martek the Exiled."),
            },
        },
        {
            id = "accept-710-study-of-the-elements-rock",
            kind = "accept",
            priority = 480,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus in The Dustbowl.",
            complete = QuestState(710, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "objective-710-study-of-the-elements-rock",
            kind = "objective",
            priority = 490,
            text = "Kill the Lesser Rock Elemental and collect 10 Small Stone Shard.",
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            complete = QuestState(710, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1312, 0.3886, "Lesser Rock Elemental",
                    "Travel to Lesser Rock Elemental."),
            },
        },
        {
            id = "turnin-710-study-of-the-elements-rock",
            kind = "turnin",
            priority = 500,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus in The Dustbowl.",
            dependsOn = { "objective-710-study-of-the-elements-rock" },
            complete = QuestState(710, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "accept-711-study-of-the-elements-rock",
            kind = "accept",
            priority = 510,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus in The Dustbowl.",
            complete = QuestState(711, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "objective-711-study-of-the-elements-rock",
            kind = "objective",
            priority = 520,
            text = "Kill Rock Elemental until you've collected 3 Large Stone Slab. They are found either further West or to the South of Badlands.",
            dependsOn = { "accept-711-study-of-the-elements-rock" },
            complete = QuestState(711, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1552, 0.3218, "Rock Elemental",
                    "Travel to Rock Elemental."),
            },
        },
        {
            id = "objective-2500-3-rock-elemental-shard",
            kind = "objective",
            priority = 530,
            text = "Kill Rock Elementals to collect 5 Rock Elemental Shard.",
            dependsOn = { "accept-2500-badlands-reagent-run" },
            complete = QuestObjective(2500, 3),
            route = {
                Point(MAP.BADLANDS, 0.1552, 0.3218, "Lesser Rock Elemental",
                    "Travel to Lesser Rock Elemental."),
            },
        },
        {
            id = "turnin-711-study-of-the-elements-rock",
            kind = "turnin",
            priority = 540,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus in The Dustbowl.",
            dependsOn = { "objective-711-study-of-the-elements-rock" },
            complete = QuestState(711, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "accept-712-study-of-the-elements-rock",
            kind = "accept",
            priority = 550,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus in The Dustbowl.",
            complete = QuestState(712, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "objective-733-scrounging",
            kind = "objective",
            priority = 570,
            text = "Kill Dustbelcher to collect 7 pieces of Scrap Metal in Camp Cagg.",
            dependsOn = { "accept-733-scrounging" },
            complete = QuestState(733, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1058, 0.7772, "Dustbelcher Wyrmhunter",
                    "Travel to Dustbelcher Wyrmhunter."),
            },
        },
        {
            id = "objective-712-study-of-the-elements-rock",
            kind = "objective",
            priority = 580,
            text = "Kill the Greater Rock Elemental and collect 5 Bracers of Rock Binding in Camp Cagg.",
            dependsOn = { "accept-712-study-of-the-elements-rock" },
            complete = QuestState(712, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1703, 0.8440, "Greater Rock Elemental",
                    "Travel to Greater Rock Elemental."),
            },
        },
        {
            id = "turnin-712-study-of-the-elements-rock",
            kind = "turnin",
            priority = 600,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus in The Dustbowl.",
            dependsOn = { "objective-712-study-of-the-elements-rock" },
            complete = QuestState(712, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "accept-734-this-is-going-to-be-hard",
            kind = "accept",
            priority = 610,
            text = "Accept This Is Going to Be Hard from Lotwil Veriatus in The Dustbowl.",
            complete = QuestState(734, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "turnin-734-this-is-going-to-be-hard",
            kind = "turnin",
            priority = 620,
            text = "Turn in This Is Going to Be Hard to Lucien Tosselwrench in The Dustbowl.",
            dependsOn = { "accept-734-this-is-going-to-be-hard" },
            complete = QuestState(734, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.2583, 0.4429, "Lucien Tosselwrench",
                    "Travel to Lucien Tosselwrench."),
            },
        },
        {
            id = "accept-777-this-is-going-to-be-hard",
            kind = "accept",
            priority = 630,
            text = "Accept This Is Going to Be Hard from Lucien Tosselwrench in The Dustbowl.",
            complete = QuestState(777, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.2583, 0.4429, "Lucien Tosselwrench",
                    "Travel to Lucien Tosselwrench."),
            },
        },
        {
            id = "turnin-777-this-is-going-to-be-hard",
            kind = "turnin",
            priority = 640,
            text = "Turn in This Is Going to Be Hard to Lotwil Veriatus in The Dustbowl.",
            dependsOn = { "accept-777-this-is-going-to-be-hard" },
            complete = QuestState(777, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "accept-778-this-is-going-to-be-hard",
            kind = "accept",
            priority = 650,
            text = "Accept This Is Going to Be Hard from Lotwil Veriatus in The Dustbowl.",
            complete = QuestState(778, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "objective-778-this-is-going-to-be-hard",
            kind = "objective",
            priority = 660,
            text = "Kill the Fam'retor Guardian patrolling around and collect Lotwil's Shackles of Elemental Binding It is possible to solo this quest, you will need to abandon the quest and accept it again to retry, it is safe to skip.",
            dependsOn = { "accept-778-this-is-going-to-be-hard" },
            complete = QuestState(778, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.2540, 0.4360, "Fam'retor Guardian",
                    "Travel to Fam'retor Guardian."),
            },
        },
        {
            id = "turnin-733-scrounging",
            kind = "turnin",
            priority = 670,
            text = "Turn in Scrounging to Sigrun Ironhew in Badlands.",
            dependsOn = { "objective-733-scrounging" },
            complete = QuestState(733, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.5370, 0.4330, "Sigrun Ironhew",
                    "Travel to Sigrun Ironhew."),
            },
        },
        {
            id = "turnin-732-tremors-of-the-earth",
            kind = "turnin",
            priority = 680,
            text = "Turn in Tremors of the Earth to Garek in Badlands.",
            dependsOn = { "objective-732-tremors-of-the-earth" },
            complete = QuestState(732, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.6191, 0.5423, "Garek",
                    "Travel to Garek."),
            },
        },
        {
            id = "objective-706-fiery-blaze-enchantments",
            kind = "objective",
            priority = 690,
            text = "Kill Scalding Whelp until you collect a Black Drake's Heart Lethlor Ravine.",
            dependsOn = { "accept-706-fiery-blaze-enchantments" },
            complete = QuestState(706, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.6969, 0.5367, "Scalding Whelp",
                    "Travel to Scalding Whelp."),
            },
        },
        {
            id = "turnin-706-fiery-blaze-enchantments",
            kind = "turnin",
            priority = 700,
            text = "Turn in Fiery Blaze Enchantments to Sigrun Ironhew in Badlands.",
            dependsOn = { "objective-706-fiery-blaze-enchantments" },
            complete = QuestState(706, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.5370, 0.4330, "Sigrun Ironhew",
                    "Travel to Sigrun Ironhew."),
            },
        },
        {
            id = "objective-2500-badlands-reagent-run",
            kind = "objective",
            priority = 710,
            text = "Kill Buzzards, Coyotes and Rock Elementals to collect 5 Buzzard Gizzard, 10 Crag Coyote Fang and 5 Rock Elemental Shard in Apocryphan's Rest.",
            dependsOn = { "accept-2500-badlands-reagent-run" },
            complete = QuestState(2500, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1510, 0.5984, "Starving Buzzard",
                    "Travel to Starving Buzzard."),
            },
        },
        {
            id = "turnin-739-murdaloc",
            kind = "turnin",
            priority = 730,
            conditions = {
                all = {
                    { quest = { id = 707, state = "completed" } },
                },
            },
            text = "Turn in Murdaloc to Prospector Ironband in Ironband's Excavation Site.",
            dependsOn = { "objective-739-1-murdaloc", "objective-739-2-murdaloc" },
            complete = QuestState(739, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6588, 0.6559, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "accept-704-agmond-s-fate",
            kind = "accept",
            priority = 740,
            conditions = {
                all = {
                    { quest = { id = 707, state = "completed" } },
                },
            },
            text = "Accept Agmond's Fate from Prospector Ironband in Ironband's Excavation Site.",
            complete = QuestState(704, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6588, 0.6559, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "turnin-2500-badlands-reagent-run",
            kind = "turnin",
            priority = 760,
            text = "Turn in Badlands Reagent Run to Ghak Healtouch in Thelsamar.",
            dependsOn = { "objective-2500-3-rock-elemental-shard", "objective-2500-badlands-reagent-run" },
            complete = QuestState(2500, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3706, 0.4936, "Ghak Healtouch",
                    "Travel to Ghak Healtouch."),
            },
        },
    },
})
