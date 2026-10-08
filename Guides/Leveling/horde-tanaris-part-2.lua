local _, ns = ...

-- Forever Casual spine: Tanaris (42-43)
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
    TANARIS = 1446,
}

ns:RegisterGuide({
    id = "leveling-era-horde-tanaris-part-2",
    title = "Tanaris",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 42 } },
        },
    },
    goals = {
        {
            id = "accept-992-gadgetzan-water-survey",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Gadgetzan Water Survey.",
            complete = QuestState(992, "activeOrCompleted"),
            route = {
                Point(1446, 0.5021, 0.2748, "Gadgetzan Water Survey",
                    "Travel to Gadgetzan Water Survey."),
            },
        },
        {
            id = "accept-654-tanaris-field-sampling",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Use the sealed testing kit to accept Tanaris Field Sampling.",
            complete = QuestState(654, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "objective-992-1-untapped-dowsing-widget",
            kind = "objective",
            priority = 30,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Use Untapped Dowsing Widget.",
            complete = QuestObjective(992, 1, "Untapped Dowsing Widget"),
            dependsOn = { "accept-992-gadgetzan-water-survey" },
            route = {
                Point(1446, 0.3909, 0.2917, "Untapped Dowsing Widget",
                    "Travel to Untapped Dowsing Widget."),
            },
        },
        {
            id = "turnin-654-tanaris-field-sampling",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in Tanaris Field Sampling.",
            complete = QuestState(654, "completed"),
            dependsOn = { "accept-654-tanaris-field-sampling" },
            route = {
                Point(1446, 0.5246, 0.2851, "Tanaris Field Sampling",
                    "Travel to Tanaris Field Sampling."),
            },
        },
        {
            id = "turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gadgetzan Water Survey.",
            complete = QuestState(992, "completed"),
            dependsOn = { "accept-992-gadgetzan-water-survey", "objective-992-1-untapped-dowsing-widget" },
            route = {
                Point(1446, 0.5021, 0.2748, "Gadgetzan Water Survey",
                    "Travel to Gadgetzan Water Survey."),
            },
        },
    },
})
