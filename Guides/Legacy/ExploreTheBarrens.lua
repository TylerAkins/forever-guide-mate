local _, ns = ...

local ACHIEVEMENT_ID = 750
local BARRENS_MAP_ID = 1413

local function Point(x, y, name)
    return {
        mapID = BARRENS_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "boulder-lode-mine", "Boulder Lode Mine", 62, 7 },
    { "the-mor-shan-rampart", "The Mor'shan Rampart", 48, 7 },
    { "the-dry-hills", "The Dry Hills", 40, 15 },
    { "far-watch-post", "Far Watch Post", 61, 21 },
    { "the-crossroads", "The Crossroads", 52, 28 },
    { "ratchet", "Ratchet", 63, 37 },
    { "lushwater-oasis", "Lushwater Oasis", 47, 39 },
    { "the-sludge-fen", "The Sludge Fen", 55, 7 },
    { "dreadmist-peak", "Dreadmist Peak", 48, 18 },
    { "the-forgotten-pools", "The Forgotten Pools", 45, 24 },
    { "grol-dom-farm", "Grol'dom Farm", 56, 19 },
    { "thorn-hill", "Thorn Hill", 57, 28 },
    { "the-stagnant-oasis", "The Stagnant Oasis", 56, 43 },
    { "the-merchant-coast", "The Merchant Coast", 64, 45 },
    { "honor-s-stand", "Honor's Stand", 37, 28 },
    { "northwatch-hold", "Northwatch Hold", 61, 55 },
    { "bramblescar", "Bramblescar", 51, 58 },
    { "field-of-giants", "Field of Giants", 46, 71 },
    { "bael-modan", "Bael Modan", 48, 84 },
    { "razorfen-downs", "Razorfen Downs", 49, 92 },
    { "raptor-grounds", "Raptor Grounds", 56, 51 },
    { "agama-gor", "Agama'gor", 43, 48 },
    { "camp-taurajo", "Camp Taurajo", 46, 61 },
    { "blackthorn-ridge", "Blackthorn Ridge", 42, 79 },
    { "razorfen-kraul", "Razorfen Kraul", 41, 88 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } }
    if index == #locations then
        complete = {
            all = {
                complete,
                { achievement = { id = ACHIEVEMENT_ID } },
            },
        }
    end
    local goal = {
        id = "explore-barrens-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in The Barrens.",
        complete = complete,
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-the-barrens",
    title = "Explore The Barrens",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
