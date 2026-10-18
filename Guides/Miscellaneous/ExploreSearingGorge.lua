local _, ns = ...

local ACHIEVEMENT_ID = 774
local ZONE_MAP_ID = 1427

local function Point(x, y, name)
    return {
        mapID = ZONE_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "firewatch-ridge", "Firewatch Ridge", 33, 43 },
    { "the-cauldron", "The Cauldron", 49, 50 },
    { "blackchar-cave", "Blackchar Cave", 22, 80 },
    { "the-sea-of-cinders", "The Sea of Cinders", 48, 70 },
    { "tanner-camp", "Tanner Camp", 64.7, 73.5 },
    { "grimesilt-dig-site", "Grimesilt Dig Site", 62, 62.3 },
    { "dustfire-valley", "Dustfire Valley", 72, 27 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-searing-gorge-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Searing Gorge.",
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
    id = "legacy-explore-searing-gorge",
    title = "Explore Searing Gorge",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
