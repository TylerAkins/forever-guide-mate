local _, ns = ...

local ACHIEVEMENT_ID = 848
local ZONE_MAP_ID = 1443

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
    { "tethris-aran", "Tethris Aran", 54, 13 },
    { "nijel-s-point", "Nijel's Point", 65, 9 },
    { "sargeron", "Sargeron", 76, 21 },
    { "thunder-axe-fortress", "Thunder Axe Fortress", 55, 28 },
    { "kormek-s-hut", "Kormek's Hut", 62, 39 },
    { "kolkar-village", "Kolkar Village", 73, 48 },
    { "ethel-rethor", "Ethel Rethor", 38, 28 },
    { "valley-of-spears", "Valley of Spears", 33, 58 },
    { "kodo-graveyard", "Kodo Graveyard", 50, 57 },
    { "shadowprey-village", "Shadowprey Village", 24, 70 },
    { "gelkis-village", "Gelkis Village", 34, 86 },
    { "mannoroc-coven", "Mannoroc Coven", 52, 76 },
    { "magram-village", "Magram Village", 72, 73 },
    { "shadowbreak-ravine", "Shadowbreak Ravine", 79, 77 },
    { "ranazjar-isle", "Ranazjar Isle", 28, 9 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-desolace-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Desolace.",
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
    id = "legacy-explore-desolace",
    title = "Explore Desolace",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
