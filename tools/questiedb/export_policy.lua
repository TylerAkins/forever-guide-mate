-- Dump Questie's holiday membership and quest tag corrections for Forever.
-- Run from the repository root with a QuestieDB checkout or extracted artifact
-- and the Questie checkout that matches it:
--   luajit -joff tools/questiedb/export_policy.lua <QuestieDB directory> <Questie directory>
--
-- Questie's policy files are Lua. This runner executes them with Forever's
-- expansion values, so conditions such as `Expansions.Current == Expansions.Era`
-- resolve as they do in game. The Questie globals the files read are strict: an
-- unmapped flag fails the run rather than defaulting silently.
--
-- The output lists holiday membership, including entries Questie hides during
-- the event, and the tag corrections Questie applies over the API tags.

local here = arg[0]:match("^(.*)/[^/]*$") or "."
local json = dofile(here .. "/encode.lua")
local runtime = dofile(here .. "/runtime.lua")

local dbRoot, questieRoot = arg[1], arg[2]
assert(dbRoot and questieRoot, "usage: export_policy.lua <QuestieDB directory> <Questie directory>")

local rt = runtime.load(dbRoot)
local modules = rt.compat.modules

_G.Questie = setmetatable({ IsSoD = false, IsEURegion = false, IsTitanReforged = false }, {
  __index = function(_, key)
    error("Questie." .. tostring(key) .. " is not mapped for the Forever policy export", 2)
  end,
})

local events = {}
modules.QuestieEvent = { eventQuests = events }

local listing = io.popen('ls -1 "' .. questieRoot .. '/Database/Corrections/Holidays/quests"')
local files = {}
for file in listing:lines() do
  if file:match("%.lua$") then files[#files + 1] = file end
end
listing:close()
table.sort(files)
for _, file in ipairs(files) do
  local chunk, err = loadfile(questieRoot .. "/Database/Corrections/Holidays/quests/" .. file)
  if not chunk then error(err, 0) end
  chunk()
end

local holidays = {}
for _, entry in ipairs(events) do
  holidays[#holidays + 1] = {
    questId = entry[2],
    event = entry[1],
    hidden = entry[7] == true,
  }
end
table.sort(holidays, function(a, b)
  if a.questId ~= b.questId then return a.questId < b.questId end
  return a.event < b.event
end)

local questDB = modules.QuestieDB
questDB.private = {}
local tagChunk, tagErr = loadfile(questieRoot .. "/Database/Corrections/questTagInfoCorrections.lua")
if not tagChunk then error(tagErr, 0) end
tagChunk()
questDB.private.InitializeQuestTagInfoCorrections()

local questTags = {}
for questId, tag in pairs(questDB.private.questTagCorrections) do
  questTags[tostring(questId)] = { tagId = tag[1], name = tag[2] }
end

io.write(json.encode({ holidays = holidays, questTags = questTags }), "\n")
