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
    schemaVersion = 2,
    activeGoal = nil,
    manualCompleted = {},
    deferred = {},
    notOffered = {},
    history = {},
    completionLedger = {},
    taxiRoutes = {},
    taxiNodes = {},
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

function ns.ScheduleRefresh()
    if ns.refreshPending then
        return
    end
    ns.refreshPending = true
    local function Refresh()
        ns.refreshPending = false
        if ns.Engine and ns.Engine.Refresh then
            ns.Engine:Refresh()
        end
    end
    if C_Timer and C_Timer.After then
        C_Timer.After(0.1, Refresh)
    else
        Refresh()
    end
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
    elseif event == "PLAYER_ENTERING_WORLD" and not ns.questAuditPrinted then
        ns.questAuditPrinted = true
        ns.PrintQuestAudit()
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
    end
    if ns.QuestAudit then ns.QuestAudit:Handle(event) end
    if ns.QuestDialog then ns.QuestDialog:Handle(event) end
    ns.ScheduleRefresh()
end

if CreateFrame then
    local eventFrame = CreateFrame("Frame")
    eventFrame:RegisterEvent("ADDON_LOADED")
    eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
    eventFrame:RegisterEvent("PLAYER_LEVEL_UP")
    eventFrame:RegisterEvent("QUEST_LOG_UPDATE")
    eventFrame:RegisterEvent("TAXIMAP_OPENED")
    eventFrame:RegisterEvent("SKILL_LINES_CHANGED")
    eventFrame:RegisterEvent("ZONE_CHANGED")
    eventFrame:RegisterEvent("ZONE_CHANGED_INDOORS")
    eventFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    eventFrame:RegisterEvent("DISPLAY_SIZE_CHANGED")
    eventFrame:RegisterEvent("UI_SCALE_CHANGED")
    eventFrame:RegisterEvent("GOSSIP_SHOW")
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
