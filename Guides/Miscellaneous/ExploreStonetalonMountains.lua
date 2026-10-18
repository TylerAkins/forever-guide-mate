local _, ns = ...

local ACHIEVEMENT_ID = 847
local ZONE_MAP_ID = 1442

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
    { "camp-aparaje", "Camp Aparaje", 76, 92 },
    { "grimtotem-post", "Grimtotem Post", 75, 86 },
    { "malaka-jin", "Malaka'jin", 72, 93 },
    { "webwinder-path", "Webwinder Path", 57, 66 },
    { "boulderslide-ravine", "Boulderslide Ravine", 65, 91 },
    { "sishir-canyon", "Sishir Canyon", 54, 75 },
    { "windshear-crag", "Windshear Crag", 68, 48 },
    { "sun-rock-retreat", "Sun Rock Retreat", 49, 60 },
    { "the-charred-vale", "The Charred Vale", 32, 65 },
    { "mirkfallon-lake", "Mirkfallon Lake", 48, 40 },
    { "stonetalon-peak", "Stonetalon Peak", 36, 12 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-stonetalon-mountains-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Stonetalon Mountains.",
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
    id = "legacy-explore-stonetalon-mountains",
    title = "Explore Stonetalon Mountains",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
