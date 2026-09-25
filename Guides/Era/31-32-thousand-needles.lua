local _, ns = ...

-- Horde Era leveling route for Thousand Needles, levels 31-32.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    THOUSAND_NEEDLES = 1441,
    BARRENS = 1413,
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
    id = "leveling-era-31-32-thousand-needles",
    title = "31-32 Thousand Needles (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 31 } },
        },
    },
    goals = {
        {
            id = "accept-1145-the-swarm-grows",
            kind = "accept",
            priority = 20,
            text = "Accept The Swarm Grows from Korran in The Crossroads.",
            complete = QuestState(1145, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5109, 0.2959, "Korran",
                    "Travel to Korran."),
            },
        },
        {
            id = "accept-1362-the-kolkar-of-desolace",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 1361, state = "completed" } },
                },
            },
            text = "Accept The Kolkar of Desolace from Regthar Deathgate in The Crossroads.",
            complete = QuestState(1362, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4534, 0.2843, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "accept-1175-a-bump-in-the-road",
            kind = "accept",
            priority = 50,
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
            priority = 60,
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
            priority = 70,
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
            priority = 80,
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
            priority = 90,
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
            priority = 100,
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
            priority = 110,
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
            priority = 120,
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
            priority = 130,
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
            id = "objective-1110-rocket-car-parts",
            kind = "objective",
            priority = 150,
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
            id = "turnin-1110-rocket-car-parts",
            kind = "turnin",
            priority = 160,
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
            priority = 170,
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
            priority = 180,
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
            priority = 190,
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
            priority = 200,
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
            priority = 210,
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
            priority = 220,
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
            priority = 230,
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
            priority = 240,
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
            priority = 250,
            text = "Accept Encrusted Tail Fins from Wizzle Brassbolts in Mirage Raceway.",
            complete = QuestState(1107, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7814, 0.7707, "Wizzle Brassbolts",
                    "Travel to Wizzle Brassbolts."),
            },
        },
    },
})
