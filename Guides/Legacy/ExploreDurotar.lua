local _, ns = ...

local ACHIEVEMENT_ID = 728
local DUROTAR_MAP_ID = 1411

local function Point(x, y, name)
    return {
        mapID = DUROTAR_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "valley-of-trials", "Valley of Trials", 44, 59 },
    { "senjin-village", "Sen'jin Village", 55, 74 },
    { "kolkar-crag", "Kolkar Crag", 48, 78 },
    { "echo-isles", "Echo Isles", 62, 81 },
    { "tiragarde-keep", "Tiragarde Keep", 57, 54 },
    { "razor-hill", "Razor Hill", 53, 43 },
    { "razormane-grounds", "Razormane Grounds", 41, 45 },
    { "thunder-ridge", "Thunder Ridge", 39, 28 },
    { "drygulch-ravine", "Drygulch Ravine", 53, 23 },
    { "skull-rock", "Skull Rock", 54, 13 },
    { "orgrimmar", "Orgrimmar", 45, 11 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-durotar-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Durotar.",
        complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-durotar",
    title = "Explore Durotar",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
