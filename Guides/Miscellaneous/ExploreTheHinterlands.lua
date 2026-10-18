local _, ns = ...

local ACHIEVEMENT_ID = 773
local ZONE_MAP_ID = 1425

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
    { "aerie-peak", "Aerie Peak", 13, 48 },
    { "plaguemist-ravine", "Plaguemist Ravine", 23, 40 },
    { "hiri-watha", "Hiri'watha", 31, 58 },
    { "quel-danil-lodge", "Quel'Danil Lodge", 31, 47 },
    { "shadra-alor", "Shadra'Alor", 34, 70 },
    { "valorwind-lake", "Valorwind Lake", 40, 59 },
    { "agol-watha", "Agol'watha", 47, 40 },
    { "the-creeping-ruin", "The Creeping Ruin", 51, 50 },
    { "the-altar-of-zul", "The Altar of Zul", 48, 66 },
    { "seradane", "Seradane", 63, 24 },
    { "skulk-rock", "Skulk Rock", 57, 40 },
    { "shaol-watha", "Shaol'watha", 73, 53 },
    { "jintha-alor", "Jintha'Alor", 62, 72 },
    { "the-overlook-cliffs", "The Overlook Cliffs", 76, 65 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-the-hinterlands-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in The Hinterlands.",
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
    id = "legacy-explore-the-hinterlands",
    title = "Explore The Hinterlands",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
