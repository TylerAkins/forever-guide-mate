local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
local checks = 0
local function check(value, message)
    checks = checks + 1
    assert(value, message)
end
local misc, loremaster = 0, 0
for _, id in ipairs(ns.guideOrder) do
    local guide = ns.guides[id]
    check(guide.category ~= 'Legacy Points', 'Legacy Points is no longer a category')
    if guide.category == 'Miscellaneous Guides' then
        misc = misc + 1
    else
        check(guide.routeMode == 'ordered', id .. ' uses authored execution')
        check(guide.priority == nil, id .. ' has no guide priority')
        for _, goal in ipairs(guide.goals) do check(goal.priority == nil, id .. ':' .. goal.id .. ' has no priority') end
    end
    if guide.category == 'Loremaster Guides' then
        loremaster = loremaster + 1
        check(id == 'loremaster-coming-soon', 'Only the Loremaster placeholder is registered')
        check(guide.title == 'Coming Soon!' and #guide.goals == 1, 'Placeholder has one Coming Soon entry')
        check(guide.goals[1].text == 'Coming Soon!', 'Placeholder text is Coming Soon!')
        check(ns.Engine:GetGoalQuestID(guide.goals[1]) == nil, 'Placeholder grants no quest progress')
    end
end
check(misc == 27, 'Miscellaneous contains the books and all 26 exploration guides')
check(loremaster == 1, 'One Loremaster placeholder remains')
check(ns.guides['leveling-durotar'] == nil and ns.guides['leveling-mulgore'] == nil, 'Retired Loremaster guides are absent')
for _, old in ipairs({'leveling-durotar', 'leveling-mulgore'}) do
    ForeverGuideMateDB = { schemaVersion = 5 }
    ForeverGuideMateCharDB = { schemaVersion = 11, selectedGuide = old, customSetting = 'preserve',
        completionLedger = { [old] = { ['1'] = { oldGoal = true } } } }
    ns.InitializeStorage()
    check(ns.charDB.selectedGuide == 'loremaster-coming-soon', 'Retired selection opens the placeholder')
    check(ns.charDB.completionLedger[old]['1'].oldGoal == true, 'Old progress stays archived')
    check(ns.charDB.customSetting == 'preserve', 'Migration preserves unrelated state')
end
local function before(guideID, first, second)
    local guide = ns.guides[guideID]
    local _, a = ns.Engine:GetGoal(guide, first)
    local _, b = ns.Engine:GetGoal(guide, second)
    check(a and b and a < b, guideID .. ': ' .. first .. ' precedes ' .. second)
end
before('dungeons-wailing-caverns', 'prerequisite-turnin-880-altered-beings', 'accept-hamuul-runetotem')
before('dungeons-the-deadmines', 'prerequisite-turnin-155-the-defias-brotherhood', 'accept-defias-brotherhood')
before('dungeons-the-deadmines', 'prerequisite-turnin-153-red-leather-bandanas', 'accept-red-silk-bandanas')
before('dungeons-uldaman', 'accept-2202-uldaman-reagent-run', 'enter-dungeon')
before('dungeons-temple-of-atal-hakkar', 'accept-1445-the-temple-of-atal-hakkar', 'enter-dungeon')
before('dungeons-dire-maul-north-tribute', 'enter-dungeon', 'turnin-1193-a-broken-trap')
print('Authored guide contracts passed: ' .. checks .. ' checks')
