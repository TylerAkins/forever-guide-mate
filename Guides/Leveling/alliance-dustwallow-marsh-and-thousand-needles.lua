local _, ns = ...

-- Forever Casual spine: Dustwallow Marsh & Thousand Needles (33-34)
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
    THE_BARRENS = 1413,
    THOUSAND_NEEDLES = 1441,
    FERALAS = 1444,
    DUSTWALLOW_MARSH = 1445,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
    title = "Dustwallow Marsh & Thousand Needles",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 33 } },
        },
    },
    goals = {
        {
            id = "accept-1135-highperch-venom",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Highperch Venom.",
            complete = QuestState(1135, "activeOrCompleted"),
            route = {
                Point(1445, 0.6646, 0.4515, "Highperch Venom",
                    "Travel to Highperch Venom."),
            },
        },
        {
            id = "accept-1282-they-call-him-smiling-jim",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept They Call Him Smiling Jim.",
            complete = QuestState(1282, "activeOrCompleted"),
            route = {
                Point(1445, 0.6616, 0.4607, "They Call Him Smiling Jim",
                    "Travel to They Call Him Smiling Jim."),
            },
        },
        {
            id = "turnin-1302-james-hyal",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in James Hyal.",
            complete = QuestState(1302, "completed"),
            route = {
                Point(1445, 0.6788, 0.4824, "James Hyal",
                    "Travel to James Hyal."),
            },
        },
        {
            id = "turnin-1264-the-missing-diplomat",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1264, "completed"),
            route = {
                Point(1445, 0.6802, 0.4871, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1265-the-missing-diplomat",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1265, "activeOrCompleted"),
            route = {
                Point(1445, 0.6802, 0.4871, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "turnin-1282-they-call-him-smiling-jim",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in They Call Him Smiling Jim.",
            complete = QuestState(1282, "completed"),
            dependsOn = { "accept-1282-they-call-him-smiling-jim" },
            route = {
                Point(1445, 0.6822, 0.4862, "They Call Him Smiling Jim",
                    "Travel to They Call Him Smiling Jim."),
            },
        },
        {
            id = "turnin-1265-the-missing-diplomat",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1265, "completed"),
            dependsOn = { "accept-1265-the-missing-diplomat" },
            route = {
                Point(1445, 0.5966, 0.4125, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1266-the-missing-diplomat",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1266, "activeOrCompleted"),
            route = {
                Point(1445, 0.5966, 0.4125, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "turnin-1265-the-missing-diplomat-2",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1265, "completed"),
            dependsOn = { "accept-1265-the-missing-diplomat" },
            route = {
                Point(1445, 0.6642, 0.4926, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1218-soothing-spices",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Soothing Spices.",
            complete = QuestState(1218, "activeOrCompleted"),
            route = {
                Point(1445, 0.5544, 0.2627, "Soothing Spices",
                    "Travel to Soothing Spices."),
            },
        },
        {
            id = "turnin-1218-soothing-spices",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Soothing Spices.",
            complete = QuestState(1218, "completed"),
            dependsOn = { "accept-1218-soothing-spices" },
            route = {
                Point(1445, 0.5544, 0.2627, "Soothing Spices",
                    "Travel to Soothing Spices."),
            },
        },
        {
            id = "accept-1219-the-orc-report",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Orc Report.",
            complete = QuestState(1219, "activeOrCompleted"),
            route = {
                Point(1445, 0.5544, 0.2593, "The Orc Report",
                    "Travel to The Orc Report."),
            },
        },
        {
            id = "turnin-1266-the-missing-diplomat",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1266, "completed"),
            dependsOn = { "accept-1266-the-missing-diplomat" },
            route = {
                Point(1445, 0.4522, 0.2464, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1324-the-missing-diplomat",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1324, "activeOrCompleted"),
            route = {
                Point(1445, 0.4522, 0.2464, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "objective-1324-1-private-hendel",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Private Hendel.",
            complete = QuestObjective(1324, 1, "Private Hendel"),
            dependsOn = { "accept-1324-the-missing-diplomat" },
            route = {
                Point(1445, 0.4522, 0.2464, "Private Hendel",
                    "Travel to Private Hendel."),
            },
        },
        {
            id = "turnin-1324-the-missing-diplomat",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1324, "completed"),
            dependsOn = { "accept-1324-the-missing-diplomat", "objective-1324-1-private-hendel" },
            route = {
                Point(1445, 0.4519, 0.2430, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1267-the-missing-diplomat",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1267, "activeOrCompleted"),
            route = {
                Point(1445, 0.4522, 0.2424, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1177-hungry",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Hungry!.",
            complete = QuestState(1177, "activeOrCompleted"),
            route = {
                Point(1445, 0.3515, 0.3825, "Hungry!",
                    "Travel to Hungry!."),
            },
        },
        {
            id = "accept-1284-suspicious-hoofprints",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Suspicious Hoofprints.",
            complete = QuestState(1284, "activeOrCompleted"),
            route = {
                Point(1445, 0.2970, 0.4763, "Suspicious Hoofprints",
                    "Travel to Suspicious Hoofprints."),
            },
        },
        {
            id = "accept-1252-lieutenant-paval-reethe",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Lieutenant Paval Reethe.",
            complete = QuestState(1252, "activeOrCompleted"),
            route = {
                Point(1445, 0.2983, 0.4824, "Lieutenant Paval Reethe",
                    "Travel to Lieutenant Paval Reethe."),
            },
        },
        {
            id = "accept-1253-the-black-shield",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Black Shield.",
            complete = QuestState(1253, "activeOrCompleted"),
            route = {
                Point(1445, 0.2963, 0.4859, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "accept-1100-lonebrow-s-journal",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Use the Lonebrow's Journal to accept Lonebrow's Journal.",
            complete = QuestState(1100, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-1100-lonebrow-s-journal",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Lonebrow's Journal.",
            complete = QuestState(1100, "completed"),
            dependsOn = { "accept-1100-lonebrow-s-journal" },
            route = {
                Point(1444, 0.8964, 0.4656, "Lonebrow's Journal",
                    "Travel to Lonebrow's Journal."),
            },
        },
        {
            id = "turnin-1059-reclaiming-the-charred-vale",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Reclaiming the Charred Vale.",
            complete = QuestState(1059, "completed"),
            route = {
                Point(1444, 0.8964, 0.4656, "Reclaiming the Charred Vale",
                    "Travel to Reclaiming the Charred Vale."),
            },
        },
        {
            id = "accept-1110-rocket-car-parts",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Rocket Car Parts.",
            complete = QuestState(1110, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Rocket Car Parts",
                    "Travel to Rocket Car Parts."),
            },
        },
        {
            id = "accept-1104-salt-flat-venom",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Salt Flat Venom.",
            complete = QuestState(1104, "activeOrCompleted"),
            route = {
                Point(1441, 0.7806, 0.7713, "Salt Flat Venom",
                    "Travel to Salt Flat Venom."),
            },
        },
        {
            id = "turnin-1179-the-brassbolts-brothers",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Brassbolts Brothers.",
            complete = QuestState(1179, "completed"),
            route = {
                Point(1441, 0.7814, 0.7712, "The Brassbolts Brothers",
                    "Travel to The Brassbolts Brothers."),
            },
        },
        {
            id = "accept-1105-hardened-shells",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
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
            priority = 300,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
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
            priority = 310,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Bump in the Road.",
            complete = QuestState(1175, "activeOrCompleted"),
            route = {
                Point(1441, 0.8164, 0.7795, "A Bump in the Road",
                    "Travel to A Bump in the Road."),
            },
        },
        {
            id = "objective-1175-3-saltstone-gazer",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Saltstone Gazer.",
            complete = QuestObjective(1175, 3, "Saltstone Gazer"),
            dependsOn = { "accept-1175-a-bump-in-the-road" },
            route = {
                Point(1441, 0.7740, 0.8800, "Saltstone Gazer",
                    "Travel to Saltstone Gazer."),
            },
        },
        {
            id = "objective-1176-1-salt-flats-scavenger",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
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
            id = "turnin-1110-rocket-car-parts",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
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
            id = "accept-1111-wharfmaster-dizzywig",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Wharfmaster Dizzywig.",
            complete = QuestState(1111, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
        {
            id = "accept-5762-hemet-nesingwary-jr",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
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
            priority = 370,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
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
            priority = 380,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
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
            id = "turnin-1176-load-lightening",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
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
            priority = 400,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
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
            priority = 410,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
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
            id = "turnin-1135-highperch-venom",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Highperch Venom.",
            complete = QuestState(1135, "completed"),
            dependsOn = { "accept-1135-highperch-venom" },
            route = {
                Point(1445, 0.6646, 0.4515, "Highperch Venom",
                    "Travel to Highperch Venom."),
            },
        },
        {
            id = "turnin-1219-the-orc-report",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Orc Report.",
            complete = QuestState(1219, "completed"),
            dependsOn = { "accept-1219-the-orc-report" },
            route = {
                Point(1445, 0.6507, 0.4713, "The Orc Report",
                    "Travel to The Orc Report."),
            },
        },
        {
            id = "accept-1220-captain-vimes",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Captain Vimes.",
            complete = QuestState(1220, "activeOrCompleted"),
            route = {
                Point(1445, 0.6507, 0.4713, "Captain Vimes",
                    "Travel to Captain Vimes."),
            },
        },
        {
            id = "turnin-1220-captain-vimes",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Captain Vimes.",
            complete = QuestState(1220, "completed"),
            dependsOn = { "accept-1220-captain-vimes" },
            route = {
                Point(1445, 0.6821, 0.4862, "Captain Vimes",
                    "Travel to Captain Vimes."),
            },
        },
        {
            id = "turnin-1252-lieutenant-paval-reethe",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Lieutenant Paval Reethe.",
            complete = QuestState(1252, "completed"),
            dependsOn = { "accept-1252-lieutenant-paval-reethe" },
            route = {
                Point(1445, 0.6821, 0.4862, "Lieutenant Paval Reethe",
                    "Travel to Lieutenant Paval Reethe."),
            },
        },
        {
            id = "accept-1259-lieutenant-paval-reethe",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Lieutenant Paval Reethe.",
            complete = QuestState(1259, "activeOrCompleted"),
            route = {
                Point(1445, 0.6821, 0.4862, "Lieutenant Paval Reethe",
                    "Travel to Lieutenant Paval Reethe."),
            },
        },
        {
            id = "turnin-1253-the-black-shield",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Black Shield.",
            complete = QuestState(1253, "completed"),
            dependsOn = { "accept-1253-the-black-shield" },
            route = {
                Point(1445, 0.6821, 0.4862, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "accept-1319-the-black-shield",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Black Shield.",
            complete = QuestState(1319, "activeOrCompleted"),
            route = {
                Point(1445, 0.6821, 0.4862, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "turnin-1284-suspicious-hoofprints",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Suspicious Hoofprints.",
            complete = QuestState(1284, "completed"),
            dependsOn = { "accept-1284-suspicious-hoofprints" },
            route = {
                Point(1445, 0.6821, 0.4862, "Suspicious Hoofprints",
                    "Travel to Suspicious Hoofprints."),
            },
        },
        {
            id = "turnin-1259-lieutenant-paval-reethe",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Lieutenant Paval Reethe.",
            complete = QuestState(1259, "completed"),
            dependsOn = { "accept-1259-lieutenant-paval-reethe" },
            route = {
                Point(1445, 0.6805, 0.4811, "Lieutenant Paval Reethe",
                    "Travel to Lieutenant Paval Reethe."),
            },
        },
        {
            id = "accept-1285-daelin-s-men",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Daelin's Men.",
            complete = QuestState(1285, "activeOrCompleted"),
            route = {
                Point(1445, 0.6805, 0.4811, "Daelin's Men",
                    "Travel to Daelin's Men."),
            },
        },
        {
            id = "turnin-1285-daelin-s-men",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Daelin's Men.",
            complete = QuestState(1285, "completed"),
            dependsOn = { "accept-1285-daelin-s-men" },
            route = {
                Point(1445, 0.6821, 0.4862, "Daelin's Men",
                    "Travel to Daelin's Men."),
            },
        },
        {
            id = "turnin-1319-the-black-shield",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Black Shield.",
            complete = QuestState(1319, "completed"),
            dependsOn = { "accept-1319-the-black-shield" },
            route = {
                Point(1445, 0.6475, 0.5043, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "accept-1320-the-black-shield",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Black Shield.",
            complete = QuestState(1320, "activeOrCompleted"),
            route = {
                Point(1445, 0.6475, 0.5043, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "turnin-1320-the-black-shield",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Black Shield.",
            complete = QuestState(1320, "completed"),
            dependsOn = { "accept-1320-the-black-shield" },
            route = {
                Point(1445, 0.6821, 0.4862, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "turnin-1178-goblin-sponsorship",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
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
            priority = 580,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept Goblin Sponsorship.",
            complete = QuestState(1180, "activeOrCompleted"),
            route = {
                Point(1413, 0.6268, 0.3623, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "turnin-1798-seeking-strahad",
            kind = "turnin",
            priority = 590,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Turn in Seeking Strahad.",
            complete = QuestState(1798, "completed"),
            route = {
                Point(1413, 0.6263, 0.3550, "Seeking Strahad",
                    "Travel to Seeking Strahad."),
            },
        },
        {
            id = "accept-1758-tome-of-the-cabal",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Accept Tome of the Cabal.",
            complete = QuestState(1758, "activeOrCompleted"),
            route = {
                Point(1413, 0.6263, 0.3550, "Tome of the Cabal",
                    "Travel to Tome of the Cabal."),
            },
        },
        {
            id = "turnin-1718-the-islander",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Turn in The Islander.",
            complete = QuestState(1718, "completed"),
            route = {
                Point(1413, 0.6862, 0.4917, "The Islander",
                    "Travel to The Islander."),
            },
        },
        {
            id = "accept-1719-the-affray",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Accept The Affray.",
            complete = QuestState(1719, "activeOrCompleted"),
            route = {
                Point(1413, 0.6862, 0.4917, "The Affray",
                    "Travel to The Affray."),
            },
        },
        {
            id = "objective-1719-1-affray-challenger",
            kind = "objective",
            priority = 630,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Kill Affray Challenger.",
            complete = QuestObjective(1719, 1, "Affray Challenger"),
            dependsOn = { "accept-1719-the-affray" },
            route = {
                Point(1413, 0.6861, 0.4872, "Affray Challenger",
                    "Travel to Affray Challenger."),
            },
        },
        {
            id = "turnin-1719-the-affray",
            kind = "turnin",
            priority = 640,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Turn in The Affray.",
            complete = QuestState(1719, "completed"),
            dependsOn = { "accept-1719-the-affray", "objective-1719-1-affray-challenger" },
            route = {
                Point(1413, 0.6862, 0.4917, "The Affray",
                    "Travel to The Affray."),
            },
        },
        {
            id = "accept-1791-the-windwatcher",
            kind = "accept",
            priority = 650,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Accept The Windwatcher.",
            complete = QuestState(1791, "activeOrCompleted"),
            route = {
                Point(1413, 0.6862, 0.4917, "The Windwatcher",
                    "Travel to The Windwatcher."),
            },
        },
        {
            id = "turnin-1111-wharfmaster-dizzywig",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Wharfmaster Dizzywig.",
            complete = QuestState(1111, "completed"),
            dependsOn = { "accept-1111-wharfmaster-dizzywig" },
            route = {
                Point(1413, 0.6335, 0.3845, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
        {
            id = "accept-1112-parts-for-kravel",
            kind = "accept",
            priority = 670,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Parts for Kravel.",
            complete = QuestState(1112, "activeOrCompleted"),
            route = {
                Point(1413, 0.6335, 0.3845, "Parts for Kravel",
                    "Travel to Parts for Kravel."),
            },
        },
        {
            id = "turnin-1039-the-barrens-port",
            kind = "turnin",
            priority = 680,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Barrens Port.",
            complete = QuestState(1039, "completed"),
            route = {
                Point(1413, 0.6335, 0.3845, "The Barrens Port",
                    "Travel to The Barrens Port."),
            },
        },
        {
            id = "accept-1040-passage-to-booty-bay",
            kind = "accept",
            priority = 690,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept Passage to Booty Bay.",
            complete = QuestState(1040, "activeOrCompleted"),
            route = {
                Point(1413, 0.6335, 0.3845, "Passage to Booty Bay",
                    "Travel to Passage to Booty Bay."),
            },
        },
    },
})
