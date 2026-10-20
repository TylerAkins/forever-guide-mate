local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM',ns) end
end
local roots = {[2766]='OOX-22/FE Distress Beacon',[2978]='Gordunni Scroll',[2979]='Gordunni Scroll',[3002]='Gordunni Scroll',[7735]='Pristine Yeti Hide',[7738]='Perfect Yeti Hide',[4281]='Undelivered Parcel'}
local checked = 0
for id, guide in pairs(ns.guides) do
    if id:match('^leveling%-era%-') or id == 'loremaster-feralas' then
        for _, goal in ipairs(guide.goals) do
            local q=ns.Engine:GetGoalQuestID(goal) or goal.checkpointQuest or goal.referenceQuest
            if roots[q] then
                checked=checked+1
                local faction=(id:match('horde') or goal.id:match('^horde%-') or q==2978 or q==2979 or q==3002 or q==7738) and 'Horde' or 'Alliance'
                local state={raceID=faction=='Horde' and 2 or 1,classID=1,faction=faction,level=60,items={},quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
                assert(ns.OrderedRoutes:ExcludedAction(goal,state), 'Optional item quest skips cold entry: '..id..'/'..goal.id)
                state.items[roots[q]]=1
                state.completedQuests={[2821]=true,[2822]=true,[4131]=true}
                assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'Held starter retains the path: '..goal.id)
                state.items={};state.completedQuests={};state.quests[q]={}
                assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'Active history retains the action: '..goal.id)
            end
        end
    end
end
assert(checked>25,'All optional Feralas item chains are covered')
print('Feralas optional item checks passed: '..checked)
