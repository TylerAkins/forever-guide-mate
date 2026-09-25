local _, ns = ...

-- Horde Era leveling route for the Arathi Highlands, levels 30-30.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    ARATHI = 1417,
    THUNDER_BLUFF = 1456,
    ORGRIMMAR = 1454,
    BARRENS = 1413,
    UNDERCITY = 1458,
    THOUSAND_NEEDLES = 1441,
    WETLANDS = 1437,
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
    id = "leveling-era-30-30-arathi-highlands",
    title = "30-30 Arathi Highlands (Era)",
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
            id = "travel-1718-orgrimmar",
            kind = "travel",
            priority = 30,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Travel to Orgrimmar.",
            route = {
                Point(MAP.ORGRIMMAR, 0.8020, 0.3240, "Orgrimmar",
                    "Travel to Orgrimmar."),
            },
        },
        {
            id = "accept-1718-the-islander",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept The Islander from Sorek in Orgrimmar.",
            complete = QuestState(1718, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.8020, 0.3240, "Sorek",
                    "Travel to Sorek."),
            },
        },
        {
            id = "travel-1719-fray-island",
            kind = "travel",
            priority = 50,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Travel to Fray Island.",
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4910, "Fray Island",
                    "Travel to Fray Island."),
            },
        },
        {
            id = "turnin-1718-the-islander",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in The Islander to Klannoc Macleod in Fray Island.",
            dependsOn = { "accept-1718-the-islander" },
            complete = QuestState(1718, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4910, "Klannoc Macleod",
                    "Travel to Klannoc Macleod."),
            },
        },
        {
            id = "accept-1719-the-affray",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept The Affray from Klannoc Macleod in Fray Island.",
            complete = QuestState(1719, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4910, "Klannoc Macleod",
                    "Travel to Klannoc Macleod."),
            },
        },
        {
            id = "objective-1719-the-affray",
            kind = "objective",
            priority = 80,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Kill the series of Mobs, bandage and eat in between Mobs. As for Big Will, you're given the privilege to attack him first because he's neutral, so just run back and Charge then use your Retaliation for Big Will.",
            dependsOn = { "accept-1719-the-affray" },
            complete = QuestState(1719, "complete"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4870, "Big Will",
                    "Travel to Big Will."),
            },
        },
        {
            id = "turnin-1719-the-affray",
            kind = "turnin",
            priority = 90,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in The Affray to Klannoc Macleod in Fray Island.",
            dependsOn = { "objective-1719-the-affray" },
            complete = QuestState(1719, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4910, "Klannoc Macleod",
                    "Travel to Klannoc Macleod."),
            },
        },
        {
            id = "travel-ratchet",
            kind = "travel",
            priority = 100,
            conditions = {
                all = {
                    { class = 9 },
                    { ["not"] = { quest = { id = 1801, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Ratchet.",
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Ratchet",
                    "Travel to Ratchet."),
            },
        },
        {
            id = "accept-1801-tome-of-cabal",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Tome of Cabal from Strahad Farsan in Ratchet.",
            complete = QuestState(1801, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Strahad Farsan",
                    "Travel to Strahad Farsan."),
            },
        },
        {
            id = "travel-undercity",
            kind = "travel",
            priority = 120,
            conditions = {
                all = {
                    { class = 9 },
                    { ["not"] = { quest = { id = 1803, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Undercity.",
            route = {
                Point(MAP.UNDERCITY, 0.7700, 0.3560, "Undercity",
                    "Travel to Undercity."),
            },
        },
        {
            id = "turnin-1801-tome-of-cabal",
            kind = "turnin",
            priority = 130,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Tome of Cabal to Jorah Annison in Undercity.",
            dependsOn = { "accept-1801-tome-of-cabal" },
            complete = QuestState(1801, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.7700, 0.3560, "Jorah Annison",
                    "Travel to Jorah Annison."),
            },
        },
        {
            id = "accept-1803-tome-of-cabal",
            kind = "accept",
            priority = 140,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Tome of Cabal from Jorah Annison in Undercity.",
            complete = QuestState(1803, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.7700, 0.3560, "Jorah Annison",
                    "Travel to Jorah Annison."),
            },
        },
        {
            id = "objective-1803-tome-of-cabal",
            kind = "objective",
            priority = 150,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Get the Tattered Manuscript from the Damaged Chest inside the centaur cave.",
            dependsOn = { "accept-1803-tome-of-cabal" },
            complete = QuestState(1803, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4350, 0.3270, "Tome of Cabal",
                    "Travel to Tome of Cabal."),
            },
        },
        {
            id = "travel-undercity-2",
            kind = "travel",
            priority = 160,
            conditions = {
                all = {
                    { class = 9 },
                    { ["not"] = { quest = { id = 1805, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Undercity.",
            route = {
                Point(MAP.UNDERCITY, 0.7700, 0.3560, "Undercity",
                    "Travel to Undercity."),
            },
        },
        {
            id = "turnin-1803-tome-of-cabal",
            kind = "turnin",
            priority = 170,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Tome of Cabal to Jorah Annison in Undercity.",
            dependsOn = { "objective-1803-tome-of-cabal" },
            complete = QuestState(1803, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.7700, 0.3560, "Jorah Annison",
                    "Travel to Jorah Annison."),
            },
        },
        {
            id = "accept-1805-tome-of-cabal",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Tome of Cabal from Jorah Annison in Undercity.",
            complete = QuestState(1805, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.7700, 0.3560, "Jorah Annison",
                    "Travel to Jorah Annison."),
            },
        },
        {
            id = "objective-1805-tome-of-cabal",
            kind = "objective",
            priority = 190,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Kill Dragonmaw Bonewarder and Dragonmaw Shadowwarder to collect 3 Rod of Channeling (49.7.4, 46.6).",
            dependsOn = { "accept-1805-tome-of-cabal" },
            complete = QuestState(1805, "complete"),
        },
        {
            id = "travel-1795-ratchet",
            kind = "travel",
            priority = 200,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Travel to Ratchet.",
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Ratchet",
                    "Travel to Ratchet."),
            },
        },
        {
            id = "turnin-1805-tome-of-cabal",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Tome of Cabal to Strahad Farsan in Ratchet.",
            dependsOn = { "objective-1805-tome-of-cabal" },
            complete = QuestState(1805, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Strahad Farsan",
                    "Travel to Strahad Farsan."),
            },
        },
        {
            id = "accept-1795-the-binding",
            kind = "accept",
            priority = 220,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept The Binding from Strahad Farsan in Ratchet.",
            complete = QuestState(1795, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Strahad Farsan",
                    "Travel to Strahad Farsan."),
            },
        },
        {
            id = "objective-1795-the-binding",
            kind = "objective",
            priority = 230,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Use Tome of the Cabal to summon the Summoned Felhunter and kill it.",
            dependsOn = { "accept-1795-the-binding" },
            complete = QuestState(1795, "complete"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Summoned Felhunter",
                    "Travel to Summoned Felhunter."),
            },
        },
        {
            id = "turnin-1795-the-binding",
            kind = "turnin",
            priority = 240,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in The Binding to Strahad Farsan in Ratchet.",
            dependsOn = { "objective-1795-the-binding" },
            complete = QuestState(1795, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Strahad Farsan",
                    "Travel to Strahad Farsan."),
            },
        },
        {
            id = "travel-655-hammerfall",
            kind = "travel",
            priority = 250,
            text = "Travel to Hammerfall in Arathi Highlands.",
            route = {
                Point(MAP.ARATHI, 0.3077, 0.5166, "Continue toward Hammerfall",
                    "Continue toward Hammerfall."),
                Point(MAP.ARATHI, 0.4549, 0.5900, "Continue toward Hammerfall",
                    "Continue toward Hammerfall."),
                Point(MAP.ARATHI, 0.5173, 0.5786, "Continue toward Hammerfall",
                    "Continue toward Hammerfall."),
                Point(MAP.ARATHI, 0.7298, 0.4335, "Hammerfall",
                    "Travel to Hammerfall."),
            },
        },
        {
            id = "accept-655-hammerfall",
            kind = "accept",
            priority = 260,
            text = "Accept Hammerfall from Gor'mul in Hammerfall.",
            complete = QuestState(655, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.7268, 0.3404, "Gor'mul",
                    "Travel to Gor'mul."),
            },
        },
        {
            id = "turnin-655-hammerfall",
            kind = "turnin",
            priority = 270,
            text = "Turn in Hammerfall to Tor'gan in Hammerfall.",
            dependsOn = { "accept-655-hammerfall" },
            complete = QuestState(655, "completed"),
            route = {
                Point(MAP.ARATHI, 0.7465, 0.3632, "Tor'gan",
                    "Travel to Tor'gan."),
            },
        },
        {
            id = "accept-672-raising-spirits",
            kind = "accept",
            priority = 280,
            text = "Accept Raising Spirits from Tor'gan in Hammerfall.",
            complete = QuestState(672, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.7465, 0.3632, "Tor'gan",
                    "Travel to Tor'gan."),
            },
        },
        {
            id = "objective-672-raising-spirits",
            kind = "objective",
            priority = 290,
            text = "Kill Highland Strider and collect 10 Highland Raptor Eye west of Hammerfall.",
            dependsOn = { "accept-672-raising-spirits" },
            complete = QuestState(672, "complete"),
            route = {
                Point(MAP.ARATHI, 0.5336, 0.4456, "Continue toward Raising Spirits",
                    "Continue toward Raising Spirits."),
                Point(MAP.ARATHI, 0.6400, 0.3700, "Highland Strider",
                    "Travel to Highland Strider."),
            },
        },
        {
            id = "turnin-672-raising-spirits",
            kind = "turnin",
            priority = 300,
            text = "Turn in Raising Spirits to Tor'gan in Hammerfall.",
            dependsOn = { "objective-672-raising-spirits" },
            complete = QuestState(672, "completed"),
            route = {
                Point(MAP.ARATHI, 0.7465, 0.3632, "Tor'gan",
                    "Travel to Tor'gan."),
            },
        },
        {
            id = "accept-674-raising-spirits",
            kind = "accept",
            priority = 310,
            text = "Accept Raising Spirits from Tor'gan in Hammerfall.",
            complete = QuestState(674, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.7465, 0.3632, "Tor'gan",
                    "Travel to Tor'gan."),
            },
        },
        {
            id = "turnin-674-raising-spirits",
            kind = "turnin",
            priority = 320,
            text = "Turn in Raising Spirits to Gor'mul in Hammerfall.",
            dependsOn = { "accept-674-raising-spirits" },
            complete = QuestState(674, "completed"),
            route = {
                Point(MAP.ARATHI, 0.7268, 0.3404, "Gor'mul",
                    "Travel to Gor'mul."),
            },
        },
        {
            id = "accept-675-raising-spirits",
            kind = "accept",
            priority = 330,
            text = "Accept Raising Spirits from Gor'mul in Hammerfall.",
            complete = QuestState(675, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.7268, 0.3404, "Gor'mul",
                    "Travel to Gor'mul."),
            },
        },
        {
            id = "turnin-675-raising-spirits",
            kind = "turnin",
            priority = 340,
            text = "Turn in Raising Spirits to Tor'gan in Hammerfall.",
            dependsOn = { "accept-675-raising-spirits" },
            complete = QuestState(675, "completed"),
            route = {
                Point(MAP.ARATHI, 0.7465, 0.3634, "Tor'gan",
                    "Travel to Tor'gan."),
            },
        },
    },
})
