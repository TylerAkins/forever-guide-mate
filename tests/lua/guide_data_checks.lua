-- Shared guide data rules for lint.lua and audit_accept_chains.lua.
--
-- CHAIN_ACCEPT_AFTER_TURNIN: accept quest key must dependOn the turn-in for value
-- before the tracker shows that accept in leveling/Loremaster guides. Add a row
-- when you weave a dungeon or zone chain into a route (see docs/guide-authoring.md).

local M = {}

-- accept quest id => must depend on turn-in for this quest id first
M.CHAIN_ACCEPT_AFTER_TURNIN = {
    [1490] = 1489, -- Nara Wildmane after Hamuul Runetotem (Wailing Caverns intro)
    -- [914] = 1490,  -- Leaders of the Fang — add when woven outside Dungeon guides
    -- [1491] = 914,
}

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
            local needTurnin = acceptQuest and M.CHAIN_ACCEPT_AFTER_TURNIN[acceptQuest]
            if needTurnin and not M.DependsOnTurnin(goal, needTurnin) then
                issues[#issues + 1] = {
                    guideID = guideID,
                    goalID = goal.id,
                    acceptQuest = acceptQuest,
                    needTurnin = needTurnin,
                }
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

return M
