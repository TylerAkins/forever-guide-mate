local _, ns = ...

local ACHIEVEMENT_ID = 856
local ZONE_MAP_ID = 1451

local function Point(x, y, name)
    return {
        mapID = ZONE_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "crystal-vale", "Crystal Vale", 28, 14 },
    { "hive-ashi", "Hive'Ashi", 49, 24 },
    { "cenarion-hold", "Cenarion Hold", 53, 34 },
    { "staghelm-point", "Staghelm Point", 67, 28 },
    { "hive-zora", "Hive'Zora", 32, 52 },
    { "the-scarab-wall", "The Scarab Wall", 29, 90 },
    { "hive-regal", "Hive'Regal", 59, 70 },
    { "southwind-village", "Southwind Village", 64, 50 },
    { "valor-s-rest", "Valor's Rest", 81, 18 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-silithus-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Silithus.",
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
    id = "legacy-explore-silithus",
    title = "Explore Silithus",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
