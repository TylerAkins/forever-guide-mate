local _, ns = ...

local ACHIEVEMENT_ID = 782
local ZONE_MAP_ID = 1435

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
    { "itharius-s-cave", "Itharius's Cave", 13, 68 },
    { "misty-valley", "Misty Valley", 14, 36 },
    { "the-harborage", "The Harborage", 25, 31 },
    { "splinterspear-junction", "Splinterspear Junction", 17, 51 },
    { "the-shifting-mire", "The Shifting Mire", 36, 42 },
    { "stonard", "Stonard", 46, 54 },
    { "pool-of-tears", "Pool of Tears", 65, 54 },
    { "stagalbog", "Stagalbog", 70, 83 },
    { "sorrowmurk", "Sorrowmurk", 84, 47 },
    { "fallow-sanctuary", "Fallow Sanctuary", 62, 23 },
    { "misty-reed-strand", "Misty Reed Strand", 94, 48 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-swamp-of-sorrows-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Swamp of Sorrows.",
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
    id = "legacy-explore-swamp-of-sorrows",
    title = "Explore Swamp of Sorrows",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
