local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
local guide = assert(ns.guides['leveling-casual-horde'])
local prefix = 'leveling-era-horde-ashenvale-part-2:'
local paw, pawIndex = ns.Engine:GetGoal(guide, prefix .. 'loot-starter-before-accept-23-ursangous-s-paw')
local globe, globeIndex = ns.Engine:GetGoal(guide, prefix .. 'loot-starter-before-accept-1918-the-befouled-element')
assert(paw and globe, 'Exercise both production item starter instructions')
local state = { faction = 'Horde', raceID = 2, classID = 1, level = 25,
    quests = {}, completedQuests = {}, items = {}, questLogKnown = true,
    questCompletionKnown = true, professions = {}, professionsKnown = true }
assert(ns.EvaluateCondition(paw.conditions, state) == false,
    'Ursangous hunting waits for observed completion of The Ashenvale Hunt (6383)')
state.quests[6383] = { complete = true, objectives = {} }
assert(ns.EvaluateCondition(paw.conditions, state) == false, 'A ready-to-turn-in Hunt still does not enable the paw drop')
state.quests[6383], state.completedQuests[6383] = nil, true
assert(ns.EvaluateCondition(paw.conditions, state) == true, 'The Hunt turn-in enables Ursangous hunting')
assert(paw.route[1].mapID == 1440 and math.abs(paw.route[1].x - .423) < .000001
    and math.abs(paw.route[1].y - .688) < .000001, 'Ursangous has the reported Ashenvale waypoint')
assert(ns.EvaluateCondition(globe.conditions, state) == false, 'Tideress hunting waits for Stonetalon Standstill')
state.quests[25] = { complete = false, objectives = {} }
assert(ns.EvaluateCondition(globe.conditions, state) == true, 'An active Stonetalon Standstill enables the Tideress outing')
assert(globe.route[1].mapID == 1440 and math.abs(globe.route[1].x - .507) < .000001
    and math.abs(globe.route[1].y - .718) < .000001, 'Tideress has the reported Mystral Lake waypoint')
local _, huntIndex = ns.Engine:GetGoal(guide, prefix .. 'turnin-6383-the-ashenvale-hunt')
local _, waterPickupIndex = ns.Engine:GetGoal(guide, prefix .. 'accept-25-stonetalon-standstill')
assert(huntIndex < pawIndex and waterPickupIndex < globeIndex, 'Both prerequisite visits precede their loot outings')
ns.charDB = { orderedRoutes = {} }
local skipped = ns.OrderedRoutes:SkipQuests(guide, 25, state)
assert(skipped[1918], 'Skipping Stonetalon Standstill also passes its unavailable globe chain')
print('Ashenvale item starter checks passed')
