local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
for _, guideID in ipairs({'leveling-zephras-isle','loremaster-zephras-isle'}) do
    for _, goal in ipairs(ns.guides[guideID].goals) do
        if ns.Engine:GetGoalQuestID(goal)==94493 or goal.checkpointQuest==94493 then
            assert(ns.EvaluateCondition(goal.conditions,{faction='Horde',raceID=5,classID=2,level=60})==false,
                'A Sacrifice in Vain remains Alliance-only when its inherited race gate is removed')
        end
    end
end
local restrictions = dofile('tests/fixtures/zephras_races.lua')
for _, guideID in ipairs({'leveling-zephras-isle', 'loremaster-zephras-isle'}) do
    for _, goal in ipairs(ns.guides[guideID].goals) do
        local quest = goal.checkpointQuest or ns.Engine:GetGoalQuestID(goal)
        local races = restrictions[quest]
        if races then
            local function collect(condition, found)
                if not condition then return end
                if condition.race then
                    if type(condition.race) == 'table' then
                        for _, race in ipairs(condition.race) do found[race] = true end
                    else found[condition.race] = true end
                end
                for _, child in ipairs(condition.all or condition.any or {}) do collect(child, found) end
            end
            local actual, expected = {}, {}
            collect(goal.conditions, actual)
            for _, race in ipairs(races) do expected[race] = true end
            for race in pairs(actual) do assert(expected[race], guideID .. ':' .. goal.id .. ': unsupported race ' .. race) end
            for race in pairs(expected) do assert(actual[race], guideID .. ':' .. goal.id .. ': missing source race ' .. race) end
        end
    end
end
for _, id in ipairs({'leveling-zephras-isle', 'loremaster-zephras-isle'}) do
    local guide = assert(ns.guides[id])
    for _, race in ipairs({5, 6, 96}) do
        local state = {faction = 'Horde', raceID = race, classID = race == 6 and 11 or 2,
            level = 60, quests = {}, completedQuests = {}, questLogKnown = true,
            questCompletionKnown = true, professionsKnown = true, professions = {}, items = {}}
        local count = 0
        for _, goal in ipairs(guide.goals) do
            if ns.Engine:GetGoalQuestID(goal) == 92514 or goal.checkpointQuest == 92514 then
                assert(ns.EvaluateCondition(goal.conditions, state) ~= false,
                    id .. ': Welcome to Shen\'dar Village permits Horde visitor race ' .. race)
                assert(ns.OrderedRoutes:Prerequisites(goal, state) == true,
                    'The village welcome has no restricted starter prerequisite')
                state.faction = 'Alliance'
                assert(ns.EvaluateCondition(goal.conditions, state) == false, 'Horde welcome excludes Alliance')
                state.faction = 'Horde'
                count = count + 1
            end
        end
        assert(count == 5, 'The checkpoint, pickup, two conversations, and return are covered')
    end
end
print('Zephras visitor assertions passed')
for _,guideID in ipairs({'leveling-zephras-isle','loremaster-zephras-isle'}) do
    local state={faction='Horde',raceID=5,classID=2,level=60,quests={},completedQuests={},
        questLogKnown=true,questCompletionKnown=true,professionsKnown=true,professions={},items={}}
    for _,goal in ipairs(ns.guides[guideID].goals) do
        if ns.Engine:GetGoalQuestID(goal)==97243 then
            assert(ns.OrderedRoutes:ExcludedAction(goal,state),'A visitor paladin does not receive the shaman branch')
            state.classID=7
            assert(not ns.OrderedRoutes:ExcludedAction(goal,state),'A visitor shaman retains Call of Fire')
            state.classID=2
        end
    end
    ns.charDB={selectedGuide=guideID,orderedRoutes={},activeGoalByGuide={}}
    ns.db={autoAdvance=true}
    ns.Engine.reviewingGoal=nil
    state.completedQuests[92598]=true
    state.quests[92514]={active=true}
    ns.Engine:Refresh(state)
    assert(ns.Engine.currentGoal and ns.Engine:GetGoalQuestID(ns.Engine.currentGoal)==92514,
        'Midway visitors resume the active village welcome')
    assert(not state.completedQuests[92460],'Visitor recovery grants no starter quest credit')
end
local visitor={faction='Horde',raceID=5,classID=2,level=60,quests={},completedQuests={},
    questLogKnown=true,questCompletionKnown=true,professionsKnown=true,professions={},items={}}
for _,goal in ipairs(ns.guides['loremaster-zephras-isle'].goals) do
    if goal.kind=='accept' and ns.Engine:GetGoalQuestID(goal)==98284 then
        assert(ns.OrderedRoutes:ExcludedAction(goal,visitor),'Non-enchanters omit the lesson')
        visitor.professions[333]=300
        assert(not ns.OrderedRoutes:ExcludedAction(goal,visitor),'Enchanters retain supported visitor eligibility')
        assert(ns.OrderedRoutes:Prerequisites(goal,visitor)==false,'Visitor eligibility cannot bypass the outdoors introduction')
        visitor.completedQuests[96101]=true
        assert(ns.OrderedRoutes:Prerequisites(goal,visitor)==true,'Observed introduction completion enables the lesson')
    end
end
print('Zephras class, profession, and midway-entry checks passed')
for _,id in ipairs({'leveling-zephras-isle','loremaster-zephras-isle'}) do
    for _,goal in ipairs(ns.guides[id].goals) do
        if ns.Engine:GetGoalQuestID(goal)==95350 and goal.kind=='accept' then
            local state={faction='Horde',raceID=2,classID=1,level=60,quests={},completedQuests={},
                questLogKnown=true,questCompletionKnown=true}
            assert(not ns.OrderedRoutes:Prerequisites(goal,state),'Welcome to Azeroth requires the observed Earthen Ring return')
            state.completedQuests[95349]=true
            assert(ns.OrderedRoutes:Prerequisites(goal,state),'Observed predecessor history unlocks Welcome to Azeroth')
        end
    end
end
