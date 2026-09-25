local _, ns = ...

-- The client is the only authority on whether a character can take a quest.
-- Guide conditions are authored by hand from Wowhead, so a missing class,
-- race, or profession requirement looks fine in the data and only shows up in
-- game. This watches the quests an NPC actually offers. When the guide sends
-- the character to a giver who does not offer that quest, the step is blocked
-- and written to a per-character report. The engine either rewinds through a
-- registered prerequisite or stops with an actionable diagnostic.
--
-- The audit only observes. It never accepts, selects, or turns in a quest.

local QuestAudit = {}
ns.QuestAudit = QuestAudit

local function Call(fn, ...)
    if type(fn) ~= "function" then return nil end
    local ok, value = pcall(fn, ...)
    if ok then return value end
end

-- Returns the quest ids this NPC is offering or already tracking, or nil when
-- the client does not expose them. An empty table means the NPC offers none,
-- which is a real observation and not a missing API.
local function OfferedQuestIDs(api)
    local info = type(api) == "table" and api.C_GossipInfo or nil
    if type(info) ~= "table" then return nil end
    local offered
    for _, name in ipairs({ "GetAvailableQuests", "GetActiveQuests" }) do
        if type(info[name]) == "function" then
            local quests = Call(info[name])
            if type(quests) == "table" then
                offered = offered or {}
                for _, quest in ipairs(quests) do
                    local questID = type(quest) == "table" and quest.questID or nil
                    if type(questID) == "number" then offered[questID] = true end
                end
            end
        end
    end
    return offered
end

function QuestAudit:GoalQuestID(goal)
    local complete = type(goal) == "table" and goal.complete or nil
    local quest = type(complete) == "table" and complete.quest or nil
    local questID = type(quest) == "table" and quest.id or nil
    return type(questID) == "number" and questID or nil
end

function QuestAudit:GoalNPC(goal)
    local route = type(goal) == "table" and goal.route or nil
    local point = type(route) == "table" and route[#route] or nil
    local label = type(point) == "table" and point.label or nil
    return type(label) == "string" and label or nil
end

-- Pin labels name the NPC and sometimes where they stand, as in
-- "Neeru Fireblade in the Cleft of Shadow", so the unit name is a prefix.
function QuestAudit:NameMatches(label, name)
    if type(label) ~= "string" or type(name) ~= "string" or name == "" then return false end
    return label == name or label:sub(1, #name + 1) == name .. " "
end

function QuestAudit:StartsFromItem(goal)
    local text = type(goal) == "table" and goal.text or nil
    if type(text) ~= "string" then return false end
    local lower = text:lower()
    return lower:find("use the", 1, true) ~= nil
        or lower:find("use it to start", 1, true) ~= nil
        or lower:find("loot the item that starts", 1, true) ~= nil
end

function QuestAudit:AlreadyTaken(questID)
    local state = ns.Engine and ns.Engine.state or nil
    if type(state) ~= "table" then return false end
    if type(state.quests) == "table" and state.quests[questID] then return true end
    if type(state.completedQuests) == "table" and state.completedQuests[questID] then return true end
    return false
end

function QuestAudit:Report()
    if type(ns.charDB) ~= "table" then return nil end
    if type(ns.charDB.notOffered) ~= "table" then ns.charDB.notOffered = {} end
    return ns.charDB.notOffered
end

function QuestAudit:Announce(message)
    local print = _G and rawget(_G, "print")
    if type(print) == "function" then print("Forever GuideMate: " .. message) end
end

function QuestAudit:Record(goal, questID, npc)
    local report = self:Report()
    if not report or report[goal.id] then return end
    report[goal.id] = {
        guide = ns.charDB.selectedGuide,
        quest = questID,
        npc = npc,
        text = goal.text,
    }
    if type(ns.charDB.deferred) == "table" then ns.charDB.deferred[goal.id] = nil end
    self:Announce(("%s does not offer quest %d. Progress is blocked until its prerequisite is known: %s")
        :format(npc, questID, tostring(goal.text)))
end

function QuestAudit:Clear(goalID)
    local report = self:Report()
    if report then report[goalID] = nil end
end

function QuestAudit:Inspect(api)
    api = api or _G
    if type(ns.charDB) ~= "table" or not ns.Engine then return end
    local goal = ns.Engine.currentGoal
    if type(goal) ~= "table" or goal.kind ~= "accept" then return end
    local questID = self:GoalQuestID(goal)
    if not questID or self:AlreadyTaken(questID) then return end
    if self:StartsFromItem(goal) then return end
    if not self:NameMatches(self:GoalNPC(goal), Call(api.UnitName, "npc")) then return end
    local offered = OfferedQuestIDs(api)
    if type(offered) ~= "table" then return end
    if offered[questID] then
        self:Clear(goal.id)
        return
    end
    self:Record(goal, questID, Call(api.UnitName, "npc"))
end

-- Lines a player can read, newest guide step first.
function QuestAudit:Lines()
    local report = self:Report()
    local lines = {}
    if not report then return lines end
    local goalIDs = {}
    for goalID in pairs(report) do goalIDs[#goalIDs + 1] = goalID end
    table.sort(goalIDs)
    for _, goalID in ipairs(goalIDs) do
        local entry = report[goalID]
        lines[#lines + 1] = ("%s (quest %d, %s): %s"):format(
            tostring(entry.guide), entry.quest or 0, tostring(entry.npc), tostring(entry.text))
    end
    return lines
end

function QuestAudit:Handle(event, api)
    if event == "GOSSIP_SHOW" then self:Inspect(api) end
end
