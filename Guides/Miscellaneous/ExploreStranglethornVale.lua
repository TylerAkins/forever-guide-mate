local _, ns = ...

local ACHIEVEMENT_ID = 781
local ZONE_MAP_ID = 1434

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
    { "booty-bay", "Booty Bay", 27, 73 },
    { "nesingwary-s-expedition", "Nesingwary's Expedition", 35, 12 },
    { "grom-gol-base-camp", "Grom'gol Base Camp", 32, 28 },
    { "rebel-camp", "Rebel Camp", 39, 4 },
    { "kurzen-s-compound", "Kurzen's Compound", 45, 7 },
    { "wild-shore", "Wild Shore", 32, 77 },
    { "nek-mani-wellspring", "Nek'mani Wellspring", 26, 63 },
    { "mistvale-valley", "Mistvale Valley", 34, 64 },
    { "bloodsail-compound", "Bloodsail Compound", 23, 51 },
    { "ruins-of-aboraz", "Ruins of Aboraz", 39, 58 },
    { "ruins-of-jubuwal", "Ruins of Jubuwal", 35, 51 },
    { "crystalvein-mine", "Crystalvein Mine", 40, 50 },
    { "ziata-jai-ruins", "Ziata'jai Ruins", 41, 40 },
    { "gurubashi-arena", "Gurubashi Arena", 30, 48 },
    { "ruins-of-zul-mamwe", "Ruins of Zul'Mamwe", 46, 41 },
    { "balia-mah-ruins", "Balia'mah Ruins", 42, 35 },
    { "mizjah-ruins", "Mizjah Ruins", 36, 30 },
    { "mosh-ogg-ogre-mound", "Mosh'Ogg Ogre Mound", 48, 28 },
    { "venture-co-base-camp", "Venture Co. Base Camp", 44, 20 },
    { "lake-nazferiti", "Lake Nazferiti", 40, 19 },
    { "kal-ai-ruins", "Kal'ai Ruins", 33, 20 },
    { "bal-lal-ruins", "Bal'lal Ruins", 29, 19 },
    { "the-vile-reef", "The Vile Reef", 25, 27 },
    { "zuuldaia-ruins", "Zuuldaia Ruins", 21, 14 },
    { "ruins-of-zul-kunda", "Ruins of Zul'Kunda", 24, 11 },
    { "jaguero-isle", "Jaguero Isle", 38, 81 },
    { "zul-gurub", "Zul'Gurub", 53, 17 },
}

local goals = {}
local previousID
for index, location in ipairs(locations) do
    local id, name, x, y = unpack(location)
    local goal = {
        id = "explore-stranglethorn-vale-" .. id,
        kind = "travel",
        priority = index * 10,
        text = "Explore " .. name .. " in Stranglethorn Vale.",
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
    id = "legacy-explore-stranglethorn-vale",
    title = "Explore Stranglethorn Vale",
    category = "Miscellaneous Guides",
    revision = 1,
    goals = goals,
})
