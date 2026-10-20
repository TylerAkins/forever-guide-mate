-- Export registered guide data for offline authoring without finalizing Casual.
local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM', ns) end
end
local function encode(value)
    local kind = type(value)
    if kind == 'string' then
        return '"' .. value:gsub('[%z\1-\31\\"]', function(char)
            if char == '\\' then return '\\\\' end
            if char == '"' then return '\\"' end
            return string.format('\\u%04x', string.byte(char))
        end) .. '"'
    end
    if kind == 'number' or kind == 'boolean' then return tostring(value) end
    assert(kind == 'table', 'Unsupported exported value: ' .. kind)
    local out = {}
    if #value > 0 then
        for _, item in ipairs(value) do out[#out + 1] = encode(item) end
        return '[' .. table.concat(out, ',') .. ']'
    end
    local keys = {}
    for key in pairs(value) do keys[#keys + 1] = key end
    table.sort(keys, function(a,b) return tostring(a) < tostring(b) end)
    for _, key in ipairs(keys) do out[#out + 1] = encode(tostring(key)) .. ':' .. encode(value[key]) end
    return '{' .. table.concat(out, ',') .. '}'
end
local guides = {}
for _, id in ipairs(ns.guideOrder) do
    local guide = ns.guides[id]
    if guide.category == 'Leveling Quest Guides' or guide.category == 'Loremaster Guides' then
        guides[#guides + 1] = guide
    end
end
print(encode({guides=guides, prerequisites=ns.questPrerequisites}))
