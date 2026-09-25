local _, ns = ...

-- Horde Era leveling route for Thousand Needles, levels 37-38.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    THOUSAND_NEEDLES = 1441,
    BARRENS = 1413,
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
    id = "leveling-era-37-38-thousand-needles",
    title = "37-38 Thousand Needles (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 37 } },
        },
    },
    goals = {
        {
            id = "accept-1147-the-swarm-grows",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { quest = { id = 1146, state = "completed" } },
                },
            },
            text = "Accept The Swarm Grows from Moktar Krin in The Shimmering Flats.",
            complete = QuestState(1147, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.6760, 0.6400, "Moktar Krin",
                    "Travel to Moktar Krin."),
            },
        },
        {
            id = "accept-1175-a-bump-in-the-road",
            kind = "accept",
            priority = 30,
            text = "Accept A Bump in the Road from Trackmaster Zherin in Mirage Raceway.",
            complete = QuestState(1175, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8159, 0.7786, "Trackmaster Zherin",
                    "Travel to Trackmaster Zherin."),
            },
        },
        {
            id = "accept-1105-hardened-shells",
            kind = "accept",
            priority = 40,
            text = "Accept Hardened Shells from Wizzle Brassbolts in Mirage Raceway.",
            complete = QuestState(1105, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7814, 0.7707, "Wizzle Brassbolts",
                    "Travel to Wizzle Brassbolts."),
            },
        },
        {
            id = "accept-1176-load-lightening",
            kind = "accept",
            priority = 50,
            text = "Accept Load Lightening from Pozzik in Mirage Raceway.",
            complete = QuestState(1176, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8014, 0.7586, "Pozzik",
                    "Travel to Pozzik."),
            },
        },
        {
            id = "accept-1110-rocket-car-parts",
            kind = "accept",
            priority = 60,
            text = "Accept Rocket Car Parts from Kravel Koalbeard in Mirage Raceway.",
            complete = QuestState(1110, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7782, 0.7718, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "accept-1104-salt-flat-venom",
            kind = "accept",
            priority = 70,
            text = "Accept Salt Flat Venom from Fizzle Brassbolts in Mirage Raceway.",
            complete = QuestState(1104, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7804, 0.7708, "Fizzle Brassbolts",
                    "Travel to Fizzle Brassbolts."),
            },
        },
        {
            id = "objective-1104-salt-flat-venom",
            kind = "objective",
            priority = 80,
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
            priority = 90,
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
            priority = 100,
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
            priority = 110,
            text = "Kill the required Saltstone crocs, Saltstone Gazer are found bottom part of the map and Saltstone Basilisk are found top of the map.",
            dependsOn = { "accept-1175-a-bump-in-the-road" },
            complete = QuestState(1175, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7300, 0.5900, "Saltstone Gazer",
                    "Travel to Saltstone Gazer."),
            },
        },
        {
            id = "objective-1110-rocket-car-parts",
            kind = "objective",
            priority = 130,
            text = "Collect 30 Rocket Car Parts through out The Shimmering Flats.",
            dependsOn = { "accept-1110-rocket-car-parts" },
            complete = QuestState(1110, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7800, 0.8500, "The Shimmering Flats",
                    "Travel to The Shimmering Flats."),
            },
        },
        {
            id = "turnin-1110-rocket-car-parts",
            kind = "turnin",
            priority = 140,
            text = "Turn in Rocket Car Parts to Kravel Koalbeard in Mirage Raceway.",
            dependsOn = { "objective-1110-rocket-car-parts" },
            complete = QuestState(1110, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7785, 0.7722, "Kravel Koalbeard",
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
                Point(MAP.THOUSAND_NEEDLES, 0.7785, 0.7722, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "accept-5762-hemet-nesingwary",
            kind = "accept",
            priority = 160,
            text = "Accept Hemet Nesingwary from Kravel Koalbeard in Mirage Raceway.",
            complete = QuestState(5762, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7785, 0.7722, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "turnin-1104-salt-flat-venom",
            kind = "turnin",
            priority = 170,
            text = "Turn in Salt Flat Venom to Fizzle Brassbolts in Mirage Raceway.",
            dependsOn = { "objective-1104-salt-flat-venom" },
            complete = QuestState(1104, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7801, 0.7704, "Fizzle Brassbolts",
                    "Travel to Fizzle Brassbolts."),
            },
        },
        {
            id = "turnin-1105-hardened-shells",
            kind = "turnin",
            priority = 180,
            text = "Turn in Hardened Shells to Wizzle Brassbolts in Mirage Raceway.",
            dependsOn = { "objective-1105-hardened-shells" },
            complete = QuestState(1105, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7812, 0.7701, "Wizzle Brassbolts",
                    "Travel to Wizzle Brassbolts."),
            },
        },
        {
            id = "turnin-1176-load-lightening",
            kind = "turnin",
            priority = 190,
            text = "Turn in Load Lightening to Pozzik in Mirage Raceway.",
            dependsOn = { "objective-1176-load-lightening" },
            complete = QuestState(1176, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8013, 0.7587, "Pozzik",
                    "Travel to Pozzik."),
            },
        },
        {
            id = "accept-1178-goblin-sponsorship",
            kind = "accept",
            priority = 200,
            text = "Accept Goblin Sponsorship from Pozzik in Mirage Raceway.",
            complete = QuestState(1178, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8013, 0.7587, "Pozzik",
                    "Travel to Pozzik."),
            },
        },
        {
            id = "turnin-1175-a-bump-in-the-road",
            kind = "turnin",
            priority = 210,
            text = "Turn in A Bump in the Road to Trackmaster Zherin in Mirage Raceway.",
            dependsOn = { "objective-1175-a-bump-in-the-road" },
            complete = QuestState(1175, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8159, 0.7793, "Trackmaster Zherin",
                    "Travel to Trackmaster Zherin."),
            },
        },
        {
            id = "accept-1106-martek-the-exiled",
            kind = "accept",
            priority = 220,
            text = "Accept Martek the Exiled from Fizzle Brassbolts in Mirage Raceway.",
            complete = QuestState(1106, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7804, 0.7708, "Fizzle Brassbolts",
                    "Travel to Fizzle Brassbolts."),
            },
        },
        {
            id = "accept-1107-encrusted-tail-fins",
            kind = "accept",
            priority = 230,
            text = "Accept Encrusted Tail Fins from Wizzle Brassbolts in Mirage Raceway.",
            complete = QuestState(1107, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7814, 0.7707, "Wizzle Brassbolts",
                    "Travel to Wizzle Brassbolts."),
            },
        },
        {
            id = "accept-1114-delivery-to-the-gnomes",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { quest = { id = 1114, state = "completed" } },
                },
            },
            text = "Accept Delivery to the Gnomes from Kravel Koalbeard in Mirage Raceway.",
            complete = QuestState(1114, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7780, 0.7720, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "turnin-1114-delivery-to-the-gnomes",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { quest = { id = 1114, state = "completed" } },
                },
            },
            text = "Turn in Delivery to the Gnomes to Fizzle Brassbolts in Mirage Raceway.",
            dependsOn = { "accept-1114-delivery-to-the-gnomes" },
            complete = QuestState(1114, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7800, 0.7710, "Fizzle Brassbolts",
                    "Travel to Fizzle Brassbolts."),
            },
        },
        {
            id = "accept-1186-the-eighteenth-pilot",
            kind = "accept",
            priority = 260,
            conditions = {
                all = {
                    { quest = { id = 1183, state = "completed" } },
                },
            },
            text = "Accept The Eighteenth Pilot from Pozzik in Mirage Raceway.",
            complete = QuestState(1186, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8010, 0.7590, "Pozzik",
                    "Travel to Pozzik."),
            },
        },
        {
            id = "turnin-1186-the-eighteenth-pilot",
            kind = "turnin",
            priority = 270,
            conditions = {
                all = {
                    { quest = { id = 1183, state = "completed" } },
                },
            },
            text = "Turn in The Eighteenth Pilot to Razzeric in Mirage Raceway.",
            dependsOn = { "accept-1186-the-eighteenth-pilot" },
            complete = QuestState(1186, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8030, 0.7610, "Razzeric",
                    "Travel to Razzeric."),
            },
        },
        {
            id = "accept-1187-razzeric-s-tweaking",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { quest = { id = 1183, state = "completed" } },
                },
            },
            text = "Accept Razzeric's Tweaking from Razzeric in Mirage Raceway.",
            complete = QuestState(1187, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8030, 0.7610, "Razzeric",
                    "Travel to Razzeric."),
            },
        },
        {
            id = "accept-1115-the-rumormonger",
            kind = "accept",
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 1114, state = "completed" } },
                },
            },
            text = "Accept The Rumormonger from Kravel Koalbeard in Mirage Raceway.",
            complete = QuestState(1115, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7780, 0.7720, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "note-cracked-silithid-carapace",
            kind = "note",
            priority = 300,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 1148, state = "activeOrCompleted" } } },
                },
            },
            text = "Kill Silithids enemies until you find Cracked Silithid Carapace.",
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.6800, 0.8000, "Silithid Searcher",
                    "Travel to Silithid Searcher."),
            },
        },
        {
            id = "objective-1147-the-swarm-grows",
            kind = "objective",
            priority = 310,
            conditions = {
                all = {
                    { quest = { id = 1146, state = "completed" } },
                },
            },
            text = "Kill 5 Silithid Searcher, 5 Silithid Hive Drone and 5 Silithid Invader.",
            dependsOn = { "accept-1147-the-swarm-grows" },
            complete = QuestState(1147, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.6900, 0.8500, "Silithid Searcher",
                    "Travel to Silithid Searcher."),
            },
        },
        {
            id = "turnin-1147-the-swarm-grows",
            kind = "turnin",
            priority = 330,
            conditions = {
                all = {
                    { quest = { id = 1146, state = "completed" } },
                },
            },
            text = "Turn in The Swarm Grows to Moktar Krin in Mirage Raceway.",
            dependsOn = { "objective-1147-the-swarm-grows" },
            complete = QuestState(1147, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.6760, 0.6400, "Moktar Krin",
                    "Travel to Moktar Krin."),
            },
        },
        {
            id = "accept-1184-parts-of-the-swarm",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { quest = { id = 1148, state = "completed" } },
                },
            },
            text = "Accept Parts of the Swarm from Korran in The Crossroads.",
            complete = QuestState(1184, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5110, 0.2960, "Korran",
                    "Travel to Korran."),
            },
        },
    },
})
