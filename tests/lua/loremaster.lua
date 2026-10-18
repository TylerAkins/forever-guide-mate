local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
local guide = assert(ns.guides['loremaster-dun-morogh'], 'Dun Morogh has a Loremaster itinerary')
local function index(kind, quest)
    for i, goal in ipairs(guide.goals) do
        if goal.kind == kind and ns.Engine:GetGoalQuestID(goal) == quest then return i, goal end
    end
    error('Missing ' .. kind .. ' for quest ' .. quest)
end
local prior = index('turnin', 412)
local follow, accept = index('accept', 95041)
assert(prior < follow, 'Operation Recombobulation unlocks Data Hoarders before its Ironforge pickup')
local found = false
for _, group in ipairs(accept.requiredQuests or {}) do
    for _, quest in ipairs(group.quests) do if quest == 412 then found = true end end
end
assert(found, 'Data Hoarders requires observed completion of Operation Recombobulation')
assert(accept.route[1].mapID == 1455, 'Data Hoarders is accepted in Ironforge despite Dun Morogh ownership')
print('Loremaster route checks passed')
local snapshot = { faction = 'Alliance', raceID = 3, classID = 1, level = 10,
    quests = {}, completedQuests = {}, questLogKnown = true, questCompletionKnown = true,
    professionsKnown = true, professions = {}, items = {} }
assert(ns.OrderedRoutes:Prerequisites(accept, snapshot) == false, 'Data Hoarders waits for the actual predecessor turn-in')
snapshot.completedQuests[412] = true
assert(ns.OrderedRoutes:Prerequisites(accept, snapshot) == true, 'Observed predecessor completion unlocks Data Hoarders')
local _, smith = index('accept', 95217)
assert(ns.OrderedRoutes:ExcludedAction(smith, snapshot), 'Non-blacksmiths pass the profession quest')
snapshot.professions[164] = 1
assert(not ns.OrderedRoutes:ExcludedAction(smith, snapshot), 'Blacksmiths retain the quarry quest')
local _, map = index('accept', 96391)
assert(ns.OrderedRoutes:ExcludedAction(map, snapshot), 'An absent optional map does not block Loremaster')
snapshot.items['Dark Iron Map'] = 1
assert(not ns.OrderedRoutes:ExcludedAction(map, snapshot), 'The outdoor map drop enables its quest')
local _, brew = index('accept', 415)
snapshot.completedQuests[413] = true
assert(ns.OrderedRoutes:ExcludedAction(brew, snapshot), 'Shimmer Stout completion bypasses its unavailable breadcrumb')
