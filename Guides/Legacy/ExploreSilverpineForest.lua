local _, ns = ...

local ACHIEVEMENT_ID = 769
local SILVERPINE_MAP_ID = 1421

local function Point(x, y, name)
    return {
        mapID = SILVERPINE_MAP_ID,
        x = x / 100,
        y = y / 100,
        label = name,
        offMapText = "Travel to " .. name .. ".",
    }
end

local locations = {
    { "malden-s-orchard", "Malden's Orchard", 57, 10 },
    { "the-shining-strand", "The Shining Strand", 55, 23 },
    { "the-dead-field", "The Dead Field", 45, 20 },
    { "the-skittering-dark", "The Skittering Dark", 37, 16 },
    { "north-tide-s-hollow", "North Tide's Hollow", 39, 28 },
    { "fenris-isle", "Fenris Isle", 66, 27 },
    { "the-decrepit-ferry", "The Decrepit Ferry", 57, 34 },
    { "the-sepulcher", "The Sepulcher", 43, 41 },
    { "deep-elem-mine", "Deep Elem Mine", 55, 47 },
    { "olsen-s-farthing", "Olsen's Farthing", 47, 53 },
    { "ambermill", "Ambermill", 61, 64 },
    { "shadowfang-keep", "Shadowfang Keep", 44, 68 },
    { "pyrewood-village", "Pyrewood Village", 45, 73 },
    { "the-greymane-wall", "The Greymane Wall", 46, 83 },
    { "beren-s-peril", "Beren's Peril", 61, 74 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-silverpine-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Silverpine Forest.",
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
    id = "legacy-explore-silverpine-forest",
    title = "Explore Silverpine Forest",
    category = "Legacy Points",
    revision = 1,
    goals = goals,
})
