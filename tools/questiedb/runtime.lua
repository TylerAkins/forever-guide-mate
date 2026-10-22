-- Shared setup for the QuestieDB export scripts. It loads the artifact's shipped
-- configuration, enum constants and metadata, then installs Forever's correction
-- compatibility layer, so the scripts see the modules the runtime sees.

local runtime = {}

function runtime.load(root)
  local Lib = { Enum = {}, Meta = {} }
  local function load(path)
    local chunk, err = loadfile(root .. "/" .. path)
    if not chunk then error(err, 0) end
    return chunk("QuestieDB", Lib)
  end

  local config = load("src/config.lua")
  for _, file in ipairs(config.enumFiles) do load(file) end
  for _, meta in ipairs({ "questMeta", "npcMeta", "itemMeta", "objectMeta" }) do
    load("src/meta/" .. meta .. ".lua")
  end
  local compat = load("src/corrections/compat.lua")
  compat.Install(config.flavorByName.Forever)
  return { root = root, Lib = Lib, config = config, compat = compat, load = load }
end

return runtime
