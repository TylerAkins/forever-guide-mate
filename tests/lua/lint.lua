-- Data lint for the shipped guides.
--
-- These are invariants about authored guide data rather than engine behaviour.
-- They hold across every guide today, so a failure here means a new or edited
-- guide broke the rule, not that the rule needs loosening.

local failures = 0
local checks = 0
local guideData = dofile("tests/lua/guide_data_checks.lua")

local function Check(value, message)
    checks = checks + 1
    if not value then
        failures = failures + 1
        io.stderr:write("FAIL: " .. message .. "\n")
    end
end

local ns = {}
local function Load(path)
    local chunk, reason = loadfile(path)
    if not chunk then
        io.stderr:write("FAIL: load " .. path .. ": " .. tostring(reason) .. "\n")
        failures = failures + 1
        return
    end
    chunk("ForeverGuideMate", ns)
end

CreateFrame = nil
C_Timer = nil
for _, path in ipairs({
    "Core.lua",
    "PlayerState.lua",
    "Travel.lua",
    "Taxi.lua",
    "GuideEngine.lua",
    "QuestPrerequisites.lua",
    "QuestAudit.lua",
    "QuestDialog.lua",
    "Navigation.lua",
    "TomTomWaypoints.lua",
    "MapPins.lua",
    "UI.lua",
    "Guides/Dungeons/RagefireChasm.lua",
    "Guides/Dungeons/WailingCaverns.lua",
    "Guides/Dungeons/RuinsOfLordaeron.lua",
    "Guides/Dungeons/Deadmines.lua",
    "Guides/Dungeons/HallOfThanes.lua",
    "Guides/Dungeons/ExcavationSiteWetlands.lua",
    "Guides/Dungeons/CityOfDalaranAttunement.lua",
    "Guides/Dungeons/ShadowfangKeep.lua",
    "Guides/Dungeons/BlackfathomDeeps.lua",
    "Guides/Dungeons/Gnomeregan.lua",
    "Guides/Dungeons/TheStockade.lua",
    "Guides/Dungeons/ScarletMonasteryLibrary.lua",
    "Guides/Dungeons/RazorfenKraul.lua",
    "Guides/Dungeons/ScarletMonasteryGraveyard.lua",
    "Guides/Dungeons/RazorfenDowns.lua",
    "Guides/Dungeons/Uldaman.lua",
    "Guides/Dungeons/ScarletMonasteryArmory.lua",
    "Guides/Dungeons/ScarletMonasteryCathedral.lua",
    "Guides/Dungeons/ZulFarrak.lua",
    "Guides/Dungeons/Maraudon.lua",
    "Guides/Dungeons/MaraudonFoulsporeCavernOrange.lua",
    "Guides/Dungeons/MaraudonWickedGrottoPurple.lua",
    "Guides/Dungeons/TempleOfAtalHakkar.lua",
    "Guides/Dungeons/MaraudonEarthSongFallsInner.lua",
    "Guides/Dungeons/MaraudonPoisonFallsInner.lua",
    "Guides/Dungeons/OnyxiaSLairAttunement.lua",
    "Guides/Dungeons/Scholomance.lua",
    "Guides/Dungeons/BlackrockDepths.lua",
    "Guides/Dungeons/StratholmeLive.lua",
    "Guides/Dungeons/StratholmeUndead.lua",
    "Guides/Dungeons/DireMaulEast.lua",
    "Guides/Dungeons/DireMaulNorth.lua",
    "Guides/Dungeons/DireMaulWest.lua",
    "Guides/Dungeons/LowerBlackrockSpire.lua",
    "Guides/Dungeons/UpperBlackrockSpire.lua",
    "Guides/Dungeons/DireMaulNorthTribute.lua",
    "Guides/Dungeons/Tier05DungeonGearQuestline.lua",
    "Guides/Leveling/zephras-isle.lua",
    "Guides/Loremaster/Durotar.lua",
    "Guides/Loremaster/Mulgore.lua",
    "Guides/Leveling/tirisfal-glades.lua",
    "Guides/Leveling/mulgore.lua",
    "Guides/Leveling/durotar.lua",
    "Guides/Leveling/horde-silverpine-forest.lua",
    "Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua",
    "Guides/Leveling/horde-ashenvale.lua",
    "Guides/Leveling/horde-hillsbrad-foothills.lua",
    "Guides/Leveling/horde-the-barrens.lua",
    "Guides/Leveling/horde-stonetalon-mountains.lua",
    "Guides/Leveling/horde-ashenvale-part-2.lua",
    "Guides/Leveling/horde-thousand-needles.lua",
    "Guides/Leveling/horde-hillsbrad-foothills-part-2.lua",
    "Guides/Leveling/horde-arathi-highlands.lua",
    "Guides/Leveling/horde-thousand-needles-part-2.lua",
    "Guides/Leveling/horde-desolace.lua",
    "Guides/Leveling/horde-stranglethorn-vale.lua",
    "Guides/Leveling/horde-dustwallow-marsh.lua",
    "Guides/Leveling/horde-alterac-mountains-and-arathi-highlands.lua",
    "Guides/Leveling/horde-badlands.lua",
    "Guides/Leveling/horde-stranglethorn-vale-and-swamp-of-sorrows.lua",
    "Guides/Leveling/horde-desolace-part-2.lua",
    "Guides/Leveling/horde-tanaris.lua",
    "Guides/Leveling/horde-dustwallow-marsh-part-2.lua",
    "Guides/Leveling/horde-tanaris-part-2.lua",
    "Guides/Leveling/horde-feralas.lua",
    "Guides/Leveling/horde-stranglethorn-vale-part-2.lua",
    "Guides/Leveling/horde-swamp-of-sorrows.lua",
    "Guides/Leveling/horde-tanaris-and-dustwallow-marsh.lua",
    "Guides/Leveling/horde-the-hinterlands.lua",
    "Guides/Leveling/horde-feralas-and-ungoro-crater.lua",
    "Guides/Leveling/horde-stranglethorn-vale-and-swamp-of-sorrows-part-2.lua",
    "Guides/Leveling/horde-blasted-lands.lua",
    "Guides/Leveling/horde-searing-gorge.lua",
    "Guides/Leveling/horde-burning-steppes-and-azshara.lua",
    "Guides/Leveling/horde-felwood-and-winterspring.lua",
    "Guides/Leveling/horde-ungoro-crater.lua",
    "Guides/Leveling/horde-azshara.lua",
    "Guides/Leveling/horde-felwood-and-winterspring-part-2.lua",
    "Guides/Leveling/horde-western-and-eastern-plaguelands.lua",
    "Guides/Leveling/horde-winterspring.lua",
    "Guides/Leveling/horde-silithus.lua",
    "Guides/Leveling/elwynn-forest.lua",
    "Guides/Leveling/dun-morogh.lua",
    "Guides/Leveling/teldrassil.lua",
    "Guides/Leveling/alliance-westfall.lua",
    "Guides/Leveling/alliance-darkshore.lua",
    "Guides/Leveling/alliance-loch-modan.lua",
    "Guides/Leveling/alliance-redridge-and-westfall.lua",
    "Guides/Leveling/alliance-darkshore-part-2.lua",
    "Guides/Leveling/alliance-ashenvale-and-stonetalon-mountains.lua",
    "Guides/Leveling/alliance-wetlands.lua",
    "Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua",
    "Guides/Leveling/alliance-wetlands-part-2.lua",
    "Guides/Leveling/alliance-stonetalon-mountains-and-ashenvale.lua",
    "Guides/Leveling/alliance-duskwood-and-stranglethorn-vale.lua",
    "Guides/Leveling/alliance-hillsbrad-foothills-and-arathi-highlands.lua",
    "Guides/Leveling/alliance-dustwallow-marsh-and-thousand-needles.lua",
    "Guides/Leveling/alliance-stranglethorn-vale.lua",
    "Guides/Leveling/alliance-desolace.lua",
    "Guides/Leveling/alliance-stranglethorn-vale-part-2.lua",
    "Guides/Leveling/alliance-swamp-of-sorrows.lua",
    "Guides/Leveling/alliance-arathi-highlands-and-alterac-mountains.lua",
    "Guides/Leveling/alliance-dustwallow-marsh.lua",
    "Guides/Leveling/alliance-desolace-part-2.lua",
    "Guides/Leveling/alliance-badlands.lua",
    "Guides/Leveling/alliance-stranglethorn-vale-part-3.lua",
    "Guides/Leveling/alliance-swamp-of-sorrows-part-2.lua",
    "Guides/Leveling/alliance-tanaris.lua",
    "Guides/Leveling/alliance-feralas-and-tanaris.lua",
    "Guides/Leveling/alliance-the-hinterlands.lua",
    "Guides/Leveling/alliance-tanaris-part-2.lua",
    "Guides/Leveling/alliance-ungoro-crater.lua",
    "Guides/Leveling/alliance-stranglethorn-vale-part-4.lua",
    "Guides/Leveling/alliance-searing-gorge.lua",
    "Guides/Leveling/alliance-blasted-lands-and-burning-steppes.lua",
    "Guides/Leveling/alliance-western-plaguelands.lua",
    "Guides/Leveling/alliance-azshara-and-felwood.lua",
    "Guides/Leveling/alliance-feralas-and-azshara.lua",
    "Guides/Leveling/alliance-ungoro-crater-part-2.lua",
    "Guides/Leveling/alliance-winterspring-and-felwood.lua",
    "Guides/Leveling/alliance-burning-steppes.lua",
    "Guides/Leveling/alliance-western-and-eastern-plaguelands.lua",
    "Guides/Leveling/alliance-winterspring.lua",
    "Guides/Leveling/alliance-silithus.lua",
    "Guides/Class/Warrior.lua",
    "Guides/Class/Paladin.lua",
    "Guides/Class/Hunter.lua",
    "Guides/Class/Rogue.lua",
    "Guides/Class/Priest.lua",
    "Guides/Class/Shaman.lua",
    "Guides/Class/Mage.lua",
    "Guides/Class/Warlock.lua",
    "Guides/Class/Druid.lua",
    "Guides/Miscellaneous/LibraryBooks.lua",
    "Guides/Legacy/ExploreSilverpineForest.lua",
    "Guides/Legacy/ExploreTirisfalGlades.lua",
}) do Load(path) end

local function Serialize(value)
    if type(value) ~= "table" then return tostring(value) end
    local keys = {}
    for key in pairs(value) do keys[#keys + 1] = key end
    table.sort(keys, function(a, b) return tostring(a) < tostring(b) end)
    local parts = {}
    for _, key in ipairs(keys) do
        parts[#parts + 1] = tostring(key) .. "=" .. Serialize(value[key])
    end
    return "{" .. table.concat(parts, ",") .. "}"
end

local function GoalQuestID(goal)
    local complete = goal.complete
    if type(complete) ~= "table" then return nil end
    if type(complete.quest) == "table" then return complete.quest.id end
    if type(complete.questObjective) == "table" then return complete.questObjective.id end
    return nil
end

-- A character who cannot accept a quest cannot finish its objectives or turn
-- it in either. Gating only part of a chain leaves the rest of the steps in
-- the route, which is how a step the character can never take stays visible.
for _, guideID in ipairs(ns.guideOrder) do
    local guide = ns.guides[guideID]
    local byQuest, questOrder = {}, {}
    for _, goal in ipairs(guide.goals) do
        local startsWithAccept = type(goal.text) == "string" and goal.text:sub(1, 7) == "Accept "
        Check(not startsWithAccept or goal.kind == "accept",
            ("%s %s starts with Accept but is a %s step")
                :format(guideID, tostring(goal.id), tostring(goal.kind)))
        Check(goal.kind ~= "accept" or type(goal.text) ~= "string"
                or not goal.text:lower():find(", then ", 1, true),
            ("%s %s combines acceptance with another action")
                :format(guideID, tostring(goal.id)))
        local lowerText = type(goal.text) == "string" and goal.text:lower() or ""
        local bundledTurnin = lowerText:find("then report to", 1, true)
            or lowerText:find("then return to", 1, true)
            or lowerText:find("then turn in", 1, true)
            or lowerText:find("and turn in", 1, true)
        Check((goal.kind ~= "objective" and goal.kind ~= "gossip") or not bundledTurnin,
            ("%s %s combines an objective with its turn-in")
                :format(guideID, tostring(goal.id)))
        local questID = GoalQuestID(goal)
        if questID then
            if not byQuest[questID] then
                byQuest[questID] = {}
                questOrder[#questOrder + 1] = questID
            end
            local goals = byQuest[questID]
            goals[#goals + 1] = goal
        end
    end
    if not guide.casualSpine then
        for _, questID in ipairs(questOrder) do
            local signature, firstID, mismatchID
            for _, goal in ipairs(byQuest[questID]) do
                local current = Serialize(goal.conditions)
                if signature == nil then
                    signature, firstID = current, goal.id
                elseif current ~= signature and not mismatchID then
                    mismatchID = goal.id
                end
            end
            Check(mismatchID == nil, ("%s quest %d: %s and %s do not share conditions")
                :format(guideID, questID, tostring(firstID), tostring(mismatchID)))
        end
    end
end

-- A travel step with no completion condition never finishes on its own.
-- Keep one when the quest is to discover that place: it carries the same
-- complete condition as the discovery, so it clears when the objective does.
-- Dungeon entrance steps complete on entering the instance.
for _, guideID in ipairs(ns.guideOrder) do
    local guide = ns.guides[guideID]
    for _, goal in ipairs(guide.goals) do
        local entrance = type(goal.id) == "string" and goal.id:sub(1, 6) == "enter-"
        Check(goal.kind ~= "travel" or entrance or goal.complete ~= nil,
            ("%s %s is a travel step with nothing to complete it")
                :format(guideID, tostring(goal.id)))
    end
end

local function AcceptQuestID(goalID)
    if type(goalID) ~= "string" then
        return nil
    end
    local questID = goalID:match("^accept%-(%d+)%-")
    return questID and tonumber(questID) or nil
end

local function ObjectiveQuestIDFromGoalID(goalID)
    if type(goalID) ~= "string" then
        return nil
    end
    local questID = goalID:match("^objective%-(%d+)%-")
    return questID and tonumber(questID) or nil
end

local function TurninQuestID(goalID)
    return guideData.TurninQuestID(goalID)
end

local function DependsOnTurnin(goal, questID)
    return guideData.DependsOnTurnin(goal, questID)
end

local function QuestObjectiveSpec(goal)
    local complete = goal.complete
    if type(complete) ~= "table" or type(complete.questObjective) ~= "table" then
        return nil
    end
    return complete.questObjective
end

-- An objective tied to an accept must track that same quest id. A mismatched id
-- (for example Horde 6128 using Alliance 6123) never completes in the log.
for _, guideID in ipairs(ns.guideOrder) do
    local guide = ns.guides[guideID]
    for _, goal in ipairs(guide.goals) do
        local spec = QuestObjectiveSpec(goal)
        if spec and type(spec.id) == "number" then
            if type(goal.dependsOn) == "table" then
                local matchedAccept = false
                for _, dep in ipairs(goal.dependsOn) do
                    local acceptQuest = AcceptQuestID(dep)
                    if acceptQuest == spec.id then
                        matchedAccept = true
                    end
                end
                for _, dep in ipairs(goal.dependsOn) do
                    local acceptQuest = AcceptQuestID(dep)
                    if acceptQuest and acceptQuest ~= spec.id and not matchedAccept then
                        Check(false, ("%s %s tracks quest %d but depends on accept for quest %d")
                            :format(guideID, tostring(goal.id), spec.id, acceptQuest))
                    end
                end
            end
            local fromID = ObjectiveQuestIDFromGoalID(goal.id)
            if fromID and fromID ~= spec.id then
                Check(false, ("%s %s uses quest %d in the step id but QuestObjective(%d, ...)")
                    :format(guideID, tostring(goal.id), fromID, spec.id))
            end
        end
    end
    if not guide.casualSpine then
        for _, issue in ipairs(guideData.ChainViolations(guide, guideID)) do
            Check(false, ("%s %s accept for quest %d has an invalid prerequisite turn-in for quest %d")
                :format(issue.guideID, tostring(issue.goalID), issue.acceptQuest, issue.needTurnin))
        end
    end

    local objectivesByQuest = {}
    for _, goal in ipairs(guide.goals) do
        local spec = QuestObjectiveSpec(goal)
        if spec and type(spec.id) == "number" then
            objectivesByQuest[spec.id] = objectivesByQuest[spec.id] or {}
            objectivesByQuest[spec.id][#objectivesByQuest[spec.id] + 1] = goal.id
        end
    end
    for _, goal in ipairs(guide.goals) do
        if goal.kind == "turnin" then
            local questID = guideData.AcceptQuestIDFromGoal(goal)
            for _, objectiveID in ipairs(objectivesByQuest[questID] or {}) do
                local found = false
                for _, dependency in ipairs(goal.dependsOn or {}) do
                    if dependency == objectiveID then found = true end
                end
                Check(found, ("%s %s must dependOn objective %s")
                    :format(guideID, tostring(goal.id), objectiveID))
            end
        end
    end
end

for _, issue in ipairs(guideData.LevelingLoremasterAcceptGateDrift(ns.guides)) do
    Check(false, ("%s %s Loremaster gate drift: %s"):format(
        issue.eraID, issue.goalID, issue.detail))
end

for _, issue in ipairs(guideData.ClassBranchTurninViolations(ns.guides)) do
    Check(false, ("%s %s class-branch gate: %s"):format(
        issue.guideID, issue.goalID, issue.detail))
end

Check(guideData.DetourCoverageFixtureFails(),
    "detour coverage fixture must fail when the detour drops objective and turn-in")
for _, issue in ipairs(guideData.DetourCoverageViolations(ns.guides)) do
    Check(false, ("%s quest %d is weaker than %s (detour %s, canonical %s, missing %s)")
        :format(issue.detourID, issue.questID, issue.canonicalID,
            issue.detourKinds, issue.canonicalKinds, issue.missing))
end
-- Casual spine + Forever weaves: skip classic-vs-detour coverage until chapters are hand-audited.
do
    local nonCasualSpine = {}
    for id, g in pairs(ns.guides) do
        if not g.casualSpine then nonCasualSpine[id] = g end
    end
    for _, issue in ipairs(guideData.ShippedLevelingCoverageViolations(nonCasualSpine)) do
        Check(false, ("%s quest %d is weaker than %s (has %s, missing %s). Add the steps or CoverageGapAllowlist.")
            :format(issue.detourID, issue.questID, issue.canonicalID, issue.detourKinds, issue.missing))
    end
end
for _, issue in ipairs(guideData.PrerequisiteTurninViolations(ns.guides, ns.questPrerequisites)) do
    Check(false, ("%s %s accept %d needs a turnin-%d step in that guide")
        :format(issue.guideID, tostring(issue.goalID), issue.acceptQuest, issue.needTurnin))
end
for _, issue in ipairs(guideData.ItemStartInversionViolations(ns.guides)) do
    Check(false, ("%s %s depends on %s: loot/collect the starter item before Use-the-item accept for quest %d")
        :format(issue.guideID, tostring(issue.goalID), tostring(issue.acceptID), issue.questID))
end
for _, issue in ipairs(guideData.ItemStartQuestObjectiveViolations(ns.guides)) do
    Check(false, ("%s %s uses QuestObjective(%d) before %s: use a note with activeOrCompleted, not QuestObjective, for item-starts")
        :format(issue.guideID, tostring(issue.goalID), issue.questID, tostring(issue.acceptID)))
end
for _, issue in ipairs(guideData.PinlessAcceptViolations(ns.guides)) do
    Check(false, ("%s %s %s")
        :format(issue.guideID, tostring(issue.goalID), issue.detail))
end
for _, issue in ipairs(guideData.OrphanAcceptViolations(ns.guides)) do
    Check(false, ("%s %s accepts quest %d with no turn-in in any shipped guide (add turnin or OrphanAcceptAllowlist)")
        :format(issue.guideID, tostring(issue.goalID), issue.questID))
end

if failures > 0 then
    io.stderr:write(("%d of %d guide data checks failed\n"):format(failures, checks))
    os.exit(1)
end
print(("Guide data lint passed: %d checks"):format(checks))
