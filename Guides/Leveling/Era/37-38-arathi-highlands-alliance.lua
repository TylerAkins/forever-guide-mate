local _, ns = ...

-- Alliance Era leveling route for the Arathi Highlands, levels 37-38.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    ARATHI = 1417,
    STORMWIND = 1453,
    HILLSBRAD = 1424,
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
    id = "leveling-era-37-38-arathi-highlands-alliance",
    title = "37-38 Arathi Highlands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 37 } },
        },
    },
    goals = {
        {
            id = "travel-690-stormwind-city",
            kind = "travel",
            priority = 10,
            text = "Travel to Mage Quarter in Stormwind City.",
            route = {
                Point(MAP.STORMWIND, 0.3982, 0.8153, "Mage Quarter",
                    "Travel to Mage Quarter."),
            },
        },
        {
            id = "accept-690-malin-s-request",
            kind = "accept",
            priority = 20,
            text = "Accept Malin's Request from Archmage Malin in Mage Quarter.",
            complete = QuestState(690, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3982, 0.8153, "Archmage Malin",
                    "Travel to Archmage Malin."),
            },
        },
        {
            id = "travel-659-southshore",
            kind = "travel",
            priority = 30,
            text = "Travel to Southshore.",
            route = {
                Point(MAP.HILLSBRAD, 0.5022, 0.5799, "Southshore",
                    "Travel to Southshore."),
            },
        },
        {
            id = "accept-659-hints-of-a-new-plague",
            kind = "accept",
            priority = 40,
            text = "Accept Hints of a New Plague? from Phin Odelic in Southshore.",
            complete = QuestState(659, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5022, 0.5799, "Phin Odelic",
                    "Travel to Phin Odelic."),
            },
        },
        {
            id = "travel-690-refuge-pointe",
            kind = "travel",
            priority = 50,
            text = "Travel to Refuge Pointe.",
            route = {
                Point(MAP.ARATHI, 0.4650, 0.4700, "Refuge Pointe",
                    "Travel to Refuge Pointe."),
            },
        },
        {
            id = "accept-691-worth-its-weight-in-gold",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { quest = { id = 690, state = "completed" } },
                },
            },
            text = "Accept Worth Its Weight in Gold from Apprentice Kryten in Refuge Pointe.",
            complete = QuestState(691, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.4616, 0.4769, "Apprentice Kryten",
                    "Travel to Apprentice Kryten."),
            },
        },
        {
            id = "accept-642-the-princess-trapped",
            kind = "accept",
            priority = 70,
            text = "Accept The Princess Trapped in Arathi Highlands.",
            complete = QuestState(642, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.6241, 0.3373, "Arathi Highlands",
                    "Travel to Arathi Highlands."),
            },
        },
        {
            id = "travel-642-drywhisker-gorge",
            kind = "travel",
            priority = 80,
            text = "Travel to Drywhisker Gorge.",
            route = {
                Point(MAP.ARATHI, 0.7951, 0.4033, "Drywhisker Gorge",
                    "Travel to Drywhisker Gorge."),
            },
        },
        {
            id = "objective-642-the-princess-trapped",
            kind = "objective",
            priority = 90,
            text = "Kill Drywhisker Surveyor and collect 12 Mote of Myzrael in Drywhisker Gorge The quest turn in is inside the cave so keep working towards.",
            dependsOn = { "accept-642-the-princess-trapped" },
            complete = QuestState(642, "complete"),
            route = {
                Point(MAP.ARATHI, 0.8273, 0.3611, "Continue toward The Princess Trapped",
                    "Continue toward The Princess Trapped."),
                Point(MAP.ARATHI, 0.8696, 0.3153, "Continue toward The Princess Trapped",
                    "Continue toward The Princess Trapped."),
                Point(MAP.ARATHI, 0.8666, 0.3026, "Drywhisker Surveyor",
                    "Travel to Drywhisker Surveyor."),
            },
        },
        {
            id = "turnin-642-the-princess-trapped",
            kind = "turnin",
            priority = 100,
            text = "Turn in The Princess Trapped in Drywhisker Gorge.",
            dependsOn = { "objective-642-the-princess-trapped" },
            complete = QuestState(642, "completed"),
            route = {
                Point(MAP.ARATHI, 0.8441, 0.2894, "Continue toward The Princess Trapped",
                    "Continue toward The Princess Trapped."),
                Point(MAP.ARATHI, 0.8431, 0.3092, "Drywhisker Gorge",
                    "Travel to Drywhisker Gorge."),
            },
        },
        {
            id = "accept-651-stones-of-binding",
            kind = "accept",
            priority = 110,
            text = "Accept Stones of Binding in Drywhisker Gorge.",
            complete = QuestState(651, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.8431, 0.3092, "Drywhisker Gorge",
                    "Travel to Drywhisker Gorge."),
            },
        },
        {
            id = "travel-651-circle-of-east-binding",
            kind = "travel",
            priority = 120,
            text = "Exit the cave and travel to Circle of East Binding.",
            route = {
                Point(MAP.ARATHI, 0.7954, 0.3993, "Continue toward Circle of East Binding",
                    "Continue toward Circle of East Binding."),
                Point(MAP.ARATHI, 0.6993, 0.3780, "Continue toward Circle of East Binding",
                    "Continue toward Circle of East Binding."),
                Point(MAP.ARATHI, 0.6666, 0.2966, "Circle of East Binding",
                    "Travel to Circle of East Binding."),
            },
        },
        {
            id = "objective-651-2-cresting-key",
            kind = "objective",
            priority = 130,
            text = "Collect Cresting Key from the stone in Circle of East Binding.",
            dependsOn = { "accept-651-stones-of-binding" },
            complete = QuestObjective(651, 2),
            route = {
                Point(MAP.ARATHI, 0.6670, 0.2964, "Circle of East Binding",
                    "Travel to Circle of East Binding."),
            },
        },
        {
            id = "travel-658-go-shek-farm",
            kind = "travel",
            priority = 140,
            text = "Travel to Go'Shek Farm.",
            route = {
                Point(MAP.ARATHI, 0.6017, 0.5384, "Go'Shek Farm",
                    "Travel to Go'Shek Farm."),
            },
        },
        {
            id = "turnin-659-hints-of-a-new-plague",
            kind = "turnin",
            priority = 150,
            text = "Turn in Hints of a New Plague? to Quae in Go'Shek Farm.",
            dependsOn = { "accept-659-hints-of-a-new-plague" },
            complete = QuestState(659, "completed"),
            route = {
                Point(MAP.ARATHI, 0.6017, 0.5384, "Quae",
                    "Travel to Quae."),
            },
        },
        {
            id = "accept-658-hints-of-a-new-plague",
            kind = "accept",
            priority = 160,
            text = "Accept Hints of a New Plague? from Quae in Go'Shek Farm.",
            complete = QuestState(658, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.6017, 0.5384, "Quae",
                    "Travel to Quae."),
            },
        },
        {
            id = "travel-691-witherbark-village",
            kind = "travel",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 690, state = "completed" } },
                },
            },
            text = "Travel to Witherbark Village.",
            route = {
                Point(MAP.ARATHI, 0.6829, 0.7452, "Witherbark Village",
                    "Travel to Witherbark Village."),
            },
        },
        {
            id = "objective-691-3-witherbark-shadow-hunter",
            kind = "objective",
            priority = 180,
            conditions = {
                all = {
                    { quest = { id = 690, state = "completed" } },
                },
            },
            text = "Find and kill Witherbark Shadow Hunter inside the cave first and collect Shadow Hunter Knife in Witherbark Village, they are quite rare and only found inside the cave Collect Witherbark Tusk and Witherbark Medicine Pouch from the other troll as you go.",
            dependsOn = { "accept-691-worth-its-weight-in-gold" },
            complete = QuestObjective(691, 3),
            route = {
                Point(MAP.ARATHI, 0.6733, 0.7877, "Witherbark Shadow Hunter",
                    "Travel to Witherbark Shadow Hunter."),
            },
        },
        {
            id = "objective-691-worth-its-weight-in-gold",
            kind = "objective",
            priority = 190,
            conditions = {
                all = {
                    { quest = { id = 690, state = "completed" } },
                },
            },
            text = "Kill Witherbark Witch Doctor for 4 Witherbark Medicine Pouch and Witherbark Headhunter for 10 Witherbark Tusk in Witherbark Village.",
            dependsOn = { "accept-691-worth-its-weight-in-gold" },
            complete = QuestState(691, "complete"),
            route = {
                Point(MAP.ARATHI, 0.6733, 0.7877, "Witherbark Witch Doctor",
                    "Travel to Witherbark Witch Doctor."),
            },
        },
        {
            id = "objective-651-3-thundering-key",
            kind = "objective",
            priority = 200,
            text = "Collect Thundering Key from the stone in Circle of Outer Binding.",
            dependsOn = { "accept-651-stones-of-binding" },
            complete = QuestObjective(651, 3),
            route = {
                Point(MAP.ARATHI, 0.5209, 0.5068, "Circle of Outer Binding",
                    "Travel to Circle of Outer Binding."),
            },
        },
        {
            id = "travel-693-refuge-pointe",
            kind = "travel",
            priority = 210,
            text = "Travel to Refuge Pointe.",
            route = {
                Point(MAP.ARATHI, 0.4618, 0.4771, "Refuge Pointe",
                    "Travel to Refuge Pointe."),
            },
        },
        {
            id = "turnin-691-worth-its-weight-in-gold",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { quest = { id = 690, state = "completed" } },
                },
            },
            text = "Turn in Worth Its Weight in Gold to Apprentice Kryten in Refuge Pointe.",
            dependsOn = { "objective-691-3-witherbark-shadow-hunter", "objective-691-worth-its-weight-in-gold" },
            complete = QuestState(691, "completed"),
            route = {
                Point(MAP.ARATHI, 0.4618, 0.4771, "Apprentice Kryten",
                    "Travel to Apprentice Kryten."),
            },
        },
        {
            id = "accept-693-wand-over-fist",
            kind = "accept",
            priority = 230,
            text = "Accept Wand over Fist from Skuerto in Refuge Pointe.",
            complete = QuestState(693, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.4659, 0.4712, "Skuerto",
                    "Travel to Skuerto."),
            },
        },
        {
            id = "travel-651-circle-of-west-binding",
            kind = "travel",
            priority = 240,
            text = "Travel to Circle of West Binding.",
            route = {
                Point(MAP.ARATHI, 0.3468, 0.5217, "Continue toward Circle of West Binding",
                    "Continue toward Circle of West Binding."),
                Point(MAP.ARATHI, 0.2336, 0.4204, "Continue toward Circle of West Binding",
                    "Continue toward Circle of West Binding."),
                Point(MAP.ARATHI, 0.2543, 0.3007, "Circle of West Binding",
                    "Travel to Circle of West Binding."),
            },
        },
        {
            id = "objective-651-1-burning-key",
            kind = "objective",
            priority = 250,
            text = "Collect Burning Key from the stone in Circle of West Binding.",
            dependsOn = { "accept-651-stones-of-binding" },
            complete = QuestObjective(651, 1),
            route = {
                Point(MAP.ARATHI, 0.5209, 0.5068, "Circle of West Binding",
                    "Travel to Circle of West Binding."),
            },
        },
        {
            id = "travel-circle-of-inner-binding",
            kind = "travel",
            priority = 260,
            text = "Travel to Circle of Inner Binding.",
            route = {
                Point(MAP.ARATHI, 0.3624, 0.5723, "Circle of Inner Binding",
                    "Travel to Circle of Inner Binding."),
            },
        },
        {
            id = "turnin-651-stones-of-binding",
            kind = "turnin",
            priority = 270,
            text = "Turn in Stones of Binding in Circle of Inner Binding.",
            dependsOn = { "objective-651-2-cresting-key", "objective-651-3-thundering-key", "objective-651-1-burning-key" },
            complete = QuestState(651, "completed"),
            route = {
                Point(MAP.ARATHI, 0.3624, 0.5725, "Circle of Inner Binding",
                    "Travel to Circle of Inner Binding."),
            },
        },
        {
            id = "travel-693-boulderfist-hall",
            kind = "travel",
            priority = 280,
            text = "Travel to Boulderfist Hall.",
            route = {
                Point(MAP.ARATHI, 0.5372, 0.7728, "Boulderfist Hall",
                    "Travel to Boulderfist Hall."),
            },
        },
        {
            id = "objective-693-wand-over-fist",
            kind = "objective",
            priority = 290,
            text = "Kill Kor'gresh Coldrage and collect Trelane's Wand of Invocation in Boulderfist Hall.",
            dependsOn = { "accept-693-wand-over-fist" },
            complete = QuestState(693, "complete"),
            route = {
                Point(MAP.ARATHI, 0.5473, 0.8175, "Kor'gresh Coldrage",
                    "Travel to Kor'gresh Coldrage."),
            },
        },
        {
            id = "travel-663-faldir-s-cove",
            kind = "travel",
            priority = 300,
            text = "Travel to Faldir's Cove.",
            route = {
                Point(MAP.ARATHI, 0.3108, 0.6563, "Continue toward Faldir's Cove",
                    "Continue toward Faldir's Cove."),
                Point(MAP.ARATHI, 0.2158, 0.7295, "Continue toward Faldir's Cove",
                    "Continue toward Faldir's Cove."),
                Point(MAP.ARATHI, 0.2159, 0.7559, "Continue toward Faldir's Cove",
                    "Continue toward Faldir's Cove."),
                Point(MAP.ARATHI, 0.2209, 0.7973, "Faldir's Cove",
                    "Travel to Faldir's Cove."),
            },
        },
        {
            id = "accept-663-land-ho",
            kind = "accept",
            priority = 310,
            text = "Accept Land Ho! from Lolo the Lookout in Faldir's Cove.",
            complete = QuestState(663, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.3183, 0.8275, "Lolo the Lookout",
                    "Travel to Lolo the Lookout."),
            },
        },
        {
            id = "turnin-663-land-ho",
            kind = "turnin",
            priority = 320,
            text = "Turn in Land Ho! to Shakes O'Breen in Faldir's Cove.",
            dependsOn = { "accept-663-land-ho" },
            complete = QuestState(663, "completed"),
            route = {
                Point(MAP.ARATHI, 0.3230, 0.8139, "Shakes O'Breen",
                    "Travel to Shakes O'Breen."),
            },
        },
        {
            id = "accept-662-deep-sea-salvage",
            kind = "accept",
            priority = 330,
            text = "Accept Deep Sea Salvage from First Mate Nilzlix in Faldir's Cove.",
            complete = QuestState(662, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.3273, 0.8144, "First Mate Nilzlix",
                    "Travel to First Mate Nilzlix."),
            },
        },
        {
            id = "accept-665-sunken-treasure",
            kind = "accept",
            priority = 340,
            text = "Accept Sunken Treasure from Professor Phizzlethorpe in Faldir's Cove.",
            complete = QuestState(665, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.3401, 0.8070, "Professor Phizzlethorpe",
                    "Travel to Professor Phizzlethorpe."),
            },
        },
        {
            id = "accept-664-drowned-sorrows",
            kind = "accept",
            priority = 350,
            text = "Accept Drowned Sorrows from Captain Steelgut in Faldir's Cove.",
            complete = QuestState(664, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.3397, 0.8077, "Captain Steelgut",
                    "Travel to Captain Steelgut."),
            },
        },
        {
            id = "objective-665-sunken-treasure",
            kind = "objective",
            priority = 360,
            text = "Escort Professor Phizzlethorpe to the cave and back in Faldir's Cove, this is a difficult quest, stay outside the cave and kill 2 level 40 Vengeful Surge Kill one Vengeful Surge at a time and let Professor Phizzlethorpe tank the other, he can take a decent amount of damage.",
            dependsOn = { "accept-665-sunken-treasure" },
            complete = QuestState(665, "complete"),
            route = {
                Point(MAP.ARATHI, 0.3500, 0.8076, "Professor Phizzlethorpe",
                    "Travel to Professor Phizzlethorpe."),
            },
        },
        {
            id = "turnin-665-sunken-treasure",
            kind = "turnin",
            priority = 370,
            text = "Turn in Sunken Treasure to Doctor Draxlegauge in Faldir's Cove.",
            dependsOn = { "objective-665-sunken-treasure" },
            complete = QuestState(665, "completed"),
            route = {
                Point(MAP.ARATHI, 0.3391, 0.8044, "Doctor Draxlegauge",
                    "Travel to Doctor Draxlegauge."),
            },
        },
        {
            id = "accept-666-sunken-treasure",
            kind = "accept",
            priority = 380,
            text = "Accept Sunken Treasure from Doctor Draxlegauge in Faldir's Cove.",
            complete = QuestState(666, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.3391, 0.8044, "Doctor Draxlegauge",
                    "Travel to Doctor Draxlegauge."),
            },
        },
        {
            id = "objective-666-goggles-of-gem-hunting",
            kind = "objective",
            priority = 390,
            text = "Equip Goggles of Gem Hunting to help you find Elven Gem.",
            dependsOn = { "accept-666-sunken-treasure" },
            complete = QuestState(666, "complete"),
        },
        {
            id = "objective-662-1-maiden-s-folly-charts",
            kind = "objective",
            priority = 400,
            text = "Collect Maiden's Folly Charts in The Drowned Reef Inside the cauldron on the second floor of the ship.",
            dependsOn = { "accept-662-deep-sea-salvage" },
            complete = QuestObjective(662, 1),
            route = {
                Point(MAP.ARATHI, 0.2304, 0.8444, "The Drowned Reef",
                    "Travel to The Drowned Reef."),
            },
        },
        {
            id = "objective-662-2-maiden-s-folly-log",
            kind = "objective",
            priority = 410,
            text = "Collect Maiden's Folly Log in The Drowned Reef Bottom of the ship.",
            dependsOn = { "accept-662-deep-sea-salvage" },
            complete = QuestObjective(662, 2),
            route = {
                Point(MAP.ARATHI, 0.2041, 0.8560, "The Drowned Reef",
                    "Travel to The Drowned Reef."),
            },
        },
        {
            id = "objective-662-3-spirit-of-silverpine-charts",
            kind = "objective",
            priority = 420,
            text = "Collect Spirit of Silverpine Charts in The Drowned Reef.",
            dependsOn = { "accept-662-deep-sea-salvage" },
            complete = QuestObjective(662, 3),
            route = {
                Point(MAP.ARATHI, 0.2063, 0.8510, "The Drowned Reef",
                    "Travel to The Drowned Reef."),
            },
        },
        {
            id = "objective-662-4-spirit-of-silverpine-log",
            kind = "objective",
            priority = 430,
            text = "Collect Spirit of Silverpine Log in The Drowned Reef It is a book on the bottom of the ship.",
            dependsOn = { "accept-662-deep-sea-salvage" },
            complete = QuestObjective(662, 4),
            route = {
                Point(MAP.ARATHI, 0.2304, 0.8444, "The Drowned Reef",
                    "Travel to The Drowned Reef."),
            },
        },
        {
            id = "objective-666-1-sunken-treasure",
            kind = "objective",
            priority = 440,
            text = "Collect 10 Elven Gem from the stones underwater in The Drowned Reef.",
            dependsOn = { "accept-666-sunken-treasure" },
            complete = QuestObjective(666, 1),
            route = {
                Point(MAP.ARATHI, 0.2258, 0.9002, "The Drowned Reef",
                    "Travel to The Drowned Reef."),
            },
        },
        {
            id = "objective-664-drowned-sorrows",
            kind = "objective",
            priority = 450,
            text = "Kill 10 Daggerspine Raider and 3 Daggerspine Sorceress in Faldir's Cove.",
            dependsOn = { "accept-664-drowned-sorrows" },
            complete = QuestState(664, "complete"),
            route = {
                Point(MAP.ARATHI, 0.2216, 0.8300, "Daggerspine Raider",
                    "Travel to Daggerspine Raider."),
            },
        },
        {
            id = "travel-faldir-s-cove",
            kind = "travel",
            priority = 460,
            text = "Travel to Faldir's Cove.",
            route = {
                Point(MAP.ARATHI, 0.3108, 0.6563, "Continue toward Faldir's Cove",
                    "Continue toward Faldir's Cove."),
                Point(MAP.ARATHI, 0.2158, 0.7295, "Continue toward Faldir's Cove",
                    "Continue toward Faldir's Cove."),
                Point(MAP.ARATHI, 0.2159, 0.7559, "Continue toward Faldir's Cove",
                    "Continue toward Faldir's Cove."),
                Point(MAP.ARATHI, 0.2209, 0.7973, "Faldir's Cove",
                    "Travel to Faldir's Cove."),
            },
        },
        {
            id = "turnin-662-deep-sea-salvage",
            kind = "turnin",
            priority = 470,
            text = "Turn in Deep Sea Salvage to First Mate Nilzlix in Faldir's Cove.",
            dependsOn = { "objective-662-1-maiden-s-folly-charts", "objective-662-2-maiden-s-folly-log", "objective-662-3-spirit-of-silverpine-charts", "objective-662-4-spirit-of-silverpine-log" },
            complete = QuestState(662, "completed"),
            route = {
                Point(MAP.ARATHI, 0.3278, 0.8147, "First Mate Nilzlix",
                    "Travel to First Mate Nilzlix."),
            },
        },
        {
            id = "turnin-664-drowned-sorrows",
            kind = "turnin",
            priority = 480,
            text = "Turn in Drowned Sorrows to Captain Steelgut in Faldir's Cove.",
            dependsOn = { "objective-664-drowned-sorrows" },
            complete = QuestState(664, "completed"),
            route = {
                Point(MAP.ARATHI, 0.3397, 0.8077, "Captain Steelgut",
                    "Travel to Captain Steelgut."),
            },
        },
        {
            id = "turnin-666-sunken-treasure",
            kind = "turnin",
            priority = 490,
            text = "Turn in Sunken Treasure to Doctor Draxlegauge in Faldir's Cove.",
            dependsOn = { "objective-666-goggles-of-gem-hunting", "objective-666-1-sunken-treasure" },
            complete = QuestState(666, "completed"),
            route = {
                Point(MAP.ARATHI, 0.3385, 0.8048, "Doctor Draxlegauge",
                    "Travel to Doctor Draxlegauge."),
            },
        },
        {
            id = "accept-668-sunken-treasure",
            kind = "accept",
            priority = 500,
            text = "Accept Sunken Treasure from Doctor Draxlegauge in Faldir's Cove.",
            complete = QuestState(668, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.3385, 0.8048, "Doctor Draxlegauge",
                    "Travel to Doctor Draxlegauge."),
            },
        },
        {
            id = "turnin-668-sunken-treasure",
            kind = "turnin",
            priority = 510,
            text = "Turn in Sunken Treasure to Shakes O'Breen in Faldir's Cove.",
            dependsOn = { "accept-668-sunken-treasure" },
            complete = QuestState(668, "completed"),
            route = {
                Point(MAP.ARATHI, 0.3234, 0.8134, "Shakes O'Breen",
                    "Travel to Shakes O'Breen."),
            },
        },
        {
            id = "accept-669-sunken-treasure",
            kind = "accept",
            priority = 520,
            text = "Accept Sunken Treasure from Shakes O'Breen in Faldir's Cove.",
            complete = QuestState(669, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.3234, 0.8134, "Shakes O'Breen",
                    "Travel to Shakes O'Breen."),
            },
        },
        {
            id = "travel-refuge-pointe",
            kind = "travel",
            priority = 530,
            text = "Travel to Refuge Pointe You can die and ressurect near Refuge Pointe but you will have 10 minutes sickness.",
            route = {
                Point(MAP.ARATHI, 0.2209, 0.7973, "Continue toward Refuge Pointe",
                    "Continue toward Refuge Pointe."),
                Point(MAP.ARATHI, 0.2159, 0.7559, "Continue toward Refuge Pointe",
                    "Continue toward Refuge Pointe."),
                Point(MAP.ARATHI, 0.2158, 0.7295, "Continue toward Refuge Pointe",
                    "Continue toward Refuge Pointe."),
                Point(MAP.ARATHI, 0.3108, 0.6563, "Continue toward Refuge Pointe",
                    "Continue toward Refuge Pointe."),
                Point(MAP.ARATHI, 0.4664, 0.4701, "Refuge Pointe",
                    "Travel to Refuge Pointe."),
            },
        },
        {
            id = "turnin-693-wand-over-fist",
            kind = "turnin",
            priority = 540,
            text = "Turn in Wand over Fist to Skuerto in Refuge Pointe.",
            dependsOn = { "objective-693-wand-over-fist" },
            complete = QuestState(693, "completed"),
            route = {
                Point(MAP.ARATHI, 0.4664, 0.4701, "Skuerto",
                    "Travel to Skuerto."),
            },
        },
        {
            id = "objective-658-hints-of-a-new-plague",
            kind = "objective",
            priority = 550,
            text = "Kill Forsaken Courier for Sealed Folder, she patrols on the main road between Go'Shek Farm and Hillsbrad Foothills You can skip the rest of the guide if you can't find her.",
            dependsOn = { "accept-658-hints-of-a-new-plague" },
            complete = QuestState(658, "complete"),
            route = {
                Point(MAP.ARATHI, 0.5100, 0.5940, "Continue toward Hints of a New Plague?",
                    "Continue toward Hints of a New Plague?."),
                Point(MAP.ARATHI, 0.4620, 0.5940, "Continue toward Hints of a New Plague?",
                    "Continue toward Hints of a New Plague?."),
                Point(MAP.ARATHI, 0.4220, 0.5500, "Continue toward Hints of a New Plague?",
                    "Continue toward Hints of a New Plague?."),
                Point(MAP.ARATHI, 0.2740, 0.4900, "Continue toward Hints of a New Plague?",
                    "Continue toward Hints of a New Plague?."),
                Point(MAP.ARATHI, 0.2320, 0.4200, "Continue toward Hints of a New Plague?",
                    "Continue toward Hints of a New Plague?."),
                Point(MAP.ARATHI, 0.2260, 0.3520, "Forsaken Courier",
                    "Travel to Forsaken Courier."),
            },
        },
        {
            id = "turnin-658-hints-of-a-new-plague",
            kind = "turnin",
            priority = 560,
            text = "Turn in Hints of a New Plague? to Quae in Go'Shek Farm.",
            dependsOn = { "objective-658-hints-of-a-new-plague" },
            complete = QuestState(658, "completed"),
            route = {
                Point(MAP.ARATHI, 0.6017, 0.5383, "Quae",
                    "Travel to Quae."),
            },
        },
        {
            id = "accept-657-hints-of-a-new-plague",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { quest = { id = 658, state = "completed" } },
                },
            },
            text = "Accept Hints of a New Plague? from Quae in Go'Shek Farm.",
            complete = QuestState(657, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.6017, 0.5383, "Quae",
                    "Travel to Quae."),
            },
        },
        {
            id = "turnin-657-hints-of-a-new-plague",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { quest = { id = 658, state = "completed" } },
                },
            },
            text = "Turn in Hints of a New Plague? to Kinelory in Go'Shek Farm.",
            dependsOn = { "accept-657-hints-of-a-new-plague" },
            complete = QuestState(657, "completed"),
            route = {
                Point(MAP.ARATHI, 0.6024, 0.5387, "Kinelory",
                    "Travel to Kinelory."),
            },
        },
        {
            id = "accept-660-hints-of-a-new-plague",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { quest = { id = 658, state = "completed" } },
                },
            },
            text = "Accept Hints of a New Plague? from Kinelory in Go'Shek Farm.",
            complete = QuestState(660, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.6024, 0.5387, "Kinelory",
                    "Travel to Kinelory."),
            },
        },
        {
            id = "objective-660-hints-of-a-new-plague",
            kind = "objective",
            priority = 600,
            conditions = {
                all = {
                    { quest = { id = 658, state = "completed" } },
                },
            },
            text = "Protect Kinelory until she returns to Quae in Go'Shek Farm.",
            dependsOn = { "accept-660-hints-of-a-new-plague" },
            complete = QuestState(660, "complete"),
            route = {
                Point(MAP.ARATHI, 0.6024, 0.5387, "Kinelory",
                    "Travel to Kinelory."),
            },
        },
        {
            id = "turnin-660-hints-of-a-new-plague",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { quest = { id = 658, state = "completed" } },
                },
            },
            text = "Turn in Hints of a New Plague? to Quae in Go'Shek Farm.",
            dependsOn = { "objective-660-hints-of-a-new-plague" },
            complete = QuestState(660, "completed"),
            route = {
                Point(MAP.ARATHI, 0.6020, 0.5381, "Quae",
                    "Travel to Quae."),
            },
        },
        {
            id = "accept-661-hints-of-a-new-plague",
            kind = "accept",
            priority = 620,
            conditions = {
                all = {
                    { quest = { id = 658, state = "completed" } },
                },
            },
            text = "Accept Hints of a New Plague? from Quae in Go'Shek Farm.",
            complete = QuestState(661, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.6020, 0.5381, "Quae",
                    "Travel to Quae."),
            },
        },
        {
            id = "travel-southshore",
            kind = "travel",
            priority = 630,
            conditions = {
                all = {
                    { quest = { id = 658, state = "completed" } },
                },
            },
            text = "Travel to Southshore.",
            route = {
                Point(MAP.HILLSBRAD, 0.5034, 0.5903, "Southshore",
                    "Travel to Southshore."),
            },
        },
        {
            id = "turnin-661-hints-of-a-new-plague",
            kind = "turnin",
            priority = 640,
            conditions = {
                all = {
                    { quest = { id = 658, state = "completed" } },
                },
            },
            text = "Turn in Hints of a New Plague? to Phin Odelic in Southshore.",
            dependsOn = { "accept-661-hints-of-a-new-plague" },
            complete = QuestState(661, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5034, 0.5903, "Phin Odelic",
                    "Travel to Phin Odelic."),
            },
        },
    },
})
