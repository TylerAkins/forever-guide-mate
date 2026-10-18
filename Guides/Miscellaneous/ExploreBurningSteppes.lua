local _, ns = ...

local ACHIEVEMENT_ID = 775
local ZONE_MAP_ID = 1428

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
    { "dreadmaul-rock", "Dreadmaul Rock", 81, 42 },
    { "morgan-s-vigil", "Morgan's Vigil", 84, 68 },
    { "terror-wing-path", "Terror Wing Path", 93, 45 },
    { "blackrock-pass", "Blackrock Pass", 77, 68 },
    { "ruins-of-thaurissan", "Ruins of Thaurissan", 65, 40 },
    { "the-pillar-of-ash", "The Pillar of Ash", 49, 55 },
    { "blackrock-stronghold", "Blackrock Stronghold", 40, 35 },
    { "draco-dar", "Draco'dar", 23, 63 },
    { "altar-of-storms", "Altar of Storms", 17, 29 },
    { "blackrock-mountain", "Blackrock Mountain", 29, 37 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-burning-steppes-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Burning Steppes.",
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
    id = "legacy-explore-burning-steppes",
    title = "Explore Burning Steppes",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
