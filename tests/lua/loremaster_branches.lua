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
print('Loremaster pickup branch coverage checks passed')
