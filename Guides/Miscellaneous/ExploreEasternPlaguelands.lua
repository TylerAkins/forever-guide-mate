local _, ns = ...

local ACHIEVEMENT_ID = 771
local ZONE_MAP_ID = 1423

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
    { "stratholme", "Stratholme", 27, 12 },
    { "light-s-hope-chapel", "Light's Hope Chapel", 75, 53 },
    { "quel-lithien-lodge", "Quel'Lithien Lodge", 48, 15 },
    { "blackwood-lake", "Blackwood Lake", 47, 43 },
    { "ruins-of-the-scarlet-enclave", "Ruins of the Scarlet Enclave", 86, 80 },
    { "terrordale", "Terrordale", 14, 28 },
    { "zul-mashar", "Zul'Mashar", 67, 9 },
    { "the-infectis-scar", "The Infectis Scar", 49, 62 },
    { "darrowshire", "Darrowshire", 35, 84 },
    { "northpass-tower", "Northpass Tower", 52, 20 },
    { "northdale", "Northdale", 65, 26 },
    { "eastwall-tower", "Eastwall Tower", 62, 42 },
    { "the-noxious-glade", "The Noxious Glade", 77, 37 },
    { "lake-mereldar", "Lake Mereldar", 57, 74 },
    { "plaguewood", "Plaguewood", 28, 21 },
    { "corin-s-crossing", "Corin's Crossing", 54, 62 },
    { "the-fungal-vale", "The Fungal Vale", 35, 47 },
    { "crown-guard-tower", "Crown Guard Tower", 36, 69 },
    { "the-undercroft", "The Undercroft", 24, 79 },
    { "pestilent-scar", "Pestilent Scar", 70, 54 },
    { "tyr-s-hand", "Tyr's Hand", 72, 70 },
    { "the-marris-stead", "The Marris Stead", 22, 68 },
    { "thondroril-river", "Thondroril River", 9, 66 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-eastern-plaguelands-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Eastern Plaguelands.",
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
    id = "legacy-explore-eastern-plaguelands",
    title = "Explore Eastern Plaguelands",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
