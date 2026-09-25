local _, ns = ...

-- Horde Era leveling route for Stranglethorn Vale, levels 30-31.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STRANGLETHORN = 1434,
    THUNDER_BLUFF = 1456,
    ORGRIMMAR = 1454,
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
    id = "leveling-era-30-31-stranglethorn-vale",
    title = "30-31 Stranglethorn Vale (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 30 } },
        },
    },
    goals = {
        {
            id = "accept-1532-call-of-air",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                    { ["not"] = { quest = { id = 1531, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept Call of Air from Xanis Flameweaver in Spirit Rise.",
            complete = QuestState(1532, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.2520, 0.2065, "Xanis Flameweaver",
                    "Travel to Xanis Flameweaver."),
            },
        },
        {
            id = "accept-1531-call-of-air",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { class = 7 },
                    { race = { 2, 8 } },
                    { ["not"] = { quest = { id = 1532, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept Call of Air from Searn Firewarder in Grommash Hold.",
            complete = QuestState(1531, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3800, 0.3770, "Searn Firewarder",
                    "Travel to Searn Firewarder."),
            },
        },
        {
            id = "accept-583-welcome-to-the-jungle",
            kind = "accept",
            priority = 50,
            text = "Accept Welcome to the Jungle from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(583, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3568, 0.1052, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "turnin-583-welcome-to-the-jungle",
            kind = "turnin",
            priority = 60,
            text = "Turn in Welcome to the Jungle to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "accept-583-welcome-to-the-jungle" },
            complete = QuestState(583, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1075, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-185-tiger-mastery",
            kind = "accept",
            priority = 70,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(185, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1064, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-190-panther-mastery",
            kind = "accept",
            priority = 80,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(190, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1057, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "accept-194-raptor-mastery",
            kind = "accept",
            priority = 90,
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(194, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1075, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "objective-185-tiger-mastery",
            kind = "objective",
            priority = 100,
            text = "Kill 10 Young Stranglethorn Tiger slightly to the east in Stranglethorn Vale.",
            dependsOn = { "accept-185-tiger-mastery" },
            complete = QuestState(185, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3500, 0.1400, "Young Stranglethorn Tiger",
                    "Travel to Young Stranglethorn Tiger."),
            },
        },
        {
            id = "turnin-185-tiger-mastery",
            kind = "turnin",
            priority = 110,
            text = "Turn in Tiger Mastery to Ajeck Rouack in Nesingwary's Expedition.",
            dependsOn = { "objective-185-tiger-mastery" },
            complete = QuestState(185, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1064, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-186-tiger-mastery",
            kind = "accept",
            priority = 120,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(186, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1064, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "objective-190-panther-mastery",
            kind = "objective",
            priority = 130,
            text = "Kill 10 Young Panther to the north in Stranglethorn Vale.",
            dependsOn = { "accept-190-panther-mastery" },
            complete = QuestState(190, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4100, 0.0900, "Young Panther",
                    "Travel to Young Panther."),
            },
        },
        {
            id = "objective-186-tiger-mastery",
            kind = "objective",
            priority = 140,
            text = "Kill 10 Stranglethorn Tiger east of the camp in Stranglethorn Vale.",
            dependsOn = { "accept-186-tiger-mastery" },
            complete = QuestState(186, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3000, 0.1500, "Stranglethorn Tiger",
                    "Travel to Stranglethorn Tiger."),
            },
        },
        {
            id = "turnin-190-panther-mastery",
            kind = "turnin",
            priority = 150,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin in Nesingwary's Expedition.",
            dependsOn = { "objective-190-panther-mastery" },
            complete = QuestState(190, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1057, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "accept-191-panther-mastery",
            kind = "accept",
            priority = 160,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(191, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1057, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "turnin-186-tiger-mastery",
            kind = "turnin",
            priority = 170,
            text = "Turn in Tiger Mastery to Ajeck Rouack in Nesingwary's Expedition.",
            dependsOn = { "objective-186-tiger-mastery" },
            complete = QuestState(186, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1064, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-187-tiger-mastery",
            kind = "accept",
            priority = 180,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(187, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1064, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "objective-191-panther-mastery",
            kind = "objective",
            priority = 190,
            text = "Kill 10 Panther east of the camp in Stranglethorn Vale.",
            dependsOn = { "accept-191-panther-mastery" },
            complete = QuestState(191, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2900, 0.1100, "Panther",
                    "Travel to Panther."),
            },
        },
        {
            id = "objective-194-raptor-mastery",
            kind = "objective",
            priority = 200,
            text = "Kill 10 Stranglethorn Raptor east near the ruins in Stranglethorn Vale.",
            dependsOn = { "accept-194-raptor-mastery" },
            complete = QuestState(194, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2800, 0.1400, "Stranglethorn Raptor",
                    "Travel to Stranglethorn Raptor."),
            },
        },
        {
            id = "turnin-194-raptor-mastery",
            kind = "turnin",
            priority = 210,
            text = "Turn in Raptor Mastery to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "objective-194-raptor-mastery" },
            complete = QuestState(194, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1075, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-195-raptor-mastery",
            kind = "accept",
            priority = 220,
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(195, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1075, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "turnin-191-panther-mastery",
            kind = "turnin",
            priority = 230,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin in Nesingwary's Expedition.",
            dependsOn = { "objective-191-panther-mastery" },
            complete = QuestState(191, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1057, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
    },
})
