-- Decoder checks for tools/questiedb/baked.lua. The zlib fixtures come from
-- Python's zlib, so the expected bytes do not depend on the decoder under test.
-- Run from the repository root: luajit -joff tests/lua/questiedb_baked.lua

local baked = dofile("tools/questiedb/baked.lua")

local failures, assertions = 0, 0

local function Check(value, message)
    assertions = assertions + 1
    if not value then
        failures = failures + 1
        io.stderr:write("FAIL: " .. message .. "\n")
    end
end

local function Same(actual, expected)
    if type(actual) ~= type(expected) then return false end
    if type(actual) ~= "table" then return actual == expected end
    for key, value in pairs(expected) do
        if not Same(actual[key], value) then return false end
    end
    for key in pairs(actual) do
        if expected[key] == nil then return false end
    end
    return true
end

local function Errors(fn)
    return not pcall(fn)
end

-- base64

Check(baked.base64decode("aGVsbG8=") == "hello", "base64 decodes padded text")
Check(baked.base64decode("") == "", "base64 decodes empty text")
Check(Errors(function() baked.base64decode("a*b=") end), "base64 rejects invalid characters")

-- DEFLATE: fixed Huffman, dynamic Huffman and stored blocks

local fixedText = string.rep("abcabcabc", 20)
local fixedZ = baked.base64decode("eNpLTEpOHGoIAF2oROk=")
Check(baked.inflate(fixedZ) == fixedText, "inflate decodes a fixed-Huffman stream")

local dynamicParts = {}
for index = 1, 200 do dynamicParts[#dynamicParts + 1] = ("the quick brown fox %d jumps; "):format(index) end
local dynamicText = table.concat(dynamicParts)
local fixture = assert(io.open("tests/lua/fixtures/questiedb_dynamic_deflate.b64", "r"))
local dynamicZ = baked.base64decode((fixture:read("*a"):gsub("%s+$", "")))
fixture:close()
Check(baked.inflate(dynamicZ) == dynamicText, "inflate decodes a dynamic-Huffman stream")

local storedZ = baked.base64decode("eAEBBQD6/2hlbGxvBiwCFQ==")
Check(baked.inflate(storedZ) == "hello", "inflate decodes a stored block")

Check(Errors(function() baked.inflate("\0\0\0") end), "inflate rejects a stream without a zlib header")
Check(Errors(function() baked.inflate(fixedZ:sub(1, 5)) end), "inflate rejects a truncated stream")

-- CBOR

Check(Same(baked.cbor("\x83\x01\x02\x03"), { 1, 2, 3 }), "CBOR decodes a definite array as a one-based table")
Check(Same(baked.cbor("\xa2\x01\x65hello\x61p\x05"), { [1] = "hello", p = 5 }), "CBOR decodes a map with integer and text keys")
Check(baked.cbor("\x38\x63") == -100, "CBOR decodes a negative integer")
Check(baked.cbor("\x19\x01\x00") == 256, "CBOR decodes a two-byte unsigned integer")
Check(baked.cbor("\xf9\x3c\x00") == 1.0, "CBOR decodes a half-precision float")
Check(baked.cbor("\xfa\x3f\xc0\x00\x00") == 1.5, "CBOR decodes a single-precision float")
Check(math.abs(baked.cbor("\xfb\x40\x09\x21\xfb\x54\x44\x2d\x18") - math.pi) < 1e-15, "CBOR decodes a double-precision float")
Check(baked.cbor("\xf5") == true and baked.cbor("\xf4") == false, "CBOR decodes booleans")
Check(baked.cbor("\xf6") == nil, "CBOR decodes null as nil")
Check(Same(baked.cbor("\x9f\x01\x02\xff"), { 1, 2 }), "CBOR decodes an indefinite array")
Check(baked.cbor("\x7f\x62ab\x61c\xff") == "abc", "CBOR joins an indefinite text string")
Check(baked.cbor("\xc1\x01") == 1, "CBOR ignores a tag and decodes its value")
Check(Errors(function() baked.cbor("\x01\x02") end), "CBOR rejects trailing bytes")
Check(Errors(function() baked.cbor("\x82\x01") end), "CBOR rejects a truncated array")

print(("questiedb_baked: %d assertions, %d failures"):format(assertions, failures))
if failures > 0 then os.exit(1) end
