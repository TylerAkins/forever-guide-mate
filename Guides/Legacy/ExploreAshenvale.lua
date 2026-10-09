local _, ns = ...

local ACHIEVEMENT_ID = 845
local ASHENVALE_MAP_ID = 1440

local function Point(x, y, name)
    return {
        mapID = ASHENVALE_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "zoram-strand", "The Zoram Strand", 14, 23 },
    { "lake-falathim", "Lake Falathim", 20, 42 },
    { "maestras-post", "Maestra's Post", 27, 36 },
    { "thistlefur-village", "Thistlefur Village", 36, 37 },
    { "shrine-of-aessina", "The Shrine of Aessina", 22, 53 },
    { "fire-scar-shrine", "Fire Scar Shrine", 26, 64 },
    { "astranaar", "Astranaar", 36, 50 },
    { "iris-lake", "Iris Lake", 46, 46 },
    { "ruins-of-stardust", "The Ruins of Stardust", 33, 67 },
    { "mystral-lake", "Mystral Lake", 49, 69 },
    { "howling-vale", "The Howling Vale", 54, 36 },
    { "raynewood-retreat", "Raynewood Retreat", 61, 51 },
    { "fallen-sky-lake", "Fallen Sky Lake", 66, 82 },
    { "splintertree-post", "Splintertree Post", 73, 62 },
    { "satyrnaar", "Satyrnaar", 80, 49 },
    { "bough-shadow", "Bough Shadow", 93, 35 },
    { "warsong-lumber-camp", "Warsong Lumber Camp", 90, 58 },
    { "felfire-hill", "Felfire Hill", 89, 77 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-ashenvale-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Ashenvale.",
        complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-ashenvale",
    title = "Explore Ashenvale",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
