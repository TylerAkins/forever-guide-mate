local _, ns = ...

-- Forever Casual spine: Arathi Highlands (32-33)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves:
-- 97539 Silky Sutures from Doctor Gregory Victor at Hammerfall.
-- 92519 Ward Restocking has no start pin — omitted until Wowhead publishes one.
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
    ARATHI_HIGHLANDS = 1417,
    HILLSBRAD_FOOTHILLS = 1424,
    UNDERCITY = 1458,
}

ns:RegisterGuide({
    id = "leveling-era-horde-arathi-highlands",
    title = "Arathi Highlands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 32 } },
        },
    },
    goals = {
        {
            id = "objective-676-2-boulderfist-enforcer",
            kind = "objective",
            priority = 10,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Boulderfist Enforcer.",
            complete = QuestObjective(676, 2, "Boulderfist Enforcer"),
            route = {
                Point(1417, 0.3481, 0.4414, "Boulderfist Enforcer",
                    "Travel to Boulderfist Enforcer."),
            },
        },
        {
            id = "objective-1164-2-marcel-dabyrie",
            kind = "objective",
            priority = 20,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Kill Marcel Dabyrie.",
            complete = QuestObjective(1164, 2, "Marcel Dabyrie"),
            route = {
                Point(1417, 0.3482, 0.4415, "Marcel Dabyrie",
                    "Travel to Marcel Dabyrie."),
            },
        },
        {
            id = "objective-1164-3-fardel-dabyrie",
            kind = "objective",
            priority = 30,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Kill Fardel Dabyrie.",
            complete = QuestObjective(1164, 3, "Fardel Dabyrie"),
            route = {
                Point(1417, 0.5654, 0.3870, "Fardel Dabyrie",
                    "Travel to Fardel Dabyrie."),
            },
        },
        {
            id = "objective-1164-1-kenata-dabyrie",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Kill Kenata Dabyrie.",
            complete = QuestObjective(1164, 1, "Kenata Dabyrie"),
            route = {
                Point(1417, 0.5637, 0.3608, "Kenata Dabyrie",
                    "Travel to Kenata Dabyrie."),
            },
        },
        {
            id = "accept-642-the-princess-trapped",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept The Princess Trapped.",
            complete = QuestState(642, "activeOrCompleted"),
            route = {
                Point(1417, 0.6248, 0.3380, "The Princess Trapped",
                    "Travel to The Princess Trapped."),
            },
        },
        {
            id = "turnin-676-the-hammer-may-fall",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Hammer May Fall.",
            complete = QuestState(676, "completed"),
            dependsOn = { "objective-676-2-boulderfist-enforcer" },
            route = {
                Point(1417, 0.7424, 0.3391, "The Hammer May Fall",
                    "Travel to The Hammer May Fall."),
            },
        },
        {
            id = "accept-677-call-to-arms",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Accept Call to Arms.",
            complete = QuestState(677, "activeOrCompleted"),
            route = {
                Point(1417, 0.7424, 0.3391, "Call to Arms",
                    "Travel to Call to Arms."),
            },
        },
        {
            id = "accept-655-hammerfall",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Accept Hammerfall.",
            complete = QuestState(655, "activeOrCompleted"),
            route = {
                Point(1417, 0.7267, 0.3412, "Hammerfall",
                    "Travel to Hammerfall."),
            },
        },
        {
            id = "turnin-655-hammerfall",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hammerfall.",
            complete = QuestState(655, "completed"),
            dependsOn = { "accept-655-hammerfall" },
            route = {
                Point(1417, 0.7471, 0.3629, "Hammerfall",
                    "Travel to Hammerfall."),
            },
        },
        {
            id = "accept-672-raising-spirits",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Accept Raising Spirits.",
            complete = QuestState(672, "activeOrCompleted"),
            route = {
                Point(1417, 0.7471, 0.3629, "Raising Spirits",
                    "Travel to Raising Spirits."),
            },
        },
        {
            id = "accept-671-foul-magics",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Accept Foul Magics.",
            complete = QuestState(671, "activeOrCompleted"),
            route = {
                Point(1417, 0.7471, 0.3629, "Foul Magics",
                    "Travel to Foul Magics."),
            },
        },
        {
            id = "woven-accept-97539-silky-sutures",
            kind = "accept",
            priority = 111,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Silky Sutures from Doctor Gregory Victor at Hammerfall.",
            complete = QuestState(97539, "activeOrCompleted"),
            route = {
                Point(1417, 0.7340, 0.3680, "Doctor Gregory Victor",
                    "Travel to Doctor Gregory Victor."),
            },
        },
        {
            id = "woven-objective-97539-silky-sutures",
            kind = "objective",
            priority = 112,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Silky Sutures: collect Surgical Spidersilk.",
            complete = QuestObjective(97539, 1, "Surgical Spidersilk"),
            dependsOn = { "woven-accept-97539-silky-sutures" },
            useClientPin = true,
            route = {
                Point(1417, 0.7340, 0.3680, "Doctor Gregory Victor",
                    "Travel to Doctor Gregory Victor."),
            },
        },
        {
            id = "woven-turnin-97539-silky-sutures",
            kind = "turnin",
            priority = 113,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Silky Sutures to Doctor Gregory Victor at Hammerfall.",
            complete = QuestState(97539, "completed"),
            dependsOn = { "woven-accept-97539-silky-sutures", "woven-objective-97539-silky-sutures" },
            route = {
                Point(1417, 0.7340, 0.3680, "Doctor Gregory Victor",
                    "Travel to Doctor Gregory Victor."),
            },
        },
        {
            id = "objective-671-1-syndicate-pathstalker",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Kill Syndicate Pathstalker.",
            complete = QuestObjective(671, 1, "Syndicate Pathstalker"),
            dependsOn = { "accept-671-foul-magics" },
            route = {
                Point(1417, 0.3340, 0.3000, "Syndicate Pathstalker",
                    "Travel to Syndicate Pathstalker."),
            },
        },
        {
            id = "objective-677-3-witherbark-witch-doctor",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Kill 8 Witherbark Witch Doctor.",
            complete = QuestObjective(677, 3, "Witherbark Witch Doctor"),
            dependsOn = { "accept-677-call-to-arms" },
            route = {
                Point(1417, 0.6580, 0.6800, "Witherbark Witch Doctor",
                    "Travel to Witherbark Witch Doctor."),
            },
        },
        {
            id = "objective-677-2-witherbark-headhunter",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Witherbark Headhunter.",
            complete = QuestObjective(677, 2, "Witherbark Headhunter"),
            dependsOn = { "accept-677-call-to-arms" },
            route = {
                Point(1417, 0.6580, 0.6800, "Witherbark Headhunter",
                    "Travel to Witherbark Headhunter."),
            },
        },
        {
            id = "objective-677-1-witherbark-axe-thrower",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Witherbark Axe Thrower.",
            complete = QuestObjective(677, 1, "Witherbark Axe Thrower"),
            dependsOn = { "accept-677-call-to-arms" },
            route = {
                Point(1417, 0.6580, 0.6800, "Witherbark Axe Thrower",
                    "Travel to Witherbark Axe Thrower."),
            },
        },
        {
            id = "turnin-671-foul-magics",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in Foul Magics.",
            complete = QuestState(671, "completed"),
            dependsOn = { "accept-671-foul-magics", "objective-671-1-syndicate-pathstalker" },
            route = {
                Point(1417, 0.7471, 0.3629, "Foul Magics",
                    "Travel to Foul Magics."),
            },
        },
        {
            id = "turnin-672-raising-spirits",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in Raising Spirits.",
            complete = QuestState(672, "completed"),
            dependsOn = { "accept-672-raising-spirits" },
            route = {
                Point(1417, 0.7471, 0.3629, "Raising Spirits",
                    "Travel to Raising Spirits."),
            },
        },
        {
            id = "accept-674-raising-spirits",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Accept Raising Spirits.",
            complete = QuestState(674, "activeOrCompleted"),
            route = {
                Point(1417, 0.7471, 0.3629, "Raising Spirits",
                    "Travel to Raising Spirits."),
            },
        },
        {
            id = "turnin-674-raising-spirits",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in Raising Spirits.",
            complete = QuestState(674, "completed"),
            dependsOn = { "accept-674-raising-spirits" },
            route = {
                Point(1417, 0.7267, 0.3412, "Raising Spirits",
                    "Travel to Raising Spirits."),
            },
        },
        {
            id = "accept-675-raising-spirits",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Accept Raising Spirits.",
            complete = QuestState(675, "activeOrCompleted"),
            route = {
                Point(1417, 0.7267, 0.3412, "Raising Spirits",
                    "Travel to Raising Spirits."),
            },
        },
        {
            id = "turnin-675-raising-spirits",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in Raising Spirits.",
            complete = QuestState(675, "completed"),
            dependsOn = { "accept-675-raising-spirits" },
            route = {
                Point(1417, 0.7471, 0.3629, "Raising Spirits",
                    "Travel to Raising Spirits."),
            },
        },
        {
            id = "turnin-677-call-to-arms",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in Call to Arms.",
            complete = QuestState(677, "completed"),
            dependsOn = { "accept-677-call-to-arms", "objective-677-3-witherbark-witch-doctor", "objective-677-2-witherbark-headhunter", "objective-677-1-witherbark-axe-thrower" },
            route = {
                Point(1417, 0.7424, 0.3391, "Call to Arms",
                    "Travel to Call to Arms."),
            },
        },
        {
            id = "turnin-509-elixir-of-agony",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in Elixir of Agony.",
            complete = QuestState(509, "completed"),
            route = {
                Point(1424, 0.6144, 0.1906, "Elixir of Agony",
                    "Travel to Elixir of Agony."),
            },
        },
        {
            id = "accept-513-elixir-of-agony",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Accept Elixir of Agony.",
            complete = QuestState(513, "activeOrCompleted"),
            route = {
                Point(1424, 0.6144, 0.1906, "Elixir of Agony",
                    "Travel to Elixir of Agony."),
            },
        },
        {
            id = "turnin-1164-to-steal-from-thieves",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in To Steal From Thieves.",
            complete = QuestState(1164, "completed"),
            dependsOn = { "objective-1164-2-marcel-dabyrie", "objective-1164-3-fardel-dabyrie", "objective-1164-1-kenata-dabyrie" },
            route = {
                Point(1458, 0.6384, 0.4945, "To Steal From Thieves",
                    "Travel to To Steal From Thieves."),
            },
        },
        {
            id = "turnin-513-elixir-of-agony",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in Elixir of Agony.",
            complete = QuestState(513, "completed"),
            dependsOn = { "accept-513-elixir-of-agony" },
            route = {
                Point(1458, 0.5284, 0.7763, "Elixir of Agony",
                    "Travel to Elixir of Agony."),
            },
        },
        {
            id = "turnin-550-battle-of-hillsbrad",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Turn in Battle of Hillsbrad.",
            complete = QuestState(550, "completed"),
            route = {
                Point(1458, 0.4784, 0.7646, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
    },
})
