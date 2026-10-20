local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM', ns) end
end
local checked = 0
for id, guide in pairs(ns.guides) do
    if id:match('^leveling%-era%-') or id == 'loremaster-felwood' then
        for _, goal in ipairs(guide.goals) do
            local q = ns.Engine:GetGoalQuestID(goal) or goal.checkpointQuest or goal.referenceQuest
            if q == 8470 then
                checked = checked + 1
                local faction = (id:match('horde') or goal.id:match('^horde%-')) and 'Horde' or 'Alliance'
                local state = {raceID=faction=='Horde' and 2 or 1,classID=1,faction=faction,level=60,items={},quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
                assert(ns.OrderedRoutes:ExcludedAction(goal,state), 'Deadwood Totem path skips cold entry: '..id..'/'..goal.id)
                state.items['Deadwood Ritual Totem'] = 1
                if id == 'leveling-era-horde-winterspring' then
                    assert(ns.OrderedRoutes:ExcludedAction(goal,state), 'Late source chapter has no pickup and requires observed quest history: '..goal.id)
                else
                    assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'Held totem retains path: '..goal.id)
                end
                state.items = {}; state.quests[8470] = {}
                assert(not ns.OrderedRoutes:ExcludedAction(goal,state), 'Active quest history retains path: '..goal.id)
            end
        end
    end
end
assert(checked > 10, 'Felwood totem routes are covered')
print('Felwood optional totem checks passed: '..checked)
