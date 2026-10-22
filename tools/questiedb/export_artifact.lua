-- Compiles the baked QuestieDB Forever store into the JSON the Go loader reads.
-- Run from the repository root:
--   luajit -joff tools/questiedb/export_artifact.lua <QuestieDB directory> > export.json
--
-- Output:
--   manifest: artifact version and build commit, record counts, variant list
--   areas:    area ID -> UiMap ID, from Forever's zone support file
--   base:     canonical records per datatype (Quest, Npc, Object, Item), keyed by ID
--   variants: per "<Faction>/<CLASS>", only the records that variant's Dynamic
--             corrections change, as full canonical records (replace, not merge)
--
-- Values follow Questie's canonical read path (meta/normalize.lua), applied after
-- the corrections. Integer-keyed tables with keys 1..n are JSON arrays; other
-- integer keys are JSON object keys, as strings. Consumers must accept both.

local here = arg[0]:match("^(.*)/[^/]*$") or "."
local json = dofile(here .. "/encode.lua")
local runtime = dofile(here .. "/runtime.lua")
local corrections = dofile(here .. "/corrections.lua")
local baked = dofile(here .. "/baked.lua")
local areas = dofile(here .. "/areas.lua")

local root = arg[1]
assert(root, "usage: export_artifact.lua <QuestieDB directory>")

local rt = runtime.load(root)
local normalize = rt.load("src/meta/normalize.lua")
local artifact = baked.open(root)

local datatypes = { "Quest", "Npc", "Object", "Item" }
local schemas, base = {}, {}
for _, datatype in ipairs(datatypes) do
  local meta = rt.Lib.Meta[datatype]
  local names = {}
  for name, index in pairs(meta.keys) do names[index] = name end
  schemas[datatype] = { names = names, meta = meta, normalize = normalize }
  base[datatype] = artifact:records(datatype, schemas[datatype])
end

-- Applies the corrections of one variant. It returns the touched records and
-- the value each correction set, so a cleared field is told apart from a lost
-- one: a correction that sets a field to nil removes it on purpose.
local CLEARED = {}

local function patchVariant(groups)
  local touched, patched = {}, {}
  for _, datatype in ipairs(datatypes) do
    touched[datatype] = {}
    patched[datatype] = {}
  end
  for _, group in ipairs(groups) do
    local datatype = group.datatype
    local schema = schemas[datatype]
    for idText, fields in pairs(group.patches) do
      local id = tonumber(idText)
      local record = touched[datatype][id]
      if not record then
        local source = base[datatype][id]
        if not source then
          error(("%s patch for %s has no base record (%s)"):format(datatype, idText, group.source))
        end
        record = {}
        for name, value in pairs(source) do record[name] = value end
        touched[datatype][id] = record
        patched[datatype][id] = {}
      end
      for name, value in pairs(fields) do
        local index = schema.meta.keys[name]
        if index == nil then
          error(("%s correction from %s sets unmapped field %s"):format(datatype, group.source, name))
        end
        local normalized = normalize.field(schema.meta, index, value)
        record[name] = normalized
        patched[datatype][id][name] = normalized ~= nil and normalized or CLEARED
      end
    end
  end
  return touched, patched
end

local function stringKeyed(byID)
  local out = {}
  for id, record in pairs(byID) do out[tostring(id)] = record end
  return out
end

local variants, variantCounts = {}, {}
local collected = corrections.collect(rt)
for _, faction in ipairs(corrections.factions) do
  for _, class in ipairs(corrections.classes) do
    local touched, patched = patchVariant(collected[faction][class])
    local name = faction .. "/" .. class
    variants[name] = {}
    variantCounts[name] = {}
    for _, datatype in ipairs(datatypes) do
      local overrides = {}
      for id, record in pairs(touched[datatype]) do
        -- Completeness: an override is a full record, so it keeps every field
        -- of the base record it replaces, unless a correction cleared it.
        for field in pairs(base[datatype][id]) do
          if record[field] == nil and patched[datatype][id][field] ~= CLEARED then
            error(("variant %s %s %s lost the base field %s"):format(name, datatype, id, field))
          end
        end
        if json.encode(record) ~= json.encode(base[datatype][id]) then overrides[id] = record end
      end
      local count = 0
      for _ in pairs(overrides) do count = count + 1 end
      if count > 0 then
        variants[name][datatype] = stringKeyed(overrides)
        variantCounts[name][datatype] = count
      end
    end
  end
end

local counts, baseStrings = {}, {}
for _, datatype in ipairs(datatypes) do
  local count = 0
  for _ in pairs(base[datatype]) do count = count + 1 end
  -- Completeness: the export carries one record for every entity the artifact
  -- lists, so a quest can never be missing from the export without an error.
  local wanted = #artifact:ids(datatype)
  if count ~= wanted then
    error(("export has %d %s records, the artifact has %d"):format(count, datatype, wanted))
  end
  counts[datatype] = count
  baseStrings[datatype] = stringKeyed(base[datatype])
end

io.write(json.encode({
  manifest = {
    artifactVersion = artifact.version,
    buildCommit = artifact.buildCommit,
    counts = counts,
    variants = variantCounts,
  },
  base = baseStrings,
  variants = variants,
  areas = stringKeyed(areas.load(root)),
}), "\n")
