local _, ns = ...

local Engine = { state = nil, currentGuide = nil, currentGoal = nil, status = nil }
ns.Engine = Engine

local VALID_KINDS = {
    accept = true, objective = true, turnin = true, gossip = true, travel = true, note = true,
}
local SHORT_TIMER_SECONDS = 30 * 60

ns.questPrerequisites = ns.questPrerequisites or {}

function ns:RegisterQuestPrerequisite(spec)
    if type(spec) ~= "table" or type(spec.quest) ~= "number"
        or (spec.mode ~= "all" and spec.mode ~= "any")
        or type(spec.quests) ~= "table" or #spec.quests == 0 then
        error("Forever GuideMate: invalid quest prerequisite", 2)
    end
    local seen = {}
    for _, questID in ipairs(spec.quests) do
        if type(questID) ~= "number" or questID == spec.quest or seen[questID] then
            error("Forever GuideMate: invalid quest prerequisite for " .. spec.quest, 2)
        end
        seen[questID] = true
    end
    self.questPrerequisites[spec.quest] = self.questPrerequisites[spec.quest] or {}
    self.questPrerequisites[spec.quest][#self.questPrerequisites[spec.quest] + 1] = spec
end

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
    -- A counted kill is done only when the count is met. Forever can set
    -- finished while the count is still short, and a finished number can be
    -- the progress so far rather than a boolean. Dialogue objectives have no
    -- count, so a finished flag of true or a number above 0 still means done.
    if type(objective.numRequired) == "number" and objective.numRequired > 0
        and type(objective.numFulfilled) == "number" then
        return objective.numFulfilled >= objective.numRequired
    end
    if objective.finished == true or (type(objective.finished) == "number" and objective.finished > 0) then
        return true
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
            -- The log can lag on login while the quest is still in progress.
            return Unknown("Quest is not in the quest log.")
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

local function TimerQuestID(goal)
    local timer = goal.timer
    if type(timer) == "table" and type(timer.quest) == "number" then
        return timer.quest
    end
    local quest = goal.complete and goal.complete.quest
    return type(quest) == "table" and quest.id or nil
end

local function ValidateTimer(goal)
    local timer = goal.timer
    if timer == nil then
        return true
    end
    local seconds = type(timer) == "number" and timer or type(timer) == "table" and timer.seconds
    if type(seconds) ~= "number" or seconds <= 0 then
        return false, "Goal " .. goal.id .. " has an invalid timer."
    end
    if type(timer) == "table" and timer.quest ~= nil and type(timer.quest) ~= "number" then
        return false, "Goal " .. goal.id .. " has an invalid timer."
    end
    if type(TimerQuestID(goal)) ~= "number" then
        return false, "Goal " .. goal.id .. " has a timer without a quest."
    end
    return true
end

local function GoalQuestID(goal)
    local complete = type(goal) == "table" and goal.complete or nil
    local quest = type(complete) == "table" and complete.quest or nil
    local objective = type(complete) == "table" and complete.questObjective or nil
    return type(quest) == "table" and quest.id or type(objective) == "table" and objective.id or nil
end

local function ApplyClientQuestData(guide)
    if guide.clientQuestData == false then return end
    for _, goal in ipairs(guide.goals) do
        if goal.kind == "objective" or goal.kind == "gossip" or goal.kind == "turnin" then
            if goal.useClientPin == nil then goal.useClientPin = true end
        end
        if goal.kind == "objective" and goal.useClientText == nil then
            goal.useClientText = true
        end
    end
end

local function ApplyQuestPrerequisites(guide)
    local turnins, objectives = {}, {}
    for index, goal in ipairs(guide.goals) do
        if goal.kind == "turnin" then
            local questID = GoalQuestID(goal)
            if questID then turnins[questID] = turnins[questID] or { id = goal.id, index = index } end
        elseif goal.kind == "objective" or goal.kind == "gossip" then
            local questID = GoalQuestID(goal)
            if questID then
                objectives[questID] = objectives[questID] or {}
                objectives[questID][#objectives[questID] + 1] = goal.id
            end
        end
    end
    -- A turn-in is never ready until every objective authored for that quest is
    -- complete. Augmenting legacy data here keeps the public guide format
    -- backward compatible while the lint enforces the finalized invariant.
    for _, goal in ipairs(guide.goals) do
        if goal.kind == "turnin" then
            local questID = GoalQuestID(goal)
            local present = {}
            goal.dependsOn = goal.dependsOn or {}
            for _, dependency in ipairs(goal.dependsOn) do present[dependency] = true end
            for _, objectiveID in ipairs(objectives[questID] or {}) do
                if not present[objectiveID] then goal.dependsOn[#goal.dependsOn + 1] = objectiveID end
            end
        end
    end
    if guide.category == "Dungeon Quest Guides" then return end
    for goalIndex, goal in ipairs(guide.goals) do
        if goal.kind == "accept" then
            local rules = ns.questPrerequisites[GoalQuestID(goal)]
            if rules then
                goal.questPrerequisites = goal.questPrerequisites or {}
                for _, rule in ipairs(rules) do
                    local group = { mode = rule.mode, conditions = rule.conditions, questIDs = {}, goalIDs = {} }
                    for _, questID in ipairs(rule.quests) do
                        local turnin = turnins[questID]
                        if not turnin or turnin.index >= goalIndex then
                            error(("Forever GuideMate: guide %s accept %s needs turn-in quest %d")
                                :format(guide.id, goal.id, questID), 3)
                        end
                        group.questIDs[#group.questIDs + 1] = questID
                        group.goalIDs[#group.goalIDs + 1] = turnin.id
                    end
                    goal.questPrerequisites[#goal.questPrerequisites + 1] = group
                end
            end
        end
    end
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
        local timerValid, timerReason = ValidateTimer(goal)
        if not timerValid then
            return false, timerReason
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
    local visiting, visited = {}, {}
    local function Visit(goalID)
        if visiting[goalID] then return false end
        if visited[goalID] then return true end
        visiting[goalID] = true
        local goal = guide.goals[goalIDs[goalID]]
        local dependencies = {}
        for _, dependency in ipairs(goal.dependsOn or {}) do dependencies[#dependencies + 1] = dependency end
        for _, group in ipairs(goal.questPrerequisites or {}) do
            for _, dependency in ipairs(group.goalIDs or {}) do dependencies[#dependencies + 1] = dependency end
        end
        for _, dependency in ipairs(dependencies) do
            if not goalIDs[dependency] or not Visit(dependency) then return false end
        end
        visiting[goalID] = nil
        visited[goalID] = true
        return true
    end
    for goalID in pairs(goalIDs) do
        if not Visit(goalID) then return false, "Guide dependencies must be acyclic." end
    end
    return true
end

function ns:RegisterGuide(guide)
    ApplyClientQuestData(guide)
    ApplyQuestPrerequisites(guide)
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

-- Starter chapters are parallel. After the chosen starter, every later chapter
-- for that faction stays on the route in listed order.
local ERA_STARTER_BY_RACE = {
    [1] = "leveling-era-1-12-elwynn-forest",
    [2] = "leveling-era-1-12-durotar",
    [3] = "leveling-era-1-12-dun-morogh",
    [4] = "leveling-era-1-12-teldrassil",
    [5] = "leveling-era-1-12-tirisfal-glades",
    [6] = "leveling-era-1-12-mulgore",
    [7] = "leveling-era-1-12-dun-morogh",
    [8] = "leveling-era-1-12-durotar",
    [95] = "leveling-era-1-12-elwynn-forest",
    [96] = "leveling-era-1-12-durotar",
}

local function IsEraGuide(guide)
    if type(guide) ~= "table" or guide.series == "era" then return false end
    if type(guide.id) == "string" and string.sub(guide.id, 1, 13) == "leveling-era-" then
        return true
    end
    return type(guide.title) == "string" and string.find(guide.title, "(Era)", 1, true) ~= nil
end

local function GuideFactionAndLevel(guide)
    local faction, level
    local function Walk(condition)
        if type(condition) ~= "table" then return end
        if condition.faction == "Alliance" or condition.faction == "Horde" then
            faction = condition.faction
        end
        if type(condition.level) == "table" and type(condition.level.min) == "number" then
            level = condition.level.min
        end
        for _, key in ipairs({ "all", "any" }) do
            if type(condition[key]) == "table" then
                for _, child in ipairs(condition[key]) do Walk(child) end
            end
        end
    end
    Walk(guide.conditions)
    return faction, level or 1
end

local function AndCondition(left, right)
    if left == nil then return right end
    if right == nil then return left end
    return { all = { left, right } }
end

local function CopyEraGoal(goal, segment, gate)
    local copy = {}
    for key, value in pairs(goal) do
        copy[key] = value
    end
    copy.id = segment.id .. ":" .. goal.id
    copy.segmentID = segment.id
    if type(goal.dependsOn) == "table" then
        local dependsOn = {}
        for index, dependency in ipairs(goal.dependsOn) do
            dependsOn[index] = segment.id .. ":" .. dependency
        end
        copy.dependsOn = dependsOn
    end
    if type(goal.questPrerequisites) == "table" then
        copy.questPrerequisites = {}
        for groupIndex, group in ipairs(goal.questPrerequisites) do
            local groupCopy = {}
            for key, value in pairs(group) do groupCopy[key] = value end
            groupCopy.goalIDs = {}
            for index, dependency in ipairs(group.goalIDs or {}) do
                groupCopy.goalIDs[index] = segment.id .. ":" .. dependency
            end
            copy.questPrerequisites[groupIndex] = groupCopy
        end
    end
    copy.conditions = AndCondition(goal.conditions, gate)
    return copy
end

local function RemoveGuide(id)
    ns.guides[id] = nil
    for index = #ns.guideOrder, 1, -1 do
        if ns.guideOrder[index] == id then
            table.remove(ns.guideOrder, index)
        end
    end
end

function ns:FinalizeGuides()
    if self.guidesFinalized then return end
    self.guidesFinalized = true
    local sources = {}
    for _, guideID in ipairs(self.guideOrder) do
        local guide = self.guides[guideID]
        if IsEraGuide(guide) then
            sources[#sources + 1] = guide
        end
    end
    if #sources == 0 then return end

    local segments = {}
    local levelOneCount = { Alliance = 0, Horde = 0 }
    for _, source in ipairs(sources) do
        local faction, levelMin = GuideFactionAndLevel(source)
        local segment = {
            id = source.id,
            title = source.title,
            faction = faction,
            levelMin = levelMin,
            maps = {},
            goals = {},
            gate = source.conditions,
            sourceGoals = source.goals,
        }
        segments[#segments + 1] = segment
        if levelMin == 1 and levelOneCount[faction] then
            levelOneCount[faction] = levelOneCount[faction] + 1
        end
    end
    for _, segment in ipairs(segments) do
        if segment.levelMin == 1 and (levelOneCount[segment.faction] or 0) > 1 then
            segment.fork = true
        end
    end

    local goals = {}
    local segmentByID = {}
    for _, segment in ipairs(segments) do
        segmentByID[segment.id] = segment
        for _, goal in ipairs(segment.sourceGoals) do
            local copy = CopyEraGoal(goal, segment, segment.gate)
            for _, leg in ipairs(copy.route or {}) do
                if type(leg.mapID) == "number" then
                    segment.maps[leg.mapID] = (segment.maps[leg.mapID] or 0) + 1
                end
            end
            segment.goals[#segment.goals + 1] = copy
            goals[#goals + 1] = copy
        end
        segment.sourceGoals = nil
        segment.gate = nil
    end

    local goalByID = {}
    for index, goal in ipairs(goals) do
        goalByID[goal.id] = index
    end
    local retired = {}
    for _, segment in ipairs(segments) do
        retired[segment.id] = true
        RemoveGuide(segment.id)
    end
    self.retiredEraGuides = retired
    self:RegisterGuide({
        id = "leveling-era",
        title = "1-60 Era",
        category = "Leveling Quest Guides",
        revision = 1,
        series = "era",
        segments = segments,
        segmentByID = segmentByID,
        goalByID = goalByID,
        conditions = {
            all = {
                { level = { min = 1 } },
                { any = { { faction = "Alliance" }, { faction = "Horde" } } },
            },
        },
        goals = goals,
    })
end

local function CollectQuestIDs(value, found)
    if type(value) ~= "table" then
        return
    end
    if type(value.quest) == "table" and type(value.quest.id) == "number" then
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

function ns.QuestIDsForGuide(guide)
    if type(guide) ~= "table" then
        return {}
    end
    local cached = guide.trackedQuestIDs
    if cached then
        return cached
    end
    local found = {}
    CollectQuestIDs(guide, found)
    local ids = {}
    for questID in pairs(found) do
        ids[#ids + 1] = questID
    end
    table.sort(ids)
    guide.trackedQuestIDs = ids
    return ids
end

function Engine:GetGoal(guide, goalID)
    local indexed = guide.goalByID
    if indexed then
        local index = indexed[goalID]
        if index then return guide.goals[index], index end
        return nil
    end
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

local function QuestObservableCompletion(condition)
    return type(condition) == "table" and (condition.quest or condition.questObjective)
end

function Engine:IsGoalDone(goal, state, guide)
    guide = guide or self.currentGuide
    if guide and guide.id == ns.charDB.selectedGuide and ns.charDB.manualCompleted[goal.id] then
        return true
    end
    local evaluation
    if goal.complete then
        evaluation = ns.EvaluateCondition(goal.complete, state)
        if evaluation == true then
            return true
        end
        -- Once both quest APIs have answered, their negative result is more
        -- trustworthy than old manual, ledger, or inferred state.
        if evaluation == false and QuestObservableCompletion(goal.complete)
            and state.questLogKnown and state.questCompletionKnown then
            return false
        end
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
    return evaluation == true
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
        local evaluation = goal.complete and ns.EvaluateCondition(goal.complete, state)
        local observed = evaluation == true
        local observedIncomplete = evaluation == false and QuestObservableCompletion(goal.complete)
            and state.questLogKnown and state.questCompletionKnown
        if observedIncomplete then
            ledger[goal.id] = nil
            ns.charDB.manualCompleted[goal.id] = nil
        end
        if observed and goal.persistCompletion then
            ledger[goal.id] = true
        end
        local ledgerDone = ledger[goal.id] and not observedIncomplete
        if observed or ledgerDone or ns.charDB.manualCompleted[goal.id] then
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
        for _, group in ipairs(goal.questPrerequisites or {}) do
            local applies = ns.EvaluateCondition(group.conditions, state)
            if applies ~= false then
                for _, dependencyID in ipairs(group.goalIDs or {}) do
                    if group.mode == "all" or self:IsDependencyDone(guide, dependencyID, state) then
                        inferred[dependencyID] = true
                        InferDependencies(dependencyID, visiting)
                    end
                end
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

function Engine:ChosenFork(guide, state)
    local forks = {}
    for _, segment in ipairs(guide.segments or {}) do
        if segment.fork and segment.faction == state.faction then
            forks[#forks + 1] = segment
        end
    end
    if #forks == 0 then return nil end
    local saved = ns.charDB and ns.charDB.eraSegment
    if saved then
        for _, segment in ipairs(forks) do
            if segment.id == saved then return segment.id end
        end
    end
    if ns.charDB then
        for _, segment in ipairs(forks) do
            for _, goal in ipairs(segment.goals) do
                if self:IsGoalDone(goal, state, guide) then
                    return segment.id
                end
            end
        end
    end
    if state.mapID then
        local bestID, bestCount, tied
        for _, segment in ipairs(forks) do
            local count = segment.maps[state.mapID] or 0
            if count > 0 and (not bestCount or count > bestCount) then
                bestID, bestCount, tied = segment.id, count, false
            elseif bestCount and count == bestCount then
                tied = true
            end
        end
        if bestID and not tied then return bestID end
    end
    local byRace = state.raceID and ERA_STARTER_BY_RACE[state.raceID]
    if byRace then
        for _, segment in ipairs(forks) do
            if segment.id == byRace then return segment.id end
        end
    end
    return forks[1].id
end

function Engine:RouteSegments(guide, state)
    if type(guide.segments) ~= "table" then return nil end
    state = state or {}
    local chosen = self:ChosenFork(guide, state)
    local passedStarter = chosen == nil
    local route = {}
    for _, segment in ipairs(guide.segments) do
        if segment.faction == state.faction then
            if segment.fork then
                if segment.id == chosen then
                    route[#route + 1] = segment
                    passedStarter = true
                end
            elseif passedStarter then
                route[#route + 1] = segment
            end
        end
    end
    return route
end

function Engine:RouteIndex(route, segmentID)
    for index, segment in ipairs(route or {}) do
        if segment.id == segmentID then return index end
    end
end

function Engine:SegmentHasProgress(segment, guide, state)
    for _, goal in ipairs(segment.goals) do
        if self:IsGoalDone(goal, state, guide) then return true end
    end
    return false
end

function Engine:IsSegmentComplete(segment, guide, state)
    for _, goal in ipairs(segment.goals) do
        if not HasPermanentFailure(goal.conditions, state) and not self:IsGoalDone(goal, state, guide) then
            return false
        end
    end
    return true
end

function Engine:LevelEntry(route, state)
    local level = type(state.level) == "number" and state.level or 1
    local bestMin, chosen = -1, route[1]
    for _, segment in ipairs(route) do
        local minimum = segment.levelMin or 1
        if minimum <= level and minimum > bestMin then
            bestMin = minimum
            chosen = segment
        end
    end
    -- Standing in an earlier chapter keeps that chapter. A city that appears
    -- in several chapters does not, because those counts tie.
    if state.mapID then
        local bestMap, bestCount, tied
        for _, segment in ipairs(route) do
            local count = segment.maps[state.mapID] or 0
            if count > 0 and (segment.levelMin or 1) <= level
                and (not bestCount or count > bestCount) then
                bestMap, bestCount, tied = segment, count, false
            elseif bestCount and count == bestCount then
                tied = true
            end
        end
        if bestMap and not tied and (bestMap.levelMin or 1) <= (chosen.levelMin or 1) then
            return bestMap
        end
    end
    return chosen
end

function Engine:RouteStartIndex(guide, route, state)
    state = state or {}
    local pickID = ns.charDB and ns.charDB.eraChapterPick
    local pickIndex = pickID and self:RouteIndex(route, pickID) or nil
    if pickIndex then return pickIndex end
    local floorID = ns.charDB and ns.charDB.eraFloor
    local floorIndex = floorID and self:RouteIndex(route, floorID) or nil
    if floorIndex then
        local earlierProgress = false
        if ns.charDB then
            for index = 1, floorIndex - 1 do
                if self:SegmentHasProgress(route[index], guide, state) then
                    earlierProgress = true
                    break
                end
            end
        end
        if not earlierProgress then return floorIndex end
    end
    local started = false
    if ns.charDB then
        for _, segment in ipairs(route) do
            if self:SegmentHasProgress(segment, guide, state) then
                started = true
                break
            end
        end
    end
    if not started then
        local entry = self:LevelEntry(route, state)
        return self:RouteIndex(route, entry.id) or 1
    end
    return 1
end

function Engine:ActiveSegment(guide, state)
    if type(guide.segments) ~= "table" then return nil end
    state = state or {}
    local route = self:RouteSegments(guide, state)
    if not route or #route == 0 then return nil end
    local startIndex = self:RouteStartIndex(guide, route, state)
    for index = startIndex, #route do
        if not self:IsSegmentComplete(route[index], guide, state) then
            return route[index]
        end
    end
    return nil
end

function Engine:LockEraFloor(guide, state)
    if not ns.charDB or not self.currentSegment then return end
    local route = self:RouteSegments(guide, state)
    local index = self:RouteIndex(route, self.currentSegment.id)
    if not index then return end
    for earlier = 1, index - 1 do
        if self:SegmentHasProgress(route[earlier], guide, state) then return end
    end
    local current = ns.charDB.eraFloor and self:RouteIndex(route, ns.charDB.eraFloor) or 0
    if index > current then
        ns.charDB.eraFloor = self.currentSegment.id
    end
end

function Engine:MigrateEraProgress()
    local retired = ns.retiredEraGuides
    local guide = ns.guides["leveling-era"]
    if not ns.charDB or ns.charDB.eraProgressMerged or not retired or not guide or not guide.goalByID then
        return
    end
    ns.charDB.eraProgressMerged = true
    local function Prefixed(ownerID, goalID)
        if type(goalID) ~= "string" then return goalID end
        if guide.goalByID[goalID] then return goalID end
        if ownerID then
            local combined = ownerID .. ":" .. goalID
            if guide.goalByID[combined] then return combined end
        end
        return nil
    end
    local function UniquePrefix(goalID)
        if type(goalID) ~= "string" then return goalID end
        if guide.goalByID[goalID] then return goalID end
        local found
        for guideID in pairs(retired) do
            if guide.goalByID[guideID .. ":" .. goalID] then
                if found then return goalID end
                found = guideID .. ":" .. goalID
            end
        end
        return found or goalID
    end
    local oldID = ns.charDB.selectedGuide
    local savedOwner = retired[oldID] and oldID or nil
    if savedOwner then
        local segment = guide.segmentByID[oldID]
        if segment and segment.fork then
            ns.charDB.eraSegment = oldID
        end
        ns.charDB.eraFloor = oldID
        if ns.charDB.activeGoal then
            ns.charDB.activeGoal = Prefixed(oldID, ns.charDB.activeGoal) or ns.charDB.activeGoal
        end
        local history = {}
        for _, goalID in ipairs(ns.charDB.history or {}) do
            history[#history + 1] = Prefixed(oldID, goalID) or goalID
        end
        ns.charDB.history = history
        ns.charDB.selectedGuide = "leveling-era"
    end
    local merged = self:GetLedger(guide, true)
    local ledgers = ns.charDB.completionLedger
    if type(ledgers) == "table" then
        for guideID in pairs(retired) do
            local revisions = ledgers[guideID]
            if type(revisions) == "table" then
                for _, done in pairs(revisions) do
                    if type(done) == "table" then
                        for goalID, value in pairs(done) do
                            local prefixed = Prefixed(guideID, goalID)
                            if prefixed then merged[prefixed] = value end
                        end
                    end
                end
                ledgers[guideID] = nil
            end
        end
    end
    local function Rewrite(map)
        if type(map) ~= "table" then return end
        local copy = {}
        for key, value in pairs(map) do
            local owned = savedOwner and Prefixed(savedOwner, key) or nil
            copy[owned or UniquePrefix(key)] = value
        end
        for key in pairs(map) do map[key] = nil end
        for key, value in pairs(copy) do map[key] = value end
    end
    Rewrite(ns.charDB.deferred)
    Rewrite(ns.charDB.manualCompleted)
    Rewrite(ns.charDB.notOffered)
end

function Engine:SegmentGoals(guide, state)
    if type(guide.segments) ~= "table" then return guide.goals end
    local segment = self:ActiveSegment(guide, state)
    self.currentSegment = segment
    return segment and segment.goals or {}
end

function Engine:GetGuideProgress(guide, state, segment)
    state = state or self.state or {}
    ns:FinalizeGuides()
    self:ReconcileGuide(guide, state)
    local goals = guide.goals
    if segment and segment.goals then
        goals = segment.goals
    elseif guide.segments then
        local active = self:ActiveSegment(guide, state)
        if active then
            goals = active.goals
        else
            goals = {}
            for _, part in ipairs(self:RouteSegments(guide, state) or {}) do
                for _, goal in ipairs(part.goals) do
                    goals[#goals + 1] = goal
                end
            end
        end
    end
    local guideEligible = ns.EvaluateCondition(guide.conditions, state)
    local completed, eligible, total = 0, 0, #goals
    if guideEligible == false then
        return { completed = 0, eligible = 0, total = total, percentage = 0 }
    end
    for _, goal in ipairs(goals) do
        if not HasPermanentFailure(goal.conditions, state) then
            eligible = eligible + 1
            if self:IsGoalDone(goal, state, guide) then
                completed = completed + 1
            end
        end
    end
    -- Every remaining step is permanently ineligible, so this character is finished.
    local percentage = eligible > 0 and math.floor((completed * 100 / eligible) + 0.5) or (total > 0 and 100 or 0)
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
    for _, group in ipairs(goal.questPrerequisites or {}) do
        local applies, conditionReason = ns.EvaluateCondition(group.conditions, state)
        if applies == nil then return false, conditionReason, false end
        if applies ~= false then
            local done = 0
            for _, dependencyID in ipairs(group.goalIDs or {}) do
                if self:IsDependencyDone(guide, dependencyID, state) then done = done + 1 end
            end
            local satisfied = group.mode == "all" and done == #(group.goalIDs or {}) or done > 0
            if not satisfied then
                return false, "Waiting for quest prerequisite " .. table.concat(group.questIDs or {}, ", ") .. ".", false
            end
        end
    end
    return true, eligible == nil and reason or nil, false
end

local function ConditionQuestIDs(condition, found)
    if type(condition) ~= "table" then
        return
    end
    local quest = condition.quest
    if type(quest) == "table" and type(quest.id) == "number" then
        found[quest.id] = true
    end
    local objective = condition.questObjective
    if type(objective) == "table" and type(objective.id) == "number" then
        found[objective.id] = true
    end
    for _, key in ipairs({ "all", "any" }) do
        if type(condition[key]) == "table" then
            for _, child in ipairs(condition[key]) do
                ConditionQuestIDs(child, found)
            end
        end
    end
    if condition["not"] then
        ConditionQuestIDs(condition["not"], found)
    end
end

local function ConsiderTimer(timers, questID, seconds)
    if type(questID) ~= "number" or type(seconds) ~= "number" or seconds <= 0 then
        return
    end
    local current = timers[questID]
    if not current or seconds < current then
        timers[questID] = seconds
    end
end

function Engine:ActiveTimers(guide, state)
    local timers = {}
    local completed = state.completedQuests or {}
    for _, goal in ipairs(guide.goals) do
        local questID = TimerQuestID(goal)
        local seconds = type(goal.timer) == "number" and goal.timer
            or type(goal.timer) == "table" and goal.timer.seconds
        if type(questID) == "number" and type(seconds) == "number" and seconds > 0
            and not completed[questID] and self:IsGoalDone(goal, state, guide) then
            ConsiderTimer(timers, questID, seconds)
        end
    end
    for questID, info in pairs(state.quests or {}) do
        if type(info) == "table" and not completed[questID] then
            ConsiderTimer(timers, questID, info.timeLeft)
            if type(info.timeLeft) ~= "number" then
                ConsiderTimer(timers, questID, info.timeAllowed)
            end
        end
    end
    return timers
end

function Engine:UrgentGoals(guide, state)
    local timers = self:ActiveTimers(guide, state)
    local urgent = {}
    local function Mark(goalID, inherited)
        local goal = self:GetGoal(guide, goalID)
        if not goal or self:IsGoalDone(goal, state, guide) then
            return
        end
        local seconds = inherited
        local questIDs = {}
        ConditionQuestIDs(goal.complete, questIDs)
        for questID in pairs(questIDs) do
            local remaining = timers[questID]
            if remaining and (not seconds or remaining < seconds) then
                seconds = remaining
            end
        end
        if not seconds then
            return
        end
        local existing = urgent[goalID]
        if existing and existing.seconds <= seconds then
            return
        end
        urgent[goalID] = { seconds = seconds }
        for _, dependencyID in ipairs(goal.dependsOn or {}) do
            Mark(dependencyID, seconds)
        end
    end
    for _, goal in ipairs(guide.goals) do
        Mark(goal.id)
    end
    return urgent
end

function Engine:CandidateGoals(guide, state)
    local urgentGoals = self:UrgentGoals(guide, state)
    self.urgentGoals = urgentGoals
    local urgent = {}
    local candidates = {}
    self.eligibilityReasons = {}
    for index, goal in ipairs(self:SegmentGoals(guide, state)) do
        local ready, reason, ineligible = self:IsReady(guide, goal, state)
        if reason and (ineligible or ready) then
            self.eligibilityReasons[goal.id] = reason
        end
        if ready and not self:IsGoalDone(goal, state, guide) then
            local destination = goal.route and goal.route[#goal.route]
            local candidate = {
                goal = goal, index = index,
                deferred = ns.charDB.deferred[goal.id] == true,
                sameMap = destination and destination.mapID == state.mapID or false,
            }
            if urgentGoals[goal.id] and not candidate.deferred then
                urgent[#urgent + 1] = candidate
            else
                candidates[#candidates + 1] = candidate
            end
        end
    end
    local function Sort(a, b)
        local aUrgent = urgentGoals[a.goal.id]
        local bUrgent = urgentGoals[b.goal.id]
        if aUrgent and bUrgent and aUrgent.seconds ~= bUrgent.seconds then
            return aUrgent.seconds < bUrgent.seconds
        end
        if a.deferred ~= b.deferred then return not a.deferred end
        if guide.category == "Dungeon Quest Guides" and a.sameMap ~= b.sameMap then
            return a.sameMap
        end
        local aPriority = a.goal.priority or a.index
        local bPriority = b.goal.priority or b.index
        if aPriority ~= bPriority then return aPriority < bPriority end
        if a.sameMap ~= b.sameMap then return a.sameMap end
        return a.index < b.index
    end
    table.sort(urgent, Sort)
    table.sort(candidates, Sort)
    for _, candidate in ipairs(candidates) do urgent[#urgent + 1] = candidate end
    local goals = {}
    for _, candidate in ipairs(urgent) do
        goals[#goals + 1] = candidate.goal
    end
    return goals
end

local function QuestTurnedIn(state, questID)
    return state.questCompletionKnown == true
        and type(state.completedQuests) == "table"
        and state.completedQuests[questID] == true
end

-- A gossip refusal means the catalog chain is not actually finished unless the
-- client has flagged every prerequisite quest turned in. Ledger and inferred
-- credit are not enough, because that is what parked the player on the accept.
function Engine:PrerequisitesConfirmed(goal, state)
    local groups = type(goal) == "table" and goal.questPrerequisites or nil
    if type(groups) ~= "table" or #groups == 0 then return true end
    state = state or {}
    for _, group in ipairs(groups) do
        local applies = ns.EvaluateCondition(group.conditions, state)
        if applies ~= false then
            local confirmed = 0
            for _, questID in ipairs(group.questIDs or {}) do
                if QuestTurnedIn(state, questID) then confirmed = confirmed + 1 end
            end
            local satisfied = group.mode == "all" and confirmed == #(group.questIDs or {}) or confirmed > 0
            if not satisfied then return false end
        end
    end
    return true
end

function Engine:InvalidateChainCredit(guide, goal, state)
    local seen = {}
    local function Walk(goalID)
        if type(goalID) ~= "string" or seen[goalID] then return end
        seen[goalID] = true
        local target = self:GetGoal(guide, goalID)
        if not target then return end
        local evaluation = target.complete and ns.EvaluateCondition(target.complete, state)
        if evaluation ~= true then
            local ledger = self:GetLedger(guide, false)
            if ledger then ledger[target.id] = nil end
            if type(ns.charDB.manualCompleted) == "table" then
                ns.charDB.manualCompleted[target.id] = nil
            end
            for _, dependencyID in ipairs(target.dependsOn or {}) do Walk(dependencyID) end
            for _, group in ipairs(target.questPrerequisites or {}) do
                for _, dependencyID in ipairs(group.goalIDs or {}) do Walk(dependencyID) end
            end
        end
    end
    Walk(goal.id)
end

function Engine:ReleaseUnconfirmedRefusals(guide, state)
    local report = ns.charDB and ns.charDB.notOffered
    if type(report) ~= "table" then return false end
    local released = false
    for goalID, entry in pairs(report) do
        if type(entry) == "table" and entry.guide == ns.charDB.selectedGuide then
            local goal = self:GetGoal(guide, goalID)
            if goal and not self:IsGoalDone(goal, state, guide)
                and not self:PrerequisitesConfirmed(goal, state) then
                self:InvalidateChainCredit(guide, goal, state)
                report[goalID] = nil
                released = true
            end
        end
    end
    return released
end

function Engine:BlockedAuditGoal(guide, state)
    local report = ns.charDB and ns.charDB.notOffered
    if type(report) ~= "table" then return nil end
    for goalID, entry in pairs(report) do
        if entry.guide == ns.charDB.selectedGuide then
            local goal = self:GetGoal(guide, goalID)
            if not goal or self:IsGoalDone(goal, state, guide) then
                report[goalID] = nil
            elseif self:IsReady(guide, goal, state) and self:PrerequisitesConfirmed(goal, state) then
                return goal, entry
            else
                -- The prerequisite can now be routed. Drop the stale refusal.
                report[goalID] = nil
            end
        end
    end
end

local function ActiveGoalStorageKey(guide, goalOrID)
    if not guide or guide.id ~= "leveling-era" then
        return guide and guide.id
    end
    if type(goalOrID) == "table" and type(goalOrID.segmentID) == "string" then
        return goalOrID.segmentID
    end
    if type(goalOrID) == "string" then
        local chapter = goalOrID:match("^([^:]+):")
        if chapter then
            return chapter
        end
    end
    if ns.charDB and type(ns.charDB.eraChapterPick) == "string" then
        return ns.charDB.eraChapterPick
    end
    if ns.charDB and type(ns.charDB.eraFloor) == "string" then
        return ns.charDB.eraFloor
    end
    return guide.id
end

local function ValidateActiveGoal(engine, guide)
    if not guide or not ns.charDB or not ns.charDB.activeGoal then
        return
    end
    if engine:GetGoal(guide, ns.charDB.activeGoal) then
        return
    end
    ns.charDB.activeGoalByGuide = ns.charDB.activeGoalByGuide or {}
    local storeKey = ActiveGoalStorageKey(guide, ns.charDB.activeGoal)
        or ActiveGoalStorageKey(guide, ns.charDB.eraChapterPick)
    local saved = storeKey and ns.charDB.activeGoalByGuide[storeKey]
    if saved and engine:GetGoal(guide, saved) then
        ns.charDB.activeGoal = saved
    else
        ns.charDB.activeGoal = nil
    end
end

function Engine:SetActiveGoal(goal, remember)
    local oldID = ns.charDB.activeGoal
    if remember and oldID and oldID ~= goal.id then
        ns.charDB.history[#ns.charDB.history + 1] = oldID
    end
    ns.charDB.activeGoal = goal.id
    ns.charDB.activeGoalByGuide = ns.charDB.activeGoalByGuide or {}
    local storeKey = ActiveGoalStorageKey(self.currentGuide or ns.guides[ns.charDB.selectedGuide], goal)
    if storeKey then
        ns.charDB.activeGoalByGuide[storeKey] = goal.id
    end
    self.currentGoal = goal
    self.reviewingGoal = nil
end

function Engine:Refresh(state)
    ns:FinalizeGuides()
    if not ns.charDB then
        return
    end
    self:MigrateEraProgress()
    local guide = ns.guides[ns.charDB.selectedGuide]
    state = state or ns.PlayerState:Capture(nil, guide and ns.QuestIDsForGuide(guide) or {})
    self.state = state
    self.currentGuide = guide
    self.currentSegment = nil
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
    if self:ReleaseUnconfirmedRefusals(guide, state) then
        self:ReconcileGuide(guide, state)
    end
    ValidateActiveGoal(self, guide)
    local eligible, reason = ns.EvaluateCondition(guide.conditions, state)
    if eligible == false then
        self.currentGoal = nil
        self.status = reason
    else
        local active = self:GetGoal(guide, ns.charDB.activeGoal)
        local ready = active and self:IsReady(guide, active, state)
        local activeEvaluation = active and active.complete and ns.EvaluateCondition(active.complete, state)
        local observedDone = activeEvaluation == true
        local observedUnknown = activeEvaluation == nil
        local activeFinished = active and self:IsGoalDone(active, state, guide)
        local candidates = self:CandidateGoals(guide, state)
        local blockedGoal, blockedEntry = self:BlockedAuditGoal(guide, state)
        local function Remaining(goal)
            local info = goal and self.urgentGoals[goal.id]
            return info and info.seconds or nil
        end
        local nextSeconds = Remaining(candidates[1])
        local activeSeconds = Remaining(active)
        local shortPreempt = nextSeconds and nextSeconds <= SHORT_TIMER_SECONDS
            and candidates[1] ~= active
            and (not activeSeconds or nextSeconds < activeSeconds)
        local nextGoal = candidates[1]
        local earlierObjective = nextGoal and active
            and (nextGoal.kind == "objective" or nextGoal.kind == "gossip")
            and not ns.charDB.deferred[nextGoal.id]
            and type(nextGoal.priority) == "number" and type(active.priority) == "number"
            and nextGoal.priority < active.priority
        local onChapter = not self.currentSegment or not active or not active.segmentID
            or active.segmentID == self.currentSegment.id
        if active and self.reviewingGoal == active.id and not shortPreempt then
            self.currentGoal = active
            self.status = "Reviewing a previous step."
        elseif blockedGoal then
            self:SetActiveGoal(blockedGoal, active ~= nil)
            self.status = ("Blocked: %s does not offer quest %d. Its prerequisites are already turned in, so this step stays until the quest is offered or you check it off.")
                :format(tostring(blockedEntry.npc), tonumber(blockedEntry.quest) or 0)
        elseif onChapter and active and ready and not activeFinished and not ns.charDB.deferred[active.id]
            and (not observedDone or not ns.db.autoAdvance or observedUnknown) and not shortPreempt
            and not earlierObjective then
            self.currentGoal = active
        elseif candidates[1] then
            self:SetActiveGoal(candidates[1], active ~= nil)
            self.status = eligible == nil and reason or nil
        else
            self.currentGoal = nil
            local segment = self.currentSegment
            if segment and type(state.level) == "number" and segment.levelMin and state.level < segment.levelMin then
                self.status = "Level requirement not met."
            elseif segment then
                local blocked
                for _, goal in ipairs(segment.goals) do
                    if not HasPermanentFailure(goal.conditions, state)
                        and not self:IsGoalDone(goal, state, guide) then
                        local _, goalReason = self:IsReady(guide, goal, state)
                        blocked = goalReason
                        break
                    end
                end
                self.status = blocked or "No active step."
            else
                self.status = eligible == nil and reason or "Guide complete."
            end
        end
        if guide.segments and self.currentSegment and not self.reviewingGoal then
            self:LockEraFloor(guide, state)
        end
        if self.currentGoal and guide.segmentByID and self.currentGoal.segmentID then
            self.currentSegment = guide.segmentByID[self.currentGoal.segmentID] or self.currentSegment
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

function Engine:PreviousRouteGoal(guide, goal)
    local route = self:RouteSegments(guide, self.state or {})
    if not route then return nil end
    local startIndex = self:RouteStartIndex(guide, route, self.state or {})
    local flat = {}
    for index = startIndex, #route do
        for _, candidate in ipairs(route[index].goals) do
            flat[#flat + 1] = candidate
        end
    end
    local current
    for index, candidate in ipairs(flat) do
        if candidate.id == goal.id then
            current = index
            break
        end
    end
    if not current then return nil end
    for index = current - 1, 1, -1 do
        if ns.EvaluateCondition(flat[index].conditions, self.state or {}) ~= false then
            return flat[index].id
        end
    end
end

function Engine:Previous()
    local history = ns.charDB.history
    local previousID = table.remove(history)
    while previousID and self.currentGuide and (
        previousID == (self.currentGoal and self.currentGoal.id)
        or not self:GetGoal(self.currentGuide, previousID)
    ) do
        previousID = table.remove(history)
    end
    if not previousID and self.currentGuide and self.currentGoal then
        if self.currentGuide.segments then
            previousID = self:PreviousRouteGoal(self.currentGuide, self.currentGoal)
        else
            local _, currentIndex = self:GetGoal(self.currentGuide, self.currentGoal.id)
            for index = (currentIndex or 1) - 1, 1, -1 do
                local candidate = self.currentGuide.goals[index]
                if ns.EvaluateCondition(candidate.conditions, self.state or {}) ~= false then
                    previousID = candidate.id
                    break
                end
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
    ns:FinalizeGuides()
    self:MigrateEraProgress()
    local chapterID
    if ns.retiredEraGuides and ns.retiredEraGuides[guideID] then
        chapterID = guideID
        local merged = ns.guides["leveling-era"]
        local segment = merged and merged.segmentByID[guideID]
        if segment and segment.fork then
            ns.charDB.eraSegment = guideID
        end
        ns.charDB.eraChapterPick = guideID
        ns.charDB.eraFloor = guideID
        guideID = "leveling-era"
    end
    if ns.guides[guideID] then
        local guide = ns.guides[guideID]
        ns.charDB.activeGoalByGuide = ns.charDB.activeGoalByGuide or {}
        if ns.charDB.selectedGuide and ns.charDB.activeGoal then
            local currentGuide = ns.guides[ns.charDB.selectedGuide]
            local storeKey = ActiveGoalStorageKey(currentGuide, ns.charDB.activeGoal)
            if storeKey then
                ns.charDB.activeGoalByGuide[storeKey] = ns.charDB.activeGoal
            end
        end
        ns.charDB.selectedGuide = guideID
        local restoreKey = chapterID or guideID
        local saved = ns.charDB.activeGoalByGuide[restoreKey]
        if saved and self:GetGoal(guide, saved) then
            ns.charDB.activeGoal = saved
        else
            ns.charDB.activeGoal = nil
        end
        ns.charDB.history = {}
        self.inferredCompletedByGuide = nil
        self.reviewingGoal = nil
        self:Refresh()
    end
end
