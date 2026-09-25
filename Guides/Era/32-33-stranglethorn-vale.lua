local _, ns = ...

-- Alliance Era leveling route for Stranglethorn Vale, levels 32-33.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STRANGLETHORN = 1434,
    IRONFORGE = 1455,
    STORMWIND = 1453,
    ELWYNN = 1429,
    DUSKWOOD = 1431,
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
    id = "leveling-era-32-33-stranglethorn-vale",
    title = "32-33 Stranglethorn Vale (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 32 } },
        },
    },
    goals = {
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
            id = "accept-690-malin-s-request",
            kind = "accept",
            priority = 50,
            text = "Accept Malin's Request from Archmage Malin in Mage Quarter.",
            complete = QuestState(690, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3982, 0.8153, "Archmage Malin",
                    "Travel to Archmage Malin."),
            },
        },
        {
            id = "accept-75-the-legend-of-stalvan",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Accept The Legend of Stalvan from Marshal Haggard in Eastvale Logging Camp.",
            complete = QuestState(75, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.8464, 0.6941, "Marshal Haggard",
                    "Travel to Marshal Haggard."),
            },
        },
        {
            id = "objective-75-the-legend-of-stalvan",
            kind = "objective",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Collect A Faded Journal Page from Marshal Haggard's chest in Eastvale Logging Camp.",
            dependsOn = { "accept-75-the-legend-of-stalvan" },
            complete = QuestState(75, "complete"),
            route = {
                Point(MAP.ELWYNN, 0.8568, 0.6959, "Eastvale Logging Camp",
                    "Travel to Eastvale Logging Camp."),
            },
        },
        {
            id = "turnin-75-the-legend-of-stalvan",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Turn in The Legend of Stalvan to Marshal Haggard in Eastvale Logging Camp.",
            dependsOn = { "objective-75-the-legend-of-stalvan" },
            complete = QuestState(75, "completed"),
            route = {
                Point(MAP.ELWYNN, 0.8464, 0.6941, "Marshal Haggard",
                    "Travel to Marshal Haggard."),
            },
        },
        {
            id = "accept-78-the-legend-of-stalvan",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Accept The Legend of Stalvan from Marshal Haggard in Eastvale Logging Camp.",
            complete = QuestState(78, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.8464, 0.6941, "Marshal Haggard",
                    "Travel to Marshal Haggard."),
            },
        },
        {
            id = "turnin-78-the-legend-of-stalvan",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Turn in The Legend of Stalvan to Tavernkeep Smitts in Darkshire.",
            dependsOn = { "accept-78-the-legend-of-stalvan" },
            complete = QuestState(78, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7376, 0.4450, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts."),
            },
        },
        {
            id = "accept-79-the-legend-of-stalvan",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Accept The Legend of Stalvan from Tavernkeep Smitts in Darkshire.",
            complete = QuestState(79, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7376, 0.4450, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts."),
            },
        },
        {
            id = "turnin-79-the-legend-of-stalvan",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Turn in The Legend of Stalvan to Commander Althea Ebonlocke in Darkshire.",
            dependsOn = { "accept-79-the-legend-of-stalvan" },
            complete = QuestState(79, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7363, 0.4691, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "accept-80-the-legend-of-stalvan",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Accept The Legend of Stalvan from Commander Althea Ebonlocke in Darkshire.",
            complete = QuestState(80, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7363, 0.4691, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "turnin-80-the-legend-of-stalvan",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Turn in The Legend of Stalvan to Clerk Daltry in Darkshire.",
            dependsOn = { "accept-80-the-legend-of-stalvan" },
            complete = QuestState(80, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7259, 0.4684, "Clerk Daltry",
                    "Travel to Clerk Daltry."),
            },
        },
        {
            id = "accept-97-the-legend-of-stalvan",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Accept The Legend of Stalvan from Clerk Daltry in Darkshire.",
            complete = QuestState(97, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7259, 0.4684, "Clerk Daltry",
                    "Travel to Clerk Daltry."),
            },
        },
        {
            id = "turnin-97-the-legend-of-stalvan",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Turn in The Legend of Stalvan to Commander Althea Ebonlocke in Darkshire.",
            dependsOn = { "accept-97-the-legend-of-stalvan" },
            complete = QuestState(97, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7356, 0.4688, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "accept-98-the-legend-of-stalvan",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Accept The Legend of Stalvan from Commander Althea Ebonlocke in Darkshire.",
            complete = QuestState(98, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7356, 0.4688, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "objective-98-the-legend-of-stalvan",
            kind = "objective",
            priority = 180,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Kill Stalvan Mistmantle and collect Mistmantle Family Ring in Manor Mistmantle.",
            dependsOn = { "accept-98-the-legend-of-stalvan" },
            complete = QuestState(98, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.7736, 0.3616, "Stalvan Mistmantle",
                    "Travel to Stalvan Mistmantle."),
            },
        },
        {
            id = "turnin-98-the-legend-of-stalvan",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { quest = { id = 74, state = "completed" } },
                },
            },
            text = "Turn in The Legend of Stalvan to Madame Eva in Darkshire.",
            dependsOn = { "objective-98-the-legend-of-stalvan" },
            complete = QuestState(98, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7576, 0.4531, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "accept-203-the-second-rebellion",
            kind = "accept",
            priority = 220,
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
            priority = 230,
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
            priority = 240,
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
            priority = 250,
            conditions = {
                all = {
                    { quest = { id = 215, state = "completed" } },
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
            priority = 270,
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
            priority = 280,
            conditions = {
                all = {
                    { quest = { id = 215, state = "completed" } },
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
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 215, state = "completed" } },
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
            priority = 300,
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
            priority = 310,
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
            priority = 330,
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
            priority = 340,
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
            priority = 350,
            text = "Accept Special Forces from Sergeant Yohwa in Rebel Camp.",
            complete = QuestState(574, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3802, 0.0336, "Sergeant Yohwa",
                    "Travel to Sergeant Yohwa."),
            },
        },
        {
            id = "accept-583-welcome-to-the-jungle",
            kind = "accept",
            priority = 370,
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
            priority = 380,
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
            priority = 390,
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
            priority = 400,
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
            priority = 410,
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
            priority = 420,
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
            priority = 440,
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
            priority = 450,
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
            priority = 460,
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
            priority = 470,
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
            priority = 480,
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
            priority = 490,
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
            priority = 500,
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
            priority = 510,
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
            priority = 520,
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
            priority = 530,
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
            priority = 540,
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
            priority = 550,
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
            priority = 560,
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
            priority = 570,
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
            priority = 580,
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
            priority = 590,
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
            priority = 600,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(192, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1056, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "turnin-210-krazek-s-cookery",
            kind = "turnin",
            priority = 620,
            text = "Turn in Krazek's Cookery to Booty Bay Bruiser in The Salty Sailor Tavern.",
            dependsOn = { "accept-210-krazek-s-cookery" },
            complete = QuestState(210, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2696, 0.7720, "Booty Bay Bruiser",
                    "Travel to Booty Bay Bruiser."),
            },
        },
        {
            id = "accept-616-the-haunted-isle",
            kind = "accept",
            priority = 630,
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
            priority = 640,
            text = "Turn in The Haunted Isle to Baron Revilgaz in Booty Bay.",
            dependsOn = { "accept-616-the-haunted-isle" },
            complete = QuestState(616, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2722, 0.7687, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
    },
})
