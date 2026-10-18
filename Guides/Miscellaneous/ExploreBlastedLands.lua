local _, ns = ...

local ACHIEVEMENT_ID = 766
local ZONE_MAP_ID = 1419

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
    { "dreadmaul-hold", "Dreadmaul Hold", 43, 13 },
    { "garrison-armory", "Garrison Armory", 54, 12, "Enter the Garrison Armory mine at (54, 12) and walk a few steps inside to discover it." },
    { "nethergarde-keep", "Nethergarde Keep", 63, 19 },
    { "serpent-s-coil", "Serpent's Coil", 63, 32 },
    { "the-dark-portal", "The Dark Portal", 59, 56 },
    { "altar-of-storms", "Altar of Storms", 39, 32 },
    { "dreadmaul-post", "Dreadmaul Post", 48, 43 },
    { "the-tainted-scar", "The Tainted Scar", 42, 59 },
    { "rise-of-the-defiler", "Rise of the Defiler", 48, 27 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y, instruction = unpack(location)
    local goal = {
        id = "explore-blasted-lands-" .. id,
        kind = "travel",
        priority = index * 10,
        text = instruction or "Explore " .. name .. " in Blasted Lands.",
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
    id = "legacy-explore-blasted-lands",
    title = "Explore Blasted Lands",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
