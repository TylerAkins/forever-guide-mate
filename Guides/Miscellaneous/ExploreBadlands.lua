local _, ns = ...

local ACHIEVEMENT_ID = 765
local ZONE_MAP_ID = 1418

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
    { "lethlor-ravine", "Lethlor Ravine", 80, 56 },
    { "camp-boff", "Camp Boff", 62, 72 },
    { "agmond-s-end", "Agmond's End", 47, 70 },
    { "mirage-flats", "Mirage Flats", 30, 69 },
    { "camp-cagg", "Camp Cagg", 15, 75 },
    { "apocryphan-s-rest", "Apocryphan's Rest", 15, 60 },
    { "kargath", "Kargath", 4, 46 },
    { "the-dustbowl", "The Dustbowl", 26, 52 },
    { "valley-of-fangs", "Valley of Fangs", 48, 53 },
    { "angor-fortress", "Angor Fortress", 43, 30 },
    { "dustwind-gulch", "Dustwind Gulch", 62, 42 },
    { "hammertoe-s-digsite", "Hammertoe's Digsite", 52, 34 },
    { "the-maker-s-terrace", "The Maker's Terrace", 49, 13 },
    { "camp-kosh", "Camp Kosh", 67, 21 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-badlands-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Badlands.",
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
    id = "legacy-explore-badlands",
    title = "Explore Badlands",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
