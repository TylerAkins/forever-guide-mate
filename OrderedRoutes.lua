local _, ns = ...

local Engine = ns.Engine
local Ordered = {}
ns.OrderedRoutes = Ordered

local function OrderedGuide(guide)
    return type(guide) == "table" and guide.routeMode == "ordered"
end

local function AssociatedQuest(goal)
    return goal.checkpointQuest or Engine:GetGoalQuestID(goal)
end

local function KnownQuestCompleted(questID, state)
    return state.questLogKnown
        and (state.questCompletionKnown or (state.watchedQuests and state.watchedQuests[questID]))
        and state.completedQuests and state.completedQuests[questID] == true
end

local function Copy(value)
    if type(value) ~= "table" then return value end
    local result = {}
    for key, child in pairs(value) do result[key] = Copy(child) end
    return result
end

-- Only permanent character restrictions remove an action from the itinerary.
function Ordered:Excluded(condition, state)
    if type(condition) ~= "table" then return false end
    if condition.all then
        for _, child in ipairs(condition.all) do
            if self:Excluded(child, state) then return true end
        end
    elseif condition.any then
        for _, child in ipairs(condition.any) do
            if not self:Excluded(child, state) then return false end
        end
        return #condition.any > 0
    elseif condition.faction or condition.race or condition.class then
        return ns.EvaluateCondition(condition, state) == false
    end
    return false
end

function Ordered:ExcludedAction(goal, state)
    if self:Excluded(goal.conditions, state) then return true end
    if goal.excludeWhen and ns.EvaluateCondition(goal.excludeWhen, state) == true then return true end
    local questID = AssociatedQuest(goal)
    if goal.checkpointQuest and KnownQuestCompleted(questID, state) then return true end
    if not questID or (state.quests and state.quests[questID]) then return false end
    local alternates = goal.alternativeQuests or (ns.questBreadcrumbBypass and ns.questBreadcrumbBypass[questID])
    for _, alternate in ipairs(alternates or {}) do
        if (state.questLogKnown and state.quests and state.quests[alternate]) or KnownQuestCompleted(alternate, state) then
            return true
        end
    end
    return false
end

function Ordered:Storage(guide)
    ns.charDB.orderedRoutes = ns.charDB.orderedRoutes or {}
    local storage = ns.charDB.orderedRoutes[guide.id]
    if not storage then
        storage = { revision = guide.revision, confirmed = {}, skipped = {}, skippedBecause = {}, history = {} }
        ns.charDB.orderedRoutes[guide.id] = storage
        local old = ns.charDB.activeGoalByGuide and ns.charDB.activeGoalByGuide[guide.id]
        if ns.charDB.selectedGuide == guide.id then old = ns.charDB.activeGoal or old end
        storage.cursor = old
        local hasProgress = old ~= nil
        local guideLedger = ns.charDB.completionLedger and ns.charDB.completionLedger[guide.id]
        for _, goal in ipairs(guide.goals) do
            if (ns.charDB.skipped and ns.charDB.skipped[goal.id])
                or (ns.charDB.manualCompleted and ns.charDB.manualCompleted[goal.id]) then
                hasProgress = true
            end
            for _, ledger in pairs(guideLedger or {}) do
                if type(ledger) == "table" and ledger[goal.id] then hasProgress = true end
            end
        end
        if hasProgress then
            storage.legacy = {
                cursor = old, skipped = Copy(ns.charDB.skipped), skippedBecause = Copy(ns.charDB.skippedBecause),
                ledger = Copy(ns.charDB.completionLedger and ns.charDB.completionLedger[guide.id]),
                manual = Copy(ns.charDB.manualCompleted),
            }
            storage.recover = true
        end
        for _, goal in ipairs(guide.goals) do
            if not goal.complete and not Engine:GetGoalQuestID(goal) then
                local confirmed = ns.charDB.manualCompleted and ns.charDB.manualCompleted[goal.id]
                for _, ledger in pairs(storage.legacy and storage.legacy.ledger or {}) do
                    if type(ledger) == "table" and ledger[goal.id] then confirmed = true end
                end
                if confirmed then storage.confirmed[goal.id] = true end
            end
        end
    end
    if storage.revision ~= guide.revision then
        storage.observedInstructions = nil
        storage.legacyRevision = { revision = storage.revision, cursor = storage.cursor,
            confirmed = Copy(storage.confirmed), skipped = Copy(storage.skipped) }
        storage.revision, storage.recover = guide.revision, true
        storage.finished, storage.transitioned = nil, nil
    end
    if storage.migrationMessage and not storage.migrationGoal then storage.migrationMessage = nil end
    storage.confirmed, storage.skipped = storage.confirmed or {}, storage.skipped or {}
    storage.skippedBecause, storage.history = storage.skippedBecause or {}, storage.history or {}
    storage.skippedQuests, storage.skippedQuestBecause = storage.skippedQuests or {}, storage.skippedQuestBecause or {}
    return storage
end

function Ordered:Observed(goal, state)
    local questID = Engine:GetGoalQuestID(goal)
    if questID then
        if not state.questLogKnown then return false end
        if not (state.questCompletionKnown or (state.watchedQuests and state.watchedQuests[questID]))
            and not (state.quests and state.quests[questID]) then return false end
    end
    return goal.complete ~= nil and ns.EvaluateCondition(goal.complete, state) == true
end

function Ordered:Prepared(guide, goal, state)
    local storage = self:Storage(guide)
    return goal.rememberPreparation and storage.observedInstructions
        and storage.observedInstructions[goal.id] and state.questLogKnown
        and state.quests and state.quests[goal.rememberPreparation] ~= nil
end

function Ordered:Done(guide, goal, state)
    local storage = self:Storage(guide)
    local questID = AssociatedQuest(goal)
    if questID and storage.skippedQuests[questID] then return true end
    if storage.skipped[goal.id] then return true end
    if goal.rememberPreparation then
        storage.observedInstructions = storage.observedInstructions or {}
        local active = state.questLogKnown and state.quests and state.quests[goal.rememberPreparation]
        if active and self:Observed(goal, state) then
            storage.observedInstructions[goal.id] = true
        elseif state.questLogKnown and not active and not KnownQuestCompleted(goal.rememberPreparation, state) then
            storage.observedInstructions[goal.id] = nil
        end
        if active and storage.observedInstructions[goal.id] then return true end
    end
    if self:Observed(goal, state) then return true end
    if not Engine:GetGoalQuestID(goal) and not goal.complete then return storage.confirmed[goal.id] == true end
    return false
end

function Ordered:First(guide, state, start)
    for index = start or 1, #guide.goals do
        local goal = guide.goals[index]
        if not self:ExcludedAction(goal, state) and not self:Done(guide, goal, state) then
            return goal, index
        end
    end
end

function Ordered:Prerequisites(goal, state)
    for _, group in ipairs(goal.requiredQuests or {}) do
        local applies, why = ns.EvaluateCondition(group.conditions, state)
        if applies == nil then return false, why end
        if applies then
            local done = 0
            for _, questID in ipairs(group.quests) do
                if state.completedQuests and state.completedQuests[questID] == true then done = done + 1 end
            end
            if (group.mode == "all" and done < #group.quests) or (group.mode ~= "all" and done == 0) then
                return false, "Turn in prerequisite quest " .. table.concat(group.quests, ", ") .. "."
            end
        end
    end
    return true
end

function Ordered:Status(guide, goal, state)
    local applicable, reason = ns.EvaluateCondition(goal.conditions, state)
    if applicable ~= true then
        if reason == "Level requirement not met." then
            return "Blocked: Reach the required level before continuing. Choose how to gain XP, then return here."
        end
        return "Blocked: " .. (reason or "Character requirements are unavailable.")
    end
    if goal.complete and goal.complete.item then
        local fulfilled, why = ns.EvaluateCondition(goal.complete, state)
        if fulfilled ~= true then return "Blocked: " .. (why or "Collect the required item.") end
    end
    local questID = Engine:GetGoalQuestID(goal)
    if questID and self:Observed(goal, state) then return nil end
    if questID then
        if not state.questLogKnown or (not state.questCompletionKnown
            and not (state.watchedQuests and state.watchedQuests[questID])) then
            return "Loading quest progress."
        end
        local quest = state.quests and state.quests[questID]
        if not quest and goal.kind == "accept" then
            local ready, why = self:Prerequisites(goal, state)
            if not ready then return "Blocked: " .. why end
            local item = goal.text:match("^Use the (.+) to accept") or goal.text:match("^Use (.+) to accept")
            if item and not (ns.PlayerState and ns.PlayerState.HasItem and ns.PlayerState:HasItem(item, state)) then
                return "Blocked: Requires " .. item .. " in your bags."
            end
        end
        if (goal.kind == "objective" or goal.kind == "gossip" or goal.kind == "turnin") and not quest
            and not (state.completedQuests and state.completedQuests[questID]) then
            return "Blocked: Quest " .. questID .. " is missing from your log. Use Back to revisit its pickup, Sync to check progress, or Skip to skip its chain."
        end
        if goal.kind == "turnin" and quest and not quest.complete then
            return "Blocked: Complete the objectives of quest " .. questID .. " before turning it in."
        end
        local refusal = ns.charDB and ns.charDB.notOffered and ns.charDB.notOffered[goal.id]
        if goal.kind == "accept" and refusal and refusal.guide == guide.id then
            return "Blocked: " .. tostring(refusal.npc) .. " does not offer quest " .. questID .. ". Use Back, Sync, or Skip."
        end
    end
    return nil
end

function Ordered:Activate(engine, guide, goal, remember)
    local storage = self:Storage(guide)
    if remember and storage.cursor and storage.cursor ~= goal.id then
        storage.history[#storage.history + 1] = storage.cursor
        if #storage.history > 30 then table.remove(storage.history, 1) end
    end
    if storage.migrationGoal and storage.migrationGoal ~= goal.id then
        storage.migrationMessage, storage.migrationGoal = nil, nil
    end
    storage.cursor = goal.id
    ns.charDB.activeGoal = goal.id
    ns.charDB.activeGoalByGuide = ns.charDB.activeGoalByGuide or {}
    ns.charDB.activeGoalByGuide[guide.id] = goal.id
    engine.currentGoal = goal
end

function Ordered:SyncReady(guide, state)
    if state.questLogKnown ~= true or state.questRouteKnown == false then return false end
    if state.questCompletionKnown == true then return true end
    for _, questID in ipairs(ns.QuestIDsForGuide(guide)) do
        if not (state.watchedQuests and state.watchedQuests[questID]) then return false end
    end
    return true
end

function Ordered:Update(engine, state)
    local guide = engine.currentGuide
    local storage = self:Storage(guide)
    if storage.syncPending and self:SyncReady(guide, state) then
        storage.cursor, storage.history, storage.finished, storage.transitioned = nil, {}, nil, nil
        storage.syncPending = nil
        engine.reviewingGoal = nil
    end
    local active, index = engine:GetGoal(guide, storage.cursor)
    if storage.finished then active, index = nil, nil end
    local loading = state.questLogKnown ~= true or state.questRouteKnown == false or storage.syncPending == true
    if storage.recover and not storage.syncPending and self:SyncReady(guide, state) then
        local first, firstIndex = self:First(guide, state)
        storage.recover = nil
        if not active or (first and firstIndex < (index or 1)) then active = first end
        storage.migrationMessage = "Saved guide progress checked. Resumed at the first unverified action."
        storage.migrationGoal = active and active.id

    end
    loading = loading or storage.recover == true
    if not active and not storage.finished then active, index = self:First(guide, state) end
    if active and not loading and engine.reviewingGoal ~= active.id then
        local advance = ns.db.autoAdvance ~= false or storage.advance
        if self:ExcludedAction(active, state) or (self:Done(guide, active, state) and advance) then
            local _, activeIndex = engine:GetGoal(guide, active.id)
            active = self:First(guide, state, (activeIndex or 0) + 1)
        end
    end
    if not loading then storage.advance = nil end
    if active then
        storage.finished = nil
        self:Activate(engine, guide, active, true)
        engine.status = loading and "Loading quest progress." or self:Status(guide, active, state)
    else
        storage.migrationMessage, storage.migrationGoal = nil, nil
        storage.finished = true
        engine.currentGoal = nil
        local skipped = false
        for _, goal in ipairs(guide.goals) do
            if not self:ExcludedAction(goal, state) and not self:Observed(goal, state)
                and (storage.skipped[goal.id] or storage.skippedQuests[engine:GetGoalQuestID(goal)]) then skipped = true end
        end
        engine.status = skipped and "Route finished with skipped quests." or "Guide complete."
        local destination = guide.nextGuide and guide.nextGuide[state.faction]
        if destination and ns.guides[destination] and not storage.transitioned then
            storage.transitioned = true
            ns.charDB.selectedGuide = destination
            engine.reviewingGoal = nil
            return engine:Refresh(state)
        end
    end
    engine.candidateGoals = active and { active } or {}
    engine.urgentGoals = engine:UrgentGoals(guide, state)
    if ns.UI and ns.UI.Update then ns.UI:Update(engine) end
    if ns.MapPins then ns.MapPins:HookMap(); ns.MapPins:Refresh() end
    if ns.PlayerState and ns.PlayerState.QuestLogFingerprint then
        engine.questLogFingerprint = ns.PlayerState:QuestLogFingerprint(state)
    end
end

local refresh = Engine.Refresh
local migrate = Engine.MigrateEraProgress
function Engine:MigrateEraProgress()
    local target = ns.guides["leveling-casual-horde"]
    if not OrderedGuide(target) then return migrate(self) end
    local oldID = ns.charDB and ns.charDB.selectedGuide
    local faction = ns.retiredEraGuides and ns.retiredEraGuides[oldID]
    if oldID == "leveling-era" then faction = self.state and self.state.faction end
    if faction ~= "Alliance" and faction ~= "Horde" then return end
    target = ns.guides["leveling-casual-" .. string.lower(faction)]
    if not target then return end
    ns.charDB.orderedLegacySelection = ns.charDB.orderedLegacySelection or {
        guide = oldID, cursor = ns.charDB.activeGoal,
    }
    local cursor = ns.charDB.activeGoal
    if cursor and not target.goalByID[cursor] and target.goalByID[oldID .. ":" .. cursor] then
        cursor = oldID .. ":" .. cursor
    end
    ns.charDB.selectedGuide, ns.charDB.activeGoal = target.id, cursor
end
function Engine:Refresh(state)
    ns:FinalizeGuides()
    if state then self.state = state end
    if not state and ns.charDB and ns.charDB.selectedGuide == "leveling-era" then
        local ids, priority = ns.QuestQuery()
        self.state = ns.PlayerState:Capture(nil, ids, priority, ns.GetTrackedAchievementIDs())
    end
    self:MigrateEraProgress()
    local guide = ns.charDB and ns.guides[ns.charDB.selectedGuide]
    if not OrderedGuide(guide) then return refresh(self, state) end
    if not state then
        local storage = Ordered:Storage(guide)
        local ids, priority
        local fullGuide = self.currentGuide ~= guide or not self.state
            or self.orderedQueryPending == guide.id or storage.recover or storage.syncPending
        if fullGuide then
            if self.orderedQueryPending == guide.id then ns.PlayerState:RetryFailedCompletions() end
            ids = ns.QuestIDsForGuide(guide)
            priority = #ids
        else
            ids, priority = ns.QuestQuery()
        end
        state = ns.PlayerState:Capture(nil, ids, priority, ns.GetTrackedAchievementIDs())
        if fullGuide then
            self.orderedQueryPending = not Ordered:SyncReady(guide, state) and guide.id or nil
        end
    end
    self.currentGuide, self.state, self.currentSegment = guide, state, nil
    Ordered:Update(self, state or {})
end

local isDone = Engine.IsGoalDone
function Engine:IsGoalDone(goal, state, guide)
    guide = guide or self.currentGuide
    if OrderedGuide(guide) then return Ordered:Done(guide, goal, state or {}) end
    return isDone(self, goal, state, guide)
end

local isReady = Engine.IsReady
function Engine:IsReady(guide, goal, state)
    if not OrderedGuide(guide) then return isReady(self, guide, goal, state) end
    local reason = Ordered:Status(guide, goal, state or {})
    return reason == nil, reason and reason:gsub("^Blocked: ", ""), Ordered:ExcludedAction(goal, state or {})
end

local candidates = Engine.CandidateGoals
function Engine:CandidateGoals(guide, state)
    if not OrderedGuide(guide) then return candidates(self, guide, state) end
    local storage = Ordered:Storage(guide)
    if storage.finished then return {} end
    local goal = self:GetGoal(guide, storage.cursor)
    if not goal and not storage.finished then goal = Ordered:First(guide, state or {}) end
    return goal and { goal } or {}
end

local nextGoal = Engine.NextRouteGoal
function Engine:NextRouteGoal(guide, current, state)
    if not OrderedGuide(guide) then return nextGoal(self, guide, current, state) end
    local _, index = self:GetGoal(guide, current and current.id)
    return index and Ordered:First(guide, state or {}, index + 1) or nil
end

local complete = Engine.CompleteCurrent
function Engine:CompleteCurrent()
    if not OrderedGuide(self.currentGuide) then return complete(self) end
    local goal = self.currentGoal
    if not goal then return end
    local storage = Ordered:Storage(self.currentGuide)
    if Ordered:Status(self.currentGuide, goal, self.state or {}) then return false end
    if self:GetGoalQuestID(goal) or goal.complete then
        local state = self.state or {}
        local prepared = Ordered:Prepared(self.currentGuide, goal, state)
        if not prepared and not Ordered:Observed(goal, state) then return false end
    else
        storage.confirmed[goal.id] = true
    end
    storage.advance = true
    self.reviewingGoal = nil
    self:Refresh(self.state)
    return true
end

function Ordered:SkipQuests(guide, root, state)
    local skipped = Copy(self:Storage(guide).skippedQuests)
    skipped[root] = true
    local applicableQuests = {}
    for _, action in ipairs(guide.goals) do
        local quest = Engine:GetGoalQuestID(action)
        if quest then
            applicableQuests[quest] = applicableQuests[quest] == true or not self:ExcludedAction(action, state)
        end
    end
    local changed = true
    while changed do
        changed = false
        for _, goal in ipairs(guide.goals) do
            local quest = Engine:GetGoalQuestID(goal)
            if quest and not skipped[quest] and not self:ExcludedAction(goal, state) then
                for _, group in ipairs(goal.requiredQuests or {}) do
                    if ns.EvaluateCondition(group.conditions, state) == true then
                        local applicable, lost = 0, 0
                        for _, dependency in ipairs(group.quests) do
                            local survives = applicableQuests[dependency] ~= false
                            if survives then
                                applicable = applicable + 1
                                if skipped[dependency] and not (state.completedQuests and state.completedQuests[dependency]) then
                                    lost = lost + 1
                                end
                            end
                        end
                        if (group.mode == "all" and lost > 0) or (group.mode ~= "all" and applicable > 0 and lost == applicable) then
                            skipped[quest], changed = true, true
                        end
                    end
                end
            end
        end
    end
    return skipped
end

local preview = Engine.PreviewSkip
function Engine:PreviewSkip(goal)
    if not OrderedGuide(self.currentGuide) then return preview(self, goal) end
    goal = goal or self.currentGoal
    if not goal then return {} end
    local quest = not goal.instructionOnly and self:GetGoalQuestID(goal)
    if not quest then return {} end
    local quests = Ordered:SkipQuests(self.currentGuide, quest, self.state or {})
    local result = {}
    for _, action in ipairs(self.currentGuide.goals) do
        if action.id ~= goal.id and quests[AssociatedQuest(action)]
            and not Ordered:ExcludedAction(action, self.state or {})
            and not Ordered:Done(self.currentGuide, action, self.state or {}) then result[#result + 1] = action.id end
    end
    return result
end

local skip = Engine.SkipCurrent
function Engine:SkipCurrent(confirm)
    if not OrderedGuide(self.currentGuide) then return skip(self, confirm) end
    local goal = self.currentGoal
    if not goal then return false end
    local cascade = self:PreviewSkip(goal)
    if confirm ~= true and #cascade > 0 then return cascade end
    local storage = Ordered:Storage(self.currentGuide)
    storage.skipped[goal.id] = true
    local questID = not goal.instructionOnly and self:GetGoalQuestID(goal)
    if questID then
        for quest in pairs(Ordered:SkipQuests(self.currentGuide, questID, self.state or {})) do
            if not storage.skippedQuests[quest] then
                storage.skippedQuests[quest], storage.skippedQuestBecause[quest] = true, goal.id
            end
        end
    end
    for _, id in ipairs(cascade) do storage.skipped[id], storage.skippedBecause[id] = true, goal.id end
    storage.advance = true
    self.reviewingGoal = nil
    self:Refresh(self.state)
    return true
end

local previous = Engine.Previous
function Ordered:RebuildSkips(guide, state)
    local storage = self:Storage(guide)
    local roots = {}
    for _, action in ipairs(guide.goals) do
        local quest = Engine:GetGoalQuestID(action)
        if quest and not action.instructionOnly and storage.skipped[action.id] and not storage.skippedBecause[action.id] then
            roots[#roots + 1] = { quest = quest, action = action.id }
        end
    end
    for id in pairs(storage.skippedBecause) do storage.skipped[id] = nil end
    storage.skippedBecause, storage.skippedQuests, storage.skippedQuestBecause = {}, {}, {}
    for _, root in ipairs(roots) do
        storage.skippedQuests[root.quest], storage.skippedQuestBecause[root.quest] = true, root.action
    end
    for _, root in ipairs(roots) do
        for quest in pairs(self:SkipQuests(guide, root.quest, state)) do
            if not storage.skippedQuests[quest] then
                storage.skippedQuests[quest], storage.skippedQuestBecause[quest] = true, root.action
            end
        end
    end
    for _, action in ipairs(guide.goals) do
        local parent = storage.skippedQuestBecause[AssociatedQuest(action)]
        if parent and action.id ~= parent and not storage.skipped[action.id] and not self:Observed(action, state) then
            storage.skipped[action.id], storage.skippedBecause[action.id] = true, parent
        end
    end
end
function Engine:Previous()
    if not OrderedGuide(self.currentGuide) then return previous(self) end
    local guide, state = self.currentGuide, self.state or {}
    local storage = Ordered:Storage(guide)
    local _, index = self:GetGoal(guide, self.currentGoal and self.currentGoal.id or storage.cursor)
    index = self.currentGoal and ((index or 1) - 1) or (index or #guide.goals)
    for position = index, 1, -1 do
        local goal = guide.goals[position]
        if not Ordered:ExcludedAction(goal, state) then
            local questID = AssociatedQuest(goal)
            local root = storage.skippedBecause[goal.id] or (questID and storage.skippedQuestBecause[questID]) or goal.id
            storage.skipped[root] = nil
            for id, parent in pairs(storage.skippedBecause) do
                if parent == root then storage.skipped[id], storage.skippedBecause[id] = nil, nil end
            end
            for quest, parent in pairs(storage.skippedQuestBecause) do
                if parent == root then storage.skippedQuests[quest], storage.skippedQuestBecause[quest] = nil, nil end
            end
            Ordered:RebuildSkips(guide, state)
            self.reviewingGoal = goal.id
            storage.finished = nil
            Ordered:Activate(self, guide, goal, false)
            self:Refresh(state)
            return
        end
    end
end

local resync = Engine.ResyncCurrent
function Engine:ResyncCurrent(state)
    local guide = ns.charDB and ns.guides[ns.charDB.selectedGuide]
    if not OrderedGuide(guide) then return resync(self, state) end
    if not state then
        ns.PlayerState:RetryFailedCompletions()
        local ids = ns.QuestIDsForGuide(guide)
        state = ns.PlayerState:Capture(nil, ids, #ids, ns.GetTrackedAchievementIDs())
    end
    local storage = Ordered:Storage(guide)
    storage.syncPending = true
    self:Refresh(state)
    return storage.syncPending ~= true
end

local reset = Engine.ResetSkipsCurrent
function Engine:ResetSkipsCurrent(state)
    local guide = ns.charDB and ns.guides[ns.charDB.selectedGuide]
    if not OrderedGuide(guide) then return reset(self, state) end
    local storage = Ordered:Storage(guide)
    storage.skipped, storage.skippedBecause = {}, {}
    storage.skippedQuests, storage.skippedQuestBecause = {}, {}
    return self:ResyncCurrent(state)
end

local progress = Engine.GetGuideProgress
function Engine:GetGuideProgress(guide, state, segment)
    if not OrderedGuide(guide) then return progress(self, guide, state, segment) end
    local done, eligible, skipped = 0, 0, 0
    state = state or {}
    local storage = Ordered:Storage(guide)
    for _, goal in ipairs(guide.goals) do
        if not Ordered:ExcludedAction(goal, state) then
            eligible = eligible + 1
            if Ordered:Observed(goal, state) then done = done + 1
            elseif storage.skipped[goal.id] or storage.skippedQuests[AssociatedQuest(goal)] then skipped = skipped + 1
            elseif Ordered:Done(guide, goal, state) then done = done + 1 end
        end
    end
    return { completed = done, eligible = eligible, skipped = skipped, total = #guide.goals,
        percentage = eligible > 0 and math.floor(done * 100 / eligible + 0.5) or 100 }
end
