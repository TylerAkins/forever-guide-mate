local _, ns = ...

local ACHIEVEMENT_ID = 627
local DUN_MOROGH_MAP_ID = 1426

local function Point(x, y, name)
    return {
        mapID = DUN_MOROGH_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "coldridge-pass", "Coldridge Pass", 34, 69 },
    { "chill-breeze-valley", "Chill Breeze Valley", 36, 52 },
    { "shimmer-ridge", "Shimmer Ridge", 40, 38 },
    { "kharanos", "Kharanos", 46, 52 },
    { "misty-pine-refuge", "Misty Pine Refuge", 58, 44 },
    { "the-tundrid-hills", "The Tundrid Hills", 56, 57 },
    { "amberstill-ranch", "Amberstill Ranch", 63, 50 },
    { "helm-s-bed-lake", "Helm's Bed Lake", 76, 54 },
    { "gol-bolar-quarry", "Gol'Bolar Quarry", 68, 56 },
    { "north-gate-outpost", "North Gate Outpost", 83, 41 },
    { "frostmane-hold", "Frostmane Hold", 25, 50 },
    { "brewnall-village", "Brewnall Village", 30, 45 },
    { "anvilmar", "Anvilmar", 28, 67 },
    { "the-grizzled-den", "The Grizzled Den", 42, 58 },
    { "south-gate-outpost", "South Gate Outpost", 85, 51 },
    { "iceflow-lake", "Iceflow Lake", 34, 42 },
    { "gnomeregan", "Gnomeregan", 24, 40 },
    { "gates-of-ironforge", "Gates of Ironforge", 52, 35 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-dun-morogh-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Dun Morogh.",
        complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-dun-morogh",
    title = "Explore Dun Morogh",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
