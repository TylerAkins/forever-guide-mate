local _, ns = ...

local ACHIEVEMENT_ID = 849
local ZONE_MAP_ID = 1444

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
    { "dream-bough", "Dream Bough", 51, 9 },
    { "lower-wilds", "Lower Wilds", 84, 46 },
    { "oneiros", "Oneiros", 54, 16 },
    { "ruins-of-ravenwind", "Ruins of Ravenwind", 40, 12 },
    { "the-twin-colossals", "The Twin Colossals", 46, 18 },
    { "the-forgotten-coast", "The Forgotten Coast", 45, 49 },
    { "dire-maul", "Dire Maul", 59, 44 },
    { "feral-scar-vale", "Feral Scar Vale", 54, 56 },
    { "frayfeather-highlands", "Frayfeather Highlands", 54, 69 },
    { "ruins-of-isildien", "Ruins of Isildien", 59, 69 },
    { "the-writhing-deep", "The Writhing Deep", 75, 61 },
    { "camp-mojache", "Camp Mojache", 75, 42 },
    { "grimtotem-compound", "Grimtotem Compound", 66, 38 },
    { "gordunni-outpost", "Gordunni Outpost", 77, 31 },
    { "sardor-isle", "Sardor Isle", 29, 49 },
    { "isle-of-dread", "Isle of Dread", 34, 78 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-feralas-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Feralas.",
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
    id = "legacy-explore-feralas",
    title = "Explore Feralas",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
