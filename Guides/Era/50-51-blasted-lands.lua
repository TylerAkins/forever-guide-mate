local _, ns = ...

-- Alliance Era leveling route for the Blasted Lands, levels 50-51.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    BLASTED_LANDS = 1419,
    SWAMP_OF_SORROWS = 1435,
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
    id = "leveling-era-50-51-blasted-lands",
    title = "50-51 Blasted Lands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 50 } },
        },
    },
    goals = {
        {
            id = "accept-2783-petty-squabbles",
            kind = "accept",
            priority = 20,
            text = "Accept Petty Squabbles from Ambassador Ardalan in Nethergarde Keep.",
            complete = QuestState(2783, "activeOrCompleted"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.6757, 0.1929, "Ambassador Ardalan",
                    "Travel to Ambassador Ardalan."),
            },
        },
        {
            id = "turnin-2783-petty-squabbles",
            kind = "turnin",
            priority = 40,
            text = "Turn in Petty Squabbles to Fallen Hero of the Horde in Swamp of Sorrows.",
            dependsOn = { "accept-2783-petty-squabbles" },
            complete = QuestState(2783, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3424, 0.6611, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde."),
            },
        },
        {
            id = "accept-2801-a-tale-of-sorrow",
            kind = "accept",
            priority = 50,
            text = "Accept A Tale of Sorrow from Fallen Hero of the Horde in Swamp of Sorrows.",
            complete = QuestState(2801, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3424, 0.6611, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde."),
            },
        },
        {
            id = "objective-2801-a-tale-of-sorrow",
            kind = "objective",
            priority = 60,
            text = "Speak to Fallen Hero of the Horde until the quest is complete.",
            dependsOn = { "accept-2801-a-tale-of-sorrow" },
            complete = QuestState(2801, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3424, 0.6611, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde."),
            },
        },
        {
            id = "turnin-2801-a-tale-of-sorrow",
            kind = "turnin",
            priority = 70,
            text = "Turn in A Tale of Sorrow to Fallen Hero of the Horde in Swamp of Sorrows.",
            dependsOn = { "objective-2801-a-tale-of-sorrow" },
            complete = QuestState(2801, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3424, 0.6611, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde."),
            },
        },
        {
            id = "objective-2603-black-slayer",
            kind = "objective",
            priority = 80,
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
            priority = 90,
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
            priority = 100,
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
            priority = 110,
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
            priority = 120,
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
            priority = 130,
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
            priority = 140,
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
            priority = 150,
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
            priority = 160,
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
            priority = 170,
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
            priority = 180,
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
            priority = 190,
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
            priority = 200,
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
            priority = 210,
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
            priority = 220,
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
