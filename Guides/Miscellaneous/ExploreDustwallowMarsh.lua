local _, ns = ...

local ACHIEVEMENT_ID = 850
local ZONE_MAP_ID = 1445

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
    { "theramore-isle", "Theramore Isle", 66, 47 },
    { "witch-hill", "Witch Hill", 52, 27 },
    { "brackenwall-village", "Brackenwall Village", 35, 30 },
    { "the-quagmire", "The Quagmire", 41, 51 },
    { "the-den-of-flame", "The Den of Flame", 38, 65 },
    { "wyrmbog", "Wyrmbog", 52, 73 },
    { "alcaz-island", "Alcaz Island", 72, 19 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-dustwallow-marsh-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Dustwallow Marsh.",
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
    id = "legacy-explore-dustwallow-marsh",
    title = "Explore Dustwallow Marsh",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
