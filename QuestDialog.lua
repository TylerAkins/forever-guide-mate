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

local function Call(fn, ...)
    if type(fn) ~= "function" then return nil end
    local ok, value = pcall(fn, ...)
    if ok then return value end
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
                if self:Uses(questID) then
                    Call(info.SelectAvailableQuest, questID)
                    return
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
                    return
                end
            end
        end
    end
end

function QuestDialog:Accept(api)
    local questID = Call(api.GetQuestID)
    if self:Uses(questID) then Call(api.AcceptQuest) end
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
    if event == "GOSSIP_SHOW" then self:SelectGossip(api)
    elseif event == "QUEST_DETAIL" then self:Accept(api)
    elseif event == "QUEST_PROGRESS" then self:Progress(api)
    elseif event == "QUEST_COMPLETE" then self:Reward(api)
    end
end
