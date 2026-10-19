local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM', ns) end
end
local sourcePositions, ordinal = {}, 0
for _, id in ipairs(ns.guideOrder) do
    local guide = ns.guides[id]
    if guide.category == 'Leveling Quest Guides' then
        for _, goal in ipairs(guide.goals) do
            ordinal = ordinal + 1
            sourcePositions[id .. ':' .. goal.id] = ordinal
        end
    end
end
local checks = 0
local function check(ok, message)
    checks = checks + 1
    assert(ok, message)
end
for _, id in ipairs(ns.guideOrder) do
    local guide = ns.guides[id]
    if guide.category == 'Loremaster Guides' then
        local previous = {}
        local pickups, finishes = {}, {}
        for i, goal in ipairs(guide.goals) do
            local quest = ns.Engine:GetGoalQuestID(goal)
            if goal.sourceGuide then
                local source = assert(ns.guides[goal.sourceGuide])
                local faction = source.conditions.faction
                if not faction then
                    for _, condition in ipairs(source.conditions.all or {}) do faction = faction or condition.faction end
                end
                local position = assert(sourcePositions[goal.sourceGuide .. ':' .. goal.sourceActionID])
                check(position > (previous[faction] or 0), id .. ' preserves the faction Casual subsequence: ' .. goal.id)
                previous[faction] = position
            end
            if goal.kind == 'accept' then pickups[quest] = pickups[quest] or i end
            if goal.kind == 'turnin' then finishes[quest] = finishes[quest] or i end
        end
        for i, goal in ipairs(guide.goals) do
            if goal.sourceGuide or goal.id:find('%-extra%-') then
                local quest = ns.Engine:GetGoalQuestID(goal)
                if goal.kind == 'objective' then
                    check(pickups[quest] and pickups[quest] < i, id .. ' picks up before objectives: ' .. goal.id)
                    check(finishes[quest] and i < finishes[quest], id .. ' completes objectives before returning: ' .. goal.id)
                end
                if goal.kind == 'accept' then
                    for _, group in ipairs(goal.requiredQuests or {}) do
                        local earlier = 0
                        for _, predecessor in ipairs(group.quests) do
                            if finishes[predecessor] and finishes[predecessor] < i then earlier = earlier + 1 end
                        end
                        check(group.mode == 'all' and earlier == #group.quests or group.mode == 'any' and earlier > 0
                            or group.conditions and goal.unresolvedPrerequisites and goal.excludeWhen,
                            id .. ' places prerequisite returns before pickup: ' .. goal.id)
                    end
                end
            end
        end
    end
end
print('Expanded Loremaster source and chain checks passed: ' .. checks)
