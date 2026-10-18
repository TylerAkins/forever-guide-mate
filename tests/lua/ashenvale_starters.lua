local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
local guide = assert(ns.guides['leveling-casual-horde'])
local prefix = 'leveling-era-horde-ashenvale-part-2:'
local paw, pawIndex = ns.Engine:GetGoal(guide, prefix .. 'loot-starter-before-accept-23-ursangous-s-paw')
local globe, globeIndex = ns.Engine:GetGoal(guide, prefix .. 'loot-starter-before-accept-1918-the-befouled-element')
local claw, clawIndex = ns.Engine:GetGoal(guide, prefix .. 'loot-starter-before-accept-2-sharptalon-s-claw')
assert(paw and globe and claw, 'Exercise the production Ashenvale item starter instructions')
local state = { faction = 'Horde', raceID = 2, classID = 1, level = 25,
    quests = {}, completedQuests = {}, items = {}, questLogKnown = true,
    questCompletionKnown = true, professions = {}, professionsKnown = true }
assert(ns.EvaluateCondition(paw.conditions, state) == false,
    'Ursangous hunting waits for observed completion of The Ashenvale Hunt (6383)')
assert(ns.EvaluateCondition(claw.conditions, state) == false, 'Sharptalon hunting waits for the Hunt turn-in')
state.quests[6383] = { complete = true, objectives = {} }
assert(ns.EvaluateCondition(paw.conditions, state) == false, 'A ready-to-turn-in Hunt still does not enable the paw drop')
assert(ns.EvaluateCondition(claw.conditions, state) == false, 'A ready Hunt does not enable the claw drop')
state.quests[6383], state.completedQuests[6383] = nil, true
assert(ns.EvaluateCondition(paw.conditions, state) == true, 'The Hunt turn-in enables Ursangous hunting')
assert(paw.route[1].mapID == 1440 and math.abs(paw.route[1].x - .423) < .000001
    and math.abs(paw.route[1].y - .688) < .000001, 'Ursangous has the reported Ashenvale waypoint')
assert(ns.EvaluateCondition(claw.conditions, state) == true, 'The Hunt turn-in enables Sharptalon hunting')
assert(claw.route and claw.route[1].mapID == 1440 and math.abs(claw.route[1].x - .759) < .000001
    and math.abs(claw.route[1].y - .695) < .000001, 'Sharptalon has the reported Ashenvale waypoint')
assert(not ns.OrderedRoutes:Observed(claw, state), 'The claw instruction waits without the item')
state.items["Sharptalon's Claw"] = 1
assert(ns.OrderedRoutes:Observed(claw, state), 'Holding the claw completes the loot instruction')
assert(not state.completedQuests[2] and not state.quests[2], 'Holding the claw grants no quest credit')
state.items = {}
assert(ns.EvaluateCondition(globe.conditions, state) == false, 'Tideress hunting waits for Stonetalon Standstill')
state.quests[25] = { complete = false, objectives = {} }
assert(ns.EvaluateCondition(globe.conditions, state) == true, 'An active Stonetalon Standstill enables the Tideress outing')
assert(globe.route[1].mapID == 1440 and math.abs(globe.route[1].x - .507) < .000001
    and math.abs(globe.route[1].y - .718) < .000001, 'Tideress has the reported Mystral Lake waypoint')
local _, huntIndex = ns.Engine:GetGoal(guide, prefix .. 'turnin-6383-the-ashenvale-hunt')
local _, waterPickupIndex = ns.Engine:GetGoal(guide, prefix .. 'accept-25-stonetalon-standstill')
assert(huntIndex < pawIndex and huntIndex < clawIndex and waterPickupIndex < globeIndex, 'Both prerequisite visits precede their loot outings')
ns.charDB = { orderedRoutes = {} }
local skipped = ns.OrderedRoutes:SkipQuests(guide, 25, state)
assert(skipped[1918], 'Skipping Stonetalon Standstill also passes its unavailable globe chain')
local function copy(value)
    if type(value) ~= 'table' then return value end
    local result = {}
    for key, child in pairs(value) do result[key] = copy(child) end
    return result
end
local clawPickup = assert(ns.Engine:GetGoal(guide, prefix .. 'accept-2-sharptalon-s-claw'))
local clawDelivery = assert(ns.Engine:GetGoal(guide, prefix .. 'turnin-2-sharptalon-s-claw'))
local huntTurnin = copy(assert(ns.Engine:GetGoal(guide, prefix .. 'turnin-6383-the-ashenvale-hunt')))
-- The fixture starts after the earlier Hunt pickup chain.
huntTurnin.dependsOn = {}
local route = { id = 'test-sharptalon-starter', title = 'Sharptalon starter', revision = 1,
    category = 'Leveling Quest Guides', routeMode = 'ordered',
    goals = { copy(huntTurnin), copy(claw), copy(clawPickup), copy(clawDelivery) } }
ns:RegisterGuide(route)
ns.db = { autoAdvance = true }
ns.charDB = { selectedGuide = route.id, orderedRoutes = {}, activeGoalByGuide = {} }
ns.Engine:Refresh(state)
assert(ns.Engine.currentGoal.id == claw.id, 'The Sharptalon outing waits before looting')
state.items["Sharptalon's Claw"] = 1
ns.Engine:Refresh(state)
assert(ns.Engine.currentGoal.id == clawPickup.id, 'Holding the claw advances to its Use step')
assert(not state.completedQuests[2] and not state.quests[2], 'Advancing to Use grants no quest credit')
print('Ashenvale item starter checks passed')
