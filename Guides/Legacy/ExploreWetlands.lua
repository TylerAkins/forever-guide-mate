local _, ns = ...

local ACHIEVEMENT_ID = 841
local WETLANDS_MAP_ID = 1437

local function Point(x, y, name)
    return {
        mapID = WETLANDS_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "menethil-harbor", "Menethil Harbor", 11, 53 },
    { "black-channel-marsh", "Black Channel Marsh", 21, 46 },
    { "bluegill-marsh", "Bluegill Marsh", 19, 37 },
    { "whelgar-s-excavation-site", "Whelgar's Excavation Site", 35, 47 },
    { "sundown-marsh", "Sundown Marsh", 28, 30 },
    { "saltspray-glen", "Saltspray Glen", 34, 20 },
    { "ironbeard-s-tomb", "Ironbeard's Tomb", 44, 27 },
    { "dun-modr", "Dun Modr", 49, 17 },
    { "angerfang-encampment", "Angerfang Encampment", 47, 48 },
    { "dun-algaz", "Dun Algaz", 52, 72 },
    { "the-green-belt", "The Green Belt", 55, 34 },
    { "mosshide-fen", "Mosshide Fen", 58, 53 },
    { "direforge-hill", "Direforge Hill", 61, 33 },
    { "raptor-ridge", "Raptor Ridge", 68, 37 },
    { "grim-batol", "Grim Batol", 78, 74 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-wetlands-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Wetlands.",
        complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-wetlands",
    title = "Explore Wetlands",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
