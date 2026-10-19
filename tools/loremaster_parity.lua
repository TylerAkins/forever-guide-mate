local M = {}
local fields = {'kind', 'text', 'conditions', 'excludeWhen', 'requiredQuests', 'complete',
    'route', 'dependsOn', 'alternativeQuests', 'checkpointQuest', 'requiredLevel',
    'instructionOnly', 'rememberPreparation', 'finishBeforeContinuing', 'useClientPin',
    'useQuestNavigation', 'useClientText'}
function M.Serialize(value)
    if type(value) == 'string' then return string.format('%q', value) end
    if type(value) ~= 'table' then return tostring(value) end
    local keys = {}
    for key in pairs(value) do keys[#keys + 1] = key end
    table.sort(keys, function(a,b) return tostring(a) < tostring(b) end)
    local out = {}
    for _, key in ipairs(keys) do out[#out + 1] = '[' .. M.Serialize(key) .. ']=' .. M.Serialize(value[key]) end
    return '{' .. table.concat(out, ',') .. '}'
end
function M.Fingerprint(value)
    local text = M.Serialize(value)
    local a, b = 5381, 52711
    for i = 1, #text do
        local byte = text:byte(i)
        a = (a * 33 + byte) % 4294967296
        b = (b * 131 + byte) % 4294967296
    end
    return string.format('%08x%08x:%d', a, b, #text)
end
function M.Compare(ns, pairs)
    local differences = {}
    for _, pair in ipairs(pairs) do
        local source = assert(ns.guides[pair.source], pair.source)
        local target = assert(ns.guides[pair.target], pair.target)
        if M.Serialize(source.conditions) ~= M.Serialize(target.conditions) then
            differences[pair.source .. ':' .. pair.target .. ':guide-conditions'] = {
                source=M.Fingerprint(source.conditions), target=M.Fingerprint(target.conditions)}
        end
        local targets = {}
        for i, goal in ipairs(target.goals) do targets[goal.id] = {index=i, goal=goal} end
        local sourceIDs, targetQuests = {}, {}
        local function quest(goal)
            local complete = goal.complete or {}
            return goal.checkpointQuest or (complete.quest and complete.quest.id)
                or (complete.questObjective and complete.questObjective.id)
        end
        for _, goal in ipairs(target.goals) do
            local id=quest(goal)
            if id then targetQuests[id]=true end
        end
        for _, goal in ipairs(source.goals) do sourceIDs[goal.id]=true end
        for _, id in ipairs(pair.sharedActions or {}) do
            if not sourceIDs[id] or not targets[id] then
                differences[pair.source .. ':' .. pair.target .. ':missing:' .. id] = {
                    source=tostring(sourceIDs[id]),target=tostring(targets[id] ~= nil)}
            end
        end
        local previous, previousID = 0, nil
        for _, goal in ipairs(source.goals) do
            local match = targets[goal.id]
            if not match and targetQuests[quest(goal)] then
                differences[pair.source .. ':' .. pair.target .. ':missing:' .. goal.id] = {
                    source=M.Fingerprint(goal), target='nil'}
            elseif match then
                for _, field in ipairs(fields) do
                    local before, after = M.Serialize(goal[field]), M.Serialize(match.goal[field])
                    if before ~= after then
                        local key = pair.source .. ':' .. pair.target .. ':' .. goal.id .. ':' .. field
                        differences[key] = {source=M.Fingerprint(goal[field]), target=M.Fingerprint(match.goal[field])}
                    end
                end
                if match.index < previous then
                    differences[pair.source .. ':' .. pair.target .. ':order:' .. goal.id] = {
                        source=previousID .. ':' .. goal.id, target=goal.id .. ':' .. previousID}
                end
                previous, previousID = match.index, goal.id
            end
        end
    end
    return differences
end
return M
