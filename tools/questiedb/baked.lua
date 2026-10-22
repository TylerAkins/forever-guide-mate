-- Reads QuestieDB's baked entity store from an extracted artifact directory.
-- The TOC stores each entity's ID list as zlib-compressed CBOR, and each
-- entity's scalar record and field overrides as CBOR. LuaJIT has no zlib, so
-- this module includes a DEFLATE decoder (RFC 1951) and a CBOR decoder for the
-- subset the baked store uses. It mirrors internal/questiedb in
-- forever-quest-markers, which is the reference for the expected values.

local ffi = require("ffi")
local baked = {}

local floor = math.floor

local B64 = {}
local alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
for index = 1, 64 do B64[alphabet:byte(index)] = index - 1 end

function baked.base64decode(text)
  local out, acc, accBits = {}, 0, 0
  for index = 1, #text do
    local code = text:byte(index)
    if code == 61 then break end
    local value = B64[code]
    if not value then error("base64: invalid character at " .. index) end
    acc = acc * 64 + value
    accBits = accBits + 6
    if accBits >= 8 then
      accBits = accBits - 8
      local scale = 2 ^ accBits
      out[#out + 1] = string.char(floor(acc / scale))
      acc = acc % scale
    end
  end
  return table.concat(out)
end

local LBASE = { 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31, 35, 43, 51, 59, 67, 83, 99, 115, 131, 163, 195, 227, 258 }
local LEXT = { 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0 }
local DBASE = { 1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, 193, 257, 385, 513, 769, 1025, 1537, 2049, 3073, 4097, 6145, 8193, 12289, 16385, 24577 }
local DEXT = { 0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13 }
local CLORDER = { 16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15 }

-- Canonical Huffman table: counts per code length and symbols in code order.
local function construct(lengths, n)
  local count = {}
  for length = 0, 15 do count[length] = 0 end
  for symbol = 0, n - 1 do count[lengths[symbol]] = count[lengths[symbol]] + 1 end
  local offsets = { [1] = 0 }
  for length = 1, 14 do offsets[length + 1] = offsets[length] + count[length] end
  local symbols = {}
  for symbol = 0, n - 1 do
    local length = lengths[symbol]
    if length ~= 0 then
      symbols[offsets[length]] = symbol
      offsets[length] = offsets[length] + 1
    end
  end
  return { count = count, symbol = symbols }
end

local function bitReader(data, position)
  local reader = { position = position, buffer = 0, count = 0 }
  function reader.bits(need)
    while reader.count < need do
      local byte = data:byte(reader.position)
      if not byte then error("inflate: unexpected end of data") end
      reader.buffer = reader.buffer + byte * 2 ^ reader.count
      reader.position = reader.position + 1
      reader.count = reader.count + 8
    end
    local scale = 2 ^ need
    local value = reader.buffer % scale
    reader.buffer = floor(reader.buffer / scale)
    reader.count = reader.count - need
    return value
  end
  return reader
end

local function decodeSymbol(reader, huffman)
  local code, first, index = 0, 0, 0
  for length = 1, 15 do
    code = code + reader.bits(1)
    local count = huffman.count[length]
    if code - count < first then return huffman.symbol[index + (code - first)] end
    index = index + count
    first = (first + count) * 2
    code = code * 2
  end
  error("inflate: invalid Huffman code")
end

local function inflateCodes(reader, out, literals, distances)
  while true do
    local symbol = decodeSymbol(reader, literals)
    if symbol < 256 then
      out[#out + 1] = symbol
    elseif symbol == 256 then
      return
    else
      symbol = symbol - 257
      if symbol >= 29 then error("inflate: invalid length symbol") end
      local length = LBASE[symbol + 1] + reader.bits(LEXT[symbol + 1])
      local distanceSymbol = decodeSymbol(reader, distances)
      if distanceSymbol >= 30 then error("inflate: invalid distance symbol") end
      local distance = DBASE[distanceSymbol + 1] + reader.bits(DEXT[distanceSymbol + 1])
      if distance > #out then error("inflate: distance too far back") end
      local start = #out - distance
      for index = 1, length do out[#out + 1] = out[start + index] end
    end
  end
end

local fixedLiterals, fixedDistances
local function fixedTables()
  if not fixedLiterals then
    local lengths = {}
    for symbol = 0, 143 do lengths[symbol] = 8 end
    for symbol = 144, 255 do lengths[symbol] = 9 end
    for symbol = 256, 279 do lengths[symbol] = 7 end
    for symbol = 280, 287 do lengths[symbol] = 8 end
    fixedLiterals = construct(lengths, 288)
    local distances = {}
    for symbol = 0, 29 do distances[symbol] = 5 end
    fixedDistances = construct(distances, 30)
  end
  return fixedLiterals, fixedDistances
end

local function dynamicTables(reader)
  local literalCount = reader.bits(5) + 257
  local distanceCount = reader.bits(5) + 1
  local codeCount = reader.bits(4) + 4
  local codeLengths = {}
  for index = 0, 18 do codeLengths[index] = 0 end
  for index = 1, codeCount do codeLengths[CLORDER[index]] = reader.bits(3) end
  local codes = construct(codeLengths, 19)
  local lengths = {}
  local index = 0
  while index < literalCount + distanceCount do
    local symbol = decodeSymbol(reader, codes)
    if symbol < 16 then
      lengths[index] = symbol
      index = index + 1
    else
      local value, repeatCount = 0, 0
      if symbol == 16 then
        if index == 0 then error("inflate: repeat with no previous length") end
        value = lengths[index - 1]
        repeatCount = 3 + reader.bits(2)
      elseif symbol == 17 then
        repeatCount = 3 + reader.bits(3)
      else
        repeatCount = 11 + reader.bits(7)
      end
      for _ = 1, repeatCount do
        lengths[index] = value
        index = index + 1
      end
    end
  end
  if index ~= literalCount + distanceCount then error("inflate: code lengths overflow") end
  local literalLengths, distanceLengths = {}, {}
  for symbol = 0, literalCount - 1 do literalLengths[symbol] = lengths[symbol] end
  for symbol = 0, distanceCount - 1 do distanceLengths[symbol] = lengths[literalCount + symbol] end
  return construct(literalLengths, literalCount), construct(distanceLengths, distanceCount)
end

-- Decodes a zlib stream (2-byte header, DEFLATE data). The trailing Adler-32
-- checksum is not verified; the artifact's own TOC is the integrity boundary.
function baked.inflate(zlib)
  if #zlib < 2 or zlib:byte(1) % 16 ~= 8 then error("inflate: not a zlib stream") end
  local reader = bitReader(zlib, 3)
  local out = {}
  local final
  repeat
    final = reader.bits(1)
    local kind = reader.bits(2)
    if kind == 0 then
      reader.buffer, reader.count = 0, 0
      local position = reader.position
      local length = zlib:byte(position) + zlib:byte(position + 1) * 256
      position = position + 4
      for offset = 0, length - 1 do
        local byte = zlib:byte(position + offset)
        if not byte then error("inflate: stored block overruns data") end
        out[#out + 1] = byte
      end
      reader.position = position + length
    elseif kind == 1 then
      local literals, distances = fixedTables()
      inflateCodes(reader, out, literals, distances)
    elseif kind == 2 then
      local literals, distances = dynamicTables(reader)
      inflateCodes(reader, out, literals, distances)
    else
      error("inflate: invalid block type")
    end
  until final == 1
  local chunks = {}
  for index = 1, #out, 4096 do
    chunks[#chunks + 1] = string.char(unpack(out, index, math.min(index + 4095, #out)))
  end
  return table.concat(chunks)
end

local function float32(bits)
  local buffer = ffi.new("uint32_t[1]", bits)
  return tonumber(ffi.cast("float*", buffer)[0])
end

local function float64(high, low)
  local buffer = ffi.new("uint32_t[2]", low, high)
  return tonumber(ffi.cast("double*", buffer)[0])
end

local function halfToFloat(value)
  local sign = floor(value / 32768)
  local exponent = floor(value / 1024) % 32
  local fraction = value % 1024
  local result
  if exponent == 0 then
    result = fraction * 2 ^ -24
  elseif exponent == 31 then
    result = fraction == 0 and math.huge or 0 / 0
  else
    result = (fraction + 1024) * 2 ^ (exponent - 25)
  end
  if sign == 1 then return -result end
  return result
end

-- Decodes one CBOR value. Arrays become 1-based Lua tables, as the Go reader's
-- one-based MapGet expects. Maps keep their keys, with byte strings as strings.
function baked.cbor(data)
  local position = 1

  local function take(count)
    if count < 0 or position + count - 1 > #data then error("CBOR: unexpected end of payload") end
    local raw = data:sub(position, position + count - 1)
    position = position + count
    return raw
  end

  local function unsigned(count)
    local raw = take(count)
    local value = 0
    for index = 1, #raw do value = value * 256 + raw:byte(index) end
    return value
  end

  local function argument(additional)
    if additional < 24 then return additional, false end
    if additional == 24 then return unsigned(1), false end
    if additional == 25 then return unsigned(2), false end
    if additional == 26 then return unsigned(4), false end
    if additional == 27 then return unsigned(8), false end
    if additional == 31 then return nil, true end
    error("CBOR: invalid additional information " .. additional)
  end

  local value
  local function breakOrValue(collect)
    while true do
      if position > #data then error("CBOR: unexpected end of payload") end
      if data:byte(position) == 0xff then
        position = position + 1
        return
      end
      collect()
    end
  end

  function value()
    if position > #data then error("CBOR: unexpected end of payload") end
    local initial = data:byte(position)
    position = position + 1
    local major = floor(initial / 32)
    local additional = initial % 32
    if major == 7 and additional == 27 then
      local raw = take(8)
      local high = 0
      for index = 1, 4 do high = high * 256 + raw:byte(index) end
      local low = 0
      for index = 5, 8 do low = low * 256 + raw:byte(index) end
      return float64(high, low)
    end
    if major == 7 and additional == 26 then return float32(unsigned(4)) end
    if major == 7 and additional == 25 then return halfToFloat(unsigned(2)) end
    local length, indefinite = argument(additional)
    if major == 0 then
      if indefinite then error("CBOR: indefinite unsigned integer") end
      return length
    elseif major == 1 then
      if indefinite then error("CBOR: indefinite negative integer") end
      return -1 - length
    elseif major == 2 then
      if not indefinite then return take(length) end
      local parts = {}
      breakOrValue(function()
        local chunk = value()
        if type(chunk) ~= "string" then error("CBOR: indefinite byte string contains a non-string") end
        parts[#parts + 1] = chunk
      end)
      return table.concat(parts)
    elseif major == 3 then
      if not indefinite then return take(length) end
      local parts = {}
      breakOrValue(function()
        local chunk = value()
        if type(chunk) ~= "string" then error("CBOR: indefinite text string contains a non-string") end
        parts[#parts + 1] = chunk
      end)
      return table.concat(parts)
    elseif major == 4 then
      local items = {}
      if indefinite then
        breakOrValue(function() items[#items + 1] = value() end)
        return items
      end
      for index = 1, length do items[index] = value() end
      return items
    elseif major == 5 then
      local map = {}
      if indefinite then
        breakOrValue(function()
          local key = value()
          map[key] = value()
        end)
        return map
      end
      for _ = 1, length do
        local key = value()
        map[key] = value()
      end
      return map
    elseif major == 6 then
      if indefinite then error("CBOR: indefinite tag") end
      return value()
    end
    if indefinite then error("CBOR: indefinite simple value") end
    if additional == 20 then return false end
    if additional == 21 then return true end
    if additional == 22 or additional == 23 then return nil end
    error("CBOR: unsupported simple value " .. additional)
  end

  local result = value()
  if position ~= #data + 1 then error("CBOR: " .. (#data + 1 - position) .. " trailing bytes") end
  return result
end

-- Opens an extracted QuestieDB directory: the one holding QuestieDB_Forever.toc.
function baked.open(root)
  local artifact = { root = root, meta = {} }
  local file = io.open(root .. "/QuestieDB_Forever.toc", "r")
  if not file then error("QuestieDB_Forever.toc not found under " .. root) end
  for line in file:lines() do
    line = line:gsub("\r$", "")
    if line:sub(1, 3) == "## " then
      local rest = line:sub(4)
      local colon = rest:find(":", 1, true)
      if not colon or colon <= 1 then error("malformed TOC line: " .. line) end
      local key = rest:sub(1, colon - 1):gsub("^%s+", ""):gsub("%s+$", "")
      local text = rest:sub(colon + 1)
      if text:sub(1, 1) == " " then text = text:sub(2) end
      artifact.meta[key] = text
    end
  end
  file:close()
  local contract = artifact.meta["X-Contract-Version"]
  if contract ~= "4" then error("QuestieDB contract version " .. tostring(contract) .. " is unsupported (want 4)") end
  if (artifact.meta["X-Flavor"] or ""):lower() ~= "forever" then error("QuestieDB flavor is not Forever") end
  artifact.version = artifact.meta["Version"]
  artifact.buildCommit = artifact.meta["X-BUILD-COMMIT"]
  artifact.overrides = {}
  artifact.scalarKeys = {}
  for key in pairs(artifact.meta) do
    local entity, id, index = key:match("^X%-(%a+)%-(%d+)%-(%d+)$")
    if entity then
      artifact.overrides[entity] = artifact.overrides[entity] or {}
      local byID = artifact.overrides[entity]
      byID[tonumber(id)] = byID[tonumber(id)] or {}
      byID[tonumber(id)][tonumber(index)] = key
    end
    local scalarEntity, scalarID = key:match("^X%-(%a+)%-(%d+)%-S$")
    if scalarEntity then
      artifact.scalarKeys[scalarEntity] = artifact.scalarKeys[scalarEntity] or {}
      artifact.scalarKeys[scalarEntity][tonumber(scalarID)] = key
    end
  end
  return setmetatable(artifact, { __index = baked.Artifact })
end

baked.Artifact = {}

function baked.Artifact:stored(key)
  local raw = self.meta[key]
  if raw == nil then error("QuestieDB TOC is missing " .. key) end
  local count = (raw:gsub("^%s+", ""):gsub("%s+$", "")):match("^~(%d+)~$")
  if not count then return raw end
  local parts = {}
  for index = 1, tonumber(count) do
    local chunk = self.meta[key .. "-" .. index]
    if chunk == nil then error("QuestieDB TOC is missing " .. key .. "-" .. index) end
    parts[#parts + 1] = chunk
  end
  return table.concat(parts)
end

function baked.Artifact:ids(entity)
  local value = baked.cbor(baked.inflate(baked.base64decode(self:stored("X-" .. entity .. "-IDS"))))
  local seen, list = {}, {}
  for _, id in ipairs(value) do
    if type(id) == "number" and not seen[id] then
      seen[id] = true
      list[#list + 1] = id
    end
  end
  table.sort(list)
  if #list == 0 then error("X-" .. entity .. "-IDS contains no IDs") end
  return list
end

-- Returns the stored value of every field of one entity as { [index] = value },
-- before normalization. The scalar's `p` key is the presence mask for table
-- fields, which the overrides already carry, so it is skipped. Any other
-- non-numeric key, or a value at an index outside `names`, is an error: it
-- would otherwise be lost silently.
function baked.Artifact:fields(entity, id, names)
  local scalarKey = self.scalarKeys[entity] and self.scalarKeys[entity][id]
  if not scalarKey then error(entity .. " " .. id .. " has no scalar record") end
  local scalar = baked.cbor(baked.base64decode(self:stored(scalarKey)))
  local result = {}
  for index, value in pairs(scalar) do
    if index == "p" then
      -- presence mask, see above
    elseif type(index) ~= "number" then
      error(entity .. " " .. id .. " has an unmapped key " .. tostring(index))
    else
      result[index] = value
    end
  end
  local overrides = self.overrides[entity] and self.overrides[entity][id] or {}
  for index, key in pairs(overrides) do
    result[index] = baked.cbor(baked.base64decode(self:stored(key)))
  end
  for index, value in pairs(result) do
    if value ~= nil and names[index] == nil then
      error(entity .. " " .. id .. " field " .. index .. " has no mapped name")
    end
  end
  return result
end

-- Decodes every entity of one type into canonical records keyed by ID. Each
-- mapped field passes through the Questie normalizer, so absent numbers default
-- to 0, never-nil tables to {}, and constants and named normalizers apply as
-- they do at runtime. `schema` is { names = {index -> name}, meta, normalize }.
function baked.Artifact:records(entity, schema)
  local records = {}
  for _, id in ipairs(self:ids(entity)) do
    local raw = self:fields(entity, id, schema.names)
    local record = {}
    for index, name in pairs(schema.names) do
      local value = schema.normalize.field(schema.meta, index, raw[index])
      if value ~= nil then record[name] = value end
    end
    records[id] = record
  end
  return records
end

return baked
