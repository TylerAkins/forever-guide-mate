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

-- Accept only the quest the tracker is asking for right now. Later steps in
-- the same guide stay in the gossip window so they do not fill the quest log.
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

-- Quest names are not a separate field. Accept and turn-in steps lead with them.
function QuestDialog:TitleMatches(title, kind)
    if type(title) ~= "string" or title == "" then return false end
    local goal = ns.Engine and ns.Engine.currentGoal or nil
    if type(goal) ~= "table" or goal.kind ~= kind or type(goal.text) ~= "string" then return false end
    local pattern = kind == "accept" and "^Accept (.-) from " or "^Turn in (.-) to "
    return goal.text:match(pattern) == title
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

function QuestDialog:SelectGossip(api)
    local info = type(api) == "table" and api.C_GossipInfo or nil
    if type(info) ~= "table" then return end
    if type(info.GetAvailableQuests) == "function" and type(info.SelectAvailableQuest) == "function" then
        local quests = Call(info.GetAvailableQuests)
        if type(quests) == "table" then
            for _, quest in ipairs(quests) do
                local questID = type(quest) == "table" and quest.questID or nil
                if self:Accepts(questID) then
                    Call(info.SelectAvailableQuest, questID)
                    return true
                end
            end
        end
    end
    if type(info.GetActiveQuests) == "function" and type(info.SelectActiveQuest) == "function" then
        local quests = Call(info.GetActiveQuests)
        if type(quests) == "table" then
            for _, quest in ipairs(quests) do
                if self:ActiveQuestReady(api, quest) then
                    Call(info.SelectActiveQuest, quest.questID)
                    return true
                end
            end
        end
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
        if type(eighth) == "number" then questID = eighth
        elseif type(fifth) == "number" then questID = fifth
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
    for index = 1, num do
        local title, questID = self:GreetingAvailable(api, index)
        local matches = type(questID) == "number" and self:Accepts(questID)
            or (questID == nil and self:TitleMatches(title, "accept"))
        if matches then
            Call(api.SelectAvailableQuest, index)
            return true
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
    local turnIn = self:CurrentQuestID("turnin")
    for index = 1, num do
        local title, questID, isComplete = self:GreetingActive(api, index)
        if isComplete ~= false and isComplete ~= 0 then
            local matches
            if type(questID) == "number" then
                if turnIn then matches = questID == turnIn
                else matches = self:ActiveQuestReady(api, { questID = questID, isComplete = isComplete })
                end
            else
                matches = self:TitleMatches(title, "turnin")
            end
            if matches then
                Call(api.SelectActiveQuest, index)
                return true
            end
        end
    end
    return false
end

-- Several quests at one NPC open a greeting list instead of gossip. Select the
-- current step there; otherwise the player has to click it before accept or
-- turn-in can run.
function QuestDialog:SelectGreeting(api)
    if not self:Enabled() or type(api) ~= "table" then return false end
    local goal = ns.Engine and ns.Engine.currentGoal or nil
    local kind = type(goal) == "table" and goal.kind or nil
    if kind == "accept" and self:SelectGreetingAvailable(api) then return true end
    if self:SelectGreetingActive(api) then return true end
    return false
end

function QuestDialog:Accept(api)
    local questID = Call(api.GetQuestID)
    if self:Accepts(questID) then Call(api.AcceptQuest) end
end

function QuestDialog:Progress(api)
    local questID = Call(api.GetQuestID)
    if not self:Uses(questID) or not Call(api.IsQuestCompletable) then return end
    local questLog = type(api) == "table" and api.C_QuestLog or nil
    if type(questLog) == "table" and type(questLog.IsComplete) == "function"
        and not ReportedComplete(Call(questLog.IsComplete, questID)) then
        return
    end
    Call(api.CompleteQuest)
end

function QuestDialog:Reward(api)
    local questID = Call(api.GetQuestID)
    local choices = Call(api.GetNumQuestChoices)
    if self:Uses(questID) and type(choices) == "number" and choices <= 1 then
        Call(api.GetQuestReward, 1)
    end
end

function QuestDialog:Handle(event, api)
    api = api or _G
    if event == "GOSSIP_SHOW" then
        if not self:SelectGossip(api) then self:SelectGreeting(api) end
    elseif event == "QUEST_GREETING" then self:SelectGreeting(api)
    elseif event == "QUEST_DETAIL" then self:Accept(api)
    elseif event == "QUEST_PROGRESS" then self:Progress(api)
    elseif event == "QUEST_COMPLETE" then self:Reward(api)
    end
end
