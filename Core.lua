local ADDON_NAME, ns = ...

ForeverGuideMate = ns
ns.ADDON_NAME = ADDON_NAME
ns.guides = ns.guides or {}
ns.guideOrder = ns.guideOrder or {}

local ACCOUNT_DEFAULTS = {
    schemaVersion = 3,
    uiOpen = true,
    tracker = {
        enabled = true, locked = false, scale = 1,
        point = "LEFT", relativePoint = "LEFT", x = 0, y = 0,
    },
    arrow = {
        enabled = true, locked = false, scale = 1,
        point = "TOP", relativePoint = "TOP", x = 0, y = -90,
    },
    browser = {
        scale = 1, point = "CENTER", relativePoint = "CENTER", x = 0, y = 0,
        hideIneligible = false,
    },
    autoAdvance = true,
    autoQuest = true,
}

local CHARACTER_DEFAULTS = {
    schemaVersion = 4,
    activeGoal = nil,
    manualCompleted = {},
    deferred = {},
    notOffered = {},
    history = {},
    completionLedger = {},
    activeGoalByGuide = {},
    guideRevisions = {},
    taxiRoutes = {},
    taxiNodes = {},
    taxiNodesByContinent = {},
}

local function ApplyDefaults(target, defaults)
    for key, value in pairs(defaults) do
        if type(value) == "table" then
            if type(target[key]) ~= "table" then
                target[key] = {}
            end
            ApplyDefaults(target[key], value)
        elseif target[key] == nil then
            target[key] = value
        end
    end
end

local function MigrateStorage(account, character)
    if (tonumber(account.schemaVersion) or 1) < 2 then
        local tracker = type(account.tracker) == "table" and account.tracker or {}
        local arrow = type(account.arrow) == "table" and account.arrow or {}
        account.uiOpen = tracker.shown ~= false
        tracker.enabled = tracker.shown ~= false
        tracker.shown = nil
        arrow.enabled = arrow.shown ~= false
        arrow.shown = nil
        arrow.point, arrow.relativePoint, arrow.x, arrow.y = "TOP", "TOP", 0, -90
        account.tracker, account.arrow = tracker, arrow
        account.schemaVersion = 2
    end
    if (tonumber(account.schemaVersion) or 1) < 3 then
        local tracker = type(account.tracker) == "table" and account.tracker or {}
        tracker.point, tracker.relativePoint, tracker.x, tracker.y = "LEFT", "LEFT", 0, 0
        account.tracker = tracker
        account.schemaVersion = 3
    end
    if (tonumber(character.schemaVersion) or 1) < 2 then
        character.deferred = type(character.skipped) == "table" and character.skipped or {}
        character.skipped = nil
        character.completionLedger = type(character.completionLedger) == "table" and character.completionLedger or {}
        character.schemaVersion = 2
    end
    if (tonumber(character.schemaVersion) or 1) < 3 then
        character.activeGoalByGuide = type(character.activeGoalByGuide) == "table" and character.activeGoalByGuide or {}
        if character.selectedGuide and character.activeGoal then
            character.activeGoalByGuide[character.selectedGuide] = character.activeGoal
        end
        character.schemaVersion = 3
    end
    if (tonumber(character.schemaVersion) or 1) < 4 then
        -- Releases before 0.1.2 recorded DISTANT taxi listings as reachable
        -- routes. Drop any route destination never observed as a known flight
        -- point; a fresh capture rebuilds the entry when the route is real.
        local known = type(character.taxiNodes) == "table" and character.taxiNodes or {}
        local scoped = type(character.taxiNodesByContinent) == "table" and character.taxiNodesByContinent or {}
        local function IsKnown(normalized)
            if known[normalized] ~= nil then return true end
            for _, set in pairs(scoped) do
                if type(set) == "table" and set[normalized] ~= nil then return true end
            end
            return false
        end
        if type(character.taxiRoutes) == "table" then
            for mapID, route in pairs(character.taxiRoutes) do
                if type(route) == "table" and type(route.destinations) == "table" then
                    for normalized in pairs(route.destinations) do
                        if not IsKnown(normalized) then route.destinations[normalized] = nil end
                    end
                    if next(route.destinations) == nil then character.taxiRoutes[mapID] = nil end
                else
                    character.taxiRoutes[mapID] = nil
                end
            end
        end
        character.schemaVersion = 4
    end
end

function ns.InitializeStorage()
    if type(ForeverGuideMateDB) ~= "table" then
        ForeverGuideMateDB = {}
    end
    if type(ForeverGuideMateCharDB) ~= "table" then
        ForeverGuideMateCharDB = {}
    end
    MigrateStorage(ForeverGuideMateDB, ForeverGuideMateCharDB)
    ApplyDefaults(ForeverGuideMateDB, ACCOUNT_DEFAULTS)
    ApplyDefaults(ForeverGuideMateCharDB, CHARACTER_DEFAULTS)
    ns.db = ForeverGuideMateDB
    ns.charDB = ForeverGuideMateCharDB
end

-- QUEST_LOG_UPDATE fires in a burst while the client is still rebuilding the
-- log (accept, turn-in, loot, and kill credit all do this). Reading the log
-- on the first event forces that rebuild onto the main thread, which is the
-- one-second stutter. Wait until the burst goes quiet, then read once.
local QUEST_LOG_SETTLE_SECONDS = 0.15
local refreshGeneration = 0
local refreshNeedsFullPass = false
local refreshTimer

local function DeliverRefresh(generation)
    if generation ~= refreshGeneration then
        return
    end
    refreshTimer = nil
    local fullPass = refreshNeedsFullPass
    refreshNeedsFullPass = false
    ns.refreshPending = false
    if not fullPass and ns.Engine and ns.Engine.state and ns.PlayerState
        and ns.PlayerState.LogUnchanged and ns.QuestQuery then
        local ids = ns.QuestQuery()
        if ns.PlayerState:LogUnchanged(nil, ids) then
            ns.PlayerState.reuseQuestLog = false
            return
        end
    end
    if ns.Engine and ns.Engine.Refresh then
        ns.Engine:Refresh()
    end
end

function ns.ScheduleRefresh(questOnly)
    if questOnly ~= true then
        refreshNeedsFullPass = true
    end
    refreshGeneration = refreshGeneration + 1
    local generation = refreshGeneration
    ns.refreshPending = true
    if C_Timer and type(C_Timer.NewTimer) == "function" then
        if refreshTimer and type(refreshTimer.Cancel) == "function" then
            refreshTimer:Cancel()
        end
        refreshTimer = C_Timer.NewTimer(QUEST_LOG_SETTLE_SECONDS, function()
            DeliverRefresh(generation)
        end)
        return
    end
    if C_Timer and type(C_Timer.After) == "function" then
        C_Timer.After(QUEST_LOG_SETTLE_SECONDS, function()
            DeliverRefresh(generation)
        end)
        return
    end
    DeliverRefresh(generation)
end

local function OnEvent(_, event, arg1)
    if event == "ADDON_LOADED" then
        if arg1 == ADDON_NAME then
            ns.InitializeStorage()
            if ns.UI and ns.UI.Initialize then
                ns.UI:Initialize()
            end
        elseif ns.MapPins and WorldMapFrame then
            ns.MapPins:HookMap()
            ns.MapPins:Refresh()
        end
    elseif event == "PLAYER_ENTERING_WORLD" then
        if ns.PlayerState and ns.PlayerState.RetryFailedCompletions then
            ns.PlayerState:RetryFailedCompletions()
        end
        if not ns.questAuditPrinted then
            ns.questAuditPrinted = true
            ns.PrintQuestAudit()
        end
    elseif event == "ZONE_CHANGED" or event == "ZONE_CHANGED_INDOORS" or event == "ZONE_CHANGED_NEW_AREA" then
        if ns.Engine and ns.Engine.NotePosition then
            ns.Engine:NotePosition()
        end
        return
    elseif event == "QUEST_TURNED_IN" and ns.PlayerState and ns.PlayerState.ForgetQuest then
        ns.PlayerState:ForgetQuest(arg1, true)
    elseif event == "QUEST_REMOVED" and ns.PlayerState and ns.PlayerState.ForgetQuest then
        ns.PlayerState:ForgetQuest(arg1, false)
    elseif event == "SKILL_LINES_CHANGED" and ns.PlayerState then
        ns.PlayerState:InvalidateProfessions()
    elseif event == "TAXIMAP_OPENED" and ns.Taxi then
        if not ns.Taxi:Capture() and C_Timer and type(C_Timer.After) == "function" then
            C_Timer.After(0.2, function()
                if ns.Taxi then ns.Taxi:Capture() end
            end)
        end
    elseif (event == "DISPLAY_SIZE_CHANGED" or event == "UI_SCALE_CHANGED") and ns.UI and ns.UI.ValidatePositions then
        ns.UI:ValidatePositions()
        return
    end
    if ns.QuestAudit then ns.QuestAudit:Handle(event) end
    if ns.QuestDialog then ns.QuestDialog:Handle(event) end
    ns.ScheduleRefresh(event == "QUEST_LOG_UPDATE")
end

if CreateFrame then
    local eventFrame = CreateFrame("Frame")
    eventFrame:RegisterEvent("ADDON_LOADED")
    eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
    eventFrame:RegisterEvent("PLAYER_LEVEL_UP")
    eventFrame:RegisterEvent("QUEST_LOG_UPDATE")
    eventFrame:RegisterEvent("QUEST_TURNED_IN")
    eventFrame:RegisterEvent("QUEST_REMOVED")
    eventFrame:RegisterEvent("TAXIMAP_OPENED")
    eventFrame:RegisterEvent("SKILL_LINES_CHANGED")
    eventFrame:RegisterEvent("ZONE_CHANGED")
    eventFrame:RegisterEvent("ZONE_CHANGED_INDOORS")
    eventFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    eventFrame:RegisterEvent("DISPLAY_SIZE_CHANGED")
    eventFrame:RegisterEvent("UI_SCALE_CHANGED")
    eventFrame:RegisterEvent("GOSSIP_SHOW")
    eventFrame:RegisterEvent("QUEST_GREETING")
    eventFrame:RegisterEvent("QUEST_DETAIL")
    eventFrame:RegisterEvent("QUEST_PROGRESS")
    eventFrame:RegisterEvent("QUEST_COMPLETE")
    eventFrame:SetScript("OnEvent", OnEvent)
    ns.eventFrame = eventFrame
end

function ns.PrintQuestAudit()
    if not ns.QuestAudit then return end
    local lines = ns.QuestAudit:Lines()
    if #lines == 0 then return end
    ns.QuestAudit:Announce("these guide steps were not offered to this character:")
    for _, line in ipairs(lines) do
        ns.QuestAudit:Announce("  " .. line)
    end
end
