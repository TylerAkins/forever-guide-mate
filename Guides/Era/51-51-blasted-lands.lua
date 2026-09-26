local _, ns = ...

-- Horde Era leveling route for the Blasted Lands, levels 51-51.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- The bloodmage buffs (2581, 2583, 2585, 2601, 2603) are repeatable and do not
-- stay complete. Those steps appear only while the quest is in your log.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    BLASTED_LANDS = 1419,
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
    id = "leveling-era-51-51-blasted-lands",
    title = "51-51 Blasted Lands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 51 } },
        },
    },
    goals = {
        {
            id = "objective-2603-black-slayer",
            kind = "objective",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 2603, state = "active" } },
                },
            },
            text = "Collect 14 Vulture Gizzard from Black Slayer, East of the road.",
            dependsOn = { "accept-2603-vulture-s-vigor" },
            complete = QuestState(2603, "complete"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5300, 0.3800, "Continue toward Black Slayer",
                    "Continue toward Black Slayer."),
                Point(MAP.BLASTED_LANDS, 0.5900, 0.2700, "Black Slayer",
                    "Travel to Black Slayer."),
            },
        },
        {
            id = "objective-2601-redstone-basilisk",
            kind = "objective",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 2601, state = "active" } },
                },
            },
            text = "Collect 11 Basilisk Brain from Redstone Basilisk or Redstone Crystalhide, East of the road.",
            dependsOn = { "accept-2601-the-basilisk-s-bite" },
            complete = QuestState(2601, "complete"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.6000, 0.4000, "Continue toward Redstone Basilisk",
                    "Continue toward Redstone Basilisk."),
                Point(MAP.BLASTED_LANDS, 0.5700, 0.3100, "Redstone Basilisk",
                    "Travel to Redstone Basilisk."),
            },
        },
        {
            id = "objective-2583-helboar",
            kind = "objective",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 2583, state = "active" } },
                },
            },
            text = "Collect 6 Blasted Boar Lung from Helboar or Ashmane Boar, East of the road.",
            dependsOn = { "accept-2583-a-boar-s-vitality" },
            complete = QuestState(2583, "complete"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5250, 0.5400, "Continue toward Helboar",
                    "Continue toward Helboar."),
                Point(MAP.BLASTED_LANDS, 0.5700, 0.3100, "Helboar",
                    "Travel to Helboar."),
            },
        },
        {
            id = "objective-2585-scorpok-stinger",
            kind = "objective",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 2585, state = "active" } },
                },
            },
            text = "Collect 6 Scorpok Pincer from Scorpok Stinger, West of the road.",
            dependsOn = { "accept-2585-the-decisive-striker" },
            complete = QuestState(2585, "complete"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.4700, 0.2000, "Scorpok Stinger",
                    "Travel to Scorpok Stinger."),
            },
        },
        {
            id = "objective-2581-snickerfang-hyena",
            kind = "objective",
            priority = 60,
            conditions = {
                all = {
                    { quest = { id = 2581, state = "active" } },
                },
            },
            text = "Collect 5 Snickerfang Jowl from Snickerfang Hyena or Starving Snickerfang West of the road.",
            dependsOn = { "accept-2581-snickerfang-jowls" },
            complete = QuestState(2581, "complete"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.4700, 0.2000, "Continue toward Snickerfang Hyena",
                    "Continue toward Snickerfang Hyena."),
                Point(MAP.BLASTED_LANDS, 0.5000, 0.3800, "Snickerfang Hyena",
                    "Travel to Snickerfang Hyena."),
            },
        },
        {
            id = "accept-2601-the-basilisk-s-bite",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 2601, state = "active" } },
                },
            },
            text = "Accept The Basilisk's Bite from Bloodmage Lynnore in Dreadmaul Hold.",
            complete = QuestState(2601, "activeOrCompleted"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5065, 0.1427, "Bloodmage Lynnore",
                    "Travel to Bloodmage Lynnore."),
            },
        },
        {
            id = "accept-2603-vulture-s-vigor",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { quest = { id = 2603, state = "active" } },
                },
            },
            text = "Accept Vulture's Vigor from Bloodmage Lynnore in Dreadmaul Hold.",
            complete = QuestState(2603, "activeOrCompleted"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5059, 0.1423, "Bloodmage Lynnore",
                    "Travel to Bloodmage Lynnore."),
            },
        },
        {
            id = "accept-2581-snickerfang-jowls",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { quest = { id = 2581, state = "active" } },
                },
            },
            text = "Accept Snickerfang Jowls from Bloodmage Drazial in Dreadmaul Hold.",
            complete = QuestState(2581, "activeOrCompleted"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5055, 0.1421, "Bloodmage Drazial",
                    "Travel to Bloodmage Drazial."),
            },
        },
        {
            id = "accept-2583-a-boar-s-vitality",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { quest = { id = 2583, state = "active" } },
                },
            },
            text = "Accept A Boar's Vitality from Bloodmage Drazial in Dreadmaul Hold.",
            complete = QuestState(2583, "activeOrCompleted"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5055, 0.1421, "Bloodmage Drazial",
                    "Travel to Bloodmage Drazial."),
            },
        },
        {
            id = "accept-2585-the-decisive-striker",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { quest = { id = 2585, state = "active" } },
                },
            },
            text = "Accept The Decisive Striker from Bloodmage Drazial in Dreadmaul Hold.",
            complete = QuestState(2585, "activeOrCompleted"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5055, 0.1421, "Bloodmage Drazial",
                    "Travel to Bloodmage Drazial."),
            },
        },
        {
            id = "turnin-2601-the-basilisk-s-bite",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { quest = { id = 2601, state = "active" } },
                },
            },
            text = "Turn in The Basilisk's Bite to Bloodmage Lynnore in Dreadmaul Hold.",
            dependsOn = { "objective-2601-redstone-basilisk" },
            complete = QuestState(2601, "completed"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5065, 0.1427, "Bloodmage Lynnore",
                    "Travel to Bloodmage Lynnore."),
            },
        },
        {
            id = "turnin-2603-vulture-s-vigor",
            kind = "turnin",
            priority = 130,
            conditions = {
                all = {
                    { quest = { id = 2603, state = "active" } },
                },
            },
            text = "Turn in Vulture's Vigor to Bloodmage Lynnore in Dreadmaul Hold.",
            dependsOn = { "objective-2603-black-slayer" },
            complete = QuestState(2603, "completed"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5059, 0.1423, "Bloodmage Lynnore",
                    "Travel to Bloodmage Lynnore."),
            },
        },
        {
            id = "turnin-2581-snickerfang-jowls",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 2581, state = "active" } },
                },
            },
            text = "Turn in Snickerfang Jowls to Bloodmage Drazial in Dreadmaul Hold.",
            dependsOn = { "objective-2581-snickerfang-hyena" },
            complete = QuestState(2581, "completed"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5055, 0.1421, "Bloodmage Drazial",
                    "Travel to Bloodmage Drazial."),
            },
        },
        {
            id = "turnin-2583-a-boar-s-vitality",
            kind = "turnin",
            priority = 150,
            conditions = {
                all = {
                    { quest = { id = 2583, state = "active" } },
                },
            },
            text = "Turn in A Boar's Vitality to Bloodmage Drazial in Dreadmaul Hold.",
            dependsOn = { "objective-2583-helboar" },
            complete = QuestState(2583, "completed"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5055, 0.1421, "Bloodmage Drazial",
                    "Travel to Bloodmage Drazial."),
            },
        },
        {
            id = "turnin-2585-the-decisive-striker",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { quest = { id = 2585, state = "active" } },
                },
            },
            text = "Turn in The Decisive Striker to Bloodmage Drazial in Dreadmaul Hold.",
            dependsOn = { "objective-2585-scorpok-stinger" },
            complete = QuestState(2585, "completed"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.5055, 0.1421, "Bloodmage Drazial",
                    "Travel to Bloodmage Drazial."),
            },
        },
    },
})
