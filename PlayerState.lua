local _, ns = ...

local PlayerState = {}
ns.PlayerState = PlayerState

local professionCache

local function Call(owner, method, ...)
    if not owner or type(owner[method]) ~= "function" then
        return nil, false
    end
    local ok, a, b, c, d, e, f, g, h, i = pcall(owner[method], ...)
    if not ok then
        return nil, false
    end
    return { a, b, c, d, e, f, g, h, i }, true
end

local function PositionXY(position)
    if not position then
        return nil, nil
    end
    if type(position.GetXY) == "function" then
        local ok, x, y = pcall(position.GetXY, position)
        if ok then
            return x, y
        end
    end
    return position.x, position.y
end

function PlayerState:InvalidateProfessions()
    professionCache = nil
end

function PlayerState:GetProfessions(api)
    if professionCache then
        return professionCache, true
    end
    if type(api.GetProfessions) ~= "function" or type(api.GetProfessionInfo) ~= "function" then
        return {}, false
    end
    local ok, primary1, primary2, archaeology, fishing, cooking = pcall(api.GetProfessions)
    if not ok then
        return {}, false
    end
    local indices = { primary1, primary2, archaeology, fishing, cooking }
    local professions = {}
    for _, index in pairs(indices) do
        if index then
            local info, known = Call(api, "GetProfessionInfo", index)
            if known and type(info[7]) == "number" then
                professions[info[7]] = tonumber(info[3]) or 0
            end
        end
    end
    professionCache = professions
    return professions, true
end

function PlayerState:GetQuestLog(api)
    local quests = {}
    local questLog = api.C_QuestLog
    if not questLog or type(questLog.GetNumQuestLogEntries) ~= "function"
        or type(questLog.GetInfo) ~= "function" then
        return quests, false
    end
    local ok, count = pcall(questLog.GetNumQuestLogEntries)
    if not ok then
        return quests, false
    end
    for index = 1, count do
        local infoResult, infoKnown = Call(questLog, "GetInfo", index)
        local info = infoKnown and infoResult[1]
        if type(info) == "table" and info.questID and not info.isHeader then
            local quest = { complete = info.isComplete and true or false, objectives = {} }
            local objectiveResult, objectiveKnown = Call(questLog, "GetQuestObjectives", info.questID)
            if objectiveKnown and type(objectiveResult[1]) == "table" then
                quest.objectives = objectiveResult[1]
            end
            quests[info.questID] = quest
        end
    end
    return quests, true
end

local function CompletionReader(api)
    local questLog = api.C_QuestLog
    if questLog and type(questLog.IsQuestFlaggedCompleted) == "function" then
        return function(questID)
            local ok, completed = pcall(questLog.IsQuestFlaggedCompleted, questID)
            return ok and completed and true or false, ok
        end
    end
    if type(api.IsQuestFlaggedCompleted) == "function" then
        return function(questID)
            local ok, completed = pcall(api.IsQuestFlaggedCompleted, questID)
            return ok and completed and true or false, ok
        end
    end
    if type(api.GetQuestsCompleted) == "function" then
        local completed = {}
        local ok = pcall(api.GetQuestsCompleted, completed)
        if ok then
            return function(questID)
                return completed[questID] and true or false, true
            end
        end
    end
    return function()
        return false, false
    end
end

function PlayerState:CapturePosition(api)
    api = api or _G
    local mapID
    if api.C_Map and type(api.C_Map.GetBestMapForUnit) == "function" then
        local ok, value = pcall(api.C_Map.GetBestMapForUnit, "player")
        if ok then
            mapID = value
        end
    end
    local x, y
    if mapID and api.C_Map and type(api.C_Map.GetPlayerMapPosition) == "function" then
        local ok, position = pcall(api.C_Map.GetPlayerMapPosition, mapID, "player")
        if ok then
            x, y = PositionXY(position)
        end
    end
    return mapID, x, y
end

function PlayerState:Capture(api)
    api = api or _G
    local raceResult, raceKnown = Call(api, "UnitRace", "player")
    local classResult, classKnown = Call(api, "UnitClass", "player")
    local factionResult, factionKnown = Call(api, "UnitFactionGroup", "player")
    local levelResult, levelKnown = Call(api, "UnitLevel", "player")
    local raceID = raceKnown and raceResult[3] or nil
    local classID = classKnown and classResult[3] or nil
    local faction = factionKnown and factionResult[1] or nil
    local level = levelKnown and levelResult[1] or nil
    local professions, professionsKnown = self:GetProfessions(api)
    local quests, questLogKnown = self:GetQuestLog(api)
    local mapID, x, y = self:CapturePosition(api)
    local instanceID
    if type(api.GetInstanceInfo) == "function" then
        local instanceResult, instanceKnown = Call(api, "GetInstanceInfo")
        instanceID = instanceKnown and instanceResult[8] or nil
    end

    local completedQuests = {}
    local completionKnown = true
    local readCompletion = CompletionReader(api)
    if ns.GetTrackedQuestIDs then
        for _, questID in ipairs(ns.GetTrackedQuestIDs()) do
            local completed, known = readCompletion(questID)
            completedQuests[questID] = completed
            if not known then
                completionKnown = false
            end
        end
    end

    return {
        raceID = raceID,
        classID = classID,
        faction = faction,
        level = level,
        professions = professions,
        professionsKnown = professionsKnown,
        quests = quests,
        questLogKnown = questLogKnown,
        completedQuests = completedQuests,
        questCompletionKnown = completionKnown,
        mapID = mapID,
        x = x,
        y = y,
        instanceID = instanceID,
    }
end
