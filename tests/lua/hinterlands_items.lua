local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM', ns) end
end
for _, id in ipairs({'leveling-era-alliance-the-hinterlands','leveling-era-horde-the-hinterlands','loremaster-the-hinterlands'}) do
    local guide = assert(ns.guides[id], id)
    for _, goal in ipairs(guide.goals) do
        local q = ns.Engine:GetGoalQuestID(goal) or goal.checkpointQuest
        if q == 485 or q == 836 then
            local faction = (id:find('horde') or goal.id:find('horde')) and 'Horde' or 'Alliance'
            local state = {raceID=faction=='Horde' and 2 or 1,classID=1,faction=faction,level=60,
                quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true,items={}}
            assert(ns.OrderedRoutes:ExcludedAction(goal,state), id..' cold entry must skip '..goal.id)
            state.items['OOX-09/HL Distress Beacon']=1
            assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'Held beacon enables '..goal.id)
            state.items={}
            state.quests[485]={}
            assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'Active parent retains '..goal.id)
            state.quests={}
            state.completedQuests[485]=true
            if not goal.checkpointQuest or q==836 then
                assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'Completed parent retains '..goal.id)
            end
            if q==836 then
                state.completedQuests={}
                state.quests[836]={}
                assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'Active escort retains '..goal.id)
            end
        end
    end
end
print('Hinterlands optional beacon and escort entry checks passed')
