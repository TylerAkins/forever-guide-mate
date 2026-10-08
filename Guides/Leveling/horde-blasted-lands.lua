local _, ns = ...

-- Forever Casual spine: Blasted Lands (50-51)
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
    BLASTED_LANDS = 1419,
}

ns:RegisterGuide({
    id = "leveling-era-horde-blasted-lands",
    title = "Blasted Lands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 50 } },
        },
    },
    goals = {
        {
            id = "accept-2581-snickerfang-jowls",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Snickerfang Jowls.",
            complete = QuestState(2581, "activeOrCompleted"),
            route = {
                Point(1419, 0.5055, 0.1421, "Snickerfang Jowls",
                    "Travel to Snickerfang Jowls."),
            },
        },
        {
            id = "accept-2583-a-boar-s-vitality",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept A Boar's Vitality.",
            complete = QuestState(2583, "activeOrCompleted"),
            route = {
                Point(1419, 0.5055, 0.1421, "A Boar's Vitality",
                    "Travel to A Boar's Vitality."),
            },
        },
        {
            id = "accept-2585-the-decisive-striker",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept The Decisive Striker.",
            complete = QuestState(2585, "activeOrCompleted"),
            route = {
                Point(1419, 0.5055, 0.1421, "The Decisive Striker",
                    "Travel to The Decisive Striker."),
            },
        },
        {
            id = "accept-2601-the-basilisk-s-bite",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept The Basilisk's Bite.",
            complete = QuestState(2601, "activeOrCompleted"),
            route = {
                Point(1419, 0.5064, 0.1430, "The Basilisk's Bite",
                    "Travel to The Basilisk's Bite."),
            },
        },
        {
            id = "accept-2603-vulture-s-vigor",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Vulture's Vigor.",
            complete = QuestState(2603, "activeOrCompleted"),
            route = {
                Point(1419, 0.5064, 0.1430, "Vulture's Vigor",
                    "Travel to Vulture's Vigor."),
            },
        },
        {
            id = "accept-3501-everything-counts-in-large-amounts",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Everything Counts In Large Amounts.",
            complete = QuestState(3501, "activeOrCompleted"),
            route = {
                Point(1419, 0.5180, 0.3564, "Everything Counts In Large Amounts",
                    "Travel to Everything Counts In Large Amounts."),
            },
        },
        {
            id = "accept-2521-to-serve-kum-isha",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept To Serve Kum'isha.",
            complete = QuestState(2521, "activeOrCompleted"),
            route = {
                Point(1419, 0.5180, 0.3564, "To Serve Kum'isha",
                    "Travel to To Serve Kum'isha."),
            },
        },
        {
            id = "turnin-3501-everything-counts-in-large-amounts",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Everything Counts In Large Amounts.",
            complete = QuestState(3501, "completed"),
            dependsOn = { "accept-3501-everything-counts-in-large-amounts" },
            route = {
                Point(1419, 0.5180, 0.3564, "Everything Counts In Large Amounts",
                    "Travel to Everything Counts In Large Amounts."),
            },
        },
        {
            id = "turnin-2521-to-serve-kum-isha",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in To Serve Kum'isha.",
            complete = QuestState(2521, "completed"),
            dependsOn = { "accept-2521-to-serve-kum-isha" },
            route = {
                Point(1419, 0.5180, 0.3564, "To Serve Kum'isha",
                    "Travel to To Serve Kum'isha."),
            },
        },
        {
            id = "turnin-2601-the-basilisk-s-bite",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Basilisk's Bite.",
            complete = QuestState(2601, "completed"),
            dependsOn = { "accept-2601-the-basilisk-s-bite" },
            route = {
                Point(1419, 0.5064, 0.1430, "The Basilisk's Bite",
                    "Travel to The Basilisk's Bite."),
            },
        },
        {
            id = "turnin-2603-vulture-s-vigor",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Vulture's Vigor.",
            complete = QuestState(2603, "completed"),
            dependsOn = { "accept-2603-vulture-s-vigor" },
            route = {
                Point(1419, 0.5064, 0.1430, "Vulture's Vigor",
                    "Travel to Vulture's Vigor."),
            },
        },
        {
            id = "turnin-2581-snickerfang-jowls",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Snickerfang Jowls.",
            complete = QuestState(2581, "completed"),
            dependsOn = { "accept-2581-snickerfang-jowls" },
            route = {
                Point(1419, 0.5055, 0.1421, "Snickerfang Jowls",
                    "Travel to Snickerfang Jowls."),
            },
        },
        {
            id = "turnin-2583-a-boar-s-vitality",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Boar's Vitality.",
            complete = QuestState(2583, "completed"),
            dependsOn = { "accept-2583-a-boar-s-vitality" },
            route = {
                Point(1419, 0.5055, 0.1421, "A Boar's Vitality",
                    "Travel to A Boar's Vitality."),
            },
        },
        {
            id = "turnin-2585-the-decisive-striker",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Decisive Striker.",
            complete = QuestState(2585, "completed"),
            dependsOn = { "accept-2585-the-decisive-striker" },
            route = {
                Point(1419, 0.5055, 0.1421, "The Decisive Striker",
                    "Travel to The Decisive Striker."),
            },
        },
    },
})
