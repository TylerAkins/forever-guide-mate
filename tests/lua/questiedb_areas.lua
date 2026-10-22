-- Decoder checks for tools/questiedb/areas.lua. The table sources are inline
-- Lua, so the expected mapping does not depend on the module under test.
-- Run from the repository root: luajit -joff tests/lua/questiedb_areas.lua

local areas = dofile("tools/questiedb/areas.lua")

local failures, assertions = 0, 0

local function Check(value, message)
    assertions = assertions + 1
    if not value then
        failures = failures + 1
        io.stderr:write("FAIL: " .. message .. "\n")
    end
end

local base = [[return {
    [616] = 2482,
    [1519] = 1453,
    [44] = 1433,
    [2257] = 0,
}]]

local overrides = [[return {
    [2257] = 0,
    [1617] = 1453,
    [616] = 2482,
}]]

local parsed = areas.parse(base, overrides)

Check(parsed[1519] == 1453, "a base entry is kept")
Check(parsed[44] == 1433, "a base entry is kept")
Check(parsed[616] == 2482, "an override for the same value is kept")
Check(parsed[1617] == 1453, "an override adds an area")
Check(parsed[2257] == nil, "an area suppressed with 0 is left out")

local suppressed = areas.parse(base, [[return { [1519] = 0 }]])
Check(suppressed[1519] == nil, "an override suppresses a base entry")
Check(suppressed[44] == 1433, "an override leaves other entries alone")

local failed = pcall(areas.parse, "return {", "")
Check(not failed, "a malformed table source is an error")

if failures > 0 then
    io.stderr:write(string.format("%d of %d assertions failed\n", failures, assertions))
    os.exit(1)
end
print(string.format("%d assertions passed", assertions))
