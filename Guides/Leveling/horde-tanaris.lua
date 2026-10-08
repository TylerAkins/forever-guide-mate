local _, ns = ...

-- Forever Casual spine: Tanaris (41-42)
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
    THOUSAND_NEEDLES = 1441,
    TANARIS = 1446,
}

ns:RegisterGuide({
    id = "leveling-era-horde-tanaris",
    title = "Tanaris",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 41 } },
        },
    },
    goals = {
        {
            id = "turnin-2864-tran-rek",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Tran'rek.",
            complete = QuestState(2864, "completed"),
            route = {
                Point(1446, 0.5157, 0.2676, "Tran'rek",
                    "Travel to Tran'rek."),
            },
        },
        {
            id = "accept-1707-water-pouch-bounty",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Water Pouch Bounty.",
            complete = QuestState(1707, "activeOrCompleted"),
            route = {
                Point(1446, 0.5248, 0.2844, "Water Pouch Bounty",
                    "Travel to Water Pouch Bounty."),
            },
        },
        {
            id = "turnin-243-into-the-field",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Into the Field.",
            complete = QuestState(243, "completed"),
            route = {
                Point(1446, 0.5246, 0.2851, "Into the Field",
                    "Travel to Into the Field."),
            },
        },
        {
            id = "accept-379-slake-that-thirst",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Slake That Thirst.",
            complete = QuestState(379, "activeOrCompleted"),
            route = {
                Point(1446, 0.5246, 0.2851, "Slake That Thirst",
                    "Travel to Slake That Thirst."),
            },
        },
        {
            id = "accept-1690-wastewander-justice",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Wastewander Justice.",
            complete = QuestState(1690, "activeOrCompleted"),
            route = {
                Point(1446, 0.5246, 0.2851, "Wastewander Justice",
                    "Travel to Wastewander Justice."),
            },
        },
        {
            id = "accept-3520-screecher-spirits",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Screecher Spirits.",
            complete = QuestState(3520, "activeOrCompleted"),
            route = {
                Point(1446, 0.6699, 0.2236, "Screecher Spirits",
                    "Travel to Screecher Spirits."),
            },
        },
        {
            id = "turnin-2872-stoley-s-debt",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stoley's Debt.",
            complete = QuestState(2872, "completed"),
            route = {
                Point(1446, 0.6711, 0.2398, "Stoley's Debt",
                    "Travel to Stoley's Debt."),
            },
        },
        {
            id = "turnin-379-slake-that-thirst",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Slake That Thirst.",
            complete = QuestState(379, "completed"),
            dependsOn = { "accept-379-slake-that-thirst" },
            route = {
                Point(1446, 0.5246, 0.2851, "Slake That Thirst",
                    "Travel to Slake That Thirst."),
            },
        },
        {
            id = "turnin-1690-wastewander-justice",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Wastewander Justice.",
            complete = QuestState(1690, "completed"),
            dependsOn = { "accept-1690-wastewander-justice" },
            route = {
                Point(1446, 0.5246, 0.2851, "Wastewander Justice",
                    "Travel to Wastewander Justice."),
            },
        },
        {
            id = "turnin-1707-water-pouch-bounty",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Water Pouch Bounty.",
            complete = QuestState(1707, "completed"),
            dependsOn = { "accept-1707-water-pouch-bounty" },
            route = {
                Point(1446, 0.5248, 0.2844, "Water Pouch Bounty",
                    "Travel to Water Pouch Bounty."),
            },
        },
        {
            id = "turnin-1117-rumors-for-kravel",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rumors for Kravel.",
            complete = QuestState(1117, "completed"),
            route = {
                Point(1441, 0.7779, 0.7727, "Rumors for Kravel",
                    "Travel to Rumors for Kravel."),
            },
        },
        {
            id = "accept-1118-back-to-booty-bay",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Back to Booty Bay.",
            complete = QuestState(1118, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Back to Booty Bay",
                    "Travel to Back to Booty Bay."),
            },
        },
        {
            id = "turnin-1137-news-for-fizzle",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in News for Fizzle.",
            complete = QuestState(1137, "completed"),
            route = {
                Point(1441, 0.7806, 0.7713, "News for Fizzle",
                    "Travel to News for Fizzle."),
            },
        },
        {
            id = "turnin-1183-goblin-sponsorship",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Goblin Sponsorship.",
            complete = QuestState(1183, "completed"),
            route = {
                Point(1441, 0.8018, 0.7588, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-1186-the-eighteenth-pilot",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept The Eighteenth Pilot.",
            complete = QuestState(1186, "activeOrCompleted"),
            route = {
                Point(1441, 0.8018, 0.7588, "The Eighteenth Pilot",
                    "Travel to The Eighteenth Pilot."),
            },
        },
        {
            id = "accept-1190-keeping-pace",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Keeping Pace.",
            complete = QuestState(1190, "activeOrCompleted"),
            route = {
                Point(1441, 0.8018, 0.7588, "Keeping Pace",
                    "Travel to Keeping Pace."),
            },
        },
        {
            id = "turnin-1186-the-eighteenth-pilot",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Eighteenth Pilot.",
            complete = QuestState(1186, "completed"),
            dependsOn = { "accept-1186-the-eighteenth-pilot" },
            route = {
                Point(1441, 0.8033, 0.7609, "The Eighteenth Pilot",
                    "Travel to The Eighteenth Pilot."),
            },
        },
        {
            id = "accept-1187-razzeric-s-tweaking",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Razzeric's Tweaking.",
            complete = QuestState(1187, "activeOrCompleted"),
            route = {
                Point(1441, 0.8033, 0.7609, "Razzeric's Tweaking",
                    "Travel to Razzeric's Tweaking."),
            },
        },
        {
            id = "accept-1191-zamek-s-distraction",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Zamek's Distraction.",
            complete = QuestState(1191, "activeOrCompleted"),
            route = {
                Point(1441, 0.7981, 0.7702, "Zamek's Distraction",
                    "Travel to Zamek's Distraction."),
            },
        },
        {
            id = "turnin-1190-keeping-pace",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Keeping Pace.",
            complete = QuestState(1190, "completed"),
            dependsOn = { "accept-1190-keeping-pace" },
            route = {
                Point(1441, 0.7721, 0.7738, "Keeping Pace",
                    "Travel to Keeping Pace."),
            },
        },
        {
            id = "accept-1194-rizzle-s-schematics",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Rizzle's Schematics.",
            complete = QuestState(1194, "activeOrCompleted"),
            route = {
                Point(1441, 0.7721, 0.7738, "Rizzle's Schematics",
                    "Travel to Rizzle's Schematics."),
            },
        },
        {
            id = "turnin-1194-rizzle-s-schematics",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rizzle's Schematics.",
            complete = QuestState(1194, "completed"),
            dependsOn = { "accept-1194-rizzle-s-schematics" },
            route = {
                Point(1441, 0.8018, 0.7588, "Rizzle's Schematics",
                    "Travel to Rizzle's Schematics."),
            },
        },
    },
})
