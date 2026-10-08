local _, ns = ...

-- Forever Casual spine: Thousand Needles (33-34)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves:
-- 98069 Stolen Freewind Supplies and 98070 Stop the Screeching from Jandia at Freewind Post.
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
    THE_BARRENS = 1413,
    STRANGLETHORN_VALE = 1434,
    THOUSAND_NEEDLES = 1441,
    ORGRIMMAR = 1454,
}

ns:RegisterGuide({
    id = "leveling-era-horde-thousand-needles-part-2",
    title = "Thousand Needles",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 33 } },
        },
    },
    goals = {
        {
            id = "turnin-1531-call-of-air",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Air.",
            complete = QuestState(1531, "completed"),
            route = {
                Point(1441, 0.5467, 0.4477, "Call of Air",
                    "Travel to Call of Air."),
            },
        },
        {
            id = "turnin-1146-the-swarm-grows",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Swarm Grows.",
            complete = QuestState(1146, "completed"),
            route = {
                Point(1441, 0.6758, 0.6394, "The Swarm Grows",
                    "Travel to The Swarm Grows."),
            },
        },
        {
            id = "accept-1147-the-swarm-grows",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept The Swarm Grows.",
            complete = QuestState(1147, "activeOrCompleted"),
            route = {
                Point(1441, 0.6758, 0.6394, "The Swarm Grows",
                    "Travel to The Swarm Grows."),
            },
        },
        {
            id = "turnin-1112-parts-for-kravel",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Turn in Parts for Kravel.",
            complete = QuestState(1112, "completed"),
            route = {
                Point(1441, 0.7779, 0.7727, "Parts for Kravel",
                    "Travel to Parts for Kravel."),
            },
        },
        {
            id = "accept-1110-rocket-car-parts",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Rocket Car Parts.",
            complete = QuestState(1110, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Rocket Car Parts",
                    "Travel to Rocket Car Parts."),
            },
        },
        {
            id = "accept-1114-delivery-to-the-gnomes",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Accept Delivery to the Gnomes.",
            complete = QuestState(1114, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Delivery to the Gnomes",
                    "Travel to Delivery to the Gnomes."),
            },
        },
        {
            id = "turnin-1114-delivery-to-the-gnomes",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Turn in Delivery to the Gnomes.",
            complete = QuestState(1114, "completed"),
            dependsOn = { "accept-1114-delivery-to-the-gnomes" },
            route = {
                Point(1441, 0.7806, 0.7713, "Delivery to the Gnomes",
                    "Travel to Delivery to the Gnomes."),
            },
        },
        {
            id = "accept-1104-salt-flat-venom",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Salt Flat Venom.",
            complete = QuestState(1104, "activeOrCompleted"),
            route = {
                Point(1441, 0.7806, 0.7713, "Salt Flat Venom",
                    "Travel to Salt Flat Venom."),
            },
        },
        {
            id = "accept-1115-the-rumormonger",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept The Rumormonger.",
            complete = QuestState(1115, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "The Rumormonger",
                    "Travel to The Rumormonger."),
            },
        },
        {
            id = "accept-1105-hardened-shells",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Hardened Shells.",
            complete = QuestState(1105, "activeOrCompleted"),
            route = {
                Point(1441, 0.7814, 0.7712, "Hardened Shells",
                    "Travel to Hardened Shells."),
            },
        },
        {
            id = "accept-1176-load-lightening",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Load Lightening.",
            complete = QuestState(1176, "activeOrCompleted"),
            route = {
                Point(1441, 0.8018, 0.7589, "Load Lightening",
                    "Travel to Load Lightening."),
            },
        },
        {
            id = "accept-1175-a-bump-in-the-road",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept A Bump in the Road.",
            complete = QuestState(1175, "activeOrCompleted"),
            route = {
                Point(1441, 0.8164, 0.7795, "A Bump in the Road",
                    "Travel to A Bump in the Road."),
            },
        },
        {
            id = "objective-1147-3-silithid-invader",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Kill 5 Silithid Invader.",
            complete = QuestObjective(1147, 3, "Silithid Invader"),
            dependsOn = { "accept-1147-the-swarm-grows" },
            route = {
                Point(1441, 0.6632, 0.8618, "Silithid Invader",
                    "Travel to Silithid Invader."),
            },
        },
        {
            id = "accept-1148-parts-of-the-swarm",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Parts of the Swarm.",
            complete = QuestState(1148, "activeOrCompleted"),
            route = {
                Point(1441, 0.7020, 0.8260, "Parts of the Swarm",
                    "Travel to Parts of the Swarm."),
            },
        },
        {
            id = "objective-1175-3-saltstone-gazer",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Saltstone Gazer.",
            complete = QuestObjective(1175, 3, "Saltstone Gazer"),
            dependsOn = { "accept-1175-a-bump-in-the-road" },
            route = {
                Point(1441, 0.6632, 0.8618, "Saltstone Gazer",
                    "Travel to Saltstone Gazer."),
            },
        },
        {
            id = "objective-1176-1-salt-flats-scavenger",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Kill Salt Flats Scavenger.",
            complete = QuestObjective(1176, 1, "Salt Flats Scavenger"),
            dependsOn = { "accept-1176-load-lightening" },
            route = {
                Point(1441, 0.8800, 0.6600, "Salt Flats Scavenger",
                    "Travel to Salt Flats Scavenger."),
            },
        },
        {
            id = "turnin-1147-the-swarm-grows",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Swarm Grows.",
            complete = QuestState(1147, "completed"),
            dependsOn = { "accept-1147-the-swarm-grows", "objective-1147-3-silithid-invader" },
            route = {
                Point(1441, 0.6758, 0.6394, "The Swarm Grows",
                    "Travel to The Swarm Grows."),
            },
        },
        {
            id = "turnin-1110-rocket-car-parts",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rocket Car Parts.",
            complete = QuestState(1110, "completed"),
            dependsOn = { "accept-1110-rocket-car-parts" },
            route = {
                Point(1441, 0.7779, 0.7727, "Rocket Car Parts",
                    "Travel to Rocket Car Parts."),
            },
        },
        {
            id = "accept-5762-hemet-nesingwary-jr",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Hemet Nesingwary Jr.",
            complete = QuestState(5762, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Hemet Nesingwary Jr",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "turnin-1104-salt-flat-venom",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Salt Flat Venom.",
            complete = QuestState(1104, "completed"),
            dependsOn = { "accept-1104-salt-flat-venom" },
            route = {
                Point(1441, 0.7806, 0.7713, "Salt Flat Venom",
                    "Travel to Salt Flat Venom."),
            },
        },
        {
            id = "turnin-1105-hardened-shells",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hardened Shells.",
            complete = QuestState(1105, "completed"),
            dependsOn = { "accept-1105-hardened-shells" },
            route = {
                Point(1441, 0.7814, 0.7712, "Hardened Shells",
                    "Travel to Hardened Shells."),
            },
        },
        {
            id = "accept-1106-martek-the-exiled",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Martek the Exiled.",
            complete = QuestState(1106, "activeOrCompleted"),
            route = {
                Point(1441, 0.7806, 0.7712, "Martek the Exiled",
                    "Travel to Martek the Exiled."),
            },
        },
        {
            id = "turnin-1176-load-lightening",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Load Lightening.",
            complete = QuestState(1176, "completed"),
            dependsOn = { "accept-1176-load-lightening", "objective-1176-1-salt-flats-scavenger" },
            route = {
                Point(1441, 0.8018, 0.7588, "Load Lightening",
                    "Travel to Load Lightening."),
            },
        },
        {
            id = "accept-1178-goblin-sponsorship",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Goblin Sponsorship.",
            complete = QuestState(1178, "activeOrCompleted"),
            route = {
                Point(1441, 0.8018, 0.7588, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "turnin-1175-a-bump-in-the-road",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Bump in the Road.",
            complete = QuestState(1175, "completed"),
            dependsOn = { "accept-1175-a-bump-in-the-road", "objective-1175-3-saltstone-gazer" },
            route = {
                Point(1441, 0.8163, 0.7795, "A Bump in the Road",
                    "Travel to A Bump in the Road."),
            },
        },
        {
            id = "accept-5361-family-tree",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Family Tree.",
            complete = QuestState(5361, "activeOrCompleted"),
            route = {
                Point(1441, 0.4565, 0.5080, "Family Tree",
                    "Travel to Family Tree."),
            },
        },
        {
            id = "woven-accept-98069-stolen-freewind-supplies",
            kind = "accept",
            priority = 261,
            conditions = { all = {
                { level = { min = 31 } },
                { faction = "Horde" },
            } },
            text = "Accept Stolen Freewind Supplies from Jandia at Freewind Post.",
            complete = QuestState(98069, "activeOrCompleted"),
            route = {
                Point(1441, 0.4600, 0.5140, "Jandia",
                    "Travel to Jandia."),
            },
        },
        {
            id = "woven-accept-98070-stop-the-screeching",
            kind = "accept",
            priority = 262,
            conditions = { all = {
                { level = { min = 31 } },
                { faction = "Horde" },
            } },
            text = "Accept Stop the Screeching from Jandia at Freewind Post.",
            complete = QuestState(98070, "activeOrCompleted"),
            route = {
                Point(1441, 0.4600, 0.5140, "Jandia",
                    "Travel to Jandia."),
            },
        },
        {
            id = "woven-objective-98069-stolen-freewind-supplies",
            kind = "objective",
            priority = 263,
            conditions = { all = {
                { level = { min = 31 } },
                { faction = "Horde" },
            } },
            text = "Stolen Freewind Supplies: recover the Stolen Freewind Supplies.",
            complete = QuestObjective(98069, 1, "Stolen Freewind Supplies"),
            dependsOn = { "woven-accept-98069-stolen-freewind-supplies" },
            useClientPin = true,
            route = {
                Point(1441, 0.4600, 0.5140, "Jandia",
                    "Travel to Jandia."),
            },
        },
        {
            id = "woven-objective-98070-stop-the-screeching",
            kind = "objective",
            priority = 264,
            conditions = { all = {
                { level = { min = 31 } },
                { faction = "Horde" },
            } },
            text = "Stop the Screeching: slay Screeching Harpies, Roguefeathers, and Windcallers.",
            complete = QuestState(98070, "complete"),
            dependsOn = { "woven-accept-98070-stop-the-screeching" },
            useClientPin = true,
            route = {
                Point(1441, 0.4600, 0.5140, "Jandia",
                    "Travel to Jandia."),
            },
        },
        {
            id = "woven-turnin-98069-stolen-freewind-supplies",
            kind = "turnin",
            priority = 265,
            conditions = { all = {
                { level = { min = 31 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stolen Freewind Supplies to Jandia at Freewind Post.",
            complete = QuestState(98069, "completed"),
            dependsOn = { "woven-accept-98069-stolen-freewind-supplies", "woven-objective-98069-stolen-freewind-supplies" },
            route = {
                Point(1441, 0.4600, 0.5140, "Jandia",
                    "Travel to Jandia."),
            },
        },
        {
            id = "woven-turnin-98070-stop-the-screeching",
            kind = "turnin",
            priority = 266,
            conditions = { all = {
                { level = { min = 31 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stop the Screeching to Jandia at Freewind Post.",
            complete = QuestState(98070, "completed"),
            dependsOn = { "woven-accept-98070-stop-the-screeching", "woven-objective-98070-stop-the-screeching" },
            route = {
                Point(1441, 0.4600, 0.5140, "Jandia",
                    "Travel to Jandia."),
            },
        },
        {
            id = "turnin-1148-parts-of-the-swarm",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Parts of the Swarm.",
            complete = QuestState(1148, "completed"),
            dependsOn = { "accept-1148-parts-of-the-swarm" },
            route = {
                Point(1413, 0.5107, 0.2963, "Parts of the Swarm",
                    "Travel to Parts of the Swarm."),
            },
        },
        {
            id = "accept-1184-parts-of-the-swarm",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Parts of the Swarm.",
            complete = QuestState(1184, "activeOrCompleted"),
            route = {
                Point(1413, 0.5107, 0.2963, "Parts of the Swarm",
                    "Travel to Parts of the Swarm."),
            },
        },
        {
            id = "turnin-1178-goblin-sponsorship",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Goblin Sponsorship.",
            complete = QuestState(1178, "completed"),
            dependsOn = { "accept-1178-goblin-sponsorship" },
            route = {
                Point(1413, 0.6268, 0.3623, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-1180-goblin-sponsorship",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Goblin Sponsorship.",
            complete = QuestState(1180, "activeOrCompleted"),
            route = {
                Point(1413, 0.6268, 0.3623, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "turnin-96-call-of-water",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Water.",
            complete = QuestState(96, "completed"),
            route = {
                Point(1413, 0.6583, 0.4378, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "turnin-1180-goblin-sponsorship",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Goblin Sponsorship.",
            complete = QuestState(1180, "completed"),
            dependsOn = { "accept-1180-goblin-sponsorship" },
            route = {
                Point(1434, 0.2634, 0.7356, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-1181-goblin-sponsorship",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Goblin Sponsorship.",
            complete = QuestState(1181, "activeOrCompleted"),
            route = {
                Point(1434, 0.2634, 0.7356, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-575-supply-and-demand",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Supply and Demand.",
            complete = QuestState(575, "activeOrCompleted"),
            route = {
                Point(1434, 0.2829, 0.7759, "Supply and Demand",
                    "Travel to Supply and Demand."),
            },
        },
        {
            id = "accept-605-singing-blue-shards",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Singing Blue Shards.",
            complete = QuestState(605, "activeOrCompleted"),
            route = {
                Point(1434, 0.2712, 0.7721, "Singing Blue Shards",
                    "Travel to Singing Blue Shards."),
            },
        },
        {
            id = "turnin-1115-the-rumormonger",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Rumormonger.",
            complete = QuestState(1115, "completed"),
            dependsOn = { "accept-1115-the-rumormonger" },
            route = {
                Point(1434, 0.2694, 0.7721, "The Rumormonger",
                    "Travel to The Rumormonger."),
            },
        },
        {
            id = "accept-201-investigate-the-camp",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Investigate the Camp.",
            complete = QuestState(201, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Investigate the Camp",
                    "Travel to Investigate the Camp."),
            },
        },
        {
            id = "accept-189-bloodscalp-ears",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Bloodscalp Ears.",
            complete = QuestState(189, "activeOrCompleted"),
            route = {
                Point(1434, 0.2700, 0.7712, "Bloodscalp Ears",
                    "Travel to Bloodscalp Ears."),
            },
        },
        {
            id = "accept-213-hostile-takeover",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Hostile Takeover.",
            complete = QuestState(213, "activeOrCompleted"),
            route = {
                Point(1434, 0.2700, 0.7712, "Hostile Takeover",
                    "Travel to Hostile Takeover."),
            },
        },
        {
            id = "turnin-1181-goblin-sponsorship",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Goblin Sponsorship.",
            complete = QuestState(1181, "completed"),
            dependsOn = { "accept-1181-goblin-sponsorship" },
            route = {
                Point(1434, 0.2723, 0.7687, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-1182-goblin-sponsorship",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Goblin Sponsorship.",
            complete = QuestState(1182, "activeOrCompleted"),
            route = {
                Point(1434, 0.2723, 0.7687, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "turnin-1184-parts-of-the-swarm",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Parts of the Swarm.",
            complete = QuestState(1184, "completed"),
            dependsOn = { "accept-1184-parts-of-the-swarm" },
            route = {
                Point(1454, 0.7523, 0.3424, "Parts of the Swarm",
                    "Travel to Parts of the Swarm."),
            },
        },
        {
            id = "objective-6161-1-elixir-of-water-breathing",
            kind = "objective",
            priority = 430,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
                { any = { { class = 9 }, { class = 11 } } },
            } },
            text = "Collect 2 Elixir of Water Breathing.",
            complete = QuestObjective(6161, 1, "Elixir of Water Breathing"),
            route = {
                Point(1454, 0.5569, 0.6286, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "accept-2841-rig-wars",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Rig Wars.",
            complete = QuestState(2841, "activeOrCompleted"),
            route = {
                Point(1454, 0.7599, 0.2541, "Rig Wars",
                    "Travel to Rig Wars."),
            },
        },
        {
            id = "accept-2842-chief-engineer-scooty",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Chief Engineer Scooty.",
            complete = QuestState(2842, "activeOrCompleted"),
            route = {
                Point(1454, 0.7549, 0.2536, "Chief Engineer Scooty",
                    "Travel to Chief Engineer Scooty."),
            },
        },
        {
            id = "turnin-2842-chief-engineer-scooty",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Chief Engineer Scooty.",
            complete = QuestState(2842, "completed"),
            dependsOn = { "accept-2842-chief-engineer-scooty" },
            route = {
                Point(1434, 0.2760, 0.7748, "Chief Engineer Scooty",
                    "Travel to Chief Engineer Scooty."),
            },
        },
        {
            id = "accept-2843-gnomer-gooooone",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Gnomer-gooooone!.",
            complete = QuestState(2843, "activeOrCompleted"),
            route = {
                Point(1434, 0.2760, 0.7748, "Gnomer-gooooone!",
                    "Travel to Gnomer-gooooone!."),
            },
        },
        {
            id = "turnin-2843-gnomer-gooooone",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gnomer-gooooone!.",
            complete = QuestState(2843, "completed"),
            dependsOn = { "accept-2843-gnomer-gooooone" },
            route = {
                Point(1434, 0.2760, 0.7748, "Gnomer-gooooone!",
                    "Travel to Gnomer-gooooone!."),
            },
        },
        {
            id = "accept-2904-a-fine-mess",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Inside Gnomeregan, accept A Fine Mess from Kernobee.",
            complete = QuestState(2904, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "objective-2841-2-mekgineer-thermaplugg",
            kind = "objective",
            priority = 500,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Kill Mekgineer Thermaplugg.",
            complete = QuestObjective(2841, 2, "Mekgineer Thermaplugg"),
            dependsOn = { "accept-2841-rig-wars" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-2841-1-thermaplugg-s-safe",
            kind = "objective",
            priority = 510,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Click Thermaplugg's Safe.",
            complete = QuestObjective(2841, 1, "Thermaplugg's Safe"),
            dependsOn = { "accept-2841-rig-wars" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-2945-grime-encrusted-ring",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Use the Grime-Encrusted Ring to accept Grime-Encrusted Ring.",
            complete = QuestState(2945, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-2945-grime-encrusted-ring",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Grime-Encrusted Ring.",
            complete = QuestState(2945, "completed"),
            dependsOn = { "accept-2945-grime-encrusted-ring" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-2949-return-of-the-ring",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Return of the Ring from the cleaned ring after the Sparklematic 5200 in Gnomeregan (turn in to Nogg in Orgrimmar).",
            complete = QuestState(2949, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "accept-2952-the-sparklematic-5200",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept The Sparklematic 5200! from the Sparklematic 5200 machine inside Gnomeregan.",
            complete = QuestState(2952, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-2904-a-fine-mess",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Fine Mess.",
            complete = QuestState(2904, "completed"),
            dependsOn = { "accept-2904-a-fine-mess" },
            route = {
                Point(1434, 0.2760, 0.7748, "A Fine Mess",
                    "Travel to A Fine Mess."),
            },
        },
        {
            id = "turnin-2841-rig-wars",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rig Wars.",
            complete = QuestState(2841, "completed"),
            dependsOn = { "accept-2841-rig-wars", "objective-2841-2-mekgineer-thermaplugg", "objective-2841-1-thermaplugg-s-safe" },
            route = {
                Point(1454, 0.7599, 0.2541, "Rig Wars",
                    "Travel to Rig Wars."),
            },
        },
        {
            id = "turnin-2949-return-of-the-ring",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Return of the Ring.",
            complete = QuestState(2949, "completed"),
            dependsOn = { "accept-2949-return-of-the-ring" },
            route = {
                Point(1454, 0.7599, 0.2541, "Return of the Ring",
                    "Travel to Return of the Ring."),
            },
        },
    },
})
