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

local function ObjectiveSatisfied(objective)
    if type(objective.numRequired) == "number" and objective.numRequired > 0
        and type(objective.numFulfilled) == "number" then
        return objective.numFulfilled >= objective.numRequired
    end
    return objective.finished == true or (type(objective.finished) == "number" and objective.finished > 0)
end

local function ObjectivesComplete(objectives)
    if type(objectives) ~= "table" or #objectives == 0 then return false end
    for _, objective in ipairs(objectives) do
        if type(objective) ~= "table" or not ObjectiveSatisfied(objective) then return false end
    end
    return true
end

local function PositiveNumber(value)
    if type(value) == "number" and value > 0 then
        return value
    end
end

local function CleanText(value)
    if type(value) ~= "string" or value == "" then
        return nil
    end
    return value
end

-- The line under the quest title is the objective summary. Progress rows
-- such as "2/8 Trapped Game" are a different field and are not this text.
local function ObjectiveSummary(api, questLog, questID, logIndex)
    if type(logIndex) == "number" then
        if type(questLog.GetQuestLogQuestText) == "function" then
            local result, known = Call(questLog, "GetQuestLogQuestText", logIndex)
            local text = known and CleanText(result[2])
            if text then return text end
        end
        if type(api.GetQuestLogQuestText) == "function" then
            local result, known = Call(api, "GetQuestLogQuestText", logIndex)
            local text = known and CleanText(result[2])
            if text then return text end
        end
    end
    if type(questLog.GetNextWaypointText) == "function" then
        local result, known = Call(questLog, "GetNextWaypointText", questID)
        return known and CleanText(result[1]) or nil
    end
end

local function QuestTimer(questLog, questID, info)
    local timeLeft = PositiveNumber(info.timeLeft) or PositiveNumber(info.timeRemaining)
    local timeAllowed
    if type(questLog.GetTimeAllowed) == "function" then
        local result, known = Call(questLog, "GetTimeAllowed", questID)
        if known then
            timeAllowed = PositiveNumber(result[1])
        end
    end
    return timeAllowed, timeLeft
end

local function LogQuestComplete(questLog, questID, info, objectives)
    if info.isComplete == true or (type(info.isComplete) == "number" and info.isComplete > 0) then
        return true
    end
    if type(questLog.IsComplete) == "function" then
        local result, known = Call(questLog, "IsComplete", questID)
        if known and result[1] then return true end
    end
    if type(questLog.ReadyForTurnIn) == "function" then
        local result, known = Call(questLog, "ReadyForTurnIn", questID)
        if known and result[1] then return true end
    end
    return ObjectivesComplete(objectives)
end

local function WantedSet(questIDs)
    if type(questIDs) ~= "table" then
        return nil
    end
    local wanted = {}
    for _, questID in ipairs(questIDs) do
        if type(questID) == "number" then
            wanted[questID] = true
        end
    end
    return wanted
end

function PlayerState:GetQuestLog(api, questIDs)
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
    local wanted = WantedSet(questIDs)
    for index = 1, count do
        local infoResult, infoKnown = Call(questLog, "GetInfo", index)
        local info = infoKnown and infoResult[1]
        if type(info) == "table" and info.questID and not info.isHeader
            and (not wanted or wanted[info.questID]) then
            local objectiveResult, objectiveKnown = Call(questLog, "GetQuestObjectives", info.questID)
            local objectives = objectiveKnown and type(objectiveResult[1]) == "table" and objectiveResult[1] or {}
            local timeAllowed, timeLeft = QuestTimer(questLog, info.questID, info)
            quests[info.questID] = {
                complete = LogQuestComplete(questLog, info.questID, info, objectives),
                objectives = objectives,
                summary = ObjectiveSummary(api, questLog, info.questID, index),
                timeAllowed = timeAllowed,
                timeLeft = timeLeft,
            }
        end
    end
    return quests, true
end

-- Turned-in quests stay turned in. Asking the client again on every kill
-- credit is what hitches the frame, so a true answer is kept and a quest
-- still in the log is not asked at all.
local completionCache = {}
local seenInLog = {}
local bulkLoaded = false
local bulkCompleted = {}

function PlayerState:InvalidateQuestCache()
    completionCache = {}
    seenInLog = {}
    bulkLoaded = false
    bulkCompleted = {}
end

local function FlagReader(api)
    local questLog = api.C_QuestLog
    if questLog and type(questLog.IsQuestFlaggedCompleted) == "function" then
        return questLog.IsQuestFlaggedCompleted
    end
    if type(api.IsQuestFlaggedCompleted) == "function" then
        return api.IsQuestFlaggedCompleted
    end
end

local function LoadBulkCompleted(api)
    if bulkLoaded or type(api.GetQuestsCompleted) ~= "function" then
        return bulkLoaded
    end
    local completed = {}
    local ok = pcall(api.GetQuestsCompleted, completed)
    if not ok then
        return false
    end
    bulkCompleted = completed
    bulkLoaded = true
    return true
end

local function NoteQuestLog(quests)
    for questID in pairs(seenInLog) do
        if not quests[questID] then
            if completionCache[questID] ~= true then
                completionCache[questID] = nil
                bulkLoaded = false
            end
            seenInLog[questID] = nil
        end
    end
    for questID in pairs(quests) do
        seenInLog[questID] = true
    end
end

local function CompletedQuests(api, questIDs, logQuests)
    local completed = {}
    local questIDList = type(questIDs) == "table" and questIDs or {}
    if #questIDList == 0 then
        return completed, true
    end
    NoteQuestLog(logQuests)
    local readFlag = FlagReader(api)
    local known = true
    if not readFlag and type(api.GetQuestsCompleted) == "function" and not LoadBulkCompleted(api) then
        known = false
    elseif not readFlag and type(api.GetQuestsCompleted) ~= "function" then
        known = false
    end
    for _, questID in ipairs(questIDList) do
        if logQuests[questID] then
            completed[questID] = false
        elseif completionCache[questID] ~= nil then
            completed[questID] = completionCache[questID]
        elseif readFlag then
            local ok, value = pcall(readFlag, questID)
            if ok then
                local done = value and true or false
                completionCache[questID] = done
                completed[questID] = done
            else
                known = false
                completed[questID] = false
            end
        elseif bulkLoaded then
            local done = bulkCompleted[questID] and true or false
            completionCache[questID] = done
            completed[questID] = done
        else
            known = false
            completed[questID] = false
        end
    end
    return completed, known
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

function PlayerState:Capture(api, questIDs)
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
    local quests, questLogKnown = self:GetQuestLog(api, questIDs)
    local mapID, x, y = self:CapturePosition(api)
    local instanceID
    if type(api.GetInstanceInfo) == "function" then
        local instanceResult, instanceKnown = Call(api, "GetInstanceInfo")
        instanceID = instanceKnown and instanceResult[8] or nil
    end

    local completedQuests, completionKnown = CompletedQuests(api, questIDs, quests)

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
