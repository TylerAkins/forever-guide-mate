local _, ns = ...

-- Alliance Era leveling route for Thousand Needles, levels 33-34.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    THOUSAND_NEEDLES = 1441,
    IRONFORGE = 1455,
    BARRENS = 1413,
    FERALAS = 1444,
    TANARIS = 1446,
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
    id = "leveling-era-33-34-thousand-needles",
    title = "33-34 Thousand Needles (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 33 } },
        },
    },
    goals = {
        {
            id = "travel-1179-city-of-ironforge",
            kind = "travel",
            priority = 10,
            text = "Travel to City of Ironforge.",
            route = {
                Point(MAP.IRONFORGE, 0.6795, 0.1761, "City of Ironforge",
                    "Travel to City of Ironforge."),
            },
        },
        {
            id = "accept-1453-reclaimers-business-in-desolace",
            kind = "accept",
            priority = 20,
            text = "Accept Reclaimers' Business in Desolace from Roetten Stonehammer in Hall of Explorers.",
            complete = QuestState(1453, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.6795, 0.1761, "Roetten Stonehammer",
                    "Travel to Roetten Stonehammer."),
            },
        },
        {
            id = "accept-1179-the-brassbolts-brothers",
            kind = "accept",
            priority = 30,
            text = "Accept The Brassbolts Brothers from Pilot Longbeard in Hall of Arms.",
            complete = QuestState(1179, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7270, 0.9397, "Pilot Longbeard",
                    "Travel to Pilot Longbeard."),
            },
        },
        {
            id = "travel-1100-ratchet",
            kind = "travel",
            priority = 40,
            text = "Travel to Ratchet.",
            route = {
                Point(MAP.BARRENS, 0.6336, 0.3844, "Ratchet",
                    "Travel to Ratchet."),
            },
        },
        {
            id = "travel-the-great-lift",
            kind = "travel",
            priority = 50,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 1100, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to The Great Lift.",
            route = {
                Point(MAP.BARRENS, 0.5577, 0.4414, "Continue toward The Great Lift",
                    "Continue toward The Great Lift."),
                Point(MAP.BARRENS, 0.5112, 0.4916, "Continue toward The Great Lift",
                    "Continue toward The Great Lift."),
                Point(MAP.BARRENS, 0.4810, 0.5407, "Continue toward The Great Lift",
                    "Continue toward The Great Lift."),
                Point(MAP.BARRENS, 0.4743, 0.6259, "Continue toward The Great Lift",
                    "Continue toward The Great Lift."),
                Point(MAP.BARRENS, 0.4613, 0.6756, "Continue toward The Great Lift",
                    "Continue toward The Great Lift."),
                Point(MAP.BARRENS, 0.4597, 0.8435, "Continue toward The Great Lift",
                    "Continue toward The Great Lift."),
                Point(MAP.BARRENS, 0.4414, 0.9119, "Continue toward The Great Lift",
                    "Continue toward The Great Lift."),
                Point(MAP.BARRENS, 0.4414, 0.9119, "The Great Lift",
                    "Travel to The Great Lift."),
            },
        },
        {
            id = "travel-the-great-lift-2",
            kind = "travel",
            priority = 60,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 1100, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to The Great Lift.",
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3071, 0.2439, "The Great Lift",
                    "Travel to The Great Lift."),
            },
        },
        {
            id = "objective-1100-henrig-lonebrow-s-journal",
            kind = "objective",
            priority = 70,
            text = "Collect Henrig Lonebrow's Journal near the corpse on the ground, click on the book in The Great Lift.",
            dependsOn = { "accept-1100-lonebrow-s-journal" },
            complete = QuestState(1100, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3071, 0.2439, "The Great Lift",
                    "Travel to The Great Lift."),
            },
        },
        {
            id = "accept-1100-lonebrow-s-journal",
            kind = "accept",
            priority = 80,
            text = "Use the Henrig Lonebrow's Journal to accept Lonebrow's Journal.",
            complete = QuestState(1100, "activeOrCompleted"),
        },
        {
            id = "travel-thalanaar",
            kind = "travel",
            priority = 90,
            text = "Travel to Thalanaar.",
            route = {
                Point(MAP.FERALAS, 0.8963, 0.4656, "Thalanaar",
                    "Travel to Thalanaar."),
            },
        },
        {
            id = "turnin-1100-lonebrow-s-journal",
            kind = "turnin",
            priority = 100,
            text = "Turn in Lonebrow's Journal to Falfindel Waywarder in Thalanaar.",
            dependsOn = { "objective-1100-henrig-lonebrow-s-journal" },
            complete = QuestState(1100, "completed"),
            route = {
                Point(MAP.FERALAS, 0.8963, 0.4656, "Falfindel Waywarder",
                    "Travel to Falfindel Waywarder."),
            },
        },
        {
            id = "travel-1110-mirage-raceway",
            kind = "travel",
            priority = 110,
            text = "Travel to Mirage Raceway.",
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.1549, 0.2595, "Continue toward Mirage Raceway",
                    "Continue toward Mirage Raceway."),
                Point(MAP.THOUSAND_NEEDLES, 0.2089, 0.2826, "Continue toward Mirage Raceway",
                    "Continue toward Mirage Raceway."),
                Point(MAP.THOUSAND_NEEDLES, 0.2650, 0.3421, "Continue toward Mirage Raceway",
                    "Continue toward Mirage Raceway."),
                Point(MAP.THOUSAND_NEEDLES, 0.2956, 0.3425, "Continue toward Mirage Raceway",
                    "Continue toward Mirage Raceway."),
                Point(MAP.THOUSAND_NEEDLES, 0.3613, 0.4346, "Continue toward Mirage Raceway",
                    "Continue toward Mirage Raceway."),
                Point(MAP.THOUSAND_NEEDLES, 0.4371, 0.5284, "Continue toward Mirage Raceway",
                    "Continue toward Mirage Raceway."),
                Point(MAP.THOUSAND_NEEDLES, 0.4590, 0.5522, "Continue toward Mirage Raceway",
                    "Continue toward Mirage Raceway."),
                Point(MAP.THOUSAND_NEEDLES, 0.5103, 0.5278, "Continue toward Mirage Raceway",
                    "Continue toward Mirage Raceway."),
                Point(MAP.THOUSAND_NEEDLES, 0.6698, 0.6184, "Continue toward Mirage Raceway",
                    "Continue toward Mirage Raceway."),
                Point(MAP.THOUSAND_NEEDLES, 0.7813, 0.7710, "Mirage Raceway",
                    "Travel to Mirage Raceway."),
            },
        },
        {
            id = "accept-1105-hardened-shells",
            kind = "accept",
            priority = 120,
            text = "Accept Hardened Shells from Wizzle Brassbolts in Mirage Raceway.",
            complete = QuestState(1105, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7813, 0.7710, "Wizzle Brassbolts",
                    "Travel to Wizzle Brassbolts."),
            },
        },
        {
            id = "accept-1104-salt-flat-venom",
            kind = "accept",
            priority = 130,
            text = "Accept Salt Flat Venom from Fizzle Brassbolts in Mirage Raceway.",
            complete = QuestState(1104, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7807, 0.7711, "Fizzle Brassbolts",
                    "Travel to Fizzle Brassbolts."),
            },
        },
        {
            id = "accept-1110-rocket-car-parts",
            kind = "accept",
            priority = 140,
            text = "Accept Rocket Car Parts from Kravel Koalbeard in Mirage Raceway.",
            complete = QuestState(1110, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7778, 0.7723, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "accept-1111-wharfmaster-dizzywig",
            kind = "accept",
            priority = 150,
            text = "Accept Wharfmaster Dizzywig from Kravel Koalbeard in Mirage Raceway.",
            complete = QuestState(1111, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7778, 0.7723, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "accept-5762-hemet-nesingwary-jr",
            kind = "accept",
            priority = 160,
            text = "Accept Hemet Nesingwary Jr. from Kravel Koalbeard in Mirage Raceway.",
            complete = QuestState(5762, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7778, 0.7723, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "accept-1176-load-lightening",
            kind = "accept",
            priority = 170,
            text = "Accept Load Lightening from Pozzik in Mirage Raceway.",
            complete = QuestState(1176, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8013, 0.7588, "Pozzik",
                    "Travel to Pozzik."),
            },
        },
        {
            id = "accept-1175-a-bump-in-the-road",
            kind = "accept",
            priority = 180,
            text = "Accept A Bump in the Road from Trackmaster Zherin in Mirage Raceway.",
            complete = QuestState(1175, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8162, 0.7793, "Trackmaster Zherin",
                    "Travel to Trackmaster Zherin."),
            },
        },
        {
            id = "objective-1104-salt-flat-venom",
            kind = "objective",
            priority = 190,
            text = "Kill Scorpid Reaver and Scorpid Terror in The Shimmering Flats for 6 Salty Scorpid Venom.",
            dependsOn = { "accept-1104-salt-flat-venom" },
            complete = QuestState(1104, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7200, 0.7500, "Scorpid Reaver",
                    "Travel to Scorpid Reaver."),
            },
        },
        {
            id = "objective-1105-hardened-shells",
            kind = "objective",
            priority = 200,
            text = "Kill Sparkleshell Tortoise, Sparkleshell Snapper and Sparkleshell Borer in The Shimmering Flats for 9 Hardened Tortoise Shell.",
            dependsOn = { "accept-1105-hardened-shells" },
            complete = QuestState(1105, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8200, 0.5400, "Sparkleshell Tortoise",
                    "Travel to Sparkleshell Tortoise."),
            },
        },
        {
            id = "objective-1176-load-lightening",
            kind = "objective",
            priority = 210,
            text = "Kill Salt Flats Scavenger and Salt Flats Vulture for 10 Hollow Vulture Bone in The Shimmering Flats.",
            dependsOn = { "accept-1176-load-lightening" },
            complete = QuestState(1176, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8700, 0.6600, "Salt Flats Scavenger",
                    "Travel to Salt Flats Scavenger."),
            },
        },
        {
            id = "objective-1175-a-bump-in-the-road",
            kind = "objective",
            priority = 220,
            text = "Kill the required Saltstone crocs, Saltstone Gazer are found bottom part of the map and Saltstone Basilisk are found top of the map.",
            dependsOn = { "accept-1175-a-bump-in-the-road" },
            complete = QuestState(1175, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7600, 0.8700, "Continue toward A Bump in the Road",
                    "Continue toward A Bump in the Road."),
                Point(MAP.THOUSAND_NEEDLES, 0.8640, 0.6010, "Continue toward A Bump in the Road",
                    "Continue toward A Bump in the Road."),
                Point(MAP.THOUSAND_NEEDLES, 0.7300, 0.5900, "Saltstone Gazer",
                    "Travel to Saltstone Gazer."),
            },
        },
        {
            id = "travel-1175-the-shimmering-flats",
            kind = "travel",
            priority = 230,
            text = "Travel to The Shimmering Flats.",
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8800, 0.7500, "The Shimmering Flats",
                    "Travel to The Shimmering Flats."),
            },
        },
        {
            id = "objective-1110-rocket-car-parts",
            kind = "objective",
            priority = 240,
            text = "Collect 30 Rocket Car Parts through out The Shimmering Flats.",
            dependsOn = { "accept-1110-rocket-car-parts" },
            complete = QuestState(1110, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8700, 0.7700, "Continue toward Rocket Car Parts",
                    "Continue toward Rocket Car Parts."),
                Point(MAP.THOUSAND_NEEDLES, 0.8600, 0.6000, "Continue toward Rocket Car Parts",
                    "Continue toward Rocket Car Parts."),
                Point(MAP.THOUSAND_NEEDLES, 0.7750, 0.5400, "Continue toward Rocket Car Parts",
                    "Continue toward Rocket Car Parts."),
                Point(MAP.THOUSAND_NEEDLES, 0.7000, 0.6200, "Continue toward Rocket Car Parts",
                    "Continue toward Rocket Car Parts."),
                Point(MAP.THOUSAND_NEEDLES, 0.7200, 0.7800, "Continue toward Rocket Car Parts",
                    "Continue toward Rocket Car Parts."),
                Point(MAP.THOUSAND_NEEDLES, 0.7800, 0.8500, "The Shimmering Flats",
                    "Travel to The Shimmering Flats."),
            },
        },
        {
            id = "travel-mirage-raceway",
            kind = "travel",
            priority = 250,
            text = "Travel to Mirage Raceway.",
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8162, 0.7793, "Mirage Raceway",
                    "Travel to Mirage Raceway."),
            },
        },
        {
            id = "turnin-1175-a-bump-in-the-road",
            kind = "turnin",
            priority = 260,
            text = "Turn in A Bump in the Road to Trackmaster Zherin in Mirage Raceway.",
            dependsOn = { "objective-1175-a-bump-in-the-road" },
            complete = QuestState(1175, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8162, 0.7793, "Trackmaster Zherin",
                    "Travel to Trackmaster Zherin."),
            },
        },
        {
            id = "turnin-1176-load-lightening",
            kind = "turnin",
            priority = 270,
            text = "Turn in Load Lightening to Pozzik in Mirage Raceway.",
            dependsOn = { "objective-1176-load-lightening" },
            complete = QuestState(1176, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8014, 0.7583, "Pozzik",
                    "Travel to Pozzik."),
            },
        },
        {
            id = "accept-1178-goblin-sponsorship",
            kind = "accept",
            priority = 280,
            text = "Accept Goblin Sponsorship from Pozzik in Mirage Raceway.",
            complete = QuestState(1178, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8014, 0.7583, "Pozzik",
                    "Travel to Pozzik."),
            },
        },
        {
            id = "turnin-1105-hardened-shells",
            kind = "turnin",
            priority = 290,
            text = "Turn in Hardened Shells to Wizzle Brassbolts in Mirage Raceway.",
            dependsOn = { "objective-1105-hardened-shells" },
            complete = QuestState(1105, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7814, 0.7713, "Wizzle Brassbolts",
                    "Travel to Wizzle Brassbolts."),
            },
        },
        {
            id = "turnin-1104-salt-flat-venom",
            kind = "turnin",
            priority = 300,
            text = "Turn in Salt Flat Venom to Fizzle Brassbolts in Mirage Raceway.",
            dependsOn = { "objective-1104-salt-flat-venom" },
            complete = QuestState(1104, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7806, 0.7709, "Fizzle Brassbolts",
                    "Travel to Fizzle Brassbolts."),
            },
        },
        {
            id = "accept-1107-encrusted-tail-fins",
            kind = "accept",
            priority = 310,
            text = "Accept Encrusted Tail Fins from Wizzle Brassbolts in Mirage Raceway.",
            complete = QuestState(1107, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7814, 0.7712, "Wizzle Brassbolts",
                    "Travel to Wizzle Brassbolts."),
            },
        },
        {
            id = "turnin-1110-rocket-car-parts",
            kind = "turnin",
            priority = 320,
            text = "Turn in Rocket Car Parts to Kravel Koalbeard in Mirage Raceway.",
            dependsOn = { "objective-1110-rocket-car-parts" },
            complete = QuestState(1110, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7780, 0.7723, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "accept-1106-martek-the-exiled",
            kind = "accept",
            priority = 330,
            text = "Accept Martek the Exiled from Fizzle Brassbolts in Mirage Raceway.",
            complete = QuestState(1106, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7807, 0.7711, "Fizzle Brassbolts",
                    "Travel to Fizzle Brassbolts."),
            },
        },
        {
            id = "travel-gadgetzan",
            kind = "travel",
            priority = 340,
            text = "Travel to Gadgetzan.",
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7433, 0.9367, "Continue toward Gadgetzan",
                    "Continue toward Gadgetzan."),
                Point(MAP.THOUSAND_NEEDLES, 0.7550, 0.9726, "Gadgetzan",
                    "Travel to Gadgetzan."),
            },
        },
        {
            id = "travel-gadgetzan-2",
            kind = "travel",
            priority = 350,
            text = "Travel to Gadgetzan.",
            route = {
                Point(MAP.TANARIS, 0.5100, 0.2935, "Gadgetzan",
                    "Travel to Gadgetzan."),
            },
        },
    },
})
