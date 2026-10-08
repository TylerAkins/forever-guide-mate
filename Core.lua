local ADDON_NAME, ns = ...

ForeverGuideMate = ns
ns.ADDON_NAME = ADDON_NAME
ns.guides = ns.guides or {}
ns.guideOrder = ns.guideOrder or {}

local ACCOUNT_DEFAULTS = {
    schemaVersion = 5,
    uiOpen = true,
    showMinimapButton = true,
    hideInCombat = false,
    waypointProvider = "blizzard",
    guideScale = 1,
    guideOpacity = 1,
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
    minimapButton = {
        position = 200,
    },
    autoAdvance = true,
    autoQuest = true,
}

local CHARACTER_DEFAULTS = {
    schemaVersion = 10,
    activeGoal = nil,
    manualCompleted = {},
    deferred = {},
    skipped = {},
    skippedBecause = {},
    notOffered = {},
    history = {},
    completionLedger = {},
    activeGoalByGuide = {},
    guideRevisions = {},
    taxiRoutes = {},
    taxiBoarding = {},
    taxiNodes = {},
    taxiNodesByContinent = {},
}

-- Woven Leveling chapter ids → Casual spine ids.
-- Schema 5 early-name remaps target these same Casual ids where applicable.
local WOVEN_TO_CASUAL_CHAPTER_IDS = {
    ["leveling-era-the-barrens-part-1"] = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
    ["leveling-era-the-barrens-part-2"] = "leveling-era-horde-the-barrens",
    ["leveling-era-the-barrens-part-3"] = "leveling-era-horde-the-barrens",
    ["leveling-era-silverpine-forest"] = "leveling-era-horde-silverpine-forest",
    ["leveling-era-westfall"] = "leveling-era-alliance-westfall",
    ["leveling-era-darkshore-part-1"] = "leveling-era-alliance-darkshore",
    ["leveling-era-darkshore-part-2"] = "leveling-era-alliance-darkshore-part-2",
    ["leveling-era-darkshore-part-3"] = "leveling-era-alliance-darkshore-part-2",
    ["leveling-era-loch-modan"] = "leveling-era-alliance-loch-modan",
    ["leveling-era-redridge-mountains-part-1"] = "leveling-era-alliance-redridge-and-westfall",
    ["leveling-era-redridge-mountains-part-2"] = "leveling-era-alliance-duskwood-and-redridge-mountains",
    ["leveling-era-ashenvale-part-1"] = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
    ["leveling-era-ashenvale-part-2"] = "leveling-era-horde-ashenvale",
    ["leveling-era-ashenvale-part-3"] = "leveling-era-horde-ashenvale-part-2",
    ["leveling-era-ashenvale-part-4"] = "leveling-era-horde-ashenvale-part-2",
    ["leveling-era-stonetalon-mountains-part-1"] = "leveling-era-horde-stonetalon-mountains",
    ["leveling-era-stonetalon-mountains-part-2"] = "leveling-era-horde-stonetalon-mountains",
    ["leveling-era-stonetalon-mountains-part-3"] = "leveling-era-horde-stonetalon-mountains",
    ["leveling-era-stonetalon-mountains-part-4"] = "leveling-era-horde-stonetalon-mountains",
    ["leveling-era-duskwood"] = "leveling-era-alliance-duskwood-and-redridge-mountains",
    ["leveling-era-wetlands"] = "leveling-era-alliance-wetlands",
    ["leveling-era-hillsbrad-foothills"] = "leveling-era-horde-hillsbrad-foothills",
    ["leveling-era-thousand-needles-part-1"] = "leveling-era-horde-thousand-needles",
    ["leveling-era-thousand-needles-part-2"] = "leveling-era-horde-thousand-needles-part-2",
}

local function RemapChapterKey(map, key)
    if type(key) ~= "string" or type(map) ~= "table" then
        return key
    end
    local mapped = map[key]
    if mapped then
        return mapped
    end
    for oldID, newID in pairs(map) do
        local prefix = oldID .. ":"
        if string.sub(key, 1, #prefix) == prefix then
            return newID .. ":" .. string.sub(key, #prefix + 1)
        end
    end
    return key
end

local function RemapCharacterChapterFields(character, map)
    local function RemapStringField(field)
        if type(character[field]) == "string" then
            character[field] = RemapChapterKey(map, character[field])
        end
    end
    RemapStringField("selectedGuide")
    RemapStringField("eraChapterPick")
    RemapStringField("eraFloor")
    RemapStringField("eraSegment")
    RemapStringField("activeGoal")
    if type(character.activeGoalByGuide) == "table" then
        local nextByGuide = {}
        for guideID, goalID in pairs(character.activeGoalByGuide) do
            nextByGuide[RemapChapterKey(map, guideID)] = RemapChapterKey(map, goalID)
        end
        character.activeGoalByGuide = nextByGuide
    end
    if type(character.completionLedger) == "table" then
        local nextLedger = {}
        for guideID, revisions in pairs(character.completionLedger) do
            nextLedger[RemapChapterKey(map, guideID)] = revisions
        end
        character.completionLedger = nextLedger
    end
    for _, field in ipairs({ "skipped", "deferred", "manualCompleted", "notOffered" }) do
        if type(character[field]) == "table" then
            local nextTable = {}
            for goalID, value in pairs(character[field]) do
                nextTable[RemapChapterKey(map, goalID)] = value
            end
            character[field] = nextTable
        end
    end
    -- Cascade parents are goal ids; remap both keys and values.
    if type(character.skippedBecause) == "table" then
        local nextBecause = {}
        for goalID, parentID in pairs(character.skippedBecause) do
            local newGoal = RemapChapterKey(map, goalID)
            local newParent = type(parentID) == "string" and RemapChapterKey(map, parentID) or parentID
            nextBecause[newGoal] = newParent
        end
        character.skippedBecause = nextBecause
    end
    if type(character.history) == "table" then
        for index, goalID in ipairs(character.history) do
            character.history[index] = RemapChapterKey(map, goalID)
        end
    end
end

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
    if (tonumber(account.schemaVersion) or 1) < 4 then
        local tracker = type(account.tracker) == "table" and account.tracker or {}
        if type(account.guideScale) ~= "number" then
            account.guideScale = type(tracker.scale) == "number" and tracker.scale or 1
        end
        account.schemaVersion = 4
    end
    if (tonumber(account.schemaVersion) or 1) < 5 then
        if type(account.guideOpacity) ~= "number" or account.guideOpacity < 0.5 or account.guideOpacity > 1 then
            account.guideOpacity = 1
        end
        account.schemaVersion = 5
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
    if (tonumber(character.schemaVersion) or 1) < 5 then
        local eraChapterIDs = {
            ["leveling-era-1-12-durotar"] = "leveling-era-durotar",
            ["leveling-era-1-12-mulgore"] = "leveling-era-mulgore",
            ["leveling-era-1-12-tirisfal-glades"] = "leveling-era-tirisfal-glades",
            ["leveling-era-1-12-dun-morogh"] = "leveling-era-dun-morogh",
            ["leveling-era-1-12-elwynn-forest"] = "leveling-era-elwynn-forest",
            ["leveling-era-1-12-teldrassil"] = "leveling-era-teldrassil",
            ["leveling-era-12-20-barrens"] = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            ["leveling-era-22-23-southern-barrens"] = "leveling-era-horde-the-barrens",
            ["leveling-era-12-20-silverpine-forest"] = "leveling-era-horde-silverpine-forest",
            ["leveling-era-12-17-westfall"] = "leveling-era-alliance-westfall",
            ["leveling-era-12-17-darkshore"] = "leveling-era-alliance-darkshore",
            ["leveling-era-20-21-darkshore"] = "leveling-era-alliance-darkshore-part-2",
            ["leveling-era-23-24-darkshore"] = "leveling-era-alliance-darkshore-part-2",
            ["leveling-era-17-18-loch-modan"] = "leveling-era-alliance-loch-modan",
            ["leveling-era-18-20-redridge-mountains"] = "leveling-era-alliance-redridge-and-westfall",
            ["leveling-era-27-28-redridge-mountains"] = "leveling-era-alliance-duskwood-and-redridge-mountains",
            ["leveling-era-21-22-ashenvale"] = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            ["leveling-era-20-22-stonetalon-mountains"] = "leveling-era-horde-stonetalon-mountains",
            ["leveling-era-22-23-stonetalon-mountains"] = "leveling-era-horde-stonetalon-mountains",
            ["leveling-era-23-25-stonetalon-mountains"] = "leveling-era-horde-stonetalon-mountains",
            ["leveling-era-28-29-duskwood"] = "leveling-era-alliance-duskwood-and-redridge-mountains",
        }
        RemapCharacterChapterFields(character, eraChapterIDs)
        character.schemaVersion = 5
    end
    if (tonumber(character.schemaVersion) or 1) < 6 then
        RemapCharacterChapterFields(character, {
            ["leveling-era-ashenvale"] = "leveling-era-ashenvale-part-1",
        })
        character.schemaVersion = 6
    end
    if (tonumber(character.schemaVersion) or 1) < 7 then
        character.skipped = type(character.skipped) == "table" and character.skipped or {}
        character.skippedBecause = type(character.skippedBecause) == "table" and character.skippedBecause or {}
        if type(character.deferred) == "table" then
            for goalID, value in pairs(character.deferred) do
                if value then character.skipped[goalID] = true end
            end
            character.deferred = {}
        end
        -- Keep selectedGuide = "leveling-era" so MigrateEraProgress can remap
        -- selection and merge the leveling-era completion ledger into Casual.
        character.schemaVersion = 7
    end
    if (tonumber(character.schemaVersion) or 1) < 8 then
        RemapCharacterChapterFields(character, WOVEN_TO_CASUAL_CHAPTER_IDS)
        character.schemaVersion = 8
    end
    if (tonumber(character.schemaVersion) or 1) < 9 then
        -- Schema 8 remapped skipped but not skippedBecause / manualCompleted /
        -- notOffered. Re-run the woven→Casual map (idempotent) so cascade skips
        -- and refusal reports stay aligned with goal ids.
        RemapCharacterChapterFields(character, WOVEN_TO_CASUAL_CHAPTER_IDS)
        character.schemaVersion = 9
    end
    if (tonumber(character.schemaVersion) or 1) < 10 then
        if type(character.taxiBoarding) ~= "table" then character.taxiBoarding = {} end
        if next(character.taxiBoarding) == nil and type(character.taxiRoutes) == "table" and ns.Travel then
            for mapID, route in pairs(character.taxiRoutes) do
                if type(route) == "table" and type(route.destinations) == "table"
                    and type(route.x) == "number" and type(route.y) == "number" then
                    local best, bestDistance
                    for _, master in ipairs(ns.Travel.flightMasters) do
                        if master.mapID == mapID and type(master.node) == "string" then
                            local dist = ns.Navigation
                                and ns.Navigation.Distance(route.x, route.y, master.x, master.y)
                            if dist and (not bestDistance or dist < bestDistance) then
                                best, bestDistance = master, dist
                            end
                        end
                    end
                    if best and bestDistance and bestDistance <= 0.06 then
                        local key = string.lower((best.node:gsub("^%s+", ""):gsub("%s+$", "")))
                        character.taxiBoarding[key] = {
                            mapID = best.mapID,
                            x = best.x,
                            y = best.y,
                            node = best.node,
                            destinations = route.destinations,
                        }
                    end
                end
            end
        end
        character.schemaVersion = 10
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
    elseif event == "PLAYER_REGEN_DISABLED" and ns.UI then
        if ns.UI.CloseSettingsIfOpen then ns.UI:CloseSettingsIfOpen() end
        if ns.UI.ApplySettings then ns.UI:ApplySettings() end
        return
    elseif event == "PLAYER_REGEN_ENABLED" then
        if ns.UI and ns.UI.ApplySettings then ns.UI:ApplySettings() end
        if ns.QuestDialog then ns.QuestDialog:Retry() end
        return
    elseif event == "BAG_UPDATE_DELAYED" then
        if ns.PlayerState and ns.PlayerState.BagsChanged and ns.PlayerState:BagsChanged() then
            ns.ScheduleRefresh()
        end
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
    eventFrame:RegisterEvent("MAP_EXPLORATION_UPDATED")
    eventFrame:RegisterEvent("DISPLAY_SIZE_CHANGED")
    eventFrame:RegisterEvent("UI_SCALE_CHANGED")
    eventFrame:RegisterEvent("PLAYER_REGEN_DISABLED")
    eventFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
    eventFrame:RegisterEvent("GOSSIP_SHOW")
    eventFrame:RegisterEvent("QUEST_GREETING")
    eventFrame:RegisterEvent("QUEST_DETAIL")
    eventFrame:RegisterEvent("QUEST_PROGRESS")
    eventFrame:RegisterEvent("QUEST_COMPLETE")
    eventFrame:RegisterEvent("BAG_UPDATE_DELAYED")
    eventFrame:SetScript("OnEvent", OnEvent)
    local taxiElapsed, wasOnTaxi = 0, false
    eventFrame:SetScript("OnUpdate", function(_, elapsed)
        taxiElapsed = taxiElapsed + elapsed
        if taxiElapsed < 0.5 then return end
        taxiElapsed = 0
        if type(UnitOnTaxi) ~= "function" then return end
        local onTaxi = not not UnitOnTaxi("player")
        if onTaxi ~= wasOnTaxi then
            ns.ScheduleRefresh()
        end
        wasOnTaxi = onTaxi
    end)
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
