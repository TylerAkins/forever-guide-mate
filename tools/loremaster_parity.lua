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
        local targetsBySourceAction = {}
        for i, goal in ipairs(target.goals) do
            targets[goal.id] = {index=i, goal=goal}
            if goal.sourceActionID then
                local matches = targetsBySourceAction[goal.sourceActionID] or {}
                matches[#matches + 1] = {index=i, goal=goal}
                targetsBySourceAction[goal.sourceActionID] = matches
            end
        end
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
            if not sourceIDs[id] or (not targets[id] and not targetsBySourceAction[id]) then
                differences[pair.source .. ':' .. pair.target .. ':missing:' .. id] = {
                    source=tostring(sourceIDs[id]),
                    target=tostring(targets[id] ~= nil or targetsBySourceAction[id] ~= nil)}
            end
        end
        local previous, previousID = 0, nil
        for _, goal in ipairs(source.goals) do
            local sourceMatches = targetsBySourceAction[goal.id]
            local guideMatch
            for _, candidate in ipairs(sourceMatches or {}) do
                if candidate.goal.sourceGuide == pair.source and candidate.index > previous then
                    if not guideMatch or candidate.index < guideMatch.index then guideMatch = candidate end
                end
            end
            local match = guideMatch or targets[goal.id]
            local hasSourceGuideMatch = type(guideMatch) == 'table'
            if not match and sourceMatches and #sourceMatches == 1 then match = sourceMatches[1] end
            local isSourceActionMatch = hasSourceGuideMatch or (not targets[goal.id] and match ~= nil)
            if not match and targetQuests[quest(goal)] then
                differences[pair.source .. ':' .. pair.target .. ':missing:' .. goal.id] = {
                    source=M.Fingerprint(goal), target='nil'}
            elseif match then
                local matchFields = fields
                if isSourceActionMatch then
                    -- These are route-local when an action is copied into a
                    -- Loremaster itinerary. The zone checks cover the shared
                    -- source fields, while the inventory owns local exclusions
                    -- and dependency IDs.
                    matchFields = {}
                    for _, field in ipairs(fields) do
                        if field ~= 'excludeWhen' and field ~= 'dependsOn' then
                            matchFields[#matchFields + 1] = field
                        end
                    end
                end
                for _, field in ipairs(matchFields) do
                    local before, after = M.Serialize(goal[field]), M.Serialize(match.goal[field])
                    if before ~= after then
                        local key = pair.source .. ':' .. pair.target .. ':' .. goal.id .. ':' .. field
                        differences[key] = {source=M.Fingerprint(goal[field]), target=M.Fingerprint(match.goal[field])}
                    end
                end
                if (hasSourceGuideMatch or targets[goal.id]) and match.index < previous then
                    differences[pair.source .. ':' .. pair.target .. ':order:' .. goal.id] = {
                        source=previousID .. ':' .. goal.id, target=goal.id .. ':' .. previousID}
                end
                if hasSourceGuideMatch or targets[goal.id] then previous, previousID = match.index, goal.id end
            end
        end
    end
    return differences
end
return M
