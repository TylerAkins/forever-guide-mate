local _, ns = ...

local ACHIEVEMENT_ID = 842
local TELDRASSIL_MAP_ID = 1438

local function Point(x, y, name)
    return {
        mapID = TELDRASSIL_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "shadowglen", "Shadowglen", 60, 43 },
    { "ban-ethil-hollow", "Ban'ethil Hollow", 46, 51 },
    { "dolanaar", "Dolanaar", 55, 58 },
    { "gnarlpine-hold", "Gnarlpine Hold", 42.8, 76.0 },
    { "lake-al-ameth", "Lake Al'Ameth", 54, 68 },
    { "pools-of-arlithrien", "Pools of Arlithrien", 42.84, 59.56 },
    { "starbreeze-village", "Starbreeze Village", 66, 57 },
    { "oracle-glade", "The Oracle Glade", 38, 30 },
    { "wellspring-lake", "Wellspring Lake", 42, 40 },
    { "darnassus", "Darnassus", 25, 55 },
    { "rut-theran-village", "Rut'theran Village", 55, 91 },
    { "the-cleft", "The Cleft", 51.8, 38.4 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-teldrassil-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Teldrassil.",
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
    id = "legacy-explore-teldrassil",
    title = "Explore Teldrassil",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
