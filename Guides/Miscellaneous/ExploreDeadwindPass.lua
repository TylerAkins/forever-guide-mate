local _, ns = ...

local ACHIEVEMENT_ID = 777
local ZONE_MAP_ID = 1430

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
    { "deadman-s-crossing", "Deadman's Crossing", 42, 34 },
    { "the-vice", "The Vice", 58, 64 },
    { "karazhan", "Karazhan", 45, 73 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-deadwind-pass-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Deadwind Pass.",
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
    id = "legacy-explore-deadwind-pass",
    title = "Explore Deadwind Pass",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
