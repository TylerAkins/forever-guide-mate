local _, ns = ...

local Engine = { state = nil, currentGuide = nil, currentGoal = nil, status = nil }
ns.Engine = Engine

local VALID_KINDS = {
    accept = true, objective = true, turnin = true, gossip = true, travel = true, note = true,
    confirm = true,
}

local STARTER_GUIDE_IDS = {
    ["leveling-era-durotar"] = true,
    ["leveling-era-mulgore"] = true,
    ["leveling-era-tirisfal-glades"] = true,
    ["leveling-era-dun-morogh"] = true,
    ["leveling-era-elwynn-forest"] = true,
    ["leveling-era-teldrassil"] = true,
}

local function FocusedPickupGuide(guide)
    local category = type(guide) == "table" and guide.category
    return category == "Dungeon Quest Guides" or category == "Raid Quests"
end

-- Same camp, not the same zone. Deviate Hides and Deviate Eradication share a
-- pin; the Crossroads and Ratchet do not.
local PICKUP_STOP_RADIUS = 0.02

local function RouteDestination(goal)
    local route = type(goal) == "table" and goal.route
    if type(route) ~= "table" then return nil end
    return route[#route]
end

local function SamePickupStop(first, second)
    if type(first) ~= "table" or type(second) ~= "table" then return false end
    if first.mapID ~= second.mapID then return false end
    if type(first.x) ~= "number" or type(first.y) ~= "number"
        or type(second.x) ~= "number" or type(second.y) ~= "number" then
        return false
    end
    local dx = first.x - second.x
    local dy = first.y - second.y
    return (dx * dx) + (dy * dy) <= (PICKUP_STOP_RADIUS * PICKUP_STOP_RADIUS)
end

local function PickupStopKind(goal)
    return goal.kind == "accept" or goal.kind == "turnin" or goal.kind == "gossip"
end
local SHORT_TIMER_SECONDS = 30 * 60
local trackedQuestIDs
local trackedAchievementIDs

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

local function HasOutdoorDestination(goal)
    local destination = RouteDestination(goal)
    return type(destination) == "table" and type(destination.mapID) == "number"
end

-- True when this step is work inside the current instance. Outdoor capital
-- turn-ins that dependOn dungeon objectives still have world pins; those must
-- not count as in-instance or they preempt Maur/bosses mid-run (RFC/BFD).
local function GoalMatchesInstance(goal, state, guide)
    if type(goal) ~= "table" or type(state) ~= "table" or type(state.instanceID) ~= "number" then
        return false
    end
    local function Walk(condition)
        if type(condition) ~= "table" then return false end
        if condition.instance and Contains(condition.instance, state.instanceID) then
            return true
        end
        for _, key in ipairs({ "all", "any" }) do
            if type(condition[key]) == "table" then
                for _, child in ipairs(condition[key]) do
                    if Walk(child) then return true end
                end
            end
        end
        return false
    end
    local seen = {}
    local function Matches(candidate)
        if type(candidate) ~= "table" or type(candidate.id) ~= "string" or seen[candidate.id] then
            return false
        end
        seen[candidate.id] = true
        if HasOutdoorDestination(candidate) then
            return false
        end
        -- Authored enter steps put instance on complete, not conditions.
        if Walk(candidate.conditions) or Walk(candidate.complete) then
            return true
        end
        if type(guide) ~= "table" then return false end
        for _, dependencyID in ipairs(candidate.dependsOn or {}) do
            local dependency = Engine:GetGoal(guide, dependencyID)
            if Matches(dependency) then return true end
        end
        return false
    end
    return Matches(goal)
end

local function Unknown(reason)
    return nil, reason or "Eligibility could not be verified."
end

-- A partial catalog read must not treat every unread quest as failed.
local function QuestChecked(state, questID)
    if type(state) ~= "table" then
        return false
    end
    if type(state.watchedQuests) == "table" then
        return state.watchedQuests[questID] == true
    end
    return state.questCompletionKnown == true
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
    -- spine import leaves empty `{}` children as no-op flags.
    if next(condition) == nil then
        return true
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
    if condition.item then
        local name = type(condition.item) == "string" and condition.item or condition.item.name
        if type(name) ~= "string" or name == "" then
            return false, "Invalid item condition."
        end
        if type(condition.item) == "table" and condition.item.minCount then
            local count = ns.PlayerState and ns.PlayerState.GetItemCount
                and ns.PlayerState:GetItemCount(name, state)
            if count == nil then return Unknown("Item count is unavailable.") end
            local enough = count >= condition.item.minCount
            return enough, enough and nil or ("Requires %d %s in your bags."):format(condition.item.minCount, name)
        end
        local has = ns.PlayerState and ns.PlayerState.HasItem
            and ns.PlayerState:HasItem(name, state)
        return has and true or false, has and nil or "Item is not in your bags."
    end
    if condition.achievement then
        local achievementID = type(condition.achievement) == "table" and condition.achievement.id or nil
        if type(achievementID) ~= "number" then
            return false, "Invalid achievement condition."
        end
        local achievements = type(state) == "table" and state.achievements or nil
        local achievement = achievements and achievements[achievementID]
        if type(achievement) ~= "table" or type(achievement.completed) ~= "boolean" then
            return Unknown("Achievement state is unavailable.")
        end
        if achievement.completed then return true end
        return false, "Achievement is incomplete."
    end
    if condition.achievementCriterion then
        local spec = type(condition.achievementCriterion) == "table" and condition.achievementCriterion or {}
        local achievementID = spec.id
        local name = type(spec.name) == "string" and string.lower(spec.name) or nil
        if type(achievementID) ~= "number" or not name or name == "" then
            return false, "Invalid achievement criterion condition."
        end
        local achievements = type(state) == "table" and state.achievements or nil
        local achievement = achievements and achievements[achievementID]
        if type(achievement) ~= "table" then
            return Unknown("Achievement criterion state is unavailable.")
        end
        local criteria = achievement.criteriaByName
        if type(criteria) ~= "table" or type(criteria[name]) ~= "boolean" then
            return Unknown("Achievement criterion state is unavailable.")
        end
        if criteria[name] then return true end
        return false, "Achievement criterion is incomplete."
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
            if not state.questLogKnown or not QuestChecked(state, questID) then
                return Unknown("Quest completion is unavailable.")
            end
            return false, "Quest is not complete."
        elseif wanted == "completed" then
            if not QuestChecked(state, questID) then
                return Unknown("Quest completion is unavailable.")
            end
            return completed and true or false, completed and nil or "Quest has not been turned in."
        elseif wanted == "activeOrCompleted" then
            if active or completed then
                return true
            end
            if not state.questLogKnown or not QuestChecked(state, questID) then
                return Unknown("Quest state is unavailable.")
            end
            return false, "Quest has not been accepted."
        elseif wanted == "notCompleted" then
            if not QuestChecked(state, questID) then
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
            if not QuestChecked(state, questID) then
                return Unknown("Quest completion is unavailable.")
            end
            -- The log can lag on login while the quest is still in progress.
            return Unknown("Quest is not in the quest log.")
        end
        local objective = FindObjective(active.objectives, spec)
        if objective == nil then
            return Unknown("Quest objective is unavailable.")
        end
        if type(spec.count) == "number" then
            if type(objective.numFulfilled) ~= "number" then
                return Unknown("Quest objective count is unavailable.")
            end
            return objective.numFulfilled >= spec.count, "Quest objective count is incomplete."
        end
        local finished = ObjectiveFinished(objective)
        if finished == nil then
            return Unknown("Quest objective is unavailable.")
        end
        return finished, finished and nil or "Quest objective is incomplete."
    end
    return false, "Unknown condition type."
end

local function ValidateDeclarative(value, path, seen)
    if type(value) == "function" then
        return false, path .. " cannot contain functions"
    end
    if type(value) == "table" then
        seen = seen or {}
        if seen[value] == "visiting" then return false, path .. " cannot contain cyclic tables" end
        if seen[value] then return true end
        seen[value] = "visiting"
        for key, child in pairs(value) do
            local kind = type(child)
            if kind == "table" or kind == "function" then
                local valid, reason = ValidateDeclarative(child, "", seen)
                if not valid then return false, path .. "." .. tostring(key) .. reason end
            end
        end
        seen[value] = true
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

local function QuestIDFromCondition(condition)
    if type(condition) ~= "table" then
        return nil
    end
    local quest = condition.quest
    if type(quest) == "table" and type(quest.id) == "number" then
        return quest.id
    end
    local objective = condition.questObjective
    if type(objective) == "table" and type(objective.id) == "number" then
        return objective.id
    end
    for _, key in ipairs({ "all", "any" }) do
        local group = condition[key]
        if type(group) == "table" then
            for _, child in ipairs(group) do
                local questID = QuestIDFromCondition(child)
                if questID then
                    return questID
                end
            end
        end
    end
    return nil
end

local function GoalQuestID(goal)
    local complete = type(goal) == "table" and goal.complete or nil
    return QuestIDFromCondition(complete)
end

function Engine:GetGoalQuestID(goal)
    return GoalQuestID(goal)
end

local function TrustedQuestResult(state, goal)
    if type(state) ~= "table" or not state.questLogKnown then
        return false
    end
    if state.questCompletionKnown then
        return true
    end
    if type(state.watchedQuests) ~= "table" then
        return false
    end
    local questID = GoalQuestID(goal)
    return type(questID) == "number" and state.watchedQuests[questID] == true
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
    if guide.routeMode == "ordered" then
        local turnins = {}
        for _, goal in ipairs(guide.goals) do
            if goal.kind == "turnin" then
                local questID = GoalQuestID(goal)
                if questID then turnins[questID] = goal.id end
            end
        end
        for _, goal in ipairs(guide.goals) do
            goal.questPrerequisites = {}
            for _, requirement in ipairs(goal.requiredQuests or {}) do
                local group = { mode = requirement.mode, questIDs = {},
                    conditions = requirement.conditions, goalIDs = {} }
                for _, questID in ipairs(requirement.quests) do
                    if turnins[questID] then
                        group.questIDs[#group.questIDs + 1] = questID
                        group.goalIDs[#group.goalIDs + 1] = turnins[questID]
                    end
                end
                if goal.kind == "accept" then goal.questPrerequisites[#goal.questPrerequisites + 1] = group end
            end
        end
        return
    end
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
    local function GoalByID(goalID)
        if not guide.goalByID then return nil end
        local index = guide.goalByID[goalID]
        return index and guide.goals[index] or nil
    end
    for _, goal in ipairs(guide.goals) do
        if goal.kind == "turnin" then
            local questID = GoalQuestID(goal)
            local present = {}
            goal.dependsOn = goal.dependsOn or {}
            for _, dependency in ipairs(goal.dependsOn) do present[dependency] = true end
            for _, objectiveID in ipairs(objectives[questID] or {}) do
                if present[objectiveID] then
                    -- already linked
                else
                    local objective = GoalByID(objectiveID)
                    if goal.segmentID and objective and objective.segmentID
                        and objective.segmentID ~= goal.segmentID then
                        -- Shared quest ids repeat on every starter chapter in the
                        -- merged Era guide. Only wire objectives from this chapter.
                    else
                        goal.dependsOn[#goal.dependsOn + 1] = objectiveID
                    end
                end
            end
        end
    end
    if FocusedPickupGuide(guide) then return end
    for goalIndex, goal in ipairs(guide.goals) do
        if goal.kind == "accept" then
            local rules = ns.questPrerequisites[GoalQuestID(goal)]
            if rules then
                goal.questPrerequisites = goal.questPrerequisites or {}
                for _, rule in ipairs(rules) do
                    local group = { mode = rule.mode, conditions = rule.conditions, questIDs = {}, goalIDs = {} }
                    for _, questID in ipairs(rule.quests) do
                        local turnin = turnins[questID]
                        if turnin and turnin.index < goalIndex then
                            group.questIDs[#group.questIDs + 1] = questID
                            group.goalIDs[#group.goalIDs + 1] = turnin.id
                        elseif rule.mode == "all" then
                            local softPrereqs = guide.casualSpine == true
                                or (type(guide.title) == "string"
                                    and string.find(guide.title, "(Era)", 1, true))
                            if not softPrereqs then
                                error(("Forever GuideMate: guide %s accept %s needs turn-in quest %d")
                                    :format(guide.id, goal.id, questID), 3)
                            end
                        end
                    end
                    if #group.questIDs == 0 then
                        local softPrereqs = guide.casualSpine == true
                            or (type(guide.title) == "string"
                                and string.find(guide.title, "(Era)", 1, true))
                        if not softPrereqs then
                            error(("Forever GuideMate: guide %s accept %s needs at least one prerequisite turn-in")
                                :format(guide.id, goal.id), 3)
                        end
                    else
                        goal.questPrerequisites[#goal.questPrerequisites + 1] = group
                    end
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
    if self.ExpandClassActions then self:ExpandClassActions(guide) end
    ApplyClientQuestData(guide)
    if guide.routeMode == "ordered" then
        for _, goal in ipairs(guide.goals) do
            if goal.useQuestNavigation == nil and not goal.instructionOnly and not goal.checkpointQuest
                and (goal.kind == "turnin" or (goal.kind == "objective" and goal.complete and goal.complete.questObjective)) then
                goal.useQuestNavigation = true
            end
        end
    end
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
    trackedQuestIDs = nil
    trackedAchievementIDs = nil
end

-- Starter chapters are parallel. After the chosen starter, every later chapter
-- for that faction stays on the route in listed order.
local ERA_STARTER_BY_RACE = {
    [1] = "leveling-era-elwynn-forest",
    [2] = "leveling-era-durotar",
    [3] = "leveling-era-dun-morogh",
    [4] = "leveling-era-teldrassil",
    [5] = "leveling-era-tirisfal-glades",
    [6] = "leveling-era-mulgore",
    [7] = "leveling-era-dun-morogh",
    [8] = "leveling-era-durotar",
    [95] = "leveling-zephras-isle",
    [96] = "leveling-zephras-isle",
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
    copy.conditions = AndCondition(goal.conditions, segment.routeMode == "ordered" and { faction = segment.faction } or gate)
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

local function BuildCasualGuide(faction, sources)
    local segments = {}
    local goals = {}
    local segmentByID = {}
    -- Each source chapter keeps its own priority space (10, 20, …). Remap onto
    -- one increasing spine so later zones cannot sort ahead of earlier ones.
    local routePriority = 0
    for _, source in ipairs(sources) do
        local _, levelMin = GuideFactionAndLevel(source)
        local segment = {
            id = source.id,
            routeMode = source.routeMode,
            title = source.title,
            faction = faction,
            levelMin = levelMin,
            maps = {},
            goals = {},
            gate = source.conditions,
        }
        local maxLocal = 0
        for _, goal in ipairs(source.goals or {}) do
            local localPriority = type(goal.priority) == "number" and goal.priority or 0
            if localPriority > maxLocal then maxLocal = localPriority end
        end
        for _, goal in ipairs(source.goals or {}) do
            local copy = CopyEraGoal(goal, segment, source.conditions)
            local localPriority = type(goal.priority) == "number" and goal.priority or 0
            copy.priority = routePriority + localPriority
            for _, leg in ipairs(copy.route or {}) do
                if type(leg.mapID) == "number" then
                    segment.maps[leg.mapID] = (segment.maps[leg.mapID] or 0) + 1
                end
            end
            segment.goals[#segment.goals + 1] = copy
            goals[#goals + 1] = copy
        end
        routePriority = routePriority + maxLocal + 1000
        segmentByID[segment.id] = segment
        segments[#segments + 1] = segment
    end
    local goalByID = {}
    for index, goal in ipairs(goals) do
        goalByID[goal.id] = index
    end
    if #segments == 0 then return nil end
    return {
        id = "leveling-casual-" .. string.lower(faction),
        routeMode = sources[1] and sources[1].routeMode,
        title = "Forever Casual Route",
        category = "Leveling Quest Guides",
        revision = sources[1] and sources[1].revision or 1,
        series = "casual",
        compactLibrary = true,
        -- Built from leveling spines; Forever weave prerequisites may still be mid-port.
        casualSpine = true,
        segments = segments,
        segmentByID = segmentByID,
        goalByID = goalByID,
        conditions = {
            all = {
                { level = { min = 12 } },
                { faction = faction },
            },
        },
        goals = goals,
    }
end

function ns:FinalizeGuides()
    if self.guidesFinalized then return end
    self.guidesFinalized = true
    local allianceSources, hordeSources = {}, {}
    local retired = {}
    for _, guideID in ipairs(self.guideOrder) do
        local guide = self.guides[guideID]
        if IsEraGuide(guide) and not STARTER_GUIDE_IDS[guide.id] then
            local faction = GuideFactionAndLevel(guide)
            if faction == "Alliance" then
                allianceSources[#allianceSources + 1] = guide
            elseif faction == "Horde" then
                hordeSources[#hordeSources + 1] = guide
            end
            retired[guide.id] = faction
        end
    end
    if next(retired) == nil then return end
    trackedQuestIDs = nil
    trackedAchievementIDs = nil
    if ns.SkipLineage then ns.SkipLineage:InvalidateDependents() end

    -- Keep registration / TOC order (Horde: Silverpine then Barrens).
    -- Sorting by levelMin alone is fine; do not reorder by title.

    for guideID in pairs(retired) do
        RemoveGuide(guideID)
    end
    self.retiredEraGuides = retired
    self.retiredCasualByFaction = retired

    local alliance = BuildCasualGuide("Alliance", allianceSources)
    local horde = BuildCasualGuide("Horde", hordeSources)
    if alliance then self:RegisterGuide(alliance) end
    if horde then self:RegisterGuide(horde) end
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
    for _, group in ipairs(value.requiredQuests or {}) do
        for _, questID in ipairs(group.quests or {}) do found[questID] = true end
    end
    for _, child in pairs(value) do
        if type(child) == "table" then
            CollectQuestIDs(child, found)
        end
    end
end

local function CollectAchievementIDs(value, found)
    if type(value) ~= "table" then return end
    if type(value.achievement) == "table" and type(value.achievement.id) == "number" then
        found[value.achievement.id] = true
    end
    local criterion = value.achievementCriterion
    if type(criterion) == "table" and type(criterion.id) == "number" then
        found[criterion.id] = true
    end
    for _, child in pairs(value) do
        if type(child) == "table" then CollectAchievementIDs(child, found) end
    end
end

function ns.GuideUsesQuest(guide, questID)
    local found = {}
    CollectQuestIDs(guide, found)
    return found[questID] == true
end

function ns.GetTrackedQuestIDs()
    if trackedQuestIDs then
        return trackedQuestIDs
    end
    local found = {}
    for _, guide in pairs(ns.guides) do
        CollectQuestIDs(guide, found)
    end
    local ids = {}
    for questID in pairs(found) do
        ids[#ids + 1] = questID
    end
    table.sort(ids)
    trackedQuestIDs = ids
    return ids
end

function ns.GetTrackedAchievementIDs()
    if trackedAchievementIDs then return trackedAchievementIDs end
    local found = {}
    for _, guide in pairs(ns.guides) do
        CollectAchievementIDs(guide, found)
    end
    local ids = {}
    for achievementID in pairs(found) do ids[#ids + 1] = achievementID end
    table.sort(ids)
    trackedAchievementIDs = ids
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

function ns.QuestIDsForGoals(goals)
    local found = {}
    for _, goal in ipairs(goals or {}) do
        CollectQuestIDs(goal, found)
    end
    local ids = {}
    for questID in pairs(found) do
        ids[#ids + 1] = questID
    end
    table.sort(ids)
    return ids
end

-- Prefer quests for the open guide. Compact Casual queries the full route;
-- non-compact segmented guides still prioritize the open chapter first.
function ns.QuestQuery()
    local all = ns.GetTrackedQuestIDs()
    local guide = ns.charDB and ns.guides[ns.charDB.selectedGuide]
    local segmentID = ""
    if type(guide) == "table" and type(guide.segmentByID) == "table"
        and not guide.compactLibrary then
        local segment = ns.Engine and ns.Engine.currentSegment
        if type(segment) ~= "table" or guide.segmentByID[segment.id] ~= segment then
            local pick = ns.charDB.eraChapterPick or ns.charDB.eraFloor
            segment = type(pick) == "string" and guide.segmentByID[pick] or nil
        end
        if type(segment) == "table" then
            segmentID = segment.id
        end
    end
    local current
    if guide and guide.routeMode == "ordered" then
        if ns.Engine.currentGuide == guide then current = ns.Engine.currentGoal end
        if not current then
            local storage = ns.charDB.orderedRoutes and ns.charDB.orderedRoutes[guide.id]
            current = ns.Engine:GetGoal(guide, storage and storage.cursor)
        end
        segmentID = ""
    end
    local key = (type(guide) == "table" and guide.id or "") .. "\0" .. segmentID
        .. "\0" .. (current and current.id or "")
    if ns.questQueryKey == key and ns.questQueryTracked == all and ns.questQueryIDs then
        return ns.questQueryIDs, ns.questQueryPriority
    end
    if type(guide) ~= "table" then
        ns.questQueryKey, ns.questQueryTracked = key, all
        ns.questQueryIDs, ns.questQueryPriority = all, 0
        return all, 0
    end
    local priority
    if current then
        priority = ns.QuestIDsForGoals({ current })
        for _, questID in ipairs(current.alternativeQuests or {}) do priority[#priority + 1] = questID end
        if current.checkpointQuest then priority[#priority + 1] = current.checkpointQuest end
        local questID = ns.Engine:GetGoalQuestID(current) or current.checkpointQuest
        if questID then table.insert(priority, 1, questID) end
    elseif segmentID ~= "" and guide.segmentByID[segmentID] then
        priority = ns.QuestIDsForGoals(guide.segmentByID[segmentID].goals)
    end
    if not priority then
        priority = ns.QuestIDsForGuide(guide)
    end
    local seen, ordered = {}, {}
    for _, questID in ipairs(priority) do
        if type(questID) == "number" and not seen[questID] then
            seen[questID] = true
            ordered[#ordered + 1] = questID
        end
    end
    local priorityCount = #ordered
    for _, questID in ipairs(all) do
        if not seen[questID] then
            seen[questID] = true
            ordered[#ordered + 1] = questID
        end
    end
    ns.questQueryKey, ns.questQueryTracked = key, all
    ns.questQueryIDs, ns.questQueryPriority = ordered, priorityCount
    return ordered, priorityCount
end

function Engine:GetGoal(guide, goalID)
    if type(guide) ~= "table" or type(goalID) ~= "string" then
        return nil
    end
    local indexed = guide.goalByID
    if indexed then
        local index = indexed[goalID]
        if index then return guide.goals[index], index end
        return nil
    end
    for index, goal in ipairs(guide.goals or {}) do
        if goal.id == goalID then
            return goal, index
        end
    end
end

function Engine:GetLedger(guide, create)
    if type(guide) ~= "table" or type(guide.id) ~= "string" then
        return nil
    end
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

local function AchievementObservableCompletion(condition)
    if type(condition) ~= "table" then return false end
    if condition.achievement or condition.achievementCriterion then return true end
    for _, key in ipairs({ "all", "any" }) do
        for _, child in ipairs(condition[key] or {}) do
            if AchievementObservableCompletion(child) then return true end
        end
    end
    return condition["not"] and AchievementObservableCompletion(condition["not"]) or false
end

function Engine:IsGoalDone(goal, state, guide)
    guide = guide or self.currentGuide
    if ns.SkipLineage and ns.SkipLineage:IsSkipped(goal.id) then
        return true
    end
    if self:QuestChainBypassed(goal, state, _G) then
        return true
    end
    local evaluation
    if goal.complete then
        evaluation = ns.EvaluateCondition(goal.complete, state)
        if evaluation == true then
            return true
        end
        -- Achievement-backed steps require current client evidence. False or
        -- unavailable state must not resurrect an old manual or persisted check.
        if AchievementObservableCompletion(goal.complete) then
            return false
        end
        -- Once both quest APIs have answered, their negative result is more
        -- trustworthy than old manual, ledger, or inferred state.
        if evaluation == false and QuestObservableCompletion(goal.complete)
            and TrustedQuestResult(state, goal) then
            return false
        end
    end
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
    return evaluation == true
end

local NO_ENTRIES = {}

function Engine:ReconcileGuide(guide, state, goals)
    self.inferredCompletedByGuide = self.inferredCompletedByGuide or {}
    self.inferredCompletedByGuide[guide.id] = self.inferredCompletedByGuide[guide.id] or {}
    local inferred = {}
    self.inferredCompletedByGuide[guide.id][tostring(guide.revision)] = inferred
    local ledger = self:GetLedger(guide, true)
    local done = {}
    for _, goal in ipairs(goals or guide.goals) do
        if guide.id == ns.charDB.selectedGuide and ns.charDB.manualCompleted[goal.id] then
            ledger[goal.id] = true
            ns.charDB.manualCompleted[goal.id] = nil
        end
        local evaluation = goal.complete and ns.EvaluateCondition(goal.complete, state)
        local observed = evaluation == true
        local observedIncomplete = (AchievementObservableCompletion(goal.complete) and evaluation ~= true)
            or (evaluation == false and QuestObservableCompletion(goal.complete)
                and TrustedQuestResult(state, goal))
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
    local function MayInfer(goalID)
        local dependency = self:GetGoal(guide, goalID)
        if not dependency or not dependency.complete then
            return true
        end
        local evaluation = ns.EvaluateCondition(dependency.complete, state)
        if evaluation == false and QuestObservableCompletion(dependency.complete)
            and TrustedQuestResult(state, dependency) then
            return false
        end
        return true
    end
    local expanded = {}
    local function InferDependencies(goalID, visiting)
        local goal = self:GetGoal(guide, goalID)
        if not goal or visiting[goalID] or expanded[goalID] then
            return
        end
        expanded[goalID] = true
        visiting[goalID] = true
        for _, dependencyID in ipairs(goal.dependsOn or NO_ENTRIES) do
            if MayInfer(dependencyID) then
                inferred[dependencyID] = true
                local dependency = self:GetGoal(guide, dependencyID)
                if dependency and dependency.kind ~= "travel" and dependency.kind ~= "note" then
                    InferDependencies(dependencyID, visiting)
                end
            end
        end
        for _, group in ipairs(goal.questPrerequisites or NO_ENTRIES) do
            local applies = ns.EvaluateCondition(group.conditions, state)
            if applies ~= false then
                for _, dependencyID in ipairs(group.goalIDs or NO_ENTRIES) do
                    if group.mode == "all" or self:IsDependencyDone(guide, dependencyID, state) then
                        if MayInfer(dependencyID) then
                            inferred[dependencyID] = true
                            InferDependencies(dependencyID, visiting)
                        end
                    end
                end
            end
        end
        visiting[goalID] = nil
    end
    local visiting = {}
    for goalID in pairs(done) do
        local goal = self:GetGoal(guide, goalID)
        if goal and goal.kind ~= "travel" and goal.kind ~= "note" then
            InferDependencies(goalID, visiting)
        end
    end
    self.reconcileStamp = guide.id .. "\0" .. tostring(guide.revision) .. "\0" .. tostring(state)
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

local function GoalRequiresItem(goal)
    if not goal or goal.kind ~= "accept" or goal.route ~= nil or type(goal.text) ~= "string" then
        return nil
    end
    local item = goal.text:match("^Use the (.+) to accept") or goal.text:match("^Use (.+) to accept")
    if not item then return nil end
    local period = item:find("%.", 1, true)
    if period then item = item:sub(1, period - 1) end
    local dropped = item:find(" dropped by ", 1, true)
    if dropped then item = item:sub(1, dropped - 1) end
    return item:match("^%s*(.-)%s*$")
end

-- The step that follows the current one in authored order. Ready-candidate
-- order skips anything still waiting on the current step, which let a later
-- dungeon kill show up as Next while the player was still talking to Neeru.
function Engine:NextRouteGoal(guide, current, state)
    if type(guide) ~= "table" or type(current) ~= "table" then return nil end
    state = state or {}
    local goals = self:ChapterGoals(guide) or guide.goals
    local function Priority(goal)
        if type(goal.priority) == "number" then return goal.priority end
        local _, index = self:GetGoal(guide, goal.id)
        return index or 0
    end
    local function Open(goal)
        if goal.id == current.id or self:IsGoalDone(goal, state, guide) then return false end
        if HasPermanentFailure(goal.conditions, state) then return false end
        if GoalRequiresItem(goal) and not self:IsReady(guide, goal, state) then
            return false
        end
        if goal.kind == "objective" then
            local currentQuest = GoalQuestID(current)
            local goalQuest = GoalQuestID(goal)
            if currentQuest ~= goalQuest and not self:IsReady(guide, goal, state) then
                return false
            end
        end
        return true
    end
    local currentPriority = Priority(current)
    local bestAfter, bestAny
    for _, goal in ipairs(goals) do
        if Open(goal) then
            local priority = Priority(goal)
            if priority > currentPriority then
                if not bestAfter or priority < Priority(bestAfter) then bestAfter = goal end
            elseif not bestAny or priority < Priority(bestAny) then
                bestAny = goal
            end
        end
    end
    return bestAfter or bestAny
end

local LEVEL_WALL = "The next step needs a higher level. Grind, or run a dungeon, until you can take it."

-- No step is ready, and every unfinished step is waiting on a level gate.
function Engine:LevelWallStatus(guide, goals, state)
    local function BlockedByLevel(goal, depth)
        if type(goal) ~= "table" or depth > 8 then return false end
        if HasPermanentFailure(goal.conditions, state) or self:IsGoalDone(goal, state, guide) then
            return true
        end
        local ready, reason = self:IsReady(guide, goal, state)
        if ready then return false end
        if reason == "Level requirement not met." then return true end
        if type(reason) ~= "string" or string.sub(reason, 1, 12) ~= "Waiting for " then
            return false
        end
        local openDependency = false
        for _, dependencyID in ipairs(goal.dependsOn or {}) do
            local dependency = self:GetGoal(guide, dependencyID)
            if not BlockedByLevel(dependency, depth + 1) then return false end
            if dependency and not self:IsGoalDone(dependency, state, guide)
                and not HasPermanentFailure(dependency.conditions, state) then
                openDependency = true
            end
        end
        return openDependency
    end
    local blocked = false
    for _, goal in ipairs(goals or {}) do
        if not HasPermanentFailure(goal.conditions, state) and not self:IsGoalDone(goal, state, guide) then
            if not BlockedByLevel(goal, 0) then return nil end
            blocked = true
        end
    end
    if not blocked then return nil end
    return LEVEL_WALL
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
    -- Compact Casual is one flat route. Zone segments stay for merge/migration
    -- only; floor/pick must not lock the player into a "chapter".
    if guide and guide.compactLibrary then
        return 1
    end
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
    if not ns.charDB or not retired then return end
    if ns.charDB.selectedGuide == "leveling-era" then
        local faction = self.state and self.state.faction
        if faction ~= "Alliance" and faction ~= "Horde" then
            faction = "Horde"
        end
        ns.charDB.selectedGuide = "leveling-casual-" .. string.lower(faction)
    end
    if ns.charDB.casualProgressMerged then return end
    local function GuideForChapter(chapterID)
        local faction = retired[chapterID]
        if faction == true or type(faction) ~= "string" then return nil end
        return ns.guides["leveling-casual-" .. string.lower(faction)]
    end
    local oldID = ns.charDB.selectedGuide
    local target = ns.guides[oldID]
    if retired[oldID] then
        target = GuideForChapter(oldID)
        if target then
            ns.charDB.selectedGuide = target.id
            ns.charDB.eraFloor = oldID
        end
    end
    local function Prefixed(ownerID, goalID, into)
        if type(goalID) ~= "string" then return goalID end
        if into and into.goalByID and into.goalByID[goalID] then return goalID end
        if ownerID and into and into.goalByID then
            local combined = ownerID .. ":" .. goalID
            if into.goalByID[combined] then return combined end
        end
        return nil
    end
    if target and target.goalByID and retired[oldID] and ns.charDB.activeGoal then
        ns.charDB.activeGoal = Prefixed(oldID, ns.charDB.activeGoal, target) or ns.charDB.activeGoal
    end
    local ledgers = ns.charDB.completionLedger
    if type(ledgers) == "table" then
        for guideID, faction in pairs(retired) do
            local guide = type(faction) == "string"
                and ns.guides["leveling-casual-" .. string.lower(faction)]
            local revisions = ledgers[guideID]
            if guide and type(revisions) == "table" then
                local merged = self:GetLedger(guide, true)
                for _, done in pairs(revisions) do
                    if type(done) == "table" then
                        for goalID, value in pairs(done) do
                            local prefixed = Prefixed(guideID, goalID, guide)
                            if prefixed then merged[prefixed] = value end
                        end
                    end
                end
                ledgers[guideID] = nil
            end
        end
        -- Merge even when selectedGuide was cleared or already remapped: the old
        -- merged Era ledger is keyed leveling-era, not a chapter id.
        if type(ledgers["leveling-era"]) == "table" then
            for _, guideID in ipairs({ "leveling-casual-alliance", "leveling-casual-horde" }) do
                local guide = ns.guides[guideID]
                if guide then
                    local merged = self:GetLedger(guide, true)
                    for _, done in pairs(ledgers["leveling-era"]) do
                        if type(done) == "table" then
                            for goalID, value in pairs(done) do
                                if guide.goalByID[goalID] then merged[goalID] = value end
                            end
                        end
                    end
                end
            end
            ledgers["leveling-era"] = nil
        end
    end
    if target and target.goalByID then
        local function MigrateSkipTable(source)
            if type(source) ~= "table" then return end
            ns.charDB.skipped = type(ns.charDB.skipped) == "table" and ns.charDB.skipped or {}
            for goalID, value in pairs(source) do
                if value then
                    local prefixed = Prefixed(oldID, goalID, target) or goalID
                    ns.charDB.skipped[prefixed] = true
                end
            end
        end
        MigrateSkipTable(ns.charDB.deferred)
        MigrateSkipTable(ns.charDB.skipped)
    end
    if type(ns.charDB.deferred) == "table" then
        ns.charDB.deferred = {}
    end
    ns.charDB.casualProgressMerged = true
    ns.charDB.eraProgressMerged = true
end

function Engine:SegmentGoals(guide, state)
    if type(guide.segments) ~= "table" then return guide.goals end
    if guide.compactLibrary then
        self.currentSegment = nil
        return guide.goals
    end
    local segment = self:ActiveSegment(guide, state)
    self.currentSegment = segment
    return segment and segment.goals or {}
end

function Engine:ActiveChapter(guide)
    if type(guide) ~= "table" or type(guide.segmentByID) ~= "table" then
        return nil
    end
    -- Compact Casual never scopes reconcile/candidates to a zone segment.
    if guide.compactLibrary then
        return nil
    end
    local segment = self.currentSegment
    if type(segment) == "table" and guide.segmentByID[segment.id] == segment then
        return segment
    end
    local pick = ns.charDB and (ns.charDB.eraChapterPick or ns.charDB.eraFloor)
    if type(pick) == "string" then
        return guide.segmentByID[pick]
    end
end

function Engine:ChapterGoals(guide)
    local segment = self:ActiveChapter(guide)
    if segment and type(segment.goals) == "table" then
        return segment.goals
    end
end

function Engine:GetGuideProgress(guide, state, segment)
    state = state or self.state or {}
    ns:FinalizeGuides()
    local stamp = guide.id .. "\0" .. tostring(guide.revision) .. "\0" .. tostring(state)
    if self.reconcileStamp ~= stamp then
        self:ReconcileGuide(guide, state)
    end
    local goals = guide.goals
    if segment and segment.goals then
        goals = segment.goals
    elseif guide.segments and not guide.compactLibrary then
        -- Expanded segment guides (old Era-style library rows) report the open
        -- chapter. Compact Casual reports the full faction route.
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
    -- compactLibrary keeps guide.goals as the flattened full route.
    local guideEligible = ns.EvaluateCondition(guide.conditions, state)
    local completed, eligible, total = 0, 0, #goals
    if guideEligible == false then
        return { completed = 0, eligible = 0, total = total, percentage = 0 }
    end
    for _, goal in ipairs(goals) do
        if not HasPermanentFailure(goal.conditions, state) then
            eligible = eligible + 1
            local skipped = ns.SkipLineage and ns.SkipLineage:IsSkipped(goal.id)
            if self:IsGoalDone(goal, state, guide) and not skipped then
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
    if type(goal) ~= "table" then
        return false, "Goal is unavailable.", true
    end
    local eligible, reason = ns.EvaluateCondition(goal.conditions, state)
    if eligible == false then
        return false, reason, true
    end
    for _, dependencyID in ipairs(goal.dependsOn or NO_ENTRIES) do
        if not self:IsDependencyDone(guide, dependencyID, state) then
            return false, "Waiting for " .. dependencyID .. ".", false
        end
    end
    for _, group in ipairs(goal.questPrerequisites or NO_ENTRIES) do
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
    -- Objective steps require the quest to be in the player's quest log.
    -- Without this, an objective with no local dependsOn (or from an earlier chapter)
    -- becomes ready before the player has ever accepted the quest.
    if (goal.kind == "objective" or goal.kind == "gossip") and type(state) == "table" and state.questLogKnown == true then
        local questID = GoalQuestID(goal)
        if type(questID) == "number" then
            local active = state.quests and state.quests[questID]
            local turnedIn = state.completedQuests and state.completedQuests[questID]
            if active == nil and not turnedIn then
                return false, "Quest is not in the quest log.", false
            end
        end
    end
    -- Turn-ins wait until the client marks the quest complete. Imported spines
    -- often omit objective steps; without this, Accept alone made Turn in ready
    -- (Miner's Fortune at 0/1 Cats Eye Emerald).
    if goal.kind == "turnin" and type(state) == "table" and state.questLogKnown == true then
        local questID = GoalQuestID(goal)
        if type(questID) == "number" then
            local active = state.quests and state.quests[questID]
            local turnedIn = state.completedQuests and state.completedQuests[questID]
            if active ~= nil and active.complete ~= true then
                return false, "Quest objectives are incomplete.", false
            end
            if active == nil and TrustedQuestResult(state, goal) and not turnedIn then
                return false, "Quest is not ready to turn in.", false
            end
        end
    end
    -- Pinless item-start accepts ("Use the … to accept …") require the starter item
    -- to be in the player's bags unless the quest has already been accepted or turned in.
    -- Without the item, the player cannot accept the quest and has no authored destination.
    local requiredItem = GoalRequiresItem(goal)
    if requiredItem then
        local questID = GoalQuestID(goal)
        local active = type(questID) == "number" and type(state) == "table"
            and state.quests and state.quests[questID]
        local turnedIn = type(questID) == "number" and type(state) == "table"
            and state.completedQuests and state.completedQuests[questID]
        if not active and not turnedIn then
            local hasItem = ns.PlayerState and ns.PlayerState.HasItem
                and ns.PlayerState:HasItem(requiredItem, state)
            if not hasItem then
                return false, "Requires " .. requiredItem .. " in your bags.", false
            end
        end
    end
    -- Item-start accepts wait behind an earlier incomplete kill/loot source for
    -- the same quest (Lakota'mani / Margol). Without this, Sync could land on
    -- "Use the …" before the starter item dropped.
    if goal.kind == "accept" and type(goal.text) == "string"
        and (goal.text:match("^Use the .+ to accept") or goal.text:match("^Use .+ to accept"))
        and type(guide) == "table" and type(guide.goals) == "table" then
        local questID = GoalQuestID(goal)
        if type(questID) == "number" then
            local active = type(state) == "table" and state.quests and state.quests[questID]
            local turnedIn = type(state) == "table" and state.completedQuests
                and state.completedQuests[questID]
            if not active and not turnedIn then
                local hasStarterItem = requiredItem and ns.PlayerState and ns.PlayerState.HasItem
                    and ns.PlayerState:HasItem(requiredItem, state)
                if not hasStarterItem then
                    local goalPriority = type(goal.priority) == "number" and goal.priority or 0
                    for _, other in ipairs(guide.goals) do
                        if other.id ~= goal.id and GoalQuestID(other) == questID
                            and (other.kind == "note" or other.kind == "objective"
                                or other.kind == "travel")
                            and (type(other.priority) ~= "number" or other.priority < goalPriority)
                            and not HasPermanentFailure(other.conditions, state)
                            and not self:IsGoalDone(other, state, guide) then
                            return false, "Waiting for " .. other.id .. ".", false
                        end
                    end
                end
            end
        end
    end
    return true, eligible == nil and reason or nil, false
end

local CONDITION_GROUP_KEYS = { "all", "any" }

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
    for _, key in ipairs(CONDITION_GROUP_KEYS) do
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
    for _, goal in ipairs(self:ChapterGoals(guide) or guide.goals) do
        local questID = TimerQuestID(goal)
        local seconds = type(goal.timer) == "number" and goal.timer
            or type(goal.timer) == "table" and goal.timer.seconds
        if guide.routeMode ~= "ordered" and type(questID) == "number" and type(seconds) == "number" and seconds > 0
            and not completed[questID] and self:IsGoalDone(goal, state, guide) then
            ConsiderTimer(timers, questID, seconds)
        end
    end
    for questID, info in pairs(state.quests or {}) do
        if type(info) == "table" and not completed[questID] then
            ConsiderTimer(timers, questID, info.timeLeft)
            if guide.routeMode ~= "ordered" and type(info.timeLeft) ~= "number" then
                ConsiderTimer(timers, questID, info.timeAllowed)
            end
        end
    end
    return timers
end

function Engine:UrgentGoals(guide, state)
    local timers = self:ActiveTimers(guide, state)
    local urgent = {}
    -- Only a running timer marks a goal urgent. Walking every goal without one
    -- is most of the garbage a refresh makes.
    if next(timers) == nil then
        return urgent
    end
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
    for _, goal in ipairs(self:ChapterGoals(guide) or guide.goals) do
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
    -- Dungeon routes stay in authored priority. Preferring every step on the
    -- current map pulled later pickups forward, then a cave or city map sent
    -- the player back to an earlier step and left the quest beside them.
    -- Once the player has passed a step, keep going forward while a later
    -- step is ready. A pickup already started still finishes the other ready
    -- steps at that pin before the route leaves.
    local goals = self:SegmentGoals(guide, state)
    local startedStops = {}
    local progress = 0
    local function ObservedAtStop(goal)
        if not FocusedPickupGuide(guide) or not PickupStopKind(goal) then return false end
        if goal.complete and ns.EvaluateCondition(goal.complete, state) == true then
            return true
        end
        local ledger = self:GetLedger(guide, false)
        return ledger ~= nil and ledger[goal.id] == true
    end
    if FocusedPickupGuide(guide) then
        for _, goal in ipairs(goals) do
            if self:IsGoalDone(goal, state, guide) then
                local priority = type(goal.priority) == "number" and goal.priority or 0
                if priority > progress then progress = priority end
            end
            if ObservedAtStop(goal) then
                local destination = RouteDestination(goal)
                if destination then startedStops[#startedStops + 1] = destination end
            end
        end
    end
    local function AtStartedStop(destination)
        for _, stop in ipairs(startedStops) do
            if SamePickupStop(destination, stop) then return true end
        end
        return false
    end
    for index, goal in ipairs(goals) do
        if not self:IsGoalDone(goal, state, guide) then
            local ready, reason, ineligible = self:IsReady(guide, goal, state)
            if reason and (ineligible or ready) then
                self.eligibilityReasons[goal.id] = reason
            end
            if ready then
                local destination = RouteDestination(goal)
                local priority = type(goal.priority) == "number" and goal.priority or index
                local candidate = {
                    goal = goal, index = index,
                    deferred = false,
                    inInstance = GoalMatchesInstance(goal, state, guide),
                    outdoorPin = HasOutdoorDestination(goal),
                    sameMap = destination and destination.mapID == state.mapID or false,
                    startedStop = AtStartedStop(destination),
                    forward = progress > 0 and priority > progress,
                }
                if urgentGoals[goal.id] then
                    urgent[#urgent + 1] = candidate
                else
                    candidates[#candidates + 1] = candidate
                end
            end
        end
    end
    local insideInstance = type(state.instanceID) == "number" and state.instanceID > 0
    local function Sort(a, b)
        local aUrgent = urgentGoals[a.goal.id]
        local bUrgent = urgentGoals[b.goal.id]
        if aUrgent and bUrgent and aUrgent.seconds ~= bUrgent.seconds then
            return aUrgent.seconds < bUrgent.seconds
        end
        -- Finish the dungeon/raid in one pass before capital turn-ins. Hub
        -- "started stop" sorting otherwise yanks RFC to Thunder Bluff and BFD
        -- to Darkshore while Maur/bosses are still ready inside.
        if insideInstance and a.outdoorPin ~= b.outdoorPin then
            return not a.outdoorPin
        end
        if insideInstance and a.inInstance ~= b.inInstance then return a.inInstance end
        if a.startedStop ~= b.startedStop then return a.startedStop end
        if a.forward ~= b.forward then return a.forward end
        local aPriority = a.goal.priority or a.index
        local bPriority = b.goal.priority or b.index
        if aPriority ~= bPriority then return aPriority < bPriority end
        if a.sameMap ~= b.sameMap then return a.sameMap end
        return a.index < b.index
    end
    table.sort(urgent, Sort)
    table.sort(candidates, Sort)
    for _, candidate in ipairs(candidates) do urgent[#urgent + 1] = candidate end
    local ordered = {}
    for _, candidate in ipairs(urgent) do
        ordered[#ordered + 1] = candidate.goal
    end
    self.candidateGoals = ordered
    return ordered
end

local function QuestTurnedIn(state, questID)
    if type(state) ~= "table" or type(state.completedQuests) ~= "table" then
        return false
    end
    if state.completedQuests[questID] ~= true then
        return false
    end
    if state.questCompletionKnown == true then
        return true
    end
    return type(state.watchedQuests) == "table" and state.watchedQuests[questID] == true
end

local function QuestFlaggedCompleted(api, questID)
    if type(questID) ~= "number" then return false end
    api = api or _G
    local questLog = type(api) == "table" and api.C_QuestLog or nil
    local flag = type(questLog) == "table" and questLog.IsQuestFlaggedCompleted or nil
    if type(flag) ~= "function" and type(api) == "table" then
        flag = api.IsQuestFlaggedCompleted
    end
    if type(flag) ~= "function" then return false end
    local ok, done = pcall(flag, questID)
    return ok and done == true
end

function Engine:QuestChainBypassed(goal, state, api)
    if type(goal) ~= "table" then return false end
    local questID = GoalQuestID(goal)
    if type(questID) ~= "number" then return false end
    local alternates = ns.questBreadcrumbBypass and ns.questBreadcrumbBypass[questID]
    if type(alternates) ~= "table" then return false end
    api = api or _G
    if goal.kind == "accept" then
        if type(state) == "table" then
            if type(state.quests) == "table" and state.quests[questID] then
                return true
            end
            if QuestTurnedIn(state, questID) then
                return true
            end
        end
        if QuestFlaggedCompleted(api, questID) then
            return true
        end
        for _, altID in ipairs(alternates) do
            if type(state) == "table" and type(state.quests) == "table" and state.quests[altID] then
                return true
            end
            if QuestTurnedIn(state, altID) or QuestFlaggedCompleted(api, altID) then
                return true
            end
        end
        return false
    end
    if goal.kind == "turnin" or goal.kind == "objective" then
        for _, altID in ipairs(alternates) do
            if type(state) == "table" and type(state.quests) == "table" and state.quests[altID] then
                return true
            end
            if QuestTurnedIn(state, altID) or QuestFlaggedCompleted(api, altID) then
                return true
            end
        end
    end
    return false
end

function Engine:ClearBypassedRefusals(guide, state, api)
    local report = ns.charDB and ns.charDB.notOffered
    if type(report) ~= "table" or type(guide) ~= "table" then return false end
    local cleared = false
    for goalID, entry in pairs(report) do
        if type(entry) == "table" and entry.guide == guide.id then
            local goal = self:GetGoal(guide, goalID)
            if goal and self:QuestChainBypassed(goal, state, api) then
                report[goalID] = nil
                cleared = true
            end
        end
    end
    return cleared
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
    -- Compact Casual stores one cursor for the whole faction route.
    if not guide or guide.compactLibrary or guide.series == "casual" then
        return guide and guide.id
    end
    local segmented = guide.id == "leveling-era"
    if not segmented then
        return guide.id
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

-- routeOnly accepts the open guide's quests before the rest of the catalog,
-- which is read a few quests per refresh and takes dozens of refreshes.
local function StateReadyForResync(state, routeOnly)
    return type(state) == "table"
        and state.questLogKnown == true
        and (state.questCompletionKnown == true or (routeOnly == true and state.questRouteKnown == true))
        and state.professionsKnown == true
        and type(state.level) == "number"
        and type(state.classID) == "number"
        and type(state.raceID) == "number"
        and type(state.faction) == "string"
end

function Engine:ClearSavedPosition(guide)
    local active = guide and self:GetGoal(guide, ns.charDB.activeGoal)
    local storeKey = ActiveGoalStorageKey(guide, active or ns.charDB.activeGoal)
    ns.charDB.activeGoalByGuide = ns.charDB.activeGoalByGuide or {}
    if storeKey then ns.charDB.activeGoalByGuide[storeKey] = nil end
    ns.charDB.activeGoal = nil
    ns.charDB.history = {}
    if type(ns.charDB.notOffered) == "table" then
        for goalID, entry in pairs(ns.charDB.notOffered) do
            if type(entry) == "table" and entry.guide == guide.id then
                ns.charDB.notOffered[goalID] = nil
            end
        end
    end
    self.currentGoal = nil
    self.reviewingGoal = nil
end

local function QuestIDFromComplete(condition)
    if type(condition) ~= "table" then
        return nil
    end
    local quest = condition.quest
    if type(quest) == "table" and type(quest.id) == "number" then
        return quest.id
    end
    local objective = condition.questObjective
    if type(objective) == "table" and type(objective.id) == "number" then
        return objective.id
    end
end

local function ClearStaleDeferred(guide, state)
    if type(ns.charDB.deferred) ~= "table" then
        return
    end
    for goalID, skipped in pairs(ns.charDB.deferred) do
        if skipped then
            local goal = Engine:GetGoal(guide, goalID)
            if goal and goal.complete then
                local evaluation = ns.EvaluateCondition(goal.complete, state)
                if evaluation == false and QuestObservableCompletion(goal.complete)
                    and TrustedQuestResult(state, goal) then
                    local questID = QuestIDFromComplete(goal.complete)
                    local active = questID and state.quests and state.quests[questID]
                    if not active then
                        ns.charDB.deferred[goalID] = nil
                    end
                end
            end
        end
    end
end

-- Drop skips on steps the client already finished so a finished dungeon does
-- not sit on "remaining steps were skipped" after the quests are turned in.
local function ClearStaleSkips(guide, state)
    if not ns.SkipLineage or type(ns.charDB.skipped) ~= "table" then
        return
    end
    for goalID, skipped in pairs(ns.charDB.skipped) do
        if skipped then
            local goal = Engine:GetGoal(guide, goalID)
            if goal and goal.complete then
                local evaluation = ns.EvaluateCondition(goal.complete, state)
                if evaluation == true then
                    ns.SkipLineage:Clear(goalID)
                end
            end
        end
    end
end

local function HasSkippedRemainder(guide, goals, state)
    if not ns.SkipLineage or type(goals) ~= "table" then
        return false
    end
    for _, goal in ipairs(goals) do
        if ns.SkipLineage:IsSkipped(goal.id) and not HasPermanentFailure(goal.conditions, state) then
            local evaluation = goal.complete and ns.EvaluateCondition(goal.complete, state)
            if evaluation ~= true then
                local ledger = Engine:GetLedger(guide, false)
                if not (ledger and ledger[goal.id]) then
                    return true
                end
            end
        end
    end
    return false
end

function Engine:ResyncCurrent(state)
    local guide = ns.charDB and ns.guides[ns.charDB.selectedGuide]
    if not guide then return false end
    if not state and ns.PlayerState and ns.PlayerState.Capture and ns.GetTrackedQuestIDs then
        local ids = ns.GetTrackedQuestIDs()
        state = ns.PlayerState:Capture(nil, ids, #ids, ns.GetTrackedAchievementIDs and ns.GetTrackedAchievementIDs())
    end
    if not StateReadyForResync(state) then
        self.resyncPending = guide.id
        return false
    end
    self.resyncPending = nil
    self:ClearSavedPosition(guide)
    self.inferredCompletedByGuide = nil
    ClearStaleDeferred(guide, state)
    -- Sync keeps hard skips. Use ResetSkipsCurrent (options) to clear them.
    self:Refresh(state)
    return true
end

-- Clear every hard skip on the selected guide, then resync the cursor.
function Engine:ResetSkipsCurrent(state)
    local guide = ns.charDB and ns.guides[ns.charDB.selectedGuide]
    if not guide or not ns.SkipLineage then
        return false
    end
    ns.SkipLineage:ClearGuide(guide)
    return self:ResyncCurrent(state)
end

function Engine:ResyncUpdatedGuide(guide, state)
    ns.charDB.guideRevisions = ns.charDB.guideRevisions or {}
    local savedRevision = ns.charDB.guideRevisions[guide.id]
    if savedRevision == nil then
        ns.charDB.guideRevisions[guide.id] = guide.revision
        return false
    end
    if savedRevision == guide.revision or not StateReadyForResync(state) then return false end
    self:ClearSavedPosition(guide)
    self.inferredCompletedByGuide = nil
    ns.charDB.guideRevisions[guide.id] = guide.revision
    return true
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
    local history = ns.charDB.history
    while #history > 30 do
        table.remove(history, 1)
    end
    self.currentGoal = goal
    self.reviewingGoal = nil
end

function Engine:NotePosition()
    local state = self.state
    if type(state) ~= "table" or not ns.PlayerState or not ns.PlayerState.CapturePosition then
        return false
    end
    local mapID, x, y = ns.PlayerState:CapturePosition()
    if type(mapID) ~= "number" then
        return false
    end
    local sameMap = mapID == state.mapID
    state.mapID, state.x, state.y = mapID, x, y
    -- Subzone noise fires while standing up to walk. The waypoint does not
    -- move, and TomTom already follows the player across the same map.
    if sameMap then
        return false
    end
    local goal = self.currentGoal
    if goal and self.currentGuide and goal.complete and ns.db and ns.db.autoAdvance ~= false
        and ns.EvaluateCondition(goal.complete, state) == true then
        self:Refresh(state)
        return true
    end
    if ns.UI and ns.UI.UpdateArrow then
        ns.UI:UpdateArrow()
    end
    return true
end

function Engine:Refresh(state)
    ns:FinalizeGuides()
    if not ns.charDB then
        return
    end
    self.candidateGoals = nil
    self:MigrateEraProgress()
    local guide = ns.guides[ns.charDB.selectedGuide]
    if not state and ns.PlayerState and ns.PlayerState.Capture and ns.QuestQuery then
        local ids, priorityCount = ns.QuestQuery()
        state = ns.PlayerState:Capture(nil, ids, priorityCount,
            ns.GetTrackedAchievementIDs and ns.GetTrackedAchievementIDs())
    end
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
        if self.state and ns.PlayerState and ns.PlayerState.QuestLogFingerprint then
            self.questLogFingerprint = ns.PlayerState:QuestLogFingerprint(self.state)
        end
        return
    end
    -- Casual waits for quest APIs before advancing (separate from Sync pending).
    if guide.compactLibrary and not StateReadyForResync(state, true) then
        self.casualAwaitingQuestState = true
    elseif self.casualAwaitingQuestState and StateReadyForResync(state, true) then
        self.casualAwaitingQuestState = nil
        self.inferredCompletedByGuide = nil
        local saved = self:GetGoal(guide, ns.charDB.activeGoal)
        if not saved or self:IsGoalDone(saved, state, guide) then
            self:ClearSavedPosition(guide)
        end
    end
    if self.resyncPending == guide.id and StateReadyForResync(state) then
        self.resyncPending = nil
        self:ClearSavedPosition(guide)
        self.inferredCompletedByGuide = nil
    end
    self:ResyncUpdatedGuide(guide, state)
    ClearStaleSkips(guide, state)
    local chapterGoals = self:ChapterGoals(guide)
    self:ReconcileGuide(guide, state, chapterGoals)
    if self:ReleaseUnconfirmedRefusals(guide, state) then
        self.reconcileStamp = nil
        self:ReconcileGuide(guide, state, chapterGoals)
    end
    if self:ClearBypassedRefusals(guide, state) then
        self.reconcileStamp = nil
        self:ReconcileGuide(guide, state, chapterGoals)
    end
    ValidateActiveGoal(self, guide)
    local eligible, reason = ns.EvaluateCondition(guide.conditions, state)
    if eligible == false then
        self.currentGoal = nil
        self.status = reason
    elseif guide.compactLibrary and self.casualAwaitingQuestState then
        local active = self:GetGoal(guide, ns.charDB.activeGoal)
        self.currentGoal = active
        self.status = "Loading quest progress…"
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
            and not (ns.charDB.deferred and ns.charDB.deferred[nextGoal.id])
            and not (ns.SkipLineage and ns.SkipLineage:IsSkipped(nextGoal.id))
            and type(nextGoal.priority) == "number" and type(active.priority) == "number"
            and nextGoal.priority < active.priority
        local onChapter = guide.compactLibrary
            or not self.currentSegment or not active or not active.segmentID
            or active.segmentID == self.currentSegment.id
        local activeSkipped = (ns.charDB.deferred and ns.charDB.deferred[active and active.id])
            or (ns.SkipLineage and active and ns.SkipLineage:IsSkipped(active.id))
        if active and self.reviewingGoal == active.id and not shortPreempt then
            self.currentGoal = active
            self.status = "Reviewing a previous step."
        elseif blockedGoal then
            self:SetActiveGoal(blockedGoal, active ~= nil)
            self.status = ("Blocked: %s does not offer quest %d. Its prerequisites are already turned in, so this step stays until the quest is offered or you check it off.")
                :format(tostring(blockedEntry.npc), tonumber(blockedEntry.quest) or 0)
        elseif onChapter and active and ready and not activeFinished and not activeSkipped
            and (not observedDone or not ns.db.autoAdvance or observedUnknown) and not shortPreempt
            and not earlierObjective then
            self.currentGoal = active
        elseif candidates[1] then
            self:SetActiveGoal(candidates[1], active ~= nil)
            self.status = eligible == nil and reason or nil
        else
            self.currentGoal = nil
            local segment = (not guide.compactLibrary) and self.currentSegment or nil
            local progressGoals = (segment and segment.goals) or guide.goals
            local levelWall = self:LevelWallStatus(guide, progressGoals, state)
            local progress = self:GetGuideProgress(guide, state, segment)
            if segment and type(state.level) == "number" and segment.levelMin and state.level < segment.levelMin then
                self.status = LEVEL_WALL
            elseif levelWall then
                self.status = levelWall
            elseif progress.percentage >= 100 then
                self.status = "Guide complete."
            else
                local blocked
                for _, goal in ipairs(progressGoals) do
                    if not HasPermanentFailure(goal.conditions, state)
                        and not self:IsGoalDone(goal, state, guide) then
                        local _, goalReason = self:IsReady(guide, goal, state)
                        blocked = goalReason
                        break
                    end
                end
                if blocked == "Quest is not in the quest log." then
                    self.status = "No quest step is available. A required quest is missing from your log. Use Back to revisit the pickup, then Skip to skip its chain, or choose another guide."
                elseif blocked then
                    self.status = blocked
                elseif HasSkippedRemainder(guide, progressGoals, state) then
                    self.status = "No active step. Remaining steps were skipped — Reset Skips in options, or Complete them."
                elseif progress.completed >= progress.eligible then
                    self.status = "Guide complete."
                else
                    -- Leftover steps are unfinished but not skipped and not ready
                    -- (no reason). Do not claim the player skipped them.
                    self.status = "No active step."
                end
            end
        end
        if guide.segments and not guide.compactLibrary and self.currentSegment
            and not self.reviewingGoal then
            self:LockEraFloor(guide, state)
        end
        if self.currentGoal and guide.segmentByID and self.currentGoal.segmentID
            and not guide.compactLibrary then
            self.currentSegment = guide.segmentByID[self.currentGoal.segmentID] or self.currentSegment
        end
    end
    if ns.UI and ns.UI.Update then
        if ns.Navigation then ns.Navigation.deferClientPins = true end
        ns.UI:Update(self)
        if ns.Navigation then ns.Navigation.deferClientPins = false end
        if ns.Navigation and C_Timer and type(C_Timer.After) == "function" and ns.UI.UpdateArrow then
            C_Timer.After(0, function()
                if ns.UI and ns.UI.UpdateArrow then ns.UI:UpdateArrow() end
            end)
        end
    end
    if ns.MapPins then
        ns.MapPins:HookMap()
        ns.MapPins:Refresh()
    end
    if self.state and ns.PlayerState and ns.PlayerState.QuestLogFingerprint then
        self.questLogFingerprint = ns.PlayerState:QuestLogFingerprint(self.state)
    end
end

function Engine:SameQuestLog(state)
    if self.questLogFingerprint == nil or not ns.PlayerState or not ns.PlayerState.QuestLogFingerprint then
        return false
    end
    return self.questLogFingerprint == ns.PlayerState:QuestLogFingerprint(state)
end

function Engine:CompleteCurrent()
    if self.currentGoal then
        local goal = self.currentGoal
        self:GetLedger(self.currentGuide, true)[goal.id] = true
        if ns.SkipLineage then
            ns.SkipLineage:Clear(goal.id)
            -- Reconcile drops ledger credit the quest log contradicts, so only
            -- a pass moves the route off this step.
            local state = self.state
            if goal.complete and QuestObservableCompletion(goal.complete)
                and ns.EvaluateCondition(goal.complete, state) == false
                and TrustedQuestResult(state, goal) then
                ns.SkipLineage:Pass(goal.id)
            end
        end
        if type(ns.charDB.deferred) == "table" then
            ns.charDB.deferred[self.currentGoal.id] = nil
        end
        self.reviewingGoal = nil
        self:Refresh()
    end
end

function Engine:PreviewSkip(goal)
    goal = goal or self.currentGoal
    if not self.currentGuide or not goal or not ns.SkipLineage then
        return {}
    end
    return ns.SkipLineage:Preview(self.currentGuide, goal)
end

-- confirm=true applies the cascade. Without confirm, returns the forced-out ids.
function Engine:SkipCurrent(confirm)
    local guide = self.currentGuide
    local goal = self.currentGoal
    if not guide or not goal or not ns.SkipLineage then
        return false
    end
    if not ns.SkipLineage:SkipAllowed(guide) then
        return false
    end
    local cascade = ns.SkipLineage:Preview(guide, goal)
    if confirm ~= true and #cascade > 0 then
        return cascade
    end
    ns.SkipLineage:Apply(guide, goal, cascade)
    self.reviewingGoal = nil
    self:Refresh()
    return true
end

-- Next is an alias for confirmed skip (no StaticPopup). Tracker Skip uses the
-- confirm dialog; keep Next for callers that already confirmed the cascade.
Engine.Next = function(self)
    return self:SkipCurrent(true)
end

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
    if not previousID and self.currentGuide and not self.currentGoal then
        previousID = ns.charDB.activeGoal
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
        if type(ns.charDB.deferred) == "table" then
            ns.charDB.deferred[previousID] = nil
        end
        if ns.SkipLineage then
            ns.SkipLineage:Clear(previousID)
        end
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
        local faction = ns.retiredEraGuides[guideID]
        if type(faction) ~= "string" then
            faction = (self.state and self.state.faction) or "Horde"
        end
        ns.charDB.eraChapterPick = guideID
        ns.charDB.eraFloor = guideID
        guideID = "leveling-casual-" .. string.lower(faction)
    end
    if guideID == "leveling-era" then
        local faction = (self.state and self.state.faction) or "Horde"
        if faction ~= "Alliance" and faction ~= "Horde" then
            faction = "Horde"
        end
        guideID = "leveling-casual-" .. string.lower(faction)
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
        if guide.compactLibrary then
            -- Direct Casual picks are not zone chapters.
            ns.charDB.eraChapterPick = nil
        end
        local restoreKey = guide.compactLibrary and guideID or (chapterID or guideID)
        local saved = ns.charDB.activeGoalByGuide[restoreKey]
        if (not saved or not self:GetGoal(guide, saved)) and chapterID then
            saved = ns.charDB.activeGoalByGuide[chapterID]
        end
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
