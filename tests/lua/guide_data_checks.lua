-- Shared guide data rules for lint.lua and audit_accept_chains.lua.
--
-- Catalog-driven prerequisite checks shared by lint.lua and
-- audit_accept_chains.lua.

local M = {}

function M.TurninQuestID(goalID)
    if type(goalID) ~= "string" then
        return nil
    end
    local questID = goalID:match("^turnin%-(%d+)%-")
    return questID and tonumber(questID) or nil
end

function M.AcceptQuestIDFromGoal(goal)
    local complete = type(goal) == "table" and goal.complete or nil
    local quest = type(complete) == "table" and complete.quest or nil
    return type(quest) == "table" and quest.id or nil
end

function M.DependsOnTurnin(goal, questID)
    if type(goal.dependsOn) ~= "table" then
        return false
    end
    for _, dep in ipairs(goal.dependsOn) do
        if M.TurninQuestID(dep) == questID then
            return true
        end
    end
    return false
end

function M.ChainViolations(guide, guideID)
    local issues = {}
    if not guide or guide.category == "Dungeon Quest Guides" then
        return issues
    end
    for _, goal in ipairs(guide.goals or {}) do
        if goal.kind == "accept" then
            local acceptQuest = M.AcceptQuestIDFromGoal(goal)
            for _, group in ipairs(goal.questPrerequisites or {}) do
                for index, needTurnin in ipairs(group.questIDs or {}) do
                    if not group.goalIDs or not group.goalIDs[index]
                        or M.TurninQuestID(group.goalIDs[index]) ~= needTurnin then
                        issues[#issues + 1] = {
                            guideID = guideID,
                            goalID = goal.id,
                            acceptQuest = acceptQuest,
                            needTurnin = needTurnin,
                        }
                    end
                end
            end
        end
    end
    return issues
end

-- Review hints: accept has no dependsOn but a prior turn-in for another quest exists
-- and accept appears later in the file (may be intentional camp pickup).
function M.OrphanAcceptHints(guide, guideID)
    local hints = {}
    if not guide or guide.category == "Dungeon Quest Guides" then
        return hints
    end
    local turnins = {}
    for index, goal in ipairs(guide.goals) do
        if goal.kind == "turnin" then
            local q = M.AcceptQuestIDFromGoal(goal)
            if q and not turnins[q] then
                turnins[q] = { index = index, goalID = goal.id }
            end
        end
    end
    for index, goal in ipairs(guide.goals) do
        if goal.kind == "accept" then
            local acceptQuest = M.AcceptQuestIDFromGoal(goal)
            if acceptQuest then
                local empty = not goal.dependsOn or #goal.dependsOn == 0
                if empty then
                    for turninQuest, info in pairs(turnins) do
                        if turninQuest ~= acceptQuest and info.index < index
                            and acceptQuest > turninQuest and acceptQuest - turninQuest <= 3 then
                            hints[#hints + 1] = {
                                guideID = guideID,
                                goalID = goal.id,
                                acceptQuest = acceptQuest,
                                afterTurninQuest = turninQuest,
                                afterTurninGoal = info.goalID,
                            }
                        end
                    end
                end
            end
        end
    end
    return hints
end

-- Era leveling chapters that must keep accept turn-in gates aligned with Loremaster.
M.EraLoremasterPairs = {
    ["leveling-era-durotar"] = "leveling-durotar",
    ["leveling-era-mulgore"] = "leveling-mulgore",
}

function M.GateDependencies(goal)
    local gates = {}
    if type(goal.dependsOn) ~= "table" then
        return gates
    end
    for _, dependency in ipairs(goal.dependsOn) do
        if type(dependency) == "string"
            and dependency:match("^(turnin|objective|accept)-") then
            gates[#gates + 1] = dependency
        end
    end
    table.sort(gates)
    return gates
end

local function SameSortedList(a, b)
    if #a ~= #b then
        return false
    end
    for index, value in ipairs(a) do
        if b[index] ~= value then
            return false
        end
    end
    return true
end

function M.GoalDependsOnAll(goal, required)
    if type(goal.dependsOn) ~= "table" or type(required) ~= "table" then
        return false
    end
    local present = {}
    for _, dependency in ipairs(goal.dependsOn) do
        present[dependency] = true
    end
    for _, dependency in ipairs(required) do
        if not present[dependency] then
            return false
        end
    end
    return true
end

-- When one class uses a different turn-in goal id for the same unlock, list every branch.
M.RequiredClassBranchTurnins = {
    {
        guideID = "leveling-era-durotar",
        goalID = "accept-794-burning-blade-medallion",
        turnins = { "turnin-792-vile-familiars", "turnin-1499-vile-familiars" },
    },
    {
        guideID = "leveling-era-durotar",
        goalID = "accept-5441-lazy-peons",
        turnins = { "turnin-792-vile-familiars", "turnin-1499-vile-familiars" },
    },
    {
        guideID = "leveling-durotar",
        goalID = "accept-794-burning-blade-medallion",
        turnins = { "turnin-792-vile-familiars", "turnin-1499-vile-familiars" },
    },
}

function M.LevelingLoremasterAcceptGateDrift(guides)
    local issues = {}
    for eraID, loremasterID in pairs(M.EraLoremasterPairs) do
        local era = guides[eraID]
        local loremaster = guides[loremasterID]
        if not era or not loremaster then
            issues[#issues + 1] = {
                eraID = eraID,
                loremasterID = loremasterID,
                goalID = "",
                detail = "missing guide registration",
            }
        else
            local eraAccepts = {}
            local loremasterAccepts = {}
            for _, goal in ipairs(era.goals or {}) do
                if goal.kind == "accept" then
                    local questID = M.AcceptQuestIDFromGoal(goal)
                    if questID then eraAccepts[questID] = goal end
                end
            end
            for _, goal in ipairs(loremaster.goals or {}) do
                if goal.kind == "accept" then
                    local questID = M.AcceptQuestIDFromGoal(goal)
                    if questID then loremasterAccepts[questID] = goal end
                end
            end
            for questID, loremasterGoal in pairs(loremasterAccepts) do
                local gates = M.GateDependencies(loremasterGoal)
                if #gates > 0 then
                    local eraGoal = eraAccepts[questID]
                    if not eraGoal then
                        issues[#issues + 1] = {
                            eraID = eraID,
                            goalID = loremasterGoal.id,
                            detail = ("quest %d accept missing from Era chapter"):format(questID),
                        }
                    elseif not SameSortedList(gates, M.GateDependencies(eraGoal)) then
                        issues[#issues + 1] = {
                            eraID = eraID,
                            goalID = eraGoal.id,
                            detail = ("quest %d Era dependsOn %s but Loremaster has %s"):format(
                                questID,
                                table.concat(M.GateDependencies(eraGoal), ", "),
                                table.concat(gates, ", ")),
                        }
                    end
                end
            end
        end
    end
    return issues
end

function M.ClassBranchTurninViolations(guides)
    local issues = {}
    for _, rule in ipairs(M.RequiredClassBranchTurnins) do
        local guide = guides[rule.guideID]
        local goal = guide and guide.goals
        local matched
        if goal then
            for _, candidate in ipairs(guide.goals) do
                if candidate.id == rule.goalID then
                    matched = candidate
                    break
                end
            end
        end
        if not matched then
            issues[#issues + 1] = {
                guideID = rule.guideID,
                goalID = rule.goalID,
                detail = "goal not found",
            }
        elseif not M.GoalDependsOnAll(matched, rule.turnins) then
            issues[#issues + 1] = {
                guideID = rule.guideID,
                goalID = rule.goalID,
                detail = "must dependOn every class turn-in: " .. table.concat(rule.turnins, ", "),
            }
        end
    end
    return issues
end

return M
