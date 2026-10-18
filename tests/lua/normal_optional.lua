local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
local normal = assert(ns.guides['leveling-casual-horde'])
local actions = {}
for _, goal in ipairs(normal.goals) do
    if ns.Engine:GetGoalQuestID(goal) == 885 then actions[#actions + 1] = goal end
end
assert(#actions == 4, 'Exercise the normal route encounter, preparation, pickup, and turn-in')
assert(actions[1].text:find('many locations', 1, true), 'The encounter explains that Washte Pawne has many spawn locations')
assert(actions[1].text:lower():find('skip', 1, true), 'The normal guide explicitly offers Skip')
local function copy(value)
    if type(value) ~= 'table' then return value end
    local result = {}
    for key, child in pairs(value) do result[key] = copy(child) end
    return result
end
local itinerary = { id = 'test-normal-washte', title = 'Normal encounter test',
    category = 'Leveling Quest Guides', routeMode = 'ordered', revision = 1, goals = copy(actions) }
itinerary.goals[#itinerary.goals + 1] = { id = 'continue-normal-route', kind = 'note', text = 'Continue the normal route.' }
ns:RegisterGuide(itinerary)
ns.db = { autoAdvance = true }
local function select(items, quests, completed)
    ns.charDB = { selectedGuide = itinerary.id, orderedRoutes = {}, activeGoalByGuide = {} }
    ns.Engine.reviewingGoal = nil
    local state = { faction = 'Horde', raceID = 2, classID = 1, level = 20,
        quests = quests or {}, completedQuests = completed or {}, items = items or {},
        questLogKnown = true, questCompletionKnown = true, professionsKnown = true, professions = {} }
    ns.Engine:Refresh(state)
    return state
end
local state = select()
assert(ns.Engine.currentGoal.id == actions[1].id, 'An absent encounter presents the optional instruction')
assert(#ns.Engine:PreviewSkip() == 3, 'Skipping the encounter covers the later preparation, accept, and return')
assert(ns.Engine:SkipCurrent(true), 'The optional encounter can be skipped')
assert(ns.Engine.currentGoal.id == 'continue-normal-route', 'The route continues without another feather stop')
assert(state.completedQuests[885] == nil and state.quests[885] == nil, 'Skipping grants no quest credit')
assert(ns.Engine:GetGuideProgress(itinerary, state).completed == 0, 'Skipped encounter actions do not count as completed')
state = select({ ["Washte Pawne's Feather"] = 1 })
assert(ns.Engine.currentGoal.kind == 'accept', 'A player with the feather can accept the quest')
state = select({}, { [885] = { complete = true, objectives = {} } })
assert(ns.Engine.currentGoal.kind == 'turnin', 'An active quest keeps its real Jorn Skyseer turn-in')
state = select({}, {}, { [885] = true })
assert(ns.Engine.currentGoal.id == 'continue-normal-route', 'Observed completion passes all encounter work')
print('Optional normal encounter checks passed')
