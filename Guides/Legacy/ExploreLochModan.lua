local _, ns = ...

local ACHIEVEMENT_ID = 779
local LOCH_MODAN_MAP_ID = 1432

local function Point(x, y, name)
    return {
        mapID = LOCH_MODAN_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "the-loch", "The Loch", 48, 50 },
    { "stonewrought-dam", "Stonewrought Dam", 47, 13 },
    { "mo-grosh-stronghold", "Mo'grosh Stronghold", 70, 24 },
    { "silver-stream-mine", "Silver Stream Mine", 34, 18 },
    { "north-gate-pass", "North Gate Pass", 24, 18 },
    { "the-farstrider-lodge", "The Farstrider Lodge", 80, 62 },
    { "ironband-s-excavation-site", "Ironband's Excavation Site", 68, 63 },
    { "grizzlepaw-ridge", "Grizzlepaw Ridge", 47, 74 },
    { "thelsamar", "Thelsamar", 34, 47 },
    { "stonesplinter-valley", "Stonesplinter Valley", 34, 75 },
    { "valley-of-kings", "Valley of Kings", 22, 70 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-loch-modan-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Loch Modan.",
        complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-loch-modan",
    title = "Explore Loch Modan",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
