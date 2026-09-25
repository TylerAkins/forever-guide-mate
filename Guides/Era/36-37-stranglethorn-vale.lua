local _, ns = ...

-- Alliance Era leveling route for Stranglethorn Vale, levels 36-37.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STRANGLETHORN = 1434,
    BARRENS = 1413,
    IRONFORGE = 1455,
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
    id = "leveling-era-36-37-stranglethorn-vale",
    title = "36-37 Stranglethorn Vale (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 36 } },
        },
    },
    goals = {
        {
            id = "accept-1180-goblin-sponsorship",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 1178, state = "completed" } },
                },
            },
            text = "Accept Goblin Sponsorship from Gazlowe in Ratchet.",
            complete = QuestState(1180, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6268, 0.3624, "Gazlowe",
                    "Travel to Gazlowe."),
            },
        },
        {
            id = "accept-1112-parts-for-kravel",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 1112, state = "completed" } },
                },
            },
            text = "Accept Parts for Kravel from Wharfmaster Dizzywig in Ratchet.",
            complete = QuestState(1112, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6335, 0.3846, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
        {
            id = "accept-1040-passage-to-booty-bay",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 1039, state = "completed" } },
                },
            },
            text = "Accept Passage to Booty Bay from Wharfmaster Dizzywig in Ratchet.",
            complete = QuestState(1040, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6335, 0.3846, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
        {
            id = "turnin-1040-passage-to-booty-bay",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { quest = { id = 1039, state = "completed" } },
                },
            },
            text = "Turn in Passage to Booty Bay to Caravaneer Ruzzgot in Booty Bay.",
            dependsOn = { "accept-1040-passage-to-booty-bay" },
            complete = QuestState(1040, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2737, 0.7409, "Caravaneer Ruzzgot",
                    "Travel to Caravaneer Ruzzgot."),
            },
        },
        {
            id = "accept-616-the-haunted-isle",
            kind = "accept",
            priority = 70,
            text = "Accept The Haunted Isle from Krazek in The Salty Sailor Tavern.",
            complete = QuestState(616, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2697, 0.7723, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "turnin-616-the-haunted-isle",
            kind = "turnin",
            priority = 80,
            text = "Turn in The Haunted Isle to Baron Revilgaz in Booty Bay.",
            dependsOn = { "accept-616-the-haunted-isle" },
            complete = QuestState(616, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2722, 0.7687, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "accept-578-the-stone-of-the-tides",
            kind = "accept",
            priority = 90,
            text = "Accept The Stone of the Tides from Baron Revilgaz in Booty Bay.",
            complete = QuestState(578, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7689, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "accept-189-bloodscalp-ears",
            kind = "accept",
            priority = 100,
            text = "Accept Bloodscalp Ears from Kebok in The Salty Sailor Tavern.",
            complete = QuestState(189, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2702, 0.7715, "Kebok",
                    "Travel to Kebok."),
            },
        },
        {
            id = "accept-213-hostile-takeover",
            kind = "accept",
            priority = 110,
            text = "Accept Hostile Takeover from Kebok in The Salty Sailor Tavern.",
            complete = QuestState(213, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2702, 0.7715, "Kebok",
                    "Travel to Kebok."),
            },
        },
        {
            id = "accept-198-supplies-to-private-thorsen",
            kind = "accept",
            priority = 120,
            text = "Accept Supplies to Private Thorsen from Krazek in The Salty Sailor Tavern.",
            complete = QuestState(198, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2696, 0.7725, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "accept-201-investigate-the-camp",
            kind = "accept",
            priority = 130,
            text = "Accept Investigate the Camp from Krazek in The Salty Sailor Tavern.",
            complete = QuestState(201, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2696, 0.7725, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "accept-605-singing-blue-shards",
            kind = "accept",
            priority = 140,
            text = "Accept Singing Blue Shards from Crank Fizzlebub in The Salty Sailor Tavern.",
            complete = QuestState(605, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7729, "Crank Fizzlebub",
                    "Travel to Crank Fizzlebub."),
            },
        },
        {
            id = "accept-1181-goblin-sponsorship",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Accept Goblin Sponsorship from Wharfmaster Lozgil in Booty Bay.",
            complete = QuestState(1181, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2634, 0.7357, "Wharfmaster Lozgil",
                    "Travel to Wharfmaster Lozgil."),
            },
        },
        {
            id = "turnin-1181-goblin-sponsorship",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Turn in Goblin Sponsorship to Baron Revilgaz in Booty Bay.",
            dependsOn = { "accept-1181-goblin-sponsorship" },
            complete = QuestState(1181, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2721, 0.7688, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "accept-1182-goblin-sponsorship",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Accept Goblin Sponsorship from Baron Revilgaz in Booty Bay.",
            complete = QuestState(1182, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2721, 0.7688, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "accept-575-supply-and-demand",
            kind = "accept",
            priority = 180,
            text = "Accept Supply and Demand from Drizzlik in Booty Bay.",
            complete = QuestState(575, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2828, 0.7758, "Drizzlik",
                    "Travel to Drizzlik."),
            },
        },
        {
            id = "accept-583-welcome-to-the-jungle",
            kind = "accept",
            priority = 200,
            text = "Accept Welcome to the Jungle from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(583, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3567, 0.1052, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "turnin-583-welcome-to-the-jungle",
            kind = "turnin",
            priority = 210,
            text = "Turn in Welcome to the Jungle to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "accept-583-welcome-to-the-jungle" },
            complete = QuestState(583, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3566, 0.1077, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-194-raptor-mastery",
            kind = "accept",
            priority = 220,
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(194, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3566, 0.1077, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-185-tiger-mastery",
            kind = "accept",
            priority = 230,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(185, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3562, 0.1062, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-190-panther-mastery",
            kind = "accept",
            priority = 240,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(190, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3563, 0.1051, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "objective-185-tiger-mastery",
            kind = "objective",
            priority = 250,
            text = "Kill 10 Young Stranglethorn Tiger in Stranglethorn Vale.",
            dependsOn = { "accept-185-tiger-mastery" },
            complete = QuestState(185, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3500, 0.1210, "Young Stranglethorn Tiger",
                    "Travel to Young Stranglethorn Tiger."),
            },
        },
        {
            id = "turnin-185-tiger-mastery",
            kind = "turnin",
            priority = 270,
            text = "Turn in Tiger Mastery to Ajeck Rouack in Nesingwary's Expedition.",
            dependsOn = { "objective-185-tiger-mastery" },
            complete = QuestState(185, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3563, 0.1065, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-186-tiger-mastery",
            kind = "accept",
            priority = 280,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(186, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3563, 0.1065, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "objective-190-panther-mastery",
            kind = "objective",
            priority = 290,
            text = "Kill 10 Young Panther in Stranglethorn Vale.",
            dependsOn = { "accept-190-panther-mastery" },
            complete = QuestState(190, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4231, 0.1306, "Young Panther",
                    "Travel to Young Panther."),
            },
        },
        {
            id = "objective-186-tiger-mastery",
            kind = "objective",
            priority = 300,
            text = "Kill 10 Stranglethorn Tiger in Stranglethorn Vale.",
            dependsOn = { "accept-186-tiger-mastery" },
            complete = QuestState(186, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4690, 0.1560, "Stranglethorn Tiger",
                    "Travel to Stranglethorn Tiger."),
            },
        },
        {
            id = "turnin-186-tiger-mastery",
            kind = "turnin",
            priority = 310,
            text = "Turn in Tiger Mastery to Ajeck Rouack in Nesingwary's Expedition.",
            dependsOn = { "objective-186-tiger-mastery" },
            complete = QuestState(186, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3563, 0.1063, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-187-tiger-mastery",
            kind = "accept",
            priority = 320,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(187, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3563, 0.1063, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "turnin-190-panther-mastery",
            kind = "turnin",
            priority = 330,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin in Nesingwary's Expedition.",
            dependsOn = { "objective-190-panther-mastery" },
            complete = QuestState(190, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3557, 0.1055, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "accept-191-panther-mastery",
            kind = "accept",
            priority = 340,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(191, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3557, 0.1055, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "objective-194-raptor-mastery",
            kind = "objective",
            priority = 350,
            text = "Kill 10 Stranglethorn Raptor in Stranglethorn Vale.",
            dependsOn = { "accept-194-raptor-mastery" },
            complete = QuestState(194, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2452, 0.1586, "Stranglethorn Raptor",
                    "Travel to Stranglethorn Raptor."),
            },
        },
        {
            id = "objective-191-panther-mastery",
            kind = "objective",
            priority = 360,
            text = "Kill 10 Panther in Stranglethorn Vale.",
            dependsOn = { "accept-191-panther-mastery" },
            complete = QuestState(191, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2842, 0.1188, "Panther",
                    "Travel to Panther."),
            },
        },
        {
            id = "objective-187-tiger-mastery",
            kind = "objective",
            priority = 370,
            text = "Kill 10 Elder Stranglethorn Tiger in Stranglethorn Vale.",
            dependsOn = { "accept-187-tiger-mastery" },
            complete = QuestState(187, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3211, 0.1834, "Elder Stranglethorn Tiger",
                    "Travel to Elder Stranglethorn Tiger."),
            },
        },
        {
            id = "turnin-194-raptor-mastery",
            kind = "turnin",
            priority = 380,
            text = "Turn in Raptor Mastery to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "objective-194-raptor-mastery" },
            complete = QuestState(194, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3566, 0.1079, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-195-raptor-mastery",
            kind = "accept",
            priority = 390,
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(195, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3566, 0.1079, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "turnin-187-tiger-mastery",
            kind = "turnin",
            priority = 400,
            text = "Turn in Tiger Mastery to Ajeck Rouack in Nesingwary's Expedition.",
            dependsOn = { "objective-187-tiger-mastery" },
            complete = QuestState(187, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3561, 0.1062, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-188-tiger-mastery",
            kind = "accept",
            priority = 410,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(188, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3561, 0.1062, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "turnin-191-panther-mastery",
            kind = "turnin",
            priority = 420,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin in Nesingwary's Expedition.",
            dependsOn = { "objective-191-panther-mastery" },
            complete = QuestState(191, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1056, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "accept-192-panther-mastery",
            kind = "accept",
            priority = 430,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(192, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1056, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "objective-192-panther-mastery",
            kind = "objective",
            priority = 450,
            text = "Kill 10 Shadowmaw Panther in Stranglethorn Vale, they are stealth and hard to find.",
            dependsOn = { "accept-192-panther-mastery" },
            complete = QuestState(192, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3908, 0.3302, "Shadowmaw Panther",
                    "Travel to Shadowmaw Panther."),
            },
        },
        {
            id = "objective-1182-foreman-cozzle",
            kind = "objective",
            priority = 470,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Go up the platform and kill Foreman Cozzle and collect Cozzle's Key in Venture Co. Operations Center.",
            dependsOn = { "accept-1182-goblin-sponsorship" },
            complete = QuestState(1182, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4260, 0.1852, "Foreman Cozzle",
                    "Travel to Foreman Cozzle."),
            },
        },
        {
            id = "objective-1182-goblin-sponsorship",
            kind = "objective",
            priority = 480,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Use the Cozzle's Key on Cozzle's Footlocker inside the hut to get Fuel Regulator Blueprints in Venture Co. Operations Center.",
            dependsOn = { "accept-1182-goblin-sponsorship" },
            complete = QuestState(1182, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4260, 0.1852, "Venture Co. Operations Center",
                    "Travel to Venture Co. Operations Center."),
            },
        },
        {
            id = "objective-213-hostile-takeover",
            kind = "objective",
            priority = 490,
            text = "Kill Venture Co. Geologist and collect 8 Tumbled Crystal in Venture Co. Base Camp.",
            dependsOn = { "accept-213-hostile-takeover" },
            complete = QuestState(213, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4314, 0.1937, "Venture Co. Geologist",
                    "Travel to Venture Co. Geologist."),
            },
        },
        {
            id = "objective-195-raptor-mastery",
            kind = "objective",
            priority = 510,
            text = "Kill 10 Lashtail Raptor in Stranglethorn Vale.",
            dependsOn = { "accept-195-raptor-mastery" },
            complete = QuestState(195, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3827, 0.2699, "Lashtail Raptor",
                    "Travel to Lashtail Raptor."),
            },
        },
        {
            id = "objective-188-tiger-mastery",
            kind = "objective",
            priority = 530,
            text = "Kill Sin'Dall collect Paw of Sin'Dall and in Stranglethorn Vale.",
            dependsOn = { "accept-188-tiger-mastery" },
            complete = QuestState(188, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3221, 0.1734, "Sin'Dall",
                    "Travel to Sin'Dall."),
            },
        },
        {
            id = "objective-201-investigate-the-camp",
            kind = "objective",
            priority = 540,
            text = "Investigate the Camp in Nesingwary's Expedition.",
            dependsOn = { "accept-201-investigate-the-camp" },
            complete = QuestState(201, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3578, 0.1142, "Nesingwary's Expedition",
                    "Travel to Nesingwary's Expedition."),
            },
        },
        {
            id = "turnin-195-raptor-mastery",
            kind = "turnin",
            priority = 550,
            text = "Turn in Raptor Mastery to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "objective-195-raptor-mastery" },
            complete = QuestState(195, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3567, 0.1077, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-196-raptor-mastery",
            kind = "accept",
            priority = 560,
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(196, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3567, 0.1077, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "turnin-5762-hemet-nesingwary-jr",
            kind = "turnin",
            priority = 570,
            text = "Turn in Hemet Nesingwary Jr. to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(5762, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3567, 0.1077, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "turnin-188-tiger-mastery",
            kind = "turnin",
            priority = 580,
            text = "Turn in Tiger Mastery to Ajeck Rouack in Nesingwary's Expedition.",
            dependsOn = { "objective-188-tiger-mastery" },
            complete = QuestState(188, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3563, 0.1061, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "turnin-192-panther-mastery",
            kind = "turnin",
            priority = 590,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin in Nesingwary's Expedition.",
            dependsOn = { "objective-192-panther-mastery" },
            complete = QuestState(192, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3558, 0.1057, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "accept-193-panther-mastery",
            kind = "accept",
            priority = 600,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(193, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3558, 0.1057, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "objective-575-supply-and-demand",
            kind = "objective",
            priority = 610,
            text = "Kill River Crocolisk and collect 2 Large River Crocolisk Skin Stranglethorn Vale.",
            dependsOn = { "accept-575-supply-and-demand" },
            complete = QuestState(575, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3412, 0.0970, "River Crocolisk",
                    "Travel to River Crocolisk."),
            },
        },
        {
            id = "objective-605-singing-blue-shards",
            kind = "objective",
            priority = 620,
            text = "Find Stone Maw Basilisk and collect some Singing Crystal Shard, you can complete this later, if you can't find crocs The Savage Coast.",
            dependsOn = { "accept-605-singing-blue-shards" },
            complete = QuestState(605, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3700, 0.0800, "Stone Maw Basilisk",
                    "Travel to Stone Maw Basilisk."),
            },
        },
        {
            id = "objective-189-bloodscalp-ears",
            kind = "objective",
            priority = 640,
            text = "Kill Bloodscalp trolls Tkashi Ruins and Bal'lal Ruins.",
            dependsOn = { "accept-189-bloodscalp-ears" },
            complete = QuestState(189, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2955, 0.1953, "Bloodscalp Axe Thrower",
                    "Travel to Bloodscalp Axe Thrower."),
            },
        },
        {
            id = "objective-578-the-stone-of-the-tides",
            kind = "objective",
            priority = 660,
            text = "Locate the haunted island in The Savage Coast.",
            dependsOn = { "accept-578-the-stone-of-the-tides" },
            complete = QuestState(578, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2177, 0.2204, "The Savage Coast",
                    "Travel to The Savage Coast."),
            },
        },
        {
            id = "objective-605-singing-blue-shards-2",
            kind = "objective",
            priority = 670,
            text = "Find Crystal Spine Basilisk and collect some Singing Crystal Shard in The Savage Coast, if you can't any crocs.",
            dependsOn = { "accept-605-singing-blue-shards" },
            complete = QuestState(605, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2422, 0.1765, "Crystal Spine Basilisk",
                    "Travel to Crystal Spine Basilisk."),
            },
        },
        {
            id = "accept-203-the-second-rebellion",
            kind = "accept",
            priority = 690,
            text = "Accept The Second Rebellion from Sergeant Yohwa in Rebel Camp.",
            complete = QuestState(203, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3803, 0.0335, "Sergeant Yohwa",
                    "Travel to Sergeant Yohwa."),
            },
        },
        {
            id = "accept-204-bad-medicine",
            kind = "accept",
            priority = 700,
            text = "Accept Bad Medicine from Sergeant Yohwa in Rebel Camp.",
            complete = QuestState(204, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3803, 0.0335, "Sergeant Yohwa",
                    "Travel to Sergeant Yohwa."),
            },
        },
        {
            id = "accept-210-krazek-s-cookery",
            kind = "accept",
            priority = 710,
            text = "Accept Krazek's Cookery from Corporal Kaleb in Rebel Camp.",
            complete = QuestState(210, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3774, 0.0329, "Corporal Kaleb",
                    "Travel to Corporal Kaleb."),
            },
        },
        {
            id = "accept-200-bookie-herod",
            kind = "accept",
            priority = 720,
            conditions = {
                all = {
                    { quest = { id = 200, state = "completed" } },
                },
            },
            text = "Accept Bookie Herod from Lieutenant Doren in Rebel Camp.",
            complete = QuestState(200, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3804, 0.0301, "Lieutenant Doren",
                    "Travel to Lieutenant Doren."),
            },
        },
        {
            id = "objective-204-2-venom-fern-extract",
            kind = "objective",
            priority = 740,
            text = "Collect Venom Fern Extract from Kurzen supplies on the ground in Kurzen's Compound.",
            dependsOn = { "accept-204-bad-medicine" },
            complete = QuestObjective(204, 2),
            route = {
                Point(MAP.STRANGLETHORN, 0.4452, 0.0983, "Kurzen's Compound",
                    "Travel to Kurzen's Compound."),
            },
        },
        {
            id = "turnin-200-bookie-herod",
            kind = "turnin",
            priority = 750,
            conditions = {
                all = {
                    { quest = { id = 200, state = "completed" } },
                },
            },
            text = "Turn in Bookie Herod in Kurzen's Compound.",
            dependsOn = { "accept-200-bookie-herod" },
            complete = QuestState(200, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4367, 0.0938, "Kurzen's Compound",
                    "Travel to Kurzen's Compound."),
            },
        },
        {
            id = "accept-328-the-hidden-key",
            kind = "accept",
            priority = 760,
            conditions = {
                all = {
                    { quest = { id = 200, state = "completed" } },
                },
            },
            text = "Accept The Hidden Key in Kurzen's Compound.",
            complete = QuestState(328, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4367, 0.0939, "Kurzen's Compound",
                    "Travel to Kurzen's Compound."),
            },
        },
        {
            id = "objective-204-1-bad-medicine",
            kind = "objective",
            priority = 770,
            text = "Kill Kurzen Medicine Man collect 7 Jungle Remedy in Kurzen's Compound.",
            dependsOn = { "accept-204-bad-medicine" },
            complete = QuestObjective(204, 1),
            route = {
                Point(MAP.STRANGLETHORN, 0.4478, 0.1093, "Kurzen Medicine Man",
                    "Travel to Kurzen Medicine Man."),
            },
        },
        {
            id = "objective-203-the-second-rebellion",
            kind = "objective",
            priority = 780,
            text = "Kill 15 Kurzen Jungle Fighter in Kurzen's Compound.",
            dependsOn = { "accept-203-the-second-rebellion" },
            complete = QuestState(203, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4475, 0.1066, "Kurzen Jungle Fighter",
                    "Travel to Kurzen Jungle Fighter."),
            },
        },
        {
            id = "turnin-203-the-second-rebellion",
            kind = "turnin",
            priority = 800,
            text = "Turn in The Second Rebellion to Sergeant Yohwa in Rebel Camp.",
            dependsOn = { "objective-203-the-second-rebellion" },
            complete = QuestState(203, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3802, 0.0336, "Sergeant Yohwa",
                    "Travel to Sergeant Yohwa."),
            },
        },
        {
            id = "turnin-204-bad-medicine",
            kind = "turnin",
            priority = 810,
            text = "Turn in Bad Medicine to Sergeant Yohwa in Rebel Camp.",
            dependsOn = { "objective-204-2-venom-fern-extract", "objective-204-1-bad-medicine" },
            complete = QuestState(204, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3802, 0.0336, "Sergeant Yohwa",
                    "Travel to Sergeant Yohwa."),
            },
        },
        {
            id = "accept-574-special-forces",
            kind = "accept",
            priority = 820,
            text = "Accept Special Forces from Sergeant Yohwa in Rebel Camp.",
            complete = QuestState(574, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3802, 0.0336, "Sergeant Yohwa",
                    "Travel to Sergeant Yohwa."),
            },
        },
        {
            id = "turnin-328-the-hidden-key",
            kind = "turnin",
            priority = 840,
            conditions = {
                all = {
                    { quest = { id = 200, state = "completed" } },
                },
            },
            text = "Turn in The Hidden Key in The Stockpile.",
            dependsOn = { "accept-328-the-hidden-key" },
            complete = QuestState(328, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4961, 0.0759, "The Stockpile",
                    "Travel to The Stockpile."),
            },
        },
        {
            id = "accept-329-the-spy-revealed",
            kind = "accept",
            priority = 850,
            conditions = {
                all = {
                    { quest = { id = 200, state = "completed" } },
                },
            },
            text = "Accept The Spy Revealed! in The Stockpile.",
            complete = QuestState(329, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4961, 0.0759, "The Stockpile",
                    "Travel to The Stockpile."),
            },
        },
        {
            id = "objective-574-special-forces",
            kind = "objective",
            priority = 860,
            text = "Kill 6 Kurzen Headshrinker and 10 Kurzen Commando in The Stockpile Kurzen Commando are stealth and found near the cave entrance.",
            dependsOn = { "accept-574-special-forces" },
            complete = QuestState(574, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4633, 0.0716, "Kurzen Headshrinker",
                    "Travel to Kurzen Headshrinker."),
            },
        },
        {
            id = "objective-605-singing-blue-shards-3",
            kind = "objective",
            priority = 870,
            text = "Find Crystal Spine Basilisk or Stone Maw Basilisk and collect 10 Singing Crystal Shard in The Savage Coast.",
            dependsOn = { "accept-605-singing-blue-shards" },
            complete = QuestState(605, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2422, 0.1765, "Crystal Spine Basilisk",
                    "Travel to Crystal Spine Basilisk."),
            },
        },
        {
            id = "turnin-198-supplies-to-private-thorsen",
            kind = "turnin",
            priority = 890,
            text = "Turn in Supplies to Private Thorsen to Private Thorsen in Rebel Camp.",
            dependsOn = { "accept-198-supplies-to-private-thorsen" },
            complete = QuestState(198, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3799, 0.0343, "Private Thorsen",
                    "Travel to Private Thorsen."),
            },
        },
        {
            id = "turnin-329-the-spy-revealed",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { quest = { id = 200, state = "completed" } },
                },
            },
            text = "Turn in The Spy Revealed! to Lieutenant Doren in Rebel Camp.",
            dependsOn = { "accept-329-the-spy-revealed" },
            complete = QuestState(329, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3805, 0.0305, "Lieutenant Doren",
                    "Travel to Lieutenant Doren."),
            },
        },
        {
            id = "accept-330-patrol-schedules",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { quest = { id = 200, state = "completed" } },
                },
            },
            text = "Accept Patrol Schedules from Lieutenant Doren in Rebel Camp.",
            complete = QuestState(330, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3805, 0.0305, "Lieutenant Doren",
                    "Travel to Lieutenant Doren."),
            },
        },
        {
            id = "turnin-330-patrol-schedules",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { quest = { id = 200, state = "completed" } },
                },
            },
            text = "Turn in Patrol Schedules to Corporal Sethman in Rebel Camp.",
            dependsOn = { "accept-330-patrol-schedules" },
            complete = QuestState(330, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3767, 0.0339, "Corporal Sethman",
                    "Travel to Corporal Sethman."),
            },
        },
        {
            id = "accept-331-report-to-doren",
            kind = "accept",
            priority = 930,
            conditions = {
                all = {
                    { quest = { id = 200, state = "completed" } },
                },
            },
            text = "Accept Report to Doren from Corporal Sethman in Rebel Camp.",
            complete = QuestState(331, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3767, 0.0339, "Corporal Sethman",
                    "Travel to Corporal Sethman."),
            },
        },
        {
            id = "turnin-331-report-to-doren",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { quest = { id = 200, state = "completed" } },
                },
            },
            text = "Turn in Report to Doren to Lieutenant Doren in Rebel Camp.",
            dependsOn = { "accept-331-report-to-doren" },
            complete = QuestState(331, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3804, 0.0304, "Lieutenant Doren",
                    "Travel to Lieutenant Doren."),
            },
        },
        {
            id = "turnin-574-special-forces",
            kind = "turnin",
            priority = 950,
            text = "Turn in Special Forces to Lieutenant Doren in Rebel Camp.",
            dependsOn = { "objective-574-special-forces" },
            complete = QuestState(574, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3805, 0.0305, "Lieutenant Doren",
                    "Travel to Lieutenant Doren."),
            },
        },
        {
            id = "accept-202-colonel-kurzen",
            kind = "accept",
            priority = 960,
            text = "Accept Colonel Kurzen from Lieutenant Doren in Rebel Camp.",
            complete = QuestState(202, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3805, 0.0305, "Lieutenant Doren",
                    "Travel to Lieutenant Doren."),
            },
        },
        {
            id = "turnin-201-investigate-the-camp",
            kind = "turnin",
            priority = 980,
            text = "Turn in Investigate the Camp to Krazek in The Salty Sailor Tavern.",
            dependsOn = { "objective-201-investigate-the-camp" },
            complete = QuestState(201, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2695, 0.7723, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "turnin-189-bloodscalp-ears",
            kind = "turnin",
            priority = 990,
            text = "Turn in Bloodscalp Ears to Kebok in The Salty Sailor Tavern.",
            dependsOn = { "objective-189-bloodscalp-ears" },
            complete = QuestState(189, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2699, 0.7713, "Kebok",
                    "Travel to Kebok."),
            },
        },
        {
            id = "turnin-213-hostile-takeover",
            kind = "turnin",
            priority = 1000,
            text = "Turn in Hostile Takeover to Kebok in The Salty Sailor Tavern.",
            dependsOn = { "objective-213-hostile-takeover" },
            complete = QuestState(213, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2699, 0.7713, "Kebok",
                    "Travel to Kebok."),
            },
        },
        {
            id = "turnin-578-the-stone-of-the-tides",
            kind = "turnin",
            priority = 1010,
            text = "Turn in The Stone of the Tides to Baron Revilgaz in Booty Bay.",
            dependsOn = { "objective-578-the-stone-of-the-tides" },
            complete = QuestState(578, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7689, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "accept-601-water-elementals",
            kind = "accept",
            priority = 1020,
            text = "Accept Water Elementals from Baron Revilgaz in Booty Bay.",
            complete = QuestState(601, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7689, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "turnin-1182-goblin-sponsorship",
            kind = "turnin",
            priority = 1030,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Turn in Goblin Sponsorship to Baron Revilgaz in Booty Bay.",
            dependsOn = { "objective-1182-foreman-cozzle", "objective-1182-goblin-sponsorship" },
            complete = QuestState(1182, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7689, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "accept-1183-goblin-sponsorship",
            kind = "accept",
            priority = 1040,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Accept Goblin Sponsorship from Baron Revilgaz in Booty Bay.",
            complete = QuestState(1183, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7689, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "turnin-575-supply-and-demand",
            kind = "turnin",
            priority = 1050,
            text = "Turn in Supply and Demand to Drizzlik in Booty Bay.",
            dependsOn = { "objective-575-supply-and-demand" },
            complete = QuestState(575, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2829, 0.7758, "Drizzlik",
                    "Travel to Drizzlik."),
            },
        },
        {
            id = "accept-577-some-assembly-required",
            kind = "accept",
            priority = 1060,
            text = "Accept Some Assembly Required from Drizzlik in Booty Bay.",
            complete = QuestState(577, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2829, 0.7758, "Drizzlik",
                    "Travel to Drizzlik."),
            },
        },
        {
            id = "turnin-605-singing-blue-shards",
            kind = "turnin",
            priority = 1070,
            text = "Turn in Singing Blue Shards to Crank Fizzlebub in The Salty Sailor Tavern.",
            dependsOn = { "objective-605-singing-blue-shards", "objective-605-singing-blue-shards-2", "objective-605-singing-blue-shards-3" },
            complete = QuestState(605, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2712, 0.7721, "Crank Fizzlebub",
                    "Travel to Crank Fizzlebub."),
            },
        },
        {
            id = "turnin-1457-the-karnitol-shipwreck",
            kind = "turnin",
            priority = 1090,
            text = "Turn in The Karnitol Shipwreck to Roetten Stonehammer in Hall of Explorers.",
            complete = QuestState(1457, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.6799, 0.1761, "Roetten Stonehammer",
                    "Travel to Roetten Stonehammer."),
            },
        },
        {
            id = "accept-707-ironband-wants-you",
            kind = "accept",
            priority = 1100,
            text = "Accept Ironband Wants You! from Prospector Stormpike in The Library.",
            complete = QuestState(707, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7453, 0.1186, "Prospector Stormpike",
                    "Travel to Prospector Stormpike."),
            },
        },
        {
            id = "accept-525-further-mysteries",
            kind = "accept",
            priority = 1110,
            conditions = {
                all = {
                    { quest = { id = 514, state = "completed" } },
                },
            },
            text = "Accept Further Mysteries from Prospector Stormpike in The Library.",
            complete = QuestState(525, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7459, 0.1168, "Prospector Stormpike",
                    "Travel to Prospector Stormpike."),
            },
        },
    },
})
