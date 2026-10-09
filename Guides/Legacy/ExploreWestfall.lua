local _, ns = ...

local ACHIEVEMENT_ID = 802
local WESTFALL_MAP_ID = 1436

local function Point(x, y, name)
    return {
        mapID = WESTFALL_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "sentinel-hill", "Sentinel Hill", 54, 50 },
    { "saldean-s-farm", "Saldean's Farm", 54, 32 },
    { "furlbrow-s-pumpkin-farm", "Furlbrow's Pumpkin Farm", 51, 22 },
    { "the-jansen-stead", "The Jansen Stead", 58, 17 },
    { "jangolode-mine", "Jangolode Mine", 44, 25 },
    { "the-molsen-farm", "The Molsen Farm", 44, 35 },
    { "gold-coast-quarry", "Gold Coast Quarry", 32, 43 },
    { "the-dead-acre", "The Dead Acre", 62, 60 },
    { "moonbrook", "Moonbrook", 43, 69 },
    { "alexston-farmstead", "Alexston Farmstead", 38, 52 },
    { "demont-s-place", "Demont's Place", 32, 75 },
    { "westfall-lighthouse", "Westfall Lighthouse", 30, 86 },
    { "the-dagger-hills", "The Dagger Hills", 47, 78 },
    { "the-dust-plains", "The Dust Plains", 64, 72 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-westfall-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Westfall.",
        complete = { achievementCriterion = { id = ACHIEVEMENT_ID, name = name } },
        route = { Point(x, y, name) },
    }
    if previousID then goal.dependsOn = { previousID } end
    goals[#goals + 1] = goal
    previousID = goal.id
end

ns:RegisterGuide({
    id = "legacy-explore-westfall",
    title = "Explore Westfall",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
