local _, ns = ...

local ACHIEVEMENT_ID = 851
local ZONE_MAP_ID = 1446

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
    { "gadgetzan", "Gadgetzan", 50, 28 },
    { "sandsorrow-watch", "Sandsorrow Watch", 38, 27 },
    { "noonshade-ruins", "Noonshade Ruins", 60, 25 },
    { "steamwheedle-port", "Steamwheedle Port", 67, 23 },
    { "zalashji-s-den", "Zalashji's Den", 67, 32 },
    { "lost-rigger-cove", "Lost Rigger Cove", 73, 46 },
    { "waterspring-field", "Waterspring Field", 60, 36 },
    { "abyssal-sands", "Abyssal Sands", 45, 41 },
    { "broken-pillar", "Broken Pillar", 52, 45 },
    { "the-noxious-lair", "The Noxious Lair", 36, 43 },
    { "dunemaul-compound", "Dunemaul Compound", 40, 57 },
    { "southbreak-shore", "Southbreak Shore", 64, 60 },
    { "the-gaping-chasm", "The Gaping Chasm", 52, 67 },
    { "eastmoon-ruins", "Eastmoon Ruins", 47, 65 },
    { "land-s-end-beach", "Land's End Beach", 64, 73, "Swim along the coast near (64, 73) to discover Land's End Beach." },
    { "southmoon-ruins", "Southmoon Ruins", 40, 72 },
    { "valley-of-the-watchers", "Valley of the Watchers", 36, 77 },
    { "thistleshrub-valley", "Thistleshrub Valley", 29, 64 },
    { "zul-farrak", "Zul'Farrak", 38, 16 },
    { "caverns-of-time", "Caverns of Time", 65, 49 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y, instruction = unpack(location)
    local goal = {
        id = "explore-tanaris-" .. id,
        kind = "travel",
        priority = index * 10,
        text = instruction or "Explore " .. name .. " in Tanaris.",
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
    id = "legacy-explore-tanaris",
    title = "Explore Tanaris",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
