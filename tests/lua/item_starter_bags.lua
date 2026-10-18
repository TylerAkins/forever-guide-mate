local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
local guide = ns.guides['leveling-casual-horde']
local prefix = 'leveling-era-horde-ashenvale-part-2:'
local globe = assert(ns.Engine:GetGoal(guide, prefix .. 'loot-starter-before-accept-1918-the-befouled-element'))
local name, quantity = 'Befouled Water Globe', 0
local savedCount, savedCItem, savedContainer = GetItemCount, C_Item, C_Container
GetItemCount = function(item) return item == name and quantity or 0 end
C_Item, C_Container = nil, nil
ns.PlayerState:BagsChanged()
local state = { faction = 'Horde', raceID = 2, classID = 1, level = 25,
    quests = { [25] = { complete = false, objectives = {} } }, completedQuests = {},
    questLogKnown = true, questCompletionKnown = true, watchedQuests = { [1918] = true }, professions = {}, professionsKnown = true }
assert(ns.EvaluateCondition(globe.complete, state) == false, 'The absent starter does not finish the loot instruction')
quantity = 1
assert(ns.PlayerState:BagsChanged(), 'Looting the counted starter triggers the bag-change refresh')
assert(ns.OrderedRoutes:Observed(globe, state), 'The globe in the bags finishes its preparation instruction')
local function copy(value)
    if type(value) ~= 'table' then return value end
    local result = {}
    for key, child in pairs(value) do result[key] = copy(child) end
    return result
end
local pickup = assert(ns.Engine:GetGoal(guide, prefix .. 'accept-1918-the-befouled-element'))
local parent = assert(ns.Engine:GetGoal(guide, prefix .. 'accept-25-stonetalon-standstill'))
local delivery = assert(ns.Engine:GetGoal(guide, prefix .. 'turnin-1918-the-befouled-element'))
local route = { id = 'test-live-globe', title = 'Live globe', category = 'Leveling Quest Guides',
    revision = 1, routeMode = 'ordered', goals = {copy(parent), copy(globe), copy(pickup), copy(delivery)} }
ns:RegisterGuide(route)
ns.db = { autoAdvance = true }
ns.charDB = { selectedGuide = route.id, orderedRoutes = {}, activeGoalByGuide = {} }
ns.Engine.reviewingGoal = nil
quantity = 0
ns.PlayerState:BagsChanged()
ns.Engine:Refresh(state)
assert(ns.Engine.currentGoal.id == globe.id, 'The normal loot instruction waits before the drop')
quantity = 1
assert(ns.PlayerState:BagsChanged(), 'The actual loot instruction watches the arriving globe')
ns.Engine:Refresh(state)
assert(ns.Engine.currentGoal.id == pickup.id, 'The arriving globe advances to Use the Befouled Water Globe')
assert(state.completedQuests[1918] == nil and state.quests[1918] == nil, 'Advancing preparation does not accept or finish the quest')
state.questCompletionKnown = false
state.watchedQuests = {}
assert(ns.OrderedRoutes:Observed(globe, state), 'Positive bag evidence is sufficient while quest history is loading')
assert(state.completedQuests[1918] == nil, 'Observing the starter grants no quest completion')
GetItemCount = nil
C_Container = {
    GetContainerNumSlots = function(bag) return bag == 0 and 1 or 0 end,
    GetContainerItemLink = function() return '|cffffffff|Hitem:16408|h[Befouled Water Globe]|h|r' end,
}
ns.PlayerState:BagsChanged()
assert(ns.EvaluateCondition({ item = { name = name, minCount = 1 } }, state) == true,
    'A bag link confirms one starter when the count API is unavailable')
assert(ns.EvaluateCondition({ item = { name = name, minCount = 2 } }, state) ~= true,
    'A presence-only bag link never invents a stack quantity')
state.items = { [name] = 0 }
assert(ns.EvaluateCondition({ item = { name = name, minCount = 1 } }, state) == false,
    'An observed zero count is not treated as presence')
GetItemCount, C_Item, C_Container = savedCount, savedCItem, savedContainer
ns.PlayerState:BagsChanged()
print('Live item starter bag checks passed')
