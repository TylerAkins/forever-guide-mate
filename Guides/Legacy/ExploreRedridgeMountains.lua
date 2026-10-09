local _, ns = ...

local ACHIEVEMENT_ID = 780
local REDRIDGE_MAP_ID = 1433

local function Point(x, y, name)
    return {
        mapID = REDRIDGE_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "lakeshire", "Lakeshire", 28, 47 },
    { "lake-everstill", "Lake Everstill", 33, 54 },
    { "three-corners", "Three Corners", 15, 71 },
    { "lakeridge-highway", "Lakeridge Highway", 26, 77 },
    { "redridge-canyons", "Redridge Canyons", 41, 32 },
    { "alther-s-mill", "Alther's Mill", 53, 42 },
    { "stonewatch", "Stonewatch", 66, 53 },
    { "render-s-valley", "Render's Valley", 73, 77 },
    { "render-s-camp", "Render's Camp", 43, 19 },
    { "stonewatch-falls", "Stonewatch Falls", 73, 62 },
    { "galardell-valley", "Galardell Valley", 78, 39 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-redridge-mountains-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Redridge Mountains.",
        complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-redridge-mountains",
    title = "Explore Redridge Mountains",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
