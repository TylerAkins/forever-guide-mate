-- Data lint for the shipped guides.
--
-- These are invariants about authored guide data rather than engine behaviour.
-- They hold across every guide today, so a failure here means a new or edited
-- guide broke the rule, not that the rule needs loosening.

local failures = 0
local checks = 0

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
    "Core.lua", "PlayerState.lua", "Travel.lua", "Taxi.lua", "GuideEngine.lua",
    "QuestAudit.lua", "QuestDialog.lua", "Navigation.lua", "TomTomWaypoints.lua",
    "MapPins.lua", "UI.lua",
    "Guides/Dungeons/RagefireChasm.lua", "Guides/Dungeons/WailingCaverns.lua",
    "Guides/Dungeons/RuinsOfLordaeron.lua", "Guides/Dungeons/Deadmines.lua",
    "Guides/Dungeons/HallOfThanes.lua",
    "Guides/Leveling/ZephrasIsle.lua", "Guides/Leveling/Durotar.lua",
    "Guides/Leveling/Mulgore.lua", "Guides/Leveling/TheBarrens.lua",
    "Guides/Leveling/Teldrassil.lua",
    "Guides/Leveling/Era/1-12-durotar.lua",
    "Guides/Leveling/Era/1-12-mulgore.lua",
    "Guides/Leveling/Era/1-12-tirisfal-glades.lua",
    "Guides/Leveling/Era/12-20-barrens.lua",
    "Guides/Leveling/Era/12-20-silverpine-forest.lua",
    "Guides/Leveling/Era/20-22-stonetalon-mountains.lua",
    "Guides/Leveling/Era/22-23-southern-barrens.lua",
    "Guides/Leveling/Era/23-25-stonetalon-mountains.lua",
    "Guides/Leveling/Era/25-25-southern-barrens.lua",
    "Guides/Leveling/Era/25-26-thousand-needles.lua",
    "Guides/Leveling/Era/26-27-ashenvale.lua",
    "Guides/Leveling/Era/27-27-stonetalon-mountains.lua",
    "Guides/Leveling/Era/27-29-thousand-needles.lua",
    "Guides/Leveling/Era/29-30-hillsbrad-foothills.lua",
    "Guides/Leveling/Era/30-30-arathi-highlands.lua",
    "Guides/Leveling/Era/30-31-stranglethorn-vale.lua",
    "Guides/Leveling/Era/31-32-thousand-needles.lua",
    "Guides/Leveling/Era/32-34-desolace.lua",
    "Guides/Leveling/Era/34-36-stranglethorn-vale.lua",
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

if failures > 0 then
    io.stderr:write(("%d of %d guide data checks failed\n"):format(failures, checks))
    os.exit(1)
end
print(("Guide data lint passed: %d checks"):format(checks))
