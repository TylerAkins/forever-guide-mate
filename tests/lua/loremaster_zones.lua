local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM', ns) end
end
local serialize = dofile('tools/loremaster_parity.lua').Serialize
local sourcePositions, sourceGoals, ordinal = {}, {}, 0
for _, id in ipairs(ns.guideOrder) do
    local guide = ns.guides[id]
    if guide.category == 'Leveling Quest Guides' then
        for _, goal in ipairs(guide.goals) do
            ordinal = ordinal + 1
            sourcePositions[id .. ':' .. goal.id] = ordinal
            sourceGoals[id .. ':' .. goal.id] = goal
        end
    end
end
local function factions(goal)
    local c=goal.conditions or {}
    local faction=c.faction
    for _,part in ipairs(c.all or {}) do faction=faction or part.faction end
    return faction and {faction} or {'Alliance','Horde'}
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
        local pickups, finishes = {Alliance={},Horde={}}, {Alliance={},Horde={}}
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
                local original = assert(sourceGoals[goal.sourceGuide .. ':' .. goal.sourceActionID])
                -- Local dependency IDs and cold-entry exclusions are recorded in
                -- the zone inventory; shared quest facts must stay synchronized.
                for _, field in ipairs({'kind','text','conditions','complete','route','requiredQuests','requiredLevel','classAction'}) do
                    check(serialize(goal[field]) == serialize(original[field]), id .. ' preserves source ' .. field .. ': ' .. goal.id)
                end
            end
            for _,faction in ipairs(factions(goal)) do
                if goal.kind == 'accept' then pickups[faction][quest] = pickups[faction][quest] or i end
                if goal.kind == 'turnin' then finishes[faction][quest] = finishes[faction][quest] or i end
            end
        end
        for i, goal in ipairs(guide.goals) do
            if goal.checkpointQuest and goal.id:find('%-extra%-') and goal.id:match('%-level$') then
                local pickup = guide.goals[i+1]
                check(pickup and pickup.kind == 'accept' and ns.Engine:GetGoalQuestID(pickup) == goal.checkpointQuest,
                    id .. ' keeps the extra level gate with its pickup: ' .. goal.id)
            end
            if goal.sourceGuide or goal.id:find('%-extra%-') then
                local quest = ns.Engine:GetGoalQuestID(goal)
                for _,faction in ipairs(factions(goal)) do
                local pickups,finishes=pickups[faction],finishes[faction]
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
end
print('Expanded Loremaster source and chain checks passed: ' .. checks)
