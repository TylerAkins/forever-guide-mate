local _, ns = ...

local ACHIEVEMENT_ID = 855
local MOONGLADE_MAP_ID = 1450

local function Point(x, y, name)
    return {
        mapID = MOONGLADE_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "lake-elune-ara", "Lake Elune'ara", 56, 55 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-moonglade-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Moonglade.",
        complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    if index == #locations then
        goal.complete = {
            all = {
                { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
                { achievement = { id = ACHIEVEMENT_ID } },
            },
        }
    end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-moonglade",
    title = "Explore Moonglade",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
