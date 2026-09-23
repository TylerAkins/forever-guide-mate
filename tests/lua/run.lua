local failures = 0
local assertions = 0

local function Check(value, message)
    assertions = assertions + 1
    if not value then
        failures = failures + 1
        io.stderr:write("FAIL: " .. message .. "\n")
    end
end

local function Equal(actual, expected, message)
    Check(actual == expected, message .. " (expected " .. tostring(expected) .. ", got " .. tostring(actual) .. ")")
end

local ns = {}
local function Load(path)
    local chunk, reason = loadfile(path)
    Check(chunk ~= nil, "load " .. path .. ": " .. tostring(reason))
    if chunk then
        chunk("ForeverGuideMate", ns)
    end
end

CreateFrame = nil
C_Timer = nil
Load("Core.lua")
Load("PlayerState.lua")
Load("Travel.lua")
Load("Taxi.lua")
Load("GuideEngine.lua")
Load("QuestDialog.lua")
Load("Navigation.lua")
Load("TomTomWaypoints.lua")
Load("MapPins.lua")
Load("UI.lua")
Load("Guides/Dungeons/RagefireChasm.lua")
Load("Guides/Dungeons/WailingCaverns.lua")
Load("Guides/Dungeons/RuinsOfLordaeron.lua")
Load("Guides/Dungeons/Deadmines.lua")
Load("Guides/Dungeons/HallOfThanes.lua")
Load("Guides/Leveling/ZephrasIsle.lua")

local baseState = {
    faction = "Horde",
    raceID = 2,
    classID = 1,
    level = 14,
    professions = { [164] = 75 },
    professionsKnown = true,
    quests = {},
    questLogKnown = true,
    completedQuests = {},
    questCompletionKnown = true,
    mapID = 1454,
    x = 0.4,
    y = 0.4,
}

Equal(ns.EvaluateCondition({ faction = "Horde" }, baseState), true, "faction condition")
Equal(ns.EvaluateCondition({ race = { 2, 5 } }, baseState), true, "race condition")
Equal(ns.EvaluateCondition({ class = 1 }, baseState), true, "class condition")
Equal(ns.EvaluateCondition({ level = { min = 10, max = 20 } }, baseState), true, "level condition")
Equal(ns.EvaluateCondition({ profession = { skillLineID = 164, minRank = 50 } }, baseState), true, "profession condition")
Equal(ns.EvaluateCondition({ all = { { faction = "Horde" }, { ["not"] = { class = 8 } } } }, baseState), true,
    "all and not condition")
Equal(ns.EvaluateCondition({ any = { { class = 8 }, { race = 2 } } }, baseState), true, "any condition")
local classEligible, classReason = ns.EvaluateCondition({ class = 8 }, baseState)
Equal(classEligible, false, "ineligible class is rejected")
Check(type(classReason) == "string", "ineligible class retains a reason")

local unknownProfession = {}
for key, value in pairs(baseState) do unknownProfession[key] = value end
unknownProfession.professionsKnown = false
Equal(ns.EvaluateCondition({ profession = { skillLineID = 164 } }, unknownProfession), nil,
    "unknown profession remains unknown")
local unknownQuest = {}
for key, value in pairs(baseState) do unknownQuest[key] = value end
unknownQuest.questCompletionKnown = false
unknownQuest.questLogKnown = false
Equal(ns.EvaluateCondition({ quest = { id = 5722, state = "completed" } }, unknownQuest), nil,
    "unknown quest completion remains unknown")

local duplicateOK = pcall(function()
    ns:RegisterGuide({ id = "dungeons-ragefire-chasm-horde", title = "Duplicate", category = "Test", revision = 1,
        goals = { { id = "one", kind = "note", text = "One" } } })
end)
Equal(duplicateOK, false, "duplicate guide rejected")

local badReferenceOK = pcall(function()
    ns:RegisterGuide({ id = "bad-reference", title = "Bad", category = "Test", revision = 1,
        goals = { { id = "one", kind = "note", text = "One", dependsOn = { "missing" } } } })
end)
Equal(badReferenceOK, false, "unknown dependency rejected")

local badCoordinateOK = pcall(function()
    ns:RegisterGuide({ id = "bad-coordinate", title = "Bad", category = "Test", revision = 1,
        goals = { { id = "one", kind = "travel", text = "One", route = { { mapID = 1, x = 2, y = 0 } } } } })
end)
Equal(badCoordinateOK, false, "invalid coordinate rejected")

ForeverGuideMateDB = {
    schemaVersion = 1,
    tracker = { shown = false, locked = true, scale = 1.2, x = 9000, y = 9000 },
    arrow = { shown = true, locked = false, scale = 0.9, x = 400, y = 400 },
}
ForeverGuideMateCharDB = {
    schemaVersion = 1,
    selectedGuide = "remember-me",
    manualCompleted = { old = true },
    skipped = { later = true },
    history = {},
}
ns.InitializeStorage()
Equal(ns.db.schemaVersion, 3, "account schema migrated")
Equal(ns.charDB.schemaVersion, 2, "character schema migrated")
Equal(ns.db.tracker.point, "LEFT", "schema migration places the tracker on the left")
Equal(ns.db.tracker.relativePoint, "LEFT", "schema migration anchors the tracker to the left edge")
Equal(ns.db.tracker.x, 0, "schema migration starts the tracker at the left edge")
Equal(ns.db.tracker.y, 0, "schema migration centers the tracker vertically")
Equal(ns.db.tracker.locked, true, "schema migration preserves tracker lock")
Equal(ns.db.tracker.scale, 1.2, "schema migration preserves tracker scale")
Equal(ns.db.uiOpen, false, "schema migration preserves closed state")
Equal(ns.charDB.deferred.later, true, "schema migration converts skipped steps to deferred")
ns.InitializeStorage()
Equal(ns.charDB.selectedGuide, "remember-me", "existing character progress is preserved")
ns.charDB.selectedGuide = nil
ns.Engine:Refresh(baseState)
Equal(ns.Engine.currentGuide, nil, "startup does not auto-select a guide")
Equal(ns.Engine.status, "Choose a guide.", "startup asks the player to choose a guide")
Equal(ns.charDB.selectedGuide, nil, "declining to auto-select does not invent a saved guide")
ns.charDB.selectedGuide = "dungeons-ragefire-chasm-horde"
ns.charDB.activeGoal = nil
ns.charDB.manualCompleted = {}
ns.charDB.deferred = {}
ns.charDB.history = {}
ns.charDB.completionLedger = {}
ns.db.uiOpen = true

ns.Engine:Refresh(baseState)
Check(ns.Engine.currentGoal ~= nil, "engine selects a ready goal")
Equal(ns.Engine.currentGoal.id, "accept-hidden-enemies-1", "engine prefers a same-map ready goal")
ns.Engine:CompleteCurrent()
Equal(ns.Engine:GetLedger(ns.Engine.currentGuide, false)["accept-hidden-enemies-1"], true,
    "manual completion persisted in the revision ledger")

local navigationGoal = { route = { { mapID = 1454, x = 0.5, y = 0.4, label = "Test point", radius = 0.01 } } }
local rotation, distance = ns.Navigation:GetDirection(navigationGoal, baseState, 0)
Check(type(rotation) == "number", "navigation returns a bearing")
Equal(distance, nil, "navigation does not fabricate normalized-coordinate distance")
Equal(rotation, 0, "an eastward target is straight ahead while facing east")
local northGoal = { route = { { mapID = 1454, x = 0.4, y = 0.3, label = "North" } } }
local northRotation = ns.Navigation:GetDirection(northGoal, baseState, math.pi / 2)
Equal(northRotation, 0, "a northward target is straight ahead while facing north")
local flightRotation, _, flightStatus, _, flightMode = ns.Navigation:GetDirection(navigationGoal,
    { mapID = 1456, x = 0.5, y = 0.5, faction = "Horde" }, 0)
Check(type(flightRotation) == "number", "same-continent travel points at the local flight master")
Check(string.find(flightStatus, "Tal", 1, true), "Thunder Bluff uses Tal for an Orgrimmar step")
Equal(flightMode, "bearing", "a flight master on the current map supplies a bearing")
local noRotation, _, status, _, offMapMode = ns.Navigation:GetDirection(navigationGoal,
    { mapID = 1429, x = 0.5, y = 0.5, faction = "Alliance" }, 0)
Equal(noRotation, nil, "cross-map destination has no unreliable bearing")
Check(type(status) == "string", "cross-map destination has a status")
Equal(offMapMode, "instruction", "cross-map destination keeps an instruction state")

Enum = { FlightPathState = { Reachable = 2 } }
local fallbackTaxiGoal = {
    taxiDestination = "Thunder Bluff",
    route = { { mapID = 1454, x = 0.45, y = 0.63, label = "Fallback route" } },
}
local fallbackTaxiLeg = ns.Navigation:GetActiveLeg(fallbackTaxiGoal, { mapID = 1413, x = 0.4, y = 0.4 })
Check(fallbackTaxiLeg.fallbackTaxi, "RFC fallback finds the Crossroads flight master before taxi discovery")
local taxiAPI = {
    C_Map = {
        GetBestMapForUnit = function() return 1413 end,
        GetPlayerMapPosition = function() return { GetXY = function() return 0.52, 0.30 end } end,
    },
    C_TaxiMap = {
        GetAllTaxiNodes = function()
            return {
                { name = "Thunder Bluff, Mulgore", state = 2 },
                { name = "Undercity", state = 3 },
            }
        end,
    },
}
Equal(ns.Taxi:Capture(taxiAPI), true, "opening a flight master captures reachable Forever routes")
local learnedTaxiGoal = {
    taxiDestination = "Thunder Bluff",
    route = { { mapID = 1454, x = 0.45, y = 0.63, label = "Fallback route" } },
}
local learnedTaxiLeg = ns.Navigation:GetActiveLeg(learnedTaxiGoal, { mapID = 1413, x = 0.4, y = 0.4 })
Equal(learnedTaxiLeg.mapID, 1413, "learned flight route targets the local flight master")
Check(learnedTaxiLeg.learnedTaxi, "learned flight route supersedes the authored fallback")
Check(string.find(learnedTaxiLeg.label, "Thunder Bluff", 1, true), "learned route names its destination")
Enum = nil

local mapAPI = {
    GetMapRectOnMap = function(sourceMapID, destinationMapID)
        if sourceMapID == 1454 and destinationMapID == 1411 then return 0.2, 0.6, 0.1, 0.5 end
    end,
}
local projectedX, projectedY = ns.Navigation:ProjectToMap(1454, 0.5, 0.25, 1411, mapAPI)
Equal(projectedX, 0.4, "child-map x coordinate projects onto parent map")
Equal(projectedY, 0.2, "child-map y coordinate projects onto parent map")
local _, _, missingStatus, _, missingMode = ns.Navigation:GetDirection({}, baseState, 0)
Equal(missingStatus, "No waypoint for this step.", "missing coordinates retain a visible status")
Equal(missingMode, "unavailable", "missing coordinates return an unavailable navigation state")
local pinX, pinY = ns.MapPins:GetLocation(navigationGoal, baseState, 1454)
Equal(pinX, 0.5, "map pin uses the active route x coordinate")
Equal(pinY, 0.4, "map pin uses the active route y coordinate")
local parentPinX, parentPinY = ns.MapPins:GetLocation(navigationGoal, baseState, 1411, mapAPI)
Equal(parentPinX, 0.4, "map pin projects onto a viewed parent map")
Equal(parentPinY, 0.26, "map pin projects its y coordinate onto a viewed parent map")
local acquiredPin
MapCanvasPinMixin = {}
WorldMapFrame = {
    IsShown = function() return true end,
    GetMapID = function() return 1454 end,
    AcquirePin = function(_, template, x, y, label)
        acquiredPin = { template = template, x = x, y = y, label = label }
        return { GetMap = function() return WorldMapFrame end }
    end,
    RemovePin = function() acquiredPin.removed = true end,
    AddDataProvider = function(_, provider) WorldMapFrame.provider = provider end,
}
MapCanvasDataProviderMixin = { GetMap = function() return WorldMapFrame end }
CreateFromMixins = function(mixin)
    local result = {}
    for key, value in pairs(mixin) do result[key] = value end
    return result
end
ns.Engine.currentGoal = navigationGoal
ns.Engine.state = baseState
ns.MapPins:Refresh()
Equal(acquiredPin.template, "ForeverGuideMateMapPinTemplate", "map pin uses the guide pin template")
Equal(acquiredPin.x, 0.5, "map pin is acquired at the active route location")
ns.MapPins:Clear()
Equal(acquiredPin.removed, true, "map pin is released through the map canvas")
ns.MapPins.hooked = false
ns.MapPins:HookMap()
Check(WorldMapFrame.provider ~= nil, "map pin registers a Blizzard map data provider")
WorldMapFrame.provider:RefreshAllData()
Equal(acquiredPin.x, 0.5, "map data provider refreshes the guide pin")
WorldMapFrame, MapCanvasPinMixin, MapCanvasDataProviderMixin, CreateFromMixins = nil, nil, nil, nil

local transportGoal = { route = {
    { mapID = 1411, x = 0.5, y = 0.1, complete = { map = { 1420, 1458 } } },
    { mapID = 1420, x = 0.6, y = 0.5, complete = { map = 1458 } },
} }
local leg = ns.Navigation:GetActiveLeg(transportGoal, { mapID = 1420, x = 0.4, y = 0.4, faction = "Horde" })
Equal(leg.mapID, 1420, "transport route advances after map transition")

local undercityGoal = { route = { { mapID = 1458, x = 0.56, y = 0.92, label = "Undercity" } } }
local zeppelin = ns.Navigation:GetActiveLeg(undercityGoal, { mapID = 1454, x = 0.4, y = 0.4, faction = "Horde" })
Equal(zeppelin.mapID, 1411, "Horde on Kalimdor is directed to the Orgrimmar zeppelin")
local localUndercity = ns.Navigation:GetActiveLeg(undercityGoal, { mapID = 1420, x = 0.5, y = 0.4, faction = "Horde" })
Equal(localUndercity.mapID, 1458, "same-continent travel keeps the authored destination")
local barrensGoal = { route = { { mapID = 1413, x = 0.46, y = 0.36, label = "Wailing Caverns" } } }
local theramoreBoat = ns.Navigation:GetActiveLeg(barrensGoal, { mapID = 1453, x = 0.5, y = 0.5, faction = "Alliance" })
Equal(theramoreBoat.mapID, 1453, "Alliance in Stormwind flies toward the Barrens boat")
Check(string.find(theramoreBoat.label, "Stranglethorn", 1, true), "Barrens traffic uses the Booty Bay boat")
local bootyBayBoat = ns.Navigation:GetActiveLeg(barrensGoal, { mapID = 1434, x = 0.26, y = 0.73, faction = "Alliance" })
Equal(bootyBayBoat.mapID, 1434, "Alliance already at Booty Bay takes the Ratchet boat")
Check(string.find(bootyBayBoat.label, "Ratchet", 1, true), "the Booty Bay boat is labeled for Ratchet")
local darnassusGoal = { route = { { mapID = 1457, x = 0.4, y = 0.4, label = "Darnassus" } } }
local auberdineBoat = ns.Navigation:GetActiveLeg(darnassusGoal, { mapID = 1453, x = 0.5, y = 0.5, faction = "Alliance" })
Equal(auberdineBoat.mapID, 1453, "Stormwind Harbor is the Darnassus departure")
Check(string.find(auberdineBoat.label, "Auberdine", 1, true), "northern Kalimdor uses the Auberdine boat")
local duskwoodGoal = { route = { { mapID = 1431, x = 0.73, y = 0.45, label = "Duskwood" } } }
local ratchetBoat = ns.Navigation:GetActiveLeg(duskwoodGoal, { mapID = 1413, x = 0.6, y = 0.4, faction = "Horde" })
Check(string.find(ratchetBoat.label, "Booty Bay", 1, true), "southern Eastern Kingdoms uses the Booty Bay boat")
local gromgol = ns.Navigation:GetActiveLeg(duskwoodGoal, { mapID = 1454, x = 0.4, y = 0.4, faction = "Horde" })
Equal(gromgol.mapID, 1411, "Horde in Orgrimmar takes the Grom'gol zeppelin south")
Check(string.find(gromgol.label, "Grom'gol", 1, true), "the southern zeppelin is labeled for Grom'gol")
local rivergladesGoal = { route = { { mapID = 2548, x = 0.6, y = 0.5, label = "Riverglades" } } }
local powderfuse = ns.Navigation:GetActiveLeg(rivergladesGoal, { mapID = 1446, x = 0.5, y = 0.3, faction = "Alliance" })
Equal(powderfuse.mapID, 1446, "Tanaris boards the Powderfuse Port boat")
Check(string.find(powderfuse.label, "Powderfuse", 1, true), "the Riverglades boat names Powderfuse Port")
local zephrasGoal = { route = { { mapID = 2521, x = 0.6, y = 0.8, label = "Zephras" } } }
local valanaar = ns.Navigation:GetActiveLeg(zephrasGoal, { mapID = 1412, x = 0.4, y = 0.3, faction = "Horde" })
Equal(valanaar.mapID, 1412, "Mulgore boards the Valanaar zeppelin")
Check(string.find(valanaar.label, "Valanaar", 1, true), "the Zephras zeppelin names Valanaar")
local onZephras = ns.Navigation:GetActiveLeg(ns.guides["dungeons-ragefire-chasm-horde"].goals[1], {
    mapID = 2521, x = 0.5, y = 0.5, faction = "Horde",
})
Equal(onZephras.mapID, 2521, "a guide step off Zephras Isle points at the island departure")
Check(string.find(onZephras.label, "Thunder Bluff", 1, true), "Horde on Zephras Isle takes the Thunder Bluff zeppelin")

local rfc = ns.guides["dungeons-ragefire-chasm-horde"]
ns.charDB.manualCompleted = {}
ns.charDB.deferred = {}
ns.charDB.completionLedger = {}
ns.charDB.activeGoal = nil
local completedSatchelState = {}
for key, value in pairs(baseState) do completedSatchelState[key] = value end
completedSatchelState.completedQuests = { [5722] = true }
ns.Engine:Refresh(completedSatchelState)
Check(ns.Engine.currentGoal and ns.Engine.currentGoal.id ~= "accept-searching-satchel",
    "reconciliation does not return to an already-completed quest pickup")
Equal(ns.Engine:IsGoalDone(ns.Engine:GetGoal(rfc, "find-maur-grimtotem"), completedSatchelState, rfc), true,
    "later quest completion infers prerequisite completion")

local objectiveCompleteState = {}
for key, value in pairs(baseState) do objectiveCompleteState[key] = value end
objectiveCompleteState.quests = { [5723] = { complete = true } }
ns.Engine:ReconcileGuide(rfc, objectiveCompleteState)
Equal(ns.Engine:IsGoalDone(ns.Engine:GetGoal(rfc, "accept-testing-strength"), objectiveCompleteState, rfc), true,
    "active objective-complete quest reconciles its pickup")
Equal(ns.Engine:IsGoalDone(ns.Engine:GetGoal(rfc, "complete-testing-strength"), objectiveCompleteState, rfc), true,
    "active objective-complete quest reconciles its objective")

local instanceState = {}
for key, value in pairs(baseState) do instanceState[key] = value end
instanceState.instanceID = 389
ns.Engine:ReconcileGuide(rfc, instanceState)
local enterGoal = ns.Engine:GetGoal(rfc, "enter-ragefire-chasm")
Equal(ns.Engine:IsGoalDone(enterGoal, baseState, rfc), true, "persisted travel completion survives leaving the map")
Equal(ns.Engine:IsGoalDone(ns.Engine:GetGoal(rfc, "accept-power-destroy"), instanceState, rfc), false,
    "completing travel does not infer unrelated quest pickups")

local thunderBluffState = {}
for key, value in pairs(baseState) do thunderBluffState[key] = value end
thunderBluffState.mapID, thunderBluffState.x, thunderBluffState.y = 1456, 0.5, 0.5
thunderBluffState.quests, thunderBluffState.completedQuests = {}, {}
ns.charDB.completionLedger = {}
ns.charDB.activeGoal, ns.charDB.history = nil, {}
ns.Engine:Refresh(thunderBluffState)
Equal(ns.Engine.currentGoal.id, "accept-searching-satchel", "Thunder Bluff uses the local RFC pickup first")
local thunderBluffLeg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, thunderBluffState)
Equal(thunderBluffLeg.mapID, 1456, "Thunder Bluff route skips the obsolete Orgrimmar transport leg")
local thunderBluffPinX = ns.MapPins:GetLocation(ns.Engine.currentGoal, thunderBluffState, 1456)
Check(type(thunderBluffPinX) == "number", "Thunder Bluff pickup supplies a same-map pin")

ns.Engine.currentGuide = rfc
ns.Engine.currentGoal = ns.Engine:GetGoal(rfc, "complete-testing-strength")
ns.Engine.state = thunderBluffState
ns.charDB.activeGoal = ns.Engine.currentGoal.id
ns.charDB.history = {}
ns.Engine:Previous()
Equal(ns.Engine.currentGoal.id, "enter-ragefire-chasm", "back can review the prior authored step without history")

ns:RegisterGuide({
    id = "progress-test", title = "Progress Test", category = "Test", revision = 1,
    goals = {
        { id = "progress-manual", kind = "note", text = "Manual" },
        { id = "progress-observed", kind = "objective", text = "Observed",
            complete = { quest = { id = 9001, state = "completed" } } },
        { id = "progress-ineligible", kind = "note", text = "Ineligible", conditions = { class = 8 } },
        { id = "progress-unknown", kind = "note", text = "Unknown",
            conditions = { profession = { skillLineID = 333 } } },
    },
})
local progressGuide = ns.guides["progress-test"]
local progressState = {}
for key, value in pairs(baseState) do progressState[key] = value end
progressState.completedQuests = { [9001] = true }
progressState.professionsKnown = false
ns.Engine:GetLedger(progressGuide, true)["progress-manual"] = true
ns.charDB.deferred["progress-unknown"] = true
local progress = ns.Engine:GetGuideProgress(progressGuide, progressState)
Equal(progress.total, 4, "progress reports all authored steps")
Equal(progress.eligible, 3, "progress excludes definitively ineligible steps")
ns:RegisterGuide({
    id = "progress-level", title = "Progress Level", category = "Test", revision = 1,
    goals = {
        { id = "progress-now", kind = "note", text = "Now" },
        { id = "progress-later", kind = "note", text = "Later", conditions = { level = { min = 10 } } },
        { id = "progress-other-class", kind = "note", text = "Mage", conditions = { class = 8 } },
    },
})
local lowProgressState = {}
for key, value in pairs(progressState) do lowProgressState[key] = value end
lowProgressState.level = 1
local levelProgress = ns.Engine:GetGuideProgress(ns.guides["progress-level"], lowProgressState)
Equal(levelProgress.eligible, 2, "progress keeps steps the player will reach at a higher level")
Equal(progress.completed, 2, "progress counts observed and manual completion")
Equal(progress.percentage, 67, "progress percentage is rounded")
ns.charDB.deferred["progress-manual"] = true
local deferredProgress = ns.Engine:GetGuideProgress(progressGuide, progressState)
Equal(deferredProgress.completed, 2, "deferring a step does not increase completion")

ns.charDB.selectedGuide = "dungeons-ragefire-chasm-horde"
ns.charDB.activeGoal = nil
ns.charDB.manualCompleted = {}
ns.charDB.deferred = {}
ns.charDB.history = {}
ns.charDB.completionLedger = {}
ns.Engine:Refresh(baseState)
local skippedID = ns.Engine.currentGoal.id
local beforeSkip = ns.Engine:GetGuideProgress(rfc, baseState).completed
ns.Engine:SkipCurrent()
Equal(ns.charDB.deferred[skippedID], true, "skip defers the current step")
Equal(ns.Engine:GetGuideProgress(rfc, baseState).completed, beforeSkip, "skip does not count as completion")
local completedID = ns.Engine.currentGoal.id
ns.Engine:CompleteCurrent()
Check(ns.Engine:GetGuideProgress(rfc, baseState).completed > beforeSkip,
    "manual complete increases completion")
ns.Engine:Previous()
Equal(ns.Engine.currentGoal.id, completedID, "back returns to viewed-step history")
Equal(ns.Engine.status, "Reviewing a previous step.", "back keeps a completed prior step available for review")

local placement = { point = "TOP", relativePoint = "TOP", x = 50000, y = -50000, scale = 5 }
ns.UI.NormalizePlacement(placement, { point = "TOP", relativePoint = "TOP", x = 0, y = -90, scale = 1 },
    1000, 800)
Equal(placement.x, 968, "saved x position is clamped")
Equal(placement.y, -768, "saved y position is clamped")
Equal(placement.scale, 1.4, "saved scale is clamped")
local clampX, clampY = ns.UI.ClampBounds(-40, 286, -20, 158, 0, 800, 0, 600, 12)
Equal(clampX, 52, "frame bounds are corrected inside the left screen edge")
Equal(clampY, 32, "frame bounds are corrected inside the bottom screen edge")

ns.PlayerState:InvalidateProfessions()
local professionAPI = {
    GetProfessions = function() return 1 end,
    GetProfessionInfo = function() return "Blacksmithing", nil, 80, nil, nil, nil, 164 end,
}
local professions, known = ns.PlayerState:GetProfessions(professionAPI)
Equal(known, true, "profession API detected")
Equal(professions[164], 80, "profession rank captured")

local wc = ns.guides["dungeons-wailing-caverns"]
Check(wc ~= nil, "wailing caverns guide is registered")
Equal(wc.conditions.all[1].level.min, 15, "wailing caverns uses the highest quest required level")
local allianceCaverns = {}
for key, value in pairs(baseState) do allianceCaverns[key] = value end
allianceCaverns.faction = "Alliance"
allianceCaverns.level = 15
allianceCaverns.quests = {}
allianceCaverns.completedQuests = {}
ns.Engine:SelectGuide("dungeons-wailing-caverns")
ns.Engine:Refresh(allianceCaverns)
Equal(ns.Engine.currentGoal.id, "accept-smart-drinks", "alliance starts on a shared wailing caverns pickup")
Equal(ns.EvaluateCondition(wc.conditions, allianceCaverns), true, "level 15 alliance is eligible for wailing caverns")
local belowCaverns = {}
for key, value in pairs(allianceCaverns) do belowCaverns[key] = value end
belowCaverns.level = 14
Equal(ns.EvaluateCondition(wc.conditions, belowCaverns), false, "level 14 is below the wailing caverns guide")
local hordeCaverns = {}
for key, value in pairs(allianceCaverns) do hordeCaverns[key] = value end
hordeCaverns.faction = "Horde"
ns.charDB.activeGoal = nil
ns.charDB.history = {}
ns.charDB.deferred = {}
ns.charDB.completionLedger = {}
ns.Engine:Refresh(hordeCaverns)
Equal(ns.Engine.currentGoal.id, "accept-hamuul-runetotem", "horde starts on the wailing caverns fang chain")
local trackedCavernQuests = {}
for _, questID in ipairs(ns.GetTrackedQuestIDs()) do trackedCavernQuests[questID] = true end
Check(trackedCavernQuests[1487], "deviate eradication is tracked")
Check(trackedCavernQuests[3366], "the alternate glowing shard quest is tracked")

local ruins = ns.guides["dungeons-ruins-of-lordaeron"]
Check(ruins ~= nil, "ruins of lordaeron guide is registered")
Equal(ruins.conditions.all[1].level.min, 16, "ruins of lordaeron uses the highest quest required level")
local allianceRuins = {}
for key, value in pairs(baseState) do allianceRuins[key] = value end
allianceRuins.faction = "Alliance"
allianceRuins.level = 16
allianceRuins.quests = {}
allianceRuins.completedQuests = {}
ns.charDB.activeGoal = nil
ns.charDB.history = {}
ns.charDB.deferred = {}
ns.charDB.completionLedger = {}
ns.Engine:SelectGuide("dungeons-ruins-of-lordaeron")
ns.Engine:Refresh(allianceRuins)
Equal(ns.Engine.currentGoal.id, "enter-ruins-of-lordaeron", "alliance starts at the ruins entrance")
local hordeRuins = {}
for key, value in pairs(allianceRuins) do hordeRuins[key] = value end
hordeRuins.faction = "Horde"
ns.charDB.activeGoal = nil
ns.charDB.history = {}
ns.charDB.deferred = {}
ns.charDB.completionLedger = {}
ns.Engine:Refresh(hordeRuins)
Equal(ns.Engine.currentGoal.id, "accept-wrath-of-rathmael", "horde starts with Deathguard Kristof")

ForeverGuideMateDB = { autoQuest = true }
ForeverGuideMateCharDB = { selectedGuide = "dungeons-ragefire-chasm-horde" }
ns.InitializeStorage()
Equal(ns.db.autoQuest, true, "guide quest turn-in starts enabled")
local calls = {}
local questAPI = {
    GetQuestID = function() return 5722 end,
    AcceptQuest = function() calls.accept = true end,
    IsQuestCompletable = function() return true end,
    CompleteQuest = function() calls.complete = true end,
    GetNumQuestChoices = function() return 0 end,
    GetQuestReward = function(index) calls.reward = index end,
    C_GossipInfo = {
        GetAvailableQuests = function()
            return { { questID = 1 }, { questID = 5722 } }
        end,
        SelectAvailableQuest = function(questID) calls.gossip = questID end,
        GetActiveQuests = function() return { { questID = 5723 } } end,
        SelectActiveQuest = function(questID) calls.active = questID end,
    },
}
ns.QuestDialog:Handle("GOSSIP_SHOW", questAPI)
Equal(calls.gossip, 5722, "gossip opens the guide quest and skips unrelated quests")
ns.QuestDialog:Handle("QUEST_DETAIL", questAPI)
Equal(calls.accept, true, "the open guide quest is accepted")
questAPI.GetQuestID = function() return 999 end
calls.accept = nil
ns.QuestDialog:Handle("QUEST_DETAIL", questAPI)
Equal(calls.accept, nil, "a quest outside the selected guide is left alone")
questAPI.GetQuestID = function() return 5722 end
ns.QuestDialog:Handle("QUEST_PROGRESS", questAPI)
Equal(calls.complete, true, "a completable guide quest is turned in")
ns.QuestDialog:Handle("QUEST_COMPLETE", questAPI)
Equal(calls.reward, 1, "a guide quest with no reward choice is completed")
questAPI.GetNumQuestChoices = function() return 2 end
calls.reward = nil
ns.QuestDialog:Handle("QUEST_COMPLETE", questAPI)
Equal(calls.reward, nil, "a guide quest with a reward choice waits for the player")
ns.db.autoQuest = true
questAPI.C_GossipInfo.GetAvailableQuests = function() return {} end
questAPI.C_GossipInfo.GetActiveQuests = function()
    return { { questID = 5723, isComplete = false } }
end
calls.active = nil
ns.QuestDialog:Handle("GOSSIP_SHOW", questAPI)
Equal(calls.active, nil, "an incomplete guide quest leaves the gossip window alone")
questAPI.C_GossipInfo.GetActiveQuests = function()
    return { { questID = 5723, isComplete = true } }
end
ns.QuestDialog:Handle("GOSSIP_SHOW", questAPI)
Equal(calls.active, 5723, "a completed guide quest is selected from gossip")
questAPI.C_QuestLog = { IsComplete = function() return false end }
questAPI.IsQuestCompletable = function() return true end
calls.complete = nil
ns.QuestDialog:Handle("QUEST_PROGRESS", questAPI)
Equal(calls.complete, nil, "a quest the log says is incomplete is not turned in")
ns.db.autoQuest = false
calls.complete = nil
ns.QuestDialog:Handle("QUEST_PROGRESS", questAPI)
Equal(calls.complete, nil, "turning the option off leaves the quest dialog alone")

local tomtomCalls = {}
local tomtom = {
    AddWaypoint = function(_, mapID, x, y, options)
        local uid = { mapID = mapID, x = x, y = y, crazy = options.crazy }
        tomtomCalls[#tomtomCalls + 1] = uid
        return uid
    end,
    RemoveWaypoint = function() end,
    SetCrazyArrow = function(_, uid) uid.arrow = true end,
}
ns.db.uiOpen = true
ns.TomTomWaypoints:Clear(tomtom)
ns.TomTomWaypoints:Sync(ns.guides["dungeons-ragefire-chasm-horde"].goals[1], {
    mapID = 2521, x = 0.5, y = 0.5, faction = "Horde",
}, tomtom)
Equal(tomtomCalls[1].mapID, 2521, "TomTom on Zephras Isle receives the island waypoint")
Equal(tomtomCalls[1].crazy, true, "the Zephras Isle waypoint asks TomTom for the arrow")
Equal(tomtomCalls[1].arrow, true, "TomTom aims the crazy arrow at the Zephras waypoint")

local hot = ns.guides["dungeons-hall-of-thanes"]
Check(hot ~= nil, "hall of thanes guide is registered")
local hordeHot = {}
for key, value in pairs(baseState) do hordeHot[key] = value end
hordeHot.faction = "Horde"
hordeHot.level = 10
Equal(ns.EvaluateCondition(hot.conditions, hordeHot), false, "horde cannot use the hall of thanes guide")
local allianceHot = {}
for key, value in pairs(hordeHot) do allianceHot[key] = value end
allianceHot.faction = "Alliance"
Equal(ns.EvaluateCondition(hot.conditions, allianceHot), true, "alliance can use the hall of thanes guide")

local zephras = ns.guides["leveling-zephras-isle"]
Check(zephras ~= nil, "zephras isle guide is registered")
Equal(zephras.conditions.all[1].level.min, 1, "zephras isle starts at level 1")
local starter = {}
for key, value in pairs(baseState) do starter[key] = value end
starter.level = 1
starter.classID = 1
starter.faction = "Horde"
starter.quests = {}
starter.completedQuests = {}
ns.charDB.activeGoal = nil
ns.charDB.history = {}
ns.charDB.deferred = {}
ns.charDB.completionLedger = {}
ns.Engine:SelectGuide("leveling-zephras-isle")
ns.Engine:Refresh(starter)
Equal(ns.Engine.currentGoal.id, "accept-coming-of-age", "zephras starts with Coming of Age")
local grove = {}
for key, value in pairs(starter) do grove[key] = value end
grove.level = 2
grove.classID = 3
grove.completedQuests = { [92460] = true }
grove.quests = {}
ns.charDB.activeGoal = nil
ns.charDB.history = {}
ns.Engine.reviewingGoal = nil
ns.Engine:Refresh(grove)
Equal(ns.Engine.currentGoal.id, "accept-harmony-in-balance", "after Coming of Age the grove quests start with Harmony")
grove.quests[92461] = { complete = false, objectives = {} }
ns.charDB.activeGoal = nil
ns.Engine:Refresh(grove)
Equal(ns.Engine.currentGoal.id, "accept-infestation-investigation",
    "Infestation Investigation is accepted before leaving for the Vuldren")
grove.quests[92462] = { complete = false, objectives = {} }
ns.charDB.activeGoal = nil
ns.Engine:Refresh(grove)
Equal(ns.Engine.currentGoal.id, "objective-harmony-in-balance",
    "the class breadcrumb waits until Harmony in Balance is turned in")
grove.quests[92461] = {
    complete = true,
    objectives = { { finished = true, numRequired = 8, numFulfilled = 8 } },
}
ns.charDB.activeGoal = nil
ns.Engine:Refresh(grove)
Equal(ns.Engine.currentGoal.id, "objective-infestation-investigation",
    "finished Vuldren advance to the other grove objective")
grove.quests[92462] = {
    complete = true,
    objectives = { { finished = true, numRequired = 8, numFulfilled = 8 } },
}
ns.charDB.activeGoal = nil
ns.Engine:Refresh(grove)
Equal(ns.Engine.currentGoal.id, "turnin-harmony-in-balance",
    "both grove objectives lead back to the Harmony turn-in")
grove.completedQuests[92461] = true
ns.charDB.activeGoal = nil
ns.Engine:Refresh(grove)
Equal(ns.Engine.currentGoal.id, "turnin-infestation-investigation",
    "Infestation Investigation is turned in before the class breadcrumb")
grove.completedQuests[92462] = true
ns.charDB.activeGoal = nil
ns.Engine:Refresh(grove)
Equal(ns.Engine.currentGoal.id, "accept-the-way-of-the-hunter",
    "The Way of the Hunter opens after Harmony in Balance is turned in")
local followUps = {
    { "accept-the-way-of-the-hunter", "turnin-harmony-in-balance" },
    { "accept-the-warriors-path", "turnin-harmony-in-balance" },
    { "accept-the-cirrusfly-queen", "turnin-infestation-investigation" },
    { "accept-elemental-unrest", "turnin-harmony-in-balance" },
    { "accept-the-adventurer", "turnin-foul-matriarch" },
    { "accept-infiltrating-the-cult", "turnin-the-criminal-element" },
    { "accept-the-western-watch", "turnin-havoc-in-the-highlands" },
    { "accept-the-fate-of-a-loved-one", "turnin-aid-for-the-refugees" },
}
for _, pair in ipairs(followUps) do
    local goal = ns.Engine:GetGoal(zephras, pair[1])
    local linked = false
    for _, dependency in ipairs(goal.dependsOn or {}) do
        if dependency == pair[2] then linked = true end
    end
    Check(linked, pair[1] .. " waits for " .. pair[2])
end
local pinned = ns.Navigation:GetActiveLeg({
    route = { { mapID = 2521, x = 0.420, y = 0.234, label = "Rorian the Dayseeker" } },
}, { mapID = 2521, x = 0.420, y = 0.234 })
Equal(pinned and pinned.label, "Rorian the Dayseeker", "an accept NPC keeps a pin while the player is standing there")
local walked = ns.Navigation:GetActiveLeg({
    route = {
        { mapID = 2521, x = 0.420, y = 0.234, label = "First stop" },
        { mapID = 2521, x = 0.800, y = 0.800, label = "Second stop" },
    },
}, { mapID = 2521, x = 0.420, y = 0.234 })
Equal(walked and walked.label, "Second stop", "reaching an earlier route stop still advances to the next one")
local zephrasProgress = ns.Engine:GetGuideProgress(zephras, starter)
Check(zephrasProgress.eligible > 8, "a level 1 Zephras character still counts later steps")
local trackedZephras = {}
for _, questID in ipairs(ns.GetTrackedQuestIDs()) do trackedZephras[questID] = true end
Check(trackedZephras[92460], "coming of age is tracked")
Check(not trackedZephras[78197], "the level 22 priest quest is not part of the starter path")
local callOfEarth = ns.Engine:GetGoal(zephras, "accept-call-of-earth")
Equal(ns.EvaluateCondition(callOfEarth.conditions, starter), false, "warriors do not get Call of Earth")
local shaman = {}
for key, value in pairs(starter) do shaman[key] = value end
shaman.classID = 7
shaman.level = 4
Equal(ns.EvaluateCondition(callOfEarth.conditions, shaman), true, "horde shamans can take Call of Earth")
local leyLines = ns.Engine:GetGoal(zephras, "accept-reading-the-ley-lines")
local skysight = ns.Engine:GetGoal(zephras, "accept-the-gift-of-skysight")
local falling = ns.Engine:GetGoal(zephras, "accept-falling-with-style")
local callOfFire = ns.Engine:GetGoal(zephras, "accept-call-of-fire")
local skybreaker = ns.Engine:GetGoal(zephras, "accept-the-skybreaker-bulwark")
local allianceSkyborne = {}
for key, value in pairs(starter) do allianceSkyborne[key] = value end
allianceSkyborne.faction = "Alliance"
allianceSkyborne.raceID = 95
allianceSkyborne.level = 2
Equal(ns.EvaluateCondition(leyLines.conditions, allianceSkyborne), true, "alliance skyborne can read the ley lines")
Equal(ns.EvaluateCondition(skysight.conditions, allianceSkyborne), false, "alliance skyborne do not get Skysight")
Equal(ns.EvaluateCondition(falling.conditions, allianceSkyborne), true, "alliance skyborne can take Falling With Style")
local hordeSkyborne = {}
for key, value in pairs(starter) do hordeSkyborne[key] = value end
hordeSkyborne.faction = "Horde"
hordeSkyborne.raceID = 96
hordeSkyborne.level = 2
Equal(ns.EvaluateCondition(leyLines.conditions, hordeSkyborne), false, "horde skyborne do not read the ley lines")
Equal(ns.EvaluateCondition(skysight.conditions, hordeSkyborne), true, "horde skyborne can take Skysight")
Equal(ns.EvaluateCondition(falling.conditions, hordeSkyborne), true, "horde skyborne can take Falling With Style")
Equal(ns.EvaluateCondition(falling.conditions, starter), false, "other races do not take Falling With Style")
local hordeShaman = {}
for key, value in pairs(hordeSkyborne) do hordeShaman[key] = value end
hordeShaman.classID = 7
hordeShaman.level = 10
Equal(ns.EvaluateCondition(callOfFire.conditions, hordeShaman), true, "horde skyborne shamans can take Call of Fire")
local otherShaman = {}
for key, value in pairs(shaman) do otherShaman[key] = value end
otherShaman.level = 10
Equal(ns.EvaluateCondition(callOfFire.conditions, otherShaman), false, "other horde shamans do not take Call of Fire")
local skyborneWarrior = {}
for key, value in pairs(hordeSkyborne) do skyborneWarrior[key] = value end
skyborneWarrior.classID = 1
skyborneWarrior.level = 10
Equal(ns.EvaluateCondition(skybreaker.conditions, skyborneWarrior), true, "skyborne warriors can take The Skybreaker Bulwark")
Equal(ns.EvaluateCondition(skybreaker.conditions, starter), false, "other warriors do not take The Skybreaker Bulwark")
local foulMatriarch = ns.Engine:GetGoal(zephras, "accept-foul-matriarch")
local beforeAetheen = {}
for key, value in pairs(starter) do beforeAetheen[key] = value end
beforeAetheen.level = 2
beforeAetheen.quests = {}
beforeAetheen.completedQuests = {}
Equal(ns.Engine:IsReady(zephras, foulMatriarch, beforeAetheen), false,
    "Foul Matriarch waits until Aetheen of the Gales can be completed")
beforeAetheen.level = 4
Equal(ns.Engine:IsReady(zephras, foulMatriarch, beforeAetheen), false,
    "Foul Matriarch stays locked until Aetheen of the Gales is turned in")
beforeAetheen.completedQuests[92471] = true
Equal(ns.Engine:IsReady(zephras, foulMatriarch, beforeAetheen), true,
    "Foul Matriarch opens after Aetheen of the Gales is turned in")

ns:RegisterGuide({
    id = "dependency-eligibility",
    title = "Dependency Eligibility",
    category = "Test Guides",
    revision = 1,
    goals = {
        {
            id = "later-prereq", kind = "note", text = "Later",
            conditions = { level = { min = 4 } },
            complete = { quest = { id = 900001, state = "completed" } },
        },
        {
            id = "early-followup", kind = "note", text = "Early",
            conditions = { level = { min = 2 } },
            dependsOn = { "later-prereq" },
            complete = { quest = { id = 900002, state = "completed" } },
        },
        {
            id = "class-prereq", kind = "note", text = "Mage",
            conditions = { class = 8 },
            complete = { quest = { id = 900003, state = "completed" } },
        },
        {
            id = "class-followup", kind = "note", text = "After mage",
            dependsOn = { "class-prereq" },
            complete = { quest = { id = 900004, state = "completed" } },
        },
        {
            id = "horde-prereq", kind = "note", text = "Horde",
            conditions = { all = { { faction = "Horde" }, { level = { min = 6 } } } },
            complete = { quest = { id = 900005, state = "completed" } },
        },
        {
            id = "alliance-followup", kind = "note", text = "Alliance",
            conditions = { faction = "Alliance" },
            dependsOn = { "horde-prereq" },
            complete = { quest = { id = 900006, state = "completed" } },
        },
    },
})
local dependencyGuide = ns.guides["dependency-eligibility"]
local function DependencyState(overrides)
    local state = {
        faction = "Horde", classID = 1, level = 2,
        quests = {}, questLogKnown = true,
        completedQuests = {}, questCompletionKnown = true,
    }
    for key, value in pairs(overrides or {}) do state[key] = value end
    return state
end
Equal(ns.Engine:IsReady(dependencyGuide, ns.Engine:GetGoal(dependencyGuide, "early-followup"),
    DependencyState({ level = 2 })), false, "a lower-level step waits for a higher-level prerequisite")
Equal(ns.Engine:IsReady(dependencyGuide, ns.Engine:GetGoal(dependencyGuide, "early-followup"),
    DependencyState({ level = 4 })), false, "reaching the level still waits for the prerequisite")
Equal(ns.Engine:IsReady(dependencyGuide, ns.Engine:GetGoal(dependencyGuide, "early-followup"),
    DependencyState({ level = 4, completedQuests = { [900001] = true } })), true,
    "the follow-up starts after the higher-level prerequisite is done")
Equal(ns.Engine:IsReady(dependencyGuide, ns.Engine:GetGoal(dependencyGuide, "class-followup"),
    DependencyState({ classID = 1, level = 10 })), true, "another class does not wait on a class-only prerequisite")
Equal(ns.Engine:IsReady(dependencyGuide, ns.Engine:GetGoal(dependencyGuide, "alliance-followup"),
    DependencyState({ faction = "Alliance", level = 1 })), true,
    "the other faction does not wait on a faction-only prerequisite")

C_Map = {
    GetMapInfo = function(mapID)
        if mapID == 2521 or mapID == 4242 then
            return { name = "Zephras Isle", mapType = 3, parentMapID = 0 }
        end
    end,
}
local zephrasStep = { route = { { mapID = 2521, x = 0.428, y = 0.234, label = "Ailee Farheart" } } }
local clientZephras = { mapID = 4242, x = 0.2, y = 0.2, faction = "Horde" }
local zephrasLeg = ns.Navigation:GetActiveLeg(zephrasStep, clientZephras)
Equal(zephrasLeg.mapID, 2521, "a second Zephras map id still uses the guide point")
Equal(zephrasLeg.x, 0.428, "the guide point keeps its Zephras coordinates")
local aliasCalls = {}
local aliasTomTom = {
    AddWaypoint = function(_, mapID, x, y, options)
        local uid = { mapID = mapID, x = x, y = y, crazy = options.crazy }
        aliasCalls[#aliasCalls + 1] = uid
        return uid
    end,
    RemoveWaypoint = function() end,
    SetCrazyArrow = function(_, uid) uid.arrow = true end,
}
ns.db.uiOpen = true
ns.TomTomWaypoints:Clear(aliasTomTom)
ns.TomTomWaypoints:Sync(zephrasStep, clientZephras, aliasTomTom)
Equal(aliasCalls[1].mapID, 4242, "TomTom gets the player's Zephras map instead of the authored id")
Equal(aliasCalls[1].x, 0.428, "TomTom keeps the guide coordinate on the player's Zephras map")
Equal(aliasCalls[1].arrow, true, "TomTom aims the arrow on the player's Zephras map")
C_Map = nil

local logged = ns.PlayerState:GetQuestLog({
    C_QuestLog = {
        GetNumQuestLogEntries = function() return 2 end,
        GetInfo = function(index)
            if index == 1 then return { questID = 92461, title = "Harmony in Balance" } end
            return { questID = 92462, title = "Infestation Investigation" }
        end,
        GetQuestObjectives = function(questID)
            if questID == 92461 then
                return { { finished = true, numRequired = 8, numFulfilled = 8 } }
            end
            return { { finished = false, numRequired = 8, numFulfilled = 3 } }
        end,
        IsComplete = function(questID) return questID == 92461 end,
    },
})
Equal(logged[92461].complete, true, "a quest whose objectives are finished is ready to turn in")
Equal(logged[92462].complete, false, "an unfinished quest objective stays incomplete")

ns.PlayerState:InvalidateProfessions()
local missingAPIOK, missingState = pcall(function() return ns.PlayerState:Capture({}) end)
Equal(missingAPIOK, true, "missing optional APIs do not raise Lua errors")
Equal(missingState.professionsKnown, false, "missing profession API is reported as unknown")

if failures > 0 then
    io.stderr:write(("%d of %d assertions failed\n"):format(failures, assertions))
    os.exit(1)
end
print(("Lua engine tests passed: %d assertions"):format(assertions))
