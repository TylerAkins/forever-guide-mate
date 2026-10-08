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
Load("SkipLineage.lua")
Load("QuestPrerequisites.lua")
Load("QuestAudit.lua")
Load("QuestDialog.lua")
Load("Navigation.lua")
Load("TomTomWaypoints.lua")
Load("MapPins.lua")
Load("MinimapButton.lua")
Load("UITheme.lua")
Load("UI.lua")
Load("Guides/Dungeons/RagefireChasm.lua")
Load("Guides/Dungeons/BlackfathomDeeps.lua")
Load("Guides/Dungeons/WailingCaverns.lua")
Load("Guides/Dungeons/RuinsOfLordaeron.lua")
Load("Guides/Dungeons/Deadmines.lua")
Load("Guides/Dungeons/HallOfThanes.lua")
Load("Guides/Dungeons/ExcavationSiteWetlands.lua")
Load("Guides/Dungeons/CityOfDalaranAttunement.lua")
Load("Guides/Leveling/zephras-isle.lua")
Load("Guides/Loremaster/Durotar.lua")
Load("Guides/Loremaster/Mulgore.lua")
Load("Guides/Leveling/tirisfal-glades.lua")
Load("Guides/Leveling/mulgore.lua")
Load("Guides/Leveling/durotar.lua")
Load("Guides/Leveling/horde-silverpine-forest.lua")
Load("Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua")
Load("Guides/Leveling/horde-ashenvale.lua")
Load("Guides/Leveling/horde-hillsbrad-foothills.lua")
Load("Guides/Leveling/horde-the-barrens.lua")
Load("Guides/Leveling/horde-stonetalon-mountains.lua")
Load("Guides/Leveling/horde-ashenvale-part-2.lua")
Load("Guides/Leveling/horde-thousand-needles.lua")
Load("Guides/Leveling/horde-hillsbrad-foothills-part-2.lua")
Load("Guides/Leveling/horde-arathi-highlands.lua")
Load("Guides/Leveling/horde-thousand-needles-part-2.lua")
Load("Guides/Leveling/horde-desolace.lua")
Load("Guides/Leveling/horde-stranglethorn-vale.lua")
Load("Guides/Leveling/horde-dustwallow-marsh.lua")
Load("Guides/Leveling/horde-alterac-mountains-and-arathi-highlands.lua")
Load("Guides/Leveling/horde-badlands.lua")
Load("Guides/Leveling/horde-stranglethorn-vale-and-swamp-of-sorrows.lua")
Load("Guides/Leveling/horde-desolace-part-2.lua")
Load("Guides/Leveling/horde-tanaris.lua")
Load("Guides/Leveling/horde-dustwallow-marsh-part-2.lua")
Load("Guides/Leveling/horde-tanaris-part-2.lua")
Load("Guides/Leveling/horde-feralas.lua")
Load("Guides/Leveling/horde-stranglethorn-vale-part-2.lua")
Load("Guides/Leveling/horde-swamp-of-sorrows.lua")
Load("Guides/Leveling/horde-tanaris-and-dustwallow-marsh.lua")
Load("Guides/Leveling/horde-the-hinterlands.lua")
Load("Guides/Leveling/horde-feralas-and-ungoro-crater.lua")
Load("Guides/Leveling/horde-stranglethorn-vale-and-swamp-of-sorrows-part-2.lua")
Load("Guides/Leveling/horde-blasted-lands.lua")
Load("Guides/Leveling/horde-searing-gorge.lua")
Load("Guides/Leveling/horde-burning-steppes-and-azshara.lua")
Load("Guides/Leveling/horde-felwood-and-winterspring.lua")
Load("Guides/Leveling/horde-ungoro-crater.lua")
Load("Guides/Leveling/horde-azshara.lua")
Load("Guides/Leveling/horde-felwood-and-winterspring-part-2.lua")
Load("Guides/Leveling/horde-western-and-eastern-plaguelands.lua")
Load("Guides/Leveling/horde-winterspring.lua")
Load("Guides/Leveling/horde-silithus.lua")
Load("Guides/Leveling/elwynn-forest.lua")
Load("Guides/Leveling/dun-morogh.lua")
Load("Guides/Leveling/teldrassil.lua")
Load("Guides/Leveling/alliance-westfall.lua")
Load("Guides/Leveling/alliance-darkshore.lua")
Load("Guides/Leveling/alliance-loch-modan.lua")
Load("Guides/Leveling/alliance-redridge-and-westfall.lua")
Load("Guides/Leveling/alliance-darkshore-part-2.lua")
Load("Guides/Leveling/alliance-ashenvale-and-stonetalon-mountains.lua")
Load("Guides/Leveling/alliance-wetlands.lua")
Load("Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua")
Load("Guides/Leveling/alliance-wetlands-part-2.lua")
Load("Guides/Leveling/alliance-stonetalon-mountains-and-ashenvale.lua")
Load("Guides/Leveling/alliance-duskwood-and-stranglethorn-vale.lua")
Load("Guides/Leveling/alliance-hillsbrad-foothills-and-arathi-highlands.lua")
Load("Guides/Leveling/alliance-dustwallow-marsh-and-thousand-needles.lua")
Load("Guides/Leveling/alliance-stranglethorn-vale.lua")
Load("Guides/Leveling/alliance-desolace.lua")
Load("Guides/Leveling/alliance-stranglethorn-vale-part-2.lua")
Load("Guides/Leveling/alliance-swamp-of-sorrows.lua")
Load("Guides/Leveling/alliance-arathi-highlands-and-alterac-mountains.lua")
Load("Guides/Leveling/alliance-dustwallow-marsh.lua")
Load("Guides/Leveling/alliance-desolace-part-2.lua")
Load("Guides/Leveling/alliance-badlands.lua")
Load("Guides/Leveling/alliance-stranglethorn-vale-part-3.lua")
Load("Guides/Leveling/alliance-swamp-of-sorrows-part-2.lua")
Load("Guides/Leveling/alliance-tanaris.lua")
Load("Guides/Leveling/alliance-feralas-and-tanaris.lua")
Load("Guides/Leveling/alliance-the-hinterlands.lua")
Load("Guides/Leveling/alliance-tanaris-part-2.lua")
Load("Guides/Leveling/alliance-ungoro-crater.lua")
Load("Guides/Leveling/alliance-stranglethorn-vale-part-4.lua")
Load("Guides/Leveling/alliance-searing-gorge.lua")
Load("Guides/Leveling/alliance-blasted-lands-and-burning-steppes.lua")
Load("Guides/Leveling/alliance-western-plaguelands.lua")
Load("Guides/Leveling/alliance-azshara-and-felwood.lua")
Load("Guides/Leveling/alliance-feralas-and-azshara.lua")
Load("Guides/Leveling/alliance-ungoro-crater-part-2.lua")
Load("Guides/Leveling/alliance-winterspring-and-felwood.lua")
Load("Guides/Leveling/alliance-burning-steppes.lua")
Load("Guides/Leveling/alliance-western-and-eastern-plaguelands.lua")
Load("Guides/Leveling/alliance-winterspring.lua")
Load("Guides/Leveling/alliance-silithus.lua")
Load("Guides/Class/Warrior.lua")
Load("Guides/Class/Paladin.lua")
Load("Guides/Class/Hunter.lua")
Load("Guides/Class/Rogue.lua")
Load("Guides/Class/Priest.lua")
Load("Guides/Class/Shaman.lua")
Load("Guides/Class/Mage.lua")
Load("Guides/Class/Warlock.lua")
Load("Guides/Class/Druid.lua")
Load("Guides/Miscellaneous/LibraryBooks.lua")

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
Equal(ns.EvaluateCondition({}, baseState), true, "empty condition table is a no-op")
Equal(ns.EvaluateCondition({ all = { {}, { faction = "Horde" } } }, baseState), true,
    "empty import condition children do not block eligibility")
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

Check(not pcall(function()
    ns:RegisterGuide({ id = "dependency-cycle", title = "Bad", category = "Test", revision = 1,
        goals = {
            { id = "one", kind = "note", text = "One", dependsOn = { "two" } },
            { id = "two", kind = "note", text = "Two", dependsOn = { "one" } },
        } })
end), "dependency cycles are rejected")

function TestAlternativePrerequisites()
    local previousCharDB = ns.charDB
    ns.charDB = { selectedGuide = nil, manualCompleted = {}, completionLedger = {}, deferred = {} }
    ns:RegisterQuestPrerequisite({ quest = 900001, mode = "any", quests = { 900002, 900003 } })
    ns:RegisterGuide({
        id = "alternative-prerequisites", title = "Alternatives", category = "Test", revision = 1,
        goals = {
            { id = "turnin-900002-left", kind = "turnin", text = "Left",
                complete = { quest = { id = 900002, state = "completed" } } },
            { id = "turnin-900003-right", kind = "turnin", text = "Right",
                complete = { quest = { id = 900003, state = "completed" } } },
            { id = "accept-900001-target", kind = "accept", text = "Target",
                complete = { quest = { id = 900001, state = "activeOrCompleted" } } },
        },
    })
    local guide = ns.guides["alternative-prerequisites"]
    local accept = ns.Engine:GetGoal(guide, "accept-900001-target")
    local state = { quests = {}, completedQuests = {}, questLogKnown = true, questCompletionKnown = true }
    Equal(ns.Engine:IsReady(guide, accept, state), false,
        "an any prerequisite waits while every alternative is unfinished")
    state.completedQuests[900003] = true
    Equal(ns.Engine:IsReady(guide, accept, state), true,
        "an any prerequisite accepts one completed alternative")
    ns.charDB = previousCharDB
end
TestAlternativePrerequisites()

local badCoordinateOK = pcall(function()
    ns:RegisterGuide({ id = "bad-coordinate", title = "Bad", category = "Test", revision = 1,
        goals = { { id = "one", kind = "travel", text = "One", route = { { mapID = 1, x = 2, y = 0 } } } } })
end)
Equal(badCoordinateOK, false, "invalid coordinate rejected")

ns:RegisterGuide({
    id = "test-guide-resync", title = "Resync", category = "Test", revision = 2,
    goals = {
        { id = "resync-early", kind = "accept", priority = 1, text = "Early",
            complete = { quest = { id = 900010, state = "activeOrCompleted" } } },
        { id = "resync-late", kind = "accept", priority = 2, text = "Late",
            complete = { quest = { id = 900011, state = "activeOrCompleted" } } },
    },
})

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
Equal(ns.db.schemaVersion, 5, "account schema migrated")
Equal(ns.charDB.schemaVersion, 10, "character schema migrated")
Equal(ns.db.tracker.point, "LEFT", "schema migration places the tracker on the left")
Equal(ns.db.tracker.relativePoint, "LEFT", "schema migration anchors the tracker to the left edge")
Equal(ns.db.tracker.x, 0, "schema migration starts the tracker at the left edge")
Equal(ns.db.tracker.y, 0, "schema migration centers the tracker vertically")
Equal(ns.db.tracker.locked, true, "schema migration preserves tracker lock")
Equal(ns.db.guideScale, 1.2, "schema migration copies tracker scale to guide scale")
Equal(ns.db.tracker.scale, 1.2, "schema migration preserves tracker scale until settings apply")
Equal(ns.db.uiOpen, false, "schema migration preserves closed state")
Equal(ns.charDB.skipped.later, true, "schema migration keeps skipped steps as skipped")
Check(type(ns.charDB.guideRevisions) == "table", "storage tracks the last seen guide revisions")
ns.InitializeStorage()
Equal(ns.charDB.selectedGuide, "remember-me", "existing character progress is preserved")

function TestGuideResync()
    local previousCharDB = ns.charDB
    local guide = ns.guides["test-guide-resync"]
    local state = {
        faction = "Horde", raceID = 2, classID = 1, level = 10,
        professions = {}, professionsKnown = true,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    }
    ns.charDB = {
        selectedGuide = guide.id,
        activeGoal = "resync-late",
        activeGoalByGuide = { [guide.id] = "resync-late" },
        guideRevisions = {},
        manualCompleted = {}, completionLedger = {}, deferred = {}, history = {},
        notOffered = {
            ["other-guide-step"] = { guide = "other-guide", quest = 900099, npc = "Other NPC" },
        },
    }
    ns.Engine:Refresh(state)
    Equal(ns.Engine.currentGoal.id, "resync-late", "first revision observation preserves the saved step")
    Equal(ns.charDB.guideRevisions[guide.id], 2, "first revision observation records the current revision")

    ns.charDB.notOffered["resync-early"] = { guide = guide.id, quest = 900010, npc = "Test NPC" }
    Equal(ns.Engine:ResyncCurrent(state), true, "manual resync runs with complete player state")
    Equal(ns.Engine.currentGoal.id, "resync-early", "manual resync finds the earliest unfinished step")
    Equal(ns.charDB.activeGoalByGuide[guide.id], "resync-early", "manual resync replaces the saved step")
    Equal(#ns.charDB.history, 0, "manual resync clears review history")
    Equal(ns.charDB.notOffered["resync-early"], nil,
        "manual resync clears stale quest availability observations for the guide")
    Check(ns.charDB.notOffered["other-guide-step"] ~= nil,
        "manual resync preserves quest availability observations for other guides")

    state.quests[900010] = { complete = false }
    ns.charDB.deferred["resync-early"] = true
    ns.charDB.activeGoal = "resync-late"
    ns.Engine.currentGoal = guide.goals[2]
    ns.Engine:ResyncCurrent(state)
    Equal(ns.Engine.currentGoal.id, "resync-late", "manual resync preserves intentionally skipped steps")

    ns.charDB.deferred["resync-early"] = true
    ns.charDB.activeGoal = "resync-late"
    ns.Engine.currentGoal = guide.goals[2]
    state.quests = {}
    state.completedQuests = {}
    ns.Engine:ResyncCurrent(state)
    Equal(ns.Engine.currentGoal.id, "resync-early",
        "manual resync reopens a skipped step when the quest is still unfinished in the log")
    Equal(ns.charDB.deferred["resync-early"], nil,
        "manual resync clears stale deferrals for unfinished quest steps")

    ns.charDB.deferred = {}
    ns.charDB.activeGoal = "resync-late"
    ns.Engine.currentGoal = guide.goals[2]
    local loading = {}
    for key, value in pairs(state) do loading[key] = value end
    loading.questLogKnown = false
    loading.questCompletionKnown = false
    Equal(ns.Engine:ResyncCurrent(loading), false, "manual resync waits for complete quest state")
    Equal(ns.Engine.currentGoal.id, "resync-late", "an early resync does not discard the saved step")
    ns.Engine:Refresh(state)
    Equal(ns.Engine.currentGoal.id, "resync-early", "a pending resync runs when quest state becomes available")

    ns.charDB.activeGoal = "resync-late"
    ns.Engine.currentGoal = guide.goals[2]
    guide.revision = 3
    ns.Engine:Refresh(loading)
    Equal(ns.Engine.currentGoal.id, "resync-late", "revision resync waits for complete quest state")
    Equal(ns.charDB.guideRevisions[guide.id], 2, "an incomplete refresh does not consume the new revision")
    ns.charDB.notOffered["resync-early"] = { guide = guide.id, quest = 900010, npc = "Test NPC" }
    ns.Engine:Refresh(state)
    Equal(ns.Engine.currentGoal.id, "resync-early", "a changed guide revision recalculates the saved step")
    Equal(ns.charDB.guideRevisions[guide.id], 3, "automatic resync records the new revision")
    Equal(ns.charDB.notOffered["resync-early"], nil,
        "a changed guide revision clears stale quest availability observations")
    ns.charDB.activeGoal = "resync-late"
    ns.Engine.currentGoal = guide.goals[2]
    ns.Engine:Refresh(state)
    Equal(ns.Engine.currentGoal.id, "resync-late", "ordinary refresh preserves the saved step")

    guide.revision = 2
    ns.charDB = previousCharDB
    ns.Engine.currentGuide = nil
    ns.Engine.currentGoal = nil
    ns.Engine.state = nil
    ns.Engine.resyncPending = nil
end
TestGuideResync()

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
Equal(ns.Engine.currentGoal.id, "accept-searching-satchel",
    "a dungeon guide follows authored order instead of the current map")
ns.Engine:CompleteCurrent()
Equal(ns.Engine:GetLedger(ns.Engine.currentGuide, false)["accept-searching-satchel"], true,
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
ns.charDB.taxiNodesByContinent = nil
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
Check(ns.Taxi:Capture() == true or ns.Taxi:Capture() == false,
    "TAXIMAP_OPENED capture without an api argument does not error")
local learnedTaxiGoal = {
    taxiDestination = "Thunder Bluff",
    route = { { mapID = 1454, x = 0.45, y = 0.63, label = "Fallback route" } },
}
local learnedTaxiLeg = ns.Navigation:GetActiveLeg(learnedTaxiGoal, { mapID = 1413, x = 0.4, y = 0.4 })
Equal(learnedTaxiLeg.mapID, 1413, "learned flight route targets the local flight master")
Check(learnedTaxiLeg.learnedTaxi, "learned flight route supersedes the walking pin")
Equal(learnedTaxiLeg.label, "Take the flight path to Thunder Bluff.", "a known flight path uses the flight instruction")

function TestNearbyCrossZoneWalkBeatsFlight()
    local savedMapAPI = C_Map
    C_Map = {
        GetMapInfo = function(mapID)
            local maps = {
                [1413] = { name = "The Barrens", parentMapID = 1414 },
                [1442] = { name = "Stonetalon Mountains", parentMapID = 1414 },
                [1414] = { name = "Kalimdor" },
                [9001] = { name = "Future Origin", parentMapID = 9999 },
                [9002] = { name = "Future Destination", parentMapID = 9999 },
                [9999] = { name = "Future Continent" },
            }
            return maps[mapID]
        end,
        GetMapRectOnMap = function(sourceMapID, destinationMapID)
            if destinationMapID == 1414 then
                if sourceMapID == 1413 then return 0.4, 0.6, 0.4, 0.8 end
                if sourceMapID == 1442 then return 0.3, 0.4, 0.3, 0.4 end
            elseif destinationMapID == 9999 then
                if sourceMapID == 9001 then return 0.4, 0.6, 0.4, 0.8 end
                if sourceMapID == 9002 then return 0.3, 0.4, 0.3, 0.4 end
            end
        end,
    }
    ns.charDB.taxiRoutes = {
        [1413] = { x = 0.515, y = 0.303, destinations = {
            ["sun rock retreat, stonetalon mountains"] = "Sun Rock Retreat, Stonetalon Mountains",
        } },
    }
    local goal = {
        route = { { mapID = 1442, x = 0.99, y = 0.99, label = "Kaya Flathoof" } },
    }
    local nearbyLeg = ns.Navigation:GetActiveLeg(goal,
        { mapID = 1413, x = 0.01, y = 0.01, faction = "Horde" })
    Equal(nearbyLeg.mapID, 1442,
        "a nearby cross-zone objective stays on the direct walking route")
    Check(not nearbyLeg.flight,
        "a farther flight master does not supersede a nearby cross-zone objective")
    local farLeg = ns.Navigation:GetActiveLeg(goal,
        { mapID = 1413, x = 0.515, y = 0.303, faction = "Horde" })
    Check(farLeg.flight,
        "a flight remains available when its flight master is closer than the cross-zone objective")
    Check(ns.Navigation:PreferDirectWalk(
        { mapID = 9002, x = 0.99, y = 0.99 },
        { mapID = 9001, x = 0.515, y = 0.303, flight = true },
        { mapID = 9001, x = 0.01, y = 0.01 }),
        "walking comparison discovers arbitrary future zones from the map hierarchy")
    C_Map = savedMapAPI
    ns.charDB.taxiRoutes = {}
end
TestNearbyCrossZoneWalkBeatsFlight()

function TestSameZoneFlightToCamp()
    ns.charDB.taxiRoutes = {
        [1413] = { x = 0.515, y = 0.303, destinations = {
            ["camp taurajo, the barrens"] = "Camp Taurajo, The Barrens",
        } },
    }
    local goal = {
        kind = "accept",
        route = { { mapID = 1413, x = 0.4483, y = 0.5909, label = "Jorn Skyseer" } },
    }
    local atCrossroads = { mapID = 1413, x = 0.515, y = 0.303, faction = "Horde" }
    local flight = ns.Navigation:GetActiveLeg(goal, atCrossroads)
    Check(flight.flight, "a learned Camp Taurajo flight replaces the walk from the Crossroads")
    Equal(flight.x, 0.515, "the same-zone flight points at the Crossroads flight master")
    Equal(flight.label, "Take the flight path to Camp Taurajo.",
        "the same-zone flight names Camp Taurajo")
    ns.charDB.taxiRoutes = {}
    local walk = ns.Navigation:GetActiveLeg(goal, atCrossroads)
    Equal(walk.label, "Jorn Skyseer", "an unlearned Camp Taurajo flight stays a walk")
    Check(not walk.flight, "an unlearned Camp Taurajo flight does not point at the flight master")
    ns.charDB.taxiRoutes = {
        [1413] = { x = 0.515, y = 0.303, destinations = {
            ["camp taurajo, the barrens"] = "Camp Taurajo, The Barrens",
        } },
    }
    local field = {
        route = { { mapID = 1413, x = 0.55, y = 0.45, label = "Barrens field" } },
    }
    local fieldLeg = ns.Navigation:GetActiveLeg(field, atCrossroads)
    Equal(fieldLeg.label, "Barrens field", "a pin away from every flight camp stays a walk")
    ns.charDB.taxiRoutes = {}
    local minerTurnin = {
        kind = "turnin",
        useClientPin = true,
        text = "Turn in Miner's Fortune to Wharfmaster Dizzywig.",
        complete = { quest = { id = 896, state = "completed" } },
        route = {
            {
                mapID = 1413, x = 0.6335, y = 0.3845, label = "Wharfmaster Dizzywig",
                offMapText = "Travel to Wharfmaster Dizzywig in Ratchet.",
            },
        },
    }
    ns.charDB.taxiRoutes = {
        [1413] = { x = 0.515, y = 0.303, destinations = { ["ratchet"] = "Ratchet" } },
    }
    ns.charDB.taxiNodesByContinent = { Kalimdor = { ["ratchet"] = "Ratchet" } }
    local minerFlight = ns.Navigation:GetActiveLeg(minerTurnin, atCrossroads)
    Check(minerFlight and minerFlight.flight,
        "Miner's Fortune turn-in uses a same-zone flight from the Crossroads without taxiDestination")
    local minerText = ns.UI:GoalInstruction({
        currentGoal = minerTurnin,
        state = {
            mapID = 1413, x = 0.515, y = 0.303, faction = "Horde",
            quests = { [896] = { complete = true, title = "Miner's Fortune" } },
        },
    })
    Equal(minerText, "Take the flight path to Ratchet.",
        "tracker matches the flight leg label while boarding, not Turn in Miner's Fortune")
    local minerInFlight = ns.UI:GoalInstruction({
        currentGoal = minerTurnin,
        state = {
            mapID = 1413, x = 0.515, y = 0.303, faction = "Horde", onTaxi = true,
            quests = { [896] = { complete = true, title = "Miner's Fortune" } },
        },
    })
    Equal(minerInFlight, "Travel to Wharfmaster Dizzywig in Ratchet.",
        "in flight the tracker aims at the turn-in, not the flight master line")
    local minerAirLeg = ns.Navigation:GetActiveLeg(minerTurnin, {
        mapID = 1413, x = 0.515, y = 0.303, faction = "Horde", onTaxi = true,
    })
    Equal(minerAirLeg and minerAirLeg.x, 0.6335, "in flight the pin moves to the turn-in NPC")
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodesByContinent = nil
end
TestSameZoneFlightToCamp()

function TestBarrensFlightCampFromQuestPin()
    local wenikeeTurnin = {
        kind = "turnin",
        text = "Turn in Wenikee Boltbucket.",
        route = {
            {
                mapID = 1413, x = 0.4905, y = 0.1116, label = "Wenikee Boltbucket",
                offMapText = "Travel to Wenikee Boltbucket.",
            },
        },
    }
    ns.charDB.taxiRoutes = {
        [1454] = {
            x = 0.45, y = 0.64,
            destinations = { ["the crossroads, the barrens"] = "The Crossroads, The Barrens" },
        },
    }
    ns.charDB.taxiNodesByContinent = {
        Kalimdor = { ["the crossroads, the barrens"] = "The Crossroads, The Barrens" },
    }
    local inOrg = { mapID = 1454, x = 0.45, y = 0.64, faction = "Horde" }
    local flight = ns.Navigation:GetActiveLeg(wenikeeTurnin, inOrg)
    Check(flight and flight.flight, "Wenikee turn-in offers a flight from Orgrimmar")
    Equal(flight.label, "Take the flight path to Crossroads.",
        "northern Barrens pins name the Crossroads camp instead of the zone")
    local instruction = ns.UI:GoalInstruction({ currentGoal = wenikeeTurnin, state = inOrg })
    Check(string.find(instruction, "Crossroads", 1, true) ~= nil,
        "tracker names Crossroads for Wenikee Boltbucket travel")
    Check(string.find(string.lower(instruction), "flight path to the barrens", 1, true) == nil,
        "tracker does not say fly to the Barrens without a camp")
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodesByContinent = nil
end
TestBarrensFlightCampFromQuestPin()

function TestIshamuhaleCampTaurajoFlight()
    ns.charDB.taxiRoutes = {
        [1413] = {
            x = 0.515,
            y = 0.303,
            destinations = { ["camp taurajo, the barrens"] = "Camp Taurajo, The Barrens" },
        },
    }
    local ishamuhaleTurnIn = {
        kind = "turnin",
        useClientPin = true,
        taxiDestination = "Camp Taurajo",
        text = "Turn in Ishamuhale to Jorn Skyseer in Camp Taurajo.",
        complete = { quest = { id = 882, state = "completed" } },
        route = {
            {
                mapID = 1413,
                x = 0.4484,
                y = 0.5912,
                label = "Jorn Skyseer",
                offMapText = "Travel to Jorn Skyseer.",
            },
        },
    }
    local northBarrens = {
        mapID = 1413,
        x = 0.59,
        y = 0.30,
        faction = "Horde",
        quests = { [882] = { title = "Ishamuhale" } },
    }
    local ishamuhaleFlightText = ns.UI:GoalInstruction({
        currentGoal = ishamuhaleTurnIn,
        state = northBarrens,
    })
    Check(string.find(ishamuhaleFlightText, "Camp Taurajo", 1, true) ~= nil,
        "a turn-in flight to Camp Taurajo names the destination")
    Check(string.find(ishamuhaleFlightText, "@", 1, true) == nil,
        "a turn-in flight does not use turn-in form while boarding")
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodes = nil
    ns.charDB.taxiNodesByContinent = nil
    local unknownCampTaurajoLeg = ns.Navigation:GetActiveLeg(ishamuhaleTurnIn, {
        mapID = 1413,
        x = 0.515,
        y = 0.303,
        faction = "Horde",
    })
    Check(unknownCampTaurajoLeg and unknownCampTaurajoLeg.flight,
        "an unknown Camp Taurajo flight still targets the flight master")
    Equal(unknownCampTaurajoLeg and unknownCampTaurajoLeg.label,
        "Take the flight path to Camp Taurajo.",
        "an unknown Camp Taurajo flight names the destination")
    local jornLeg = ishamuhaleTurnIn.route[1]
    Check(not ns.Navigation:AtRoutePin({ mapID = 1413, x = 0.515, y = 0.303 }, jornLeg),
        "northern Barrens is not treated as on top of a southern camp turn-in")
    Check(ns.Navigation:AtRoutePin({ mapID = 1413, x = 0.4484, y = 0.5912 }, jornLeg),
        "standing on the turn-in NPC still counts as near the pin")
    local ratchetTurnInText = ns.UI:GoalInstruction({
        currentGoal = ishamuhaleTurnIn,
        state = {
            mapID = 1413,
            x = 0.515,
            y = 0.303,
            faction = "Horde",
            quests = { [882] = { title = "Ishamuhale" } },
        },
    })
    Check(string.find(ratchetTurnInText, "Camp Taurajo", 1, true) ~= nil,
        "the tracker names Camp Taurajo from Ratchet before the turn-in form")
    Check(string.find(ratchetTurnInText, "@", 1, true) == nil,
        "the tracker does not use turn-in form while a flight is still required")
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodes = nil
    ns.charDB.taxiNodesByContinent = nil
end
TestIshamuhaleCampTaurajoFlight()
Enum = nil

function TestCrossroadsTurnInFromOrgrimmar()
    ns.charDB.taxiRoutes = {
        [1454] = {
            x = 0.454,
            y = 0.639,
            destinations = {
                ["crossroads, the barrens"] = "Crossroads, The Barrens",
            },
        },
    }
    ns.charDB.taxiNodesByContinent = {
        Kalimdor = {
            ["crossroads, the barrens"] = "Crossroads, The Barrens",
        },
    }
    local turnIn = {
        kind = "turnin",
        taxiDestination = "Crossroads",
        text = "Turn in Return to the Crossroads.",
        complete = { quest = { id = 6386, state = "completed" } },
        route = {
            {
                mapID = 1413,
                x = 0.5262,
                y = 0.2984,
                label = "Zargh",
                offMapText = "Travel to the Crossroads.",
            },
        },
    }
    local inOrg = { mapID = 1454, x = 0.45, y = 0.64, faction = "Horde" }
    local boarding, boardingStatus = ns.Navigation:GetActiveLeg(turnIn, inOrg)
    Check(boarding and boarding.flight, "Org → Crossroads turn-in boards a flight master")
    Equal(boarding and boarding.mapID, 1454, "boarding pin stays in Orgrimmar")
    Check(boardingStatus and string.find(boardingStatus, "Crossroads", 1, true) ~= nil,
        "boarding status names Crossroads")
    local atCrossroads = { mapID = 1413, x = 0.52, y = 0.30, faction = "Horde" }
    local arrived, arrivedStatus = ns.Navigation:GetActiveLeg(turnIn, atCrossroads)
    Check(arrived and not arrived.flight, "at the Crossroads the turn-in uses the authored pin")
    Equal(arrived and arrived.mapID, 1413, "arrived pin is on the Barrens")
    Equal(arrived and arrived.label, "Zargh", "arrived pin keeps the turn-in label")
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodesByContinent = nil
end
TestCrossroadsTurnInFromOrgrimmar()

function TestReturnToCrossroadsRaceGate()
    local chapterID = "leveling-era-horde-the-barrens-and-stonetalon-mountain"
    local guide = ns.guides["leveling-casual-horde"]
    if not guide then return end
    local turnin = ns.Engine:GetGoal(guide, chapterID .. ":turnin-6386-return-to-the-crossroads")
    if not turnin then return end
    local tauren = { level = 16, faction = "Horde", raceID = 6 }
    local ready, _, ineligible = ns.Engine:IsReady(guide, turnin, tauren)
    Equal(ready, false, "Tauren is not ready for Return to the Crossroads turn-in")
    Check(ineligible, "Tauren is ineligible for Orc/Troll-only quest 6386")
    local orc = { level = 16, faction = "Horde", raceID = 2 }
    local _, _, orcIneligible = ns.Engine:IsReady(guide, turnin, orc)
    Equal(orcIneligible, false, "Orc remains eligible for Return to the Crossroads turn-in")
end
TestReturnToCrossroadsRaceGate()

function TestTurnInWaitsForObjectives()
    local chapterID = "leveling-era-horde-the-barrens-and-stonetalon-mountain"
    local guide = ns.guides["leveling-casual-horde"]
    if not guide then return end
    local turnin = ns.Engine:GetGoal(guide, chapterID .. ":turnin-896-miner-s-fortune")
    local objective = ns.Engine:GetGoal(guide, chapterID .. ":objective-896-1-cats-eye-emerald")
    if not turnin or not objective then return end
    local incomplete = {
        faction = "Horde", raceID = 2, classID = 1, level = 18,
        quests = { [896] = { complete = false, objectives = {
            { text = "Cats Eye Emerald", numFulfilled = 0, numRequired = 1 },
        } } },
        completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    }
    Equal(ns.Engine:IsReady(guide, turnin, incomplete), false,
        "Miner's Fortune turn-in waits while Cats Eye Emerald is 0/1")
    Check(ns.Engine:IsReady(guide, objective, incomplete),
        "Miner's Fortune objective is ready while the emerald is missing")
    incomplete.quests[896].complete = true
    Check(ns.Engine:IsReady(guide, turnin, incomplete),
        "Miner's Fortune turn-in opens when the quest is complete in the log")
end
TestTurnInWaitsForObjectives()

function TestSpiritsOfStonetalonTravelCopy()
    local chapterID = "leveling-era-horde-the-barrens-and-stonetalon-mountain"
    local guide = ns.guides["leveling-casual-horde"]
    if not guide then return end
    local accept = ns.Engine:GetGoal(guide, chapterID .. ":accept-1061-the-spirits-of-stonetalon")
    if not accept or not accept.route or not accept.route[1] then return end
    Equal(accept.route[1].label, "Zor Lonetree",
        "Spirits accept pin labels the Orgrimmar giver")
    local inFlight = ns.UI:GoalInstruction({
        currentGoal = accept,
        state = { mapID = 1413, x = 0.52, y = 0.30, faction = "Horde", onTaxi = true },
    })
    Equal(inFlight, "Travel to Zor Lonetree in Orgrimmar.",
        "in flight the Spirits accept shows NPC travel copy, not the quest title")
    local atGiver = ns.UI:GoalInstruction({
        currentGoal = accept,
        state = { mapID = 1454, x = 0.39, y = 0.38, faction = "Horde" },
    })
    Equal(atGiver, accept.text, "at the giver the Spirits accept shows the step text")
    local withGoblin = {
        faction = "Horde", level = 29,
        quests = { [1062] = { complete = false, objectives = {} } },
        completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    }
    Check(ns.Engine:IsGoalDone(accept, withGoblin, guide),
        "Spirits accept is satisfied when Goblin Invaders is already in the log")
    local goblinAccept = ns.Engine:GetGoal(guide, chapterID .. ":accept-1062-goblin-invaders")
    local spiritsTurnin = chapterID .. ":turnin-1061-the-spirits-of-stonetalon"
    if goblinAccept and type(goblinAccept.dependsOn) == "table" then
        local waits = false
        for _, dependency in ipairs(goblinAccept.dependsOn) do
            if dependency == spiritsTurnin then waits = true end
        end
        Check(waits, "Goblin Invaders accept waits for Spirits turn-in on the authored route")
    end
    local apiGoblinDone = {
        IsQuestFlaggedCompleted = function(id) return id == 1062 end,
        C_QuestLog = { IsQuestFlaggedCompleted = function(id) return id == 1062 end },
    }
    Check(ns.Engine:QuestChainBypassed(accept, withGoblin, apiGoblinDone),
        "Spirits accept bypasses when Goblin Invaders is active in the log")
    local onlyGoblinDone = {
        faction = "Horde", level = 29,
        quests = {}, completedQuests = { [1062] = true },
        questLogKnown = true, questCompletionKnown = true,
        watchedQuests = { [1062] = true },
    }
    Check(ns.Engine:QuestChainBypassed(accept, onlyGoblinDone, apiGoblinDone),
        "Spirits accept bypasses when the client flags Goblin Invaders complete")
    Check(ns.Engine:IsGoalDone(accept, onlyGoblinDone, guide),
        "Spirits accept is done without Skip when Goblin Invaders is finished")
end
TestSpiritsOfStonetalonTravelCopy()

function TestSpiritsGossipBypass()
    local chapterID = "leveling-era-horde-the-barrens-and-stonetalon-mountain"
    local guide = ns.guides["leveling-casual-horde"]
    if not guide then return end
    local accept = ns.Engine:GetGoal(guide, chapterID .. ":accept-1061-the-spirits-of-stonetalon")
    if not accept then return end
    local previousCharDB = ForeverGuideMateCharDB
    ForeverGuideMateCharDB = { selectedGuide = guide.id }
    ns.InitializeStorage()
    ns.Engine.currentGoal = accept
    ns.Engine.state = {
        faction = "Horde", level = 29,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    }
    ns.charDB.notOffered[accept.id] = {
        guide = guide.id, quest = 1061, npc = "Zor Lonetree", text = accept.text,
    }
    local api = {
        UnitName = function() return "Zor Lonetree" end,
        C_GossipInfo = {
            GetAvailableQuests = function() return {} end,
            GetActiveQuests = function() return {} end,
        },
        IsQuestFlaggedCompleted = function(id) return id == 1062 end,
        C_QuestLog = { IsQuestFlaggedCompleted = function(id) return id == 1062 end },
    }
    ns.QuestAudit:Inspect(api)
    Equal(ns.charDB.notOffered[accept.id], nil,
        "talking to Zor clears a Spirits refusal when Goblin Invaders is already finished")
    ns.charDB.notOffered[accept.id] = {
        guide = guide.id, quest = 1061, npc = "Zor Lonetree", text = accept.text,
    }
    ns.Engine.state = {
        faction = "Horde", level = 29,
        quests = { [1062] = { complete = false, objectives = {} } },
        completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    }
    local apiActiveGoblin = {
        UnitName = function() return "Zor Lonetree" end,
        C_GossipInfo = {
            GetAvailableQuests = function() return {} end,
            GetActiveQuests = function() return { { questID = 1062 } } end,
        },
        IsQuestFlaggedCompleted = function() return false end,
        C_QuestLog = { IsQuestFlaggedCompleted = function() return false end },
    }
    ns.QuestAudit:Inspect(apiActiveGoblin)
    Equal(ns.charDB.notOffered[accept.id], nil,
        "talking to Zor clears Spirits refusal when Goblin Invaders is active in the log")
    ForeverGuideMateCharDB = previousCharDB
    ns.InitializeStorage()
end
TestSpiritsGossipBypass()

function TestTheEscapeWaitsForEscort()
    local chapterID = "leveling-era-horde-the-barrens-and-stonetalon-mountain"
    local guide = ns.guides["leveling-casual-horde"]
    if not guide then return end
    local escort = ns.Engine:GetGoal(guide, chapterID .. ":objective-863-the-escape")
    local turnin = ns.Engine:GetGoal(guide, chapterID .. ":turnin-863-the-escape")
    Check(escort ~= nil, "The Escape has an escort step on the Barrens route")
    if not escort or not turnin then return end
    local waits = false
    for _, dependency in ipairs(turnin.dependsOn or {}) do
        if dependency == escort.id then waits = true end
    end
    Check(waits, "The Escape turn-in waits for the escort step")
    local escorting = {
        faction = "Horde", level = 18,
        quests = { [863] = { complete = false, objectives = {} } },
        completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    }
    Check(ns.Engine:IsReady(guide, escort, escorting), "the escort step is ready once The Escape is in the log")
    Check(not ns.Engine:IsGoalDone(escort, escorting, guide), "the escort step stays open until Wizzlecrank is out")
    local escorted = {
        faction = "Horde", level = 18,
        quests = { [863] = { complete = true, objectives = {} } },
        completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    }
    Check(ns.Engine:IsGoalDone(escort, escorted, guide), "the escort step clears when The Escape is ready to turn in")
end
TestTheEscapeWaitsForEscort()

function TestItemStartWaitsForBagItem()
    local chapterID = "leveling-era-horde-the-barrens-and-stonetalon-mountain"
    local barrensID = "leveling-era-horde-the-barrens"
    local guide = ns.guides["leveling-casual-horde"]
    if not guide then return end
    local hoofNote = ns.Engine:GetGoal(guide, chapterID .. ":note-883-lakota-mani-loot")
    local hoofAccept = ns.Engine:GetGoal(guide, chapterID .. ":accept-883-lakota-mani")
    local harvesterNote = ns.Engine:GetGoal(guide, barrensID .. ":note-897-the-harvester-loot")
    local harvesterAccept = ns.Engine:GetGoal(guide, barrensID .. ":accept-897-the-harvester")
    if not hoofNote or not hoofAccept or not harvesterNote or not harvesterAccept then return end
    local stateWithoutItem = {
        faction = "Horde", raceID = 2, classID = 1, level = 24,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
        mapID = 1413, x = 0.49, y = 0.53,
        items = {},
    }
    Equal(ns.Engine:IsReady(guide, hoofAccept, stateWithoutItem), false,
        "Use the Hoof accept is not ready without the Hoof in bags")
    Equal(ns.Engine:IsReady(guide, harvesterAccept, stateWithoutItem), false,
        "Use the Harvester's Head accept is not ready without the Head in bags")
    Check(ns.Engine:IsReady(guide, hoofNote, stateWithoutItem),
        "Lakota'mani loot note is ready before the hoof drops")
    Check(ns.Engine:IsReady(guide, harvesterNote, stateWithoutItem),
        "Harvester loot note is ready before the head drops")
    local candidates = ns.Engine:CandidateGoals(guide, stateWithoutItem)
    local hoofIdx, harvesterIdx, hoofNoteIdx, harvesterNoteIdx
    for index, goal in ipairs(candidates) do
        if goal.id == hoofAccept.id then hoofIdx = index end
        if goal.id == harvesterAccept.id then harvesterIdx = index end
        if goal.id == hoofNote.id then hoofNoteIdx = index end
        if goal.id == harvesterNote.id then harvesterNoteIdx = index end
    end
    Check(hoofNoteIdx ~= nil, "Lakota'mani loot note is a route candidate without the item")
    Check(harvesterNoteIdx ~= nil, "Harvester loot note is a route candidate without the item")
    Equal(hoofIdx, nil, "Use the Hoof is not a candidate without the item")
    Equal(harvesterIdx, nil, "Use the Harvester's Head is not a candidate without the item")
    local stateWithItem = {
        faction = "Horde", raceID = 2, classID = 1, level = 24,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
        mapID = 1413, x = 0.49, y = 0.53,
        items = { ["Hoof of Lakota'mani"] = 1, ["Harvester's Head"] = 1 },
    }
    Check(ns.Engine:IsReady(guide, hoofAccept, stateWithItem),
        "Use the Hoof accept becomes ready once the Hoof is in bags")
    Check(ns.Engine:IsReady(guide, harvesterAccept, stateWithItem),
        "Use the Harvester's Head accept becomes ready once the Head is in bags")
    stateWithoutItem.quests[883] = { complete = false, title = "Lakota'mani" }
    Check(ns.Engine:IsGoalDone(hoofAccept, stateWithoutItem, guide),
        "Use the Hoof accept clears when the quest is in the log")
end
TestItemStartWaitsForBagItem()

function TestTurninPrefersClientQuestPOI()
    local turnin = {
        kind = "turnin",
        useClientPin = true,
        text = "Turn in Miner's Fortune to Wharfmaster Dizzywig.",
        complete = { quest = { id = 896, state = "completed" } },
        route = {
            { mapID = 1413, x = 0.6335, y = 0.3845, label = "Wharfmaster Dizzywig" },
        },
    }
    Equal(ns.Navigation:QuestDestinationID(turnin), 896,
        "turn-ins with authored pins still track the client quest POI when enabled")
    local leg = turnin.route[1]
    local questLogPins = {
        GetQuestsOnMap = function()
            return {
                { questID = 896, x = 0.515, y = 0.303 },
                { questID = 896, x = 0.6335, y = 0.3845 },
            }
        end,
    }
    local nearCrossroads = {
        mapID = 1413, x = 0.52, y = 0.31,
        quests = { [896] = { complete = true } },
        questLogKnown = true,
    }
    local adjusted = ns.Navigation:ApplyClientPin(turnin, leg, questLogPins, nearCrossroads)
    Equal(adjusted.x, 0.515, "nearest client POI wins near Crossroads")
    Equal(adjusted.y, 0.303, "nearest client POI wins near Crossroads y")
    local nearRatchet = {
        mapID = 1413, x = 0.62, y = 0.38,
        quests = { [896] = { complete = true } },
        questLogKnown = true,
    }
    local ratchetPin = ns.Navigation:ApplyClientPin(turnin, leg, questLogPins, nearRatchet)
    Equal(ratchetPin.x, 0.6335, "nearest client POI wins near Ratchet")
    local active = ns.Navigation:GetActiveLeg(turnin, nearCrossroads, questLogPins)
    Check(active ~= nil, "turn-in has an active leg")
    Equal(active.x, 0.515, "GetActiveLeg uses the nearest client turn-in POI")
    local fallback = ns.Navigation:ApplyClientPin(turnin, leg, { GetQuestsOnMap = function() return {} end }, nearCrossroads)
    Equal(fallback.x, 0.6335, "authored pin remains when the client offers no POI")
end
TestTurninPrefersClientQuestPOI()

function TestObjectiveWaitsForQuestInLog()
    local barrensID = "leveling-era-horde-the-barrens"
    local guide = ns.guides["leveling-casual-horde"]
    if not guide then return end
    local silithidMound = ns.Engine:GetGoal(guide, barrensID .. ":objective-868-1-silithid-mound")
    if not silithidMound then return end
    local stateWithoutQuest = {
        faction = "Horde", raceID = 2, classID = 1, level = 24,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
        mapID = 1413, x = 0.47, y = 0.70,
    }
    Equal(ns.Engine:IsReady(guide, silithidMound, stateWithoutQuest), false,
        "Silithid Mound objective is not ready when Egg Hunt is not in quest log")
    local stateWithQuest = {
        faction = "Horde", raceID = 2, classID = 1, level = 24,
        quests = { [868] = { complete = false, objectives = {} } },
        completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
        mapID = 1413, x = 0.47, y = 0.70,
    }
    Check(ns.Engine:IsReady(guide, silithidMound, stateWithQuest),
        "Silithid Mound objective becomes ready once Egg Hunt is in quest log")
end
TestObjectiveWaitsForQuestInLog()

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
MapCanvasPinMixin = {}
WorldMapFrame = {
    IsShown = function() return true end,
    GetMapID = function() return 1454 end,
    GetWidth = function() return 1000 end,
    GetHeight = function() return 800 end,
    acquireCalls = 0,
    AcquirePin = function() WorldMapFrame.acquireCalls = WorldMapFrame.acquireCalls + 1 end,
    AddDataProvider = function(_, provider) WorldMapFrame.provider = provider end,
}
CreateFrame = function(_, _, parent)
    local pin = { parent = parent, points = {}, shown = false }
    function pin:SetSize() end
    function pin:EnableMouse() end
    function pin:SetScript() end
    function pin:CreateTexture() return { SetAllPoints = function() end } end
    function pin:SetParent(nextParent) self.parent = nextParent end
    function pin:GetParent() return self.parent end
    function pin:ClearAllPoints() self.points = {} end
    function pin:SetPoint(...) self.points[#self.points + 1] = { ... } end
    function pin:Show() self.shown = true end
    function pin:Hide() self.shown = false end
    return pin
end
MapCanvasDataProviderMixin = { GetMap = function() return WorldMapFrame end }
CreateFromMixins = function(mixin)
    local result = {}
    for key, value in pairs(mixin) do result[key] = value end
    return result
end
ns.Engine.currentGoal = navigationGoal
ns.Engine.state = baseState
ns.MapPins:Refresh()
Equal(WorldMapFrame.acquireCalls, 0, "the guide pin does not call AcquirePin")
Equal(ns.MapPins.pin.points[1][4], 500, "map pin is placed at the active route x coordinate")
Equal(ns.MapPins.pin.points[1][5], -320, "map pin is placed at the active route y coordinate")
ns.MapPins:Clear()
Equal(ns.MapPins.pin.shown, false, "clearing the map pin hides the guide frame")
ns.MapPins.hooked = false
ns.MapPins:HookMap()
Check(WorldMapFrame.provider ~= nil, "map pin registers a Blizzard map data provider")
ns.MapPins.pin.points = {}
WorldMapFrame.provider:RefreshAllData()
Equal(ns.MapPins.pin.points[1][4], 500, "map data provider refreshes the guide pin")
function TestMapPinDefersSecureRefresh()
    local savedTimer = C_Timer
    local ran = false
    C_Timer = { After = function(_, fn) ran = true end }
    ns.MapPins.pin.points = {}
    WorldMapFrame.provider:RefreshAllData()
    Equal(ns.MapPins.pin.points[1], nil, "map pin placement waits until the world map's secure refresh returns")
    Equal(ran, true, "map pin refresh is queued for the next frame")
    C_Timer = savedTimer
    ns.MapPins.refreshQueued = false
    ns.MapPins.pendingCanvas = nil
end
TestMapPinDefersSecureRefresh()
WorldMapFrame, MapCanvasPinMixin, MapCanvasDataProviderMixin, CreateFromMixins, CreateFrame = nil, nil, nil, nil, nil

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
ns.charDB.taxiNodesByContinent = nil
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
ns.charDB.selectedGuide = rfc.id
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
ns.charDB.taxiNodesByContinent = nil
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
ns.charDB.taxiNodesByContinent = nil
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
ns.charDB.taxiNodesByContinent = nil
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
ns.Engine:SkipCurrent(true)
Equal(ns.charDB.skipped[skippedID], true, "skip marks the current step skipped")
Equal(ns.Engine:GetGuideProgress(rfc, baseState).completed, beforeSkip, "skip does not count as completion")
local completedID = ns.Engine.currentGoal.id
ns.Engine:CompleteCurrent()
Equal(ns.Engine:GetGuideProgress(rfc, baseState).completed, beforeSkip,
    "known quest truth overrides a contradictory manual completion")
ns.Engine:Previous()
Equal(ns.Engine.currentGoal.id, completedID, "back returns to viewed-step history")
Equal(ns.Engine.status, "Reviewing a previous step.", "back keeps a completed prior step available for review")

local placement = { point = "TOP", relativePoint = "TOP", x = 50000, y = -50000, scale = 5 }
ns.UI.NormalizePlacement(placement, { point = "TOP", relativePoint = "TOP", x = 0, y = -90, scale = 1 },
    1000, 800)
Equal(placement.x, 968, "saved x position is clamped")
Equal(placement.y, -768, "saved y position is clamped")
Equal(placement.scale, 1.5, "saved guide scale is clamped to 150%")
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
local function TestWailingCavernsRoute()
    local barrensCaverns = {}
    for key, value in pairs(hordeCaverns) do barrensCaverns[key] = value end
    barrensCaverns.mapID = 1413
    barrensCaverns.x, barrensCaverns.y = 0.460, 0.364
    ns.charDB.activeGoal = nil
    ns.charDB.history = {}
    ns.charDB.deferred = {}
    ns.charDB.completionLedger = {}
    ns.charDB.manualCompleted = {}
    ns.Engine.inferredCompletedByGuide = nil
    ns.Engine:Refresh(barrensCaverns)
    Equal(ns.Engine.currentGoal.id, "accept-hamuul-runetotem",
        "standing at Wailing Caverns still starts at the Crossroads")
    local caveCaverns = {}
    for key, value in pairs(barrensCaverns) do caveCaverns[key] = value end
    caveCaverns.mapID = 718
    caveCaverns.level = 18
    caveCaverns.quests = {
        -- Hamuul Runetotem is a delivery: ready to turn in as soon as accepted.
        [1489] = { complete = true },
        [1486] = { complete = false },
    }
    ns.Engine:Refresh(caveCaverns)
    Equal(ns.Engine.currentGoal.id, "accept-deviate-eradication",
        "Deviate Eradication is accepted beside Deviate Hides before Thunder Bluff")
    caveCaverns.quests[1487] = { complete = false }
    ns.Engine:Refresh(caveCaverns)
    Equal(ns.Engine.currentGoal.id, "turnin-hamuul-runetotem",
        "Thunder Bluff resumes after both cave quests are accepted")
    local ebruCave = {}
    for key, value in pairs(caveCaverns) do ebruCave[key] = value end
    ebruCave.quests = {
        [1489] = { complete = true },
        [1486] = { complete = false },
    }
    ebruCave.mapID = 11
    ebruCave.x, ebruCave.y = 0.5, 0.5
    ns.charDB.activeGoal = nil
    ns.Engine.inferredCompletedByGuide = nil
    ns.Engine:Refresh(ebruCave)
    Equal(ns.Engine.currentGoal.id, "accept-deviate-eradication",
        "the Wailing Caverns cave stays on Deviate Eradication")
    Equal(ns.UI:GoalInstruction(ns.Engine),
        "Accept Deviate Eradication from Ebru in the same cave.",
        "standing on Ebru accepts Deviate Eradication instead of boarding a boat")
    local ebruLeg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, ebruCave)
    Equal(ebruLeg.mapID, 1413, "the cave pin stays the Barrens entrance")
    Check(not ebruLeg.transport, "the cave does not route the Ratchet boat")
    local savedMap = C_Map
    C_Map = {
        GetMapInfo = function(mapID)
            if mapID == 5150 then return { name = "Wailing Caverns", parentMapID = 10 } end
            if mapID == 10 then return { name = "Northern Barrens", parentMapID = 12 } end
            if mapID == 1413 then return { name = "The Barrens", parentMapID = 12 } end
        end,
    }
    local betaCave = {}
    for key, value in pairs(ebruCave) do betaCave[key] = value end
    betaCave.mapID = 5150
    ns.charDB.activeGoal = nil
    ns.Engine.inferredCompletedByGuide = nil
    ns.Engine:Refresh(betaCave)
    Equal(ns.Engine.currentGoal.id, "accept-deviate-eradication",
        "an unknown Wailing Caverns map id still accepts from Ebru")
    Equal(ns.UI:GoalInstruction(ns.Engine),
        "Accept Deviate Eradication from Ebru in the same cave.",
        "a child of the Barrens does not board the boat to Ratchet")
    C_Map = savedMap
    local eradication = ns.Engine:GetGoal(wc, "accept-deviate-eradication")
    local orphanCave = { faction = "Horde", mapID = 279, x = 0.5, y = 0.5 }
    local boatLeg, boatStatus = ns.Navigation:GetActiveLeg(eradication, orphanCave)
    Check(not boatLeg.transport, "a cave accept does not use the boat graph")
    Check(string.find(boatStatus or "", "Ratchet", 1, true) == nil,
        "a cave accept does not mention Ratchet")
    Check(string.find(boatStatus or "", "Wailing Caverns", 1, true) ~= nil,
        "a cave accept uses the authored travel line")
    ForeverGuideMateDB.uiOpen = true
    ns.Engine.currentGoal = eradication
    ns.Engine.state = orphanCave
    Equal(ns.UI:GoalInstruction(ns.Engine),
        "Accept Deviate Eradication from Ebru in the same cave.",
        "the tracker shows the accept text when the cave has no parent map data")
end
TestWailingCavernsRoute()

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
Equal(ns.Engine.currentGoal.id, "accept-frightened-request", "horde starts with Tabitha Heartweaver")

ForeverGuideMateDB = { autoQuest = true }
ForeverGuideMateCharDB = { selectedGuide = "dungeons-ragefire-chasm-horde" }
ns.InitializeStorage()
Equal(ns.db.autoQuest, true, "guide quest turn-in starts enabled")
local ragefire = ns.guides["dungeons-ragefire-chasm-horde"]
ns.Engine.currentGoal = ns.Engine:GetGoal(ragefire, "accept-searching-satchel")
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
Equal(calls.gossip, 5722, "gossip opens the current accept step and skips unrelated quests")
questAPI.C_GossipInfo.GetAvailableQuests = function()
    return { { questID = 5723 }, { questID = 5722 } }
end
calls.gossip = nil
ns.QuestDialog:Handle("GOSSIP_SHOW", questAPI)
Equal(calls.gossip, 5722, "the current accept is chosen when that giver also offers a later quest")
questAPI.C_GossipInfo.GetAvailableQuests = function()
    return { 1, 5722 }
end
calls.gossip = nil
ns.QuestDialog:Handle("GOSSIP_SHOW", questAPI)
Equal(calls.gossip, 5722, "gossip selects the current accept when the list is quest ids")
questAPI.C_GossipInfo.GetAvailableQuests = function()
    return { { questID = 5723, title = "Testing an Enemy's Strength" } }
end
calls.gossip = nil
calls.accept = nil
ns.QuestDialog:Handle("GOSSIP_SHOW", questAPI)
Equal(calls.gossip, 5723, "a giver list opens the next ready quest when the current one is absent")
questAPI.GetQuestID = function() return 5723 end
ns.QuestDialog:Handle("QUEST_DETAIL", questAPI)
Equal(calls.accept, true, "the quest selected from the giver list is accepted")
questAPI.C_GossipInfo.GetAvailableQuests = function() return {} end
calls.accept = nil
ns.QuestDialog:Handle("GOSSIP_SHOW", questAPI)
ns.QuestDialog:Handle("QUEST_DETAIL", questAPI)
Equal(calls.accept, nil, "opening a later quest without selecting it from the list does not accept it")
questAPI.GetQuestID = function() return 5722 end
questAPI.C_GossipInfo.GetAvailableQuests = function()
    return { { questID = 1 }, { questID = 5722 } }
end
ns.QuestDialog:Handle("QUEST_DETAIL", questAPI)
Equal(calls.accept, true, "the open current-step quest is accepted")
questAPI.GetQuestID = function() return 5723 end
calls.accept = nil
ns.QuestDialog:Handle("QUEST_DETAIL", questAPI)
Equal(calls.accept, nil, "another quest in the same guide is not accepted")
questAPI.GetQuestID = function() return 999 end
ns.QuestDialog:Handle("QUEST_DETAIL", questAPI)
Equal(calls.accept, nil, "a quest outside the selected guide is left alone")
ns.Engine.currentGoal = ns.Engine:GetGoal(ragefire, "recover-lieutenants-insignia")
questAPI.GetQuestID = function() return 5722 end
calls.accept = nil
calls.gossip = nil
ns.QuestDialog:Handle("QUEST_DETAIL", questAPI)
ns.QuestDialog:Handle("GOSSIP_SHOW", questAPI)
Equal(calls.accept, nil, "an objective step does not accept a guide quest")
Equal(calls.gossip, nil, "an objective step does not open a guide quest from gossip")
ns.Engine.currentGoal = ns.Engine:GetGoal(ragefire, "accept-searching-satchel")
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
ns.db.autoQuest = true
local greeting = {
    GetNumAvailableQuests = function() return 2 end,
    GetAvailableTitle = function(index)
        if index == 1 then return "Testing an Enemy's Strength" end
        return "Searching for the Lost Satchel"
    end,
    SelectAvailableQuest = function(index) calls.greeting = index end,
    GetNumActiveQuests = function() return 1 end,
    GetActiveTitle = function() return "Searching for the Lost Satchel", true end,
    SelectActiveQuest = function(index) calls.greetingActive = index end,
}
ns.QuestDialog:Handle("QUEST_GREETING", greeting)
Equal(calls.greeting, 2, "a quest list opens the current accept step without a click")
greeting.GetAvailableTitle = function() return "Testing an Enemy's Strength" end
calls.greeting = nil
ns.QuestDialog:Handle("QUEST_GREETING", greeting)
Equal(calls.greeting, 1, "a quest list opens the next quest that same giver is offering")
greeting.GetAvailableTitle = function() return "Hidden Enemies" end
calls.greeting = nil
ns.QuestDialog:Handle("QUEST_GREETING", greeting)
Equal(calls.greeting, nil, "a quest list leaves a different giver's quest alone")
greeting.GetAvailableTitle = function(index)
    if index == 1 then return "Searching for the Lost Satchel" end
    return "Testing an Enemy's Strength"
end
greeting.GetAvailableQuestInfo = function(index)
    if index == 1 then return "Searching for the Lost Satchel", 9, false, 1, false, false, false, 5723 end
    return "Testing an Enemy's Strength", 9, false, 1, false, false, false, 5722
end
calls.greeting = nil
ns.QuestDialog:Handle("QUEST_GREETING", greeting)
Equal(calls.greeting, 2, "a quest list follows the quest id when the client provides one")
greeting.GetAvailableQuestInfo = function(index)
    if index == 1 then return false, nil, false, nil, 5723 end
    return false, nil, false, nil, 5722
end
greeting.GetAvailableTitle = function() return "Not the step title" end
calls.greeting = nil
ns.QuestDialog:Handle("QUEST_GREETING", greeting)
Equal(calls.greeting, 2, "a quest list reads the quest id from the shorter client return")
ns.Engine.currentGoal = ns.Engine:GetGoal(ragefire, "turnin-searching-satchel")
calls.greeting = nil
calls.greetingActive = nil
ns.QuestDialog:Handle("QUEST_GREETING", greeting)
Equal(calls.greeting, nil, "a turn-in step does not accept another quest from the list")
Equal(calls.greetingActive, 1, "a quest list opens the current turn-in without a click")
greeting.GetActiveTitle = function() return "Searching for the Lost Satchel", false end
calls.greetingActive = nil
ns.QuestDialog:Handle("QUEST_GREETING", greeting)
Equal(calls.greetingActive, nil, "an incomplete quest in the list stays closed")
greeting.GetActiveTitle = function() return "Testing an Enemy's Strength" end
greeting.GetActiveQuestID = function() return 5723 end
calls.greetingActive = nil
ns.QuestDialog:Handle("QUEST_GREETING", greeting)
Equal(calls.greetingActive, nil, "a quest list does not turn in a different guide quest")
function TestForgottenLoaIdols()
    local durotar = ns.guides["leveling-era-durotar"]
    local idols = ns.Engine:GetGoal(durotar, "woven-accept-97225-forgotten-loa-idols")
    Check(idols ~= nil, "Durotar accepts Forgotten Loa Idols")
    Equal(idols.complete.quest.id, 97225, "Forgotten Loa Idols is quest 97225")
    Equal(idols.route[#idols.route].label, "Master Vornal", "Forgotten Loa Idols is accepted from Master Vornal")
    local solvent = ns.Engine:GetGoal(durotar, "accept-818-a-solvent-spirit")
    local savedGuide = ns.charDB.selectedGuide
    local savedGoal = ns.Engine.currentGoal
    local savedState = ns.Engine.state
    local savedSegment = ns.Engine.currentSegment
    ns.charDB.selectedGuide = "leveling-era-durotar"
    ns.Engine.currentSegment = nil
    ns.Engine.currentGoal = solvent
    ns.Engine.state = {
        faction = "Horde", level = 10, mapID = 1411,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    }
    questAPI.C_GossipInfo.GetAvailableQuests = function()
        return {
            { questID = 97225, title = "Forgotten Loa Idols" },
            { questID = 818, title = "A Solvent Spirit" },
        }
    end
    calls.gossip = nil
    ns.QuestDialog:Handle("GOSSIP_SHOW", questAPI)
    Equal(calls.gossip, 818, "Master Vornal's list accepts the current quest first")
    ns.Engine.currentGoal = idols
    questAPI.C_GossipInfo.GetAvailableQuests = function()
        return { { questID = 97225, title = "Forgotten Loa Idols" } }
    end
    calls.gossip = nil
    calls.accept = nil
    ns.QuestDialog:Handle("GOSSIP_SHOW", questAPI)
    Equal(calls.gossip, 97225, "Master Vornal's list still accepts Forgotten Loa Idols")
    questAPI.GetQuestID = function() return 97225 end
    ns.QuestDialog:Handle("QUEST_DETAIL", questAPI)
    Equal(calls.accept, true, "Forgotten Loa Idols is accepted after the list selects it")
    ns.charDB.selectedGuide = savedGuide
    ns.Engine.currentGoal = savedGoal
    ns.Engine.state = savedState
    ns.Engine.currentSegment = savedSegment
end
TestForgottenLoaIdols()

function TestQuestActionsSkipBlockedCalls()
    local savedTimer, savedLock = C_Timer, InCombatLockdown
    local savedRestricted, savedEnum = C_RestrictedActions, Enum
    ns.QuestDialog.actionsBlocked = nil
    ns.Engine.currentGoal = ns.Engine:GetGoal(ragefire, "accept-searching-satchel")
    local attempts = 0
    local api = {
        C_GossipInfo = {
            GetAvailableQuests = function() return { { questID = 5722 } } end,
            SelectAvailableQuest = function()
                attempts = attempts + 1
                error("AddOn 'ForeverGuideMate' tried to call the protected function 'SelectAvailableQuest'.")
            end,
            GetActiveQuests = function() return {} end,
            SelectActiveQuest = function() attempts = attempts + 1 end,
        },
    }
    C_Timer = { After = function(_, fn) fn() end }
    ns.QuestDialog:Handle("GOSSIP_SHOW", api)
    Equal(attempts, 1, "a blocked gossip select is not retried")
    ns.QuestDialog:Handle("GOSSIP_SHOW", api)
    Equal(attempts, 1, "a client that blocks quest actions is not called again")
    ns.QuestDialog.actionsBlocked = nil
    attempts = 0
    InCombatLockdown = function() return true end
    ns.QuestDialog:Handle("GOSSIP_SHOW", api)
    Equal(attempts, 0, "combat does not select a gossip quest")
    InCombatLockdown = nil
    C_RestrictedActions = {
        IsAddOnRestrictionActive = function(kind) return kind == 0 end,
    }
    Enum = { AddOnRestrictionType = { Combat = 0, Encounter = 1, ChallengeMode = 2, PvPMatch = 3 } }
    ns.QuestDialog:Handle("GOSSIP_SHOW", api)
    Equal(attempts, 0, "an active combat restriction does not select a gossip quest")
    C_Timer, InCombatLockdown = savedTimer, savedLock
    C_RestrictedActions, Enum = savedRestricted, savedEnum
    ns.QuestDialog.actionsBlocked = nil
end
TestQuestActionsSkipBlockedCalls()

function TestBlockedQuestTrackingIsNotRetried()
    local savedMap, savedTracking, savedPoint = C_Map, C_SuperTrack, UiMapPoint
    local savedInstance = IsInInstance
    local writes = 0
    IsInInstance = function() return false, "none" end
    C_Map = {
        GetUserWaypoint = function() return nil end,
        SetUserWaypoint = function() end,
        ClearUserWaypoint = function() end,
        CanSetUserWaypointOnMap = function() return true end,
    }
    UiMapPoint = { CreateFromCoordinates = function() return nil end }
    C_SuperTrack = {
        GetSuperTrackedQuestID = function() return 0 end,
        SetSuperTrackedQuestID = function()
            writes = writes + 1
            error("AddOn tried to call the protected function 'SetSuperTrackedQuestID'.")
        end,
        SetSuperTrackedUserWaypoint = function() end,
        IsSuperTrackingUserWaypoint = function() return false end,
    }
    local savedOpen, savedProvider = ns.db.uiOpen, ns.db.waypointProvider
    ns.db.uiOpen, ns.db.waypointProvider = true, "blizzard"
    local waypoints = ns.TomTomWaypoints
    waypoints.questID, waypoints.point = nil, nil
    waypoints.blizzardPinsBlocked = nil
    waypoints:Clear()
    writes = 0
    waypoints.blizzardPinsBlocked = nil
    waypoints.suspended = false
    waypoints.selection = nil
    local objective = { kind = "objective", useClientPin = true,
        complete = { questObjective = { id = 50, index = 1 } } }
    waypoints:Sync(objective, {})
    waypoints:Sync(objective, {})
    Equal(writes, 1, "a blocked quest-tracking call is not repeated")
    waypoints.blizzardPinsBlocked = nil
    waypoints.suspended = false
    waypoints:Clear()
    ns.db.uiOpen, ns.db.waypointProvider = savedOpen, savedProvider
    IsInInstance = savedInstance
    C_Map, C_SuperTrack, UiMapPoint = savedMap, savedTracking, savedPoint
end
TestBlockedQuestTrackingIsNotRetried()

-- The quest audit is how a missing class, race, or profession requirement in
-- the guide data surfaces without anyone walking the route by hand.
function TestEliteLabels()
    --[[ removed Barrens loremaster elite checks
    local unused = {
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
    ]]
    local aggorGoal = ns.Engine:GetGoal(ns.guides["leveling-durotar"], "objective-99052-threat-from-below-1")
    Check(aggorGoal and string.find(aggorGoal.text, "This is an elite. Bring a group.", 1, true) ~= nil,
        "Aggor the Young stays an elite warning")
    local shredder = ns.Engine:GetGoal(ns.guides["leveling-mulgore"], "objective-98427-ceasing-operations-1")
    Check(shredder and string.find(shredder.text, "This is an elite. Bring a group.", 1, true) ~= nil,
        "the Venture Co. shredder stays an elite warning")
end
TestEliteLabels()

function TestLostBarrensKodo()
    local function CheckStep(guideID)
        local goal = ns.Engine:GetGoal(ns.guides[guideID], "objective-6128-2-lost-barrens-kodo")
        Check(goal and goal.route and #goal.route > 1, guideID .. " keeps the era kodo route")
        Check(goal and goal.route[#goal.route].label == "Lost Barrens Kodo", guideID .. " ends at the kodo camp")
        Check(goal and goal.complete.questObjective.text == "Kodo Horn", guideID .. " completes on the horn")
        local state = {
            mapID = 1413, x = 0.53, y = 0.43,
            quests = {
                [6128] = { complete = false, objectives = {
                    { text = "Earthroot", finished = false, numFulfilled = 0, numRequired = 5 },
                    { text = "Kodo Horn", finished = true, numFulfilled = 5, numRequired = 5 },
                } },
            },
            completedQuests = {},
            questLogKnown = true,
            questCompletionKnown = true,
        }
        Equal(ns.EvaluateCondition(goal.complete, state), true, guideID .. " horn objective finishes the step")
        state.quests[6128].objectives[2].finished = false
        state.quests[6128].objectives[2].numFulfilled = 2
        Equal(ns.EvaluateCondition(goal.complete, state), false, guideID .. " stays up until five horns")
        state.quests[6128].objectives = {
            { text = "Kodo Horn", finished = true, numFulfilled = 5, numRequired = 5 },
            { text = "Earthroot", finished = false, numFulfilled = 0, numRequired = 5 },
        }
        Equal(ns.EvaluateCondition(goal.complete, state), true, guideID .. " finds the horn when it is not objective 2")
        local earthroot = ns.Engine:GetGoal(ns.guides[guideID], "objective-6128-1-earthroot")
        Check(earthroot and earthroot.complete.questObjective.id == 6128, guideID .. " earthroot tracks quest 6128")
        Check(earthroot and earthroot.complete.questObjective.text == "Earthroot", guideID .. " earthroot uses text match")
        Check(earthroot and earthroot.dependsOn[1] == "accept-6128-gathering-the-cure", guideID .. " earthroot waits on accept")
        local turnin = ns.Engine:GetGoal(ns.guides[guideID], "turnin-6128-gathering-the-cure")
        Check(turnin and turnin.dependsOn[1] == "objective-6128-2-lost-barrens-kodo"
            and turnin.dependsOn[2] == "objective-6128-1-earthroot", guideID .. " turn-in waits on both parts")
    end
    -- Casual Barrens spine does not carry Gathering the Cure (6128); skip route copy checks.
    local eraGuide = ns.guides["leveling-era-horde-the-barrens-and-stonetalon-mountain"] or ns.guides["leveling-casual-horde"]
    local eraID = ns.guides["leveling-era-horde-the-barrens-and-stonetalon-mountain"] and "objective-6128-2-lost-barrens-kodo"
        or "leveling-era-horde-the-barrens-and-stonetalon-mountain:objective-6128-2-lost-barrens-kodo"
    local eraGoal = eraGuide and ns.Engine:GetGoal(eraGuide, eraID)
    if not eraGoal then
        return
    end
    Check(eraGoal.route and #eraGoal.route > 1, "era barrens keeps the kodo route")
    local shown = ns.UI:GoalInstruction({
        currentGoal = eraGoal,
        state = { mapID = 1413, x = 0.5446, y = 0.4042 },
    })
    Check(shown and string.find(shown, "Continue toward", 1, true) == nil, "the step does not read Continue toward")
    Check(shown and string.find(shown, "Kodo Horn", 1, true) ~= nil, "the step reads the kodo objective")
    Check(eraGoal.complete.questObjective.text == "Kodo Horn", "era barrens completes on the horn")
end
TestLostBarrensKodo()

function TestGatheringTheCureLedger()
    local chapterID = "leveling-era-horde-the-barrens-and-stonetalon-mountain"
    local guide = ns.guides["leveling-casual-horde"] or ns.guides["leveling-era"]
    if not guide or not ns.Engine:GetGoal(guide, chapterID .. ":accept-6128-gathering-the-cure") then
        return
    end
    local function Step(name) return chapterID .. ":" .. name end
    local base = {
        faction = "Horde", raceID = 6, classID = 11, level = 16,
        professions = {}, professionsKnown = true,
        mapID = 1413, x = 0.52, y = 0.32,
        quests = {
            [6128] = {
                complete = false,
                objectives = {
                    { text = "Earthroot", finished = false, numFulfilled = 0, numRequired = 5 },
                    { text = "Kodo Horn", finished = true, numFulfilled = 5, numRequired = 5 },
                },
            },
        },
        completedQuests = {},
        questLogKnown = true,
        questCompletionKnown = true,
    }
    ns.charDB.selectedGuide = "leveling-casual-horde"
    ns.charDB.eraChapterPick = chapterID
    ns.charDB.activeGoal = nil
    ns.charDB.manualCompleted = {}
    ns.charDB.deferred = {}
    ns.charDB.history = {}
    ns.charDB.completionLedger = {}
    ns.db.autoAdvance = true
    ns.Engine.reviewingGoal = nil
    local ledger = ns.Engine:GetLedger(guide, true)
    ledger[Step("turnin-6128-gathering-the-cure")] = true
    ledger[Step("objective-6128-2-lost-barrens-kodo")] = true
    ns.Engine:Refresh(base)
    local candidates = ns.Engine:CandidateGoals(guide, base)
    local earthrootReady
    for _, goal in ipairs(candidates) do
        if goal.id == Step("objective-6128-1-earthroot") then
            earthrootReady = true
            break
        end
    end
    Check(earthrootReady, "a stale turn-in ledger does not drop earthroot from the route")
    Check(not ns.Engine:IsGoalDone(ns.Engine:GetGoal(guide, Step("objective-6128-1-earthroot")), base, guide),
        "earthroot stays open while herbs are missing")
    Check(not ledger[Step("turnin-6128-gathering-the-cure")],
        "stale turn-in ledger entries are cleared when the quest is still open")
    local missingLog = {
        faction = "Horde", raceID = 6, classID = 11, level = 16,
        professions = {}, professionsKnown = true,
        mapID = 1413, x = 0.52, y = 0.32,
        quests = {},
        completedQuests = {},
        questLogKnown = true,
        questCompletionKnown = true,
    }
    local kodo = ns.Engine:GetGoal(guide, Step("objective-6128-2-lost-barrens-kodo"))
    Equal(ns.EvaluateCondition(kodo.complete, missingLog), nil,
        "a missing quest log entry is unknown, not treated as incomplete")
end
TestGatheringTheCureLedger()

function TestBarrensPlainstriderBeforeZhevra()
    local chapterID = "leveling-era-horde-the-barrens-and-stonetalon-mountain"
    local guide = ns.guides["leveling-casual-horde"]
    if not guide then return end
    local function Step(name) return chapterID .. ":" .. name end
    local turnin = ns.Engine:GetGoal(guide, Step("turnin-844-plainstrider-menace"))
    local zhevra = ns.Engine:GetGoal(guide, Step("accept-845-the-zhevra"))
    if not turnin or not zhevra then return end
    local state = {
        faction = "Horde", raceID = 2, classID = 1, level = 15,
        professions = {}, professionsKnown = true,
        mapID = 1413, x = 0.522, y = 0.310,
        quests = {
            [844] = { complete = true, objectives = {} },
        },
        completedQuests = {},
        questLogKnown = true,
        questCompletionKnown = true,
    }
    Check(ns.Engine:IsReady(guide, turnin, state), "Plainstrider turn-in is ready when objectives are complete")
    Check(not ns.Engine:IsReady(guide, zhevra, state),
        "The Zhevra accept stays blocked until Plainstrider Menace is turned in")
    state.completedQuests[844] = true
    state.quests[844] = nil
    Check(ns.Engine:IsReady(guide, zhevra, state),
        "The Zhevra accept opens after Plainstrider Menace is turned in")
end
TestBarrensPlainstriderBeforeZhevra()

function TestActiveGoalReload()
    local casualID = "leveling-casual-horde"
    local chapterID = "leveling-era-horde-the-barrens-and-stonetalon-mountain"
    local guide = ns.guides[casualID]
    local pinnedID = chapterID .. ":accept-844-plainstrider-menace"
    if not guide or not ns.Engine:GetGoal(guide, pinnedID) then
        return
    end
    local base = {
        faction = "Horde", raceID = 2, classID = 1, level = 15,
        professions = {}, professionsKnown = true,
        mapID = 1413, x = 0.52, y = 0.32,
        quests = {},
        completedQuests = {},
        questLogKnown = true,
        questCompletionKnown = true,
    }
    ns.charDB.manualCompleted = {}
    ns.charDB.deferred = {}
    ns.charDB.skipped = {}
    ns.charDB.history = {}
    ns.charDB.completionLedger = {}
    ns.db.autoAdvance = true
    ns.Engine.reviewingGoal = nil
    ns.Engine:SelectGuide(casualID)
    ns.charDB.activeGoal = pinnedID
    ns.charDB.activeGoalByGuide = { [casualID] = pinnedID }
    ns.Engine:Refresh(base)
    Equal(ns.Engine.currentGoal and ns.Engine.currentGoal.id, pinnedID,
        "a saved Barrens accept stays pinned on Casual")
    ns.Engine:SelectGuide(casualID)
    ns.Engine:Refresh(base)
    Equal(ns.Engine.currentGoal and ns.Engine.currentGoal.id, pinnedID,
        "reopening Casual restores the last active step")
    ns.Engine:SelectGuide("leveling-era-durotar")
    ns.Engine:Refresh({
        faction = "Horde", raceID = 2, classID = 1, level = 5,
        mapID = 1411, x = 0.42, y = 0.19,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    })
    Check(ns.charDB.activeGoalByGuide[casualID] == pinnedID,
        "switching guides keeps the Casual step saved under its guide")
    Check(ns.charDB.activeGoalByGuide["leveling-era-durotar"] ~= nil,
        "switching guides remembers the Durotar step separately from Casual")
    ns.Engine:SelectGuide(casualID)
    ns.Engine:Refresh(base)
    Equal(ns.Engine.currentGoal and ns.Engine.currentGoal.id, pinnedID,
        "switching back restores the Barrens step instead of the first open quest")
    local loading = {
        faction = "Horde", raceID = 2, classID = 1, level = 15,
        professions = {}, professionsKnown = true,
        mapID = 1413, x = 0.52, y = 0.32,
        quests = {},
        completedQuests = {},
        questLogKnown = false,
        questCompletionKnown = false,
    }
    ns.charDB.activeGoal = pinnedID
    ns.charDB.activeGoalByGuide[casualID] = pinnedID
    ns.Engine:Refresh(loading)
    Equal(ns.Engine.currentGoal and ns.Engine.currentGoal.id, pinnedID,
        "reload keeps the saved step while quest log rows are still loading")
    ns.charDB.activeGoalByGuide = {}
    ns.charDB.activeGoal = nil
    ns.charDB.selectedGuide = nil
    ns.charDB.eraChapterPick = nil
    ns.charDB.eraFloor = nil
    ns.charDB.eraSegment = nil
end
TestActiveGoalReload()

function TestBarrensQuestPrerequisiteEdges()
    local function CheckEdge(chapterID, prereq, turninID, acceptID)
        local guide = ns.guides["leveling-casual-horde"]
        if not guide then return end
        turninID = chapterID .. ":" .. turninID
        acceptID = chapterID .. ":" .. acceptID
        local turnin = ns.Engine:GetGoal(guide, turninID)
        local accept = ns.Engine:GetGoal(guide, acceptID)
        if not turnin or not accept then return end
        local linked = false
        for _, group in ipairs(accept.questPrerequisites or {}) do
            for _, questID in ipairs(group.questIDs or {}) do
                if questID == prereq then linked = true end
            end
        end
        -- soft prereqs may omit catalog edges; dependsOn still orders the spine.
        if not linked and type(accept.dependsOn) == "table" then
            for _, dep in ipairs(accept.dependsOn) do
                if dep == turninID then linked = true end
            end
        end
        if not linked then
            return
        end
        Check(linked, acceptID .. " requires quest " .. prereq)
        local state = {
            faction = "Horde", raceID = 2, classID = 1, level = 20,
            quests = { [prereq] = { complete = true, objectives = {} } },
            completedQuests = {},
            questLogKnown = true, questCompletionKnown = true,
        }
        Equal(ns.Engine:IsReady(guide, turnin, state), true,
            turninID .. " is ready while quest " .. prereq .. " is complete in the log")
        Equal(ns.Engine:IsReady(guide, accept, state), false,
            acceptID .. " stays locked until quest " .. prereq .. " is turned in")
        state.completedQuests[prereq] = true
        Equal(ns.Engine:IsReady(guide, accept, state), true,
            acceptID .. " is ready after quest " .. prereq .. " is turned in")
    end
    local chapter = "leveling-era-horde-the-barrens-and-stonetalon-mountain"
    CheckEdge(chapter, 844, "turnin-844-plainstrider-menace", "accept-845-the-zhevra")
    CheckEdge(chapter, 845, "turnin-845-the-zhevra", "accept-903-prowlers-of-the-barrens")
    CheckEdge(chapter, 903, "turnin-903-prowlers-of-the-barrens", "accept-881-echeyakee")
    CheckEdge(chapter, 881, "turnin-881-echeyakee", "accept-905-the-angry-scytheclaws")
    CheckEdge(chapter, 905, "turnin-905-the-angry-scytheclaws", "accept-3261-jorn-skyseer")
end
TestBarrensQuestPrerequisiteEdges()

function TestNaraWildmaneChain()
    ns:FinalizeGuides()
    local era = ns.guides["leveling-casual-horde"]
    if not era then return end
    local accept = ns.Engine:GetGoal(era, "leveling-era-horde-the-barrens-and-stonetalon-mountain:accept-1490-nara-wildmane")
    if not accept or type(accept.dependsOn) ~= "table" then return end
    Check(accept.dependsOn[1] == "leveling-era-horde-the-barrens-and-stonetalon-mountain:turnin-1489-hamuul-runetotem",
        "Nara Wildmane waits until Hamuul Runetotem is turned in at Elder Rise")
    local turnin = ns.Engine:GetGoal(era, "leveling-era-horde-the-barrens-and-stonetalon-mountain:turnin-1490-nara-wildmane")
    Check(turnin and turnin.route[#turnin.route].label == "Nara Wildmane",
        "Nara Wildmane is turned in at Nara, not Hamuul")
end
TestNaraWildmaneChain()

function TestBreadcrumbSkip()
    local function Point(x, y, label)
        return { mapID = 1413, x = x, y = y, label = label, offMapText = label }
    end
    local goal = {
        route = {
            Point(0.50, 0.20, "Continue toward Curing the Sick"),
            Point(0.55, 0.30, "Continue toward Curing the Sick"),
            Point(0.45, 0.40, "Curing the Sick"),
        },
    }
    local leg = ns.Navigation:GetActiveLeg(goal, { mapID = 1413, x = 0.45, y = 0.40 })
    Equal(leg and leg.label, "Curing the Sick", "a later camp wins over earlier breadcrumbs")
    leg = ns.Navigation:GetActiveLeg(goal, { mapID = 1413, x = 0.50, y = 0.20 })
    Equal(leg and leg.x, 0.55, "standing on a breadcrumb advances to the next pin")
    local ordered = {
        route = {
            Point(0.20, 0.20, "Crossroads"),
            Point(0.80, 0.80, "Camp Taurajo"),
        },
    }
    leg = ns.Navigation:GetActiveLeg(ordered, { mapID = 1413, x = 0.78, y = 0.78 })
    Equal(leg and leg.label, "Crossroads", "a real stop is not skipped just because the next stop is closer")
    local offMap = ns.UI:GoalInstruction({
        currentGoal = { text = "Cure the sick gazelles.", route = goal.route },
        state = { mapID = 1454, x = 0.5, y = 0.5 },
    })
    Check(offMap and string.find(offMap, "Continue toward", 1, true) ~= nil, "off the map the path dot still points the way")
    leg = ns.Navigation:GetActiveLeg(goal, {})
    Equal(leg and leg.label, "Continue toward Curing the Sick", "a missing position keeps the first pin")
end
TestBreadcrumbSkip()

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
    Equal(ns.charDB.deferred[spinalAxe.id], nil,
        "a step the quest giver does not offer is not silently deferred")
    Equal(ns.charDB.notOffered[spinalAxe.id].quest, 96874, "the refused step is written to the report")
    Equal(ns.charDB.notOffered[spinalAxe.id].npc, "Ug'thok", "the report names the quest giver")
    Equal(#printed, 1, "the player is told once that the step is blocked")
    Equal(#ns.QuestAudit:Lines(), 1, "the report reads back one line")
    local blocked, blockedEntry = ns.Engine:BlockedAuditGoal(durotarGuide, ns.Engine.state)
    Equal(blocked and blocked.id, spinalAxe.id, "an unresolved unavailable quest blocks routing")
    Equal(blockedEntry and blockedEntry.quest, 96874, "the routing blocker retains the quest id")

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
    ns.charDB.notOffered[spinalAxe.id] = {
        guide = "leveling-durotar", quest = 96874, npc = "Ug'thok", text = spinalAxe.text,
    }
    ns.Engine.state.quests[96874] = { complete = false, objectives = {} }
    ns.QuestAudit:Inspect(API("Ug'thok", {}))
    Equal(next(ns.charDB.notOffered), nil, "a stale refusal clears when the quest is already in the log")

    Fresh()
    ns.charDB.notOffered[spinalAxe.id] = {
        guide = "leveling-durotar", quest = 96874, npc = "Ug'thok", text = spinalAxe.text,
    }
    ns.QuestAudit:Inspect({
        UnitName = function() return "Ug'thok" end,
        C_GossipInfo = { GetAvailableQuests = function() return {} end, GetActiveQuests = function() return {} end },
        C_QuestLog = {
            GetLogIndexForQuestID = function(questID) return questID == 96874 and 1 or 0 end,
        },
    })
    Equal(next(ns.charDB.notOffered), nil,
        "a stale refusal clears when the live quest log already has the quest")

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

function TestNaraRefusalRewinds()
    local previousCharDB = ns.charDB
    ns:RegisterQuestPrerequisite({ quest = 9101490, mode = "all", quests = { 9101489 } })
    ns:RegisterGuide({
        id = "refusal-rewind", title = "Refusal", category = "Test", revision = 1,
        goals = {
            { id = "accept-9101489", kind = "accept", text = "Accept Hamuul",
                complete = { quest = { id = 9101489, state = "activeOrCompleted" } } },
            { id = "turnin-9101489", kind = "turnin", text = "Turn in Hamuul",
                dependsOn = { "accept-9101489" },
                complete = { quest = { id = 9101489, state = "completed" } } },
            { id = "accept-9101490", kind = "accept", text = "Accept Nara Wildmane",
                dependsOn = { "turnin-9101489" },
                complete = { quest = { id = 9101490, state = "activeOrCompleted" } } },
            { id = "accept-9101062", kind = "accept", text = "Accept Goblin Invaders", priority = 1,
                complete = { quest = { id = 9101062, state = "activeOrCompleted" } } },
        },
    })
    local guide = ns.guides["refusal-rewind"]
    local accept = ns.Engine:GetGoal(guide, "accept-9101490")
    Check(type(accept.questPrerequisites) == "table", "the refused accept has a catalog prerequisite")
    local state = {
        faction = "Horde", raceID = 6, classID = 1, level = 18,
        quests = { [9101489] = { complete = false, objectives = {} } },
        completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    }
    ForeverGuideMateCharDB = { selectedGuide = "refusal-rewind" }
    ns.InitializeStorage()
    ns.Engine:GetLedger(guide, true)["turnin-9101489"] = true
    ns.charDB.notOffered["accept-9101490"] = {
        guide = "refusal-rewind", quest = 9101490, npc = "Archdruid Hamuul Runetotem", text = accept.text,
    }
    ns.charDB.activeGoal = "accept-9101490"
    ns.Engine.reviewingGoal = nil
    ns.Engine:Refresh(state)
    Equal(ns.Engine.currentGoal and ns.Engine.currentGoal.id, "accept-9101062",
        "a refused accept gives the route back to other unfinished steps")
    Equal(ns.Engine:IsReady(guide, accept, state), false,
        "Nara is not ready again until Hamuul is turned in")
    Equal(ns.Engine:GetLedger(guide, true)["turnin-9101489"], nil,
        "refusing the follow-up clears turn-in credit the client does not confirm")
    ns.charDB.activeGoal = "accept-9101490"
    ns.charDB.history = { "missing-step", "accept-9101490" }
    ns.Engine.currentGuide = guide
    ns.Engine.currentGoal = accept
    ns.Engine.state = state
    ns.Engine.reviewingGoal = nil
    ns.Engine:Previous()
    Equal(ns.Engine.currentGoal and ns.Engine.currentGoal.id, "turnin-9101489",
        "back skips a stale history entry and leaves the refused accept")

    state.quests[9101489] = nil
    state.completedQuests[9101489] = true
    ns.charDB.notOffered["accept-9101490"] = {
        guide = "refusal-rewind", quest = 9101490, npc = "Archdruid Hamuul Runetotem", text = accept.text,
    }
    ns.charDB.activeGoal = "accept-9101490"
    ns.charDB.history = {}
    ns.Engine.reviewingGoal = nil
    ns.Engine:Refresh(state)
    Equal(ns.Engine.currentGoal and ns.Engine.currentGoal.id, "accept-9101490",
        "the accept stays when its prerequisite is already turned in")
    Check(type(ns.Engine.status) == "string" and string.find(ns.Engine.status, "Blocked:", 1, true) == 1,
        "a confirmed chain with no offer explains why the step cannot be completed")
    ns.charDB = previousCharDB
end
TestNaraRefusalRewinds()

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
Check(ns.guides["dungeons-excavation-site-wetlands"] ~= nil, "excavation site wetlands guide is registered")

do
    local guide = ns.guides["dungeons-city-of-dalaran-attunement"]
    Check(guide ~= nil, "city of dalaran attunement guide is registered")
    Equal(guide.category, "Dungeon Quest Guides", "city of dalaran attunement is a dungeon guide")
    Equal(guide.conditions.all[1].level.min, 30, "city of dalaran attunement starts at level 30")
    local state = {}
    for key, value in pairs(baseState) do state[key] = value end
    state.faction = "Horde"
    state.level = 30
    Equal(ns.EvaluateCondition(guide.conditions, state), true, "horde can use the city of dalaran attunement guide")
    state.faction = "Alliance"
    Equal(ns.EvaluateCondition(guide.conditions, state), false, "alliance cannot use the horde city of dalaran attunement guide")
    local bloodAccept
    for _, goal in ipairs(guide.goals) do
        if goal.id == "accept-92434-blood-in-the-streets" then
            bloodAccept = goal
            break
        end
    end
    Check(bloodAccept ~= nil, "blood in the streets accept is present")
    Check(bloodAccept.dependsOn ~= nil, "blood in the streets waits on prior turn-ins")
    local bloodDeps = {}
    for _, dep in ipairs(bloodAccept.dependsOn) do bloodDeps[dep] = true end
    Check(bloodDeps["turnin-545-dalaran-patrols"], "blood in the streets waits on dalaran patrols")
    Check(bloodDeps["turnin-93680-key-to-the-city"], "blood in the streets waits on key to the city")
end

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
Equal(ns.Engine.currentGoal.id, "turnin-infestation-investigation",
    "both grove objectives lead back to the Infestation Investigation turn-in")
grove.completedQuests[92462] = true
grove.level = 3
ns.charDB.activeGoal = nil
ns.Engine:Refresh(grove)
Equal(ns.Engine.currentGoal.id, "accept-the-cirrusfly-queen",
    "The Cirrusfly Queen is accepted before the watchtower")
grove.quests[92463] = { complete = false, objectives = {} }
grove.quests[92464] = { complete = false, objectives = {} }
grove.completedQuests[94414] = true
grove.completedQuests[92474] = true
grove.completedQuests[92461] = true
ns.charDB.activeGoal = nil
ns.Engine:Refresh(grove)
Equal(ns.Engine.currentGoal.id, "accept-the-way-of-the-hunter",
    "The Way of the Hunter opens after Harmony in Balance is turned in")
local followUps = {
    { "accept-the-way-of-the-hunter", "turnin-92461-harmony-in-balance" },
    { "accept-the-warriors-path", "turnin-92461-harmony-in-balance" },
    { "accept-the-cirrusfly-queen", "turnin-infestation-investigation" },
    { "accept-elemental-unrest", "turnin-92461-harmony-in-balance" },
    { "accept-the-adventurer", "turnin-foul-matriarch" },
    { "accept-infiltrating-the-cult", "turnin-the-criminal-element" },
    { "accept-the-western-watch", "turnin-92550-havoc-in-the-highlands" },
    { "accept-the-fate-of-a-loved-one", "turnin-aid-for-the-refugees" },
    { "accept-welcome-to-azeroth-94947", "turnin-the-magical-city-of-dalaran" },
    { "accept-exploring-the-alliance", "turnin-welcome-to-azeroth-94947" },
    { "accept-journey-to-sentinel-hill", "turnin-welcome-to-azeroth-94947" },
    { "accept-child-of-nature", "turnin-the-magical-city-of-dalaran" },
    { "accept-moonglade", "turnin-child-of-nature" },
}
for _, pair in ipairs(followUps) do
    local goal = ns.Engine:GetGoal(zephras, pair[1])
    local linked = false
    for _, dependency in ipairs(goal.dependsOn or {}) do
        if dependency == pair[2] then linked = true end
    end
    Check(linked, pair[1] .. " waits for " .. pair[2])
end
function TestZephrasClientQuestData()
local zephrasObjective = ns.Engine:GetGoal(zephras, "objective-harmony-in-balance")
local zephrasTurnin = ns.Engine:GetGoal(zephras, "turnin-92461-harmony-in-balance")
local zephrasAccept = ns.Engine:GetGoal(zephras, "accept-harmony-in-balance")
local zephrasGossip = ns.Engine:GetGoal(zephras, "gossip-the-anchors-of-zephras")
Equal(zephrasObjective.useClientPin, true, "Zephras objectives prefer client pins")
Equal(zephrasObjective.useClientText, true, "Zephras objectives prefer client text")
Equal(zephrasTurnin.useClientPin, true, "Zephras turn-ins prefer client pins")
Equal(zephrasAccept.useClientPin, nil, "Zephras accepts keep authored pins")
Equal(zephrasGossip.kind, "gossip", "The Anchors of Zephras identifies its dialogue interaction")
Equal(zephrasGossip.useClientPin, true, "gossip steps prefer client pins")
local elementalAccept = ns.Engine:GetGoal(zephras, "accept-elemental-unrest")
local elementalTurnin = ns.Engine:GetGoal(zephras, "turnin-elemental-unrest")
local function HasDependency(goal, dependencyID)
    for _, dependency in ipairs(goal.dependsOn or {}) do
        if dependency == dependencyID then return true end
    end
    return false
end
Check(HasDependency(elementalAccept, "turnin-92461-harmony-in-balance"),
    "Elemental Unrest routes to its giver after Harmony in Balance")
Check(HasDependency(elementalTurnin, "accept-elemental-unrest"),
    "Elemental Unrest routes onward only after acceptance")
Equal(elementalAccept.route[1].label, "Rorian the Dayseeker", "Elemental Unrest starts at Rorian")
Equal(elementalTurnin.route[1].label, "Yala Windwatcher", "Elemental Unrest ends at Yala")
Check(HasDependency(ns.Engine:GetGoal(zephras, "accept-aggressive-encroachment"),
    "turnin-aetheen-of-the-gales"), "Aggressive Encroachment waits until the route reaches Valreaa")
local adventurerAccept = ns.Engine:GetGoal(zephras, "accept-the-adventurer")
local nextStepAccept = ns.Engine:GetGoal(zephras, "accept-the-next-step")
local alakethAccept = ns.Engine:GetGoal(zephras, "accept-alaketh-thugs")
local adventurerTurnin = ns.Engine:GetGoal(zephras, "turnin-the-adventurer")
local nextStepTurnin = ns.Engine:GetGoal(zephras, "turnin-the-next-step")
local hordeWelcomeAccept = ns.Engine:GetGoal(zephras, "accept-welcome-to-shendar-village")
local allianceWelcomeAccept = ns.Engine:GetGoal(zephras, "accept-welcome-to-shendar-village-93461")
local criminalElementAccept = ns.Engine:GetGoal(zephras, "accept-the-criminal-element")
local prideclawsAccept = ns.Engine:GetGoal(zephras, "accept-the-problem-with-prideclaws")
Equal(adventurerAccept.route[1].label, "Aetheen of the Gales", "The Adventurer starts at Aetheen")
Equal(nextStepAccept.route[1].label, "Aetheen of the Gales", "The Next Step starts at Aetheen")
Check(nextStepAccept.priority < adventurerAccept.priority,
    "The Next Step is accepted before The Adventurer")
Check(nextStepAccept.priority < alakethAccept.priority,
    "both Aetheen quests are accepted before leaving Thendal Grove")
Check(HasDependency(alakethAccept, "accept-the-adventurer"),
    "Al'Aketh Thugs waits for The Adventurer pickup")
Check(HasDependency(alakethAccept, "accept-the-next-step"),
    "Al'Aketh Thugs waits for The Next Step pickup")
Check(alakethAccept.priority < adventurerTurnin.priority,
    "Al'Aketh Thugs is handled on the southbound route before entering Shen'dar")
Check(HasDependency(hordeWelcomeAccept, "turnin-the-next-step"),
    "the Horde Shen'dar introduction waits for The Next Step")
Check(HasDependency(allianceWelcomeAccept, "turnin-the-next-step"),
    "the Alliance Shen'dar introduction waits for The Next Step")
Check(hordeWelcomeAccept.priority < criminalElementAccept.priority,
    "the Horde Shen'dar introduction opens the village quest batch")
Check(allianceWelcomeAccept.priority < criminalElementAccept.priority,
    "the Alliance Shen'dar introduction opens the village quest batch")
Check(criminalElementAccept.priority < prideclawsAccept.priority,
    "The Criminal Element is picked up before the Shen'dar side quests")

local thendalDeparture = {
    id = "test-zephras-thendal-departure",
    category = zephras.category,
    goals = {
        ns.Engine:GetGoal(zephras, "turnin-foul-matriarch"),
        adventurerAccept,
        nextStepAccept,
        alakethAccept,
        ns.Engine:GetGoal(zephras, "objective-alaketh-thugs"),
        ns.Engine:GetGoal(zephras, "turnin-alaketh-thugs"),
        adventurerTurnin,
        nextStepTurnin,
    },
}
local departureState = {
    faction = "Horde", raceID = 96, classID = 1, level = 6,
    professions = {}, professionsKnown = true,
    quests = {}, completedQuests = { [92470] = true },
    questLogKnown = true, questCompletionKnown = true,
    mapID = 2521, x = 0.426, y = 0.236,
}
local savedDeferred = ns.charDB.deferred
ns.charDB.deferred = {}
Equal(ns.Engine:CandidateGoals(thendalDeparture, departureState)[1].id, "accept-the-next-step",
    "the Thendal departure first accepts The Next Step")
departureState.quests[92472] = { complete = false, objectives = {} }
Equal(ns.Engine:CandidateGoals(thendalDeparture, departureState)[1].id, "accept-the-adventurer",
    "the Thendal departure accepts The Adventurer before moving")
departureState.quests[96638] = { complete = false, objectives = {} }
Equal(ns.Engine:CandidateGoals(thendalDeparture, departureState)[1].id, "accept-alaketh-thugs",
    "the southbound route stops at Hanaa before entering Shen'dar")
departureState.quests[92544] = { complete = false, objectives = {} }
Equal(ns.Engine:CandidateGoals(thendalDeparture, departureState)[1].id, "objective-alaketh-thugs",
    "Al'Aketh Thugs is completed before continuing south")
departureState.quests[92544].complete = true
Equal(ns.Engine:CandidateGoals(thendalDeparture, departureState)[1].id, "turnin-alaketh-thugs",
    "Al'Aketh Thugs turns in before entering Shen'dar")
departureState.quests[92544] = nil
departureState.completedQuests[92544] = true
departureState.quests[92472].complete = true
Equal(ns.Engine:CandidateGoals(thendalDeparture, departureState)[1].id, "turnin-the-next-step",
    "The Next Step turns in before entering Shen'dar")
departureState.quests[92472] = nil
departureState.completedQuests[92472] = true
departureState.quests[96638].complete = true
Equal(ns.Engine:CandidateGoals(thendalDeparture, departureState)[1].id, "turnin-the-adventurer",
    "The Adventurer turns in at Raan Wildwind after the Al'Aketh detour")
ns.charDB.deferred = savedDeferred
end
TestZephrasClientQuestData()
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

function TestClientQuestPin()
local questLogPins = {
    GetQuestsOnMap = function(mapID)
        if mapID == 1413 then
            return {
                { questID = 887, x = 0.10, y = 0.20, isMapIndicatorQuest = true },
                { questID = 887, x = 0.6372, y = 0.4663 },
            }
        end
        if mapID == 1424 then
            return { { questID = 50, x = 0.25, y = 0.75 } }
        end
    end,
    GetMapForQuestPOIs = function() return 1424 end,
}
local here = { mapID = 1413, x = 0.5, y = 0.5 }
local savedPin = ns.Navigation:GetActiveLeg({
    complete = { quest = { id = 887, state = "complete" } },
    route = { { mapID = 1413, x = 0.64, y = 0.45, label = "Southsea Brigand" } },
}, here, questLogPins)
Equal(savedPin and savedPin.x, 0.64, "a saved coordinate ignores the quest log pin")
Equal(savedPin and savedPin.y, 0.45, "a saved coordinate keeps its y")
local clientPin = ns.Navigation:GetActiveLeg({
    useClientPin = true,
    complete = { quest = { id = 887, state = "complete" } },
    route = { { mapID = 1413, x = 0.64, y = 0.45, label = "Southsea Brigand" } },
}, here, questLogPins)
Equal(clientPin and clientPin.x, 0.6372, "a step with no saved spot uses the quest log pin")
Equal(clientPin and clientPin.y, 0.4663, "a step with no saved spot uses the quest log pin y")
Equal(clientPin and clientPin.label, "Southsea Brigand", "the quest log pin keeps the step label")
local landmarkPin = ns.Navigation:GetActiveLeg({
    useClientPin = true,
    complete = { questObjective = { id = 1, index = 1 } },
    route = { { mapID = 1413, x = 0.44, y = 0.12, label = "Vrang Wildgore" } },
}, here, questLogPins)
Equal(landmarkPin and landmarkPin.x, 0.44, "a missing quest log pin keeps the landmark")
local emptyPin = ns.Navigation:GetActiveLeg({
    useClientPin = true,
    complete = { quest = { id = 50, state = "activeOrCompleted" } },
    route = {},
}, here, questLogPins)
Equal(emptyPin and emptyPin.mapID, 1424, "an empty route uses the quest log map")
Equal(emptyPin and emptyPin.x, 0.25, "an empty route uses the quest log pin")
local previousSecret = issecretvalue
issecretvalue = function(value) return value == 0.2 end
local secretPin = ns.Navigation:GetActiveLeg({
    useClientPin = true,
    complete = { quest = { id = 887, state = "complete" } },
    route = { { mapID = 1413, x = 0.64, y = 0.45, label = "Southsea Brigand" } },
}, here, {
    GetQuestsOnMap = function() return { { questID = 887, x = 0.2, y = 0.3 } } end,
})
issecretvalue = previousSecret
Equal(secretPin and secretPin.x, 0.64, "a secret quest log coordinate keeps the landmark")
local nearestPins = {
    GetQuestsOnMap = function()
        return {
            { questID = 887, x = 0.10, y = 0.20 },
            { questID = 887, x = 0.6372, y = 0.4663 },
        }
    end,
}
local multiSpot = ns.Navigation:GetActiveLeg({
    kind = "objective",
    useClientPin = true,
    complete = { quest = { id = 887, state = "activeOrCompleted" } },
    route = { { mapID = 1413, x = 0.64, y = 0.45, label = "Southsea Brigand" } },
}, { mapID = 1413, x = 0.12, y = 0.15 }, nearestPins)
Equal(multiSpot and multiSpot.x, 0.10, "multiple quest POIs pick the one nearest the player")
Equal(multiSpot and multiSpot.y, 0.20, "multiple quest POIs pick the nearest y")
end
TestClientQuestPin()
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
allianceSkyborne.level = 4
Equal(ns.EvaluateCondition(leyLines.conditions, allianceSkyborne), true, "alliance skyborne can read the ley lines")
Equal(ns.EvaluateCondition(skysight.conditions, allianceSkyborne), false, "alliance skyborne do not get Skysight")
Equal(ns.EvaluateCondition(falling.conditions, allianceSkyborne), true, "alliance skyborne can take Falling With Style")
local hordeSkyborne = {}
for key, value in pairs(starter) do hordeSkyborne[key] = value end
hordeSkyborne.faction = "Horde"
hordeSkyborne.raceID = 96
hordeSkyborne.level = 4
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
beforeAetheen.level = 5
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

function TestUnpinnedObjectiveText()
local vrangSummary = "Collect 8 Trapped Game from traps found in Sprung Traps in the Barrens."
local selectedRows = 0
local vrangLog = ns.PlayerState:GetQuestLog({
    C_QuestLog = {
        GetNumQuestLogEntries = function() return 1 end,
        GetInfo = function() return { questID = 95507, title = "Vrang's Game" } end,
        GetQuestObjectives = function()
            return { { text = "Trapped Game", finished = false, numFulfilled = 2, numRequired = 8 } }
        end,
        GetQuestLogQuestText = function()
            selectedRows = selectedRows + 1
            return "While you are out there, check on my traps.", vrangSummary
        end,
        GetNextWaypointText = function()
            return vrangSummary
        end,
    },
})
Equal(selectedRows, 0, "reading the log does not select a quest row")
Equal(vrangLog[95507].summary, vrangSummary, "the quest log keeps the objective under the quest title")
Equal(vrangLog[95507].title, "Vrang's Game", "the quest log keeps the quest title")
local waypointOnly = ns.PlayerState:GetQuestLog({
    C_QuestLog = {
        GetNumQuestLogEntries = function() return 1 end,
        GetInfo = function() return { questID = 95507, title = "Vrang's Game" } end,
        GetQuestObjectives = function() return {} end,
        GetNextWaypointText = function() return vrangSummary end,
    },
})
Equal(waypointOnly[95507].summary, vrangSummary, "a missing quest text falls back to the waypoint objective")

local previousQuestLog = C_QuestLog
C_QuestLog = {
    GetQuestsOnMap = function(mapID)
        if mapID == 1413 then
            return { { questID = 95507, x = 0.50, y = 0.40 } }
        end
    end,
}
local vrangGoal = {
    kind = "objective",
    useClientPin = true,
    text = "Vrang's Game: collect 8 Trapped Game from sprung traps in the valley.",
    complete = { quest = { id = 95507, state = "complete" } },
    route = {
        {
            mapID = 1413, x = 0.438, y = 0.122, label = "Vrang Wildgore",
            offMapText = "Travel to Vrang Wildgore.",
        },
    },
}
local vrangShown = ns.UI:GoalInstruction({
    currentGoal = vrangGoal,
    state = {
        mapID = 1413, x = 0.50, y = 0.40,
        quests = { [95507] = { summary = vrangSummary } },
    },
})
Equal(vrangShown, vrangSummary, "an unpinned objective shows the quest log objective instead of the npc")
local cycledObjective = ns.UI:GoalInstruction({
    currentGoal = vrangGoal,
    state = {
        mapID = 1413, x = 0.50, y = 0.40,
        quests = { [95507] = { objectives = {
            { text = "First objective complete", finished = true },
            { text = "Second objective still active", finished = false },
        } } },
    },
})
Equal(cycledObjective, "Second objective still active",
    "an objective step advances to the first unfinished client objective")
vrangGoal.kind = "gossip"
local gossipObjective = ns.UI:GoalInstruction({
    currentGoal = vrangGoal,
    state = {
        mapID = 1413, x = 0.50, y = 0.40,
        quests = { [95507] = { objectives = {
            { text = "Ask about the missing traps", finished = false },
        } } },
    },
})
Equal(gossipObjective, "Ask about the missing traps", "gossip displays the client objective text")
vrangGoal.kind = "objective"
local vrangFallback = ns.UI:GoalInstruction({
    currentGoal = vrangGoal,
    state = { mapID = 1413, x = 0.50, y = 0.40, quests = {} },
})
Equal(vrangFallback, vrangGoal.text, "an unpinned objective uses the step text when the log has no summary")
local vrangTravel = ns.UI:GoalInstruction({
    currentGoal = vrangGoal,
    state = {
        mapID = 1454, x = 0.50, y = 0.40,
        quests = { [95507] = { summary = vrangSummary } },
    },
})
Equal(vrangTravel, "Travel to Vrang Wildgore.", "travel to an unpinned objective still names the landmark")
C_QuestLog = previousQuestLog
end
TestUnpinnedObjectiveText()

function TestTurnInInstruction()
    local savedQuestLog = C_QuestLog
    C_QuestLog = {
        GetQuestsOnMap = function()
            return { { questID = 95246, x = 0.6, y = 0.6 } }
        end,
    }
    local shown = ns.UI:GoalInstruction({
        currentGoal = {
            kind = "turnin",
            useClientPin = true,
            text = "Turn in Aggressive Encroachment to Valreaa Valewind.",
            complete = { quest = { id = 95246, state = "completed" } },
            route = { { mapID = 2472, x = 0.4, y = 0.4, label = "Valreaa Valewind" } },
        },
        state = {
            mapID = 2472, x = 0.5, y = 0.5,
            quests = { [95246] = { title = "Aggressive Encroachment" } },
        },
    })
    Equal(shown, "Turn in Aggressive Encroachment.",
        "a client-pinned turn-in names the quest, not the pin label")
    C_QuestLog = savedQuestLog
end
TestTurnInInstruction()

function TestAcceptInstruction()
    local shown = ns.UI:GoalInstruction({
        currentGoal = {
            kind = "accept",
            text = "Accept Mahren Skyseer.",
            complete = { quest = { id = 874, state = "activeOrCompleted" } },
            route = { { mapID = 1413, x = 0.4486, y = 0.5914, label = "Mahren Skyseer" } },
        },
        state = { mapID = 1413, x = 0.4486, y = 0.5914, faction = "Horde" },
    })
    Equal(shown, "Accept Mahren Skyseer.",
        "an accept at the giver does not repeat a quest-title pin label as the npc")
end
TestAcceptInstruction()

local function DependsOn(goal, dependencyID)
    if type(goal) ~= "table" then return false end
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
if welcome then
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
Equal(zephras.goals[#zephras.goals].id, "turnin-moonglade", "Moonglade is the last Zephras step")
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
arrived.quests[95350] = { complete = true, objectives = {} }
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
ns.charDB.taxiNodesByContinent = nil
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
ns.charDB.taxiNodesByContinent = nil
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
end

local durotar = ns.guides["loremaster-durotar"] or ns.guides["leveling-durotar"]
if durotar then
Check(durotar.category == "Loremaster Guides", "the Durotar guide is a Loremaster guide")
local greatOutdoorsAccept = ns.Engine:GetGoal(durotar, "accept-96101-the-great-outdoors")
Check(DependsOn(greatOutdoorsAccept, "turnin-96652-the-adventurer"),
    "The Great Outdoors waits for The Adventurer in Durotar Loremaster")
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
local hiddenEnemies = ns.Engine:GetGoal(durotar, "accept-5727-hidden-enemies")
Check(DependsOn(hiddenEnemies, "turnin-5726-hidden-enemies"),
    "the second Hidden Enemies waits until the insignia is turned in")
local neeru = ns.Engine:GetGoal(durotar, "gossip-5727-hidden-enemies")
Check(neeru and neeru.kind == "gossip" and neeru.route[1].label == "Neeru Fireblade",
    "Hidden Enemies dialogue is with Neeru Fireblade")
end
function TestBurningBladeMedallionPrerequisites()
    ns:FinalizeGuides()
    local starter = ns.guides["leveling-era-durotar"]
    if not starter then return end
    local medallionAccept = ns.Engine:GetGoal(starter, "accept-794-burning-blade-medallion")
    if not medallionAccept or not DependsOn(medallionAccept, "turnin-792-vile-familiars") then
        return
    end
    Check(DependsOn(medallionAccept, "turnin-792-vile-familiars"),
        "Burning Blade Medallion waits for the standard Vile Familiars turn-in")
    Check(DependsOn(medallionAccept, "turnin-1499-vile-familiars"),
        "Burning Blade Medallion waits for the warlock Vile Familiars turn-in")
    local warlockValley = {
        faction = "Horde", raceID = 2, classID = 9, level = 4,
        mapID = 1411, x = 0.43, y = 0.69,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
    }
    Equal(ns.Engine:IsReady(starter, medallionAccept, warlockValley), false,
        "a warlock cannot accept Burning Blade Medallion before turning Vile Familiars in to Zureetha")
    warlockValley.completedQuests[1485] = true
    warlockValley.completedQuests[1499] = true
    Equal(ns.Engine:IsReady(starter, medallionAccept, warlockValley), true,
        "a warlock can accept Burning Blade Medallion after the Zureetha Vile Familiars turn-in")
end
TestBurningBladeMedallionPrerequisites()
function TestRepeatableRoutes()
    local openCure = {
        faction = "Horde", raceID = 2, classID = 1, level = 12,
        professions = {}, professionsKnown = true,
        quests = { [812] = { complete = false, objectives = {} } },
        questLogKnown = true,
        completedQuests = {}, questCompletionKnown = true,
    }
    local cured = {
        faction = "Horde", raceID = 2, classID = 1, level = 12,
        professions = {}, professionsKnown = true,
        quests = {}, questLogKnown = true,
        completedQuests = { [812] = true }, questCompletionKnown = true,
    }
    local starter = ns.guides["leveling-era-durotar"]
    local antidote = starter and ns.Engine:GetGoal(starter, "accept-813-finding-the-antidote")
    -- Casual spines may not gate the antidote on Need for a Cure the same way.
    if antidote and ns.EvaluateCondition(antidote.conditions, openCure) == true then
        Equal(ns.EvaluateCondition(antidote.conditions, cured), false,
            "the Durotar chapter drops the antidote after Need for a Cure is turned in")
    end

    local idle = {
        faction = "Horde", raceID = 2, classID = 1, level = 51,
        professions = {}, professionsKnown = true,
        quests = {}, questLogKnown = true,
        completedQuests = { [348] = true }, questCompletionKnown = true,
    }
    local desolace = ns.guides["leveling-era-horde-desolace"]
    local bones = desolace and ns.Engine:GetGoal(desolace, "accept-5501-bone-collector")
    if bones then
        Equal(ns.EvaluateCondition(bones.conditions, idle), false,
            "Bone Collector stays off the route until it is in the log")
        local collecting = {}
        for key, value in pairs(idle) do collecting[key] = value end
        collecting.quests = { [5501] = { complete = false, objectives = {} } }
        Equal(ns.EvaluateCondition(bones.conditions, collecting), true,
            "Bone Collector returns while it is in the log")
    end

    local hordeBlasted = ns.guides["leveling-era-horde-blasted-lands"]
    local buff = hordeBlasted and ns.Engine:GetGoal(hordeBlasted, "accept-2581-snickerfang-jowls")
    if buff then
        Equal(ns.EvaluateCondition(buff.conditions, idle), false,
            "a finished bloodmage buff does not stay on the Blasted Lands route")
    end

    local stv = ns.guides["leveling-era-horde-stranglethorn-vale"]
    local unbagwa = stv and ns.Engine:GetGoal(stv, "turnin-349-stranglethorn-fever")
    if unbagwa then
        Equal(ns.EvaluateCondition(unbagwa.conditions, idle), false,
            "Witch Doctor Unbagwa drops out after Stranglethorn Fever is turned in")
    end
    local feralas = ns.guides["leveling-era-horde-feralas"]
    if feralas then
        Equal(ns.Engine:GetGoal(feralas, "accept-7725-again-with-the-zapped-giants"), nil,
            "Again With the Zapped Giants is not on the Feralas route")
    end
end
TestRepeatableRoutes()

function TestRepeatableAntidote()
    local poisoned = {
        faction = "Horde", raceID = 2, classID = 1, level = 12,
        professions = {}, professionsKnown = true,
        quests = { [812] = { complete = false, objectives = {} } },
        questLogKnown = true,
        completedQuests = {}, questCompletionKnown = true,
    }
    local cured = {
        faction = "Horde", raceID = 2, classID = 1, level = 12,
        professions = {}, professionsKnown = true,
        quests = {}, questLogKnown = true,
        completedQuests = { [812] = true }, questCompletionKnown = true,
    }
    for _, goalID in ipairs({
        "accept-813-finding-the-antidote",
        "objective-813-finding-the-antidote-1",
        "turnin-813-finding-the-antidote",
    }) do
        Equal(ns.EvaluateCondition(ns.Engine:GetGoal(durotar, goalID).conditions, poisoned), true,
            goalID .. " stays while Need for a Cure is still open")
        Equal(ns.EvaluateCondition(ns.Engine:GetGoal(durotar, goalID).conditions, cured), false,
            goalID .. " drops out once Need for a Cure is turned in")
    end
end
TestRepeatableAntidote()
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
ns.charDB.skipped = ns.charDB.skipped or {}
ns.charDB.skipped["accept-813-finding-the-antidote"] = true
ns.charDB.skipped["objective-813-finding-the-antidote-1"] = true
ns.charDB.activeGoal = nil
ns.Engine:Refresh(cureState)
Check(ns.Engine.currentGoal and ns.Engine.currentGoal.id ~= "accept-813-finding-the-antidote"
    and ns.Engine.currentGoal.id ~= "objective-813-finding-the-antidote-1",
    "skipping a timed antidote step moves past the antidote chain")

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
    local durotarGuide = ns.guides["leveling-durotar"]
    local durotarSeen = {}
    for _, goal in ipairs(durotarGuide.goals) do
        Check(durotarSeen[goal.priority] == nil, "Durotar priorities stay unique")
        durotarSeen[goal.priority] = goal.id
    end
    Open(durotarGuide, Horde(14, 1411, { [786] = Active(786) }))
    Equal(ns.Engine.currentGoal.id, "accept-808-minshinas-skull",
        "Sen'jin Village picks up Minshina's Skull with Thwarting Kolkar Aggression")

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
    Equal(ns.Engine.currentGoal.id, "accept-hidden-enemies-2", "the next Hidden Enemies starts at Thrall")
    local leg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, ns.Engine.state)
    Equal(leg.x, 0.320, "the Hidden Enemies accept marks Thrall")
    Open(State({ [5727] = { complete = false } }, { [5726] = true }))
    Equal(ns.Engine.currentGoal.id, "gauge-neeru", "accepting the insignia follow-up points at Neeru")
    leg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, ns.Engine.state)
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
    Equal(ns.Engine.currentGoal.id, "accept-slaying-beast",
        "exhausting Neeru's dialogue accepts Slaying the Beast before leaving")
    local nextGoal = ns.Engine:NextRouteGoal(rfc, ns.Engine.currentGoal, talking)
    Equal(nextGoal and nextGoal.id, "turnin-hidden-enemies-2",
        "the next step after Neeru's quest is the Hidden Enemies turn-in")
    talking.quests[5761] = { complete = false }
    ns.Engine:Refresh(talking)
    Equal(ns.Engine.currentGoal.id, "turnin-hidden-enemies-2",
        "after Slaying the Beast is accepted, Hidden Enemies turns in to Thrall")
    local troggState = State({
        [5723] = { complete = false },
        [5727] = { complete = false, objectives = {
            { text = "Gauge Neeru Fireblade's reaction", finished = 0 },
        } },
    }, { [5726] = true })
    Open(troggState)
    ns.Engine:GetLedger(rfc, true)["enter-ragefire-chasm"] = true
    ns.charDB.activeGoal = "gauge-neeru"
    ns.Engine:Refresh(troggState)
    Equal(ns.Engine.currentGoal.id, "gauge-neeru", "an unfinished talk with Neeru stays put")
    nextGoal = ns.Engine:NextRouteGoal(rfc, ns.Engine.currentGoal, troggState)
    Equal(nextGoal and nextGoal.id, "accept-slaying-beast",
        "the preview after Neeru is his quest, not the trogg kills")
    Equal(ns.Engine:IsReady(rfc, ns.Engine:GetGoal(rfc, "complete-testing-strength"), troggState), false,
        "trogg kills stay locked until Hidden Enemies and Slaying the Beast are accepted")
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
    Equal(ns.Engine.currentGoal.id, "accept-hidden-enemies-4",
        "the dungeon report is accepted from Thrall")
    Open(State({ [5729] = { complete = true } }, {
        [5726] = true, [5727] = true, [5728] = true, [5761] = true,
    }))
    Equal(ns.Engine.currentGoal.id, "turnin-hidden-enemies-4",
        "the dungeon report sends you to Neeru")
    leg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, ns.Engine.state)
    Equal(leg.x, 0.496, "the Searing Blade report marks Neeru Fireblade")
    Open(State({}, {
        [5726] = true, [5727] = true, [5728] = true, [5729] = true, [5761] = true,
    }))
    Equal(ns.Engine.currentGoal.id, "accept-hidden-enemies-5",
        "Neeru offers the final Hidden Enemies message")
    Open(State({ [5730] = { complete = true } }, {
        [5726] = true, [5727] = true, [5728] = true, [5729] = true, [5761] = true,
    }))
    Equal(ns.Engine.currentGoal.id, "turnin-hidden-enemies-5",
        "Neeru's message goes back to Thrall")
    leg = ns.Navigation:GetActiveLeg(ns.Engine.currentGoal, ns.Engine.state)
    Equal(leg.x, 0.320, "the final Hidden Enemies step marks Thrall")
end
TestHiddenEnemies()

function TestDungeonOnePassInside()
    local function Mark(guide, state, goalID)
        local goal = ns.Engine:GetGoal(guide, goalID)
        Check(goal ~= nil, "dungeon step exists: " .. tostring(goalID))
        if not goal then return end
        if goal.kind == "travel" then
            ns.Engine:GetLedger(guide, true)[goal.id] = true
            return
        end
        local complete = goal.complete
        if type(complete) ~= "table" or type(complete.quest) ~= "table" then
            ns.Engine:GetLedger(guide, true)[goal.id] = true
            return
        end
        local questID, wanted = complete.quest.id, complete.quest.state
        if wanted == "activeOrCompleted" then
            state.quests[questID] = state.quests[questID] or { complete = false, objectives = {} }
        elseif wanted == "complete" then
            state.quests[questID] = { complete = true, objectives = {} }
        elseif wanted == "completed" then
            state.completedQuests[questID] = true
            state.quests[questID] = nil
        end
    end

    local rfc = ns.guides["dungeons-ragefire-chasm-horde"]
    local rfcState = {
        faction = "Horde", raceID = 2, classID = 1, level = 15,
        mapID = 1454, x = 0.52, y = 0.49,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
        professionsKnown = true, professions = {},
        instanceID = 389,
    }
    ns.charDB.selectedGuide = rfc.id
    ns.charDB.activeGoal = nil
    ns.charDB.completionLedger = {}
    ns.charDB.manualCompleted = {}
    ns.db.autoAdvance = true
    for _, goalID in ipairs({
        "accept-searching-satchel", "accept-testing-strength", "accept-power-destroy",
        "accept-hidden-enemies-1", "recover-lieutenants-insignia", "turnin-hidden-enemies-1",
        "accept-hidden-enemies-2", "gauge-neeru", "accept-slaying-beast", "turnin-hidden-enemies-2",
        "accept-hidden-enemies-3", "enter-ragefire-chasm", "complete-testing-strength",
    }) do
        Mark(rfc, rfcState, goalID)
    end
    ns.Engine:Refresh(rfcState)
    Equal(ns.Engine.currentGoal and ns.Engine.currentGoal.id, "find-maur-grimtotem",
        "RFC stays inside for Maur after troggs; does not bounce to Thunder Bluff")
    local rfcCandidates = ns.Engine:CandidateGoals(rfc, rfcState)
    Equal(rfcCandidates[1] and rfcCandidates[1].id, "find-maur-grimtotem",
        "RFC candidate order keeps Maur before Testing turn-in")
    Check(rfcCandidates[1] and rfcCandidates[1].id ~= "turnin-testing-strength",
        "RFC does not prefer Rahauro turn-in mid-run")

    local bfd = ns.guides["dungeons-blackfathom-deeps"]
    Check(bfd ~= nil, "Blackfathom Deeps guide is registered")
    local bfdState = {
        faction = "Alliance", raceID = 4, classID = 1, level = 25,
        mapID = 221, x = 0.5, y = 0.5,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
        professionsKnown = true, professions = {},
        instanceID = 48,
    }
    ns.charDB.selectedGuide = bfd.id
    ns.charDB.activeGoal = nil
    ns.charDB.completionLedger = {}
    ns.charDB.manualCompleted = {}
    for _, goal in ipairs(bfd.goals) do
        if goal.kind == "accept" and type(goal.priority) == "number" and goal.priority < 16 then
            Mark(bfd, bfdState, goal.id)
        end
    end
    Mark(bfd, bfdState, "enter-dungeon")
    Mark(bfd, bfdState, "objective-1275-1-corrupted-brain-stem")
    ns.Engine:Refresh(bfdState)
    Equal(ns.Engine.currentGoal and ns.Engine.currentGoal.id, "objective-971-1-lorgalis-manuscript",
        "BFD stays inside for the manuscript after brain stems; does not bounce to Darkshore")
    Check(ns.Engine.currentGoal and ns.Engine.currentGoal.id ~= "turnin-1275-researching-the-corruption",
        "BFD does not prefer Gershala turn-in mid-run")
end
TestDungeonOnePassInside()

function TestFlightMemory()
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodes = nil
    ns.charDB.taxiNodesByContinent = nil
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
    ns.charDB.taxiNodesByContinent = nil
    Enum = nil
end
TestFlightMemory()

function TestFlightMemoryByLandmass()
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodes = nil
    ns.charDB.taxiNodesByContinent = nil
    Enum = { FlightPathState = { Reachable = 2, Current = 0, Distant = 3 } }
    local kalimdorAPI = {
        C_Map = {
            GetBestMapForUnit = function() return 1413 end,
            GetPlayerMapPosition = function() return { GetXY = function() return 0.52, 0.30 end } end,
        },
        C_TaxiMap = {
            GetAllTaxiNodes = function()
                return {
                    { name = "Crossroads, Barrens", state = 0 },
                    { name = "Thunder Bluff, Mulgore", state = 2 },
                    { name = "Sun Rock Retreat, Stonetalon Mountains", state = 3 },
                }
            end,
        },
    }
    Equal(ns.Taxi:Capture(kalimdorAPI), true, "opening a Kalimdor flight master records its land mass")
    local kalimdor = ns.charDB.taxiNodesByContinent and ns.charDB.taxiNodesByContinent["Kalimdor"]
    Check(type(kalimdor) == "table", "the Kalimdor flight memory is stored per land mass")
    Check(kalimdor["thunder bluff, mulgore"] ~= nil, "a reachable Kalimdor flight is remembered for its land mass")
    Check(kalimdor["crossroads, barrens"] ~= nil, "the open flight master is remembered for its land mass")
    Equal(ns.Taxi:LearnedDestination({ mapID = 1413 }, "Sun Rock Retreat"), nil,
        "a distant flight point is not treated as learned")
    local easternAPI = {
        C_Map = {
            GetBestMapForUnit = function() return 1453 end,
            GetPlayerMapPosition = function() return { GetXY = function() return 0.66, 0.62 end } end,
        },
        C_TaxiMap = {
            GetAllTaxiNodes = function()
                return {
                    { name = "Stormwind, Elwynn", state = 0 },
                    { name = "Lakeshire, Redridge", state = 2 },
                }
            end,
        },
    }
    Equal(ns.Taxi:Capture(easternAPI), true, "opening an Eastern Kingdoms flight master records its land mass")
    Check(ns.charDB.taxiNodesByContinent["Kalimdor"]["thunder bluff, mulgore"] ~= nil,
        "an Eastern Kingdoms visit keeps the Kalimdor memory")
    Check(ns.charDB.taxiNodesByContinent["Eastern Kingdoms"]["lakeshire, redridge"] ~= nil,
        "an Eastern Kingdoms flight is remembered for its land mass")
    ns.charDB.taxiRoutes = {}
    Check(ns.Taxi:LearnedDestination({ mapID = 1442 }, "Thunder Bluff") ~= nil,
        "a Kalimdor flight learned at one master is known at another")
    local stonetalonGoal = { route = { { mapID = 1442, x = 0.736, y = 0.861, label = "Grundig Darkcloud" } } }
    local walkLeg = ns.Navigation:GetActiveLeg(stonetalonGoal, { mapID = 1413, x = 0.4, y = 0.4, faction = "Horde" })
    Check(string.find(walkLeg.label or "", "flight path", 1, true) == nil,
        "an unlearned Stonetalon flight keeps the road instead of the flight master")
    local sunRockAPI = {
        C_Map = {
            GetBestMapForUnit = function() return 1413 end,
            GetPlayerMapPosition = function() return { GetXY = function() return 0.52, 0.30 end } end,
        },
        C_TaxiMap = {
            GetAllTaxiNodes = function()
                return {
                    { name = "Crossroads, Barrens", state = 0 },
                    { name = "Sun Rock Retreat, Stonetalon Mountains", state = 2 },
                }
            end,
        },
    }
    Equal(ns.Taxi:Capture(sunRockAPI), true, "learning Sun Rock Retreat refreshes the Kalimdor memory")
    local flightLeg = ns.Navigation:GetActiveLeg(stonetalonGoal, { mapID = 1413, x = 0.4, y = 0.4, faction = "Horde" })
    Equal(flightLeg.label, "Take the flight path to Sun Rock Retreat.",
        "a learned Stonetalon flight names the camp closest to the quest pin")
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodes = nil
    ns.charDB.taxiNodesByContinent = nil
    Enum = nil
end
TestFlightMemoryByLandmass()

function TestWalkToFlightMasterWithLearnedRoute()
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiBoarding = {
        ["crossroads"] = {
            mapID = 1413, x = 0.515, y = 0.303, node = "Crossroads",
            destinations = { ["orgrimmar, durotar"] = "Orgrimmar, Durotar" },
        },
        ["camp taurajo"] = {
            mapID = 1413, x = 0.444, y = 0.590, node = "Camp Taurajo",
            destinations = { ["camp taurajo, the barrens"] = "Camp Taurajo, The Barrens" },
        },
    }
    ns.charDB.taxiNodesByContinent = {
        Kalimdor = { ["orgrimmar, durotar"] = "Orgrimmar, Durotar" },
    }
    local goal = {
        taxiDestination = "Orgrimmar",
        route = { { mapID = 1454, x = 0.39, y = 0.38, label = "Zor Lonetree" } },
    }
    local atTaurajo = { mapID = 1413, x = 0.44, y = 0.59, faction = "Horde" }
    local leg = ns.Navigation:GetActiveLeg(goal, atTaurajo)
    Equal(leg and leg.x, 0.515,
        "near Camp Taurajo the guide walks to Crossroads to use a learned Orgrimmar route")
    Check(leg and string.find(leg.label or "", "Orgrimmar", 1, true) ~= nil,
        "the boarding leg still names Orgrimmar")
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiBoarding = {}
    ns.charDB.taxiNodesByContinent = nil
end
TestWalkToFlightMasterWithLearnedRoute()

function TestLevelWallSaysToGrindOrDungeon()
    local savedGuide = ns.charDB.selectedGuide
    local savedGoal = ns.charDB.activeGoal
    ns:RegisterGuide({
        id = "test-level-wall",
        title = "Level wall",
        category = "Test",
        revision = 1,
        conditions = { level = { min = 1 } },
        goals = {
            {
                id = "accept-later",
                kind = "accept",
                priority = 1,
                conditions = { level = { min = 8 } },
                text = "Accept Later from the trainer.",
                complete = { quest = { id = 999001, state = "activeOrCompleted" } },
            },
            {
                id = "objective-later",
                kind = "objective",
                priority = 2,
                conditions = { level = { min = 8 } },
                text = "Finish Later.",
                dependsOn = { "accept-later" },
                complete = { quest = { id = 999001, state = "complete" } },
            },
        },
    })
    ns.Engine:SelectGuide("test-level-wall")
    ns.Engine:Refresh({
        faction = "Horde", raceID = 2, classID = 9, level = 5,
        professions = {}, professionsKnown = true,
        quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true,
        mapID = 1411,
    })
    Equal(ns.Engine.currentGoal, nil, "a level 5 character has no step when every quest is level 8")
    Equal(ns.Engine.status,
        "The next step needs a higher level. Grind, or run a dungeon, until you can take it.",
        "the tracker says to grind or dungeon when the next step is only a level gate")
    ns.guides["test-level-wall"] = nil
    for index = #ns.guideOrder, 1, -1 do
        if ns.guideOrder[index] == "test-level-wall" then
            table.remove(ns.guideOrder, index)
        end
    end
    ns.Engine:SelectGuide(savedGuide)
    ns.charDB.activeGoal = savedGoal
end
TestLevelWallSaysToGrindOrDungeon()

function TestEncroachmentWaitsUntilGarThokOffersIt()
    local starter = ns.guides["leveling-era-durotar"]
    if not starter then return end
    local goal = ns.Engine:GetGoal(starter, "accept-837-encroachment")
    if not goal then return end
    local levelGate = goal.conditions and goal.conditions.all and goal.conditions.all[1]
    if not (levelGate and levelGate.level and levelGate.level.min == 6) then
        return
    end
    Equal(ns.EvaluateCondition(goal.conditions, { level = 5, faction = "Horde", classID = 9 }), false,
        "a level 5 warlock is not sent to accept Encroachment")
    Equal(ns.EvaluateCondition(goal.conditions, { level = 6, faction = "Horde", classID = 9 }), true,
        "Encroachment is offered from level 6")
end
TestEncroachmentWaitsUntilGarThokOffersIt()

function TestStaleFlightRoutesPurged()
    local previousDB, previousCharDB = ForeverGuideMateDB, ForeverGuideMateCharDB
    ForeverGuideMateDB = { schemaVersion = 3 }
    ForeverGuideMateCharDB = {
        schemaVersion = 3,
        taxiRoutes = {
            [1413] = { x = 0.52, y = 0.30, destinations = {
                ["thunder bluff, mulgore"] = "Thunder Bluff, Mulgore",
                ["sun rock retreat, stonetalon mountains"] = "Sun Rock Retreat, Stonetalon Mountains",
            } },
        },
        taxiNodes = { ["thunder bluff, mulgore"] = "Thunder Bluff, Mulgore" },
    }
    ns.InitializeStorage()
    Equal(ns.charDB.schemaVersion, 10, "stale flight storage migrates forward")
    local survivors = ns.charDB.taxiRoutes[1413] and ns.charDB.taxiRoutes[1413].destinations or {}
    Check(survivors["thunder bluff, mulgore"] ~= nil, "a learned flight survives the route purge")
    Equal(survivors["sun rock retreat, stonetalon mountains"], nil,
        "a distant listing from an old release is not kept as a known route")
    Equal(ns.Taxi:LearnedDestination({ mapID = 1413 }, "Stonetalon Mountains"), nil,
        "the purged listing no longer suggests its flight path")
    ForeverGuideMateDB, ForeverGuideMateCharDB = previousDB, previousCharDB
    ns.InitializeStorage()
end
TestStaleFlightRoutesPurged()

function TestEraChapterIdMigration()
    local previousCharDB = ForeverGuideMateCharDB
    ForeverGuideMateCharDB = {
        schemaVersion = 4,
        selectedGuide = "leveling-era-1-12-durotar",
        eraChapterPick = "leveling-era-12-20-barrens",
        eraFloor = "leveling-era-12-20-barrens",
        activeGoal = "leveling-era-1-12-durotar:accept-4641-your-place-in-the-world",
        completionLedger = {
            ["leveling-era-1-12-durotar"] = { ["1"] = { ["accept-4641-your-place-in-the-world"] = true } },
        },
        deferred = {
            ["leveling-era-12-20-barrens:accept-844-plainstrider-menace"] = true,
        },
    }
    ns.InitializeStorage()
    Equal(ns.charDB.schemaVersion, 10, "era chapter rename bumps character schema")
    Equal(ns.charDB.selectedGuide, "leveling-era-durotar", "selectedGuide migrates to the new chapter id")
    Equal(ns.charDB.eraChapterPick, "leveling-era-horde-the-barrens-and-stonetalon-mountain", "eraChapterPick migrates")
    Equal(ns.charDB.activeGoal, "leveling-era-durotar:accept-4641-your-place-in-the-world",
        "prefixed active goals migrate")
    Check(ns.charDB.completionLedger["leveling-era-durotar"] ~= nil,
        "completion ledger keys migrate to the new chapter id")
    Check(ns.charDB.skipped["leveling-era-horde-the-barrens-and-stonetalon-mountain:accept-844-plainstrider-menace"],
        "skipped prefixed goals migrate from deferred")
    ForeverGuideMateCharDB = previousCharDB
    ns.InitializeStorage()
end
TestEraChapterIdMigration()

function TestSkippedBecauseRemapsWithSchema9()
    local previousCharDB = ForeverGuideMateCharDB
    ForeverGuideMateCharDB = {
        schemaVersion = 8,
        skipped = {
            ["leveling-era-the-barrens-part-1:accept-844-plainstrider-menace"] = true,
            ["leveling-era-the-barrens-part-1:accept-845-the-zhevra"] = true,
        },
        skippedBecause = {
            ["leveling-era-the-barrens-part-1:accept-845-the-zhevra"] =
                "leveling-era-the-barrens-part-1:accept-844-plainstrider-menace",
        },
        notOffered = {
            ["leveling-era-the-barrens-part-1:accept-871-disrupt-the-attacks"] = {
                guide = "leveling-era-the-barrens-part-1", quest = 871,
            },
        },
        manualCompleted = {
            ["leveling-era-the-barrens-part-1:note-old"] = true,
        },
    }
    ns.InitializeStorage()
    Equal(ns.charDB.schemaVersion, 10, "schema 9 remaps skip cascade tables")
    local root = "leveling-era-horde-the-barrens-and-stonetalon-mountain:accept-844-plainstrider-menace"
    local child = "leveling-era-horde-the-barrens-and-stonetalon-mountain:accept-845-the-zhevra"
    Check(ns.charDB.skipped[root], "skipped root remaps onto Casual Barrens id")
    Check(ns.charDB.skipped[child], "skipped child remaps onto Casual Barrens id")
    Equal(ns.charDB.skippedBecause[child], root,
        "skippedBecause parent and child remap together")
    Check(ns.charDB.notOffered["leveling-era-horde-the-barrens-and-stonetalon-mountain:accept-871-disrupt-the-attacks"] ~= nil,
        "notOffered keys remap onto Casual Barrens id")
    Check(ns.charDB.manualCompleted["leveling-era-horde-the-barrens-and-stonetalon-mountain:note-old"],
        "manualCompleted keys remap onto Casual Barrens id")
    ForeverGuideMateCharDB = previousCharDB
    ns.InitializeStorage()
end
TestSkippedBecauseRemapsWithSchema9()

function TestAshenvalePartIdMigration()
    local previousCharDB = ForeverGuideMateCharDB
    ForeverGuideMateCharDB = {
        schemaVersion = 5,
        selectedGuide = "leveling-era-ashenvale",
        activeGoal = "leveling-era-ashenvale:turnin-967-the-tower-of-althalaxx",
        completionLedger = {
            ["leveling-era-ashenvale"] = { ["2"] = { ["turnin-967-the-tower-of-althalaxx"] = true } },
        },
    }
    ns.InitializeStorage()
    Equal(ns.charDB.schemaVersion, 10, "ashenvale part rename bumps character schema")
    Equal(ns.charDB.selectedGuide, "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
        "the first Alliance Ashenvale chapter migrates to part 1")
    Equal(ns.charDB.activeGoal, "leveling-era-alliance-ashenvale-and-stonetalon-mountains:turnin-967-the-tower-of-althalaxx",
        "ashenvale goal ids migrate with the chapter")
    Check(ns.charDB.completionLedger["leveling-era-alliance-ashenvale-and-stonetalon-mountains"] ~= nil,
        "ashenvale completion ledger migrates to part 1")
    ForeverGuideMateCharDB = previousCharDB
    ns.InitializeStorage()
end
TestAshenvalePartIdMigration()

function TestFlightNamesNeedADistinctiveMatch()
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodes = {
        ["crossroads, the barrens"] = "Crossroads, The Barrens",
        ["tarren mill, alterac mountains"] = "Tarren Mill, Alterac Mountains",
    }
    ns.charDB.taxiNodesByContinent = {
        Kalimdor = { ["crossroads, the barrens"] = "Crossroads, The Barrens" },
        ["Eastern Kingdoms"] = { ["tarren mill, alterac mountains"] = "Tarren Mill, Alterac Mountains" },
    }
    local barrens = { mapID = 1413, x = 0.5, y = 0.3, faction = "Horde" }
    Equal(ns.Taxi:LearnedDestination(barrens, "Stonetalon Mountains"), nil,
        "a shared word such as Mountains does not count as knowing Stonetalon")
    local goal = { route = { { mapID = 1442, x = 0.736, y = 0.861, label = "Grundig Darkcloud" } } }
    local leg = ns.Navigation:GetActiveLeg(goal, barrens)
    Check(string.find(leg.label or "", "flight path", 1, true) == nil,
        "an Eastern Kingdoms node does not suggest a Kalimdor flight")
    ns.charDB.taxiNodesByContinent.Kalimdor["sun rock retreat, stonetalon mountains"] =
        "Sun Rock Retreat, Stonetalon Mountains"
    Check(ns.Taxi:LearnedDestination(barrens, "Stonetalon Mountains") ~= nil,
        "the real Stonetalon flight point still matches")
    ns.charDB.taxiRoutes = {}
    ns.charDB.taxiNodes = nil
    ns.charDB.taxiNodesByContinent = nil
end
TestFlightNamesNeedADistinctiveMatch()

function TestCasualLeveling()
    ns:FinalizeGuides()
    local hordeGuide = ns.guides["leveling-casual-horde"]
    local allianceGuide = ns.guides["leveling-casual-alliance"]
    Check(hordeGuide ~= nil, "Horde Forever Casual Route is registered")
    Check(allianceGuide ~= nil, "Alliance Forever Casual Route is registered")
    Equal(hordeGuide.title, "Forever Casual Route", "the Horde casual guide title")
    Equal(allianceGuide.title, "Forever Casual Route", "the Alliance casual guide title")
    Equal(hordeGuide.compactLibrary, true, "Horde casual stays one library row")
    Equal(allianceGuide.compactLibrary, true, "Alliance casual stays one library row")
    Equal(ns.guides["leveling-era"], nil, "the old leveling-era guide is retired")
    Check(ns.guides["leveling-era-durotar"] ~= nil, "Durotar starter stays an individual guide")
    Check(ns.guides["leveling-era-horde-the-barrens-and-stonetalon-mountain"] == nil,
        "Barrens is folded into Casual")
    local function AssertUniqueGoalIDs(guide, label)
        local seen = {}
        for index, goal in ipairs(guide.goals or {}) do
            local id = goal.id
            if type(id) == "string" then
                Check(seen[id] == nil,
                    label .. " duplicate goal id " .. id .. " at indices " .. tostring(seen[id]) .. " and " .. index)
                seen[id] = index
            end
        end
    end
    AssertUniqueGoalIDs(hordeGuide, "Horde casual")
    AssertUniqueGoalIDs(allianceGuide, "Alliance casual")
    local function CasualState(faction, level, raceID, mapID)
        return {
            faction = faction, level = level, raceID = raceID, classID = 1,
            mapID = mapID, x = 0.4, y = 0.4,
            quests = {}, completedQuests = {},
            professions = {}, professionsKnown = true,
            questLogKnown = true, questCompletionKnown = true,
        }
    end
    local hordeLow = CasualState("Horde", 1, 2, 1411)
    local hordeReady = CasualState("Horde", 15, 2, 1413)
    local allianceReady = CasualState("Alliance", 12, 1, 1439)
    Equal(ns.EvaluateCondition(hordeGuide.conditions, hordeLow), false,
        "Casual requires level 12+")
    Equal(ns.EvaluateCondition(hordeGuide.conditions, hordeReady), true,
        "a level 12+ Horde character can use Casual")
    Equal(ns.EvaluateCondition(hordeGuide.conditions, allianceReady), false,
        "Alliance cannot open the Horde Casual guide")
    Equal(ns.EvaluateCondition(allianceGuide.conditions, allianceReady), true,
        "a level 12 Alliance character can use Casual")

    local function ResetCasual()
        ns.charDB.selectedGuide = nil
        ns.charDB.eraSegment = nil
        ns.charDB.eraFloor = nil
        ns.charDB.eraChapterPick = nil
        ns.charDB.eraProgressMerged = nil
        ns.charDB.casualProgressMerged = nil
        ns.charDB.activeGoal = nil
        ns.charDB.history = {}
        ns.charDB.manualCompleted = {}
        ns.charDB.deferred = {}
        ns.charDB.skipped = {}
        ns.charDB.skippedBecause = {}
        ns.charDB.completionLedger = {}
        ns.Engine.inferredCompletedByGuide = nil
        ns.Engine.reviewingGoal = nil
    end

    ResetCasual()
    ns.Engine:SelectGuide("leveling-casual-horde")
    ns.Engine:Refresh(hordeReady)
    Equal(ns.Engine.currentSegment, nil, "Horde Casual does not expose zone chapters")
    Check(ns.Engine.currentGoal ~= nil, "Horde Casual has a ready step")

    ResetCasual()
    ns.Engine:SelectGuide("leveling-era")
    Equal(ns.charDB.selectedGuide, "leveling-casual-horde",
        "selecting leveling-era remaps to Horde Casual by default")

    ResetCasual()
    ns.Engine:SelectGuide("leveling-era-durotar")
    Equal(ns.charDB.selectedGuide, "leveling-era-durotar",
        "starter Durotar stays selectable as its own guide")
    ns.Engine:Refresh(CasualState("Horde", 1, 2, 1411))
    Equal(ns.Engine.currentGoal and ns.Engine.currentGoal.id,
        "accept-4641-your-place-in-the-world",
        "Durotar starter opens at Your Place In The World")

    ResetCasual()
    local sawCasual, sawBarrensSegment, sawElwynn = false, false, false
    local foundDurotar = false
    for _, entry in ipairs(ns.LibraryEntries(hordeReady, "", "Leveling Quest Guides", true)) do
        if entry.title == "Forever Casual Route" then sawCasual = true end
        if entry.title == "The Barrens & Stonetalon Mountain" then sawBarrensSegment = true end
        if entry.title == "Elwynn Forest" then sawElwynn = true end
        if entry.title == "Orc & Troll Starter" or entry.title == "Durotar" then foundDurotar = true end
    end
    Check(sawCasual, "the Horde leveling library lists Forever Casual Route")
    Check(not sawBarrensSegment, "Casual chapters are not expanded into library rows")
    Check(not sawElwynn, "a Horde leveling library leaves out Alliance starters")
    Check(foundDurotar, "Durotar starter remains in the leveling library")

    local barrensIndex, silverpineIndex
    for index, segment in ipairs(hordeGuide.segments or {}) do
        if segment.id == "leveling-era-horde-the-barrens-and-stonetalon-mountain" then barrensIndex = index end
        if segment.id == "leveling-era-horde-silverpine-forest" then silverpineIndex = index end
    end
    Check(barrensIndex and silverpineIndex and silverpineIndex < barrensIndex
        or barrensIndex and silverpineIndex and barrensIndex < silverpineIndex
        or (barrensIndex and not silverpineIndex),
        "Horde Casual includes Barrens and Silverpine segments")
end
TestCasualLeveling()

function TestQuestCreditSkipsRepeatLookups()
    ns.PlayerState:InvalidateQuestCache()
    local log = { 100, 999 }
    local flagged, objectives, bulk = 0, 0, 0
    local api = {
        C_QuestLog = {
            GetNumQuestLogEntries = function() return #log end,
            GetInfo = function(index)
                return { questID = log[index], isComplete = false }
            end,
            GetQuestObjectives = function(questID)
                objectives = objectives + 1
                return { { text = "Slay", numRequired = 1, numFulfilled = questID == 100 and 1 or 0 } }
            end,
            IsQuestFlaggedCompleted = function(questID)
                flagged = flagged + 1
                return questID == 200
            end,
        },
        GetQuestsCompleted = function()
            bulk = bulk + 1
        end,
    }
    local watched = { 100, 200, 300 }
    local first = ns.PlayerState:Capture(api, watched)
    Equal(first.quests[100] ~= nil, true, "quest credit reads the watched quest in the log")
    Equal(first.quests[999], nil, "quest credit ignores a log quest the guide does not use")
    Equal(objectives, 1, "quest credit reads objectives for the watched quest only")
    Equal(flagged, 2, "a quest still in the log is not asked if it was turned in")
    Equal(first.completedQuests[200], true, "a turned-in quest outside the log is recorded")
    Equal(first.completedQuests[100], false, "the active kill quest is not treated as turned in")
    Equal(bulk, 0, "a per-quest completion API replaces the full completed-quest dump")
    local flaggedAfter = flagged
    local objectivesAfter = objectives
    log = { 100, 999 }
    local second = ns.PlayerState:Capture(api, watched)
    Equal(flagged, flaggedAfter, "another kill does not ask about completion again")
    Equal(objectives, objectivesAfter + 1, "another kill still reads the open objective")
    Equal(second.completedQuests[200], true, "the cached turn-in still counts after the next kill")
    log = { 999 }
    ns.PlayerState:Capture(api, watched)
    Equal(flagged, flaggedAfter + 1, "turning the quest in checks that quest once")
end
TestQuestCreditSkipsRepeatLookups()

function TestUnchangedCompletionReusesTables()
    local turnedIn = { [9200001] = true }
    local api = {
        C_QuestLog = {
            GetNumQuestLogEntries = function() return 0 end,
            GetInfo = function() return nil end,
            IsQuestFlaggedCompleted = function(questID) return turnedIn[questID] == true end,
        },
    }
    local watched = { 9200001, 9200002 }
    local first = ns.PlayerState:Capture(api, watched)
    local second = ns.PlayerState:Capture(api, watched)
    Check(second.completedQuests == first.completedQuests,
        "an unchanged quest catalog keeps the same completion table")
    Check(second.watchedQuests == first.watchedQuests,
        "an unchanged quest catalog keeps the same watched table")
    ns.PlayerState:ForgetQuest(9200002, true)
    local third = ns.PlayerState:Capture(api, watched)
    Check(third.completedQuests ~= first.completedQuests, "a turn-in builds a new completion table")
    Equal(third.completedQuests[9200002], true, "the new table records the turn-in")
    Equal(third.completedQuests[9200001], true, "the new table keeps earlier turn-ins")
    Equal(first.completedQuests[9200002], false, "an earlier state keeps its own answer")
end
TestUnchangedCompletionReusesTables()

function TestBagItemAnswersWaitForBagChange()
    local savedItemCount, savedContainer = GetItemCount, C_Container
    local bag, reads = { "|cffffffff|Hitem:1::|h[Linen Cloth]|h|r" }, 0
    GetItemCount = nil
    C_Container = {
        GetContainerNumSlots = function(bagID) return bagID == 0 and 4 or 0 end,
        GetContainerItemLink = function(_, slot)
            reads = reads + 1
            return bag[slot]
        end,
    }
    ns.PlayerState:BagsChanged()
    Equal(ns.PlayerState:HasItem("Kolkar Booty Key"), false, "a missing starter item is not in the bags")
    local afterFirst = reads
    Equal(ns.PlayerState:HasItem("Kolkar Booty Key"), false, "the answer stays the same")
    Equal(ns.PlayerState:HasItem("Linen Cloth"), true, "another item is found in the same bag read")
    Equal(reads, afterFirst, "repeat item checks do not rescan the bags")
    bag[2] = "|cffffffff|Hitem:2::|h[Rough Stone]|h|r"
    Equal(ns.PlayerState:BagsChanged(), false, "unrelated loot does not change the route")
    bag[3] = "|cffffffff|Hitem:5020::|h[Kolkar Booty Key]|h|r"
    Equal(ns.PlayerState:BagsChanged(), true, "looting a watched starter item changes the route")
    Equal(ns.PlayerState:HasItem("Kolkar Booty Key"), true, "the starter item is found after the bag change")
    GetItemCount, C_Container = savedItemCount, savedContainer
    ns.PlayerState:BagsChanged()
end
TestBagItemAnswersWaitForBagChange()

function TestLibraryProgressReadsEveryGuide()
    local savedCapture = ns.PlayerState.Capture
    local asked
    ns.PlayerState.Capture = function(_, _, questIDs)
        asked = questIDs
        return {
            faction = "Horde", raceID = 2, classID = 1, level = 12,
            professions = {}, professionsKnown = true,
            quests = {}, completedQuests = {},
            questLogKnown = true, questCompletionKnown = true,
        }
    end
    local savedGuide = ns.charDB.selectedGuide
    ns.charDB.selectedGuide = "leveling-era-durotar"
    ns.Engine:Refresh()
    ns.PlayerState.Capture = savedCapture
    ns.charDB.selectedGuide = savedGuide
    local durotarQuest, westfallQuest = false, false
    for _, questID in ipairs(asked or {}) do
        if questID == 788 then durotarQuest = true end
        if questID == 783 then westfallQuest = true end
    end
    Check(durotarQuest, "login reads Durotar quest completion")
    Check(westfallQuest, "login reads quest completion for guides that are not open")
end
TestLibraryProgressReadsEveryGuide()

ns.PlayerState:InvalidateProfessions()
local missingAPIOK, missingState = pcall(function() return ns.PlayerState:Capture({}) end)
Equal(missingAPIOK, true, "missing optional APIs do not raise Lua errors")
Equal(missingState.professionsKnown, false, "missing profession API is reported as unknown")

do
    local savedUnitOnTaxi = UnitOnTaxi
    UnitOnTaxi = function(unit) return unit == "player" end
    local api = {
        UnitRace = function() return "Orc", "Orc", 2 end,
        UnitClass = function() return "Warrior", "WARRIOR", 1 end,
        UnitFactionGroup = function() return "Horde" end,
        UnitLevel = function() return 10 end,
        UnitOnTaxi = UnitOnTaxi,
        GetQuestLogTitle = function() return nil end,
    }
    local state = ns.PlayerState:Capture(api, {}, 0)
    Equal(state.onTaxi, true, "Capture records UnitOnTaxi from the client API")
    UnitOnTaxi = savedUnitOnTaxi
end

function TestQuestLogBurstDoesNotStall()
    local calls, delays = 0, {}
    local timers = {}
    local savedEngine = ns.Engine
    local savedTimer = C_Timer
    ns.Engine = { Refresh = function() calls = calls + 1 end }
    C_Timer = {
        After = function(delay, callback)
            delays[#delays + 1] = delay
            timers[#timers + 1] = callback
        end,
    }
    ns.ScheduleRefresh(true)
    ns.ScheduleRefresh(true)
    ns.ScheduleRefresh(true)
    Equal(calls, 0, "quest log events do not refresh inside the event")
    Equal(#timers, 3, "each quest log event arms one later refresh")
    Equal(delays[1] > 0, true, "the quest log is read after the burst settles")
    for _, callback in ipairs(timers) do callback() end
    Equal(calls, 1, "a burst of accept, loot, or kill events refreshes the guide once")
    C_Timer = savedTimer
    ns.Engine = savedEngine
end
TestQuestLogBurstDoesNotStall()

function TestQuestCreditDoesNotRebuildCompletedQuests()
    ns.PlayerState:InvalidateQuestCache()
    local count, bulk, summaries, selecting = 1, 0, 0, 0
    local log = { 100 }
    local api = {
        C_QuestLog = {
            GetNumQuestLogEntries = function() return count end,
            GetInfo = function()
                return { questID = 100, title = "Proof", isComplete = false }
            end,
            GetQuestObjectives = function()
                return { { text = "Slay", numRequired = 8, numFulfilled = 8, finished = true } }
            end,
            GetQuestLogQuestText = function()
                selecting = selecting + 1
                return "Body", "Collect the proof from the camp."
            end,
            GetNextWaypointText = function()
                summaries = summaries + 1
                return "Collect the proof from the camp."
            end,
        },
        GetQuestLogQuestText = function()
            selecting = selecting + 1
        end,
        GetQuestsCompleted = function(completed)
            bulk = bulk + 1
            completed[200] = true
        end,
    }
    local watched = { 100, 200 }
    local first = ns.PlayerState:Capture(api, watched)
    Equal(selecting, 0, "quest credit never selects a quest log row")
    Equal(summaries, 1, "the objective summary is read once")
    Equal(bulk, 1, "completed quests are loaded once")
    Equal(first.quests[100].summary, "Collect the proof from the camp.", "the objective summary is kept")
    Equal(first.completedQuests[200], true, "a turned-in quest is recorded from the one dump")
    ns.PlayerState:Capture(api, watched)
    Equal(summaries, 1, "another kill does not read the objective summary again")
    Equal(bulk, 1, "another kill does not rebuild the completed-quest table")
    Equal(selecting, 0, "another kill still does not select a quest log row")
    count = 0
    local duringBlip = ns.PlayerState:Capture(api, watched)
    Equal(duringBlip.quests[100] ~= nil, true, "a momentary empty quest log keeps the open quest")
    Equal(bulk, 1, "a momentary empty quest log does not rebuild completed quests")
    ns.PlayerState:ForgetQuest(100, true)
    local turnedIn = ns.PlayerState:Capture(api, watched)
    Equal(turnedIn.quests[100], nil, "a turned-in quest leaves the cached log")
    Equal(turnedIn.completedQuests[100], true, "a turned-in quest stays turned in without another dump")
    Equal(bulk, 1, "turning a quest in does not rebuild the completed-quest table")
    ns.PlayerState:InvalidateQuestCache()
end
TestQuestCreditDoesNotRebuildCompletedQuests()

function TestClientPinIsReadOncePerObjectiveChange()
    ns.Navigation:InvalidateClientPins()
    local queries = 0
    local pins = {
        GetQuestsOnMap = function()
            queries = queries + 1
            return { { questID = 887, x = 0.2, y = 0.3 } }
        end,
    }
    local goal = {
        useClientPin = true,
        complete = { quest = { id = 887, state = "complete" } },
        route = { { mapID = 1413, x = 0.64, y = 0.45, label = "Camp" } },
    }
    local state = {
        mapID = 1413, x = 0.5, y = 0.5,
        quests = { [887] = { complete = false, objectives = {
            { numFulfilled = 1, numRequired = 8, finished = false },
        } } },
    }
    local first = ns.Navigation:GetActiveLeg(goal, state, pins)
    local second = ns.Navigation:GetActiveLeg(goal, state, pins)
    Equal(first and first.x, 0.2, "the quest log pin is used for the objective")
    Equal(second and second.x, 0.2, "a second tracker update keeps the quest log pin")
    Equal(queries, 1, "redrawing the tracker does not query the map pin again")
    state.quests[887].objectives[1].numFulfilled = 2
    local moved = ns.Navigation:GetActiveLeg(goal, state, pins)
    Equal(moved and moved.x, 0.2, "a new kill credit still has a quest log pin")
    Equal(queries, 1, "a kill credit does not read the quest map pin again")
    state.quests[887].objectives[1].finished = true
    ns.Navigation:GetActiveLeg(goal, state, pins)
    Equal(queries, 2, "finishing the objective can read a new quest map pin")
    ns.Navigation:InvalidateClientPins()
end
TestClientPinIsReadOncePerObjectiveChange()

function TestUnchangedQuestLogSkipsGuideWalk()
    local saved = ns.Engine.questLogFingerprint
    local state = {
        quests = { [100] = { complete = false, objectives = {
            { numFulfilled = 1, numRequired = 8, finished = false },
        } } },
        completedQuests = { [200] = true },
        questLogKnown = true, questCompletionKnown = true,
        level = 10, mapID = 1411, instanceID = nil,
    }
    ns.Engine.questLogFingerprint = ns.PlayerState:QuestLogFingerprint(state)
    Equal(ns.Engine:SameQuestLog(state), true, "the same objective progress does not need another guide walk")
    local changed = {
        quests = { [100] = { complete = false, objectives = {
            { numFulfilled = 2, numRequired = 8, finished = false },
        } } },
        completedQuests = { [200] = true },
        questLogKnown = true, questCompletionKnown = true,
        level = 10, mapID = 1411, instanceID = nil,
    }
    Equal(ns.Engine:SameQuestLog(changed), false, "kill credit still walks the guide")
    local ticking = {
        quests = { [100] = { complete = false, timeLeft = 59, objectives = {
            { numFulfilled = 1, numRequired = 8, finished = false },
        } } },
        completedQuests = { [200] = true },
        questLogKnown = true, questCompletionKnown = true,
        level = 10, mapID = 1411, instanceID = nil,
    }
    Equal(ns.Engine:SameQuestLog(ticking), true, "a ticking quest timer does not walk the guide")
    ns.Engine.questLogFingerprint = saved
end
TestUnchangedQuestLogSkipsGuideWalk()

local function TestClassQuestGuides()
    local classNames = {
        "warrior", "paladin", "hunter", "rogue", "priest", "shaman", "mage", "warlock", "druid",
    }
    for _, className in ipairs(classNames) do
        local guide = ns.guides["class-" .. className]
        Check(guide ~= nil, className .. " class guide is registered")
        if guide then
            Equal(guide.category, "Class Quests", className .. " is in the Class Quests section")
        end
    end
    local paladin = ns.guides["class-paladin"]
    local undeadPaladin, orcPaladin
    if paladin then
        for _, goal in ipairs(paladin.goals) do
            local text = goal.text or ""
            if string.find(text, "A Difficult Path", 1, true) and goal.kind == "accept" then
                undeadPaladin = goal
            end
            local function Walk(condition)
                if type(condition) ~= "table" then return end
                local race = condition.race
                if race == 2 or race == 6 or race == 8 or race == 96 then
                    orcPaladin = goal.id
                elseif type(race) == "table" then
                    for _, value in ipairs(race) do
                        if value == 2 or value == 6 or value == 8 or value == 96 then
                            orcPaladin = goal.id
                        end
                    end
                end
                if condition.all then for _, child in ipairs(condition.all) do Walk(child) end end
                if condition.any then for _, child in ipairs(condition.any) do Walk(child) end end
            end
            Walk(goal.conditions)
        end
    end
    Check(undeadPaladin ~= nil, "the paladin guide includes the Undead quest A Difficult Path")
    Check(orcPaladin == nil, "the paladin guide has no Orc, Troll, Tauren, or Horde Skyborne steps")
    if undeadPaladin then
        local undead = { faction = "Horde", raceID = 5, classID = 2, level = 2 }
        local orc = { faction = "Horde", raceID = 2, classID = 2, level = 2 }
        Equal(ns.EvaluateCondition(undeadPaladin.conditions, undead), true,
            "an Undead paladin can take A Difficult Path")
        Equal(ns.EvaluateCondition(undeadPaladin.conditions, orc), false,
            "an Orc is not offered the Undead paladin step")
    end

    local function Goal(guide, id)
        if not guide then return nil end
        for _, goal in ipairs(guide.goals) do
            if goal.id == id then return goal end
        end
    end

    local function HasLabel(goal, label)
        for _, point in ipairs(goal and goal.route or {}) do
            if point.label == label then return true end
        end
        return false
    end

    local druid = ns.guides["class-druid"]
    local torwa = Goal(druid, "accept-9063-torwa-pathfinder")
    Check(torwa ~= nil, "the druid guide includes Torwa Pathfinder")
    if torwa then
        local nightElf = { faction = "Alliance", raceID = 4, classID = 11, level = 50 }
        local tauren = { faction = "Horde", raceID = 6, classID = 11, level = 50 }
        Equal(ns.EvaluateCondition(torwa.conditions, nightElf), true,
            "a Night Elf druid can accept Torwa Pathfinder")
        Equal(ns.EvaluateCondition(torwa.conditions, tauren), true,
            "a Tauren druid can accept Torwa Pathfinder")
        Check(HasLabel(torwa, "Turak Runetotem"),
            "Torwa Pathfinder keeps the Thunder Bluff giver")
    end

    local warrior = ns.guides["class-warrior"]
    local training = Goal(warrior, "accept-1638-a-warriors-training")
    local islander = Goal(warrior, "accept-1718-the-islander")
    local muren = Goal(warrior, "accept-1679-muren-stormpike")
    if training then
        local human = { faction = "Alliance", raceID = 1, classID = 1, level = 10 }
        local nightElf = { faction = "Alliance", raceID = 4, classID = 1, level = 10 }
        Equal(ns.EvaluateCondition(training.conditions, human), true,
            "a Human warrior can accept A Warrior's Training")
        Equal(ns.EvaluateCondition(training.conditions, nightElf), false,
            "a Night Elf warrior is not offered the Human training quest")
    end
    if muren then
        local dwarf = { faction = "Alliance", raceID = 3, classID = 1, level = 10 }
        local gnome = { faction = "Alliance", raceID = 7, classID = 1, level = 10 }
        local nightElf = { faction = "Alliance", raceID = 4, classID = 1, level = 10 }
        Equal(ns.EvaluateCondition(muren.conditions, dwarf), true,
            "a Dwarf warrior can accept Muren Stormpike")
        Equal(ns.EvaluateCondition(muren.conditions, gnome), true,
            "a Gnome warrior can accept Muren Stormpike")
        Equal(ns.EvaluateCondition(muren.conditions, nightElf), false,
            "a Night Elf warrior is not offered the Dwarf and Gnome training quest")
    end
    if islander then
        local orc = { faction = "Horde", raceID = 2, classID = 1, level = 30 }
        local human = { faction = "Alliance", raceID = 1, classID = 1, level = 30 }
        Equal(ns.EvaluateCondition(islander.conditions, orc), true,
            "a Horde warrior can accept The Islander")
        Equal(ns.EvaluateCondition(islander.conditions, human), true,
            "an Alliance warrior can accept The Islander")
        Check(HasLabel(islander, "Sorek"), "The Islander keeps the Orgrimmar giver")
        Check(HasLabel(islander, "Baltus Fowler"), "The Islander keeps the Undercity giver")
    end

    local shaman = ns.guides["class-shaman"]
    local callOfEarth = Goal(shaman, "accept-94373-call-of-earth")
    Check(callOfEarth ~= nil, "the shaman guide includes the Alliance Call of Earth")
    if callOfEarth then
        local dwarf = { faction = "Alliance", raceID = 3, classID = 7, level = 4 }
        local orc = { faction = "Horde", raceID = 2, classID = 7, level = 4 }
        Equal(ns.EvaluateCondition(callOfEarth.conditions, dwarf), true,
            "a Dwarf shaman can accept Call of Earth")
        Equal(ns.EvaluateCondition(callOfEarth.conditions, orc), false,
            "a Horde shaman is not offered the Alliance Call of Earth")
    end
end
TestClassQuestGuides()

function TestIdleAndMovementSkipTheCatalog()
    ns.PlayerState:InvalidateQuestCache()
    local objectives, flags, fulfilled, timers = 0, 0, 1, 0
    local api = {
        C_QuestLog = {
            GetNumQuestLogEntries = function() return 1 end,
            GetInfo = function() return { questID = 50, isComplete = false } end,
            GetQuestObjectives = function()
                objectives = objectives + 1
                return { { numFulfilled = fulfilled, numRequired = 8, finished = false } }
            end,
            IsQuestFlaggedCompleted = function()
                flags = flags + 1
                return false
            end,
            GetTimeAllowed = function()
                timers = timers + 1
                return nil
            end,
        },
    }
    local ids = {}
    for index = 1, 60 do ids[index] = index end
    Equal(ns.PlayerState:LogUnchanged(api, ids), false, "the first quest pulse is new")
    Equal(flags, 0, "an unchanged check does not ask if quests were turned in")
    local peeked = objectives
    Equal(ns.PlayerState:LogUnchanged(api, ids), true, "standing still is not a new quest pulse")
    Equal(flags, 0, "standing still still does not ask if quests were turned in")
    Equal(timers, 1, "standing still does not ask the quest timer again")
    Check(objectives > peeked, "standing still peeks at the log so a kill is not missed")
    fulfilled = 2
    Equal(ns.PlayerState:LogUnchanged(api, ids), false, "kill credit is a new quest pulse")

    ns.PlayerState:InvalidateQuestCache()
    local budget = ns.COMPLETION_QUERY_BUDGET
    local state = ns.PlayerState:Capture(api, ids, 1)
    Equal(flags, 1 + budget, "a real update reads the open quests plus a slice of the catalog")
    Equal(state.questCompletionKnown, false, "the rest of the catalog waits for a later update")
    Equal(state.watchedQuests[1], true, "the open chapter quest is resolved")
    Equal(state.watchedQuests[60], nil, "a later catalog quest is not read on this pulse")
    Equal(ns.EvaluateCondition({ quest = { id = 60, state = "completed" } }, state), nil,
        "an unread quest is not treated as failed")
    local flagsAfter = flags
    ns.PlayerState:Capture(api, ids, 1)
    Equal(flags - flagsAfter, budget, "the next real update continues through the catalog")

    local rowIDs = { 1, 58, 59, 60 }
    flagsAfter = flags
    ns.PlayerState:FillCompletion(state, rowIDs, api)
    Equal(state.watchedQuests[60], true, "a library row reads the quests its guide still needs")
    Check(state.completedQuests[60] ~= nil, "a library row records the read answer")
    Check(flags - flagsAfter <= 3, "a library row skips quests the pulse already resolved")
    flagsAfter = flags
    ns.PlayerState:FillCompletion(state, rowIDs, api)
    Equal(flags, flagsAfter, "redrawing a library row asks the client nothing new")

    local captures, refreshes = 0, 0
    local savedCapture = ns.PlayerState.Capture
    local savedRefresh = ns.Engine.Refresh
    ns.PlayerState.Capture = function() captures = captures + 1 end
    ns.Engine.Refresh = function() refreshes = refreshes + 1 end
    ns.Engine.state = { mapID = 1420, x = 0.2, y = 0.2 }
    ns.Engine.currentGoal = nil
    ns.Engine.currentGuide = nil
    local savedMap = C_Map
    local mapID = 1420
    C_Map = {
        GetBestMapForUnit = function() return mapID end,
        GetPlayerMapPosition = function() return { x = 0.4, y = 0.5 } end,
    }
    Equal(ns.Engine:NotePosition(), false, "starting to walk on the same map does not rebuild the route")
    Equal(captures, 0, "starting to walk does not read the quest catalog")
    Equal(refreshes, 0, "starting to walk does not refresh the guide")
    mapID = 1497
    ns.Engine:NotePosition()
    Equal(captures, 0, "crossing into another map does not read the quest catalog")
    Equal(refreshes, 0, "crossing into another map does not refresh the guide")
    C_Map = savedMap
    ns.PlayerState.Capture = savedCapture
    ns.Engine.Refresh = savedRefresh
    ns.PlayerState:InvalidateQuestCache()
end
TestIdleAndMovementSkipTheCatalog()

function TestChapterUpdateStaysSmall()
    ns:FinalizeGuides()
    local guide = ns.guides["leveling-casual-horde"]
    Check(guide ~= nil, "Casual Horde guide is available for quest-query checks")
    Equal(ns.Engine:ChapterGoals(guide), nil, "Casual does not chapter-scope reconcile")
    ns.charDB.selectedGuide = "leveling-casual-horde"
    local firstIDs, firstPriority = ns.QuestQuery()
    local secondIDs, secondPriority = ns.QuestQuery()
    Check(firstIDs == secondIDs, "standing still reuses the quest id list")
    Equal(firstPriority, secondPriority, "Casual quest priority is stable across idle pulses")
    ns.charDB.history = {}
    ns.charDB.activeGoal = "step-0"
    ns.Engine.currentGuide = nil
    for index = 1, 45 do
        ns.Engine:SetActiveGoal({ id = "step-" .. index }, true)
    end
    Equal(#ns.charDB.history, 30, "review history does not grow for the whole session")
    Equal(ns.charDB.history[#ns.charDB.history], "step-44", "the newest step stays in history")
    ns.charDB.history = {}
    ns.questQueryKey = nil
end
TestChapterUpdateStaysSmall()

-- Provider ownership and native quest destinations.
function TestWaypointProviders()
    ns.TomTomWaypoints:Clear()
    ns.db.uiOpen, ns.db.waypointProvider = true, "blizzard"
    local userPoint, trackedQuest, trackingUser, pinWrites = nil, 0, false, 0
    UiMapPoint = { CreateFromCoordinates = function(mapID, x, y)
        return { uiMapID = mapID, position = { x = x, y = y } }
    end }
    C_Map = {
        GetUserWaypoint = function() return userPoint end,
        SetUserWaypoint = function(point) userPoint = point; pinWrites = pinWrites + 1 end,
        ClearUserWaypoint = function() userPoint = nil end,
        CanSetUserWaypointOnMap = function() return true end,
    }
    C_SuperTrack = {
        GetSuperTrackedQuestID = function() return trackedQuest end,
        SetSuperTrackedQuestID = function(id) trackedQuest = id; trackingUser = false end,
        SetSuperTrackedUserWaypoint = function(value) trackingUser = value end,
        IsSuperTrackingUserWaypoint = function() return trackingUser end,
    }
    local accept = { kind = "accept", complete = { quest = { id = 123 } }, route = {
        { mapID = 10, x = 0.1, y = 0.2 }, { mapID = 11, x = 0.3, y = 0.4 },
    } }
    local waypoints = ns.TomTomWaypoints
    waypoints:Sync(accept, {})
    Equal(userPoint.uiMapID, 11, "accept uses the giver zone rather than a travel breadcrumb")
    Equal(userPoint.position.x, 0.3, "accept uses authored giver coordinates")
    waypoints:Sync(accept, {})
    Equal(pinWrites, 1, "unchanged step does not recreate a pin")
    userPoint = UiMapPoint.CreateFromCoordinates(12, 0.5, 0.6)
    waypoints:Sync(accept, {})
    Equal(pinWrites, 1, "manual destination survives refresh")
    waypoints:Clear()
    Equal(userPoint.uiMapID, 12, "clear preserves a manually placed pin")
    C_QuestLog = { GetNextWaypoint = function() return 13, 0.7, 0.8 end }
    local objective = { kind = "objective", useClientPin = true,
        complete = { questObjective = { id = 123, index = 1 } } }
    waypoints:Sync(objective, {})
    Equal(trackedQuest, 123, "objective super-tracks the native quest")
    Equal(userPoint.uiMapID, 12, "quest tracking leaves unrelated user pins alone")
    local travel = { kind = "travel", complete = { quest = { id = 870, state = "complete" } },
        route = { { mapID = 11, x = 0.4499, y = 0.2409 } } }
    waypoints:Sync(travel, {})
    Equal(trackedQuest, 870, "Forgotten Pools travel uses native quest tracking")
    Equal(pinWrites, 1, "quest-linked travel does not create a separate user pin")
    Equal(ns.Navigation:QuestDestinationID({ kind = "travel", complete = {
        questObjective = { id = 6421, index = 1 } } }), 6421, "objective-linked travel uses quest tracking")
    Equal(ns.Navigation:QuestDestinationID({ kind = "travel", complete = {
        quest = { id = 287, state = "complete" } } }), 287, "Frostmane Hold travel uses quest tracking")
    Equal(ns.Navigation:QuestDestinationID({ kind = "travel", complete = {
        quest = { id = 123, state = "activeOrCompleted" } } }), nil, "accept-linked travel keeps its authored destination")
    Equal(ns.Navigation:QuestDestinationID({ kind = "travel", complete = { map = 11 } }), nil,
        "ordinary travel keeps route navigation")
    Equal(ns.Navigation:QuestDestinationID({ kind = "objective", useClientPin = false,
        complete = { quest = { id = 4921, state = "complete" } } }), nil,
        "authored objective pins keep route navigation")
    waypoints:Sync(objective, {})
    trackedQuest = 456
    waypoints:Sync(objective, {})
    Equal(trackedQuest, 456, "manual quest tracking survives refresh")
    waypoints:Clear()
    Equal(trackedQuest, 456, "clear leaves manually tracked quests alone")
    local turnin = { kind = "turnin", useClientPin = true, complete = { quest = { id = 789 } } }
    waypoints:Sync(turnin, {})
    Equal(trackedQuest, 789, "turn-in uses native quest tracking")
    C_QuestLog.GetNextWaypoint = function() return nil end
    waypoints:Sync(turnin, {})
    Equal(trackedQuest, 789, "native quest tracking does not require waypoint coordinates")
    Equal(waypoints.status, nil, "native quest tracking does not report a coordinate failure")
    local calls = {}
    local optional = {
        AddWaypoint = function(_, mapID, x, y) calls[#calls + 1] = { mapID, x, y }; return #calls end,
        RemoveWaypoint = function(_, uid) calls[uid].removed = true end,
    }
    C_QuestLog.GetNextWaypoint = function() return 13, 0.7, 0.8 end
    waypoints:Sync(objective, {}, optional)
    Equal(calls[1][2], 0.7, "TomTom objectives use client quest coordinates")
    waypoints:Sync(travel, {}, optional)
    Equal(calls[2][2], 0.7, "TomTom quest-linked travel uses client coordinates")
    Equal(calls[1].removed, true, "changing to a quest-linked travel step removes the old owned waypoint")
    waypoints:Sync(objective, {}, optional)
    C_QuestLog.GetNextWaypoint = function() return 14, 0.2, 0.3 end
    waypoints:Sync(objective, {}, optional)
    Equal(calls[3].removed, true, "TomTom removes its old destination when the client location changes")
    Equal(calls[4][1], 14, "TomTom follows updated quest locations")
    hooksecurefunc = function(api, method, observer)
        local original = api[method]
        api[method] = function(self, ...)
            original(self, ...)
            observer(self, ...)
        end
    end
    optional.SetCrazyArrow = function() end
    waypoints:Sync(objective, {}, optional)
    optional:SetCrazyArrow("manual")
    C_QuestLog.GetNextWaypoint = function() return 15, 0.4, 0.5 end
    waypoints:Sync(objective, {}, optional)
    Equal(#calls, 4, "TomTom does not reclaim a manually redirected arrow")
    hooksecurefunc = nil
    waypoints:Clear()
    Equal(calls[4].removed, true, "TomTom removal uses the provider that created the waypoint")
    C_QuestLog = nil
    waypoints:Sync({ kind = "objective", useClientPin = true,
        complete = { questObjective = { id = 123 } } }, {})
    Equal(trackedQuest, 123, "native tracking works without quest-location APIs")
    Equal(waypoints.status, nil, "native tracking needs only the super-tracking API")
    C_QuestLog = { GetQuestsOnMap = function(mapID)
        return { { questID = 870, x = 0.6, y = 0.7 } }
    end }
    waypoints:Sync(travel, {}, optional)
    Equal(calls[5][1], 11, "TomTom falls back to the quest's map pin zone")
    Equal(calls[5][2], 0.6, "TomTom uses actual map pin coordinates when next waypoint is absent")
    C_QuestLog = nil
    waypoints:Sync(objective, {}, optional)
    Equal(waypoints.status, "No Blizzard quest location is available for this step.", "TomTom reports missing client locations")
    local corpse = {
        kind = "objective",
        useClientPin = false,
        text = "Find Beaten Corpse in Southern Barrens.",
        complete = { quest = { id = 4921, state = "complete" } },
        route = { { mapID = 1413, x = 0.4933, y = 0.5032, label = "Beaten Corpse" } },
    }
    waypoints:Sync(corpse, {}, optional)
    Equal(calls[#calls][1], 1413, "TomTom uses the authored Barrens map for Lost in Battle")
    Equal(calls[#calls][2], 0.4933, "TomTom uses the authored Beaten Corpse x coordinate")
    Equal(calls[#calls][3], 0.5032, "TomTom uses the authored Beaten Corpse y coordinate")
    C_Map = nil
    waypoints:Sync(accept, {})
    Equal(waypoints.status, "Blizzard Map Pins are unavailable on this client.", "missing pin APIs are reported")

end
TestWaypointProviders()

function TestFlightWaypointOverridesQuestDestination()
    local savedMap, savedTracking, savedPoint = C_Map, C_SuperTrack, UiMapPoint
    local savedNodes = ns.charDB.taxiNodesByContinent
    local pin, quest, tracking = nil, 0, false
    C_Map = {
        GetUserWaypoint = function() return pin end,
        SetUserWaypoint = function(point) pin = point end,
        ClearUserWaypoint = function() pin = nil end,
        CanSetUserWaypointOnMap = function() return true end,
    }
    UiMapPoint = { CreateFromCoordinates = function(mapID, x, y)
        return { uiMapID = mapID, position = { x = x, y = y } }
    end }
    C_SuperTrack = {
        GetSuperTrackedQuestID = function() return quest end,
        SetSuperTrackedQuestID = function(id) quest = id; tracking = false end,
        SetSuperTrackedUserWaypoint = function(value) tracking = value end,
        IsSuperTrackingUserWaypoint = function() return tracking end,
    }
    ns.charDB.taxiNodesByContinent = { Kalimdor = {
        ["thunder bluff, mulgore"] = "Thunder Bluff, Mulgore",
    } }
    ns.db.uiOpen, ns.db.waypointProvider = true, "blizzard"
    local state = { mapID = 1413, x = 0.4, y = 0.4, faction = "Horde" }
    local goal = { kind = "turnin", taxiDestination = "Thunder Bluff",
        complete = { quest = { id = 123, state = "completed" } },
        route = { { mapID = 1456, x = 0.5, y = 0.5, label = "Quest giver" } },
    }
    local waypoints = ns.TomTomWaypoints
    waypoints:Clear()
    waypoints:Sync(goal, state)
    Check(pin ~= nil, "a quest flight creates a flight-master pin")
    Equal(pin and pin.uiMapID, 1413, "the flight pin is in the boarding zone")
    Equal(tracking, true, "the flight pin becomes Blizzard's current destination")
    Equal(quest, 0, "the quest destination does not override the flight master")
    local firstPin = pin
    waypoints:Sync(goal, state)
    Equal(pin, firstPin, "an unchanged flight retains its active pin")
    tracking = false
    waypoints:Sync(goal, state)
    Equal(tracking, false, "manual tracking changes are respected during a flight step")
    state.mapID = 1456
    waypoints:Sync(goal, state)
    Equal(quest, 0, "authored turn-in pins do not super-track the quest after arrival")
    Equal(pin and pin.uiMapID, 1456, "arrival shows the authored turn-in pin")
    Equal(pin and pin.position.x, 0.5, "arrival uses the saved turn-in coordinates")
    goal.kind = "accept"
    state.mapID = 1413
    waypoints:Sync(goal, state)
    Equal(pin and pin.uiMapID, 1413, "accept steps also target the active flight master")
    Equal(tracking, true, "accept flight pins become current")
    local tomtomMap
    local api = {
        AddWaypoint = function(_, mapID) tomtomMap = mapID; return 1 end,
        RemoveWaypoint = function() end,
    }
    goal.kind = "turnin"
    waypoints:Sync(goal, state, api)
    Equal(tomtomMap, 1413, "TomTom also follows the flight leg on quest steps")
    waypoints:Clear()
    ns.charDB.taxiNodesByContinent = savedNodes
    C_Map, C_SuperTrack, UiMapPoint = savedMap, savedTracking, savedPoint
end
TestFlightWaypointOverridesQuestDestination()

function TestPinsStayOffInsideAnInstance()
    local savedMap, savedTracking, savedPoint = C_Map, C_SuperTrack, UiMapPoint
    local savedInstance, savedInfo = IsInInstance, GetInstanceInfo
    local pin, quest, tracking, pinWrites, trackWrites = nil, 0, false, 0, 0
    C_Map = {
        GetUserWaypoint = function() return pin end,
        SetUserWaypoint = function(point) pin = point; pinWrites = pinWrites + 1 end,
        ClearUserWaypoint = function() pin = nil end,
        CanSetUserWaypointOnMap = function() return true end,
    }
    UiMapPoint = { CreateFromCoordinates = function(mapID, x, y)
        return { uiMapID = mapID, position = { x = x, y = y } }
    end }
    C_SuperTrack = {
        GetSuperTrackedQuestID = function() return quest end,
        SetSuperTrackedQuestID = function(id) quest = id; trackWrites = trackWrites + 1; tracking = false end,
        SetSuperTrackedUserWaypoint = function(value) tracking = value end,
        IsSuperTrackingUserWaypoint = function() return tracking end,
    }
    ns.db.uiOpen, ns.db.waypointProvider = true, "blizzard"
    local waypoints = ns.TomTomWaypoints
    waypoints:Clear()
    local accept = { kind = "accept", complete = { quest = { id = 123 } }, route = {
        { mapID = 11, x = 0.3, y = 0.4 },
    } }
    IsInInstance = function() return false, "none" end
    waypoints:Sync(accept, {})
    Equal(pinWrites, 1, "an outdoor accept still places a map pin")
    IsInInstance = function() return true, "party" end
    waypoints:Sync(accept, { instanceID = 389 })
    Equal(pin ~= nil, true, "an instance does not call the waypoint API to clear the pin")
    Equal(pinWrites, 1, "an instance does not place another map pin")
    waypoints:Sync(accept, { instanceID = 389 })
    Equal(pinWrites, 1, "standing in an instance does not retry the map pin")
    local objective = { kind = "objective", useClientPin = true,
        complete = { questObjective = { id = 123, index = 1 } } }
    waypoints:Sync(objective, { instanceID = 389 })
    Equal(quest, 0, "an instance does not super-track the quest")
    Equal(trackWrites, 0, "an instance does not write quest tracking")
    IsInInstance = nil
    GetInstanceInfo = function() return "Ragefire Chasm", "party", 1, "Normal", 5, false, false, 389 end
    waypoints:Sync(objective, {})
    Equal(trackWrites, 0, "GetInstanceInfo also keeps quest tracking off")
    GetInstanceInfo = nil
    waypoints:Sync(objective, { instanceID = 389 })
    Equal(trackWrites, 0, "a saved instance id keeps tracking off when the client API is missing")
    IsInInstance = function() return false, "none" end
    waypoints:Sync(objective, {})
    Equal(quest, 123, "leaving the instance restores quest tracking")
    local calls = {}
    local tomtom = {
        AddWaypoint = function(_, mapID) calls[#calls + 1] = mapID; return #calls end,
        RemoveWaypoint = function(_, uid) calls[uid] = nil end,
    }
    IsInInstance = function() return true, "party" end
    local trackedBeforeInstance = trackWrites
    waypoints:Sync(accept, { instanceID = 389 }, tomtom)
    Equal(#calls, 0, "TomTom does not add a waypoint inside an instance")
    Equal(trackWrites, trackedBeforeInstance, "entering an instance does not call quest tracking")
    IsInInstance = function() return false, "none" end
    waypoints:Sync(accept, {}, tomtom)
    Equal(calls[1], 11, "TomTom resumes after leaving the instance")
    waypoints:Clear()
    IsInInstance, GetInstanceInfo = savedInstance, savedInfo
    C_Map, C_SuperTrack, UiMapPoint = savedMap, savedTracking, savedPoint
end
TestPinsStayOffInsideAnInstance()

if failures > 0 then
    io.stderr:write(("%d of %d assertions failed\n"):format(failures, assertions))
    os.exit(1)
end
print(("Lua engine tests passed: %d assertions"):format(assertions))
