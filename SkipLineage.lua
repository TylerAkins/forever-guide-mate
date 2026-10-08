local _, ns = ...

local SkipLineage = {}
ns.SkipLineage = SkipLineage

local function EnsureTables()
    if type(ns.charDB) ~= "table" then return end
    if type(ns.charDB.skipped) ~= "table" then ns.charDB.skipped = {} end
    if type(ns.charDB.skippedBecause) ~= "table" then ns.charDB.skippedBecause = {} end
end

function SkipLineage:IsSkipped(goalID)
    EnsureTables()
    return type(goalID) == "string" and ns.charDB.skipped[goalID] == true
end

function SkipLineage:Clear(goalID)
    EnsureTables()
    if type(goalID) ~= "string" then return end
    ns.charDB.skipped[goalID] = nil
    ns.charDB.skippedBecause[goalID] = nil
end

function SkipLineage:ClearCluster(rootID)
    EnsureTables()
    if type(rootID) ~= "string" then return end
    self:Clear(rootID)
    for goalID, parent in pairs(ns.charDB.skippedBecause) do
        if parent == rootID then
            self:Clear(goalID)
        end
    end
end

function SkipLineage:ClearGuide(guide)
    EnsureTables()
    if type(guide) ~= "table" or type(guide.goals) ~= "table" then return end
    for _, goal in ipairs(guide.goals) do
        if type(goal.id) == "string" then
            self:Clear(goal.id)
        end
    end
end

local dependentsCache = {}

function SkipLineage:InvalidateDependents(guideID)
    if guideID then
        dependentsCache[guideID] = nil
    else
        dependentsCache = {}
    end
end

function SkipLineage:Dependents(guide)
    if type(guide) ~= "table" or type(guide.id) ~= "string" then
        return {}
    end
    local cached = dependentsCache[guide.id]
    if cached then return cached end
    local byID = {}
    for _, goal in ipairs(guide.goals or {}) do
        byID[goal.id] = {}
    end
    local function Link(fromID, toID)
        if type(fromID) ~= "string" or type(toID) ~= "string" then return end
        local list = byID[fromID]
        if not list then
            list = {}
            byID[fromID] = list
        end
        for _, existing in ipairs(list) do
            if existing == toID then return end
        end
        list[#list + 1] = toID
    end
    for _, goal in ipairs(guide.goals or {}) do
        for _, dependencyID in ipairs(goal.dependsOn or {}) do
            Link(dependencyID, goal.id)
        end
        for _, group in ipairs(goal.questPrerequisites or {}) do
            for _, dependencyID in ipairs(group.goalIDs or {}) do
                Link(dependencyID, goal.id)
            end
        end
    end
    dependentsCache[guide.id] = byID
    return byID
end

function SkipLineage:Preview(guide, goal)
    if type(guide) ~= "table" or type(goal) ~= "table" or type(goal.id) ~= "string" then
        return {}
    end
    local dependents = self:Dependents(guide)
    local ordered = {}
    local seen = { [goal.id] = true }
    local queue = { goal.id }
    local head = 1
    while head <= #queue do
        local current = queue[head]
        head = head + 1
        for _, childID in ipairs(dependents[current] or {}) do
            if not seen[childID] then
                seen[childID] = true
                ordered[#ordered + 1] = childID
                queue[#queue + 1] = childID
            end
        end
    end
    return ordered
end

function SkipLineage:SkipAllowed(guide)
    return type(guide) == "table" and guide.category ~= "Loremaster Guides"
end

function SkipLineage:Apply(guide, goal, cascadeIDs)
    EnsureTables()
    if not self:SkipAllowed(guide) or type(goal) ~= "table" or type(goal.id) ~= "string" then
        return false
    end
    ns.charDB.skipped[goal.id] = true
    ns.charDB.skippedBecause[goal.id] = nil
    if type(ns.charDB.deferred) == "table" then
        ns.charDB.deferred[goal.id] = nil
    end
    for _, childID in ipairs(cascadeIDs or {}) do
        ns.charDB.skipped[childID] = true
        ns.charDB.skippedBecause[childID] = goal.id
        if type(ns.charDB.deferred) == "table" then
            ns.charDB.deferred[childID] = nil
        end
    end
    return true
end
