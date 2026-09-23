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
                local questID = type(quest) == "table" and quest.questID or nil
                if self:Uses(questID) then
                    Call(info.SelectActiveQuest, questID)
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
    if self:Uses(questID) and Call(api.IsQuestCompletable) then Call(api.CompleteQuest) end
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
