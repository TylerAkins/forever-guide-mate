local _, ns = ...

local ACHIEVEMENT_ID = 844
local DARKSHORE_MAP_ID = 1439

local function Point(x, y, name)
    return {
        mapID = DARKSHORE_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "auberdine", "Auberdine", 38, 44 },
    { "ruins-of-mathystra", "Ruins of Mathystra", 58, 20 },
    { "tower-of-althalaxx", "Tower of Althalaxx", 56, 26 },
    { "cliffspring-river", "Cliffspring River", 52, 31 },
    { "bashal-aran", "Bashal'Aran", 44, 36 },
    { "ameth-aran", "Ameth'Aran", 43, 57 },
    { "grove-of-the-ancients", "Grove of the Ancients", 43, 77 },
    { "remtravels-excavation", "Remtravel's Excavation", 35, 85 },
    { "the-masters-glaive", "The Master's Glaive", 38, 86 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-darkshore-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Darkshore.",
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
    id = "legacy-explore-darkshore",
    title = "Explore Darkshore",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
