-- Collects the dynamic QuestieDB Forever corrections for each faction and class.
-- Baked mode folds Static corrections into the metadata store, but Dynamic
-- corrections still apply at query time, chosen by the player's faction and
-- class. This module calls each Forever-owned Dynamic function as
-- src/corrections/register.lua does, once per faction and class, and returns
-- the patches in manifest order.

local corrections = {}

local function isSequence(value)
  local count = 0
  for _ in pairs(value) do count = count + 1 end
  return count > 0 and value[1] ~= nil and count == #value
end

local function named(value, byIndex)
  if type(value) ~= "table" then return value end
  local out = {}
  if isSequence(value) then
    for index, entry in ipairs(value) do out[index] = named(entry, byIndex) end
    return out
  end
  for key, entry in pairs(value) do
    out[byIndex[key] or tostring(key)] = named(entry, byIndex)
  end
  return out
end

-- Same merge as src/corrections/register.lua's wrap: direct writes first, then
-- any returned table overrides them field by field.
local function run(compat, owner, functionName, datatype)
  compat.BeginCapture()
  local returned = compat.Invoke(owner[functionName], owner)
  local captured = compat.EndCapture(datatype)
  local merged = {}
  for id, fields in pairs(captured) do
    local row = {}
    for key, value in pairs(fields) do row[key] = value end
    merged[id] = row
  end
  if type(returned) == "table" then
    for id, fields in pairs(returned) do
      local row = merged[id]
      if not row then row = {}; merged[id] = row end
      for key, value in pairs(fields) do row[key] = value end
    end
  end
  return merged
end

-- Classic-era class tokens. Forever's correction tables key class-specific
-- values by these names, so each class needs its own run.
corrections.classes = { "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR" }
corrections.factions = { "Horde", "Alliance" }

-- Returns result[faction][class] = list of { source, datatype, patches }, where
-- patches are keyed by string ID and carry field names.
function corrections.collect(rt)
  local config, compat = rt.config, rt.compat
  local keyNames = {}
  for _, datatype in ipairs({ "Quest", "Npc", "Item", "Object" }) do
    local byIndex = {}
    for name, index in pairs(rt.Lib.Meta[datatype].keys) do byIndex[index] = name end
    keyNames[datatype] = byIndex
  end

  local providers = {}
  for _, spec in ipairs(config.ownedCorrections) do
    if spec.owned == "Forever" and spec.dynamic then
      local chunk, err = loadfile(rt.root .. "/src/corrections/" .. spec.file)
      if not chunk then error(err, 0) end
      chunk()
      providers[#providers + 1] = spec
    end
  end

  local result = {}
  for _, faction in ipairs(corrections.factions) do
    result[faction] = {}
    for _, class in ipairs(corrections.classes) do
      UnitFactionGroup = function() return faction end
      UnitClassBase = function() return class end
      local groups = {}
      for _, spec in ipairs(providers) do
        local owner = compat.modules[spec.module]
        assert(owner, spec.file .. " did not register " .. spec.module)
        for _, functionName in ipairs(spec.dynamic) do
          local patches = run(compat, owner, functionName, spec.datatype)
          local byID = {}
          for id, fields in pairs(patches) do
            byID[tostring(id)] = named(fields, keyNames[spec.datatype])
          end
          groups[#groups + 1] = {
            source = spec.file .. ":" .. functionName,
            datatype = spec.datatype,
            patches = byID,
          }
        end
      end
      result[faction][class] = groups
    end
  end
  return result
end

return corrections
