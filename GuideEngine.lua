local _, ns = ...

local Engine = { state = nil, currentGuide = nil, currentGoal = nil, status = nil }
ns.Engine = Engine

local VALID_KINDS = { accept = true, objective = true, turnin = true, travel = true, note = true }

local function Contains(values, expected)
    if type(values) ~= "table" then
        return values == expected
    end
    for _, value in ipairs(values) do
        if value == expected then
            return true
        end
    end
    return false
end

local function Unknown(reason)
    return nil, reason or "Eligibility could not be verified."
end

local function ObjectiveFinished(objective)
    if type(objective) ~= "table" then
        return nil
    end
    if objective.finished == true then
        return true
    end
    if type(objective.numRequired) == "number" and objective.numRequired > 0
        and type(objective.numFulfilled) == "number" then
        return objective.numFulfilled >= objective.numRequired
    end
    if objective.finished == false then
        return false
    end
    return nil
end

local function FindObjective(objectives, spec)
    if type(objectives) ~= "table" then
        return nil
    end
    if type(spec.text) == "string" and spec.text ~= "" then
        local needle = string.lower(spec.text)
        for _, objective in ipairs(objectives) do
            if type(objective) == "table" and type(objective.text) == "string"
                and string.find(string.lower(objective.text), needle, 1, true) then
                return objective
            end
        end
    end
    if type(spec.index) == "number" then
        return objectives[spec.index]
    end
end

function ns.EvaluateCondition(condition, state)
    if condition == nil then
        return true
    end
    if type(condition) ~= "table" then
        return false, "Invalid condition."
    end
    if condition.all then
        local unknownReason
        for _, child in ipairs(condition.all) do
            local result, reason = ns.EvaluateCondition(child, state)
            if result == false then
                return false, reason
            elseif result == nil then
                unknownReason = unknownReason or reason
            end
        end
        if unknownReason then
            return Unknown(unknownReason)
        end
        return true
    end
    if condition.any then
        local unknownReason
        local falseReason
        for _, child in ipairs(condition.any) do
            local result, reason = ns.EvaluateCondition(child, state)
            if result == true then
                return true
            elseif result == nil then
                unknownReason = unknownReason or reason
            else
                falseReason = falseReason or reason
            end
        end
        if unknownReason then
            return Unknown(unknownReason)
        end
        return false, falseReason or "No alternative condition matched."
    end
    if condition["not"] then
        local result, reason = ns.EvaluateCondition(condition["not"], state)
        if result == nil then
            return Unknown(reason)
        end
        return not result, result and "Excluded by guide condition." or nil
    end
    if condition.faction then
        if not state.faction then
            return Unknown("Faction is unavailable.")
        end
        local matches = Contains(condition.faction, state.faction)
        return matches, matches and nil or "This step is for " .. tostring(condition.faction) .. "."
    end
    if condition.race then
        if not state.raceID then
            return Unknown("Race is unavailable.")
        end
        local matches = Contains(condition.race, state.raceID)
        return matches, matches and nil or "Race requirement not met."
    end
    if condition.class then
        if not state.classID then
            return Unknown("Class is unavailable.")
        end
        local matches = Contains(condition.class, state.classID)
        return matches, matches and nil or "Class requirement not met."
    end
    if condition.level then
        if type(state.level) ~= "number" then
            return Unknown("Level is unavailable.")
        end
        local matches = (not condition.level.min or state.level >= condition.level.min)
            and (not condition.level.max or state.level <= condition.level.max)
        return matches, matches and nil or "Level requirement not met."
    end
    if condition.profession then
        if not state.professionsKnown then
            return Unknown("Profession information is unavailable.")
        end
        local rank = state.professions[condition.profession.skillLineID]
        local matches = rank ~= nil and rank >= (condition.profession.minRank or 1)
        return matches, matches and nil or "Profession requirement not met."
    end
    if condition.map then
        if not state.mapID then
            return Unknown("Current map is unavailable.")
        end
        local matches = Contains(condition.map, state.mapID)
        if not matches and ns.Navigation then
            if type(condition.map) ~= "table" then
                matches = ns.Navigation:OnMap(state.mapID, condition.map)
            else
                for _, value in ipairs(condition.map) do
                    if ns.Navigation:OnMap(state.mapID, value) then
                        matches = true
                        break
                    end
                end
            end
        end
        return matches, matches and nil or "Travel to the required map."
    end
    if condition.instance then
        if not state.instanceID then
            return Unknown("Current instance is unavailable.")
        end
        local matches = Contains(condition.instance, state.instanceID)
        return matches, matches and nil or "Enter the required instance."
    end
    if condition.quest then
        local questID = condition.quest.id
        local wanted = condition.quest.state
        local active = state.quests and state.quests[questID]
        local completed = state.completedQuests and state.completedQuests[questID]
        if wanted == "active" then
            if not state.questLogKnown then
                return Unknown("Quest log is unavailable.")
            end
            return active ~= nil, active and nil or "Quest is not in the log."
        elseif wanted == "complete" then
            if completed then
                return true
            end
            if active then
                return active.complete and true or false, active.complete and nil or "Quest objectives are incomplete."
            end
            if not state.questLogKnown or not state.questCompletionKnown then
                return Unknown("Quest completion is unavailable.")
            end
            return false, "Quest is not complete."
        elseif wanted == "completed" then
            if not state.questCompletionKnown then
                return Unknown("Quest completion is unavailable.")
            end
            return completed and true or false, completed and nil or "Quest has not been turned in."
        elseif wanted == "activeOrCompleted" then
            if active or completed then
                return true
            end
            if not state.questLogKnown or not state.questCompletionKnown then
                return Unknown("Quest state is unavailable.")
            end
            return false, "Quest has not been accepted."
        elseif wanted == "notCompleted" then
            if not state.questCompletionKnown then
                return Unknown("Quest completion is unavailable.")
            end
            return not completed, completed and "Quest is already complete." or nil
        end
        return false, "Unknown quest condition."
    end
    if condition.questObjective then
        local spec = condition.questObjective
        local questID = type(spec) == "table" and spec.id or nil
        if type(questID) ~= "number" then
            return false, "Invalid quest objective."
        end
        if state.completedQuests and state.completedQuests[questID] then
            return true
        end
        local active = state.quests and state.quests[questID]
        if active and active.complete then
            return true
        end
        if not state.questLogKnown then
            return Unknown("Quest log is unavailable.")
        end
        if not active then
            if not state.questCompletionKnown then
                return Unknown("Quest completion is unavailable.")
            end
            return false, "Quest objective is incomplete."
        end
        local objective = FindObjective(active.objectives, spec)
        if objective == nil then
            return Unknown("Quest objective is unavailable.")
        end
        local finished = ObjectiveFinished(objective)
        if finished == nil then
            return Unknown("Quest objective is unavailable.")
        end
        return finished, finished and nil or "Quest objective is incomplete."
    end
    return false, "Unknown condition type."
end

local function ValidateDeclarative(value, path)
    if type(value) == "function" then
        return false, path .. " cannot contain functions"
    end
    if type(value) == "table" then
        for key, child in pairs(value) do
            local valid, reason = ValidateDeclarative(child, path .. "." .. tostring(key))
            if not valid then
                return false, reason
            end
        end
    end
    return true
end

local function ValidateGuide(guide)
    if type(guide) ~= "table" or type(guide.id) ~= "string" or guide.id == "" then
        return false, "Guide id is required."
    end
    if type(guide.title) ~= "string" or type(guide.category) ~= "string" then
        return false, "Guide title and category are required."
    end
    if type(guide.revision) ~= "number" or type(guide.goals) ~= "table" or #guide.goals == 0 then
        return false, "Guide revision and goals are required."
    end
    local declarative, reason = ValidateDeclarative(guide, "guide")
    if not declarative then
        return false, reason
    end
    local goalIDs = {}
    for index, goal in ipairs(guide.goals) do
        if type(goal.id) ~= "string" or goal.id == "" or goalIDs[goal.id] then
            return false, "Goal ids must be non-empty and unique."
        end
        if not VALID_KINDS[goal.kind] or type(goal.text) ~= "string" then
            return false, "Goal " .. goal.id .. " has an invalid kind or text."
        end
        goalIDs[goal.id] = index
        for _, leg in ipairs(goal.route or {}) do
            if type(leg.mapID) ~= "number" or type(leg.x) ~= "number" or type(leg.y) ~= "number"
                or leg.x < 0 or leg.x > 1 or leg.y < 0 or leg.y > 1 then
                return false, "Goal " .. goal.id .. " has an invalid route leg."
            end
        end
    end
    for _, goal in ipairs(guide.goals) do
        for _, dependency in ipairs(goal.dependsOn or {}) do
            if not goalIDs[dependency] then
                return false, "Goal " .. goal.id .. " has an unknown dependency."
            end
        end
    end
    return true
end

function ns:RegisterGuide(guide)
    local valid, reason = ValidateGuide(guide)
    if not valid then
        error("Forever GuideMate: " .. reason, 2)
    end
    if self.guides[guide.id] then
        error("Forever GuideMate: duplicate guide id " .. guide.id, 2)
    end
    self.guides[guide.id] = guide
    self.guideOrder[#self.guideOrder + 1] = guide.id
end

local function CollectQuestIDs(value, found)
    if type(value) ~= "table" then
        return
    end
    if value.quest and type(value.quest.id) == "number" then
        found[value.quest.id] = true
    end
    if type(value.questID) == "number" then
        found[value.questID] = true
    end
    for _, child in pairs(value) do
        if type(child) == "table" then
            CollectQuestIDs(child, found)
        end
    end
end

function ns.GuideUsesQuest(guide, questID)
    local found = {}
    CollectQuestIDs(guide, found)
    return found[questID] == true
end

function ns.GetTrackedQuestIDs()
    local found = {}
    for _, guide in pairs(ns.guides) do
        CollectQuestIDs(guide, found)
    end
    local ids = {}
    for questID in pairs(found) do
        ids[#ids + 1] = questID
    end
    table.sort(ids)
    return ids
end

function Engine:GetGoal(guide, goalID)
    for index, goal in ipairs(guide.goals) do
        if goal.id == goalID then
            return goal, index
        end
    end
end

function Engine:GetLedger(guide, create)
    local ledgers = ns.charDB.completionLedger
    local guideLedger = ledgers[guide.id]
    if not guideLedger and create then
        guideLedger = {}
        ledgers[guide.id] = guideLedger
    end
    local revision = tostring(guide.revision)
    local revisionLedger = guideLedger and guideLedger[revision]
    if not revisionLedger and create then
        revisionLedger = {}
        guideLedger[revision] = revisionLedger
    end
    return revisionLedger
end

function Engine:GetInferred(guide)
    local byGuide = self.inferredCompletedByGuide or {}
    local byRevision = byGuide[guide.id]
    return byRevision and byRevision[tostring(guide.revision)] or nil
end

function Engine:IsGoalDone(goal, state, guide)
    guide = guide or self.currentGuide
    if guide and guide.id == ns.charDB.selectedGuide and ns.charDB.manualCompleted[goal.id] then
        return true
    end
    local ledger = guide and self:GetLedger(guide, false)
    if ledger and ledger[goal.id] then
        return true
    end
    local inferred = guide and self:GetInferred(guide)
    if inferred and inferred[goal.id] then
        return true
    end
    if not goal.complete then
        return false
    end
    return ns.EvaluateCondition(goal.complete, state) == true
end

function Engine:ReconcileGuide(guide, state)
    self.inferredCompletedByGuide = self.inferredCompletedByGuide or {}
    self.inferredCompletedByGuide[guide.id] = self.inferredCompletedByGuide[guide.id] or {}
    local inferred = {}
    self.inferredCompletedByGuide[guide.id][tostring(guide.revision)] = inferred
    local ledger = self:GetLedger(guide, true)
    local done = {}
    for _, goal in ipairs(guide.goals) do
        if guide.id == ns.charDB.selectedGuide and ns.charDB.manualCompleted[goal.id] then
            ledger[goal.id] = true
            ns.charDB.manualCompleted[goal.id] = nil
        end
        local observed = goal.complete and ns.EvaluateCondition(goal.complete, state) == true
        if observed and goal.persistCompletion then
            ledger[goal.id] = true
        end
        if observed or ledger[goal.id] or ns.charDB.manualCompleted[goal.id] then
            done[goal.id] = true
        end
    end
    local function InferDependencies(goalID, visiting)
        local goal = self:GetGoal(guide, goalID)
        if not goal or visiting[goalID] then
            return
        end
        visiting[goalID] = true
        for _, dependencyID in ipairs(goal.dependsOn or {}) do
            inferred[dependencyID] = true
            local dependency = self:GetGoal(guide, dependencyID)
            if dependency and dependency.kind ~= "travel" and dependency.kind ~= "note" then
                InferDependencies(dependencyID, visiting)
            end
        end
        visiting[goalID] = nil
    end
    for goalID in pairs(done) do
        local goal = self:GetGoal(guide, goalID)
        if goal and goal.kind ~= "travel" and goal.kind ~= "note" then
            InferDependencies(goalID, {})
        end
    end
end

local function HasPermanentFailure(condition, state)
    if type(condition) ~= "table" then
        return ns.EvaluateCondition(condition, state) == false
    end
    if condition.all then
        for _, child in ipairs(condition.all) do
            if HasPermanentFailure(child, state) then
                return true
            end
        end
        return false
    end
    if condition.any then
        if #condition.any == 0 then
            return false
        end
        for _, child in ipairs(condition.any) do
            if not HasPermanentFailure(child, state) then
                return false
            end
        end
        return true
    end
    if condition["not"] then
        return ns.EvaluateCondition(condition, state) == false
    end
    if condition.level and not condition.faction and not condition.class and not condition.race
        and not condition.profession and not condition.quest and not condition.map and not condition.instance then
        return false
    end
    local eligible, reason = ns.EvaluateCondition(condition, state)
    if reason == "Level requirement not met." then
        return false
    end
    return eligible == false
end

function Engine:GetGuideProgress(guide, state)
    state = state or self.state or {}
    self:ReconcileGuide(guide, state)
    local completed, eligible, total = 0, 0, #guide.goals
    local guideEligible = ns.EvaluateCondition(guide.conditions, state)
    if guideEligible == false then
        return { completed = 0, eligible = 0, total = total, percentage = 0 }
    end
    for _, goal in ipairs(guide.goals) do
        if not HasPermanentFailure(goal.conditions, state) then
            eligible = eligible + 1
            if self:IsGoalDone(goal, state, guide) then
                completed = completed + 1
            end
        end
    end
    local percentage = eligible > 0 and math.floor((completed * 100 / eligible) + 0.5) or 0
    return { completed = completed, eligible = eligible, total = total, percentage = percentage }
end

function Engine:IsDependencyDone(guide, dependencyID, state)
    local goal = self:GetGoal(guide, dependencyID)
    if not goal then
        return false
    end
    -- Faction, class, and race mismatches will never become available. A level
    -- miss only means the character has not reached that step yet.
    if HasPermanentFailure(goal.conditions, state) then
        return true
    end
    return self:IsGoalDone(goal, state, guide)
end

function Engine:IsReady(guide, goal, state)
    local eligible, reason = ns.EvaluateCondition(goal.conditions, state)
    if eligible == false then
        return false, reason, true
    end
    for _, dependencyID in ipairs(goal.dependsOn or {}) do
        if not self:IsDependencyDone(guide, dependencyID, state) then
            return false, "Waiting for " .. dependencyID .. ".", false
        end
    end
    return true, eligible == nil and reason or nil, false
end

function Engine:CandidateGoals(guide, state)
    local sameMap = {}
    local others = {}
    local deferred = {}
    self.eligibilityReasons = {}
    for index, goal in ipairs(guide.goals) do
        local ready, reason, ineligible = self:IsReady(guide, goal, state)
        if reason and (ineligible or ready) then
            self.eligibilityReasons[goal.id] = reason
        end
        if ready and not self:IsGoalDone(goal, state, guide) then
            local destination = goal.route and goal.route[#goal.route]
            local candidate = { goal = goal, index = index }
            if ns.charDB.deferred[goal.id] then
                deferred[#deferred + 1] = candidate
            else
                local bucket = destination and destination.mapID == state.mapID and sameMap or others
                bucket[#bucket + 1] = candidate
            end
        end
    end
    local function Sort(a, b)
        local aPriority = a.goal.priority or a.index
        local bPriority = b.goal.priority or b.index
        return aPriority < bPriority
    end
    table.sort(sameMap, Sort)
    table.sort(others, Sort)
    table.sort(deferred, Sort)
    for _, candidate in ipairs(others) do
        sameMap[#sameMap + 1] = candidate
    end
    for _, candidate in ipairs(deferred) do
        sameMap[#sameMap + 1] = candidate
    end
    local goals = {}
    for _, candidate in ipairs(sameMap) do
        goals[#goals + 1] = candidate.goal
    end
    return goals
end

function Engine:SetActiveGoal(goal, remember)
    local oldID = ns.charDB.activeGoal
    if remember and oldID and oldID ~= goal.id then
        ns.charDB.history[#ns.charDB.history + 1] = oldID
    end
    ns.charDB.activeGoal = goal.id
    self.currentGoal = goal
    self.reviewingGoal = nil
end

function Engine:Refresh(state)
    if not ns.charDB then
        return
    end
    state = state or ns.PlayerState:Capture()
    self.state = state
    local guide = ns.guides[ns.charDB.selectedGuide]
    self.currentGuide = guide
    if not guide then
        self.currentGoal = nil
        self.status = "Choose a guide."
        if ns.UI and ns.UI.Update then
            ns.UI:Update(self)
        end
        if ns.MapPins then
            ns.MapPins:HookMap()
            ns.MapPins:Refresh()
        end
        return
    end
    self:ReconcileGuide(guide, state)
    local eligible, reason = ns.EvaluateCondition(guide.conditions, state)
    if eligible == false then
        self.currentGoal = nil
        self.status = reason
    else
        local active = self:GetGoal(guide, ns.charDB.activeGoal)
        local ready = active and self:IsReady(guide, active, state)
        local observedDone = active and active.complete and ns.EvaluateCondition(active.complete, state) == true
        local ledger = self:GetLedger(guide, false)
        local inferred = self:GetInferred(guide)
        local permanentlyDone = active and (ns.charDB.manualCompleted[active.id]
            or (ledger and ledger[active.id]) or (inferred and inferred[active.id]))
        if active and self.reviewingGoal == active.id then
            self.currentGoal = active
            self.status = "Reviewing a previous step."
        elseif active and ready and not permanentlyDone and not ns.charDB.deferred[active.id]
            and (not observedDone or not ns.db.autoAdvance) then
            self.currentGoal = active
        else
            local candidates = self:CandidateGoals(guide, state)
            if candidates[1] then
                self:SetActiveGoal(candidates[1], active ~= nil)
                self.status = eligible == nil and reason or nil
            else
                self.currentGoal = nil
                self.status = "Guide complete."
            end
        end
    end
    if ns.UI and ns.UI.Update then
        ns.UI:Update(self)
    end
    if ns.MapPins then
        ns.MapPins:HookMap()
        ns.MapPins:Refresh()
    end
end

function Engine:CompleteCurrent()
    if self.currentGoal then
        self:GetLedger(self.currentGuide, true)[self.currentGoal.id] = true
        ns.charDB.deferred[self.currentGoal.id] = nil
        self.reviewingGoal = nil
        self:Refresh()
    end
end

function Engine:SkipCurrent()
    if self.currentGoal then
        ns.charDB.deferred[self.currentGoal.id] = true
        self.reviewingGoal = nil
        self:Refresh()
    end
end

Engine.Next = Engine.SkipCurrent

function Engine:Previous()
    local history = ns.charDB.history
    local previousID = table.remove(history)
    if not previousID and self.currentGuide and self.currentGoal then
        local _, currentIndex = self:GetGoal(self.currentGuide, self.currentGoal.id)
        for index = (currentIndex or 1) - 1, 1, -1 do
            local candidate = self.currentGuide.goals[index]
            if ns.EvaluateCondition(candidate.conditions, self.state or {}) ~= false then
                previousID = candidate.id
                break
            end
        end
    end
    if previousID and self.currentGuide then
        ns.charDB.deferred[previousID] = nil
        local goal = self:GetGoal(self.currentGuide, previousID)
        if goal then
            self:SetActiveGoal(goal, false)
            self.reviewingGoal = goal.id
            self:Refresh(self.state)
        end
    end
end

function Engine:SelectGuide(guideID)
    if ns.guides[guideID] then
        ns.charDB.selectedGuide = guideID
        ns.charDB.activeGoal = nil
        ns.charDB.history = {}
        self.inferredCompletedByGuide = nil
        self.reviewingGoal = nil
        self:Refresh()
    end
end
