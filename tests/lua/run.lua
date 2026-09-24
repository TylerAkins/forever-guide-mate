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
Load("QuestAudit.lua")
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
Load("Guides/Leveling/Durotar.lua")
Load("Guides/Leveling/Mulgore.lua")
Load("Guides/Leveling/TheBarrens.lua")
Load("Guides/Leveling/Teldrassil.lua")
Load("Guides/Leveling/Era/1-12-durotar.lua")
Load("Guides/Leveling/Era/1-12-mulgore.lua")
Load("Guides/Leveling/Era/1-12-tirisfal-glades.lua")
Load("Guides/Leveling/Era/12-20-barrens.lua")
Load("Guides/Leveling/Era/12-20-silverpine-forest.lua")
Load("Guides/Leveling/Era/20-22-stonetalon-mountains.lua")
Load("Guides/Leveling/Era/22-23-southern-barrens.lua")
Load("Guides/Leveling/Era/23-25-stonetalon-mountains.lua")
Load("Guides/Leveling/Era/25-25-southern-barrens.lua")
Load("Guides/Leveling/Era/25-26-thousand-needles.lua")
Load("Guides/Leveling/Era/26-27-ashenvale.lua")
Load("Guides/Leveling/Era/27-27-stonetalon-mountains.lua")
Load("Guides/Leveling/Era/27-29-thousand-needles.lua")
Load("Guides/Leveling/Era/29-30-hillsbrad-foothills.lua")
Load("Guides/Leveling/Era/30-30-arathi-highlands.lua")
Load("Guides/Leveling/Era/30-31-stranglethorn-vale.lua")
Load("Guides/Leveling/Era/31-32-thousand-needles.lua")
Load("Guides/Leveling/Era/32-34-desolace.lua")
Load("Guides/Leveling/Era/34-36-stranglethorn-vale.lua")
Load("Guides/Leveling/Era/36-37-alterac-mountains.lua")
Load("Guides/Leveling/Era/37-38-arathi-highlands.lua")
Load("Guides/Leveling/Era/37-38-thousand-needles.lua")
Load("Guides/Leveling/Era/38-38-dustwallow-marsh.lua")
Load("Guides/Leveling/Era/38-40-stranglethorn-vale.lua")
Load("Guides/Leveling/Era/40-41-badlands.lua")
Load("Guides/Leveling/Era/41-42-swamp-of-sorrows.lua")
Load("Guides/Leveling/Era/42-43-stranglethorn-vale.lua")
Load("Guides/Leveling/Era/43-44-dustwallow-marsh.lua")
Load("Guides/Leveling/Era/44-44-desolace.lua")
Load("Guides/Leveling/Era/44-45-tanaris.lua")
Load("Guides/Leveling/Era/45-46-feralas.lua")
Load("Guides/Leveling/Era/46-47-azshara.lua")
Load("Guides/Leveling/Era/47-47-hinterlands.lua")
Load("Guides/Leveling/Era/47-47-stranglethorn-vale.lua")
Load("Guides/Leveling/Era/47-48-searing-gorge.lua")
Load("Guides/Leveling/Era/48-49-swamp-of-sorrows.lua")
Load("Guides/Leveling/Era/49-49-dustwallow-marsh.lua")
Load("Guides/Leveling/Era/49-50-feralas.lua")

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
local walkRotation, _, walkStatus, _, walkMode = ns.Navigation:GetDirection(navigationGoal,
    { mapID = 1456, x = 0.5, y = 0.5, faction = "Horde" }, 0)
Equal(walkRotation, nil, "an unknown flight path does not point at the flight master")
Check(string.find(walkStatus, "flight path", 1, true) == nil, "an unknown flight path tells you to walk")
Equal(walkMode, "instruction", "walking to another zone stays an instruction")
ns.charDB.taxiRoutes = {
    [1456] = { x = 0.468, y = 0.497, destinations = { ["orgrimmar, durotar"] = "Orgrimmar, Durotar" } },
}
local flightRotation, _, flightStatus, _, flightMode = ns.Navigation:GetDirection(navigationGoal,
    { mapID = 1456, x = 0.5, y = 0.5, faction = "Horde" }, 0)
Check(type(flightRotation) == "number", "a known flight path points at the local flight master")
Check(string.find(flightStatus, "Take the flight path to Orgrimmar", 1, true) ~= nil,
    "a known flight path names the destination")
Equal(flightMode, "bearing", "a known flight path on the current map supplies a bearing")
ns.charDB.taxiRoutes = {}
ns.charDB.taxiNodes = nil
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
Equal(fallbackTaxiLeg.mapID, 1454, "an unknown flight path keeps the walking pin")
Check(not fallbackTaxiLeg.flight, "an unknown flight path does not send you to the flight master")
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
Check(learnedTaxiLeg.learnedTaxi, "learned flight route supersedes the walking pin")
Equal(learnedTaxiLeg.label, "Take the flight path to Thunder Bluff.", "a known flight path uses the flight instruction")
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
Equal(zeppelin.x, 0.508, "the Undercity zeppelin uses Frezza's south platform")
Equal(zeppelin.y, 0.136, "the Undercity zeppelin is south of the Stranglethorn platform")
local localUndercity = ns.Navigation:GetActiveLeg(undercityGoal, { mapID = 1420, x = 0.5, y = 0.4, faction = "Horde" })
Equal(localUndercity.mapID, 1458, "same-continent travel keeps the authored destination")
local barrensGoal = { route = { { mapID = 1413, x = 0.46, y = 0.36, label = "Wailing Caverns" } } }
local theramoreBoat = ns.Navigation:GetActiveLeg(barrensGoal, { mapID = 1453, x = 0.5, y = 0.5, faction = "Alliance" })
Equal(theramoreBoat.mapID, 1413, "Alliance without the Booty Bay flight walks toward the Barrens")
Check(string.find(theramoreBoat.label or "", "flight path", 1, true) == nil,
    "an unknown cross-continent flight does not say to fly")
ns.charDB.taxiRoutes = {
    [1453] = { x = 0.661, y = 0.625, destinations = { ["booty bay, stranglethorn"] = "Booty Bay, Stranglethorn" } },
}
local knownBoatFlight = ns.Navigation:GetActiveLeg(barrensGoal, { mapID = 1453, x = 0.5, y = 0.5, faction = "Alliance" })
Equal(knownBoatFlight.mapID, 1453, "a known Booty Bay flight leaves from Stormwind")
Equal(knownBoatFlight.label, "Take the flight path to Stranglethorn Vale.",
    "a known dock flight names Stranglethorn Vale")
ns.charDB.taxiRoutes = {}
ns.charDB.taxiNodes = nil
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
Equal(thunderBluffLeg.label, "Rahauro on Elder Rise", "Thunder Bluff points at Rahauro, not the flight master")
Equal(thunderBluffLeg.x, 0.706, "Thunder Bluff pickup stays on Elder Rise")
Check(not thunderBluffLeg.fallbackTaxi, "an arrived Thunder Bluff step does not suggest another flight")
local thunderBluffPinX = ns.MapPins:GetLocation(ns.Engine.currentGoal, thunderBluffState, 1456)
Check(type(thunderBluffPinX) == "number", "Thunder Bluff pickup supplies a same-map pin")
local mulgoreState = { mapID = 1412, x = 0.40, y = 0.30, faction = "Horde" }
local mulgoreLeg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, mulgoreState)
Equal(mulgoreLeg.mapID, 1412, "Mulgore keeps the Thunder Bluff approach on the Mulgore map")
Equal(mulgoreLeg.x, 0.363, "Mulgore points at the southwest elevator")
Check(string.find(mulgoreLeg.label, "elevator", 1, true) ~= nil, "Mulgore tells you to ride the elevator")
Check(not mulgoreLeg.fallbackTaxi, "Mulgore does not send you back to a flight master")
ns.Engine.state = mulgoreState
local mulgoreText = ns.UI:GoalInstruction(ns.Engine)
Check(string.find(mulgoreText, "elevator", 1, true) ~= nil, "the tracker says to take the elevator in Mulgore")
ns.Engine.state = thunderBluffState
local thunderBluffText = ns.UI:GoalInstruction(ns.Engine)
Check(string.find(thunderBluffText, "Rahauro", 1, true) ~= nil, "the tracker names Rahauro once you are in Thunder Bluff")
local powerDestroy = ns.Engine:GetGoal(rfc, "accept-power-destroy")
ns.charDB.taxiRoutes = {}
ns.charDB.taxiNodes = nil
local walkZeppelin = ns.Navigation:GetActiveLeg(powerDestroy, { mapID = 1456, x = 0.5, y = 0.5, faction = "Horde" })
Equal(walkZeppelin.mapID, 1411, "without the Orgrimmar flight, the zeppelin step stays on the tower")
Equal(walkZeppelin.x, 0.508, "the Tirisfal zeppelin pin is the south platform")
Equal(walkZeppelin.y, 0.136, "the Tirisfal zeppelin pin is not the Stranglethorn tower")
ns.Engine.currentGoal = powerDestroy
ns.Engine.state = { mapID = 1456, x = 0.5, y = 0.5, faction = "Horde" }
local walkZeppelinText = ns.UI:GoalInstruction(ns.Engine)
Check(string.find(walkZeppelinText, "zeppelin", 1, true) ~= nil, "the tracker tells you to walk to the zeppelin")
Check(string.find(walkZeppelinText, "Tal", 1, true) == nil, "an unknown flight does not name Tal")
ns.charDB.taxiRoutes = {
    [1456] = { x = 0.468, y = 0.497, destinations = { ["orgrimmar, durotar"] = "Orgrimmar, Durotar" } },
}
local flyZeppelin = ns.Navigation:GetActiveLeg(powerDestroy, { mapID = 1456, x = 0.5, y = 0.5, faction = "Horde" })
Equal(flyZeppelin.label, "Take the flight path to Orgrimmar, then board the south zeppelin to Tirisfal Glades.",
    "a known Orgrimmar flight names the zeppelin afterward")
ns.charDB.taxiRoutes = {}
ns.charDB.taxiNodes = nil
local barrensWalk = ns.Navigation:GetActiveLeg(ns.Engine:GetGoal(rfc, "accept-searching-satchel"),
    { mapID = 1413, x = 0.5, y = 0.3, faction = "Horde" })
Equal(barrensWalk.mapID, 1412, "without the Thunder Bluff flight, the Barrens walks toward the elevator")
ns.charDB.taxiRoutes = {
    [1413] = { x = 0.515, y = 0.303, destinations = { ["thunder bluff, mulgore"] = "Thunder Bluff, Mulgore" } },
}
local barrensFly = ns.Navigation:GetActiveLeg(ns.Engine:GetGoal(rfc, "accept-searching-satchel"),
    { mapID = 1413, x = 0.5, y = 0.3, faction = "Horde" })
Equal(barrensFly.label, "Take the flight path to Thunder Bluff.",
    "a known Thunder Bluff flight is offered from the Barrens")
ns.charDB.taxiRoutes = {}
ns.charDB.taxiNodes = nil
ns.Engine.currentGoal = ns.Engine:GetGoal(rfc, "accept-searching-satchel")
C_Map = {
    GetMapInfo = function(mapID)
        if mapID == 4242 then return { name = "Mulgore" } end
    end,
}
Equal(ns.EvaluateCondition({ map = 1412 }, { mapID = 4242 }), true,
    "a Mulgore map with a different id still counts as Mulgore")
local aliasLeg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, {
    mapID = 4242, x = 0.40, y = 0.30, faction = "Horde",
})
Equal(aliasLeg.mapID, 1412, "a renamed Mulgore map still uses the Mulgore elevator point")
Check(string.find(aliasLeg.label, "elevator", 1, true) ~= nil, "a renamed Mulgore map still walks to the elevator")
local mulgoreCalls = {}
local mulgoreTomTom = {
    AddWaypoint = function(_, mapID, x, y)
        mulgoreCalls[#mulgoreCalls + 1] = { mapID = mapID, x = x, y = y }
        return { mapID = mapID }
    end,
    RemoveWaypoint = function() end,
}
local savedOpen = ns.db.uiOpen
ns.db.uiOpen = true
ns.TomTomWaypoints:Clear(mulgoreTomTom)
ns.TomTomWaypoints:Sync(ns.Engine.currentGoal, { mapID = 4242, x = 0.40, y = 0.30, faction = "Horde" }, mulgoreTomTom)
Equal(mulgoreCalls[1].mapID, 4242, "TomTom draws the elevator on the player's Mulgore map")
Equal(mulgoreCalls[1].x, 0.363, "TomTom keeps the Mulgore elevator coordinate")
ns.TomTomWaypoints:Clear(mulgoreTomTom)
ns.db.uiOpen = savedOpen
C_Map = nil

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

-- The quest audit is how a missing class, race, or profession requirement in
-- the guide data surfaces without anyone walking the route by hand.
function TestEliteLabels()
    local plain = {
        "objective-872-the-disruption-ends-3",
        "accept-850-kolkar-leaders",
        "objective-850-kolkar-leaders-1",
        "accept-875-harpy-lieutenants",
        "objective-875-harpy-lieutenants-1",
        "accept-895-wanted-baron-longshore",
        "objective-895-wanted-baron-longshore-1",
        "accept-881-echeyakee",
        "objective-881-echeyakee-1",
        "accept-876-serena-bloodfeather",
        "objective-876-serena-bloodfeather-1",
        "accept-851-verog-the-dervish",
        "objective-851-verog-the-dervish-1",
        "accept-852-hezrul-bloodmark",
        "objective-852-hezrul-bloodmark-1",
        "accept-882-ishamuhale",
        "objective-882-ishamuhale-1",
        "objective-882-ishamuhale-2",
        "accept-873-isha-awak",
        "objective-873-isha-awak-1",
        "turnin-883-lakotamani",
        "turnin-884-owatanka",
        "turnin-885-washte-pawne",
        "turnin-897-the-harvester",
        "objective-907-enraged-thunder-lizards-1",
        "objective-913-cry-of-the-thunderhawk-1",
        "objective-97250-wrongly-blamed-justly-corrected-1",
    }
    local elites = {
        "accept-97003-cholaruk-the-ravener",
        "objective-97003-cholaruk-the-ravener-1",
        "accept-97005-cholaruk-the-ravener",
        "objective-97005-cholaruk-the-ravener-1",
        "accept-92706-wanted-bruuz",
        "objective-92706-wanted-bruuz-1",
        "accept-4021-counterattack",
        "objective-4021-counterattack-1",
        "accept-97250-wrongly-blamed-justly-corrected",
        "objective-97250-wrongly-blamed-justly-corrected-2",
        "accept-3514-horde-presence",
        "objective-3514-horde-presence-1",
    }
    local barrensGuide = ns.guides["leveling-the-barrens"]
    for _, id in ipairs(plain) do
        local goal = ns.Engine:GetGoal(barrensGuide, id)
        Check(goal ~= nil and string.find(goal.text, "This is an elite", 1, true) == nil,
            id .. " does not call a normal target an elite")
    end
    for _, id in ipairs(elites) do
        local goal = ns.Engine:GetGoal(barrensGuide, id)
        Check(goal ~= nil and string.find(goal.text, "This is an elite. Bring a group.", 1, true) ~= nil,
            id .. " still warns that the target is elite")
    end
    local egg = ns.Engine:GetGoal(barrensGuide, "objective-868-egg-hunt-1")
    Check(egg and string.find(egg.text, "The Harvester is a rare", 1, true) ~= nil,
        "Egg Hunt calls the Harvester a rare")
    Check(egg and string.find(egg.text, "This is an elite", 1, true) == nil,
        "Egg Hunt does not call the Harvester an elite")
    local aggorGoal = ns.Engine:GetGoal(ns.guides["leveling-durotar"], "objective-99052-threat-from-below-1")
    Check(aggorGoal and string.find(aggorGoal.text, "This is an elite. Bring a group.", 1, true) ~= nil,
        "Aggor the Young stays an elite warning")
    local shredder = ns.Engine:GetGoal(ns.guides["leveling-mulgore"], "objective-98427-ceasing-operations-1")
    Check(shredder and string.find(shredder.text, "This is an elite. Bring a group.", 1, true) ~= nil,
        "the Venture Co. shredder stays an elite warning")
end
TestEliteLabels()

function TestQuestAudit()
    local durotarGuide = ns.guides["leveling-durotar"]
    local spinalAxe = ns.Engine:GetGoal(durotarGuide, "accept-96874-this-is-spinal-axe")
    local printed = {}
    ns.QuestAudit.Announce = function(_, message) printed[#printed + 1] = message end
    local function Fresh()
        ForeverGuideMateCharDB = { selectedGuide = "leveling-durotar" }
        ns.InitializeStorage()
        ns.Engine.currentGoal = spinalAxe
        ns.Engine.state = { quests = {}, completedQuests = {} }
        printed = {}
    end
    local function API(unitName, available)
        return {
            UnitName = function() return unitName end,
            C_GossipInfo = {
                GetAvailableQuests = function() return available end,
                GetActiveQuests = function() return {} end,
            },
        }
    end

    Fresh()
    ns.QuestAudit:Inspect(API("Ug'thok", { { questID = 96875 } }))
    Equal(ns.charDB.deferred[spinalAxe.id], true,
        "a step the quest giver does not offer is skipped instead of holding the tracker")
    Equal(ns.charDB.notOffered[spinalAxe.id].quest, 96874, "the refused step is written to the report")
    Equal(ns.charDB.notOffered[spinalAxe.id].npc, "Ug'thok", "the report names the quest giver")
    Equal(#printed, 1, "the player is told once that the step was skipped")
    Equal(#ns.QuestAudit:Lines(), 1, "the report reads back one line")

    Fresh()
    ns.QuestAudit:Inspect(API("Ug'thok", { { questID = 96874 } }))
    Equal(ns.charDB.deferred[spinalAxe.id], nil, "a step the giver does offer is left alone")
    Equal(next(ns.charDB.notOffered), nil, "an offered step is not reported")

    Fresh()
    ns.QuestAudit:Inspect(API("Kamari", {}))
    Equal(next(ns.charDB.notOffered), nil, "a different NPC is not treated as a refusal")

    Fresh()
    ns.Engine.state.quests[96874] = { complete = false, objectives = {} }
    ns.QuestAudit:Inspect(API("Ug'thok", {}))
    Equal(next(ns.charDB.notOffered), nil, "a quest already in the log is not reported")

    Fresh()
    ns.Engine.state.completedQuests[96874] = true
    ns.QuestAudit:Inspect(API("Ug'thok", {}))
    Equal(next(ns.charDB.notOffered), nil, "a quest already finished is not reported")

    Fresh()
    ns.QuestAudit:Inspect({ UnitName = function() return "Ug'thok" end })
    Equal(next(ns.charDB.notOffered), nil, "a client without the gossip API reports nothing")

    Fresh()
    ns.Engine.currentGoal = ns.Engine:GetGoal(durotarGuide, "turnin-96874-this-is-spinal-axe")
    ns.QuestAudit:Inspect(API("Ug'thok", {}))
    Equal(next(ns.charDB.notOffered), nil, "only accept steps are audited")

    Check(ns.QuestAudit:NameMatches("Neeru Fireblade in the Cleft of Shadow", "Neeru Fireblade"),
        "a pin that says where the NPC stands still matches the unit name")
    Check(not ns.QuestAudit:NameMatches("Ug'thok", "Ug"),
        "a partial name does not match a quest giver")
    Fresh()
    ns.Engine.currentGoal = {
        id = "use-the-keg", kind = "accept",
        text = "Use the keg to accept Chen's Empty Keg.",
        complete = { quest = { id = 819, state = "activeOrCompleted" } },
        route = { { label = "Brewmaster Drohn" } },
    }
    ns.QuestAudit:Inspect(API("Brewmaster Drohn", {}))
    Equal(next(ns.charDB.notOffered), nil,
        "using an item to accept a quest is not a refusal from the turn-in NPC")
end
TestQuestAudit()

function TestItemStarts()
    local barrens = ns.guides["leveling-the-barrens"]
    local function State(quests, completed)
        return {
            faction = "Horde", raceID = 8, classID = 8, level = 20,
            professions = {}, professionsKnown = true,
            quests = quests, questLogKnown = true,
            completedQuests = completed, questCompletionKnown = true,
            mapID = 1413, x = 0.45, y = 0.28,
        }
    end
    local empty = State({}, {})
    local keg = ns.Engine:GetGoal(barrens, "turnin-819-chens-empty-keg")
    local follow = ns.Engine:GetGoal(barrens, "accept-821-chens-empty-keg")
    Equal(ns.Engine:GetGoal(barrens, "accept-819-chens-empty-keg"), nil,
        "Chen's Empty Keg has no required loot step")
    local bracers = ns.Engine:GetGoal(barrens, "objective-855-centaur-bracers-1")
    Check(not string.find(bracers.text, "Kolkar can drop", 1, true),
        "Centaur Bracers does not say Kolkar drop the keg")
    Check(string.find(bracers.text, "barrel", 1, true) ~= nil,
        "Centaur Bracers says the keg is a barrel on the ground")
    Equal(ns.Engine:IsReady(barrens, keg, empty), false,
        "the keg turn-in stays hidden until the item is used")
    Equal(ns.Engine:IsReady(barrens, follow, empty), false,
        "the keg follow-up stays hidden when the drop never comes")
    local progress = ns.Engine:GetGuideProgress(barrens, empty)
    local active = State({ [819] = { complete = false, objectives = {} } }, {})
    local withKeg = ns.Engine:GetGuideProgress(barrens, active)
    Check(withKeg.eligible > progress.eligible,
        "using Chen's Empty Keg adds its steps to the Barrens percentage")
    Equal(ns.Engine:IsReady(barrens, keg, active), true,
        "the keg turn-in appears once the quest is in the log")
    Equal(ns.Engine:IsReady(barrens, follow, active), false,
        "Brewmaster Drohn's next keg quest waits for the turn-in")
    local turnedIn = State({}, { [819] = true })
    Equal(ns.Engine:IsReady(barrens, follow, turnedIn), true,
        "the next keg quest opens after the first is turned in")
end
TestItemStarts()

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
Equal(zephras.category, "Leveling Quest Guides", "Zephras Isle stays a leveling guide")
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
    { "turnin-elemental-unrest", "turnin-harmony-in-balance" },
    { "turnin-the-adventurer", "turnin-foul-matriarch" },
    { "turnin-infiltrating-the-cult", "turnin-the-criminal-element" },
    { "turnin-the-western-watch", "turnin-havoc-in-the-highlands" },
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

local function DependsOn(goal, dependencyID)
    for _, dependency in ipairs(goal.dependsOn or {}) do
        if dependency == dependencyID then return true end
    end
    return false
end
local welcome = ns.Engine:GetGoal(zephras, "accept-welcome-to-azeroth")
local welcomeTurnin = ns.Engine:GetGoal(zephras, "turnin-welcome-to-azeroth")
local exploring = ns.Engine:GetGoal(zephras, "accept-exploring-the-horde")
local exploringObjective = ns.Engine:GetGoal(zephras, "objective-exploring-the-horde")
local exploringVoljin = ns.Engine:GetGoal(zephras, "objective-exploring-the-horde-voljin")
local exploringCairne = ns.Engine:GetGoal(zephras, "objective-exploring-the-horde-cairne")
local exploringSylvanas = ns.Engine:GetGoal(zephras, "objective-exploring-the-horde-sylvanas")
local exploringTurnin = ns.Engine:GetGoal(zephras, "turnin-exploring-the-horde")
Check(DependsOn(welcome, "turnin-the-earthen-ring"), "Welcome to Azeroth waits for the Mulgore arrival")
Check(DependsOn(welcomeTurnin, "accept-welcome-to-azeroth"), "Welcome to Azeroth is turned in after it is accepted")
Check(DependsOn(exploring, "turnin-welcome-to-azeroth"), "Exploring the Horde waits until Thrall is met")
Check(DependsOn(exploringObjective, "accept-exploring-the-horde"), "the Horde tour starts after Thrall gives it")
Check(DependsOn(exploringVoljin, "objective-exploring-the-horde"), "Vol'jin waits until Nazgrel is done")
Check(DependsOn(exploringCairne, "objective-exploring-the-horde-voljin"), "Cairne waits until Vol'jin is done")
Check(DependsOn(exploringSylvanas, "objective-exploring-the-horde-cairne"), "Sylvanas waits until Cairne is done")
Check(DependsOn(exploringTurnin, "objective-exploring-the-horde-sylvanas"), "Exploring the Horde turns in after the four visits")
Equal(welcome.complete.quest.id, 95350, "Welcome to Azeroth is quest 95350")
Equal(exploring.complete.quest.id, 93739, "Exploring the Horde is quest 93739")
Equal(zephras.goals[#zephras.goals].id, "turnin-exploring-the-horde", "Exploring the Horde is the last Zephras step")
Equal(ns.EvaluateCondition(welcome.conditions, { faction = "Alliance", level = 14 }), false,
    "Alliance does not take Welcome to Azeroth")
Equal(welcomeTurnin.route[1].mapID, 1456, "Welcome to Azeroth flies from Thunder Bluff")
Equal(welcomeTurnin.route[1].x, 0.468, "the Thunder Bluff flight master pin is Tal")
Equal(welcomeTurnin.route[2].mapID, 1454, "Welcome to Azeroth ends in Orgrimmar")
Equal(welcomeTurnin.route[2].x, 0.320, "Thrall keeps the Valley of Wisdom pin")
Equal(exploringObjective.route[1].mapID, 1454, "Nazgrel is in Orgrimmar")
Equal(#exploringObjective.route, 1, "Nazgrel does not share a pin with the later visits")
Equal(exploringVoljin.route[1].x, 0.342, "Vol'jin is pinned in Grommash Hold")
Equal(#exploringVoljin.route, 1, "Vol'jin has his own step")
Equal(exploringCairne.route[1].mapID, 1454, "Cairne's step starts at the Orgrimmar flight master")
Equal(exploringCairne.route[2].mapID, 1456, "Cairne Bloodhoof is in Thunder Bluff")
Equal(exploringSylvanas.route[1].mapID, 1458, "Lady Sylvanas is in the Undercity")
local arrived = {}
for key, value in pairs(starter) do arrived[key] = value end
arrived.level = 14
arrived.faction = "Horde"
arrived.classID = 1
arrived.quests = {}
arrived.completedQuests = {}
for _, goal in ipairs(zephras.goals) do
    local quest = goal.complete and goal.complete.quest
    if quest and quest.id ~= 95350 and quest.id ~= 93739 then
        arrived.completedQuests[quest.id] = true
    end
end
ns.charDB.activeGoal = nil
ns.charDB.history = {}
ns.Engine.reviewingGoal = nil
ns.Engine:Refresh(arrived)
Equal(ns.Engine.currentGoal.id, "accept-welcome-to-azeroth",
    "landing in Mulgore continues with Welcome to Azeroth")
arrived.quests[95350] = { complete = false, objectives = {} }
ns.charDB.activeGoal = nil
ns.Engine:Refresh(arrived)
Equal(ns.Engine.currentGoal.id, "turnin-welcome-to-azeroth", "Welcome to Azeroth leads to Thrall")
local flight = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, {
    mapID = 1412, x = 0.334, y = 0.224, faction = "Horde",
})
Equal(flight and flight.mapID, 1454, "Mulgore without the Orgrimmar flight walks to Thrall")
Equal(flight and flight.label, "Thrall in the Valley of Wisdom", "the walking pin is Thrall")
ns.charDB.taxiRoutes = {
    [1456] = { x = 0.468, y = 0.497, destinations = { ["orgrimmar"] = "Orgrimmar" } },
}
local knownOrgFlight = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, {
    mapID = 1456, x = 0.5, y = 0.5, faction = "Horde",
})
Equal(knownOrgFlight and knownOrgFlight.label, "Take the flight path to Orgrimmar.",
    "Thunder Bluff with the Orgrimmar flight uses the flight path")
ns.charDB.taxiRoutes = {}
ns.charDB.taxiNodes = nil
local thrall = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, {
    mapID = 1454, x = 0.45, y = 0.63, faction = "Horde",
})
Equal(thrall and thrall.label, "Thrall in the Valley of Wisdom", "Orgrimmar points at Thrall")
arrived.completedQuests[95350] = true
arrived.quests[95350] = nil
ns.charDB.activeGoal = nil
ns.Engine:Refresh(arrived)
Equal(ns.Engine.currentGoal.id, "accept-exploring-the-horde", "Thrall offers Exploring the Horde next")
arrived.quests[93739] = { complete = false, objectives = {} }
arrived.questLogKnown = true
arrived.questCompletionKnown = true
ns.charDB.activeGoal = nil
ns.Engine:Refresh(arrived)
Equal(ns.Engine.currentGoal.id, "objective-exploring-the-horde", "Exploring the Horde is the final Horde tour")
local nazgrel = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, {
    mapID = 1454, x = 0.324, y = 0.360, faction = "Horde",
})
Equal(nazgrel and nazgrel.label, "Nazgrel in Grommash Hold", "standing on Nazgrel keeps his pin")
arrived.quests[93739] = {
    complete = false,
    objectives = {
        { text = "Obtain Instructions from Nazgrel", finished = true, numRequired = 1, numFulfilled = 1 },
        { text = "Speak with Vol'jin", finished = false, numRequired = 1, numFulfilled = 0 },
    },
}
ns.charDB.activeGoal = nil
ns.Engine:Refresh(arrived)
Equal(ns.Engine.currentGoal.id, "objective-exploring-the-horde-voljin", "a finished Nazgrel visit does not pin him again")
local voljin = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, {
    mapID = 1454, x = 0.50, y = 0.70, faction = "Horde",
})
Equal(voljin and voljin.label, "Vol'jin in Grommash Hold", "Nazgrel leads on to Vol'jin")
arrived.quests[93739].objectives[2].finished = true
arrived.quests[93739].objectives[2].numFulfilled = 1
ns.charDB.activeGoal = nil
ns.Engine:Refresh(arrived)
Equal(ns.Engine.currentGoal.id, "objective-exploring-the-horde-cairne", "Vol'jin leads on to Cairne")
local cairneFlight = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, {
    mapID = 1454, x = 0.342, y = 0.366, faction = "Horde",
})
Equal(cairneFlight and cairneFlight.label, "Cairne Bloodhoof on the High Rise",
    "without the Thunder Bluff flight, Cairne's step walks to the High Rise")
ns.charDB.taxiRoutes = {
    [1454] = { x = 0.454, y = 0.639, destinations = { ["thunder bluff, mulgore"] = "Thunder Bluff, Mulgore" } },
}
local knownCairneFlight = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, {
    mapID = 1454, x = 0.342, y = 0.366, faction = "Horde",
})
Equal(knownCairneFlight and knownCairneFlight.label, "Take the flight path to Thunder Bluff.",
    "a known Thunder Bluff flight is offered before the walk to Cairne")
ns.charDB.taxiRoutes = {}
ns.charDB.taxiNodes = nil
local cairne = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, {
    mapID = 1456, x = 0.47, y = 0.50, faction = "Horde",
})
Equal(cairne and cairne.label, "Cairne Bloodhoof on the High Rise", "Thunder Bluff points at Cairne")
arrived.quests[93739].objectives[3] = {
    text = "Speak with Cairne Bloodhoof", finished = true, numRequired = 1, numFulfilled = 1,
}
ns.charDB.activeGoal = nil
ns.Engine:Refresh(arrived)
Equal(ns.Engine.currentGoal.id, "objective-exploring-the-horde-sylvanas", "Cairne leads on to Lady Sylvanas")
local zeppelin = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, {
    mapID = 1454, x = 0.342, y = 0.366, faction = "Horde",
})
Equal(zeppelin and zeppelin.mapID, 1411, "Lady Sylvanas sends Horde to the Orgrimmar zeppelin")
Check(zeppelin and string.find(zeppelin.label, "Undercity", 1, true) ~= nil,
    "the Sylvanas step names the Undercity zeppelin")
ns.Engine.state = {
    mapID = 1454, x = 0.342, y = 0.366, faction = "Horde", level = 14,
    quests = arrived.quests, completedQuests = arrived.completedQuests,
    questLogKnown = true, questCompletionKnown = true,
}
local travelText = ns.UI:GoalInstruction(ns.Engine)
Check(string.find(travelText, "zeppelin", 1, true) ~= nil,
    "the tracker explains the Undercity zeppelin")
arrived.quests[93739] = { complete = true, objectives = {} }
ns.charDB.activeGoal = nil
ns.Engine:Refresh(arrived)
Equal(ns.Engine.currentGoal.id, "turnin-exploring-the-horde", "the tour finishes with Lady Sylvanas")
local allianceArrived = {}
for key, value in pairs(arrived) do allianceArrived[key] = value end
allianceArrived.faction = "Alliance"
allianceArrived.quests = {}
allianceArrived.completedQuests = {}
for questID in pairs(arrived.completedQuests) do
    allianceArrived.completedQuests[questID] = true
end
ns.charDB.activeGoal = nil
ns.Engine:Refresh(allianceArrived)
Check(not ns.Engine.currentGoal or (
    ns.Engine.currentGoal.id ~= "accept-welcome-to-azeroth"
    and ns.Engine.currentGoal.id ~= "accept-exploring-the-horde"
), "Alliance keeps the Dalaran ending instead of the Horde capitals")

local barrens = ns.guides["leveling-the-barrens"]
Check(barrens ~= nil, "the Barrens guide is registered")
Equal(barrens.category, "Loremaster Guides", "the Barrens guide is a Loremaster guide")
local valveGoals = 0
for _, goal in ipairs(barrens.goals) do
    if string.find(goal.id, "objective-900-samophlange-", 1, true) then
        valveGoals = valveGoals + 1
        Equal(#goal.route, 1, "each Samophlange valve has its own pin")
    end
end
Equal(valveGoals, 3, "Samophlange valves are separate steps")
local disruption = ns.Engine:GetGoal(barrens, "objective-872-the-disruption-ends-3")
Check(disruption and string.find(disruption.text, "This is an elite", 1, true) == nil,
    "Kreenig Snarlsnout is not an elite on Forever")
local zhevra = ns.Engine:GetGoal(barrens, "accept-845-the-zhevra")
Check(DependsOn(zhevra, "turnin-844-plainstrider-menace"),
    "The Zhevra waits until Plainstrider Menace is turned in")

local durotar = ns.guides["leveling-durotar"]
Check(durotar ~= nil, "the Durotar guide is registered")
Equal(durotar.category, "Loremaster Guides", "the Durotar guide is a Loremaster guide")
local encroachmentGoals = 0
for _, goal in ipairs(durotar.goals) do
    if string.find(goal.id, "objective-837-encroachment-", 1, true) then
        encroachmentGoals = encroachmentGoals + 1
        Equal(#goal.route, 1, "each Encroachment camp has its own pin")
    end
end
Equal(encroachmentGoals, 4, "Encroachment camps are separate steps")
local antidote = ns.Engine:GetGoal(durotar, "accept-813-finding-the-antidote")
Check(DependsOn(antidote, "accept-812-need-for-a-cure"),
    "Finding the Antidote waits until Need for a Cure is accepted")
local cure = ns.Engine:GetGoal(durotar, "turnin-812-need-for-a-cure")
Check(DependsOn(cure, "turnin-813-finding-the-antidote"),
    "Need for a Cure turns in after the antidote")
local aggor = ns.Engine:GetGoal(durotar, "objective-99052-threat-from-below-1")
Check(aggor and string.find(aggor.text, "Bring a group", 1, true) ~= nil,
    "Aggor tells the player to bring a group")
local durotarState = {}
for key, value in pairs(baseState) do durotarState[key] = value end
durotarState.level = 20
durotarState.classID = 3
durotarState.professionsKnown = true
durotarState.professions = {}
durotarState.completedQuests = {}
durotarState.quests = {}
for _, goal in ipairs(durotar.goals) do
    local complete = goal.complete
    local questID = complete and complete.quest and complete.quest.id
    if not questID and complete and complete.questObjective then
        questID = complete.questObjective.id
    end
    if questID and questID ~= 96873 and questID ~= 96874 and questID ~= 96875
        and questID ~= 785 and questID ~= 832
        and questID ~= 96876 and questID ~= 96877 and questID ~= 97281 and questID ~= 97282 then
        durotarState.completedQuests[questID] = true
    end
end
local durotarProgress = ns.Engine:GetGuideProgress(durotar, durotarState)
Equal(durotarProgress.percentage, 100,
    "a hunter without a crafting profession reaches 100% after the offered Durotar quests")
Check(durotarProgress.eligible < durotarProgress.total,
    "crafting lessons and unstarted drop quests stay out of the Durotar percentage")

-- A level 15 troll mage with herbalism and alchemy cannot take the Orgrimmar
-- crafting lessons, so the guide must not stop on them.
do
    local herbalist = {
        faction = "Horde", raceID = 8, classID = 8, level = 15,
        professions = { [182] = 60, [171] = 55 }, professionsKnown = true,
        quests = {}, questLogKnown = true,
        completedQuests = {}, questCompletionKnown = true,
        mapID = 1454, x = 0.80, y = 0.23,
    }
    for _, goalID in ipairs({
        "accept-96873-a-pain-in-the-neck",
        "accept-96874-this-is-spinal-axe",
        "turnin-96874-this-is-spinal-axe",
        "accept-96875-beasts-of-thunder-ridge",
        "turnin-96875-beasts-of-thunder-ridge",
    }) do
        Equal(ns.EvaluateCondition(ns.Engine:GetGoal(durotar, goalID).conditions, herbalist), false,
            goalID .. " is not offered without the trainer's profession")
    end
    local smith = {}
    for key, value in pairs(herbalist) do smith[key] = value end
    smith.professions = { [164] = 1 }
    Equal(ns.EvaluateCondition(ns.Engine:GetGoal(durotar, "accept-96874-this-is-spinal-axe").conditions, smith), true,
        "a blacksmith is offered This Is Spinal Axe")
    Equal(ns.EvaluateCondition(ns.Engine:GetGoal(durotar, "accept-96875-beasts-of-thunder-ridge").conditions, smith), false,
        "blacksmithing does not unlock the leatherworking lesson")
    local tanner = {}
    for key, value in pairs(herbalist) do tanner[key] = value end
    tanner.professions = { [165] = 1 }
    Equal(ns.EvaluateCondition(ns.Engine:GetGoal(durotar, "accept-96875-beasts-of-thunder-ridge").conditions, tanner), true,
        "a leatherworker is offered Beasts of Thunder Ridge")
    local hoofFinder = {}
    for key, value in pairs(herbalist) do hoofFinder[key] = value end
    hoofFinder.quests = { [96877] = { complete = false, objectives = {} } }
    Equal(ns.EvaluateCondition(ns.Engine:GetGoal(durotar, "turnin-96877-halikors-hoof").conditions, hoofFinder), true,
        "Halikor's Hoof still turns in without a crafting profession")
end

local mulgore = ns.guides["leveling-mulgore"]
Check(mulgore ~= nil, "the Mulgore guide is registered")
Equal(mulgore.category, "Loremaster Guides", "the Mulgore guide is a Loremaster guide")
local palemaneGoals = 0
for _, goal in ipairs(mulgore.goals) do
    if string.find(goal.id, "objective-745-sharing-the-land-", 1, true) then
        palemaneGoals = palemaneGoals + 1
        Equal(#goal.route, 1, "each Sharing the Land camp has its own pin")
        Check(DependsOn(goal, "accept-745-sharing-the-land"),
            "Sharing the Land objectives wait on the accept")
        Check(not DependsOn(goal, "objective-745-sharing-the-land-1") or goal.id == "objective-745-sharing-the-land-1",
            "Sharing the Land objectives do not wait on each other")
    end
end
Equal(palemaneGoals, 3, "Sharing the Land camps are separate steps")
local winterhoof = ns.Engine:GetGoal(mulgore, "accept-754-winterhoof-cleansing")
Check(DependsOn(winterhoof, "turnin-748-poison-water"),
    "Winterhoof Cleansing waits until Poison Water is turned in")
local clearcutter = ns.Engine:GetGoal(mulgore, "objective-98427-ceasing-operations-1")
Check(clearcutter and string.find(clearcutter.text, "Bring a group", 1, true) ~= nil,
    "the Venture Co. shredder tells the player to bring a group")
local mulgoreState = {}
for key, value in pairs(baseState) do mulgoreState[key] = value end
mulgoreState.level = 20
mulgoreState.raceID = 2
mulgoreState.classID = 3
mulgoreState.completedQuests = {}
mulgoreState.quests = {}
local mulgoreSkip = {
    [748] = true, [754] = true, [756] = true, [758] = true, [759] = true, [760] = true,
    [854] = true, [98435] = true, [76156] = true, [76160] = true, [76240] = true,
    [781] = true, [770] = true, [98424] = true, [98427] = true,
}
for _, goal in ipairs(mulgore.goals) do
    local complete = goal.complete
    local questID = complete and complete.quest and complete.quest.id
    if not questID and complete and complete.questObjective then
        questID = complete.questObjective.id
    end
    if questID and not mulgoreSkip[questID] then
        mulgoreState.completedQuests[questID] = true
    end
end
local mulgoreProgress = ns.Engine:GetGuideProgress(mulgore, mulgoreState)
Equal(mulgoreProgress.percentage, 100,
    "an orc hunter reaches 100% after the Mulgore quests that orc can do")
Check(mulgoreProgress.eligible < mulgoreProgress.total,
    "tauren, shaman, and unstarted drop quests stay out of the Mulgore percentage")

function TestTimedQuests()
local function QuestIDFromGoal(goal)
    local complete = goal.complete
    local questID = complete and complete.quest and complete.quest.id
    if not questID and complete and complete.questObjective then
        questID = complete.questObjective.id
    end
    return questID
end

local function SelectGuide(guide, keep, state)
    ns.charDB.selectedGuide = guide.id
    ns.charDB.activeGoal = nil
    ns.charDB.manualCompleted = {}
    ns.charDB.deferred = {}
    ns.charDB.history = {}
    ns.charDB.completionLedger = {}
    ns.db.autoAdvance = true
    ns.Engine.reviewingGoal = nil
    state.completedQuests = {}
    state.questLogKnown = true
    state.questCompletionKnown = true
    for _, goal in ipairs(guide.goals) do
        local questID = QuestIDFromGoal(goal)
        if questID and not keep[questID] then
            state.completedQuests[questID] = true
        end
    end
    ns.Engine:Refresh(state)
end

local cureState = {
    faction = "Horde", raceID = 2, classID = 1, level = 12,
    professions = {}, professionsKnown = true,
    quests = { [812] = { complete = false, objectives = {} } },
    mapID = 1411, x = 0.42, y = 0.19,
}
SelectGuide(durotar, { [812] = true, [813] = true, [816] = true }, cureState)
Equal(ns.Engine.currentGoal.id, "accept-813-finding-the-antidote",
    "Need for a Cure is the next step while its 45 minute timer is running")
ns.charDB.activeGoal = "accept-816-lost-but-not-forgotten"
ns.Engine.reviewingGoal = nil
ns.Engine:Refresh(cureState)
Equal(ns.Engine.currentGoal.id, "accept-816-lost-but-not-forgotten",
    "a 45 minute timer finishes the current step before it takes over")
local cureCandidates = ns.Engine:CandidateGoals(durotar, cureState)
Equal(cureCandidates[1].id, "accept-813-finding-the-antidote",
    "the antidote is the following step, ahead of other Durotar work")
cureState.quests[812].timeLeft = 10 * 60
ns.charDB.activeGoal = "accept-816-lost-but-not-forgotten"
ns.Engine:Refresh(cureState)
Equal(ns.Engine.currentGoal.id, "accept-813-finding-the-antidote",
    "a short timer remaining takes the next step immediately")
ns.charDB.deferred["accept-813-finding-the-antidote"] = true
ns.charDB.activeGoal = nil
ns.Engine:Refresh(cureState)
Equal(ns.Engine.currentGoal.id, "accept-816-lost-but-not-forgotten",
    "skipping a timed step still leaves it for later")

local sporeState = {
    faction = "Horde", raceID = 6, classID = 1, level = 20,
    professions = {}, professionsKnown = true,
    quests = { [853] = { complete = false, objectives = {} } },
    mapID = 1413, x = 0.52, y = 0.30,
}
SelectGuide(barrens, { [853] = true, [3923] = true, [3924] = true }, sporeState)
Equal(ns.Engine.currentGoal.id, "turnin-853-apothecary-zamah",
    "Apothecary Zamah is turned in before other Barrens steps on its 45 minute timer")

local seedState = {
    faction = "Horde", raceID = 2, classID = 1, level = 14,
    professions = {}, professionsKnown = true,
    quests = {
        [924] = { complete = false, objectives = { { text = "Destroy the Demon Seed", finished = false } } },
        [926] = { complete = false, objectives = {} },
    },
    mapID = 1411, x = 0.46, y = 0.23,
}
SelectGuide(durotar, { [924] = true, [926] = true, [834] = true, [835] = true }, seedState)
ns.charDB.activeGoal = "accept-834-winds-in-the-desert"
ns.Engine:Refresh(seedState)
Equal(ns.Engine.currentGoal.id, "objective-924-the-demon-seed-1",
    "the 30 minute Flawed Power Stone makes the Demon Seed altar the next step")

local timedLog = ns.PlayerState:GetQuestLog({
    C_QuestLog = {
        GetNumQuestLogEntries = function() return 1 end,
        GetInfo = function() return { questID = 812, timeLeft = 600 } end,
        GetQuestObjectives = function() return {} end,
        GetTimeAllowed = function() return 2700 end,
    },
})
Equal(timedLog[812].timeLeft, 600, "quest log time left is kept when the client reports it")
Equal(timedLog[812].timeAllowed, 2700, "quest log time allowed is kept when the client reports it")
local missingTimer = ns.PlayerState:GetQuestLog({
    C_QuestLog = {
        GetNumQuestLogEntries = function() return 1 end,
        GetInfo = function() return { questID = 853 } end,
        GetQuestObjectives = function() return {} end,
        GetTimeAllowed = function() error("timer unavailable") end,
    },
})
Equal(missingTimer[853].timeAllowed, nil, "a missing timer API leaves the quest untimed")
Equal(missingTimer[853].timeLeft, nil, "a quest without a reported timer has no time left")

local badTimerOK = pcall(function()
    ns:RegisterGuide({
        id = "bad-timer", title = "Bad Timer", category = "Test Guides", revision = 1,
        goals = {
            { id = "one", kind = "accept", text = "One", timer = 0,
                complete = { quest = { id = 1, state = "activeOrCompleted" } } },
        },
    })
end)
Equal(badTimerOK, false, "a timer needs a positive duration")
end
TestTimedQuests()

function TestRaceSteps()
    local function Fresh(raceID)
        return {
            faction = "Horde", raceID = raceID, classID = 1, level = 14,
            professions = {}, professionsKnown = true,
            quests = {}, questLogKnown = true,
            completedQuests = {}, questCompletionKnown = true,
            mapID = 1413, x = 0.52, y = 0.30,
        }
    end
    local function Open(guide, state)
        ns.charDB.selectedGuide = guide.id
        ns.charDB.activeGoal = nil
        ns.charDB.manualCompleted = {}
        ns.charDB.deferred = {}
        ns.charDB.history = {}
        ns.charDB.completionLedger = {}
        ns.db.autoAdvance = true
        ns.Engine.reviewingGoal = nil
        ns.Engine:Refresh(state)
    end
    local skyborne = Fresh(96)
    skyborne.mapID = 1454
    Open(barrens, skyborne)
    Equal(ns.Engine.currentGoal.id, "accept-98024-journey-to-the-crossroads",
        "a level 14 Horde Skyborne in Orgrimmar starts the Barrens at Thrall")
    skyborne.mapID = 1413
    ns.charDB.activeGoal = nil
    ns.Engine:Refresh(skyborne)
    Equal(ns.Engine.currentGoal.id, "accept-844-plainstrider-menace",
        "a level 14 Horde Skyborne in the Barrens starts at Plainstrider Menace")
    skyborne.completedQuests[98024] = true
    ns.charDB.activeGoal = nil
    ns.Engine:Refresh(skyborne)
    Equal(ns.Engine.currentGoal.id, "accept-844-plainstrider-menace",
        "a Skyborne continues at Plainstrider Menace")
    local meats = ns.Engine:GetGoal(barrens, "accept-6365-meats-to-orgrimmar")
    Equal(ns.Engine:IsReady(barrens, meats, skyborne), false,
        "Meats to Orgrimmar is not offered to a Skyborne")
    local orc = Fresh(2)
    orc.completedQuests[98024] = true
    Open(barrens, orc)
    Equal(ns.Engine.currentGoal.id, "accept-6365-meats-to-orgrimmar",
        "an orc still takes Meats to Orgrimmar")
    local troll = Fresh(8)
    troll.level = 15
    troll.classID = 8
    troll.mapID = 1454
    Open(barrens, troll)
    Equal(ns.Engine.currentGoal.id, "accept-6365-meats-to-orgrimmar",
        "a level 15 troll in Orgrimmar is not sent to Thrall for Journey to the Crossroads")
    ns.charDB.activeGoal = "accept-98024-journey-to-the-crossroads"
    ns.Engine:Refresh(troll)
    Equal(ns.Engine.currentGoal.id, "accept-6365-meats-to-orgrimmar",
        "a troll leaves Journey to the Crossroads once the guide refreshes")
    local tauren = Fresh(6)
    tauren.completedQuests[98024] = true
    Open(barrens, tauren)
    Equal(ns.Engine.currentGoal.id, "accept-6361-a-bundle-of-hides",
        "a tauren takes A Bundle of Hides")
    local durotarSkyborne = Fresh(96)
    durotarSkyborne.mapID = 1411
    durotarSkyborne.level = 14
    Open(durotar, durotarSkyborne)
    Equal(ns.Engine.currentGoal.id, "accept-786-thwarting-kolkar-aggression",
        "a Skyborne starts Durotar at Sen'jin Village")
    local huntersWay = ns.Engine:GetGoal(mulgore, "accept-861-the-hunters-way")
    Equal(ns.Engine:IsReady(mulgore, huntersWay, skyborne), false,
        "The Hunter's Way stays on tauren")
end
TestRaceSteps()

function TestCampPickups()
    local function Open(guide, state)
        ns.charDB.selectedGuide = guide.id
        ns.charDB.activeGoal = nil
        ns.charDB.manualCompleted = {}
        ns.charDB.deferred = {}
        ns.charDB.history = {}
        ns.charDB.completionLedger = {}
        ns.db.autoAdvance = true
        ns.Engine.reviewingGoal = nil
        ns.Engine:Refresh(state)
    end
    local function Horde(level, mapID, quests)
        return {
            faction = "Horde", raceID = 96, classID = 1, level = level,
            professions = {}, professionsKnown = true,
            quests = quests, questLogKnown = true,
            completedQuests = {}, questCompletionKnown = true,
            mapID = mapID, x = 0.52, y = 0.30,
        }
    end
    local function Active(questID)
        return { complete = false, objectives = {
            { text = "unfinished", finished = false, numFulfilled = 0, numRequired = 1 },
        } }
    end
    local barrensGuide = ns.guides["leveling-the-barrens"]
    local seen = {}
    for _, goal in ipairs(barrensGuide.goals) do
        Check(seen[goal.priority] == nil, "Barrens priorities stay unique")
        seen[goal.priority] = goal.id
    end
    Open(barrensGuide, Horde(14, 1413, { [844] = Active(844) }))
    Equal(ns.Engine.currentGoal.id, "accept-869-raptor-thieves",
        "Plainstrider Menace is picked up with Raptor Thieves")
    Open(barrensGuide, Horde(14, 1413, {
        [844] = Active(844), [869] = Active(869), [871] = Active(871), [867] = Active(867),
    }))
    Equal(ns.Engine.currentGoal.id, "objective-844-plainstrider-menace-1",
        "Crossroads quests leave camp together")
    local zhevra = ns.Engine:GetGoal(barrensGuide, "accept-845-the-zhevra")
    Equal(ns.Engine:IsReady(barrensGuide, zhevra, Horde(14, 1413, {
        [844] = Active(844), [869] = Active(869), [871] = Active(871), [867] = Active(867),
    })), false, "The Zhevra waits until Plainstrider Menace is turned in")
    local harpies = ns.Engine:GetGoal(barrensGuide, "accept-867-harpy-raiders")
    Equal(ns.Engine:IsReady(barrensGuide, harpies, Horde(10, 1413, {})), false,
        "Harpy Raiders stays level 12")
    local ends = ns.Engine:GetGoal(barrensGuide, "accept-872-the-disruption-ends")
    Check(DependsOn(ends, "turnin-871-disrupt-the-attacks"),
        "The Disruption Ends waits until Disrupt the Attacks is turned in")
    local supplies = ns.Engine:GetGoal(barrensGuide, "accept-5041-supplies-for-the-crossroads")
    Check(DependsOn(supplies, "turnin-871-disrupt-the-attacks"),
        "Supplies for the Crossroads waits until Disrupt the Attacks is turned in")
    Open(barrensGuide, {
        faction = "Horde", raceID = 96, classID = 1, level = 14,
        professions = {}, professionsKnown = true,
        quests = {}, questLogKnown = true,
        completedQuests = { [844] = true, [869] = true, [871] = true, [867] = true },
        questCompletionKnown = true,
        mapID = 1413, x = 0.52, y = 0.30,
    })
    Equal(ns.Engine.currentGoal.id, "accept-845-the-zhevra",
        "the next Crossroads wave starts with The Zhevra")
    local durotarGuide = ns.guides["leveling-durotar"]
    local durotarSeen = {}
    for _, goal in ipairs(durotarGuide.goals) do
        Check(durotarSeen[goal.priority] == nil, "Durotar priorities stay unique")
        durotarSeen[goal.priority] = goal.id
    end
    Open(durotarGuide, Horde(14, 1411, { [786] = Active(786) }))
    Equal(ns.Engine.currentGoal.id, "accept-817-practical-prey",
        "Sen'jin Village picks up Practical Prey with Thwarting Kolkar Aggression")

    local function Counted(text, fulfilled, required, finished)
        return {
            text = text, finished = finished,
            numFulfilled = fulfilled, numRequired = required,
        }
    end
    local midDisrupt = Horde(15, 1413, {
        [869] = { complete = true, objectives = { Counted("Raptor Head", 12, 12, true) } },
        [871] = { complete = false, objectives = {
            Counted("Razormane Water Seeker slain", 8, 8, true),
            Counted("Razormane Thornweaver slain", 8, 8, true),
            Counted("Razormane Hunter slain", 2, 3, true),
        } },
        [867] = { complete = false, objectives = { Counted("Witchwing Talon", 0, 8, false) } },
    })
    local keepOpen = { [869] = true, [871] = true, [867] = true }
    for _, goal in ipairs(barrensGuide.goals) do
        local complete = goal.complete
        local questID = complete and complete.quest and complete.quest.id
        if not questID and complete and complete.questObjective then
            questID = complete.questObjective.id
        end
        if questID and goal.priority and goal.priority < 224 and not keepOpen[questID] then
            midDisrupt.completedQuests[questID] = true
        end
    end
    Equal(ns.EvaluateCondition({
        questObjective = { id = 871, index = 3, text = "Razormane Hunter slain" },
    }, midDisrupt), false, "2/3 Razormane Hunters stay incomplete when finished is set")
    local partial = { text = "Razormane Hunter slain", finished = 2, numFulfilled = 2, numRequired = 3 }
    Equal(ns.EvaluateCondition({
        questObjective = { id = 871, index = 3, text = "Razormane Hunter slain" },
    }, Horde(15, 1413, { [871] = { complete = false, objectives = {
        Counted("Razormane Water Seeker slain", 8, 8, true),
        Counted("Razormane Thornweaver slain", 8, 8, true),
        partial,
    } } })), false, "a finished number that matches the short count is still incomplete")
    Open(barrensGuide, midDisrupt)
    Equal(ns.Engine.currentGoal.id, "objective-871-disrupt-the-attacks-3",
        "Harpy Raiders waits until the Razormane Hunters are slain")
    ns.charDB.activeGoal = "objective-867-harpy-raiders-1"
    ns.Engine:Refresh(midDisrupt)
    Equal(ns.Engine.currentGoal.id, "objective-871-disrupt-the-attacks-3",
        "an unfinished Razormane Hunter count returns from Harpy Raiders")
    local logged = ns.PlayerState:GetQuestLog({
        C_QuestLog = {
            GetNumQuestLogEntries = function() return 1 end,
            GetInfo = function()
                return { questID = 871, title = "Disrupt the Attacks", isComplete = false }
            end,
            GetQuestObjectives = function()
                return {
                    Counted("Razormane Water Seeker slain", 8, 8, true),
                    Counted("Razormane Thornweaver slain", 8, 8, true),
                    Counted("Razormane Hunter slain", 2, 3, true),
                }
            end,
        },
    })
    Equal(logged[871].complete, false, "2/3 hunters do not mark Disrupt the Attacks complete")
    midDisrupt.quests[871].objectives[3].numFulfilled = 3
    ns.charDB.activeGoal = "objective-867-harpy-raiders-1"
    ns.Engine:Refresh(midDisrupt)
    Equal(ns.Engine.currentGoal.id, "objective-867-harpy-raiders-1",
        "Harpy Raiders resumes once the Razormane Hunters are slain")
end
TestCampPickups()

function TestHiddenEnemies()
    local rfc = ns.guides["dungeons-ragefire-chasm-horde"]
    local function Open(state)
        ns.charDB.selectedGuide = rfc.id
        ns.charDB.activeGoal = nil
        ns.charDB.manualCompleted = {}
        ns.charDB.deferred = {}
        ns.charDB.history = {}
        ns.charDB.completionLedger = {}
        ns.db.autoAdvance = true
        ns.Engine.reviewingGoal = nil
        ns.Engine:Refresh(state)
    end
    local function State(quests, completed)
        return {
            faction = "Horde", raceID = 2, classID = 1, level = 13,
            professions = {}, professionsKnown = true,
            quests = quests, questLogKnown = true,
            completedQuests = completed, questCompletionKnown = true,
            mapID = 1454, x = 0.32, y = 0.38,
        }
    end
    Open(State({}, { [5726] = true }))
    Equal(ns.Engine.currentGoal.id, "gauge-neeru", "returning the insignia points at Neeru")
    local leg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, ns.Engine.state)
    Equal(leg.x, 0.496, "the insignia follow-up marks Neeru Fireblade")
    local talking = State({
        [5727] = { complete = false, objectives = {
            { text = "Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade", finished = 1 },
        } },
    }, { [5726] = true })
    Equal(ns.EvaluateCondition({
        questObjective = { id = 5727, index = 1, text = "Gauge Neeru" },
    }, talking), true, "Neeru's dialogue objective counts when finished is 1")
    local logged = ns.PlayerState:GetQuestLog({
        C_QuestLog = {
            GetNumQuestLogEntries = function() return 1 end,
            GetInfo = function()
                return { questID = 5727, title = "Hidden Enemies", isComplete = false }
            end,
            GetQuestObjectives = function()
                return { { text = "Gauge Neeru Fireblade's reaction", finished = 1 } }
            end,
        },
    })
    Equal(logged[5727].complete, true, "a dialogue objective flagged with 1 is ready to turn in")
    talking.quests[5727].complete = true
    ns.charDB.activeGoal = "gauge-neeru"
    ns.Engine:Refresh(talking)
    Equal(ns.Engine.currentGoal.id, "turnin-hidden-enemies-2",
        "exhausting Neeru's dialogue reports back to Thrall")
    local unfinished = State({
        [5727] = { complete = false, objectives = {
            { text = "Gauge Neeru Fireblade's reaction", finished = 0 },
        } },
    }, { [5726] = true })
    ns.charDB.activeGoal = "gauge-neeru"
    ns.Engine:Refresh(unfinished)
    Equal(ns.Engine.currentGoal.id, "gauge-neeru", "an unfinished talk with Neeru stays on that step")
    Open(State({}, {
        [5726] = true, [5727] = true, [5728] = true, [5761] = true,
    }))
    Equal(ns.Engine.currentGoal.id, "turnin-hidden-enemies-4",
        "the dungeon report sends you to Neeru")
    leg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, ns.Engine.state)
    Equal(leg.x, 0.496, "the Searing Blade report marks Neeru Fireblade")
    Open(State({}, {
        [5726] = true, [5727] = true, [5728] = true, [5729] = true, [5761] = true,
    }))
    Equal(ns.Engine.currentGoal.id, "turnin-hidden-enemies-5",
        "Neeru's message goes back to Thrall")
    leg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, ns.Engine.state)
    Equal(leg.x, 0.320, "the final Hidden Enemies step marks Thrall")
    local barrens = ns.guides["leveling-the-barrens"]
    Check(ns.Engine:GetGoal(barrens, "accept-890-the-missing-shipment") == nil,
        "The Missing Shipment is not a separate accept step")
    local shipment = ns.Engine:GetGoal(barrens, "turnin-890-the-missing-shipment")
    Equal(shipment.route[1].x, 0.632, "The Missing Shipment points at Dizzywig")
    local valve = ns.Engine:GetGoal(barrens, "objective-900-samophlange-1")
    Equal(valve.dependsOn[1], "turnin-894-samophlange", "the next Samophlange starts at the valves")
end
TestHiddenEnemies()

function TestFlightMemory()
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodes = nil
    Enum = { FlightPathState = { Reachable = 2, Current = 0 } }
    local remembered = ns.Taxi:Capture({
        C_Map = {
            GetBestMapForUnit = function() return 1454 end,
            GetPlayerMapPosition = function() return { GetXY = function() return 0.45, 0.64 end } end,
        },
        C_TaxiMap = {
            GetAllTaxiNodes = function()
                return {
                    { name = "Orgrimmar, Durotar", state = 0 },
                    { name = "Thunder Bluff, Mulgore", state = 2 },
                    { name = "Silvermoon City", state = 3 },
                }
            end,
        },
    })
    Equal(remembered, true, "opening a flight master remembers its flight points")
    ns.charDB.taxiRoutes = {}
    local horde = { mapID = 1413, x = 0.50, y = 0.32, faction = "Horde" }
    local goal = {
        taxiDestination = "Thunder Bluff",
        route = { { mapID = 1456, x = 0.47, y = 0.50, label = "Tal" } },
    }
    local leg = ns.Navigation:GetActiveLeg(goal, horde)
    Equal(leg and leg.label, "Take the flight path to Thunder Bluff.",
        "a flight point learned in Orgrimmar is still known in the Barrens")
    Check(leg and leg.learnedTaxi, "the remembered flight points at a flight master")
    Check(ns.Taxi:LearnedDestination(horde, "Orgrimmar") ~= nil,
        "the flight master that was open is remembered too")
    Equal(ns.Taxi:LearnedDestination(horde, "Silvermoon City"), nil,
        "an unlearned flight point stays unknown after the window closes")
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodes = nil
    Enum = nil
end
TestFlightMemory()

function TestTeldrassil()
    local guide = ns.guides["leveling-teldrassil"]
    Check(guide ~= nil, "the Teldrassil guide is registered")
    Equal(guide.category, "Loremaster Guides", "the Teldrassil guide is a Loremaster guide")
    local balance = 0
    for _, goal in ipairs(guide.goals) do
        if string.find(goal.id, "objective-456-the-balance-of-nature-", 1, true) then
            balance = balance + 1
            Equal(#goal.route, 1, "each Balance of Nature kill has its own pin")
            Check(DependsOn(goal, "accept-456-the-balance-of-nature"),
                "Balance of Nature objectives wait on the accept")
        end
    end
    Equal(balance, 2, "Balance of Nature kills are separate steps")
    local relics = 0
    for _, goal in ipairs(guide.goals) do
        if string.find(goal.id, "objective-483-the-relics-of-wakening-", 1, true) then
            relics = relics + 1
            Check(DependsOn(goal, "accept-483-the-relics-of-wakening"),
                "Relics of Wakening objectives wait on the accept")
            Check(not DependsOn(goal, "objective-483-the-relics-of-wakening-1")
                or goal.id == "objective-483-the-relics-of-wakening-1",
                "Relics of Wakening objectives do not wait on each other")
        end
    end
    Equal(relics, 4, "Relics of Wakening are separate steps")
    local crown = ns.Engine:GetGoal(guide, "accept-929-crown-of-the-earth")
    Check(DependsOn(crown, "turnin-928-crown-of-the-earth"),
        "the Starbreeze phial waits until the Shadowglen vessel is delivered")
    local vessel = ns.Engine:GetGoal(guide, "turnin-928-crown-of-the-earth")
    Check(DependsOn(vessel, "turnin-921-crown-of-the-earth"),
        "Corithras waits until Tenaron's phial is filled")
    local oak = ns.Engine:GetGoal(guide, "objective-2499-oakenscowl-1")
    Check(oak and string.find(oak.text, "Bring a group", 1, true) ~= nil,
        "Oakenscowl tells the player to bring a group")
    local xethorr = ns.Engine:GetGoal(guide, "accept-98403-twisted-hatred")
    Check(DependsOn(xethorr, "turnin-932-twisted-hatred"),
        "the elite Twisted Hatred waits until Lord Melenas is turned in")
    local seen = {}
    for _, goal in ipairs(guide.goals) do
        Check(seen[goal.priority] == nil, "Teldrassil priorities stay unique")
        seen[goal.priority] = goal.id
    end

    local function Alliance(level, quests, completed)
        return {
            faction = "Alliance", raceID = 4, classID = 1, level = level,
            professions = {}, professionsKnown = true,
            quests = quests or {}, questLogKnown = true,
            completedQuests = completed or {}, questCompletionKnown = true,
            mapID = 1438, x = 0.58, y = 0.44,
        }
    end
    ns.charDB.selectedGuide = guide.id
    ns.charDB.activeGoal = nil
    ns.charDB.manualCompleted = {}
    ns.charDB.deferred = {}
    ns.charDB.history = {}
    ns.charDB.completionLedger = {}
    ns.db.autoAdvance = true
    ns.Engine.reviewingGoal = nil
    ns.Engine:Refresh(Alliance(1))
    Equal(ns.Engine.currentGoal.id, "accept-456-the-balance-of-nature",
        "Shadowglen starts with The Balance of Nature")
    ns.charDB.activeGoal = nil
    ns.Engine:Refresh(Alliance(1, { [456] = { complete = false, objectives = {} } }))
    Equal(ns.Engine.currentGoal.id, "accept-458-the-woodland-protector",
        "Shadowglen also picks up The Woodland Protector before the kills")

    local skip = { [97236] = true, [927] = true, [941] = true }
    local done = {}
    for _, goal in ipairs(guide.goals) do
        local complete = goal.complete
        local questID = complete and complete.quest and complete.quest.id
        if not questID and complete and complete.questObjective then
            questID = complete.questObjective.id
        end
        if questID and not skip[questID] then
            done[questID] = true
        end
    end
    local progress = ns.Engine:GetGuideProgress(guide, Alliance(12, {}, done))
    Equal(progress.percentage, 100,
        "a night elf reaches 100% after the Teldrassil quests they can take")
    Check(progress.eligible < progress.total,
        "unstarted drop quests stay out of the Teldrassil percentage")

    done[3522] = nil
    done[935] = nil
    local antidote = Alliance(12, {
        [3522] = { complete = false, objectives = {}, timeLeft = 4 * 60 },
    }, done)
    ns.charDB.activeGoal = "turnin-935-crown-of-the-earth"
    ns.charDB.completionLedger = {}
    ns.Engine.reviewingGoal = nil
    ns.Engine:Refresh(antidote)
    Equal(ns.Engine.currentGoal.id, "turnin-3522-iverrons-antidote",
        "the 5 minute antidote is the next step ahead of other Teldrassil work")
end
TestTeldrassil()

function TestEraLeveling()
    local guide = ns.guides["leveling-era-1-12-durotar"]
    Check(guide ~= nil, "the Era Durotar guide is registered")
    Equal(guide.title, "1-12 Durotar (Era)", "Era guides are labeled Era")
    Equal(guide.category, "Leveling Quest Guides", "Era guides are leveling guides")
    local horde = {
        faction = "Horde", level = 1, raceID = 2, classID = 1,
        quests = {}, completedQuests = {}, questLogKnown = true, questCompletionKnown = true,
        mapID = 1411, x = 0.4, y = 0.4,
    }
    local alliance = {
        faction = "Alliance", level = 20, raceID = 1, classID = 1,
        quests = {}, completedQuests = {}, questLogKnown = true, questCompletionKnown = true,
    }
    Equal(ns.EvaluateCondition(guide.conditions, horde), true, "a Horde character can use an Era guide")
    Equal(ns.EvaluateCondition(guide.conditions, alliance), false, "an Alliance character cannot use an Era guide")
    local plans = 0
    local count = 0
    for _, goal in ipairs(guide.goals) do
        if string.find(goal.id, "objective-786-", 1, true) then plans = plans + 1 end
        Check(not string.find(string.lower(goal.text), "flight path", 1, true),
            "Era steps do not send you to learn a flight path")
        Check(not string.find(string.lower(goal.text), "grind", 1, true),
            "Era steps do not add grind stops")
    end
    Equal(plans, 3, "Thwarting Kolkar Aggression keeps its three plans")
    for _, guideID in ipairs(ns.guideOrder) do
        local eraGuide = ns.guides[guideID]
        if string.find(eraGuide.title, "(Era)", 1, true) then
            count = count + 1
            Equal(eraGuide.category, "Leveling Quest Guides", "every Era guide is a leveling guide")
            Equal(ns.EvaluateCondition(eraGuide.conditions, alliance), false,
                "every Era guide is hidden from Alliance")
        end
    end
    Equal(count, 38, "the Era set is registered")
end
TestEraLeveling()

ns.PlayerState:InvalidateProfessions()
local missingAPIOK, missingState = pcall(function() return ns.PlayerState:Capture({}) end)
Equal(missingAPIOK, true, "missing optional APIs do not raise Lua errors")
Equal(missingState.professionsKnown, false, "missing profession API is reported as unknown")

if failures > 0 then
    io.stderr:write(("%d of %d assertions failed\n"):format(failures, assertions))
    os.exit(1)
end
print(("Lua engine tests passed: %d assertions"):format(assertions))
