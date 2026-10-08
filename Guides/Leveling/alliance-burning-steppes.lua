local _, ns = ...

-- Forever Casual spine: Burning Steppes (56-57)
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
    BURNING_STEPPES = 1428,
    REDRIDGE_MOUNTAINS = 1433,
    STORMWIND_CITY = 1453,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-burning-steppes",
    title = "Burning Steppes",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 56 } },
        },
    },
    goals = {
        {
            id = "accept-3702-the-smoldering-ruins-of-thaurissan",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Smoldering Ruins of Thaurissan.",
            complete = QuestState(3702, "activeOrCompleted"),
            route = {
                Point(1455, 0.4451, 0.4957, "The Smoldering Ruins of Thaurissan",
                    "Travel to The Smoldering Ruins of Thaurissan."),
            },
        },
        {
            id = "turnin-3702-the-smoldering-ruins-of-thaurissan",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Smoldering Ruins of Thaurissan.",
            complete = QuestState(3702, "completed"),
            dependsOn = { "accept-3702-the-smoldering-ruins-of-thaurissan" },
            route = {
                Point(1455, 0.3837, 0.5531, "The Smoldering Ruins of Thaurissan",
                    "Travel to The Smoldering Ruins of Thaurissan."),
            },
        },
        {
            id = "accept-3701-the-smoldering-ruins-of-thaurissan",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Smoldering Ruins of Thaurissan.",
            complete = QuestState(3701, "activeOrCompleted"),
            route = {
                Point(1455, 0.3837, 0.5531, "The Smoldering Ruins of Thaurissan",
                    "Travel to The Smoldering Ruins of Thaurissan."),
            },
        },
        {
            id = "turnin-3461-return-to-tymor",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Tymor.",
            complete = QuestState(3461, "completed"),
            route = {
                Point(1455, 0.3097, 0.0482, "Return to Tymor",
                    "Travel to Tymor."),
            },
        },
        {
            id = "turnin-4512-a-little-slime-goes-a-long-way",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Little Slime Goes a Long Way.",
            complete = QuestState(4512, "completed"),
            route = {
                Point(1455, 0.7577, 0.2337, "A Little Slime Goes a Long Way",
                    "Travel to A Little Slime Goes a Long Way."),
            },
        },
        {
            id = "accept-3824-gor-tesh-the-brute-lord",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept Gor'tesh the Brute Lord.",
            complete = QuestState(3824, "activeOrCompleted"),
            route = {
                Point(1428, 0.8456, 0.6868, "Gor'tesh the Brute Lord",
                    "Travel to Gor'tesh the Brute Lord."),
            },
        },
        {
            id = "accept-4283-fifty-yep",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept FIFTY! YEP!.",
            complete = QuestState(4283, "activeOrCompleted"),
            route = {
                Point(1428, 0.8456, 0.6868, "FIFTY! YEP!",
                    "Travel to FIFTY! YEP!."),
            },
        },
        {
            id = "accept-4182-dragonkin-menace",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept Dragonkin Menace.",
            complete = QuestState(4182, "activeOrCompleted"),
            route = {
                Point(1428, 0.8582, 0.6894, "Dragonkin Menace",
                    "Travel to Dragonkin Menace."),
            },
        },
        {
            id = "accept-4726-broodling-essence",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept Broodling Essence.",
            complete = QuestState(4726, "activeOrCompleted"),
            route = {
                Point(1428, 0.6524, 0.2400, "Broodling Essence",
                    "Travel to Broodling Essence."),
            },
        },
        {
            id = "accept-4296-tablet-of-the-seven",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept Tablet of the Seven.",
            complete = QuestState(4296, "activeOrCompleted"),
            route = {
                Point(1428, 0.6516, 0.2392, "Tablet of the Seven",
                    "Travel to Tablet of the Seven."),
            },
        },
        {
            id = "accept-4022-a-taste-of-flame",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Taste of Flame.",
            complete = QuestState(4022, "activeOrCompleted"),
            route = {
                Point(1428, 0.9506, 0.3157, "A Taste of Flame",
                    "Travel to A Taste of Flame."),
            },
        },
        {
            id = "objective-4022-1-frenzied-black-drake",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Kill Frenzied Black Drake.",
            complete = QuestObjective(4022, 1, "Frenzied Black Drake"),
            dependsOn = { "accept-4022-a-taste-of-flame" },
            route = {
                Point(1428, 0.9506, 0.3157, "Frenzied Black Drake",
                    "Travel to Frenzied Black Drake."),
            },
        },
        {
            id = "turnin-4022-a-taste-of-flame",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Taste of Flame.",
            complete = QuestState(4022, "completed"),
            dependsOn = { "accept-4022-a-taste-of-flame", "objective-4022-1-frenzied-black-drake" },
            route = {
                Point(1428, 0.9506, 0.3157, "A Taste of Flame",
                    "Travel to A Taste of Flame."),
            },
        },
        {
            id = "objective-3824-1-gor-tesh",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Kill Gor'tesh.",
            complete = QuestObjective(3824, 1, "Gor'tesh"),
            dependsOn = { "accept-3824-gor-tesh-the-brute-lord" },
            route = {
                Point(1428, 0.3926, 0.5536, "Gor'tesh",
                    "Travel to Gor'tesh."),
            },
        },
        {
            id = "turnin-3824-gor-tesh-the-brute-lord",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Gor'tesh the Brute Lord.",
            complete = QuestState(3824, "completed"),
            dependsOn = { "accept-3824-gor-tesh-the-brute-lord", "objective-3824-1-gor-tesh" },
            route = {
                Point(1428, 0.8285, 0.6333, "Gor'tesh the Brute Lord",
                    "Travel to Gor'tesh the Brute Lord."),
            },
        },
        {
            id = "accept-3825-ogre-head-on-a-stick-party",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ogre Head On A Stick = Party.",
            complete = QuestState(3825, "activeOrCompleted"),
            route = {
                Point(1428, 0.8285, 0.6333, "Ogre Head On A Stick = Party",
                    "Travel to Ogre Head On A Stick = Party."),
            },
        },
        {
            id = "turnin-4283-fifty-yep",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in FIFTY! YEP!.",
            complete = QuestState(4283, "completed"),
            dependsOn = { "accept-4283-fifty-yep" },
            route = {
                Point(1428, 0.8285, 0.6333, "FIFTY! YEP!",
                    "Travel to FIFTY! YEP!."),
            },
        },
        {
            id = "turnin-4182-dragonkin-menace",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Dragonkin Menace.",
            complete = QuestState(4182, "completed"),
            dependsOn = { "accept-4182-dragonkin-menace" },
            route = {
                Point(1428, 0.8582, 0.6895, "Dragonkin Menace",
                    "Travel to Dragonkin Menace."),
            },
        },
        {
            id = "accept-4183-the-true-masters",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept The True Masters.",
            complete = QuestState(4183, "activeOrCompleted"),
            route = {
                Point(1428, 0.8582, 0.6895, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "turnin-4183-the-true-masters",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The True Masters.",
            complete = QuestState(4183, "completed"),
            dependsOn = { "accept-4183-the-true-masters" },
            route = {
                Point(1433, 0.2999, 0.4445, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "accept-4184-the-true-masters",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept The True Masters.",
            complete = QuestState(4184, "activeOrCompleted"),
            route = {
                Point(1433, 0.2999, 0.4445, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "turnin-4184-the-true-masters",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The True Masters.",
            complete = QuestState(4184, "completed"),
            dependsOn = { "accept-4184-the-true-masters" },
            route = {
                Point(1453, 0.6909, 0.2871, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "accept-4185-the-true-masters",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept The True Masters.",
            complete = QuestState(4185, "activeOrCompleted"),
            route = {
                Point(1453, 0.6909, 0.2871, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "accept-6182-the-first-and-the-last",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept The First and the Last.",
            complete = QuestState(6182, "activeOrCompleted"),
            route = {
                Point(1453, 0.6909, 0.2871, "The First and the Last",
                    "Travel to The First and the Last."),
            },
        },
        {
            id = "turnin-4185-the-true-masters",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The True Masters.",
            complete = QuestState(4185, "completed"),
            dependsOn = { "accept-4185-the-true-masters" },
            route = {
                Point(1453, 0.7822, 0.1799, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "accept-4186-the-true-masters",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept The True Masters.",
            complete = QuestState(4186, "activeOrCompleted"),
            route = {
                Point(1453, 0.7822, 0.1799, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "turnin-6182-the-first-and-the-last",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The First and the Last.",
            complete = QuestState(6182, "completed"),
            dependsOn = { "accept-6182-the-first-and-the-last" },
            route = {
                Point(1453, 0.7579, 0.5985, "The First and the Last",
                    "Travel to The First and the Last."),
            },
        },
        {
            id = "accept-6183-honor-the-dead",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept Honor the Dead.",
            complete = QuestState(6183, "activeOrCompleted"),
            route = {
                Point(1453, 0.7579, 0.5985, "Honor the Dead",
                    "Travel to Honor the Dead."),
            },
        },
        {
            id = "turnin-6183-honor-the-dead",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Honor the Dead.",
            complete = QuestState(6183, "completed"),
            dependsOn = { "accept-6183-honor-the-dead" },
            route = {
                Point(1453, 0.7579, 0.5985, "Honor the Dead",
                    "Travel to Honor the Dead."),
            },
        },
        {
            id = "accept-6184-flint-shadowmore",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Flint Shadowmore.",
            complete = QuestState(6184, "activeOrCompleted"),
            route = {
                Point(1453, 0.7579, 0.5985, "Flint Shadowmore",
                    "Travel to Flint Shadowmore."),
            },
        },
        {
            id = "turnin-5022-better-late-than-never",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Better Late Than Never.",
            complete = QuestState(5022, "completed"),
            route = {
                Point(1453, 0.4847, 0.3055, "Better Late Than Never",
                    "Travel to Better Late Than Never."),
            },
        },
        {
            id = "accept-5048-good-natured-emma",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept Good Natured Emma.",
            complete = QuestState(5048, "activeOrCompleted"),
            route = {
                Point(1453, 0.4847, 0.3055, "Good Natured Emma",
                    "Travel to Good Natured Emma."),
            },
        },
        {
            id = "turnin-5048-good-natured-emma",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Good Natured Emma.",
            complete = QuestState(5048, "completed"),
            dependsOn = { "accept-5048-good-natured-emma" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-5050-good-luck-charm",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Use the Good Luck Charm to accept Good Luck Charm.",
            complete = QuestState(5050, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-4186-the-true-masters",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The True Masters.",
            complete = QuestState(4186, "completed"),
            dependsOn = { "accept-4186-the-true-masters" },
            route = {
                Point(1433, 0.2999, 0.4445, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "accept-4223-the-true-masters",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept The True Masters.",
            complete = QuestState(4223, "activeOrCompleted"),
            route = {
                Point(1433, 0.2999, 0.4445, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "turnin-4223-the-true-masters",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The True Masters.",
            complete = QuestState(4223, "completed"),
            dependsOn = { "accept-4223-the-true-masters" },
            route = {
                Point(1428, 0.8475, 0.6902, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "accept-4224-the-true-masters",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept The True Masters.",
            complete = QuestState(4224, "activeOrCompleted"),
            route = {
                Point(1428, 0.8475, 0.6902, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
        {
            id = "turnin-4726-broodling-essence",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Broodling Essence.",
            complete = QuestState(4726, "completed"),
            dependsOn = { "accept-4726-broodling-essence" },
            route = {
                Point(1428, 0.6523, 0.2399, "Broodling Essence",
                    "Travel to Broodling Essence."),
            },
        },
        {
            id = "accept-4808-felnok-steelspring",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Accept Felnok Steelspring.",
            complete = QuestState(4808, "activeOrCompleted"),
            route = {
                Point(1428, 0.6523, 0.2399, "Felnok Steelspring",
                    "Travel to Felnok Steelspring."),
            },
        },
        {
            id = "turnin-4296-tablet-of-the-seven",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Tablet of the Seven.",
            complete = QuestState(4296, "completed"),
            dependsOn = { "accept-4296-tablet-of-the-seven" },
            route = {
                Point(1428, 0.6515, 0.2391, "Tablet of the Seven",
                    "Travel to Tablet of the Seven."),
            },
        },
        {
            id = "turnin-3825-ogre-head-on-a-stick-party",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ogre Head On A Stick = Party.",
            complete = QuestState(3825, "completed"),
            dependsOn = { "accept-3825-ogre-head-on-a-stick-party" },
            route = {
                Point(1428, 0.8285, 0.6333, "Ogre Head On A Stick = Party",
                    "Travel to Ogre Head On A Stick = Party."),
            },
        },
        {
            id = "turnin-4224-the-true-masters",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The True Masters.",
            complete = QuestState(4224, "completed"),
            dependsOn = { "accept-4224-the-true-masters" },
            route = {
                Point(1428, 0.8474, 0.6901, "The True Masters",
                    "Travel to The True Masters."),
            },
        },
    },
})
