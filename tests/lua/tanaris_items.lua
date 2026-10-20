local ns = {}
for path in io.lines('ForeverGuideMate.toc') do if path:match('%.lua$') then assert(loadfile(path))('FGM',ns) end end
local roots={[351]='OOX-17/TN Distress Beacon',[2876]='Ship Schedule'}
local checked=0
for id,guide in pairs(ns.guides) do
 if id:match('^leveling%-era%-') or id=='loremaster-tanaris' then
  for _,goal in ipairs(guide.goals) do
   local q=ns.Engine:GetGoalQuestID(goal) or goal.checkpointQuest or goal.referenceQuest
   if roots[q] then
    checked=checked+1
    local faction=(id:match('horde') or goal.id:match('^horde%-') or q==654) and 'Horde' or 'Alliance'
    local state={raceID=faction=='Horde' and 2 or 1,classID=1,faction=faction,level=60,items={},quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
    assert(ns.OrderedRoutes:ExcludedAction(goal,state),'Optional item chain skips cold entry: '..id..'/'..goal.id)
    state.items[roots[q]]=1
    if q==654 then state.completedQuests[379]=true end
    assert(not ns.OrderedRoutes:ExcludedAction(goal,state),'Held item retains optional path: '..goal.id)
    state.items={};state.quests[q]={}
    assert(not ns.OrderedRoutes:ExcludedAction(goal,state),'Active quest history retains optional path: '..goal.id)
   end
  end
 end
end
assert(checked>20,'Tanaris item chains are covered')
print('Tanaris optional item checks passed: '..checked)
