local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
local function initialize(version, selected)
    ForeverGuideMateDB = { schemaVersion = 5 }
    ForeverGuideMateCharDB = { schemaVersion = version, selectedGuide = selected,
        customSetting = 'preserve', completionLedger = { [selected] = { ['1'] = { oldGoal = true } } } }
    ns.InitializeStorage()
    ns.Engine.reviewingGoal = nil
end
local function snapshot(faction, race)
    return { faction = faction, raceID = race, classID = 1, level = 60,
        quests = {}, completedQuests = {}, items = {}, questLogKnown = true,
        questCompletionKnown = true, professions = {}, professionsKnown = true }
end
for _, case in ipairs({
    {'Horde',2,'loremaster-durotar'}, {'Horde',6,'loremaster-mulgore'},
    {'Horde',5,'loremaster-tirisfal-glades'}, {'Alliance',1,'loremaster-elwynn-forest'},
    {'Alliance',3,'loremaster-dun-morogh'}, {'Alliance',4,'loremaster-teldrassil'},
    {'Alliance',95,'loremaster-zephras-isle'}, {'Horde',96,'loremaster-zephras-isle'},
}) do
    initialize(12, 'loremaster-coming-soon')
    ns.Engine:Refresh(snapshot(case[1], case[2]))
    assert(ns.charDB.selectedGuide == case[3], 'The placeholder migrates to a suitable zone for ' .. case[1] .. ' race ' .. case[2])
    assert(ns.Engine.currentGoal, 'The migrated character has an eligible route action')
    assert(ns.charDB.completionLedger['loremaster-coming-soon']['1'].oldGoal, 'The old ledger stays archived')
    assert(ns.charDB.customSetting == 'preserve', 'Unrelated character settings survive')
end
for _, zone in ipairs({'durotar','mulgore'}) do
    initialize(11, 'leveling-' .. zone)
    ns.Engine:Refresh(snapshot('Horde',6))
    assert(ns.charDB.selectedGuide == 'loremaster-' .. zone, 'A known retired zone retains its selection')
    assert(ns.Engine.currentGoal, 'A retired Horde selection does not land on an Alliance guide')
end
initialize(12, 'loremaster-coming-soon')
ns.Engine:Refresh(snapshot(nil,nil))
assert(ns.charDB.pendingLoremasterSelection, 'Unknown character identity defers the migration selection')
ns.InitializeStorage()
ns.Engine:Refresh(snapshot('Horde',2))
assert(ns.charDB.selectedGuide == 'loremaster-durotar', 'The next captured character state completes selection')
initialize(12, 'loremaster-coming-soon')
ns.charDB.selectedGuide = 'loremaster-mulgore'
ns.Engine:Refresh(snapshot('Horde',6))
assert(ns.charDB.selectedGuide == 'loremaster-mulgore' and not ns.charDB.pendingLoremasterSelection,
    'An explicit player selection is preserved while identity loads')
initialize(12, 'loremaster-coming-soon')
local capture, captures = ns.PlayerState.Capture, 0
ns.PlayerState.Capture = function()
    captures = captures + 1
    return snapshot('Horde',2)
end
ns.Engine:Refresh()
ns.PlayerState.Capture = capture
assert(captures == 1 and ns.Engine.currentGoal, 'A normal refresh captures identity before dispatching the ordered route')
assert(ns.charDB.selectedGuide == 'loremaster-durotar', 'Live capture selects the eligible Horde route')
print('Loremaster selection migration checks passed')
