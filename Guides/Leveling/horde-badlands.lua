local _, ns = ...

-- Forever Casual spine: Badlands (39-40)
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
    BADLANDS = 1418,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
}

ns:RegisterGuide({
    id = "leveling-era-horde-badlands",
    title = "Badlands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 39 } },
        },
    },
    goals = {
        {
            id = "accept-705-pearl-diving",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Pearl Diving.",
            complete = QuestState(705, "activeOrCompleted"),
            route = {
                Point(1418, 0.4239, 0.5293, "Pearl Diving",
                    "Travel to Pearl Diving."),
            },
        },
        {
            id = "accept-703-barbecued-buzzard-wings",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Barbecued Buzzard Wings.",
            complete = QuestState(703, "activeOrCompleted"),
            route = {
                Point(1418, 0.4239, 0.5293, "Barbecued Buzzard Wings",
                    "Travel to Barbecued Buzzard Wings."),
            },
        },
        {
            id = "turnin-705-pearl-diving",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Pearl Diving.",
            complete = QuestState(705, "completed"),
            dependsOn = { "accept-705-pearl-diving" },
            route = {
                Point(1418, 0.4239, 0.5293, "Pearl Diving",
                    "Travel to Pearl Diving."),
            },
        },
        {
            id = "turnin-1106-martek-the-exiled",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Martek the Exiled.",
            complete = QuestState(1106, "completed"),
            route = {
                Point(1418, 0.4222, 0.5269, "Martek the Exiled",
                    "Travel to Martek the Exiled."),
            },
        },
        {
            id = "accept-1108-indurium",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Indurium.",
            complete = QuestState(1108, "activeOrCompleted"),
            route = {
                Point(1418, 0.4222, 0.5269, "Indurium",
                    "Travel to Indurium."),
            },
        },
        {
            id = "accept-710-study-of-the-elements-rock",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Study of the Elements: Rock.",
            complete = QuestState(710, "activeOrCompleted"),
            route = {
                Point(1418, 0.2595, 0.4487, "Study of the Elements: Rock",
                    "Travel to Study of the Elements: Rock."),
            },
        },
        {
            id = "accept-713-coolant-heads-prevail",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Coolant Heads Prevail.",
            complete = QuestState(713, "activeOrCompleted"),
            route = {
                Point(1418, 0.2595, 0.4487, "Coolant Heads Prevail",
                    "Travel to Coolant Heads Prevail."),
            },
        },
        {
            id = "turnin-713-coolant-heads-prevail",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Coolant Heads Prevail.",
            complete = QuestState(713, "completed"),
            dependsOn = { "accept-713-coolant-heads-prevail" },
            route = {
                Point(1418, 0.2595, 0.4487, "Coolant Heads Prevail",
                    "Travel to Coolant Heads Prevail."),
            },
        },
        {
            id = "accept-714-gyro-what",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Gyro... What?.",
            complete = QuestState(714, "activeOrCompleted"),
            route = {
                Point(1418, 0.2595, 0.4487, "Gyro... What?",
                    "Travel to Gyro... What?."),
            },
        },
        {
            id = "turnin-714-gyro-what",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gyro... What?.",
            complete = QuestState(714, "completed"),
            dependsOn = { "accept-714-gyro-what" },
            route = {
                Point(1418, 0.2595, 0.4487, "Gyro... What?",
                    "Travel to Gyro... What?."),
            },
        },
        {
            id = "accept-715-liquid-stone",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Liquid Stone.",
            complete = QuestState(715, "activeOrCompleted"),
            route = {
                Point(1418, 0.2582, 0.4423, "Liquid Stone",
                    "Travel to Liquid Stone."),
            },
        },
        {
            id = "turnin-715-liquid-stone",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Liquid Stone.",
            complete = QuestState(715, "completed"),
            dependsOn = { "accept-715-liquid-stone" },
            route = {
                Point(1418, 0.2582, 0.4423, "Liquid Stone",
                    "Travel to Liquid Stone."),
            },
        },
        {
            id = "accept-1419-coyote-thieves",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Coyote Thieves.",
            complete = QuestState(1419, "activeOrCompleted"),
            route = {
                Point(1418, 0.0648, 0.4718, "Coyote Thieves",
                    "Travel to Coyote Thieves."),
            },
        },
        {
            id = "accept-2258-badlands-reagent-run",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Badlands Reagent Run.",
            complete = QuestState(2258, "activeOrCompleted"),
            route = {
                Point(1418, 0.0242, 0.4606, "Badlands Reagent Run",
                    "Travel to Badlands Reagent Run."),
            },
        },
        {
            id = "turnin-710-study-of-the-elements-rock",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Study of the Elements: Rock.",
            complete = QuestState(710, "completed"),
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            route = {
                Point(1418, 0.2595, 0.4487, "Study of the Elements: Rock",
                    "Travel to Study of the Elements: Rock."),
            },
        },
        {
            id = "accept-711-study-of-the-elements-rock",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Study of the Elements: Rock.",
            complete = QuestState(711, "activeOrCompleted"),
            route = {
                Point(1418, 0.2595, 0.4487, "Study of the Elements: Rock",
                    "Travel to Study of the Elements: Rock."),
            },
        },
        {
            id = "objective-711-1-rock-elemental",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Kill Rock Elemental.",
            complete = QuestObjective(711, 1, "Rock Elemental"),
            dependsOn = { "accept-711-study-of-the-elements-rock" },
            route = {
                Point(1418, 0.1340, 0.3780, "Rock Elemental",
                    "Travel to Rock Elemental."),
            },
        },
        {
            id = "turnin-711-study-of-the-elements-rock",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Study of the Elements: Rock.",
            complete = QuestState(711, "completed"),
            dependsOn = { "accept-711-study-of-the-elements-rock", "objective-711-1-rock-elemental" },
            route = {
                Point(1418, 0.2595, 0.4487, "Study of the Elements: Rock",
                    "Travel to Study of the Elements: Rock."),
            },
        },
        {
            id = "turnin-703-barbecued-buzzard-wings",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Barbecued Buzzard Wings.",
            complete = QuestState(703, "completed"),
            dependsOn = { "accept-703-barbecued-buzzard-wings" },
            route = {
                Point(1418, 0.4239, 0.5293, "Barbecued Buzzard Wings",
                    "Travel to Barbecued Buzzard Wings."),
            },
        },
        {
            id = "objective-1108-1-stonevault-shaman",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Kill Stonevault Shaman.",
            complete = QuestObjective(1108, 1, "Stonevault Shaman"),
            dependsOn = { "accept-1108-indurium" },
            route = {
                Point(1418, 0.5040, 0.6860, "Stonevault Shaman",
                    "Travel to Stonevault Shaman."),
            },
        },
        {
            id = "turnin-1108-indurium",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Indurium.",
            complete = QuestState(1108, "completed"),
            dependsOn = { "accept-1108-indurium", "objective-1108-1-stonevault-shaman" },
            route = {
                Point(1418, 0.4221, 0.5270, "Indurium",
                    "Travel to Indurium."),
            },
        },
        {
            id = "accept-1137-news-for-fizzle",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept News for Fizzle.",
            complete = QuestState(1137, "activeOrCompleted"),
            route = {
                Point(1418, 0.4221, 0.5270, "News for Fizzle",
                    "Travel to News for Fizzle."),
            },
        },
        {
            id = "turnin-1419-coyote-thieves",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Coyote Thieves.",
            complete = QuestState(1419, "completed"),
            dependsOn = { "accept-1419-coyote-thieves" },
            route = {
                Point(1418, 0.0648, 0.4718, "Coyote Thieves",
                    "Travel to Coyote Thieves."),
            },
        },
        {
            id = "accept-1420-report-to-helgrum",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Report to Helgrum.",
            complete = QuestState(1420, "activeOrCompleted"),
            route = {
                Point(1418, 0.0648, 0.4718, "Report to Helgrum",
                    "Travel to Report to Helgrum."),
            },
        },
        {
            id = "turnin-2258-badlands-reagent-run",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Badlands Reagent Run.",
            complete = QuestState(2258, "completed"),
            dependsOn = { "accept-2258-badlands-reagent-run" },
            route = {
                Point(1418, 0.0242, 0.4606, "Badlands Reagent Run",
                    "Travel to Badlands Reagent Run."),
            },
        },
        {
            id = "objective-1424-1-elixir-of-water-breathing",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
                { any = { { class = 9 }, { class = 11 } } },
            } },
            text = "Collect 2 Elixir of Water Breathing.",
            complete = QuestObjective(1424, 1, "Elixir of Water Breathing"),
            route = {
                Point(1454, 0.5569, 0.6286, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "turnin-1049-compendium-of-the-fallen",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Compendium of the Fallen.",
            complete = QuestState(1049, "completed"),
            route = {
                Point(1456, 0.3440, 0.4687, "Compendium of the Fallen",
                    "Travel to Compendium of the Fallen."),
            },
        },
        {
            id = "turnin-1276-the-black-shield",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Black Shield.",
            complete = QuestState(1276, "completed"),
            route = {
                Point(1456, 0.5401, 0.8077, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "turnin-1136-frostmaw",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Turn in Frostmaw.",
            complete = QuestState(1136, "completed"),
            route = {
                Point(1456, 0.6153, 0.8090, "Frostmaw",
                    "Travel to Frostmaw."),
            },
        },
        {
            id = "accept-1205-deadmire",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Deadmire.",
            complete = QuestState(1205, "activeOrCompleted"),
            route = {
                Point(1456, 0.6153, 0.8090, "Deadmire",
                    "Travel to Deadmire."),
            },
        },
    },
})
