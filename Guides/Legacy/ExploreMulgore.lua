local _, ns = ...

local ACHIEVEMENT_ID = 736
local MULGORE_MAP_ID = 1412

local function Point(x, y, name)
    return {
        mapID = MULGORE_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "red-cloud-mesa", "Red Cloud Mesa", 39, 82 },
    { "palemane-rock", "Palemane Rock", 34, 62 },
    { "bloodhoof-village", "Bloodhoof Village", 49, 58 },
    { "winterhoof-water-well", "Winterhoof Water Well", 53, 66 },
    { "the-rolling-plains", "The Rolling Plains", 61, 67 },
    { "the-venture-co-mine", "The Venture Co. Mine", 62, 48 },
    { "ravaged-caravan", "Ravaged Caravan", 53, 47 },
    { "the-golden-plains", "The Golden Plains", 49, 35 },
    { "thunderhorn-water-well", "Thunderhorn Water Well", 44, 45 },
    { "bael-dun-digsite", "Bael'Dun Digsite", 32, 48 },
    { "red-rocks", "Red Rocks", 60, 21 },
    { "windfury-ridge", "Windfury Ridge", 52, 11 },
    { "wildmane-water-well", "Wildmane Water Well", 42, 14 },
    { "thunder-bluff", "Thunder Bluff", 36, 29 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-mulgore-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Mulgore.",
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
    id = "legacy-explore-mulgore",
    title = "Explore Mulgore",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
