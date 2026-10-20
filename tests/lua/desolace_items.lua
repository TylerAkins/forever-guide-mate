local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM',ns) end
end
local chain = {[1480]=true,[1481]=true,[1482]=true,[1484]=true,[1488]=true}
local checked = 0
for _, id in ipairs({'leveling-era-horde-desolace','leveling-era-horde-desolace-part-2','loremaster-desolace'}) do
    for _, goal in ipairs(ns.guides[id].goals) do
        local q=ns.Engine:GetGoalQuestID(goal) or goal.checkpointQuest
        if chain[q] then
            checked=checked+1
            local state={raceID=2,classID=1,faction='Horde',level=60,items={},quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
            assert(ns.OrderedRoutes:ExcludedAction(goal,state), 'The optional skin chain skips cold entry: '..goal.id)
            state.items['Flayed Demon Skin']=1
            assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'A held skin enables the chain: '..goal.id)
            state.items={};state.quests[q]={}
            assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'Active quest history retains the action: '..goal.id)
            state.quests={};state.completedQuests[1480]=true
            if not (q==1480 and goal.checkpointQuest) then
                assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'Completed starter retains the path: '..goal.id)
            end
        end
    end
end
assert(checked>20,'Both Casual visits and Loremaster are covered')
print('Desolace optional skin and midway-entry checks passed: '..checked)
