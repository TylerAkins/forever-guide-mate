local ns={}
for p in io.lines('ForeverGuideMate.toc') do if p:match('%.lua$') then assert(loadfile(p))('FGM',ns) end end
local guide=ns.guides['leveling-era-alliance-arathi-highlands-and-alterac-mountains']
local positions={}
for i,g in ipairs(guide.goals) do positions[g.id]=i end
assert(positions['turnin-690-malin-s-request'] and positions['turnin-690-malin-s-request'] < positions['accept-691-worth-its-weight-in-gold'],
    'Finish the Malin breadcrumb at Skuerto before starting its target quest')
local pickup
for _,g in ipairs(ns.guides['leveling-era-alliance-duskwood-and-stranglethorn-vale'].goals) do
 if g.id=='accept-690-malin-s-request' then pickup=g end
end
local state={raceID=1,classID=8,faction='Alliance',level=60,quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
assert(not ns.OrderedRoutes:ExcludedAction(pickup,state),'Cold entry keeps the breadcrumb available')
state.completedQuests[691]=true
assert(ns.OrderedRoutes:ExcludedAction(pickup,state),'Midway entry bypasses the removed breadcrumb')
print('Arathi breadcrumb handoff and midway-entry checks passed')
