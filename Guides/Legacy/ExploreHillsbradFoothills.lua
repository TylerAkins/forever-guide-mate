local _, ns = ...

local ACHIEVEMENT_ID = 772
local HILLSBRAD_MAP_ID = 1424

local function Point(x, y, name)
    return {
        mapID = HILLSBRAD_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "darrow-hill", "Darrow Hill", 49, 33 },
    { "tarren-mill", "Tarren Mill", 61, 23 },
    { "durnholde-keep", "Durnholde Keep", 76, 41 },
    { "dun-garok", "Dun Garok", 69, 76 },
    { "nethander-stead", "Nethander Stead", 64, 60 },
    { "eastern-strand", "Eastern Strand", 60, 72 },
    { "southshore", "Southshore", 49, 56 },
    { "hillsbrad-fields", "Hillsbrad Fields", 33, 42 },
    { "western-strand", "Western Strand", 36, 68 },
    { "azurelode-mine", "Azurelode Mine", 26, 60 },
    { "southpoint-tower", "Southpoint Tower", 20, 49 },
    { "purgation-isle", "Purgation Isle", 16, 79 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-hillsbrad-foothills-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Hillsbrad Foothills.",
        complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-hillsbrad-foothills",
    title = "Explore Hillsbrad Foothills",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
