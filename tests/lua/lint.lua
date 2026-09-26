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
    "Core.lua", "PlayerState.lua", "Travel.lua", "Taxi.lua", "GuideEngine.lua", "QuestPrerequisites.lua",
    "QuestAudit.lua", "QuestDialog.lua", "Navigation.lua", "TomTomWaypoints.lua",
    "MapPins.lua", "UI.lua",
    "Guides/Dungeons/RagefireChasm.lua", "Guides/Dungeons/WailingCaverns.lua",
    "Guides/Dungeons/RuinsOfLordaeron.lua", "Guides/Dungeons/Deadmines.lua",
    "Guides/Dungeons/HallOfThanes.lua",
    "Guides/Leveling/ZephrasIsle.lua", "Guides/Loremaster/Durotar.lua",
    "Guides/Loremaster/Mulgore.lua", "Guides/Loremaster/TheBarrens.lua",
    "Guides/Loremaster/Teldrassil.lua",
    "Guides/Loremaster/LochModan.lua",
    "Guides/Loremaster/Westfall.lua",
    "Guides/Loremaster/DunMorogh.lua",
    "Guides/Loremaster/Duskwood.lua",
    "Guides/Loremaster/RedridgeMountains.lua",
    "Guides/Loremaster/SilverpineForest.lua",
    "Guides/Loremaster/ElwynnForest.lua",
    "Guides/Loremaster/Ashenvale.lua",
    "Guides/Loremaster/Darkshore.lua",
    "Guides/Loremaster/StonetalonMountains.lua",
    "Guides/Leveling/1-12-durotar.lua",
    "Guides/Leveling/1-12-mulgore.lua",
    "Guides/Leveling/1-12-tirisfal-glades.lua",
    "Guides/Leveling/12-20-barrens.lua",
    "Guides/Leveling/12-20-silverpine-forest.lua",
    "Guides/Leveling/20-22-stonetalon-mountains.lua",
    "Guides/Leveling/22-23-southern-barrens.lua",
    "Guides/Leveling/23-25-stonetalon-mountains.lua",
    "Guides/Era/25-25-southern-barrens.lua",
    "Guides/Era/25-26-thousand-needles.lua",
    "Guides/Era/26-27-ashenvale.lua",
    "Guides/Era/27-27-stonetalon-mountains.lua",
    "Guides/Era/27-29-thousand-needles.lua",
    "Guides/Era/29-30-hillsbrad-foothills.lua",
    "Guides/Era/30-30-arathi-highlands.lua",
    "Guides/Era/30-31-stranglethorn-vale.lua",
    "Guides/Era/31-32-thousand-needles.lua",
    "Guides/Era/32-34-desolace.lua",
    "Guides/Era/34-36-stranglethorn-vale.lua",
    "Guides/Era/36-37-alterac-mountains.lua",
    "Guides/Era/37-38-arathi-highlands.lua",
    "Guides/Era/37-38-thousand-needles.lua",
    "Guides/Era/38-38-dustwallow-marsh.lua",
    "Guides/Era/38-40-stranglethorn-vale.lua",
    "Guides/Era/40-41-badlands.lua",
    "Guides/Era/41-42-swamp-of-sorrows.lua",
    "Guides/Era/42-43-stranglethorn-vale.lua",
    "Guides/Era/43-44-dustwallow-marsh.lua",
    "Guides/Era/44-44-desolace.lua",
    "Guides/Era/44-45-tanaris.lua",
    "Guides/Era/45-46-feralas.lua",
    "Guides/Era/46-47-azshara.lua",
    "Guides/Era/47-47-hinterlands.lua",
    "Guides/Era/47-47-stranglethorn-vale.lua",
    "Guides/Era/47-48-searing-gorge.lua",
    "Guides/Era/48-49-swamp-of-sorrows.lua",
    "Guides/Era/49-49-dustwallow-marsh.lua",
    "Guides/Era/49-50-feralas.lua",
    "Guides/Era/49-50-tanaris.lua",
    "Guides/Era/50-50-azshara.lua",
    "Guides/Era/50-51-hinterlands.lua",
    "Guides/Era/51-51-blasted-lands.lua",
    "Guides/Era/51-53-ungoro-crater.lua",
    "Guides/Era/53-54-burning-steppes.lua",
    "Guides/Era/54-54-felwood.lua",
    "Guides/Era/54-55-winterspring.lua",
    "Guides/Era/55-56-felwood.lua",
    "Guides/Era/56-56-western-plaguelands.lua",
    "Guides/Era/56-57-eastern-plaguelands.lua",
    "Guides/Era/57-58-western-plaguelands.lua",
    "Guides/Era/58-59-silithus.lua",
    "Guides/Era/59-60-winterspring.lua",
    "Guides/Leveling/1-12-dun-morogh.lua",
    "Guides/Leveling/1-12-elwynn-forest.lua",
    "Guides/Leveling/1-12-teldrassil.lua",
    "Guides/Leveling/12-17-darkshore.lua",
    "Guides/Leveling/12-17-westfall.lua",
    "Guides/Leveling/17-18-loch-modan.lua",
    "Guides/Leveling/18-20-redridge-mountains.lua",
    "Guides/Leveling/20-21-darkshore.lua",
    "Guides/Leveling/21-22-ashenvale.lua",
    "Guides/Leveling/22-23-stonetalon-mountains.lua",
    "Guides/Leveling/23-24-darkshore.lua",
    "Guides/Era/24-24-ashenvale.lua",
    "Guides/Era/24-27-wetlands.lua",
    "Guides/Leveling/27-28-redridge-mountains.lua",
    "Guides/Leveling/28-29-duskwood.lua",
    "Guides/Era/29-30-ashenvale.lua",
    "Guides/Era/30-31-wetlands.lua",
    "Guides/Era/31-32-hillsbrad-foothills.lua",
    "Guides/Era/32-33-stranglethorn-vale.lua",
    "Guides/Era/33-34-thousand-needles.lua",
    "Guides/Era/34-35-desolace.lua",
    "Guides/Era/36-37-stranglethorn-vale.lua",
    "Guides/Era/37-37-alterac-mountains.lua",
    "Guides/Era/37-38-arathi-highlands-alliance.lua",
    "Guides/Era/38-39-dustwallow-marsh.lua",
    "Guides/Era/39-40-stranglethorn-vale.lua",
    "Guides/Era/40-41-badlands-alliance.lua",
    "Guides/Era/41-42-swamp-of-sorrows-alliance.lua",
    "Guides/Era/42-43-stranglethorn-vale-alliance.lua",
    "Guides/Era/43-43-desolace.lua",
    "Guides/Era/43-44-tanaris.lua",
    "Guides/Era/44-46-feralas.lua",
    "Guides/Era/46-46-azshara.lua",
    "Guides/Era/46-46-hinterlands.lua",
    "Guides/Era/46-47-stranglethorn-vale.lua",
    "Guides/Era/47-48-searing-gorge-alliance.lua",
    "Guides/Era/48-49-feralas.lua",
    "Guides/Era/49-50-tanaris-alliance.lua",
    "Guides/Era/50-50-hinterlands.lua",
    "Guides/Era/50-51-blasted-lands.lua",
    "Guides/Era/51-52-ungoro-crater.lua",
    "Guides/Era/52-53-azshara.lua",
    "Guides/Era/53-54-felwood.lua",
    "Guides/Era/54-55-winterspring-alliance.lua",
    "Guides/Era/55-56-burning-steppes.lua",
    "Guides/Era/55-56-felwood-alliance.lua",
    "Guides/Era/56-57-western-plaguelands.lua",
    "Guides/Era/57-58-eastern-plaguelands.lua",
    "Guides/Era/57-58-western-plaguelands-alliance.lua",
    "Guides/Era/58-59-silithus-alliance.lua",
    "Guides/Era/59-60-winterspring-alliance.lua",
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
    for _, issue in ipairs(guideData.ChainViolations(guide, guideID)) do
        Check(false, ("%s %s accept for quest %d has an invalid prerequisite turn-in for quest %d")
            :format(issue.guideID, tostring(issue.goalID), issue.acceptQuest, issue.needTurnin))
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

if failures > 0 then
    io.stderr:write(("%d of %d guide data checks failed\n"):format(failures, checks))
    os.exit(1)
end
print(("Guide data lint passed: %d checks"):format(checks))
