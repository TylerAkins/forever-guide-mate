#!/usr/bin/env lua5.1
-- Optional review pass: chain violations (must be zero) and orphan-accept hints
-- (manual review). Run from repo root:
--   lua5.1 tests/lua/audit_accept_chains.lua

local guideData = dofile("tests/lua/guide_data_checks.lua")

local ns = {}
local function Load(path)
    local chunk, reason = loadfile(path)
    if not chunk then
        io.stderr:write("FAIL: load " .. path .. ": " .. tostring(reason) .. "\n")
        os.exit(1)
    end
    chunk("ForeverGuideMate", ns)
end

CreateFrame = nil
C_Timer = nil
for _, path in ipairs({
    "Core.lua", "PlayerState.lua", "Travel.lua", "Taxi.lua", "GuideEngine.lua", "QuestPrerequisites.lua",
    "QuestAudit.lua", "QuestDialog.lua", "Navigation.lua", "TomTomWaypoints.lua",
    "MapPins.lua", "UI.lua",
}) do
    Load(path)
end

local lintSource = io.open("tests/lua/lint.lua"):read("*a")
for quoted in lintSource:gmatch('"Guides/[^"]+%.lua"') do
    local path = quoted:sub(2, -2)
    Load(path)
end

local violations = 0
for _, guideID in ipairs(ns.guideOrder) do
    local guide = ns.guides[guideID]
    for _, issue in ipairs(guideData.ChainViolations(guide, guideID)) do
        violations = violations + 1
        io.stderr:write(string.format(
            "CHAIN: %s %s accept %d needs dependsOn turnin %d\n",
            issue.guideID, issue.goalID, issue.acceptQuest, issue.needTurnin))
    end
end

if violations > 0 then
    io.stderr:write(string.format(
        "%d chain violation(s). Fix dependsOn or add an exception in tests/lua/guide_data_checks.lua\n",
        violations))
    os.exit(1)
end

local requiredMissing = 0
local hints = 0
print("Accepts with no turn-in in the same Leveling chapter (review hints, not failures):")
for _, guideID in ipairs(ns.guideOrder) do
    local guide = ns.guides[guideID]
    for _, hint in ipairs(guideData.AcceptsWithoutSameChapterTurnin(guide, guideID)) do
        hints = hints + 1
        print(string.format("  %s %s quest %d", hint.guideID, hint.goalID, hint.questID))
        if hint.required then
            requiredMissing = requiredMissing + 1
            io.stderr:write(string.format(
                "DENY: %s %s quest %d must turn in in the same chapter\n",
                hint.guideID, hint.goalID, hint.questID))
        end
    end
end
if hints == 0 then
    print("  (none)")
end

print("Shared quests whose step kinds are a strict subset of another guide:")
local gapCount = 0
for _, issue in ipairs(guideData.CollapsedCoverageGaps(guideData.AllGuideCoverageGaps(ns.guides))) do
    gapCount = gapCount + 1
    local key = issue.detourID .. ":" .. tostring(issue.questID)
    local shipped = guideData.IsShippedLevelingID(issue.detourID)
        and guideData.IsShippedLevelingID(issue.canonicalID)
    local label = "hint"
    if shipped and guideData.CoverageGapAllowlist[key] then
        label = "allow"
    elseif shipped then
        label = "fail"
    end
    print(string.format("  %s %s quest %d missing %s versus %s",
        label, issue.detourID, issue.questID, issue.missing, issue.canonicalID))
end
if gapCount == 0 then
    print("  (none)")
end

if requiredMissing > 0 then
    io.stderr:write(string.format(
        "%d same-chapter turn-in denylist violation(s). See SameChapterTurninRequired in tests/lua/guide_data_checks.lua\n",
        requiredMissing))
    os.exit(1)
end

print("Chain audit passed (registered quest prerequisites). See docs/guide-authoring.md for manual review when adding accepts.")
