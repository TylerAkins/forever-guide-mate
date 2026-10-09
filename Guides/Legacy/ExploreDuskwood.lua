local _, ns = ...

local ACHIEVEMENT_ID = 778
local DUSKWOOD_MAP_ID = 1431

local function Point(x, y, name)
    return {
        mapID = DUSKWOOD_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "the-hushed-bank", "The Hushed Bank", 9, 49 },
    { "addle-s-stead", "Addle's Stead", 21, 68 },
    { "raven-hill", "Raven Hill", 20, 55 },
    { "raven-hill-cemetery", "Raven Hill Cemetery", 20, 42 },
    { "vul-gol-ogre-mound", "Vul'Gol Ogre Mound", 35, 72 },
    { "twilight-grove", "Twilight Grove", 47, 44 },
    { "the-yorgen-farmstead", "The Yorgen Farmstead", 49, 73 },
    { "brightwood-grove", "Brightwood Grove", 64, 37 },
    { "the-rotting-orchard", "The Rotting Orchard", 63, 72 },
    { "tranquil-gardens-cemetery", "Tranquil Gardens Cemetery", 76, 63 },
    { "darkshire", "Darkshire", 74, 46 },
    { "manor-mistmantle", "Manor Mistmantle", 77, 35 },
    { "the-darkened-bank", "The Darkened Bank", 53, 12 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-duskwood-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Duskwood.",
        complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-duskwood",
    title = "Explore Duskwood",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
