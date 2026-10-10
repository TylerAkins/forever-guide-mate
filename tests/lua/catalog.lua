local ns={}
for path in io.lines('ForeverGuideMate.toc') do if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate',ns) end end
ns:FinalizeGuides();ns.db={autoAdvance=true};ns.charDB={orderedRoutes={}}
local assertions = 0
local function check(value, message)
 assertions = assertions + 1
 assert(value, message)
end
local expected = dofile('tests/fixtures/reference_itineraries.lua')
local excluded = { [2741]=true,[2747]=true,[2748]=true,[2749]=true,[2750]=true,[2952]=true,
 [386]=true,[2930]=true,[7067]=true,[7041]=true,[3366]=true,[77573]=true,[10352]=true,[10354]=true,[3503]=true,[3421]=true }
for quest in pairs(dofile('tests/fixtures/separate_content.lua')) do excluded[quest]=true end
-- Cloth donations and random egg exchanges are optional reputation strategy.
for _,q in ipairs({7791,7793,7794,7795,7799,7800,7802,7803,7804,7805,7807,7808,7809,7811,7813,7814,7817,7818,7820,7821,7822,7823,7824,7826,7827,7831,7833,7834,7835,7836}) do excluded[q]=true end
local chapters = {}
-- Finalization retains original chapters as segments, and leaves starters registered.
for _,f in ipairs({'alliance','horde'}) do
 for _,segment in ipairs(ns.guides['leveling-casual-'..f].segments) do chapters[segment.id]=segment end
end
for id, actions in pairs(expected) do
 local guide = chapters[id] or ns.guides[id]
 check(guide ~= nil, 'reference chapter is present: '..id)
 local actual = {}
 for i,a in ipairs(guide.goals) do
  local q = ns.Engine:GetGoalQuestID(a) or a.referenceQuest
  local objective = a.complete and a.complete.questObjective
  if a.sourceInstructionStep and not a.id:find('woven',1,true) then
   check(a.kind=='note' and a.rememberPreparation==q and a.instructionOnly,
    'intermediate source instructions observe preparation without granting quest completion')
   local signature=table.concat({'objective',q,a.sourceInstructionIndex,a.sourceInstructionStep},':')
   actual[signature]=actual[signature] or i
  end
  if a.sourceStep and not a.id:find('woven',1,true) then
   local kind,index=a.kind,objective and objective.index or 0
   if a.referenceQuest then
    check(a.kind=='note' and a.complete.item.minCount>0,'early collection uses observed bags')
    kind,index='objective',tonumber(a.id:match('objective%-'..q..'%-(%d+)')) or 1
   end
   local signature=table.concat({kind,q or 0,index,a.sourceStep},':')
   actual[signature] = actual[signature] or i
  end
 end
 local previous, sourceStep, stepFloor = 0, nil, 0
 for _,a in ipairs(actions) do
  if not excluded[a[2]] and not (a[1]=='objective' and a[2]==1009 ) then
   local signature = table.concat({a[1],a[2] or 0,a[3] or 0,a[4]},':')
   local position = actual[signature]
   if id=='leveling-era-horde-winterspring' and a[1]=='accept' and a[2]==4809 then
    local earlier=chapters['leveling-era-horde-felwood-and-winterspring-part-2']
    for _,action in ipairs(earlier.goals) do
     if action.kind=='accept' and ns.Engine:GetGoalQuestID(action)==4809 then position=previous end
    end
   end
   check(position ~= nil, id..' retains reference action '..signature)
   -- Donova's reference puts the follow-up before its verified prerequisite turn-in.
   if a[2] ~= 3908 and a[2] ~= 3909 then
    if sourceStep ~= a[4] then sourceStep, stepFloor = a[4], previous end
    check(position >= stepFloor, id..' preserves reference outing order: '..signature)
    previous = math.max(previous, position)
   end
  end
 end
end
do
 local guide=chapters['leveling-era-alliance-ashenvale-and-stonetalon-mountains']
 local guaranteed=false
 for _,goal in ipairs(guide.goals) do
  if ns.Engine:GetGoalQuestID(goal)==1009 and goal.kind=='objective' then
   check(goal.text:find('Ruuzel',1,true)~=nil,'Ring of Zoram follows its guaranteed named target')
   guaranteed=true
  end
 end
 check(guaranteed,'Ring of Zoram retains the required guaranteed acquisition')
end
for _,id in ipairs({'leveling-casual-alliance','leveling-casual-horde','class-warrior','class-paladin','class-hunter','class-rogue','class-priest','class-shaman','class-mage','class-warlock','class-druid'}) do
 local g=assert(ns.guides[id])
 for _,race in ipairs({1,2,3,4,5,6,7,8,95,96}) do for _,class in ipairs({1,2,3,4,5,7,8,9,11}) do
  local s={raceID=race,classID=class,faction=({[1]='Alliance',[3]='Alliance',[4]='Alliance',[7]='Alliance',[95]='Alliance'})[race] or 'Horde',level=60,quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true,professions={},professionsKnown=true}
  if id:match('leveling%-casual') then
   local starters={[1]='elwynn-forest',[2]='durotar',[3]='dun-morogh',[4]='teldrassil',[5]='tirisfal-glades',[6]='mulgore',[7]='dun-morogh',[8]='durotar'}
   local starter
   starter=ns.guides[starters[race] and ('leveling-era-'..starters[race]) or 'leveling-zephras-isle']
   for _,a in ipairs(starter.goals) do if not ns.OrderedRoutes:ExcludedAction(a,s) and ns.EvaluateCondition(a.conditions,s)==true then
    local q=ns.Engine:GetGoalQuestID(a)
    if q and a.kind=='accept' then
     local ready,why=ns.OrderedRoutes:Prerequisites(a,s)
     check(ready,starter.id..' pickup prerequisites: '..a.id..' '..tostring(why))
     s.quests[q]={complete=true,objectives={}}
    elseif q and (a.kind=='objective' or a.kind=='gossip' or a.kind=='turnin') then
     check(s.quests[q] or s.completedQuests[q],starter.id..' has an earlier applicable pickup: '..a.id)
     if a.kind=='turnin' then s.completedQuests[q]=true;s.quests[q]=nil end
    elseif q and a.kind=='note' and not a.instructionOnly then s.completedQuests[q]=true end
   end end
  end
  if ns.EvaluateCondition(g.conditions,s)==true then
   for _,a in ipairs(g.goals) do if not ns.OrderedRoutes:ExcludedAction(a,s) and ns.EvaluateCondition(a.conditions,s)==true then
    local q=ns.Engine:GetGoalQuestID(a)
    if a.kind=='accept' then
     local ok,why=ns.OrderedRoutes:Prerequisites(a,s)
     check(ok, id..' race '..race..' class '..class..' '..a.id..': '..tostring(why))
     s.quests[q]={complete=true,objectives={}}
    elseif a.kind=='objective' or a.kind=='gossip' then
     check(not q or s.quests[q] or s.completedQuests[q],id..' objective has an earlier applicable pickup '..a.id)
    elseif a.kind=='turnin' then
     check(s.quests[q] or s.completedQuests[q],id..' turn-in has an earlier applicable pickup '..a.id)
     s.quests[q]=nil;s.completedQuests[q]=true
    elseif a.kind=='note' and q and not a.instructionOnly then s.completedQuests[q]=true end
   end end
  end
 end end
end
print('Ordered catalog tests passed: '..assertions..' assertions')
