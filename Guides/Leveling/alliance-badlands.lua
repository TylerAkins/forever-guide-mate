local _, ns = ...

-- Forever Casual spine: Badlands (41-42)
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
    LOCH_MODAN = 1432,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-badlands",
    title = "Badlands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 41 } },
        },
    },
    goals = {
        {
            id = "objective-705-1-blue-pearl",
            kind = "objective",
            priority = 10,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Collect 9 Blue Pearl.",
            complete = QuestObjective(705, 1, "Blue Pearl"),
            route = {
                Point(1455, 0.2416, 0.7467, "Blue Pearl",
                    "Travel to Blue Pearl."),
            },
        },
        {
            id = "turnin-1467-reagents-for-reclaimers-inc",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Reagents for Reclaimers Inc.",
            complete = QuestState(1467, "completed"),
            route = {
                Point(1455, 0.6791, 0.1749, "Reagents for Reclaimers Inc",
                    "Travel to Reagents for Reclaimers Inc.."),
            },
        },
        {
            id = "accept-707-ironband-wants-you",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ironband Wants You!.",
            complete = QuestState(707, "activeOrCompleted"),
            route = {
                Point(1455, 0.7464, 0.1174, "Ironband Wants You!",
                    "Travel to Ironband Wants You!."),
            },
        },
        {
            id = "accept-2500-badlands-reagent-run",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Badlands Reagent Run.",
            complete = QuestState(2500, "activeOrCompleted"),
            route = {
                Point(1432, 0.3707, 0.4938, "Badlands Reagent Run",
                    "Travel to Badlands Reagent Run."),
            },
        },
        {
            id = "turnin-707-ironband-wants-you",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ironband Wants You!.",
            complete = QuestState(707, "completed"),
            dependsOn = { "accept-707-ironband-wants-you" },
            route = {
                Point(1432, 0.6593, 0.6562, "Ironband Wants You!",
                    "Travel to Ironband Wants You!."),
            },
        },
        {
            id = "accept-738-find-agmond",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Find Agmond.",
            complete = QuestState(738, "activeOrCompleted"),
            route = {
                Point(1432, 0.6593, 0.6562, "Find Agmond",
                    "Travel to Find Agmond."),
            },
        },
        {
            id = "accept-719-a-dwarf-and-his-tools",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Dwarf and His Tools.",
            complete = QuestState(719, "activeOrCompleted"),
            route = {
                Point(1418, 0.5342, 0.4340, "A Dwarf and His Tools",
                    "Travel to A Dwarf and His Tools."),
            },
        },
        {
            id = "accept-718-mirages",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Mirages.",
            complete = QuestState(718, "activeOrCompleted"),
            route = {
                Point(1418, 0.5380, 0.4331, "Mirages",
                    "Travel to Mirages."),
            },
        },
        {
            id = "accept-720-a-sign-of-hope",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Sign of Hope.",
            complete = QuestState(720, "activeOrCompleted"),
            route = {
                Point(1418, 0.5303, 0.3393, "A Sign of Hope",
                    "Travel to A Sign of Hope."),
            },
        },
        {
            id = "turnin-719-a-dwarf-and-his-tools",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Dwarf and His Tools.",
            complete = QuestState(719, "completed"),
            dependsOn = { "accept-719-a-dwarf-and-his-tools" },
            route = {
                Point(1418, 0.5342, 0.4340, "A Dwarf and His Tools",
                    "Travel to A Dwarf and His Tools."),
            },
        },
        {
            id = "turnin-720-a-sign-of-hope",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Sign of Hope.",
            complete = QuestState(720, "completed"),
            dependsOn = { "accept-720-a-sign-of-hope" },
            route = {
                Point(1418, 0.5342, 0.4340, "A Sign of Hope",
                    "Travel to A Sign of Hope."),
            },
        },
        {
            id = "turnin-718-mirages",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Mirages.",
            complete = QuestState(718, "completed"),
            dependsOn = { "accept-718-mirages" },
            route = {
                Point(1418, 0.5380, 0.4331, "Mirages",
                    "Travel to Mirages."),
            },
        },
        {
            id = "accept-733-scrounging",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Scrounging.",
            complete = QuestState(733, "activeOrCompleted"),
            route = {
                Point(1418, 0.5380, 0.4331, "Scrounging",
                    "Travel to Scrounging."),
            },
        },
        {
            id = "accept-705-pearl-diving",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 150,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 160,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Pearl Diving.",
            complete = QuestState(705, "completed"),
            dependsOn = { "accept-705-pearl-diving", "objective-705-1-blue-pearl" },
            route = {
                Point(1418, 0.4239, 0.5293, "Pearl Diving",
                    "Travel to Pearl Diving."),
            },
        },
        {
            id = "turnin-1106-martek-the-exiled",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 180,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Indurium.",
            complete = QuestState(1108, "activeOrCompleted"),
            route = {
                Point(1418, 0.4222, 0.5269, "Indurium",
                    "Travel to Indurium."),
            },
        },
        {
            id = "turnin-738-find-agmond",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Find Agmond.",
            complete = QuestState(738, "completed"),
            dependsOn = { "accept-738-find-agmond" },
            route = {
                Point(1418, 0.5089, 0.6241, "Find Agmond",
                    "Travel to Find Agmond."),
            },
        },
        {
            id = "accept-739-murdaloc",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Murdaloc.",
            complete = QuestState(739, "activeOrCompleted"),
            route = {
                Point(1418, 0.5089, 0.6241, "Murdaloc",
                    "Travel to Murdaloc."),
            },
        },
        {
            id = "objective-739-1-murdaloc",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Kill Murdaloc.",
            complete = QuestObjective(739, 1, "Murdaloc"),
            dependsOn = { "accept-739-murdaloc" },
            route = {
                Point(1418, 0.4963, 0.6630, "Murdaloc",
                    "Travel to Murdaloc."),
            },
        },
        {
            id = "turnin-703-barbecued-buzzard-wings",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            id = "turnin-1108-indurium",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Indurium.",
            complete = QuestState(1108, "completed"),
            dependsOn = { "accept-1108-indurium" },
            route = {
                Point(1418, 0.4221, 0.5270, "Indurium",
                    "Travel to Indurium."),
            },
        },
        {
            id = "accept-1137-news-for-fizzle",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept News for Fizzle.",
            complete = QuestState(1137, "activeOrCompleted"),
            route = {
                Point(1418, 0.4221, 0.5270, "News for Fizzle",
                    "Travel to News for Fizzle."),
            },
        },
        {
            id = "accept-710-study-of-the-elements-rock",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 260,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 270,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 280,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 290,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 300,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 310,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            id = "objective-710-1-lesser-rock-elemental",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Kill Lesser Rock Elemental.",
            complete = QuestObjective(710, 1, "Lesser Rock Elemental"),
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            route = {
                Point(1418, 0.2140, 0.4340, "Lesser Rock Elemental",
                    "Travel to Lesser Rock Elemental."),
            },
        },
        {
            id = "turnin-710-study-of-the-elements-rock",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Study of the Elements: Rock.",
            complete = QuestState(710, "completed"),
            dependsOn = { "accept-710-study-of-the-elements-rock", "objective-710-1-lesser-rock-elemental" },
            route = {
                Point(1418, 0.2595, 0.4487, "Study of the Elements: Rock",
                    "Travel to Study of the Elements: Rock."),
            },
        },
        {
            id = "accept-711-study-of-the-elements-rock",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 350,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            priority = 360,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
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
            id = "accept-712-study-of-the-elements-rock",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Study of the Elements: Rock.",
            complete = QuestState(712, "activeOrCompleted"),
            route = {
                Point(1418, 0.2595, 0.4487, "Study of the Elements: Rock",
                    "Travel to Study of the Elements: Rock."),
            },
        },
        {
            id = "objective-712-1-greater-rock-elemental",
            kind = "objective",
            priority = 380,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Kill Greater Rock Elemental.",
            complete = QuestObjective(712, 1, "Greater Rock Elemental"),
            dependsOn = { "accept-712-study-of-the-elements-rock" },
            route = {
                Point(1418, 0.0440, 0.7740, "Greater Rock Elemental",
                    "Travel to Greater Rock Elemental."),
            },
        },
        {
            id = "turnin-733-scrounging",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Scrounging.",
            complete = QuestState(733, "completed"),
            dependsOn = { "accept-733-scrounging" },
            route = {
                Point(1418, 0.5380, 0.4331, "Scrounging",
                    "Travel to Scrounging."),
            },
        },
        {
            id = "turnin-712-study-of-the-elements-rock",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Study of the Elements: Rock.",
            complete = QuestState(712, "completed"),
            dependsOn = { "accept-712-study-of-the-elements-rock", "objective-712-1-greater-rock-elemental" },
            route = {
                Point(1418, 0.2595, 0.4487, "Study of the Elements: Rock",
                    "Travel to Study of the Elements: Rock."),
            },
        },
        {
            id = "accept-734-this-is-going-to-be-hard",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept This Is Going to Be Hard.",
            complete = QuestState(734, "activeOrCompleted"),
            route = {
                Point(1418, 0.2595, 0.4487, "This Is Going to Be Hard",
                    "Travel to This Is Going to Be Hard."),
            },
        },
        {
            id = "turnin-734-this-is-going-to-be-hard",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in This Is Going to Be Hard.",
            complete = QuestState(734, "completed"),
            dependsOn = { "accept-734-this-is-going-to-be-hard" },
            route = {
                Point(1418, 0.2582, 0.4424, "This Is Going to Be Hard",
                    "Travel to This Is Going to Be Hard."),
            },
        },
        {
            id = "accept-777-this-is-going-to-be-hard",
            kind = "accept",
            priority = 430,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept This Is Going to Be Hard.",
            complete = QuestState(777, "activeOrCompleted"),
            route = {
                Point(1418, 0.2582, 0.4424, "This Is Going to Be Hard",
                    "Travel to This Is Going to Be Hard."),
            },
        },
        {
            id = "accept-716-stone-is-better-than-cloth",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Stone Is Better than Cloth.",
            complete = QuestState(716, "activeOrCompleted"),
            route = {
                Point(1418, 0.2582, 0.4424, "Stone Is Better than Cloth",
                    "Travel to Stone Is Better than Cloth."),
            },
        },
        {
            id = "turnin-716-stone-is-better-than-cloth",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Stone Is Better than Cloth.",
            complete = QuestState(716, "completed"),
            dependsOn = { "accept-716-stone-is-better-than-cloth" },
            route = {
                Point(1418, 0.2582, 0.4424, "Stone Is Better than Cloth",
                    "Travel to Stone Is Better than Cloth."),
            },
        },
        {
            id = "turnin-777-this-is-going-to-be-hard",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in This Is Going to Be Hard.",
            complete = QuestState(777, "completed"),
            dependsOn = { "accept-777-this-is-going-to-be-hard" },
            route = {
                Point(1418, 0.2595, 0.4486, "This Is Going to Be Hard",
                    "Travel to This Is Going to Be Hard."),
            },
        },
        {
            id = "accept-778-this-is-going-to-be-hard",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept This Is Going to Be Hard.",
            complete = QuestState(778, "activeOrCompleted"),
            route = {
                Point(1418, 0.2595, 0.4486, "This Is Going to Be Hard",
                    "Travel to This Is Going to Be Hard."),
            },
        },
        {
            id = "turnin-778-this-is-going-to-be-hard",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in This Is Going to Be Hard.",
            complete = QuestState(778, "completed"),
            dependsOn = { "accept-778-this-is-going-to-be-hard" },
            route = {
                Point(1418, 0.2595, 0.4487, "This Is Going to Be Hard",
                    "Travel to This Is Going to Be Hard."),
            },
        },
        {
            id = "turnin-2500-badlands-reagent-run",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Badlands Reagent Run.",
            complete = QuestState(2500, "completed"),
            dependsOn = { "accept-2500-badlands-reagent-run" },
            route = {
                Point(1432, 0.3707, 0.4938, "Badlands Reagent Run",
                    "Travel to Badlands Reagent Run."),
            },
        },
        {
            id = "turnin-739-murdaloc",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Murdaloc.",
            complete = QuestState(739, "completed"),
            dependsOn = { "accept-739-murdaloc", "objective-739-1-murdaloc" },
            route = {
                Point(1432, 0.6593, 0.6562, "Murdaloc",
                    "Travel to Murdaloc."),
            },
        },
    },
})
