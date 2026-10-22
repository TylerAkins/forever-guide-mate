-- Reads Forever's area-to-UiMap table from the artifact's zone support file.
-- Questie stores the base table as Lua source in a string, and a second string
-- of display overrides; an override replaces the base entry for its area. The
-- zone file needs only the global QuestieLoader, so this runs without the
-- rest of the addon.

local areas = {}

local function evaluate(source)
  local chunk, err = load(source, "areaIdToUiMapId", "t")
  if not chunk then error(err, 0) end
  return chunk()
end

-- Merges the two table sources into { [areaID] = uiMapID }. An override
-- replaces the base entry for its area, and an area whose entry is 0 is left
-- out, because Questie uses 0 to suppress display.
function areas.parse(baseSource, overrideSource)
  local base = evaluate(baseSource)
  for area, uiMap in pairs(evaluate(overrideSource)) do
    base[area] = uiMap
  end
  local result = {}
  for area, uiMap in pairs(base) do
    if type(uiMap) == "number" and uiMap > 0 then result[area] = uiMap end
  end
  return result
end

-- Returns { [areaID] = uiMapID } for every area with a UiMap.
function areas.load(root)
  local ZoneDB = { private = {} }
  QuestieLoader = { ImportModule = function(_, name)
    if name == "ZoneDB" then return ZoneDB end
    error("zone support file imports " .. tostring(name), 0)
  end }
  local chunk, err = loadfile(root .. "/support/Forever/Zones/areaIdToUiMapId.lua")
  if not chunk then error(err, 0) end
  chunk("QuestieDB", {})
  return areas.parse(ZoneDB.private.areaIdToUiMapId, ZoneDB.private.areaIdToUiMapIdOverride)
end

return areas
