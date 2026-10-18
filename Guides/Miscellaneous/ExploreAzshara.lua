local _, ns = ...

local ACHIEVEMENT_ID = 852
local ZONE_MAP_ID = 1447

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
    { "bay-of-storms", "Bay of Storms", 56, 59 },
    { "the-shattered-strand", "The Shattered Strand", 45, 52 },
    { "jagged-reef", "Jagged Reef", 52, 10 },
    { "bitter-reaches", "Bitter Reaches", 73, 21 },
    { "tower-of-eldara", "Tower of Eldara", 89, 33 },
    { "temple-of-arkkoran", "Temple of Arkkoran", 76, 43 },
    { "legash-encampment", "Legash Encampment", 51, 19 },
    { "thalassian-base-camp", "Thalassian Base Camp", 56, 29 },
    { "ursolan", "Ursolan", 44, 27 },
    { "timbermaw-hold", "Timbermaw Hold", 38, 33 },
    { "valormok", "Valormok", 21, 51 },
    { "haldarr-encampment", "Haldarr Encampment", 20, 61 },
    { "shadowsong-shrine", "Shadowsong Shrine", 13, 74 },
    { "ruins-of-eldarath", "Ruins of Eldarath", 36, 53 },
    { "southridge-beach", "Southridge Beach", 47, 66 },
    { "ravencrest-monument", "Ravencrest Monument", 72, 86 },
    { "lake-mennar", "Lake Mennar", 40, 80 },
    { "the-ruined-reaches", "The Ruined Reaches", 51, 88 },
    { "forlorn-ridge", "Forlorn Ridge", 30, 71 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-azshara-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Azshara.",
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
    id = "legacy-explore-azshara",
    title = "Explore Azshara",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
