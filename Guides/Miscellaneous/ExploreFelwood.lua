local _, ns = ...

local ACHIEVEMENT_ID = 853
local ZONE_MAP_ID = 1448

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
    { "felpaw-village", "Felpaw Village", 63, 10 },
    { "talonbranch-glade", "Talonbranch Glade", 63, 22 },
    { "irontree-woods", "Irontree Woods", 48, 23 },
    { "jadefire-run", "Jadefire Run", 42, 16 },
    { "shatter-scar-vale", "Shatter Scar Vale", 42, 40 },
    { "bloodvenom-falls", "Bloodvenom Falls", 41, 47 },
    { "jaedenar", "Jaedenar", 35, 60 },
    { "ruins-of-constellas", "Ruins of Constellas", 37, 68 },
    { "jadefire-glen", "Jadefire Glen", 39, 82 },
    { "emerald-sanctuary", "Emerald Sanctuary", 51, 81 },
    { "deadwood-village", "Deadwood Village", 48, 90 },
    { "morlos-aran", "Morlos'Aran", 56, 87 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-felwood-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Felwood.",
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
    id = "legacy-explore-felwood",
    title = "Explore Felwood",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
