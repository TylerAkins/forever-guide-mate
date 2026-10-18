io.stdout:setvbuf('line')
local n={};for p in io.lines('ForeverGuideMate.toc') do if p:match('%.lua$') then assert(loadfile(p))('x',n) end end;n:FinalizeGuides();n.db={autoAdvance=true};

-- Capture the initial client state before exercising route execution.
for _, classID in ipairs({ 1, 3, 7, 11 }) do
 local api = {
  UnitRace = function() return 'Tauren', 'Tauren', 6 end,
  UnitClass = function() return 'Class', 'CLASS', classID end,
  UnitFactionGroup = function() return 'Horde' end,
  UnitLevel = function() return 1 end,
  GetNumQuestLogEntries = function() return 0 end,
  GetQuestsCompleted = function() end,
 }
 n.charDB = { selectedGuide = 'leveling-era-mulgore', orderedRoutes = {}, activeGoalByGuide = {} }
 n.Engine.reviewingGoal = nil
 local captured = n.PlayerState:Capture(api, n.QuestIDsForGuide(n.guides['leveling-era-mulgore']))
 n.Engine:Refresh(captured)
 assert(n.Engine.currentGoal.id == 'accept-747-the-hunt-begins', 'captured Tauren opening')
end

local repeatableRewards = dofile('tests/fixtures/class_repeatable_rewards.lua')
local total=0
local function walk(guideID,race,class,faction)
 n.charDB={selectedGuide=guideID,orderedRoutes={},activeGoalByGuide={}};n.Engine.reviewingGoal=nil
local s={raceID=race,classID=class,faction=faction,level=os.getenv("FGM_DUNGEONS") == "1" and 60 or 1,quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true,professions={[171]=300,[182]=300,[185]=300,[356]=300},professionsKnown=true,items={}}
if guideID:match('^loremaster%-') then
 -- Exercise every profession branch structurally; this is not an in-game profession build.
 for _, skill in ipairs({129,164,165,171,182,185,186,197,202,333,356,393}) do s.professions[skill] = 300 end
 s.items['Dark Iron Map'] = 1
end
-- Players reach this helper from a class-chain handoff after its outdoor work.
if guideID == 'dungeons-class-prerequisites' then
 local outside = { [2] = 7641, [7] = 7667, [8] = 1950 }
 if outside[class] then s.completedQuests[outside[class]] = true end
end
if os.getenv("FGM_DUNGEONS") == "1" or os.getenv("FGM_LOREMASTER") == "1" then
 local guide=n.guides[guideID]
 if n.EvaluateCondition(guide.conditions,s)==false then
  n.Engine:Refresh(s)
  assert(n.Engine.currentGoal==nil and n.Engine.status=='Guide requirements are not met.')
  return 0
 end

end
local function complete(c)
 if not c then return end
 if c.all then for _,a in ipairs(c.all) do complete(a) end
 elseif c.any then complete(c.any[1])
 elseif c.quest then
  local q, st = c.quest.id, c.quest.state
  if st == 'completed' then
   if repeatableRewards[q] then s.items[repeatableRewards[q][1]] = 1 else s.completedQuests[q] = true end
   s.quests[q] = nil
  else
   s.quests[q] = s.quests[q] or { objectives = {} }
   if st == 'complete' then s.quests[q].complete = true end
  end
 elseif c.questObjective then local q=c.questObjective.id;s.quests[q]=s.quests[q] or {objectives={}};local o=c.questObjective;local index=o.index or (#s.quests[q].objectives+1);s.quests[q].objectives[index]={text=o.text,finished=true,numFulfilled=o.count or 100,numRequired=o.count or 100}
 elseif c.level then s.level=math.max(s.level,c.level.min or 1)
 elseif c.instance then s.instanceID=c.instance;s.inInstance=true
 elseif c.map then s.mapID=c.map
 elseif c.item then s.items[type(c.item)=='table' and c.item.name or c.item]=type(c.item)=='table' and (c.item.minCount or 1) or 1
 else error('unsupported completion') end
end
local function refresh()
 n.Engine:Refresh(s)
 -- This is a structural simulation, so provide the next guide's entry level.
 -- Quest-only routes do not promise that their quests supply this XP.
 if not n.Engine.currentGoal and n.Engine.currentGuide and n.Engine.currentGuide.id:match('^leveling%-casual%-') and s.level<12 then
  s.level=12
  n.Engine:Refresh(s)
 end
end
refresh();local count=0
while n.Engine.currentGoal do
 local g=n.Engine.currentGoal;local q=n.Engine:GetGoalQuestID(g)
 if g.requiredLevel then s.level=math.max(s.level,g.requiredLevel) end
 if g.kind=='turnin' and s.quests[q] then s.quests[q].complete=true end
 local item=g.text:match('^Use the (.+) to accept') or g.text:match('^Use (.+) to accept');if item then s.items[item]=1 end
 if g.complete and g.complete.item then complete(g.complete) end
 refresh()
 local status=n.OrderedRoutes:Status(n.Engine.currentGuide,g,s);assert(not status,g.id..' '..tostring(status))
 if g.complete then complete(g.complete) else assert(n.Engine:CompleteCurrent()) end
 refresh();count=count+1;assert(count<10000)
 assert(n.Engine.currentGoal~=g,'stuck '..g.id)
end
assert(n.OrderedRoutes:Storage(n.Engine.currentGuide).finished, guideID .. " ended with " .. tostring(n.Engine.status))
return count

end
-- Complete production execution is exercised separately from reference ordering
-- and prerequisite coverage in catalog.lua. These snapshots simulate client truth.
local contexts = {
 {'leveling-era-mulgore',6,7,'Horde'},
 {'leveling-era-elwynn-forest',1,1,'Alliance'},
 {'leveling-zephras-isle',95,3,'Alliance'},
 {'leveling-zephras-isle',96,3,'Horde'},
 {'class-warrior',5,1,'Horde'},
 {'class-paladin',5,2,'Horde'},
 {'class-hunter',96,3,'Horde'},
 {'class-rogue',1,4,'Alliance'},
 {'class-priest',5,5,'Horde'},
 {'class-shaman',6,7,'Horde'},
 {'class-mage',7,8,'Alliance'},
 {'class-warlock',2,9,'Horde'},
 {'class-druid',4,11,'Alliance'},
}
if os.getenv("FGM_FULL_MATRIX") == "1" then
 contexts = {}
 local starters = { [1]="elwynn-forest", [2]="durotar", [3]="dun-morogh", [4]="teldrassil", [5]="tirisfal-glades", [6]="mulgore", [7]="dun-morogh", [8]="durotar" }
 local classes = { [1]="warrior", [2]="paladin", [3]="hunter", [4]="rogue", [5]="priest", [7]="shaman", [8]="mage", [9]="warlock", [11]="druid" }
 for _, race in ipairs({1,2,3,4,5,6,7,8,95,96}) do
  local faction = ({[1]=true,[3]=true,[4]=true,[7]=true,[95]=true})[race] and "Alliance" or "Horde"
  for _, class in ipairs({1,2,3,4,5,7,8,9,11}) do
   if not os.getenv("FGM_MATRIX_CLASS") or class == tonumber(os.getenv("FGM_MATRIX_CLASS")) then
   contexts[#contexts+1] = { starters[race] and "leveling-era-"..starters[race] or "leveling-zephras-isle", race, class, faction }
   contexts[#contexts+1] = { "class-"..classes[class], race, class, faction }
   contexts[#contexts+1] = { "loremaster-" .. (starters[race] or "zephras-isle"), race, class, faction }
   end
  end
 end
end
do
 for _, ctx in ipairs({
  { 'dungeons-class-prerequisites', 5, 2, 'Horde' },
  { 'dungeons-class-prerequisites', 1, 2, 'Alliance' },
  { 'dungeons-class-prerequisites', 6, 7, 'Horde' },
  { 'dungeons-class-prerequisites', 7, 8, 'Alliance' },
  { 'dungeons-class-prerequisites', 95, 3, 'Alliance' },
  { 'dungeons-class-prerequisites', 96, 3, 'Horde' },
  { 'dungeons-class-prerequisites', 2, 9, 'Horde' },
  { 'dungeons-class-prerequisites', 1, 9, 'Alliance' },
 }) do contexts[#contexts+1] = ctx end
end
if os.getenv("FGM_DUNGEONS") == "1" then
 contexts={}
 for _,id in ipairs(n.guideOrder) do
  local guide=n.guides[id]
  if guide.category=='Dungeon Quest Guides' or guide.category=='Raid Quests' then
   for _,faction in ipairs({'Alliance','Horde'}) do
    for _,class in ipairs({1,2,3,4,5,7,8,9,11}) do
     contexts[#contexts+1]={id,faction=='Alliance' and 1 or 5,class,faction}
    end
   end
  end
 end
end
if os.getenv('FGM_LOREMASTER') == '1' then
 contexts = {}
 for _, spec in ipairs({
  {'dun-morogh',3,'Alliance'}, {'dun-morogh',7,'Alliance'},
  {'elwynn-forest',1,'Alliance'}, {'teldrassil',4,'Alliance'},
  {'durotar',2,'Horde'}, {'durotar',8,'Horde'},
  {'mulgore',6,'Horde'}, {'tirisfal-glades',5,'Horde'},
  {'zephras-isle',95,'Alliance'}, {'zephras-isle',96,'Horde'},
 }) do
  for _, class in ipairs({1,2,3,4,5,7,8,9,11}) do
   contexts[#contexts+1] = {'loremaster-' .. spec[1], spec[2], class, spec[3]}
  end
 end
end
for _,ctx in ipairs(contexts) do
 local count=walk(unpack(ctx));total=total+count
 print(ctx[1]..' race '..ctx[2]..' class '..ctx[3]..': '..count..' observed actions')
end
print('Full ordered execution journeys passed: '..total..' actions')
