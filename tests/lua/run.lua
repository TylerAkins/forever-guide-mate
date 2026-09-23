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
Load("Navigation.lua")
Load("TomTomWaypoints.lua")
Load("MapPins.lua")
Load("UI.lua")
Load("Guides/Dungeons/RagefireChasm.lua")
Load("Guides/Dungeons/WailingCaverns.lua")
Load("Guides/Dungeons/RuinsOfLordaeron.lua")
Load("Guides/Dungeons/Deadmines.lua")
Load("Guides/Dungeons/HallOfThanes.lua")

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

ns.PlayerState:InvalidateProfessions()
local missingAPIOK, missingState = pcall(function() return ns.PlayerState:Capture({}) end)
Equal(missingAPIOK, true, "missing optional APIs do not raise Lua errors")
Equal(missingState.professionsKnown, false, "missing profession API is reported as unknown")

if failures > 0 then
    io.stderr:write(("%d of %d assertions failed\n"):format(failures, assertions))
    os.exit(1)
end
print(("Lua engine tests passed: %d assertions"):format(assertions))
