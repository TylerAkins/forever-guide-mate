local _, ns = ...

local ACHIEVEMENT_ID = 761
local ZONE_MAP_ID = 1417

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
    { "circle-of-west-binding", "Circle of West Binding", 25, 31 },
    { "northfold-manor", "Northfold Manor", 32, 27 },
    { "bouldergor", "Bouldergor", 39, 36 },
    { "thoradin-s-wall", "Thoradin's Wall", 18, 40 },
    { "stromgarde-keep", "Stromgarde Keep", 25, 57 },
    { "faldir-s-cove", "Faldir's Cove", 24, 81 },
    { "circle-of-inner-binding", "Circle of Inner Binding", 35, 58 },
    { "thandol-span", "Thandol Span", 44, 87 },
    { "boulderfist-hall", "Boulderfist Hall", 53, 73 },
    { "refuge-pointe", "Refuge Pointe", 45, 47 },
    { "circle-of-outer-binding", "Circle of Outer Binding", 52, 50 },
    { "witherbark-village", "Witherbark Village", 65, 68 },
    { "go-shek-farm", "Go'Shek Farm", 61, 58 },
    { "dabyrie-s-farmstead", "Dabyrie's Farmstead", 55, 39 },
    { "circle-of-east-binding", "Circle of East Binding", 66, 29 },
    { "hammerfall", "Hammerfall", 74, 38 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-arathi-highlands-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Arathi Highlands.",
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
    id = "legacy-explore-arathi-highlands",
    title = "Explore Arathi Highlands",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
