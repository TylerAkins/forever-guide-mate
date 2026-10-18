local _, ns = ...

local ACHIEVEMENT_ID = 854
local ZONE_MAP_ID = 1449

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
    { "fire-plume-ridge", "Fire Plume Ridge", 51, 47 },
    { "golakka-hot-springs", "Golakka Hot Springs", 31, 50 },
    { "terror-run", "Terror Run", 32, 67 },
    { "the-slithering-scar", "The Slithering Scar", 50, 79 },
    { "the-marshlands", "The Marshlands", 68, 64 },
    { "ironstone-plateau", "Ironstone Plateau", 77, 32 },
    { "lakkari-tar-pits", "Lakkari Tar Pits", 50, 21 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-un-goro-crater-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Un'Goro Crater.",
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
    id = "legacy-explore-un-goro-crater",
    title = "Explore Un'Goro Crater",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
