local _, ns = ...

local ACHIEVEMENT_ID = 857
local ZONE_MAP_ID = 1452

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
    { "frostfire-hot-springs", "Frostfire Hot Springs", 30, 37 },
    { "timbermaw-post", "Timbermaw Post", 40, 42 },
    { "lake-kel-theril", "Lake Kel'Theril", 53, 41 },
    { "starfall-village", "Starfall Village", 50, 28 },
    { "mazthoril", "Mazthoril", 57, 54 },
    { "everlook", "Everlook", 61, 37 },
    { "owl-wing-thicket", "Owl Wing Thicket", 65, 60 },
    { "ice-thistle-hills", "Ice Thistle Hills", 68, 43 },
    { "winterfall-village", "Winterfall Village", 68, 36 },
    { "the-hidden-grove", "The Hidden Grove", 63, 16 },
    { "frostsaber-rock", "Frostsaber Rock", 49, 11 },
    { "frostwhisper-gorge", "Frostwhisper Gorge", 61, 68 },
    { "darkwhisper-gorge", "Darkwhisper Gorge", 58, 80 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-winterspring-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Winterspring.",
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
    id = "legacy-explore-winterspring",
    title = "Explore Winterspring",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
