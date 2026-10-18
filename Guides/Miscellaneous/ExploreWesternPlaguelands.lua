local _, ns = ...

local ACHIEVEMENT_ID = 770
local ZONE_MAP_ID = 1422

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
    { "darrowmere-lake", "Darrowmere Lake", 60, 73 },
    { "caer-darrow", "Caer Darrow", 68, 78 },
    { "sorrow-hill", "Sorrow Hill", 51, 78 },
    { "ruins-of-andorhal", "Ruins of Andorhal", 43, 69 },
    { "the-bulwark", "The Bulwark", 27, 57 },
    { "felstone-field", "Felstone Field", 36, 56 },
    { "dalson-s-tears", "Dalson's Tears", 46, 53 },
    { "the-writhing-haunt", "The Writhing Haunt", 52, 66 },
    { "northridge-lumber-camp", "Northridge Lumber Camp", 46, 36 },
    { "hearthglen", "Hearthglen", 44, 16 },
    { "gahrron-s-withering", "Gahrron's Withering", 62, 58 },
    { "the-weeping-cave", "The Weeping Cave", 65, 40 },
    { "thondroril-river", "Thondroril River", 69, 47 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-western-plaguelands-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Western Plaguelands.",
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
    id = "legacy-explore-western-plaguelands",
    title = "Explore Western Plaguelands",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
