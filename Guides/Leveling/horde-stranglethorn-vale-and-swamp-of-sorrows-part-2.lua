local _, ns = ...

-- Forever Casual spine: Stranglethorn Vale & Swamp of Sorrows (50-50)
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
    STRANGLETHORN_VALE = 1434,
    SWAMP_OF_SORROWS = 1435,
    DUSTWALLOW_MARSH = 1445,
}

ns:RegisterGuide({
    id = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
    title = "Stranglethorn Vale & Swamp of Sorrows",
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
            id = "turnin-2874-deliver-to-mackinley",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in Deliver to MacKinley.",
            complete = QuestState(2874, "completed"),
            route = {
                Point(1434, 0.2778, 0.7707, "Deliver to MacKinley",
                    "Travel to Deliver to MacKinley."),
            },
        },
        {
            id = "turnin-580-whiskey-slim-s-lost-grog",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in Whiskey Slim's Lost Grog.",
            complete = QuestState(580, "completed"),
            route = {
                Point(1434, 0.2713, 0.7745, "Whiskey Slim's Lost Grog",
                    "Travel to Whiskey Slim's Lost Grog."),
            },
        },
        {
            id = "turnin-1122-report-back-to-fizzlebub",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in Report Back to Fizzlebub.",
            complete = QuestState(1122, "completed"),
            route = {
                Point(1434, 0.2712, 0.7721, "Report Back to Fizzlebub",
                    "Travel to Report Back to Fizzlebub."),
            },
        },
        {
            id = "objective-197-1-tethis",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Kill Tethis.",
            complete = QuestObjective(197, 1, "Tethis"),
            route = {
                Point(1434, 0.3040, 0.4060, "Tethis",
                    "Travel to Tethis."),
            },
        },
        {
            id = "turnin-197-raptor-mastery",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in Raptor Mastery.",
            complete = QuestState(197, "completed"),
            dependsOn = { "objective-197-1-tethis" },
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "accept-208-big-game-hunter",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept Big Game Hunter.",
            complete = QuestState(208, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1081, "Big Game Hunter",
                    "Travel to Big Game Hunter."),
            },
        },
        {
            id = "objective-208-1-king-bangalash",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Kill King Bangalash.",
            complete = QuestObjective(208, 1, "King Bangalash"),
            dependsOn = { "accept-208-big-game-hunter" },
            route = {
                Point(1434, 0.3835, 0.3555, "King Bangalash",
                    "Travel to King Bangalash."),
            },
        },
        {
            id = "turnin-208-big-game-hunter",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in Big Game Hunter.",
            complete = QuestState(208, "completed"),
            dependsOn = { "accept-208-big-game-hunter", "objective-208-1-king-bangalash" },
            route = {
                Point(1434, 0.3566, 0.1081, "Big Game Hunter",
                    "Travel to Big Game Hunter."),
            },
        },
        {
            id = "accept-608-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept The Bloodsail Buccaneers.",
            complete = QuestState(608, "activeOrCompleted"),
            route = {
                Point(1434, 0.2717, 0.7701, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "accept-594-message-in-a-bottle",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept Message in a Bottle.",
            complete = QuestState(594, "activeOrCompleted"),
            route = {
                Point(1434, 0.2800, 0.7346, "Message in a Bottle",
                    "Travel to Message in a Bottle."),
            },
        },
        {
            id = "objective-608-2-captain-keelhaul",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Kill Captain Keelhaul.",
            complete = QuestObjective(608, 2, "Captain Keelhaul"),
            dependsOn = { "accept-608-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.2920, 0.8834, "Captain Keelhaul",
                    "Travel to Captain Keelhaul."),
            },
        },
        {
            id = "accept-624-cortello-s-riddle",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Use the A Weathered Treasure Map to accept Cortello's Riddle.",
            complete = QuestState(624, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "objective-608-3-fleet-master-firallon",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Kill Fleet Master Firallon.",
            complete = QuestObjective(608, 3, "Fleet Master Firallon"),
            dependsOn = { "accept-608-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.3058, 0.9064, "Fleet Master Firallon",
                    "Travel to Fleet Master Firallon."),
            },
        },
        {
            id = "objective-608-1-captain-stillwater",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Kill Captain Stillwater.",
            complete = QuestObjective(608, 1, "Captain Stillwater"),
            dependsOn = { "accept-608-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.3287, 0.8820, "Captain Stillwater",
                    "Travel to Captain Stillwater."),
            },
        },
        {
            id = "turnin-594-message-in-a-bottle",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in Message in a Bottle.",
            complete = QuestState(594, "completed"),
            dependsOn = { "accept-594-message-in-a-bottle" },
            route = {
                Point(1434, 0.3853, 0.8058, "Message in a Bottle",
                    "Travel to Message in a Bottle."),
            },
        },
        {
            id = "turnin-608-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Bloodsail Buccaneers.",
            complete = QuestState(608, "completed"),
            dependsOn = { "accept-608-the-bloodsail-buccaneers", "objective-608-2-captain-keelhaul", "objective-608-3-fleet-master-firallon", "objective-608-1-captain-stillwater" },
            route = {
                Point(1434, 0.2956, 0.7251, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "accept-2623-the-swamp-talker",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept The Swamp Talker.",
            complete = QuestState(2623, "activeOrCompleted"),
            route = {
                Point(1435, 0.4498, 0.5734, "The Swamp Talker",
                    "Travel to The Swamp Talker."),
            },
        },
        {
            id = "turnin-1444-return-to-fel-zerul",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in Return to Fel'Zerul.",
            complete = QuestState(1444, "completed"),
            route = {
                Point(1435, 0.4793, 0.5479, "Return to Fel'Zerul",
                    "Travel to Fel'Zerul."),
            },
        },
        {
            id = "objective-2623-1-swamp-talker",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Kill Swamp Talker.",
            complete = QuestObjective(2623, 1, "Swamp Talker"),
            dependsOn = { "accept-2623-the-swamp-talker" },
            route = {
                Point(1435, 0.6637, 0.7654, "Swamp Talker",
                    "Travel to Swamp Talker."),
            },
        },
        {
            id = "turnin-624-cortello-s-riddle",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in Cortello's Riddle.",
            complete = QuestState(624, "completed"),
            dependsOn = { "accept-624-cortello-s-riddle" },
            route = {
                Point(1435, 0.6637, 0.7654, "Cortello's Riddle",
                    "Travel to Cortello's Riddle."),
            },
        },
        {
            id = "accept-625-cortello-s-riddle",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept Cortello's Riddle.",
            complete = QuestState(625, "activeOrCompleted"),
            route = {
                Point(1435, 0.6637, 0.7654, "Cortello's Riddle",
                    "Travel to Cortello's Riddle."),
            },
        },
        {
            id = "accept-1173-challenge-overlord-mok-morokk",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept Challenge Overlord Mok'Morokk.",
            complete = QuestState(1173, "activeOrCompleted"),
            route = {
                Point(1445, 0.3630, 0.3142, "Challenge Overlord Mok'Morokk",
                    "Travel to Challenge Overlord Mok'Morokk."),
            },
        },
        {
            id = "turnin-1173-challenge-overlord-mok-morokk",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in Challenge Overlord Mok'Morokk.",
            complete = QuestState(1173, "completed"),
            dependsOn = { "accept-1173-challenge-overlord-mok-morokk" },
            route = {
                Point(1445, 0.3715, 0.3308, "Challenge Overlord Mok'Morokk",
                    "Travel to Challenge Overlord Mok'Morokk."),
            },
        },
        {
            id = "turnin-625-cortello-s-riddle",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in Cortello's Riddle.",
            complete = QuestState(625, "completed"),
            dependsOn = { "accept-625-cortello-s-riddle" },
            route = {
                Point(1445, 0.3110, 0.6615, "Cortello's Riddle",
                    "Travel to Cortello's Riddle."),
            },
        },
        {
            id = "accept-626-cortello-s-riddle",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Cortello's Riddle.",
            complete = QuestState(626, "activeOrCompleted"),
            route = {
                Point(1445, 0.3110, 0.6615, "Cortello's Riddle",
                    "Travel to Cortello's Riddle."),
            },
        },
        {
            id = "objective-4449-1-silk-cloth",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Collect 15 Silk Cloth.",
            complete = QuestObjective(4449, 1, "Silk Cloth"),
            route = {
                Point(1413, 0.6264, 0.3742, "Silk Cloth",
                    "Travel to Silk Cloth."),
            },
        },
        {
            id = "turnin-2623-the-swamp-talker",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Swamp Talker.",
            complete = QuestState(2623, "completed"),
            dependsOn = { "accept-2623-the-swamp-talker", "objective-2623-1-swamp-talker" },
            route = {
                Point(1435, 0.3429, 0.6613, "The Swamp Talker",
                    "Travel to The Swamp Talker."),
            },
        },
        {
            id = "accept-2801-a-tale-of-sorrow",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept A Tale of Sorrow.",
            complete = QuestState(2801, "activeOrCompleted"),
            route = {
                Point(1435, 0.3429, 0.6613, "A Tale of Sorrow",
                    "Travel to A Tale of Sorrow."),
            },
        },
        {
            id = "turnin-2801-a-tale-of-sorrow",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Tale of Sorrow.",
            complete = QuestState(2801, "completed"),
            dependsOn = { "accept-2801-a-tale-of-sorrow" },
            route = {
                Point(1435, 0.3429, 0.6613, "A Tale of Sorrow",
                    "Travel to A Tale of Sorrow."),
            },
        },
    },
})
