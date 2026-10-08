-- Shared guide data rules for lint.lua and audit_accept_chains.lua.
--
-- Catalog-driven prerequisite checks shared by lint.lua and
-- audit_accept_chains.lua.

local M = {}

function M.FocusedPickupCategory(category)
    return category == "Dungeon Quest Guides" or category == "Raid Quests"
end

function M.TurninQuestID(goalID)
    if type(goalID) ~= "string" then
        return nil
    end
    local questID = goalID:match("turnin%-(%d+)%-")
    return questID and tonumber(questID) or nil
end

function M.AcceptQuestIDFromID(goalID)
    if type(goalID) ~= "string" then
        return nil
    end
    local questID = goalID:match("accept%-(%d+)%-")
    return questID and tonumber(questID) or nil
end

-- Instant / auto-complete / donation / instant-omit accepts that never need a
-- separate turnin-{id} step on the leveling spine.
M.OrphanAcceptAllowlist = {
    -- instant (completes on accept)
    [6383] = "instant Ashenvale Hunt continuation",
    [247] = "instant The Hunt Completed",
    [1267] = "instant Missing Diplomat finale",
    [1191] = "Zamek's Distraction auto-completes",
    [7541] = "Service to the Horde auto-completes",
    [8273] = "Ora's Gratitude auto-completes",
    [2952] = "Sparklematic 5200 machine quest",
    [2741] = "Super Egg-O-Matic",
    [2750] = "egg quality auto",
    [2749] = "egg quality auto",
    [2748] = "egg quality auto",
    [2747] = "egg quality auto",
    [7725] = "repeatable zapped giants",
    [5887] = "Timbermaw salve repeatable",
    [5882] = "Timbermaw salve repeatable",
    [8467] = "Timbermaw feathers repeatable",
    [3570] = "Seeping Corruption auto",
    [5405] = "Argent Dawn Commission item",
    [5401] = "Argent Dawn Commission item",
    [5058] = "Mrs. Dalson's Diary auto",
    [5060] = "Locked Away auto",
    [5238] = "Mission Accomplished auto",
    [5237] = "Mission Accomplished auto",
    [690] = "Malin's Request: accept-only breadcrumb",
    [8308] = "Brann letter: accept-only item start",
    [308] = "Distracting Jarven: gossip/distraction, no turn-in",
    [77573] = "Forever Second Story Work: weave incomplete, turn-in pending",
    -- Cloth donations (complete via turn-in UI without authored turnin step)
    [7791] = "donation", [7793] = "donation", [7794] = "donation", [7795] = "donation",
    [7799] = "donation", [7800] = "donation",
    [7802] = "donation", [7803] = "donation", [7804] = "donation", [7805] = "donation",
    [7807] = "donation", [7808] = "donation", [7809] = "donation", [7811] = "donation",
    [7813] = "donation", [7814] = "donation", [7817] = "donation", [7818] = "donation",
    [7820] = "donation", [7821] = "donation", [7822] = "donation", [7823] = "donation",
    [7824] = "donation", [7826] = "donation", [7827] = "donation", [7831] = "donation",
    [7833] = "donation", [7834] = "donation", [7835] = "donation", [7836] = "donation",
    [10352] = "donation", [10354] = "donation",
}

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
    if not guide or M.FocusedPickupCategory(guide.category) then
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
    if not guide or M.FocusedPickupCategory(guide.category) then
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
        elseif era.casualSpine then
            -- spine import has not re-aligned Loremaster accept gates yet.
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
        if guide and guide.casualSpine then
            -- spine import has not re-authored class-branch dependsOn yet.
        else
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
    end
    return issues
end

-- Detour coverage pairs. When a chapter copies a block from a canonical route,
-- add a row here so CI fails if the detour drops objective or turn-in kinds
-- for a shared quest id. Paths are repo-relative; guideID is the RegisterGuide id.
-- Match steps by id prefix accept|turnin|objective|gossip-{questId}-.
-- Empty while Casual spines replace the old Barrens/Silverpine chapter ids.
M.DetourCoveragePairs = {}

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
    ["leveling-era-darkshore-part-3:98461"] = "leveling-era-wetlands",
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
    ["leveling-era-silverpine-forest:1060"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-silverpine-forest:6401"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-silverpine-forest:1062"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-silverpine-forest:493"] = "leveling-era-hillsbrad-foothills",
    ["leveling-era-silverpine-forest:879"] = "leveling-era-the-barrens-part-2",
    ["leveling-era-silverpine-forest:893"] = "leveling-era-the-barrens-part-2",
    ["leveling-era-stonetalon-mountains-part-1:1058"] = "leveling-era-stonetalon-mountains-part-3",
    ["leveling-era-stonetalon-mountains-part-1:6301"] = "leveling-era-stonetalon-mountains-part-3",
    ["leveling-era-stonetalon-mountains-part-3:6401"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-stonetalon-mountains-part-4:1058"] = "leveling-era-stonetalon-mountains-part-3",
    ["leveling-era-stonetalon-mountains-part-4:6401"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-the-barrens-part-1:1060"] = "leveling-era-stonetalon-mountains-part-1",
    ["leveling-era-the-barrens-part-1:6401"] = "leveling-era-stonetalon-mountains-part-1",
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
        local detour = guides and guides[issue.detourID]
        local canonical = guides and guides[issue.canonicalID]
        -- spine import spines are still being woven; do not fail CI on kind gaps
        -- against Loremaster or sibling faction chapters.
        if (detour and detour.casualSpine) or (canonical and canonical.casualSpine) then
            -- skip
        elseif M.IsShippedLevelingID(issue.detourID) and M.IsShippedLevelingID(issue.canonicalID) then
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
        if guide and not M.FocusedPickupCategory(guide.category) and type(guide.goals) == "table" then
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

local function AcceptQuestID(goal)
    local fromComplete = M.AcceptQuestIDFromGoal(goal)
    if fromComplete then
        return fromComplete
    end
    return M.AcceptQuestIDFromID(goal and goal.id)
end

local function IsInstantAccept(goal)
    local complete = type(goal) == "table" and goal.complete or nil
    local quest = type(complete) == "table" and complete.quest or nil
    return type(quest) == "table" and quest.state == "completed"
end

function M.AcceptsWithoutSameChapterTurnin(guide, guideID)
    local hints = {}
    if not guide or guide.category ~= "Leveling Quest Guides" then
        return hints
    end
    local turnins = {}
    for _, goal in ipairs(guide.goals or {}) do
        local questID = M.TurninQuestID(goal.id)
        if not questID and goal.kind == "turnin" then
            questID = M.AcceptQuestIDFromGoal(goal)
        end
        if questID then
            turnins[questID] = true
        end
    end
    for _, goal in ipairs(guide.goals or {}) do
        if goal.kind == "accept" then
            local questID = AcceptQuestID(goal)
            if questID and not turnins[questID] and not IsInstantAccept(goal) then
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

-- Accept on a Leveling/Era/Casual spine with no turn-in in any shipped guide
-- (including dungeons and class guides). Instant accepts and allowlisted
-- auto-completes are excluded.
function M.OrphanAcceptViolations(guides)
    local issues = {}
    local turnins = {}
    for _, guide in pairs(guides or {}) do
        for _, goal in ipairs(guide.goals or {}) do
            local questID = M.AcceptQuestIDFromGoal(goal) or M.TurninQuestID(goal.id)
            local complete = type(goal.complete) == "table" and goal.complete.quest or nil
            -- Turn-in steps, or any step that completes the quest (instant /
            -- objective-as-turnin Forever weaves).
            if questID and (goal.kind == "turnin"
                or (type(complete) == "table" and complete.state == "completed")) then
                turnins[questID] = true
            end
        end
    end
    for guideID, guide in pairs(guides or {}) do
        if guide and guide.category == "Leveling Quest Guides" then
            for _, goal in ipairs(guide.goals or {}) do
                if goal.kind == "accept" then
                    local questID = AcceptQuestID(goal)
                    if questID
                        and not turnins[questID]
                        and not IsInstantAccept(goal)
                        and not M.OrphanAcceptAllowlist[questID] then
                        issues[#issues + 1] = {
                            guideID = guideID,
                            goalID = goal.id,
                            questID = questID,
                        }
                    end
                end
            end
        end
    end
    table.sort(issues, function(a, b)
        if a.questID ~= b.questID then
            return a.questID < b.questID
        end
        return tostring(a.guideID) < tostring(b.guideID)
    end)
    return issues
end

-- Catalog prerequisites must have a turnin-{quest}- step in every guide that
-- accepts the dependent quest. Engine injection already errors when that
-- turn-in is missing or later; this check keeps the data rule next to lint.
-- M.PrerequisiteTurninExceptions[acceptQuest][prereqQuest] = "reason" skips a pair.
M.PrerequisiteTurninExceptions = {}

function M.PrerequisiteTurninViolations(guides, catalog)
    local issues = {}
    for guideID, guide in pairs(guides or {}) do
        if guide and not M.FocusedPickupCategory(guide.category) and not guide.casualSpine then
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

-- An item-started quest must loot/collect the starter item before the
-- "Use the … to accept" step. A source objective that dependsOn that accept
-- inverts the chain (Assassination Plot / Galak Messenger class of bug).
-- Selected goals must mention key how-to terms (item-starts, rare drops, etc.).
M.GoalTextRequirements = {
    {
        guideID = "dungeons-blackfathom-deeps",
        goalID = "accept-6564-allegience-to-the-old-gods",
        anyOf = { "Tide Priestess", "Damp Note" },
    },
}

local function TextContainsAny(haystack, needles)
    if type(haystack) ~= "string" then
        return false
    end
    for _, needle in ipairs(needles or {}) do
        if haystack:find(needle, 1, true) then
            return true
        end
    end
    return false
end

function M.GoalTextRequirementViolations(guides)
    local issues = {}
    for _, rule in ipairs(M.GoalTextRequirements) do
        local guide = guides[rule.guideID]
        local goal
        if guide then
            for _, candidate in ipairs(guide.goals or {}) do
                if candidate.id == rule.goalID then
                    goal = candidate
                    break
                end
            end
        end
        if not goal then
            issues[#issues + 1] = {
                guideID = rule.guideID,
                goalID = rule.goalID,
                detail = "goal not found",
            }
        elseif not TextContainsAny(goal.text, rule.anyOf) then
            issues[#issues + 1] = {
                guideID = rule.guideID,
                goalID = rule.goalID,
                detail = "text must mention one of: " .. table.concat(rule.anyOf, ", "),
            }
        end
    end
    return issues
end

function M.GoalHasAuthoredPin(goal)
    if type(goal) ~= "table" or type(goal.route) ~= "table" then
        return false
    end
    for _, point in ipairs(goal.route) do
        if type(point) == "table" and type(point.mapID) == "number" then
            return true
        end
    end
    return false
end

-- Accepts with no authored pin must still tell the player where to go or that
-- the quest starts from a bag item (Deeprun tram copy, Inside …, Use the …).
function M.AcceptHasPinOrGuidance(goal)
    if M.GoalHasAuthoredPin(goal) then
        return true
    end
    local text = type(goal) == "table" and goal.text or nil
    if type(text) ~= "string" or text == "" then
        return false
    end
    if text:match("^Use ") then
        return true
    end
    if text:find("Deeprun", 1, true) then
        return true
    end
    if text:match("^Inside ") then
        return true
    end
    if text:find(" from ", 1, true) or text:find(" after ", 1, true) then
        return true
    end
    return false
end

function M.IsLevelingGuide(guide, guideID)
    if type(guide) ~= "table" then
        return false
    end
    if guide.casualSpine == true or guide.compactLibrary == true then
        return true
    end
    if type(guideID) == "string" and guideID:find("^leveling%-", 1) then
        return true
    end
    return guide.category == "Leveling Quest Guides"
end

function M.PinlessAcceptViolations(guides)
    local issues = {}
    for guideID, guide in pairs(guides or {}) do
        if M.IsLevelingGuide(guide, guideID) then
            for _, goal in ipairs(guide.goals or {}) do
                if goal.kind == "accept" and not M.AcceptHasPinOrGuidance(goal) then
                    issues[#issues + 1] = {
                        guideID = guideID,
                        goalID = goal.id,
                        detail = "pinless accept needs a route pin, Use-the-item text, or navigation copy",
                    }
                end
            end
        end
    end
    return issues
end

function M.ItemStartInversionViolations(guides)
    local issues = {}
    for guideID, guide in pairs(guides or {}) do
        local byID = {}
        for _, goal in ipairs(guide.goals or {}) do
            if type(goal.id) == "string" then
                byID[goal.id] = goal
            end
        end
        for _, goal in ipairs(guide.goals or {}) do
            if goal.kind == "objective" or goal.kind == "note" then
                for _, dep in ipairs(goal.dependsOn or {}) do
                    local accept = byID[dep]
                    if accept and accept.kind == "accept"
                        and type(accept.text) == "string"
                        and accept.text:match("^Use the .+ to accept") then
                        local acceptQuest = M.AcceptQuestIDFromGoal(accept)
                            or (type(dep) == "string" and tonumber(dep:match("^accept%-(%d+)%-")))
                        local sourceQuest = M.AcceptQuestIDFromGoal(goal)
                            or (type(goal.id) == "string" and tonumber(goal.id:match("^objective%-(%d+)%-")))
                        local complete = goal.complete
                        local hasQuestObjective = type(complete) == "table"
                            and type(complete.questObjective) == "table"
                        if acceptQuest and sourceQuest and acceptQuest == sourceQuest
                            and not hasQuestObjective then
                            issues[#issues + 1] = {
                                guideID = guideID,
                                goalID = goal.id,
                                acceptID = dep,
                                questID = acceptQuest,
                            }
                        end
                    end
                end
            end
        end
    end
    return issues
end

-- QuestObjective(Q) before "Use the … to accept" for Q can never complete
-- (the quest is not in the log yet). Use a note keyed to activeOrCompleted.
function M.ItemStartQuestObjectiveViolations(guides)
    local issues = {}
    for guideID, guide in pairs(guides or {}) do
        local useAccepts = {}
        for _, goal in ipairs(guide.goals or {}) do
            if goal.kind == "accept" and type(goal.text) == "string"
                and goal.text:match("^Use the .+ to accept") then
                local questID = M.AcceptQuestIDFromGoal(goal)
                    or (type(goal.id) == "string" and tonumber(goal.id:match("^accept%-(%d+)%-")))
                if questID then
                    useAccepts[questID] = useAccepts[questID] or {}
                    useAccepts[questID][#useAccepts[questID] + 1] = goal
                end
            end
        end
        for _, goal in ipairs(guide.goals or {}) do
            local complete = goal.complete
            local spec = type(complete) == "table" and complete.questObjective or nil
            local questID = type(spec) == "table" and spec.id or nil
            if questID and useAccepts[questID] then
                local goalPriority = type(goal.priority) == "number" and goal.priority or 0
                for _, accept in ipairs(useAccepts[questID]) do
                    local acceptPriority = type(accept.priority) == "number" and accept.priority or 0
                    if goalPriority <= acceptPriority then
                        issues[#issues + 1] = {
                            guideID = guideID,
                            goalID = goal.id,
                            acceptID = accept.id,
                            questID = questID,
                        }
                    end
                end
            end
        end
    end
    return issues
end

return M
