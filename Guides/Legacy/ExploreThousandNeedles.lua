local _, ns = ...

local ACHIEVEMENT_ID = 846
local THOUSAND_NEEDLES_MAP_ID = 1441

local function Point(x, y, name)
    return {
        mapID = THOUSAND_NEEDLES_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "the-great-lift", "The Great Lift", 31, 23 },
    { "darkcloud-pinnacle", "Darkcloud Pinnacle", 34, 38 },
    { "screeching-canyon", "The Screeching Canyon", 33, 52 },
    { "freewind-post", "Freewind Post", 45, 50 },
    { "splithoof-crag", "Splithoof Crag", 40, 37 },
    { "windbreak-canyon", "Windbreak Canyon", 60, 53 },
    { "the-shimmering-flats", "The Shimmering Flats", 75, 68 },
    { "camp-ethok", "Camp E'thok", 18, 21 },
    { "highperch", "Highperch", 12, 34 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-thousand-needles-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Thousand Needles.",
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
    id = "legacy-explore-thousand-needles",
    title = "Explore Thousand Needles",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
