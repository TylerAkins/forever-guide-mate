local _, ns = ...

local ACHIEVEMENT_ID = 760
local ZONE_MAP_ID = 1416

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
    { "chillwind-point", "Chillwind Point", 80, 64 },
    { "corrahn-s-dagger", "Corrahn's Dagger", 48, 82 },
    { "crushridge-hold", "Crushridge Hold", 50, 45 },
    { "dalaran", "Dalaran", 15, 65 },
    { "dandred-s-fold", "Dandred's Fold", 40, 18 },
    { "gallows-corner", "Gallows' Corner", 49, 57 },
    { "gavin-s-naze", "Gavin's Naze", 31, 83 },
    { "growless-cave", "Growless Cave", 37, 69 },
    { "lordamere-internment-camp", "Lordamere Internment Camp", 20, 85 },
    { "misty-shore", "Misty Shore", 27, 43 },
    { "ruins-of-alterac", "Ruins of Alterac", 36, 54 },
    { "sofera-s-naze", "Sofera's Naze", 58, 67 },
    { "strahnbrad", "Strahnbrad", 62, 43 },
    { "the-headland", "The Headland", 38, 87 },
    { "the-uplands", "The Uplands", 58, 31 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-alterac-mountains-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Alterac Mountains.",
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
    id = "legacy-explore-alterac-mountains",
    title = "Explore Alterac Mountains",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
