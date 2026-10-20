local ns={}
for p in io.lines('ForeverGuideMate.toc') do if p:match('%.lua$') then assert(loadfile(p))('FGM',ns) end end
local check=dofile('tests/lua/guide_data_checks.lua').DisjointPickupBranches
assert(check,'Branch coverage validator is available')
local goals={}
for _,g in ipairs(ns.guides['loremaster-wetlands'].goals) do
 if ns.Engine:GetGoalQuestID(g)==1301 then goals[#goals+1]=g end
end
assert(check(goals,ns.EvaluateCondition),'Disjoint class pickups cover their shared return')
local copy={}
for i,g in ipairs(goals) do copy[i]=g end
copy[#copy+1]=goals[1]
assert(not check(copy,ns.EvaluateCondition),'Overlapping pickups are rejected')
copy={}
for i,g in ipairs(goals) do copy[i]={kind=g.kind,conditions=g.conditions} end
copy[#copy].conditions={faction='Horde'}
assert(not check(copy,ns.EvaluateCondition),'A return with no applicable pickup is rejected')
local shared={}
for _,g in ipairs(ns.guides['loremaster-arathi-highlands'].goals) do
 if ns.Engine:GetGoalQuestID(g)==642 then shared[#shared+1]=g end
end
assert(check(shared,ns.EvaluateCondition),'Both factions retain independent pickups, work, and returns')
local overlap=dofile('tests/lua/guide_data_checks.lua').ActionsOverlap
assert(not overlap({conditions={faction='Alliance'}},{conditions={faction='Horde'}},ns.EvaluateCondition),'Opposite factions do not share objective dependencies')
assert(overlap({conditions={faction='Alliance'}},{conditions={faction='Alliance'}},ns.EvaluateCondition),'The same faction retains objective dependencies')
local profession={conditions={profession={skillLineID=333,minRank=1}}}
assert(overlap(profession,profession,ns.EvaluateCondition),'Unknown profession branches conservatively retain dependencies')
local preserved=dofile('tests/lua/guide_data_checks.lua').PreservedPickupBranches
local serialize=dofile('tools/loremaster_parity.lua').Serialize
local repeats={}
for _,g in ipairs(ns.guides['loremaster-blasted-lands'].goals) do
 if ns.Engine:GetGoalQuestID(g)==1363 then repeats[#repeats+1]=g end
end
assert(preserved(repeats,ns.guides,ns.EvaluateCondition,serialize),'Repeated source visits preserve their valid actor coverage')
local altered={}
for i,g in ipairs(repeats) do altered[i]={kind=g.kind,conditions=g.conditions,complete=g.complete,sourceGuide=g.sourceGuide,sourceActionID=g.sourceActionID} end
altered[1].conditions={faction='Horde'}
assert(not preserved(altered,ns.guides,ns.EvaluateCondition,serialize),'Changed source conditions cannot bypass the branch check')
print('Loremaster pickup branch coverage checks passed')
