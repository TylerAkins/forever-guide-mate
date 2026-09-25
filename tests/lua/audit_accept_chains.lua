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
    "Core.lua", "PlayerState.lua", "Travel.lua", "Taxi.lua", "GuideEngine.lua",
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

print("Chain audit passed (CHAIN_ACCEPT_AFTER_TURNIN). See docs/guide-authoring.md for manual review when adding accepts.")
