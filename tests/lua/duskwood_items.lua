local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM', ns) end
end
local guide = ns.guides['leveling-era-alliance-duskwood-and-stranglethorn-vale']
local goals, positions = {}, {}
for i, goal in ipairs(guide.goals) do
    goals[goal.id], positions[goal.id] = goal, i
    assert(not (goal.kind == 'objective' and ns.Engine:GetGoalQuestID(goal) == 337),
        'The history book is an optional item starter, not a kill quest objective')
end
local state = {raceID=1,classID=1,faction='Alliance',level=60,quests={},completedQuests={},
    questLogKnown=true,questCompletionKnown=true,items={}}
local early = goals['accept-337-an-old-history-book']
assert(ns.OrderedRoutes:ExcludedAction(early,state), 'The route does not require farming a random book')
state.items['An Old History Book'] = 1
assert(not ns.OrderedRoutes:ExcludedAction(early,state), 'A held book enables its pickup')
state.items={}
local late = assert(goals['accept-337-an-old-history-book-late'])
assert(#late.dependsOn==0,'The optional book drop does not require accepting the Worgen chain')
assert(positions['objective-221-1-nightbane-dark-runner'] < positions[late.id], 'The optional pickup follows the Nightbane outing')
assert(positions[late.id] < positions['turnin-337-an-old-history-book-2'], 'The later city return follows its optional pickup')
local southshore=goals['accept-538-southshore']
assert(ns.OrderedRoutes:ExcludedAction(southshore,state), 'The unstarted optional chain excludes its follow-up')
state.completedQuests[337]=true
assert(not ns.OrderedRoutes:ExcludedAction(southshore,state), 'Observed book completion opens the follow-up')
assert(goals['accept-538-southshore-late'], 'The later city visit offers the follow-up after a late book drop')
local returnGuide=ns.guides['leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands']
local returnGoal
for _,g in ipairs(returnGuide.goals) do if g.id=='turnin-538-southshore' then returnGoal=g end end
state.completedQuests={}
assert(ns.OrderedRoutes:ExcludedAction(returnGoal,state),'The absent optional follow-up has no required turn-in')
state.quests[538]={}
assert(not ns.OrderedRoutes:ExcludedAction(returnGoal,state),'An active optional follow-up retains its turn-in')
print('Duskwood optional book and midway-entry checks passed')
