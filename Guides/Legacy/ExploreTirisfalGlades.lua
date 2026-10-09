local _, ns = ...

local ACHIEVEMENT_ID = 768
local TIRISFAL_MAP_ID = 1420

local function Point(x, y, name)
    return {
        mapID = TIRISFAL_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "deathknell", "Deathknell", 35, 59 },
    { "solliden-farmstead", "Solliden Farmstead", 36, 50 },
    { "agamand-mills", "Agamand Mills", 48, 39 },
    { "stillwater-pond", "Stillwater Pond", 49, 52 },
    { "nightmare-vale", "Nightmare Vale", 48, 64 },
    { "cold-hearth-manor", "Cold Hearth Manor", 53, 57 },
    { "brill", "Brill", 59, 51 },
    { "garren-s-haunt", "Garren's Haunt", 59, 35 },
    { "brightwater-lake", "Brightwater Lake", 68, 45 },
    { "balnir-farmstead", "Balnir Farmstead", 75, 61 },
    { "crusader-outpost", "Crusader Outpost", 78, 55 },
    { "scarlet-watch-post", "Scarlet Watch Post", 79, 29 },
    { "whispering-gardens", "Whispering Gardens", 81, 32 },
    { "venomweb-vale", "Venomweb Vale", 84, 47 },
    { "the-bulwark", "The Bulwark", 82.2, 70.6 },
    { "undercity", "Undercity", 61, 66 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-tirisfal-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Tirisfal Glades.",
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
    id = "legacy-explore-tirisfal-glades",
    title = "Explore Tirisfal Glades",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
