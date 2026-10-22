-- Deterministic JSON encoding for the QuestieDB export scripts. A table is an
-- array when its keys are exactly 1..n; any other table encodes as an object
-- with sorted keys.

local json = {}

function json.isSequence(value)
  local count = 0
  for _ in pairs(value) do count = count + 1 end
  return count > 0 and value[1] ~= nil and count == #value
end

function json.encode(value)
  local kind = type(value)
  if kind == "string" then
    return '"' .. value:gsub('[%z\1-\31\\"]', function(char)
      if char == "\\" then return "\\\\" end
      if char == '"' then return '\\"' end
      return string.format("\\u%04x", string.byte(char))
    end) .. '"'
  end
  if kind == "number" or kind == "boolean" then return tostring(value) end
  assert(kind == "table", "unsupported export value: " .. kind)
  local parts = {}
  if json.isSequence(value) then
    for _, item in ipairs(value) do parts[#parts + 1] = json.encode(item) end
    return "[" .. table.concat(parts, ",") .. "]"
  end
  local keys = {}
  for key in pairs(value) do keys[#keys + 1] = key end
  table.sort(keys, function(a, b) return tostring(a) < tostring(b) end)
  for _, key in ipairs(keys) do
    parts[#parts + 1] = json.encode(tostring(key)) .. ":" .. json.encode(value[key])
  end
  return "{" .. table.concat(parts, ",") .. "}"
end

return json
