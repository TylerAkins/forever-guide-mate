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
-- GetQuestLogQuestText selects that quest log row and fires QUEST_LOG_UPDATE
-- again. Selecting every row is what locked the client, so the summary comes
-- only from a quest-id lookup that does not change the selection.
local summaryByQuest = {}
local questLogCache
local lastLogSnapshot
local questLogDirty = false
local wantedQuestIDs
local wantedSet

local function ObjectiveSummary(questLog, questID)
    local cached = summaryByQuest[questID]
    if cached ~= nil then
        return cached or nil
    end
    local text
    if type(questLog.GetNextWaypointText) == "function" then
        local result, known = Call(questLog, "GetNextWaypointText", questID)
        text = known and CleanText(result[1]) or nil
    end
    summaryByQuest[questID] = text or false
    return text
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
    if questIDs == wantedQuestIDs and wantedSet then
        return wantedSet
    end
    local wanted = {}
    for _, questID in ipairs(questIDs) do
        if type(questID) == "number" then
            wanted[questID] = true
        end
    end
    wantedQuestIDs, wantedSet = questIDs, wanted
    return wanted
end

local function ObjectivesMatch(left, right)
    if type(left) ~= "table" or type(right) ~= "table" or #left ~= #right then
        return false
    end
    for index, objective in ipairs(right) do
        local previous = left[index]
        if type(objective) ~= "table" or type(previous) ~= "table" then
            return false
        end
        if objective.numFulfilled ~= previous.numFulfilled
            or objective.numRequired ~= previous.numRequired
            or (objective.finished and true or false) ~= (previous.finished and true or false) then
            return false
        end
    end
    return true
end

function PlayerState:GetQuestLog(api, questIDs)
    if self.reuseQuestLog and type(questLogCache) == "table" then
        self.reuseQuestLog = false
        return questLogCache, true
    end
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
    -- While objectives update, the client can briefly report an empty log.
    -- Treating that as "every quest was abandoned" reloads completion data
    -- and walks the whole guide. A real removal arrives as its own event,
    -- or as a later log that still has other quests in it.
    if count == 0 and type(questLogCache) == "table" and next(questLogCache) ~= nil then
        return questLogCache, true
    end
    local wanted = WantedSet(questIDs)
    for index = 1, count do
        local infoResult, infoKnown = Call(questLog, "GetInfo", index)
        local info = infoKnown and infoResult[1]
        if type(info) == "table" and info.questID and not info.isHeader
            and (not wanted or wanted[info.questID]) then
            local objectiveResult, objectiveKnown = Call(questLog, "GetQuestObjectives", info.questID)
            local objectives = objectiveKnown and type(objectiveResult[1]) == "table" and objectiveResult[1] or {}
            local previous = type(questLogCache) == "table" and questLogCache[info.questID] or nil
            local reported = info.isComplete == true or (type(info.isComplete) == "number" and info.isComplete > 0)
            if type(previous) == "table" and ObjectivesMatch(previous.objectives, objectives)
                and (info.isComplete == nil or reported == previous.complete) then
                -- Same kill credit as last time. Skip the completion and timer calls.
                quests[info.questID] = previous
            else
                local timeAllowed, timeLeft = QuestTimer(questLog, info.questID, info)
                quests[info.questID] = {
                    title = info.title,
                    complete = LogQuestComplete(questLog, info.questID, info, objectives),
                    objectives = objectives,
                    summary = ObjectiveSummary(questLog, info.questID),
                    timeAllowed = timeAllowed,
                    timeLeft = timeLeft,
                }
            end
        end
    end
    questLogCache = quests
    return quests, true
end

local function CaptureAchievements(api, achievementIDs)
    local achievements = {}
    if type(achievementIDs) ~= "table" then
        return achievements, false
    end

    local achievementKnown = true
    for _, achievementID in ipairs(achievementIDs) do
        local info, infoKnown = Call(api, "GetAchievementInfo", achievementID)
        local completed
        if infoKnown then completed = info[4] end
        local entry = {}
        if type(completed) == "boolean" then entry.completed = completed end
        local entryKnown = entry.completed ~= nil

        if type(api.GetAchievementNumCriteria) == "function"
            and type(api.GetAchievementCriteriaInfo) == "function" then
            local countResult, countKnown = Call(api, "GetAchievementNumCriteria", achievementID)
            if countKnown and type(countResult[1]) == "number" then
                entry.criteriaByName = {}
                entry.criteriaKnown = true
                for index = 1, countResult[1] do
                    local criteria, criteriaKnown = Call(api, "GetAchievementCriteriaInfo", achievementID, index)
                    local name = criteriaKnown and criteria[1]
                    local done = criteriaKnown and criteria[3]
                    if type(name) == "string" and name ~= "" and type(done) == "boolean" then
                        entry.criteriaByName[string.lower(name)] = done
                    else
                        entry.criteriaKnown = false
                    end
                end
                entryKnown = entryKnown or entry.criteriaKnown
            end
        end

        if entryKnown then
            achievements[achievementID] = entry
        else
            achievementKnown = false
        end
    end
    return achievements, achievementKnown
end

local function ObjectiveMarked(value)
    return value == true or (type(value) == "number" and value > 0)
end

local function LogSnapshot(quests)
    local ids = {}
    for questID in pairs(quests or {}) do
        ids[#ids + 1] = questID
    end
    table.sort(ids)
    local parts = {}
    for _, questID in ipairs(ids) do
        local entry = type(quests[questID]) == "table" and quests[questID] or {}
        local line = tostring(questID) .. "=" .. (entry.complete and "1" or "0")
        if type(entry.objectives) == "table" then
            for index, objective in ipairs(entry.objectives) do
                if type(objective) == "table" then
                    line = line .. ":" .. index
                        .. ":" .. tostring(objective.numFulfilled)
                        .. ":" .. tostring(objective.numRequired)
                        .. ":" .. (ObjectiveMarked(objective.finished) and "1" or "0")
                end
            end
        end
        parts[#parts + 1] = line
    end
    return table.concat(parts, "|")
end

-- Standing still still produces quest-log events. A matching snapshot means
-- there is nothing new to ask the client and nothing to recalculate.
function PlayerState:LogUnchanged(api, questIDs)
    self.reuseQuestLog = false
    api = api or _G
    local quests, known = self:GetQuestLog(api, questIDs)
    if not known then
        return false
    end
    if questLogDirty then
        questLogDirty = false
        lastLogSnapshot = nil
    end
    local snapshot = LogSnapshot(quests)
    local unchanged = lastLogSnapshot ~= nil and snapshot == lastLogSnapshot
    lastLogSnapshot = snapshot
    self.reuseQuestLog = true
    return unchanged
end

-- Turned-in quests stay turned in. Asking the client again on every kill
-- credit is what hitches the frame, so a true answer is kept and a quest
-- still in the log is not asked at all. A quest leaving the log must not
-- throw away the completed-quest dump: rebuilding that table is the stall.
local completionCache = {}
local completionFailed = {}
local seenInLog = {}
local logWasComplete = {}
local bulkLoaded = false
local bulkCompleted = {}
local flagAPIWorks = false
local completionUnavailable = false
-- How many uncached quests a single pulse may ask the client about. The open
-- chapter is always resolved; the rest of the catalog continues on later pulses.
ns.COMPLETION_QUERY_BUDGET = 24
function PlayerState:ForgetQuest(questID, turnedIn)
    if type(questID) ~= "number" then
        return
    end
    if turnedIn then
        completionCache[questID] = true
    end
    logWasComplete[questID] = nil
    summaryByQuest[questID] = nil
    seenInLog[questID] = nil
    questLogDirty = true
    if type(questLogCache) == "table" then
        questLogCache[questID] = nil
    end
end

function PlayerState:InvalidateQuestCache()
    completionCache = {}
    completionFailed = {}
    seenInLog = {}
    logWasComplete = {}
    bulkLoaded = false
    bulkCompleted = {}
    flagAPIWorks = false
    completionUnavailable = false
    summaryByQuest = {}
    questLogCache = nil
    lastLogSnapshot = nil
    questLogDirty = false
    if ns.Navigation and ns.Navigation.InvalidateClientPins then
        ns.Navigation:InvalidateClientPins()
    end
end

function PlayerState:RetryFailedCompletions()
    completionUnavailable = false
    flagAPIWorks = false
    for questID in pairs(completionFailed) do
        completionCache[questID] = nil
    end
    completionFailed = {}
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
            end
            summaryByQuest[questID] = nil
            seenInLog[questID] = nil
        end
    end
    for questID in pairs(quests) do
        seenInLog[questID] = true
    end
end

local function StoreCompletion(questID, done, failed)
    completionCache[questID] = done and true or false
    if failed then
        completionFailed[questID] = true
    else
        completionFailed[questID] = nil
    end
end

local function ReadCachedCompletion(api, questID, departedComplete)
    if completionCache[questID] ~= nil then
        return completionCache[questID], true
    end
    local readFlag = FlagReader(api)
    if readFlag then
        if completionUnavailable then
            return nil, false
        end
        local ok, value = pcall(readFlag, questID)
        if ok then
            flagAPIWorks = true
            local done = value and true or false
            StoreCompletion(questID, done, false)
            return done, true
        end
        if flagAPIWorks then
            StoreCompletion(questID, false, true)
            return false, true
        end
        completionUnavailable = true
        return nil, false
    end
    if type(api.GetQuestsCompleted) == "function" and not LoadBulkCompleted(api) then
        return nil, false
    end
    if not bulkLoaded then
        return nil, false
    end
    local done = bulkCompleted[questID] and true or false
    if not done and departedComplete[questID] then
        done = true
    end
    StoreCompletion(questID, done, false)
    return done, true
end

-- Every refresh reads the whole catalog. Building two fresh tables of every
-- tracked quest each time is most of the garbage a refresh makes, so an
-- unchanged answer hands back the previous tables. Earlier states keep theirs.
local lastQuestIDList, lastCompleted, lastWatched

local function CompletedQuests(api, questIDs, logQuests, priorityCount)
    local questIDList = type(questIDs) == "table" and questIDs or {}
    if #questIDList == 0 then
        return {}, true, {}, true
    end
    local completed, watched
    local reuse = lastQuestIDList == questIDList and lastCompleted ~= nil
    if not reuse then
        completed, watched = {}, {}
    end
    local function Record(index, questID, done)
        if reuse then
            if lastCompleted[questID] == done and (lastWatched[questID] == true) == (done ~= nil) then
                return
            end
            reuse = false
            completed, watched = {}, {}
            for earlier = 1, index - 1 do
                local earlierID = questIDList[earlier]
                if lastCompleted[earlierID] ~= nil then
                    completed[earlierID] = lastCompleted[earlierID]
                    watched[earlierID] = true
                end
            end
        end
        if done ~= nil then
            completed[questID] = done
            watched[questID] = true
        end
    end
    local departedComplete = {}
    for questID in pairs(seenInLog) do
        if not logQuests[questID] and logWasComplete[questID] then
            departedComplete[questID] = true
        end
    end
    NoteQuestLog(logQuests)
    local priority = type(priorityCount) == "number" and priorityCount or #questIDList
    if priority < 0 then priority = 0 end
    if priority > #questIDList then priority = #questIDList end
    local extra = 0
    local budget = ns.COMPLETION_QUERY_BUDGET or 24
    local apiDown = false
    for index, questID in ipairs(questIDList) do
        if logQuests[questID] then
            Record(index, questID, false)
        elseif completionCache[questID] ~= nil then
            Record(index, questID, completionCache[questID])
        elseif apiDown then
            -- The client already failed this pulse. Leave the rest unread.
            Record(index, questID, nil)
        else
            local required = index <= priority
            if not required and extra >= budget then
                -- Saved for the next pulse.
                Record(index, questID, nil)
            else
                local done, known = ReadCachedCompletion(api, questID, departedComplete)
                if not known then
                    apiDown = true
                    Record(index, questID, nil)
                else
                    if not required and completionCache[questID] ~= nil then
                        extra = extra + 1
                    end
                    Record(index, questID, done)
                end
            end
        end
    end
    if reuse then
        completed, watched = lastCompleted, lastWatched
    else
        lastQuestIDList, lastCompleted, lastWatched = questIDList, completed, watched
    end
    for questID in pairs(logWasComplete) do
        if not logQuests[questID] then
            logWasComplete[questID] = nil
        end
    end
    for questID, entry in pairs(logQuests) do
        logWasComplete[questID] = type(entry) == "table" and entry.complete and true or false
    end
    local known = not apiDown
    local priorityKnown = known
    if known then
        for index, questID in ipairs(questIDList) do
            if not watched[questID] then
                known = false
                priorityKnown = index > priority
                break
            end
        end
    end
    return completed, known, watched, priorityKnown
end

-- The pulse budget leaves most of the catalog unread right after login, so a
-- library row would score unread turn-ins as unfinished. Each answer is cached,
-- so a guide pays for its uncached quests once per session.
function PlayerState:FillCompletion(state, questIDs, api)
    if type(state) ~= "table" or type(questIDs) ~= "table" then
        return
    end
    api = api or _G
    local completed = type(state.completedQuests) == "table" and state.completedQuests or {}
    local watched = type(state.watchedQuests) == "table" and state.watchedQuests or {}
    local logQuests = type(state.quests) == "table" and state.quests or {}
    local noDeparted = {}
    for _, questID in ipairs(questIDs) do
        if not watched[questID] and not logQuests[questID] then
            local done, known = ReadCachedCompletion(api, questID, noDeparted)
            if not known then
                break
            end
            completed[questID] = done
            watched[questID] = true
        end
    end
    state.completedQuests, state.watchedQuests = completed, watched
end

function PlayerState:QuestLogFingerprint(state)
    if type(state) ~= "table" then
        return ""
    end
    local questIDs = {}
    local quests = type(state.quests) == "table" and state.quests or {}
    for questID in pairs(quests) do
        questIDs[#questIDs + 1] = questID
    end
    table.sort(questIDs)
    local questParts = {}
    for _, questID in ipairs(questIDs) do
        local entry = type(quests[questID]) == "table" and quests[questID] or {}
        local line = tostring(questID) .. "=" .. (entry.complete and "1" or "0")
        if type(entry.objectives) == "table" then
            for index, objective in ipairs(entry.objectives) do
                if type(objective) == "table" then
                    line = line .. ":" .. index
                        .. ":" .. tostring(objective.numFulfilled)
                        .. ":" .. tostring(objective.numRequired)
                        .. ":" .. (ObjectiveMarked(objective.finished) and "1" or "0")
                end
            end
        end
        -- A countdown changes every second. Folding it into the fingerprint
        -- rebuilt the whole route on that pulse, which is the periodic freeze.
        questParts[#questParts + 1] = line
    end
    local doneIDs = {}
    local done = type(state.completedQuests) == "table" and state.completedQuests or {}
    for questID, value in pairs(done) do
        if value then
            doneIDs[#doneIDs + 1] = questID
        end
    end
    table.sort(doneIDs)
    return table.concat(questParts, "|")
        .. "#" .. table.concat(doneIDs, ",")
        .. "@" .. tostring(state.questLogKnown)
        .. ":" .. tostring(state.questCompletionKnown)
        .. ":" .. tostring(state.questRouteKnown)
        .. ":" .. tostring(state.level)
        .. ":" .. tostring(state.mapID)
        .. ":" .. tostring(state.instanceID)
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

function PlayerState:InInstance(state, api)
    api = api or _G
    if type(api.IsInInstance) == "function" then
        local result, known = Call(api, "IsInInstance")
        if known then return result[1] == true end
    end
    if type(api.GetInstanceInfo) == "function" then
        local result, known = Call(api, "GetInstanceInfo")
        if known then
            local instanceType = result[2]
            if type(instanceType) == "string" and instanceType ~= "" then
                return instanceType ~= "none"
            end
            return type(result[8]) == "number" and result[8] > 0
        end
    end
    state = state or (ns.Engine and ns.Engine.state)
    local instanceID = type(state) == "table" and state.instanceID or nil
    return type(instanceID) == "number" and instanceID > 0
end

function PlayerState:Capture(api, questIDs, priorityCount, achievementIDs)
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

    local completedQuests, completionKnown, watchedQuests, routeKnown =
        CompletedQuests(api, questIDs, quests, priorityCount)
    local achievements, achievementsKnown = CaptureAchievements(api, achievementIDs)
    local onTaxi
    if type(api.UnitOnTaxi) == "function" then
        local taxiResult, taxiKnown = Call(api, "UnitOnTaxi", "player")
        onTaxi = taxiKnown and taxiResult[1] == true
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
        watchedQuests = watchedQuests,
        questCompletionKnown = completionKnown,
        questRouteKnown = routeKnown,
        achievements = achievements,
        achievementsKnown = achievementsKnown,
        mapID = mapID,
        x = x,
        y = y,
        instanceID = instanceID,
        onTaxi = onTaxi,
    }
end

-- Every refresh asks about each item-start accept on the route. Rescanning
-- and lowercasing every bag slot per question is the loot stutter, so the
-- client answers are kept until the bags change.
local itemPresence = {}
local bagLinks

local function BagLinks(api)
    if api == _G and bagLinks then return bagLinks end
    local links = {}
    local getSlots = (api.C_Container and api.C_Container.GetContainerNumSlots) or api.GetContainerNumSlots
    local getLink = (api.C_Container and api.C_Container.GetContainerItemLink) or api.GetContainerItemLink
    if type(getSlots) == "function" and type(getLink) == "function" then
        for bag = 0, 4 do
            local numSlots = getSlots(bag) or 0
            for slot = 1, numSlots do
                local link = getLink(bag, slot)
                if link then
                    links[#links + 1] = string.lower(link)
                end
            end
        end
    end
    if api == _G then bagLinks = links end
    return links
end

local function ClientHasItem(itemName, api)
    if type(api.GetItemCount) == "function" then
        local ok, count = pcall(api.GetItemCount, itemName)
        if ok and type(count) == "number" and count > 0 then
            return true
        end
    end
    if api.C_Item and type(api.C_Item.GetItemCount) == "function" then
        local ok, count = pcall(api.C_Item.GetItemCount, itemName)
        if ok and type(count) == "number" and count > 0 then
            return true
        end
    end
    local target = string.lower(itemName)
    local stripped = target:gsub("^(the|a|an)%s+", "")
    for _, lower in ipairs(BagLinks(api)) do
        if string.find(lower, target, 1, true) or string.find(lower, stripped, 1, true) then
            return true
        end
    end
    return false
end

-- Returns true when an item the route asked about appeared or left the bags.
-- Any other loot leaves the route alone.
function PlayerState:BagsChanged(api)
    api = api or _G
    local previous = itemPresence
    itemPresence, bagLinks = {}, nil
    local changed = false
    for itemName, had in pairs(previous) do
        local has = ClientHasItem(itemName, api)
        if api == _G then itemPresence[itemName] = has end
        if has ~= had then changed = true end
    end
    return changed
end

function PlayerState:HasItem(itemName, state, api)
    if type(itemName) ~= "string" or itemName == "" then return false end
    if type(state) == "table" and type(state.items) == "table" then
        if state.items[itemName] then return true end
        local lower = string.lower(itemName)
        local stripped = lower:gsub("^(the|a|an)%s+", "")
        for name, count in pairs(state.items) do
            if count and count > 0 then
                local nLower = string.lower(tostring(name))
                if nLower == lower or nLower == stripped or string.find(nLower, stripped, 1, true) then
                    return true
                end
            end
        end
        return false
    end
    api = api or _G
    if api ~= _G then
        return ClientHasItem(itemName, api)
    end
    local known = itemPresence[itemName]
    if known == nil then
        known = ClientHasItem(itemName, api)
        itemPresence[itemName] = known
    end
    return known
end
