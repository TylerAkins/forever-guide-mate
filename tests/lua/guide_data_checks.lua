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

-- Detour coverage pairs. When a chapter copies a block from a canonical route,
-- add a row here so CI fails if the detour drops objective or turn-in kinds
-- for a shared quest id. Paths are repo-relative; guideID is the RegisterGuide id.
-- Match steps by id prefix accept|turnin|objective|gossip-{questId}-.
M.DetourCoveragePairs = {
    {
        detour = "Guides/Leveling/silverpine-forest.lua",
        detourID = "leveling-era-silverpine-forest",
        canonical = "Guides/Leveling/the-barrens-part-1.lua",
        canonicalID = "leveling-era-the-barrens-part-1",
    },
}

local STEP_KIND_PREFIX = {
    accept = true,
    turnin = true,
    objective = true,
    gossip = true,
}

function M.QuestStepKinds(guide)
    local byQuest = {}
    for _, goal in ipairs(guide and guide.goals or {}) do
        local questID = tonumber(tostring(goal.id or ""):match("^accept%-(%d+)%-")
            or tostring(goal.id or ""):match("^turnin%-(%d+)%-")
            or tostring(goal.id or ""):match("^objective%-(%d+)%-")
            or tostring(goal.id or ""):match("^gossip%-(%d+)%-"))
        local kind = goal.kind
        if questID and STEP_KIND_PREFIX[kind] then
            byQuest[questID] = byQuest[questID] or {}
            byQuest[questID][kind] = true
        end
    end
    return byQuest
end

local function KindList(set)
    local names = {}
    for name in pairs(set or {}) do
        names[#names + 1] = name
    end
    table.sort(names)
    return names
end

-- Fail when the detour's kinds for a shared quest are a strict subset of the
-- canonical chapter (for example accept-only on the detour, accept+turnin on
-- the source). Equal coverage and extra detour kinds are allowed.
function M.DetourCoverageViolations(guides, configured)
    local issues = {}
    for _, pair in ipairs(configured or M.DetourCoveragePairs) do
        local detourKinds = M.QuestStepKinds(guides[pair.detourID])
        local canonicalKinds = M.QuestStepKinds(guides[pair.canonicalID])
        for questID, detourSet in pairs(detourKinds) do
            local canonicalSet = canonicalKinds[questID]
            if canonicalSet then
                local missing = {}
                local subset = true
                for kind in pairs(detourSet) do
                    if not canonicalSet[kind] then
                        subset = false
                    end
                end
                if subset then
                    for kind in pairs(canonicalSet) do
                        if not detourSet[kind] then
                            missing[#missing + 1] = kind
                        end
                    end
                end
                if #missing > 0 then
                    table.sort(missing)
                    issues[#issues + 1] = {
                        detourID = pair.detourID,
                        canonicalID = pair.canonicalID,
                        questID = questID,
                        detourKinds = table.concat(KindList(detourSet), ","),
                        canonicalKinds = table.concat(KindList(canonicalSet), ","),
                        missing = table.concat(missing, ","),
                    }
                end
            end
        end
    end
    table.sort(issues, function(a, b) return a.questID < b.questID end)
    return issues
end

-- Shipped leveling chapters (Guides/Leveling). Numeric Era archive ids
-- (leveling-era-30-30-…) are reported by the audit and are not hard failures.
function M.IsShippedLevelingID(guideID)
    return type(guideID) == "string"
        and guideID:match("^leveling%-") ~= nil
        and guideID:match("^leveling%-era%-%d") == nil
end

-- Baseline of gaps that already exist. These were recorded so lint stays green;
-- they have not each been confirmed as intentional handoffs. A new subset that
-- is not listed here fails lint. Remove an entry after the weaker chapter gains
-- the missing steps. Key is "guideID:questID". Value is a chapter that currently
-- has the fuller steps.
M.CoverageGapAllowlist = {
    ["leveling-durotar:2983"] = "leveling-era-the-barrens-part-1",
    ["leveling-durotar:830"] = "leveling-era-durotar",
    ["leveling-era-ashenvale-part-1:1026"] = "leveling-era-ashenvale-part-4",
    ["leveling-era-ashenvale-part-1:1054"] = "leveling-era-ashenvale-part-2",
    ["leveling-era-ashenvale-part-1:1056"] = "leveling-era-stonetalon-mountains-part-2",
    ["leveling-era-ashenvale-part-1:1070"] = "leveling-era-stonetalon-mountains-part-2",
    ["leveling-era-ashenvale-part-3:6383"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-darkshore-part-1:6342"] = "leveling-era-teldrassil",
    ["leveling-era-darkshore-part-1:729"] = "leveling-era-darkshore-part-2",
    ["leveling-era-darkshore-part-1:948"] = "leveling-era-darkshore-part-2",
    ["leveling-era-darkshore-part-1:986"] = "leveling-era-darkshore-part-3",
    ["leveling-era-darkshore-part-2:1685"] = "leveling-era-elwynn-forest",
    ["leveling-era-darkshore-part-2:986"] = "leveling-era-darkshore-part-3",
    ["leveling-era-dun-morogh:416"] = "leveling-era-elwynn-forest",
    ["leveling-era-dun-morogh:418"] = "leveling-era-elwynn-forest",
    ["leveling-era-durotar:2983"] = "leveling-era-the-barrens-part-1",
    ["leveling-era-durotar:809"] = "leveling-durotar",
    ["leveling-era-durotar:840"] = "leveling-durotar",
    ["leveling-era-elwynn-forest:151"] = "leveling-era-westfall",
    ["leveling-era-elwynn-forest:22"] = "leveling-era-westfall",
    ["leveling-era-elwynn-forest:38"] = "leveling-era-westfall",
    ["leveling-era-elwynn-forest:436"] = "leveling-era-loch-modan",
    ["leveling-era-elwynn-forest:64"] = "leveling-era-westfall",
    ["leveling-era-elwynn-forest:9"] = "leveling-era-westfall",
    ["leveling-era-mulgore:2984"] = "leveling-era-the-barrens-part-1",
    ["leveling-era-redridge-mountains-part-1:126"] = "leveling-era-redridge-mountains-part-2",
    ["leveling-era-silverpine-forest:1062"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-silverpine-forest:493"] = "leveling-era-hillsbrad-foothills",
    ["leveling-era-silverpine-forest:879"] = "leveling-era-the-barrens-part-2",
    ["leveling-era-silverpine-forest:893"] = "leveling-era-the-barrens-part-2",
    ["leveling-era-stonetalon-mountains-part-1:1058"] = "leveling-era-stonetalon-mountains-part-3",
    ["leveling-era-stonetalon-mountains-part-1:6301"] = "leveling-era-stonetalon-mountains-part-3",
    ["leveling-era-stonetalon-mountains-part-4:1058"] = "leveling-era-stonetalon-mountains-part-3",
    ["leveling-era-the-barrens-part-1:1062"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-the-barrens-part-1:1069"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-the-barrens-part-1:1483"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-the-barrens-part-1:879"] = "leveling-era-the-barrens-part-2",
    ["leveling-era-the-barrens-part-1:893"] = "leveling-era-the-barrens-part-2",
    ["leveling-era-the-barrens-part-2:846"] = "leveling-era-the-barrens-part-3",
    ["leveling-era-the-barrens-part-2:899"] = "leveling-era-silverpine-forest",
    ["leveling-era-the-barrens-part-3:1153"] = "leveling-era-thousand-needles-part-1",
    ["leveling-era-the-barrens-part-3:879"] = "leveling-era-the-barrens-part-2",
    ["leveling-era-the-barrens-part-3:882"] = "leveling-era-the-barrens-part-2",
    ["leveling-era-the-barrens-part-3:907"] = "leveling-era-the-barrens-part-2",
    ["leveling-era-thousand-needles-part-1:4767"] = "leveling-era-thousand-needles-part-2",
    ["leveling-era-thousand-needles-part-1:4865"] = "leveling-era-thousand-needles-part-2",
    ["leveling-era-thousand-needles-part-1:5064"] = "leveling-era-thousand-needles-part-2",
    ["leveling-era-thousand-needles-part-1:5147"] = "leveling-era-thousand-needles-part-2",
    ["leveling-era-tirisfal-glades:445"] = "leveling-era-silverpine-forest",
    ["leveling-era-westfall:61"] = "leveling-era-elwynn-forest",
    ["leveling-mulgore:2984"] = "leveling-era-the-barrens-part-1",
    ["leveling-mulgore:751"] = "leveling-era-mulgore",
    ["leveling-mulgore:773"] = "leveling-era-mulgore",
    ["leveling-mulgore:781"] = "leveling-era-mulgore",
}

function M.CollapsedCoverageGaps(issues)
    local best = {}
    for _, issue in ipairs(issues or {}) do
        local key = issue.detourID .. ":" .. tostring(issue.questID)
        local prev = best[key]
        if not prev or #issue.missing > #prev.missing then
            best[key] = issue
        end
    end
    local collapsed = {}
    for _, issue in pairs(best) do
        collapsed[#collapsed + 1] = issue
    end
    table.sort(collapsed, function(a, b)
        if a.detourID == b.detourID then
            return a.questID < b.questID
        end
        return a.detourID < b.detourID
    end)
    return collapsed
end

function M.ShippedLevelingCoverageViolations(guides)
    local violations = {}
    for _, issue in ipairs(M.CollapsedCoverageGaps(M.AllGuideCoverageGaps(guides))) do
        if M.IsShippedLevelingID(issue.detourID) and M.IsShippedLevelingID(issue.canonicalID) then
            local key = issue.detourID .. ":" .. tostring(issue.questID)
            if not M.CoverageGapAllowlist[key] then
                violations[#violations + 1] = issue
            end
        end
    end
    return violations
end

-- Fixture: a detour that keeps only the accept must be reported. Lint calls
-- this so a regression in the checker itself fails CI.
-- Every guide against every other guide. A hit means this guide's step kinds for
-- a shared quest id are a strict subset of another guide's kinds.
function M.AllGuideCoverageGaps(guides)
    local kindsByGuide = {}
    local guideIDs = {}
    for guideID, guide in pairs(guides or {}) do
        if guide and guide.category ~= "Dungeon Quest Guides" and type(guide.goals) == "table" then
            kindsByGuide[guideID] = M.QuestStepKinds(guide)
            guideIDs[#guideIDs + 1] = guideID
        end
    end
    table.sort(guideIDs)
    local issues = {}
    for _, weakerID in ipairs(guideIDs) do
        for _, fullerID in ipairs(guideIDs) do
            if weakerID ~= fullerID then
                for questID, weakerSet in pairs(kindsByGuide[weakerID]) do
                    local fullerSet = kindsByGuide[fullerID][questID]
                    if fullerSet then
                        local missing = {}
                        local subset = true
                        for kind in pairs(weakerSet) do
                            if not fullerSet[kind] then
                                subset = false
                            end
                        end
                        if subset then
                            for kind in pairs(fullerSet) do
                                if not weakerSet[kind] then
                                    missing[#missing + 1] = kind
                                end
                            end
                        end
                        if #missing > 0 then
                            table.sort(missing)
                            issues[#issues + 1] = {
                                detourID = weakerID,
                                canonicalID = fullerID,
                                questID = questID,
                                detourKinds = table.concat(KindList(weakerSet), ","),
                                canonicalKinds = table.concat(KindList(fullerSet), ","),
                                missing = table.concat(missing, ","),
                            }
                        end
                    end
                end
            end
        end
    end
    return issues
end

function M.DetourCoverageFixtureFails()
    local guides = {
        canonical = { goals = {
            { id = "accept-1-a", kind = "accept" },
            { id = "objective-1-a", kind = "objective" },
            { id = "turnin-1-a", kind = "turnin" },
            { id = "accept-2-b", kind = "accept" },
            { id = "turnin-2-b", kind = "turnin" },
        } },
        detour = { goals = {
            { id = "accept-1-a", kind = "accept" },
            { id = "accept-2-b", kind = "accept" },
            { id = "turnin-2-b", kind = "turnin" },
            { id = "objective-3-extra", kind = "objective" },
        } },
    }
    local issues = M.DetourCoverageViolations(guides, {
        { detourID = "detour", canonicalID = "canonical" },
    })
    return #issues == 1 and issues[1].questID == 1 and issues[1].missing == "objective,turnin"
end

-- Quests that must have a same-chapter turn-in. Empty on purpose: the audit
-- prints every accept-without-turn-in as a hint and fails only this list.
M.SameChapterTurninRequired = {}

function M.AcceptsWithoutSameChapterTurnin(guide, guideID)
    local hints = {}
    if not guide or guide.category ~= "Leveling Quest Guides" then
        return hints
    end
    local turnins = {}
    for _, goal in ipairs(guide.goals or {}) do
        local questID = M.TurninQuestID(goal.id)
        if questID then
            turnins[questID] = true
        end
    end
    for _, goal in ipairs(guide.goals or {}) do
        if goal.kind == "accept" then
            local questID = goal.id and tonumber(tostring(goal.id):match("^accept%-(%d+)%-"))
            if questID and not turnins[questID] then
                hints[#hints + 1] = {
                    guideID = guideID,
                    goalID = goal.id,
                    questID = questID,
                    required = M.SameChapterTurninRequired[questID] == true,
                }
            end
        end
    end
    return hints
end

-- Catalog prerequisites must have a turnin-{quest}- step in every guide that
-- accepts the dependent quest. Engine injection already errors when that
-- turn-in is missing or later; this check keeps the data rule next to lint.
-- M.PrerequisiteTurninExceptions[acceptQuest][prereqQuest] = "reason" skips a pair.
M.PrerequisiteTurninExceptions = {}

function M.PrerequisiteTurninViolations(guides, catalog)
    local issues = {}
    for guideID, guide in pairs(guides or {}) do
        if guide and guide.category ~= "Dungeon Quest Guides" then
            local turnins = {}
            for _, goal in ipairs(guide.goals or {}) do
                local questID = M.TurninQuestID(goal.id)
                if questID then
                    turnins[questID] = true
                end
            end
            for _, goal in ipairs(guide.goals or {}) do
                if goal.kind == "accept" then
                    local acceptQuest = goal.id and tonumber(tostring(goal.id):match("^accept%-(%d+)%-"))
                    local rules = acceptQuest and catalog and catalog[acceptQuest]
                    for _, rule in ipairs(rules or {}) do
                        for _, need in ipairs(rule.quests or {}) do
                            local skipped = M.PrerequisiteTurninExceptions[acceptQuest]
                                and M.PrerequisiteTurninExceptions[acceptQuest][need]
                            if not skipped and not turnins[need] then
                                issues[#issues + 1] = {
                                    guideID = guideID,
                                    goalID = goal.id,
                                    acceptQuest = acceptQuest,
                                    needTurnin = need,
                                }
                            end
                        end
                    end
                end
            end
        end
    end
    return issues
end

return M
