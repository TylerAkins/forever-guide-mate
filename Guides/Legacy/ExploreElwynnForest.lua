local _, ns = ...

local ACHIEVEMENT_ID = 776
local ELWYNN_MAP_ID = 1429

local function Point(x, y, name)
    return {
        mapID = ELWYNN_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "northshire-valley", "Northshire Valley", 45, 47 },
    { "goldshire", "Goldshire", 42, 65 },
    { "fargodeep-mine", "Fargodeep Mine", 38, 82 },
    { "stormwind-city", "Stormwind City", 32, 48 },
    { "forest-s-edge", "Forest's Edge", 27, 77 },
    { "jerod-s-landing", "Jerod's Landing", 47, 87 },
    { "tower-of-azora", "Tower of Azora", 64, 70 },
    { "brackwell-pumpkin-patch", "Brackwell Pumpkin Patch", 69, 79 },
    { "eastvale-logging-camp", "Eastvale Logging Camp", 81, 66 },
    { "ridgepoint-tower", "Ridgepoint Tower", 84, 79 },
    { "crystal-lake", "Crystal Lake", 52, 66 },
    { "stone-cairn-lake", "Stone Cairn Lake", 73, 58 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-elwynn-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Elwynn Forest.",
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
    id = "legacy-explore-elwynn-glades",
    title = "Explore Elwynn Forest",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
