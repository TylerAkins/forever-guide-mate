-- Dump the dynamic QuestieDB Forever corrections for each faction and class.
-- Run from the repository root with a QuestieDB checkout or extracted artifact:
--   luajit -joff tools/questiedb/export_corrections.lua <QuestieDB directory>
--
-- The Go compiler does not read this file directly. export_artifact.lua applies
-- the same corrections to the baked records; this dump is for review.

local here = arg[0]:match("^(.*)/[^/]*$") or "."
local json = dofile(here .. "/encode.lua")
local runtime = dofile(here .. "/runtime.lua")
local corrections = dofile(here .. "/corrections.lua")

local root = arg[1]
assert(root, "usage: export_corrections.lua <QuestieDB directory>")

io.write(json.encode(corrections.collect(runtime.load(root))), "\n")
