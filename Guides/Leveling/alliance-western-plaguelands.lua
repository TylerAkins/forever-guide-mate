local _, ns = ...

-- Forever Casual spine: Western Plaguelands (51-52)
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
    WESTERN_PLAGUELANDS = 1422,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-western-plaguelands",
    title = "Western Plaguelands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 51 } },
        },
    },
    goals = {
        {
            id = "turnin-5066-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Call to Arms: The Plaguelands!.",
            complete = QuestState(5066, "completed"),
            route = {
                Point(1422, 0.4270, 0.8403, "A Call to Arms: The Plaguelands!",
                    "Travel to A Call to Arms: The Plaguelands!."),
            },
        },
        {
            id = "turnin-5090-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Call to Arms: The Plaguelands!.",
            complete = QuestState(5090, "completed"),
            route = {
                Point(1422, 0.4270, 0.8403, "A Call to Arms: The Plaguelands!",
                    "Travel to A Call to Arms: The Plaguelands!."),
            },
        },
        {
            id = "turnin-5091-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Call to Arms: The Plaguelands!.",
            complete = QuestState(5091, "completed"),
            route = {
                Point(1422, 0.4270, 0.8403, "A Call to Arms: The Plaguelands!",
                    "Travel to A Call to Arms: The Plaguelands!."),
            },
        },
        {
            id = "accept-5092-clear-the-way",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Clear the Way.",
            complete = QuestState(5092, "activeOrCompleted"),
            route = {
                Point(1422, 0.4270, 0.8403, "Clear the Way",
                    "Travel to Clear the Way."),
            },
        },
        {
            id = "accept-5401-argent-dawn-commission",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Argent Dawn Commission.",
            complete = QuestState(5401, "activeOrCompleted"),
            route = {
                Point(1422, 0.4297, 0.8355, "Argent Dawn Commission",
                    "Travel to Argent Dawn Commission."),
            },
        },
        {
            id = "objective-5092-1-skeletal-flayer",
            kind = "objective",
            priority = 60,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Skeletal Flayer.",
            complete = QuestObjective(5092, 1, "Skeletal Flayer"),
            dependsOn = { "accept-5092-clear-the-way" },
            route = {
                Point(1422, 0.5080, 0.7940, "Skeletal Flayer",
                    "Travel to Skeletal Flayer."),
            },
        },
        {
            id = "objective-5092-2-slavering-ghoul",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Slavering Ghoul.",
            complete = QuestObjective(5092, 2, "Slavering Ghoul"),
            dependsOn = { "accept-5092-clear-the-way" },
            route = {
                Point(1422, 0.5080, 0.7940, "Slavering Ghoul",
                    "Travel to Slavering Ghoul."),
            },
        },
        {
            id = "turnin-5092-clear-the-way",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Clear the Way.",
            complete = QuestState(5092, "completed"),
            dependsOn = { "accept-5092-clear-the-way", "objective-5092-1-skeletal-flayer", "objective-5092-2-slavering-ghoul" },
            route = {
                Point(1422, 0.4270, 0.8403, "Clear the Way",
                    "Travel to Clear the Way."),
            },
        },
        {
            id = "accept-5215-the-scourge-cauldrons",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Scourge Cauldrons.",
            complete = QuestState(5215, "activeOrCompleted"),
            route = {
                Point(1422, 0.4270, 0.8403, "The Scourge Cauldrons",
                    "Travel to The Scourge Cauldrons."),
            },
        },
        {
            id = "turnin-5215-the-scourge-cauldrons",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Scourge Cauldrons.",
            complete = QuestState(5215, "completed"),
            dependsOn = { "accept-5215-the-scourge-cauldrons" },
            route = {
                Point(1422, 0.4297, 0.8450, "The Scourge Cauldrons",
                    "Travel to The Scourge Cauldrons."),
            },
        },
        {
            id = "accept-5216-target-felstone-field",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Target: Felstone Field.",
            complete = QuestState(5216, "activeOrCompleted"),
            route = {
                Point(1422, 0.4297, 0.8450, "Target: Felstone Field",
                    "Travel to Target: Felstone Field."),
            },
        },
        {
            id = "objective-5216-1-cauldron-lord-bilemaw",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Kill Cauldron Lord Bilemaw.",
            complete = QuestObjective(5216, 1, "Cauldron Lord Bilemaw"),
            dependsOn = { "accept-5216-target-felstone-field" },
            route = {
                Point(1422, 0.3703, 0.5711, "Cauldron Lord Bilemaw",
                    "Travel to Cauldron Lord Bilemaw."),
            },
        },
        {
            id = "turnin-5216-target-felstone-field",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Target: Felstone Field.",
            complete = QuestState(5216, "completed"),
            dependsOn = { "accept-5216-target-felstone-field", "objective-5216-1-cauldron-lord-bilemaw" },
            route = {
                Point(1422, 0.3719, 0.5687, "Target: Felstone Field",
                    "Travel to Target: Felstone Field."),
            },
        },
        {
            id = "accept-5217-return-to-chillwind-camp",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Chillwind Camp.",
            complete = QuestState(5217, "activeOrCompleted"),
            route = {
                Point(1422, 0.3719, 0.5687, "Return to Chillwind Camp",
                    "Travel to Chillwind Camp."),
            },
        },
        {
            id = "accept-5021-better-late-than-never",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept Better Late Than Never.",
            complete = QuestState(5021, "activeOrCompleted"),
            route = {
                Point(1422, 0.3840, 0.5405, "Better Late Than Never",
                    "Travel to Better Late Than Never."),
            },
        },
        {
            id = "turnin-5021-better-late-than-never",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Better Late Than Never.",
            complete = QuestState(5021, "completed"),
            dependsOn = { "accept-5021-better-late-than-never" },
            route = {
                Point(1422, 0.3873, 0.5524, "Better Late Than Never",
                    "Travel to Better Late Than Never."),
            },
        },
        {
            id = "accept-5022-better-late-than-never",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept Better Late Than Never.",
            complete = QuestState(5022, "activeOrCompleted"),
            route = {
                Point(1422, 0.3873, 0.5524, "Better Late Than Never",
                    "Travel to Better Late Than Never."),
            },
        },
        {
            id = "turnin-5217-return-to-chillwind-camp",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Chillwind Camp.",
            complete = QuestState(5217, "completed"),
            dependsOn = { "accept-5217-return-to-chillwind-camp" },
            route = {
                Point(1422, 0.4297, 0.8450, "Return to Chillwind Camp",
                    "Travel to Chillwind Camp."),
            },
        },
    },
})
