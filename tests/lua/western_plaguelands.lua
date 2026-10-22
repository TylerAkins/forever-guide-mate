local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM', ns) end
end
for _, id in ipairs({'leveling-era-alliance-burning-steppes','loremaster-western-plaguelands'}) do
    local found = false
    for _, goal in ipairs(ns.guides[id].goals) do
        local alliance = goal.conditions and goal.conditions.faction == 'Alliance'
        for _, condition in ipairs((goal.conditions and goal.conditions.all) or {}) do
            alliance = alliance or condition.faction == 'Alliance'
        end
        if alliance and goal.kind=='accept' and ns.Engine:GetGoalQuestID(goal)==5050 then
            found = true
            assert(goal.text:find("Ol' Emma",1,true), 'Good Luck Charm starts at its observed NPC')
            assert(goal.route and goal.route[1].mapID==1453, 'The pickup directs players to Stormwind')
        end
    end
    assert(found, 'The preserved Good Luck Charm pickup is present')
end
print('Western Plaguelands NPC pickup checks passed')

for _, id in ipairs({'leveling-era-alliance-western-and-eastern-plaguelands','leveling-era-horde-western-and-eastern-plaguelands','loremaster-western-plaguelands'}) do
    local returns = {}
    for _, goal in ipairs(ns.guides[id].goals) do
        local q=ns.Engine:GetGoalQuestID(goal)
        if q==5060 and goal.kind=='note' then
            assert(goal.instructionOnly, 'Dalson preparation can be skipped without quest credit')
            assert(goal.complete.any and goal.complete.any[1].item, 'Preparation observes the acquired key')
        end
        if (q==5058 or q==5060) and goal.kind=='turnin' then returns[q]=true end
    end
    assert(returns[5058] and returns[5060], 'Both object hand-ins observe completed quest state')
end
print('Dalson key preparation and object return checks passed')
