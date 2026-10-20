local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
for _, zone in ipairs({'westfall', 'loch-modan', 'darkshore', 'silverpine-forest', 'the-barrens'}) do
    assert(ns.guides['loremaster-' .. zone], 'Missing zone Loremaster guide: ' .. zone)
end
print('Loremaster expansion registration checks passed')
local function action(zone,kind,quest)
    local guide=assert(ns.guides['loremaster-' .. zone])
    for i,goal in ipairs(guide.goals) do
        if goal.kind==kind and ns.Engine:GetGoalQuestID(goal)==quest then return goal,i end
    end
    error(zone .. ' is missing ' .. kind .. ' ' .. quest)
end
local function chain(zone,quests)
    local previous
    for _,quest in ipairs(quests) do
        local pickup,pickupIndex=action(zone,'accept',quest)
        local _,returnIndex=action(zone,'turnin',quest)
        assert(pickupIndex<returnIndex,'The pickup precedes its return')
        if previous then
            local _,priorIndex=action(zone,'turnin',previous)
            assert(priorIndex<pickupIndex,'An unlocking return precedes its follow-up')
            local state={raceID=zone=='silverpine-forest' and 5 or 1,classID=1,
                faction=zone=='silverpine-forest' and 'Horde' or 'Alliance',level=60,
                quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
            assert(ns.OrderedRoutes:Prerequisites(pickup,state)==false,'Missing observed prerequisite credit blocks the follow-up')
        end
        previous=quest
    end
end
chain('westfall',{12,13,14})
chain('westfall',{92745,92747,92748,92750,92751,92752})
chain('loch-modan',{224,237,263,217})
chain('loch-modan',{250,199,161,274,278,280,283})
chain('darkshore',{2098,2078})
chain('silverpine-forest',{421,422,423,424,99,98298})
local tear=action('the-barrens','accept',857)
assert(tear.conditions.all[#tear.conditions.all].level.min==22,'The offer minimum remains 22')
local guard
for _,goal in ipairs(ns.guides['loremaster-the-barrens'].goals) do
    if goal.checkpointQuest==857 then guard=goal end
end
assert(guard and guard.requiredLevel==30,'The level-30 outing has a later return checkpoint')
local map=action('westfall','accept',136)
local state={faction='Alliance',raceID=1,classID=1,level=60,quests={},completedQuests={},
    questLogKnown=true,questCompletionKnown=true,items={}}
assert(ns.OrderedRoutes:ExcludedAction(map,state),'An absent treasure map does not require farming')
state.items["Captain Sander's Treasure Map"]=1
assert(not ns.OrderedRoutes:ExcludedAction(map,state),'A held treasure map enables the coastal chain')
state.items={};state.completedQuests[136]=true
local clue=action('westfall','accept',138)
assert(not ns.OrderedRoutes:ExcludedAction(clue,state),'The consumed map does not exclude a started chain')
local explosives=action('westfall','accept',92752)
state.completedQuests={ [92749]=true }
assert(ns.OrderedRoutes:Prerequisites(explosives,state)==false,'Both explosives preparations must be turned in')
state.completedQuests[92751]=true
assert(ns.OrderedRoutes:Prerequisites(explosives,state)==true,'Both observed returns unlock the Westfall handoff')
assert(explosives.route[1].mapID==1453,'A Stormwind pickup still belongs to the Westfall chain')
print('Loremaster expansion chain and optional-item checks passed')
local function checkpoint(zone,quest)
    for i,goal in ipairs(ns.guides['loremaster-' .. zone].goals) do
        if goal.checkpointQuest==quest then return i end
    end
    error('Missing visit checkpoint')
end
local _,gunsReturn=action('the-barrens','turnin',891)
local _,escortPickup=action('the-barrens','accept',898)
local _,escortReturn=action('the-barrens','turnin',898)
assert(gunsReturn<checkpoint('the-barrens',857) and escortReturn<checkpoint('the-barrens',857),
    'Northwatch level-20 work precedes the later level-30 Tear visit')
assert(escortPickup<gunsReturn,'Pick up the Northwatch escort before returning to Ratchet')
for _,quest in ipairs({257,258,237,263,217,271,273,309,454,531,86585,86758,2038}) do
    local _,finish=action('loch-modan','turnin',quest)
    assert(finish<checkpoint('loch-modan',256),'Lower-level Loch work precedes the Chok\'sul return: ' .. quest)
end
local _,arugalReturn=action('silverpine-forest','turnin',98298)
assert(arugalReturn<checkpoint('silverpine-forest',480),'The early Arugal chain precedes the later Weaver visit')
local escort=action('the-barrens','objective',898)
assert(escort.complete.quest.id==898 and escort.complete.quest.state=='complete','The escort waits for observed completion')
print('Loremaster return placement checks passed')

local function assertSecretNote3Route(guideID, objectiveID, turninID)
    local guide=assert(ns.guides[guideID], 'Missing guide ' .. guideID)
    local objective=ns.Engine:GetGoal(guide, objectiveID)
    assert(objective, guideID .. ' routes to Secret Note #3')
    assert(objective.kind=='objective' and objective.complete.questObjective.id==5064
        and objective.complete.questObjective.index==3
        and objective.complete.questObjective.text=='Secret Note #3',
        guideID .. ' completes on quest 5064 objective 3')
    assert(objective.route[1].mapID==1441 and objective.route[1].x==0.39 and objective.route[1].y==0.41,
        guideID .. ' routes to the recorded Secret Note #3 location')
    local turnin=assert(ns.Engine:GetGoal(guide, turninID), 'Missing quest 5064 turn-in in ' .. guideID)
    local waitsForNote3=false
    for _,dependency in ipairs(turnin.dependsOn or {}) do
        if dependency==objectiveID then waitsForNote3=true end
    end
    assert(waitsForNote3, guideID .. ' waits for Secret Note #3 before turn-in')
end

assertSecretNote3Route('leveling-casual-horde',
    'leveling-era-horde-thousand-needles:objective-5064-3-secret-note-3',
    'leveling-era-horde-thousand-needles:turnin-5064-grimtotem-spying')
assertSecretNote3Route('loremaster-thousand-needles',
    'horde-leveling-era-horde-thousand-needles-objective-5064-3-secret-note-3',
    'horde-leveling-era-horde-thousand-needles-turnin-5064-grimtotem-spying')
print('Grimtotem Spying three-note route checks passed')
for _,quest in ipairs({86614,86667,86776}) do action('loch-modan','accept',quest) end
for _,quest in ipairs({97894,97914,97926,982}) do action('darkshore','accept',quest) end
chain('silverpine-forest',{460,461,491})
local allianceRavener=action('the-barrens','accept',97005)
assert(ns.OrderedRoutes:ExcludedAction(allianceRavener,{faction='Horde',raceID=2,classID=1,level=60}),
    'The Alliance Ravener pickup excludes Horde visitors')
local head=action('silverpine-forest','accept',460)
local headState={faction='Horde',raceID=5,classID=2,level=60,quests={},completedQuests={},
    questLogKnown=true,questCompletionKnown=true,items={}}
assert(ns.OrderedRoutes:ExcludedAction(head,headState),'An absent optional talking head does not require farming')
headState.items['A Talking Head']=1
assert(not ns.OrderedRoutes:ExcludedAction(head,headState),'The held talking head enables its quest')
headState.items={};headState.completedQuests[460]=true
local niche=action('silverpine-forest','accept',461)
assert(not ns.OrderedRoutes:ExcludedAction(niche,headState),'The talking-head chain survives starter consumption')
local _,forgePickup=action('loch-modan','accept',86776)
local _,chokReturn=action('loch-modan','turnin',256)
assert(chokReturn<forgePickup,'The level-30 forge errand follows the level-22 Loch return')
print('Reviewed catalog additions passed')
local function offerMinimum(condition)
    if not condition then return 1 end
    local minimum=condition.level and condition.level.min or 1
    for _,child in ipairs(condition.all or {}) do minimum=math.max(minimum,offerMinimum(child)) end
    return minimum
end
for _,zone in ipairs({'westfall','loch-modan','darkshore','silverpine-forest','the-barrens'}) do
    local guide=ns.guides['loremaster-' .. zone]
    for i,goal in ipairs(guide.goals) do
        if goal.kind=='accept' then
            local quest=ns.Engine:GetGoalQuestID(goal)
            local guardLevel=1
            for j=1,i-1 do
                local prior=guide.goals[j]
                if prior.checkpointQuest==quest then guardLevel=math.max(guardLevel,prior.requiredLevel or 1) end
            end
            assert(guardLevel>=offerMinimum(goal.conditions),'A visit checkpoint cannot precede its offer minimum: '..zone..':'..quest)
        end
    end
end
assert(arugalReturn<checkpoint('silverpine-forest',98299),'The level-20 return does not interrupt the early Arugal chain')
for _,zone in ipairs({'westfall','loch-modan','darkshore','silverpine-forest','the-barrens'}) do
    for _,goal in ipairs(ns.guides['loremaster-'..zone].goals) do
        local displayed=tonumber((goal.text or ''):match('Reach level (%d+)'))
        if displayed then
            assert(goal.complete and goal.complete.level and displayed==goal.complete.level.min,
                'The displayed visit level matches its completion gate: '..goal.id)
        end
    end
end
local cold={faction='Alliance',raceID=1,classID=1,level=60,quests={},completedQuests={},
    questLogKnown=true,questCompletionKnown=true,items={}}
local oracleChild=action('darkshore','accept',940)
assert(ns.OrderedRoutes:ExcludedAction(oracleChild,cold),
    'A cold Human visitor cannot inherit a race-restricted Oracle Tree prerequisite')
cold.completedQuests[98398]=true
assert(not ns.OrderedRoutes:ExcludedAction(oracleChild,cold),
    'Observed Oracle Tree history retains the supported descendant')
cold.completedQuests={};cold.quests[940]={state='active'}
assert(not ns.OrderedRoutes:ExcludedAction(oracleChild,cold),
    'An active descendant remains available on midway entry')
assert(not cold.completedQuests[98398],'Midway entry does not invent ancestor completion')

for _, case in ipairs({{'westfall',22},{'the-barrens',855}}) do
    local _,finish=action(case[1],'turnin',case[2])
    for i,goal in ipairs(ns.guides['loremaster-' .. case[1]].goals) do
        if goal.kind=='objective' and ns.Engine:GetGoalQuestID(goal)==case[2] then
            assert(i<finish,'Collection directions must precede the return: ' .. case[2])
        end
    end
end
