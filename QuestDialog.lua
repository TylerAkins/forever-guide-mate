local _, ns = ...

local QuestDialog = {}
ns.QuestDialog = QuestDialog

function QuestDialog:Enabled()
    return ns.db and ns.db.autoQuest ~= false and ns.charDB and ns.guides and true or false
end

function QuestDialog:Uses(questID)
    if not self:Enabled() or type(questID) ~= "number" then return false end
    local guide = ns.guides[ns.charDB.selectedGuide]
    return guide and ns.GuideUsesQuest(guide, questID) or false
end

-- The tracker step is still the one that gets accepted on its own detail
-- window. A greeting list can also offer the next quest from that same giver.
function QuestDialog:CurrentQuestID(kind)
    local goal = ns.Engine and ns.Engine.currentGoal or nil
    if type(goal) ~= "table" or goal.kind ~= kind then return nil end
    local complete = goal.complete
    local quest = type(complete) == "table" and complete.quest or nil
    local questID = type(quest) == "table" and quest.id or nil
    if type(questID) ~= "number" then return nil end
    return questID
end

function QuestDialog:CurrentAcceptQuestID()
    return self:CurrentQuestID("accept")
end

function QuestDialog:GoalQuestID(goal)
    local complete = type(goal) == "table" and goal.complete or nil
    local quest = type(complete) == "table" and complete.quest or nil
    local questID = type(quest) == "table" and quest.id or nil
    if type(questID) ~= "number" then return nil end
    return questID
end

-- "Rahauro on Elder Rise" and "Master Vornal in Sen'jin Village" name the giver.
function QuestDialog:GiverKey(goal)
    local route = type(goal) == "table" and goal.route or nil
    local point = type(route) == "table" and route[#route] or nil
    local label = type(point) == "table" and point.label or nil
    if type(label) ~= "string" or label == "" then return nil end
    return label:match("^(.-) in ") or label:match("^(.-) on ") or label
end

function QuestDialog:GoalTitle(goal, kind)
    if type(goal) ~= "table" or goal.kind ~= kind or type(goal.text) ~= "string" then return nil end
    local pattern = kind == "accept" and "^Accept (.-) from " or "^Turn in (.-) to "
    return goal.text:match(pattern)
end

-- Quest names are not a separate field. Accept and turn-in steps lead with them.
function QuestDialog:TitleMatches(title, kind)
    if type(title) ~= "string" or title == "" then return false end
    local goal = ns.Engine and ns.Engine.currentGoal or nil
    return self:GoalTitle(goal, kind) == title
end

function QuestDialog:DialogGiver()
    if type(self.dialogGiver) == "string" then return self.dialogGiver end
    local goal = ns.Engine and ns.Engine.currentGoal or nil
    local giver = self:GiverKey(goal)
    if type(giver) == "string" then self.dialogGiver = giver end
    return giver
end

-- The open list belongs to one giver. Take the tracker step first, then the
-- other ready steps that same giver is offering, one quest at a time.
function QuestDialog:SameGiverGoals(kind)
    local engine = ns.Engine
    local current = engine and engine.currentGoal or nil
    if type(current) ~= "table" or (current.kind ~= "accept" and current.kind ~= "turnin") then
        return {}
    end
    local giver = self:DialogGiver()
    local guide = ns.charDB and ns.guides[ns.charDB.selectedGuide] or nil
    if type(giver) ~= "string" or type(guide) ~= "table" or type(engine.IsReady) ~= "function" then
        if current.kind == kind and self:GiverKey(current) == giver then return { current } end
        return {}
    end
    local goals, seen = {}, {}
    local function Add(goal)
        if type(goal) ~= "table" or goal.kind ~= kind or seen[goal.id] then return end
        if self:GiverKey(goal) ~= giver then return end
        seen[goal.id] = true
        goals[#goals + 1] = goal
    end
    Add(current)
    local pool = guide.goals
    local segment = engine.currentSegment
    if type(segment) == "table" and type(segment.goals) == "table"
        and type(guide.segmentByID) == "table" and guide.segmentByID[segment.id] == segment then
        pool = segment.goals
    end
    local state = engine.state or {}
    local extra = {}
    for _, goal in ipairs(pool or {}) do
        if type(goal) == "table" and goal.kind == kind and not seen[goal.id]
            and self:GiverKey(goal) == giver then
            local ready = engine:IsReady(guide, goal, state)
            local done = type(engine.IsGoalDone) == "function" and engine:IsGoalDone(goal, state, guide)
            if ready and not done then
                extra[#extra + 1] = goal
            end
        end
    end
    table.sort(extra, function(a, b)
        local aPriority = a.priority or 0
        local bPriority = b.priority or 0
        if aPriority ~= bPriority then return aPriority < bPriority end
        return tostring(a.id) < tostring(b.id)
    end)
    for _, goal in ipairs(extra) do
        Add(goal)
    end
    return goals
end

function QuestDialog:RowMatchesGoal(goal, questID, title, kind)
    local wanted = self:GoalQuestID(goal)
    if type(questID) == "number" and questID > 0 then return wanted == questID end
    local expected = self:GoalTitle(goal, kind)
    return type(title) == "string" and title ~= "" and expected == title
end

function QuestDialog:Accepts(questID)
    return self:Enabled() and type(questID) == "number" and questID == self:CurrentAcceptQuestID()
end

local function Call(fn, ...)
    if type(fn) ~= "function" then return nil end
    local ok, a, b, c, d, e, f, g, h = pcall(fn, ...)
    if ok then return a, b, c, d, e, f, g, h end
end

local function ReportedComplete(value)
    return value == true or (type(value) == "number" and value > 0)
end

function QuestDialog:ActiveQuestReady(api, quest)
    if type(quest) ~= "table" or not self:Uses(quest.questID) then return false end
    if quest.isComplete == false or quest.isComplete == 0 then return false end
    if ReportedComplete(quest.isComplete) then return true end
    local questLog = type(api) == "table" and api.C_QuestLog or nil
    if type(questLog) == "table" and type(questLog.ReadyForTurnIn) == "function" then
        return ReportedComplete(Call(questLog.ReadyForTurnIn, quest.questID))
    end
    if type(questLog) == "table" and type(questLog.IsComplete) == "function" then
        return ReportedComplete(Call(questLog.IsComplete, quest.questID))
    end
    return false
end

function QuestDialog:GossipQuestID(quest)
    if type(quest) == "number" and quest > 0 then return quest end
    if type(quest) ~= "table" then return nil end
    local questID = quest.questID or quest.questId
    if type(questID) == "number" and questID > 0 then return questID end
end

function QuestDialog:SelectGossipQuest(entries, goals, kind, selectFn)
    if type(entries) ~= "table" or #goals == 0 then return false end
    for _, goal in ipairs(goals) do
        for _, entry in ipairs(entries) do
            local questID = self:GossipQuestID(entry)
            local title = type(entry) == "table" and entry.title or nil
            if self:RowMatchesGoal(goal, questID, title, kind) then
                if kind == "accept" then
                    self.expectDetailAccept = true
                    self.pendingAcceptID = questID or self:GoalQuestID(goal)
                else
                    self.pendingTurnInID = questID or self:GoalQuestID(goal)
                end
                selectFn(questID or self:GoalQuestID(goal))
                return true
            end
        end
    end
    return false
end

function QuestDialog:SelectGossip(api)
    local info = type(api) == "table" and api.C_GossipInfo or nil
    if type(info) ~= "table" then return end
    local current = ns.Engine and ns.Engine.currentGoal or nil
    local acceptFirst = type(current) ~= "table" or current.kind ~= "turnin"
    local function Accepts()
        if type(info.GetAvailableQuests) ~= "function" or type(info.SelectAvailableQuest) ~= "function" then
            return false
        end
        local quests = Call(info.GetAvailableQuests)
        return self:SelectGossipQuest(quests, self:SameGiverGoals("accept"), "accept", function(questID)
            Call(info.SelectAvailableQuest, questID)
        end)
    end
    local function TurnIns()
        if type(info.GetActiveQuests) ~= "function" or type(info.SelectActiveQuest) ~= "function" then
            return false
        end
        local quests = Call(info.GetActiveQuests)
        if type(quests) ~= "table" then return false end
        local ready = {}
        for _, quest in ipairs(quests) do
            if self:ActiveQuestReady(api, quest) then
                ready[#ready + 1] = quest
            end
        end
        if self:SelectGossipQuest(ready, self:SameGiverGoals("turnin"), "turnin", function(questID)
            Call(info.SelectActiveQuest, questID)
        end) then
            return true
        end
        for _, quest in ipairs(ready) do
            if self:ActiveQuestReady(api, quest) then
                local questID = self:GossipQuestID(quest)
                self.pendingTurnInID = questID
                Call(info.SelectActiveQuest, questID)
                return true
            end
        end
        return false
    end
    if acceptFirst then
        if Accepts() then return true end
        if TurnIns() then return true end
    else
        if TurnIns() then return true end
        if Accepts() then return true end
    end
    return false
end

function QuestDialog:GreetingAvailable(api, index)
    local title
    if type(api.GetAvailableTitle) == "function" then
        local value = Call(api.GetAvailableTitle, index)
        if type(value) == "string" then title = value end
    end
    local questID
    if type(api.GetAvailableQuestInfo) == "function" then
        local first, _, _, _, fifth, _, _, eighth = Call(api.GetAvailableQuestInfo, index)
        if type(first) == "string" and not title then title = first end
        if type(eighth) == "number" and eighth > 0 then questID = eighth
        elseif type(fifth) == "number" and fifth > 0 then questID = fifth
        end
    end
    return title, questID
end

function QuestDialog:GreetingActive(api, index)
    local title, isComplete = Call(api.GetActiveTitle, index)
    if type(title) ~= "string" then title = nil end
    local questID
    if type(api.GetActiveQuestID) == "function" then
        local value = Call(api.GetActiveQuestID, index)
        if type(value) == "number" then questID = value end
    end
    if isComplete ~= true and isComplete ~= false and isComplete ~= 1 and isComplete ~= 0 then
        isComplete = nil
    end
    return title, questID, isComplete
end

function QuestDialog:SelectGreetingAvailable(api)
    if type(api.GetNumAvailableQuests) ~= "function" or type(api.SelectAvailableQuest) ~= "function" then
        return false
    end
    local num = Call(api.GetNumAvailableQuests)
    if type(num) ~= "number" or num < 1 then return false end
    local goals = self:SameGiverGoals("accept")
    for _, goal in ipairs(goals) do
        for index = 1, num do
            local title, questID = self:GreetingAvailable(api, index)
            if self:RowMatchesGoal(goal, questID, title, "accept") then
                self.expectDetailAccept = true
                self.pendingAcceptID = questID or self:GoalQuestID(goal)
                Call(api.SelectAvailableQuest, index)
                return true
            end
        end
    end
    return false
end

function QuestDialog:SelectGreetingActive(api)
    if type(api.GetNumActiveQuests) ~= "function" or type(api.SelectActiveQuest) ~= "function" then
        return false
    end
    local num = Call(api.GetNumActiveQuests)
    if type(num) ~= "number" or num < 1 then return false end
    local goals = self:SameGiverGoals("turnin")
    for _, goal in ipairs(goals) do
        for index = 1, num do
            local title, questID, isComplete = self:GreetingActive(api, index)
            if isComplete ~= false and isComplete ~= 0
                and self:RowMatchesGoal(goal, questID, title, "turnin") then
                self.pendingTurnInID = questID or self:GoalQuestID(goal)
                Call(api.SelectActiveQuest, index)
                return true
            end
        end
    end
    return false
end

-- Several quests at one NPC open a greeting list instead of gossip. Select the
-- tracker step, or the next ready quest from that same giver.
function QuestDialog:SelectGreeting(api)
    if not self:Enabled() or type(api) ~= "table" then return false end
    local goal = ns.Engine and ns.Engine.currentGoal or nil
    local kind = type(goal) == "table" and goal.kind or nil
    if kind == "accept" and self:SelectGreetingAvailable(api) then return true end
    if self:SelectGreetingActive(api) then return true end
    return false
end

local function Later(fn)
    if C_Timer and type(C_Timer.After) == "function" then
        C_Timer.After(0, fn)
    else
        fn()
    end
end

function QuestDialog:Accept(api)
    local questID = Call(api.GetQuestID)
    local selected = self.expectDetailAccept and questID == self.pendingAcceptID
    if self:Accepts(questID) or selected then
        self.expectDetailAccept = nil
        self.pendingAcceptID = nil
        Later(function() Call(api.AcceptQuest) end)
    end
end

function QuestDialog:Progress(api)
    local questID = Call(api.GetQuestID)
    local wanted = self:Uses(questID) or questID == self.pendingTurnInID
    if not wanted or not Call(api.IsQuestCompletable) then return end
    local questLog = type(api) == "table" and api.C_QuestLog or nil
    if type(questLog) == "table" and type(questLog.IsComplete) == "function" then
        local complete = Call(questLog.IsComplete, questID)
        if complete == false or complete == 0 then return end
    end
    self.pendingTurnInID = nil
    -- Completing inside the progress event is ignored. The click has to land
    -- after the list has finished opening the quest.
    Later(function() Call(api.CompleteQuest) end)
end

function QuestDialog:Reward(api)
    local questID = Call(api.GetQuestID)
    local choices = Call(api.GetNumQuestChoices)
    if (self:Uses(questID) or questID == self.pendingTurnInID) and type(choices) == "number" and choices <= 1 then
        self.pendingTurnInID = nil
        Later(function() Call(api.GetQuestReward, 1) end)
    end
end

function QuestDialog:FrameShown(frame)
    return type(frame) == "table" and type(frame.IsVisible) == "function"
        and Call(frame.IsVisible, frame) == true
end

function QuestDialog:Retry(api)
    api = api or _G
    if not self:Enabled() then return false end
    local questFrame = api.QuestFrame
    local gossipFrame = api.GossipFrame
    local greeting = (type(questFrame) == "table" and questFrame.GreetingPanel)
        or (type(gossipFrame) == "table" and gossipFrame.GreetingPanel)
    if self:FrameShown(greeting) then
        if not self:SelectGossip(api) then self:SelectGreeting(api) end
        return true
    end
    if self:FrameShown(api.QuestFrameAcceptButton) then
        self:Dispatch("QUEST_DETAIL", api)
        return true
    end
    if self:FrameShown(api.QuestFrameCompleteButton) then
        self:Dispatch("QUEST_PROGRESS", api)
        return true
    end
    if self:FrameShown(api.QuestFrameCompleteQuestButton) then
        self:Dispatch("QUEST_COMPLETE", api)
        return true
    end
    return false
end

function QuestDialog:ScheduleRetry(api)
    if not (C_Timer and type(C_Timer.After) == "function") then return end
    if (self.retryCount or 0) >= 6 then return end
    self.retryCount = (self.retryCount or 0) + 1
    local generation = self.retryCount
    C_Timer.After(0.3, function()
        if self.retryCount ~= generation or not QuestDialog:Retry(api) then
            if self.retryCount == generation then self.retryCount = 0 end
            return
        end
        QuestDialog:ScheduleRetry(api)
    end)
end

function QuestDialog:Dispatch(event, api)
    if event == "GOSSIP_SHOW" then
        if not self:SelectGossip(api) then self:SelectGreeting(api) end
    elseif event == "QUEST_GREETING" then self:SelectGreeting(api)
    elseif event == "QUEST_DETAIL" then self:Accept(api)
    elseif event == "QUEST_PROGRESS" then self:Progress(api)
    elseif event == "QUEST_COMPLETE" then self:Reward(api)
    end
end

function QuestDialog:Handle(event, api)
    api = api or _G
    if event == "GOSSIP_SHOW" or event == "QUEST_GREETING" then
        self.dialogGiver = nil
        self.expectDetailAccept = nil
        self.pendingAcceptID = nil
        self.pendingTurnInID = nil
        self.retryCount = 0
    end
    self:Dispatch(event, api)
    self:ScheduleRetry(api)
end
