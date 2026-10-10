local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
ns.db = { autoAdvance = true, autoQuest = true }
local assertions = 0
local function equal(actual, expected, message)
    assertions = assertions + 1
    assert(actual == expected, message .. ': expected ' .. tostring(expected) .. ', got ' .. tostring(actual))
end
local function state(race, class, faction, level)
    return { raceID = race, classID = class, faction = faction, level = level or 1,
        quests = {}, completedQuests = {}, questLogKnown = true,
        questCompletionKnown = true, professions = {}, professionsKnown = true, items = {} }
end
local function select(guideID, snapshot)
    ns.charDB = { selectedGuide = guideID, orderedRoutes = {}, activeGoalByGuide = {} }
    ns.Engine.reviewingGoal = nil
    ns.Engine:Refresh(snapshot)
end
local function signature(goal)
    if not goal then return 'end' end
    if goal.requiredLevel then return 'level:' .. goal.requiredLevel end
    local quest = ns.Engine:GetGoalQuestID(goal)
    local spec = goal.complete and goal.complete.questObjective
    return goal.kind .. ':' .. tostring(quest) .. (spec and ':' .. spec.index or '')
end
local function observe(goal, snapshot)
    local questID = ns.Engine:GetGoalQuestID(goal)
    if goal.kind == 'accept' then
        snapshot.quests[questID] = { complete = false, objectives = {} }
    elseif goal.kind == 'turnin' then
        snapshot.quests[questID] = nil
        snapshot.completedQuests[questID] = true
    elseif questID then
        local spec = goal.complete and goal.complete.questObjective
        local quest = snapshot.quests[questID] or { objectives = {} }
        snapshot.quests[questID] = quest
        if spec then
            quest.objectives[spec.index] = { text = spec.text, finished = true, numFulfilled = spec.count or 100, numRequired = spec.count or 100 }
        else quest.complete = true end
    elseif goal.requiredLevel then snapshot.level = goal.requiredLevel
    else assert(ns.Engine:CompleteCurrent()) end
    ns.Engine:Refresh(snapshot)
end
local function journey(guideID, snapshot, expected)
    select(guideID, snapshot)
    for _, action in ipairs(expected) do
        equal(signature(ns.Engine.currentGoal), action, guideID .. ' authored journey')
        equal(ns.UI:GoalInstruction(ns.Engine), ns.Engine.currentGoal.text, 'walkthrough remains authored')
        observe(ns.Engine.currentGoal, snapshot)
    end
end
-- These sequences were checked directly against the reference openings, before
-- adapting the engine tests. They are not read from production guide arrays.
local tauren = { 'accept:747', 'accept:752', 'turnin:752', 'accept:753',
    'objective:753:1', 'objective:747:1', 'objective:747:2', 'turnin:747' }
for _, class in ipairs({ 1, 3, 7, 11 }) do journey('leveling-era-mulgore', state(6, class, 'Horde'), tauren) end
journey('leveling-era-durotar', state(2, 1, 'Horde'), {
    'accept:4641', 'turnin:4641', 'accept:788', 'objective:788:1', 'accept:790',
    'objective:790:1', 'turnin:790', 'accept:804', 'turnin:788', 'turnin:804' })
journey('leveling-era-durotar', state(8, 9, 'Horde'), {
    'accept:4641', 'accept:1485', 'turnin:4641', 'accept:788', 'objective:788:1',
    'objective:1485:1', 'accept:790', 'objective:790:1', 'turnin:790' })
journey('leveling-era-elwynn-forest', state(1, 1, 'Alliance'), { 'accept:783', 'turnin:783', 'accept:7', 'accept:5261', 'turnin:5261', 'accept:33' })
journey('leveling-era-elwynn-forest', state(1, 9, 'Alliance'), { 'accept:1598', 'objective:1598:1', 'turnin:1598', 'accept:783', 'turnin:783', 'accept:7' })
for _, race in ipairs({ 3, 7 }) do journey('leveling-era-dun-morogh', state(race, 1, 'Alliance'), { 'accept:179', 'objective:179:1', 'turnin:179' }) end
journey('leveling-era-teldrassil', state(4, 11, 'Alliance'), { 'accept:456', 'objective:456:1', 'objective:456:2', 'level:2', 'accept:4495', 'accept:458', 'turnin:456', 'accept:457' })
journey('leveling-era-tirisfal-glades', state(5, 1, 'Horde'), { 'accept:363', 'turnin:363', 'accept:364', 'objective:364:1', 'objective:364:2', 'turnin:364' })
for _, faction in ipairs({ 'Alliance', 'Horde' }) do
    journey('leveling-zephras-isle', state(faction == 'Alliance' and 95 or 96, 3, faction), {
        'accept:92460', 'turnin:92460', 'accept:92461', 'accept:92462', 'objective:92461' })
end
local testGuide = { id = 'ordered-lifecycle', title = 'Ordered lifecycle', category = 'Class Quests', routeMode = 'ordered', revision = 1,
    goals = {
        { id = 'pickup', kind = 'accept', text = 'Accept First from NPC.', route = { { mapID = 1412, x = .4, y = .7, label = 'NPC' } }, complete = { quest = { id = 100001, state = 'activeOrCompleted' } } },
        { id = 'work-one', kind = 'objective', text = 'Collect two on this visit.', complete = { questObjective = { id = 100001, index = 1, count = 2, text = 'Item' } } },
        { id = 'nearby', kind = 'accept', text = 'Accept Nearby from NPC.', complete = { quest = { id = 100002, state = 'activeOrCompleted' } } },
        { id = 'work-later', kind = 'objective', text = 'Collect the rest on the later visit.', complete = { questObjective = { id = 100001, index = 1, text = 'Item' } } },
        { id = 'return', kind = 'turnin', text = 'Turn in First to NPC.', complete = { quest = { id = 100001, state = 'completed' } } },
        { id = 'followup', kind = 'accept', text = 'Accept Followup from NPC.', requiredQuests = { { mode = 'all', quests = {100001} } }, complete = { quest = { id = 100003, state = 'activeOrCompleted' } } },
        { id = 'level', kind = 'note', text = 'Reach level 10.', requiredLevel = 10, complete = { level = { min = 10 } } },
        { id = 'manual', kind = 'note', text = 'Use the unobservable passage.' },
    } }
ns:RegisterGuide(testGuide)
local snapshot = state(6, 1, 'Horde', 5)
select(testGuide.id, snapshot)
equal(ns.Engine:CompleteCurrent(), false, 'manual completion cannot accept a quest')
snapshot.completedQuests[100002] = true
ns.Engine:Refresh(snapshot)
equal(ns.Engine.currentGoal.id, 'pickup', 'future completion cannot move the cursor')
equal(ns.Engine:NextRouteGoal(testGuide, ns.Engine.currentGoal, snapshot).id, 'work-one', 'next includes the missing quest objective')
observe(ns.Engine.currentGoal, snapshot)
snapshot.quests[100001].objectives = { { text = 'Item', numFulfilled = 2, numRequired = 8, finished = false } }
ns.Engine:Refresh(snapshot)
equal(ns.Engine.currentGoal.id, 'work-later', 'count checkpoint advances through the nearby pickup completed opportunistically')
snapshot.quests[100001] = nil
ns.Engine:Refresh(snapshot)
assert(ns.Engine.status:find('missing', 1, true)); assertions = assertions + 1
equal(ns.Engine.currentGoal.id, 'work-later', 'abandonment holds the authored action')
local skipped = ns.Engine:PreviewSkip()
assert(#skipped >= 2); assertions = assertions + 1
ns.Engine:SkipCurrent(true)
equal(ns.Engine.currentGoal.id, 'level', 'skip cascades only quest prerequisites')
equal(ns.Engine:CompleteCurrent(), false, 'level checkpoint cannot be confirmed below level')
ns.Engine:ResyncCurrent(snapshot)
equal(ns.Engine.currentGoal.id, 'level', 'sync preserves explicit route skips')
snapshot.level = 10
ns.db.autoAdvance = false
ns.Engine:Refresh(snapshot)
equal(ns.Engine.currentGoal.id, 'level', 'disabled auto advance holds observed completion')
equal(ns.Engine:CompleteCurrent(), true, 'player can advance an observed checkpoint')
equal(ns.Engine.currentGoal.id, 'manual', 'manual instruction follows the checkpoint')
ns.Engine:CompleteCurrent()
equal(ns.Engine.currentGoal, nil, 'route reaches its end')
ns.Engine:Refresh(snapshot)
equal(ns.Engine.currentGoal, nil, 'reload does not reopen a finished itinerary')
assert(ns.Engine.status:find('skipped', 1, true)); assertions = assertions + 1
ns.Engine:Previous()
equal(ns.Engine.currentGoal.id, 'manual', 'back can review the final instruction')
ns.db.autoAdvance = true
-- The actual starter registration carries an explicit faction handoff.
for _, faction in ipairs({ 'Alliance', 'Horde' }) do
    local guide = ns.guides['leveling-zephras-isle']
    local completed = state(faction == 'Alliance' and 95 or 96, 3, faction, 60)
    for _, id in ipairs(ns.QuestIDsForGuide(guide)) do completed.completedQuests[id] = true end
    select(guide.id, completed)
    equal(ns.Engine.currentGuide.id, 'leveling-casual-' .. faction:lower(), 'Skyborne starter handoff')
end
-- Future detail windows cannot turn in a quest outside the current action.
select(testGuide.id, state(6, 1, 'Horde', 10))
local calls = 0
local api = { GetQuestID = function() return 100002 end, IsQuestCompletable = function() return true end,
    CompleteQuest = function() calls = calls + 1 end, GetNumQuestChoices = function() return 0 end,
    GetQuestReward = function() calls = calls + 1 end }
ns.QuestDialog.pendingTurnInID = 100002
ns.QuestDialog:Progress(api)
ns.QuestDialog:Reward(api)
equal(calls, 0, 'future progress and rewards are constrained to the current action')
local alternatives = { id = 'ordered-alternatives', title = 'Alternative prerequisites', category = 'Class Quests', routeMode = 'ordered', revision = 1,
    goals = {
        { id = 'alternative-a', kind = 'accept', text = 'Accept A.', complete = { quest = { id = 110001, state = 'activeOrCompleted' } } },
        { id = 'alternative-b', kind = 'accept', text = 'Accept B.', complete = { quest = { id = 110002, state = 'activeOrCompleted' } } },
        { id = 'alternative-child', kind = 'accept', text = 'Accept C.', requiredQuests = { { mode = 'any', quests = {110001,110002} } }, complete = { quest = { id = 110003, state = 'activeOrCompleted' } } },
        { id = 'unrelated', kind = 'accept', text = 'Accept D.', complete = { quest = { id = 110004, state = 'activeOrCompleted' } } },
    } }
ns:RegisterGuide(alternatives)
select(alternatives.id, state(6, 1, 'Horde'))
ns.Engine:SkipCurrent(true)
equal(ns.Engine.currentGoal.id, 'alternative-b', 'one alternative survives the first skip')
ns.Engine:SkipCurrent(true)
equal(ns.Engine.currentGoal.id, 'unrelated', 'separate alternative skips compose and skip the dependent')
ns.Engine:Previous()
equal(ns.Engine.currentGoal.id, 'alternative-child', 'Back reopens the derived skipped action')
local intent = ns.charDB.orderedRoutes[alternatives.id]
equal(intent.skippedQuests[110001], true, 'reopening the second alternative preserves the first explicit skip')
equal(intent.skippedQuests[110002], nil, 'Back reopens the second skip root')
alternatives.id = 'ordered-all-prerequisites'
alternatives.goals[3].requiredQuests[1].mode = 'all'
ns:RegisterGuide(alternatives)
select(alternatives.id, state(6, 1, 'Horde'))
ns.Engine:SkipCurrent(true)
ns.Engine:SkipCurrent(true)
ns.Engine:Previous()
intent = ns.charDB.orderedRoutes[alternatives.id]
equal(intent.skippedQuests[110002], true, 'Back preserves the other explicit all-of skip')
equal(intent.skippedQuests[110003], true, 'the remaining all-of root still skips its required follow-up')
-- Reproduce the reported level-30 Undead Paladin migration with route-local
-- completion data ready before the character-wide completion query finishes.
local paladin = ns.guides['class-paladin']
local recovery = state(5, 2, 'Horde', 30)
recovery.questCompletionKnown, recovery.questRouteKnown = false, true
recovery.watchedQuests = {}
for _, id in ipairs(ns.QuestIDsForGuide(paladin)) do recovery.watchedQuests[id] = true end
ns.charDB = { selectedGuide = paladin.id, activeGoal = 'accept-95126-the-moonsilver-blade',
    activeGoalByGuide = {}, orderedRoutes = {}, skipped = { ['historical-pass'] = true },
    completionLedger = {}, settingToPreserve = 'untouched' }
ns.Engine.reviewingGoal = nil
ns.Engine:Refresh(recovery)
equal(ns.Engine.currentGuide.id, paladin.id, 'standalone Paladin migration stays in the selected guide')
equal(ns.Engine.currentGoal ~= nil, true, 'standalone class migration handles guides without goalByID')
equal(ns.charDB.settingToPreserve, 'untouched', 'migration preserves unrelated state')
equal(ns.charDB.orderedRoutes[paladin.id].legacy.skipped['historical-pass'], true, 'ambiguous historical passes remain archived')
local recoveredID = ns.Engine.currentGoal.id
ns.Engine:Refresh(recovery)
equal(ns.Engine.currentGoal.id, recoveredID, 'class migration is repeat safe')
-- Empty ledger buckets and other guides' progress are not migration evidence.
local freshGuide = ns.guides['leveling-era-mulgore']
local freshState = state(6, 1, 'Horde')
ns.charDB = { selectedGuide = freshGuide.id, orderedRoutes = {}, activeGoalByGuide = {},
    completionLedger = { [freshGuide.id] = { ['1'] = {} }, unrelated = { ['1'] = { unrelated = true } } },
    skipped = { unrelated = true }, manualCompleted = {} }
ns.Engine:Refresh(freshState)
local freshStorage = ns.charDB.orderedRoutes[freshGuide.id]
equal(freshStorage.legacy, nil, 'unrelated progress and empty ledgers do not migrate a fresh guide')
equal(freshStorage.migrationMessage, nil, 'fresh characters have no historical progress notice')
-- Old releases persisted the notice without an action scope.
freshStorage.migrationMessage = 'Guide order updated. Historical passes were retained.'
ns.Engine:Refresh(freshState)
equal(freshStorage.migrationMessage, nil, 'obsolete persistent notices are removed')
ns.charDB = { selectedGuide = freshGuide.id, orderedRoutes = {}, activeGoalByGuide = {},
    activeGoal = freshGuide.goals[1].id, skipped = { [freshGuide.goals[1].id] = true } }
ns.Engine:Refresh(freshState)
local migrated = ns.charDB.orderedRoutes[freshGuide.id]
equal(migrated.migrationMessage ~= nil, true, 'real historical progress receives a recovery notice')
observe(ns.Engine.currentGoal, freshState)
equal(migrated.migrationMessage, nil, 'recovery notice expires when the action changes')
local itemInstruction = { id = 'ordered-item-instruction', title = 'Starter item', category = 'Class Quests', routeMode = 'ordered', revision = 1,
    goals = {
        { id = 'collect-starter', kind = 'note', instructionOnly = true, text = 'Collect the starter.',
            complete = { any = { { item = { name = 'Starter', minCount = 1 } }, { quest = { id = 120001, state = 'activeOrCompleted' } } } } },
        { id = 'accept-starter', kind = 'accept', text = 'Accept the quest.', complete = { quest = { id = 120001, state = 'activeOrCompleted' } } },
        { id = 'starter-work', kind = 'objective', text = 'Finish its work.', complete = { quest = { id = 120001, state = 'complete' } } },
    } }
ns:RegisterGuide(itemInstruction)
select(itemInstruction.id, state(6, 1, 'Horde'))
ns.Engine:SkipCurrent(true)
ns.Engine:Previous()
local itemIntent = ns.charDB.orderedRoutes[itemInstruction.id]
equal(itemIntent.skippedQuests[120001], nil, 'Back does not promote an instruction skip to a quest skip')
select(itemInstruction.id, state(6, 1, 'Horde'))
ns.Engine:SkipCurrent(true)
ns.OrderedRoutes:RebuildSkips(itemInstruction, ns.Engine.state)
equal(ns.Engine.currentGoal.id, 'accept-starter', 'an instruction skip preserves the quest pickup')
equal(ns.charDB.orderedRoutes[itemInstruction.id].skippedQuests[120001], nil, 'rebuilding another root preserves the instruction-only scope')
local timerState = state(6, 1, 'Horde')
timerState.quests[120001] = { complete = false, timeAllowed = 120 }
equal(ns.Engine:ActiveTimers(itemInstruction, timerState)[120001], nil, 'total duration is not reported as remaining time')
timerState.quests[120001].timeLeft = 37
equal(ns.Engine:ActiveTimers(itemInstruction, timerState)[120001], 37, 'client remaining time drives the warning')
local savedCapture = ns.PlayerState.Capture
local bagGuide = { id = 'ordered-bag-count', title = 'Bag collection', category = 'Class Quests', routeMode = 'ordered', revision = 1,
    goals = {
        { id = 'collect-two', kind = 'note', text = 'Collect two supplies.', complete = { item = { name = 'Supply', minCount = 2 } } },
        { id = 'bag-next', kind = 'note', text = 'Continue.' },
    } }
ns:RegisterGuide(bagGuide)
local bags = state(6, 1, 'Horde')
bags.items.Supply = 1
select(bagGuide.id, bags)
equal(ns.Engine.currentGoal.id, 'collect-two', 'bag collection holds below the count threshold')
equal(ns.Engine:CompleteCurrent(), false, 'manual confirmation cannot bypass an observed bag count')
bags.items.Supply = 2
ns.Engine:Refresh(bags)
equal(ns.Engine.currentGoal.id, 'bag-next', 'observing the required bag count advances the itinerary')
local savedItemCount, savedCItem = GetItemCount, C_Item
GetItemCount, C_Item = nil, nil
local unknownBags = state(6, 1, 'Horde')
unknownBags.items = nil
select(bagGuide.id, unknownBags)
equal(ns.Engine.currentGoal.id, 'collect-two', 'an unavailable item API preserves the collection action')
equal(ns.Engine:CompleteCurrent(), false, 'unknown bag counts cannot be manually overridden')
equal(ns.OrderedRoutes:Observed(bagGuide.goals[1], unknownBags), false, 'unknown counts are not credited as observed completion')
GetItemCount, C_Item = savedItemCount, savedCItem
local timedFuture = state(6, 1, 'Horde', 10)
timedFuture.quests[100002] = { complete = false, timeLeft = 2 }
local warningGuide = { id = 'ordered-timer-warning', title = 'Timer warning', category = 'Class Quests', routeMode = 'ordered', revision = 1,
    goals = {
        { id = 'pickup', kind = 'accept', text = 'Accept the current quest.', complete = { quest = { id = 100001, state = 'activeOrCompleted' } } },
        { id = 'nearby', kind = 'objective', text = 'Finish the later quest.', complete = { quest = { id = 100002, state = 'complete' } } },
    } }
ns:RegisterGuide(warningGuide)
select(warningGuide.id, timedFuture)
equal(ns.Engine.currentGoal.id, 'pickup', 'a short future timer cannot preempt the authored action')
equal(ns.Engine.urgentGoals.nearby.seconds, 2, 'the warning retains the actual remaining seconds')
for _, faction in ipairs({ 'Alliance', 'Horde' }) do
    ns.charDB = { selectedGuide = 'leveling-era', orderedRoutes = {}, activeGoalByGuide = {} }
    ns.Engine.state, ns.Engine.reviewingGoal = nil, nil
    ns.PlayerState.Capture = function() return state(faction == 'Alliance' and 1 or 6, 1, faction, 30) end
    ns.Engine:Refresh()
    equal(ns.charDB.selectedGuide, 'leveling-casual-' .. faction:lower(), 'startup capture resolves the legacy faction alias')
    equal(ns.Engine.currentGuide.id, ns.charDB.selectedGuide, 'the first startup refresh opens the resolved route')
end
ns.PlayerState.Capture = savedCapture
for _, level in ipairs({ 1, 27, 60 }) do
    select('class-hunter', state(95, 3, 'Alliance', level))
    equal(signature(ns.Engine.currentGoal), 'accept:92460',
        'a fresh Skyborne Hunter starts its earliest unfinished class chain at level ' .. level)
    local starterDone = state(95, 3, 'Alliance', level)
    starterDone.completedQuests[92460] = true
    select('class-hunter', starterDone)
    equal(signature(ns.Engine.currentGoal), 'accept:92461',
        'a Skyborne Hunter resumes Harmony after its starter prerequisite at level ' .. level)
end
local helperID = 'dungeons-class-prerequisites'
local helper = ns.guides[helperID]
local paladinGuide = ns.guides['class-paladin']
local wovenGuide = ns.guides['leveling-casual-horde']
local classHandoff, wovenHandoff
for _, action in ipairs(paladinGuide.goals) do
    if action.classAction == 'handoff-95036-class-dungeon' then classHandoff = action end
end
for _, action in ipairs(wovenGuide.goals) do
    if action.classAction == 'handoff-95036-class-dungeon' then wovenHandoff = action end
end
assert(classHandoff and wovenHandoff, 'both class itineraries expose the dungeon handoff')
local helperState = state(5, 2, 'Horde', 20)
select(helperID, helperState)
equal(ns.Engine:CompleteCurrent(), false, 'the dungeon pickup cannot be manually completed')
ns.Engine:SkipCurrent(true)
equal(ns.Engine:IsGoalDone(classHandoff, helperState, paladinGuide), false, 'helper skips do not complete the standalone handoff')
equal(ns.Engine:IsGoalDone(wovenHandoff, helperState, wovenGuide), false, 'helper skips do not complete the woven handoff')
helperState = state(5, 2, 'Horde', 20)
select(helperID, helperState)
local helperSequence = {
    'accept:95036', 'objective:95036:1', 'objective:95036:2', 'objective:95036:3',
    'accept:95042', 'objective:95042:1', 'turnin:95042', 'objective:95036:4', 'turnin:95036',
}
for _, expected in ipairs(helperSequence) do
    equal(signature(ns.Engine.currentGoal), expected, 'Moon-Kissed Blade material journey')
    if expected == 'turnin:95042' or expected == 'turnin:95036' then
        local questID = ns.Engine:GetGoalQuestID(ns.Engine.currentGoal)
        helperState.quests[questID].complete = true
        ns.Engine:Refresh(helperState)
        equal(ns.Engine:CompleteCurrent(), false, 'a ready quest requires an observed turn-in')
    end
    observe(ns.Engine.currentGoal, helperState)
end
equal(ns.Engine:IsGoalDone(classHandoff, helperState, paladinGuide), true, 'helper client truth completes the standalone handoff')
equal(ns.Engine:IsGoalDone(wovenHandoff, helperState, wovenGuide), true, 'helper client truth completes the woven handoff')
equal(#(ns.classActions['accept-95111-an-underrated-talent'].requiredQuests or {}), 0,
    'An Underrated Talent does not acquire an inferred Moon-Kissed Blade prerequisite')
local checkpointGuide = { id = 'ordered-quest-checkpoints', title = 'Quest checkpoints', category = 'Class Quests', routeMode = 'ordered', revision = 1,
    goals = {
        { id = 'checkpoint-root', kind = 'accept', text = 'Accept the root.', complete = { quest = { id = 130001, state = 'activeOrCompleted' } } },
        { id = 'dependent-level', kind = 'note', text = 'Reach level 60.', checkpointQuest = 130002, alternativeQuests = { 130009 }, complete = { level = { min = 60 } } },
        { id = 'checkpoint-dependent', kind = 'accept', text = 'Accept the dependent.', requiredQuests = { { mode = 'all', quests = { 130001 } } },
            conditions = { level = { min = 60 } }, complete = { quest = { id = 130002, state = 'activeOrCompleted' } } },
        { id = 'unrelated-level', kind = 'note', text = 'Reach level 70.', checkpointQuest = 130003, complete = { level = { min = 70 } } },
    } }
ns:RegisterGuide(checkpointGuide)
local checkpointState = state(5, 2, 'Horde', 20)
select(checkpointGuide.id, checkpointState)
local previewIDs = {}
for _, id in ipairs(ns.Engine:PreviewSkip()) do previewIDs[id] = true end
equal(previewIDs['dependent-level'], true, 'quest skip preview includes its dependent level checkpoint')
equal(previewIDs['unrelated-level'], nil, 'quest skip preview preserves unrelated future checkpoints')
ns.Engine:SkipCurrent(true)
equal(ns.Engine.currentGoal.id, 'unrelated-level', 'skipping required quest work bypasses only its associated checkpoint')
ns.Engine:Previous()
equal(ns.charDB.orderedRoutes[checkpointGuide.id].skipped['dependent-level'], nil, 'Back rebuild restores a reopened root checkpoint')
equal(ns.Engine:GetGoalQuestID(checkpointGuide.goals[2]), nil, 'checkpoint metadata does not make the note a quest action')
local gate = checkpointGuide.goals[2]
checkpointState.completedQuests[130002] = true
equal(ns.OrderedRoutes:ExcludedAction(gate, checkpointState), true, 'observed completed work excludes its obsolete level gate')
checkpointState.questCompletionKnown = false
equal(ns.OrderedRoutes:ExcludedAction(gate, checkpointState), false, 'unverified historical quest completion does not exclude a gate')
checkpointState.questCompletionKnown = true
checkpointState.completedQuests = { [130009] = true }
equal(ns.OrderedRoutes:ExcludedAction(gate, checkpointState), true, 'a completed alternate branch excludes its level gate')
checkpointState.questCompletionKnown = false
equal(ns.OrderedRoutes:ExcludedAction(gate, checkpointState), false, 'unverified alternate completion preserves its level gate')
checkpointState.watchedQuests = { [130009] = true }
equal(ns.OrderedRoutes:ExcludedAction(gate, checkpointState), true, 'route-local observed alternate completion excludes its level gate')
checkpointState.questCompletionKnown = true
checkpointState.completedQuests = {}
checkpointState.quests[130009] = { complete = false }
equal(ns.OrderedRoutes:ExcludedAction(gate, checkpointState), true, 'an active verified alternate branch excludes its level gate')
checkpointState.quests = {}
select(checkpointGuide.id, checkpointState)
local gateIntent = ns.charDB.orderedRoutes[checkpointGuide.id]
gateIntent.cursor = gate.id
ns.Engine:Refresh(checkpointState)
equal(ns.Engine:CompleteCurrent(), false, 'checkpoint metadata never permits level confirmation below its requirement')
ns.Engine:SkipCurrent(true)
ns.OrderedRoutes:RebuildSkips(checkpointGuide, checkpointState)
equal(gateIntent.skippedQuests[130002], nil, 'a direct checkpoint skip remains instruction scoped after rebuilding')
equal(ns.Engine.currentGoal.id, 'checkpoint-dependent', 'a checkpoint-only skip preserves its guarded quest action')
local shamanHelper = state(6, 7, 'Horde', 58)
shamanHelper.completedQuests = { [7667] = true, [7668] = true }
select('dungeons-class-prerequisites', shamanHelper)
equal(ns.Engine.currentGoal, nil, 'a completed Shaman alternate does not require the excluded branch level-60 checkpoint')
equal(ns.Engine.status, 'Guide complete.', 'the Shaman helper finishes from observed alternate quest truth')
local refusedState = state(6, 1, 'Horde')
ns.db.autoAdvance = false
select(testGuide.id, refusedState)
ns.charDB.notOffered = { pickup = { guide = testGuide.id, npc = 'NPC' } }
equal(ns.Engine.currentGoal.id, 'pickup', 'the refused pickup is held for review')
equal(ns.OrderedRoutes:Status(testGuide, testGuide.goals[1], refusedState):find('does not offer', 1, true) ~= nil,
    true, 'an unaccepted refused quest has a supported explanation')
refusedState.quests[100001] = { complete = false, objectives = {} }
ns.Engine:Refresh(refusedState)
equal(ns.Engine.currentGoal.id, 'pickup', 'observed acceptance respects disabled auto advance')
equal(ns.Engine.status, nil, 'observed acceptance clears a stale NPC refusal explanation')
ns.db.autoAdvance = true
local function questActions(guideID, questID)
    local actions = {}
    for _, goal in ipairs(assert(ns.guides[guideID]).goals) do
        if not goal.requiredLevel and ns.Engine:GetGoalQuestID(goal) == questID then
            actions[#actions + 1] = goal
        end
    end
    return actions
end
local blackwood = questActions('leveling-casual-alliance', 4763)
local bowl, fruit, grain, nut, demon
for _, goal in ipairs(blackwood) do
    if goal.text:find('Empty Cleansing Bowl', 1, true) then bowl = goal end
    if goal.text:find('take 1 Blackwood Fruit Sample', 1, true) then fruit = goal end
    if goal.text:find('take 1 Blackwood Grain Sample', 1, true) then grain = goal end
    if goal.text:find('take 1 Blackwood Nut Sample', 1, true) then nut = goal end
    if goal.text:find('Kill Xabraxxis', 1, true) then demon = goal end
end
equal(bowl ~= nil and fruit ~= nil and grain ~= nil and nut ~= nil and demon ~= nil, true,
    'Blackwood outing includes the moonwell, three samples and final demon encounter')
local blackwoodState = state(4, 11, 'Alliance', 20)
blackwoodState.quests[4763] = { complete = false, objectives = {} }
equal(ns.OrderedRoutes:Observed(bowl, blackwoodState), false, 'an empty bag does not complete bowl preparation')
blackwoodState.items['Filled Cleansing Bowl'] = 1
equal(ns.OrderedRoutes:Observed(bowl, blackwoodState), true, 'filling the bowl advances before obtaining the final talisman')
equal(ns.OrderedRoutes:Observed(fruit, blackwoodState), false, 'bowl preparation does not complete the fruit collection')
blackwoodState.items['Blackwood Fruit Sample'] = 1
equal(ns.OrderedRoutes:Observed(fruit, blackwoodState), true, 'fruit collection advances from observed bags')
equal(ns.OrderedRoutes:Observed(demon, blackwoodState), false, 'preparatory items do not complete the demon encounter')
blackwoodState.quests[4763].objectives[1] = { finished = true, numFulfilled = 1, numRequired = 1 }
equal(ns.OrderedRoutes:Observed(demon, blackwoodState), true, 'the talisman objective completes the demon encounter')
local blackwoodGuide = ns.guides['leveling-casual-alliance']
ns.charDB = { orderedRoutes = {}, activeGoalByGuide = {} }
equal(ns.OrderedRoutes:Done(blackwoodGuide, bowl, blackwoodState), true, 'observed bowl preparation is retained for its active quest')
blackwoodState.items['Filled Cleansing Bowl'] = nil
blackwoodState.quests[4763].objectives = {}
equal(ns.OrderedRoutes:Done(blackwoodGuide, bowl, blackwoodState), true, 'consuming a prepared item does not undo observed instructions on Sync')
equal(ns.OrderedRoutes:Observed(demon, blackwoodState), false, 'remembered preparation never grants quest objective completion')
blackwoodState.quests[4763] = nil
equal(ns.OrderedRoutes:Done(blackwoodGuide, bowl, blackwoodState), false, 'abandoning the quest clears remembered preparation')
blackwoodState.quests[4763] = { complete = false, objectives = {} }
equal(ns.OrderedRoutes:Done(blackwoodGuide, bowl, blackwoodState), false, 'reaccepting a quest requires fresh preparation')
equal(bowl.instructionOnly, true, 'skipping a preparation passes only that instruction')
local testBowl, testDemon = {}, {}
for key, value in pairs(bowl) do testBowl[key] = value end
for key, value in pairs(demon) do testDemon[key] = value end
testBowl.dependsOn, testDemon.dependsOn = {}, {}
local preparationGuide = { id = 'observed-preparation', title = 'Preparation', category = 'Test', routeMode = 'ordered', revision = 1,
    goals = { testBowl, testDemon } }
ns:RegisterGuide(preparationGuide)
local heldPreparation = state(4, 11, 'Alliance', 20)
heldPreparation.quests[4763] = { complete = false, objectives = {} }
ns.db.autoAdvance = false
select(preparationGuide.id, heldPreparation)
heldPreparation.items['Filled Cleansing Bowl'] = 1
ns.Engine:Refresh(heldPreparation)
equal(ns.Engine.currentGoal.id, bowl.id, 'disabled auto advance holds observed preparation')
heldPreparation.items['Filled Cleansing Bowl'] = nil
ns.Engine:Refresh(heldPreparation)
equal(ns.Engine:CompleteCurrent(), true, 'explicit advance accepts a previously observed consumed preparation')
equal(ns.Engine.currentGoal.id, demon.id, 'consumed preparation advances to the unfinished quest work')
equal(ns.Engine:CompleteCurrent(), false, 'remembered preparation does not allow manual quest work completion')
ns.db.autoAdvance = true
local stave = questActions('leveling-casual-alliance', 2879)
local flames = {}
for _, goal in ipairs(stave) do
    if goal.kind == 'note' and goal.text:find('Essence', 1, true) then flames[#flames + 1] = goal end
end
equal(#flames, 4, 'Equinex has all four essence preparations before stave use')
local hunterWork = {}
for _, goal in ipairs(ns.guides['class-hunter'].goals) do
    local q = ns.Engine:GetGoalQuestID(goal)
    if goal.kind == 'objective' and (q == 94792 or q == 94863 or q == 94864) then hunterWork[q] = goal.text end
end
equal(hunterWork[94792] and hunterWork[94792]:find('Rockhide Boar', 1, true) ~= nil, true, 'Human Hunter first tame names the required boar')
equal(hunterWork[94863] and hunterWork[94863]:find('Gray Forest Wolf', 1, true) ~= nil, true, 'Human Hunter second tame names the required wolf')
equal(hunterWork[94864] and hunterWork[94864]:find('Young Forest Bear', 1, true) ~= nil, true, 'Human Hunter third tame names the required bear')
for _, pair in ipairs({ { 'class-druid', 9063 }, { 'class-priest', 8254 }, { 'class-hunter', 8151 }, { 'class-mage', 1947 }, { 'class-mage', 8250 }, { 'class-warrior', 8417 } }) do
    local applicable = 0
    for _, goal in ipairs(questActions(pair[1], pair[2])) do
        if goal.kind == 'accept' and not ns.OrderedRoutes:ExcludedAction(goal, state(6, ({ ['class-druid']=11, ['class-priest']=5, ['class-hunter']=3, ['class-mage']=8, ['class-warrior']=1 })[pair[1]], 'Horde', 60)) then
            applicable = applicable + 1
            local destination = goal.route and goal.route[1]
            equal(destination and (destination.mapID == 1454 or destination.mapID == 1456 or destination.mapID == 1458), true,
                pair[1] .. ' Horde pickup selects an authored Horde city')
        end
    end
    equal(applicable, 1, pair[1] .. ' has one Horde pickup branch')
end
for _,entry in ipairs({{'class-warlock',1802},{'class-warlock',1803}}) do
 local actions=questActions(entry[1],entry[2])
 local work={}
 for _,action in ipairs(actions) do if action.kind=='objective' then work[#work+1]=action end end
 equal(#work,2,'each Tome of the Cabal faction quest includes both books')
 equal(work[1].complete.questObjective.text,'Moldy Tome','the first Cabal acquisition is the coastal tome')
 equal(work[2].complete.questObjective.text,'Tattered Manuscript','the second Cabal acquisition is the cave chest')
 equal(work[1].route[1].mapID,1424,'Moldy Tome acquisition is in Hillsbrad')
 equal(work[2].route[1].mapID,1441,'Tattered Manuscript acquisition is in Thousand Needles')
 local snapshot=state(entry[2]==1802 and 1 or 5,9,entry[2]==1802 and 'Alliance' or 'Horde',30)
 snapshot.quests[entry[2]]={objectives={{text='Moldy Tome',numFulfilled=1,numRequired=1},{text='Tattered Manuscript',numFulfilled=0,numRequired=1}}}
 equal(ns.OrderedRoutes:Observed(work[1],snapshot),true,'one collected Cabal book clears only its own action')
 equal(ns.OrderedRoutes:Observed(work[2],snapshot),false,'the second Cabal book remains required')
end
local separated=dofile('tests/fixtures/separate_content.lua')
for _,id in ipairs({'leveling-casual-alliance','leveling-casual-horde'}) do
 for _,goal in ipairs(ns.guides[id].goals) do
  equal(separated[ns.Engine:GetGoalQuestID(goal)]==true,false,
    'ordinary leveling keeps reviewed optional dungeon and PvP chains in their separate categories')
 end
end

do
 local stages={}
 for _,action in ipairs(questActions('class-shaman',97257)) do
  if action.kind=='objective' then stages[#stages+1]=action end
 end
 equal(#stages,2,'Skyborne fire ritual and delivery are separate authored actions')
 equal(stages[1].route[1].label,'Brazier of Offering','ritual navigation targets the offering')
 equal(stages[2].route[1].label,'Brazier of Eternal Flame','delivery navigation targets Valanaar')
 local snapshot=state(96,7,'Horde',10)
 snapshot.quests[97257]={complete=false,objectives={
  {text='Light the Brazier of Eternal Flame',numFulfilled=0,numRequired=1},
  {text='Complete the Ritual with Olariaan',numFulfilled=1,numRequired=1},
 }}
 equal(ns.OrderedRoutes:Observed(stages[1],snapshot),true,'observed ritual clears despite reordered client rows')
 equal(ns.OrderedRoutes:Observed(stages[2],snapshot),false,'flame delivery remains unfinished after the ritual')
 equal(snapshot.quests[97257].complete,false,'ritual completion does not grant delivery or turn-in credit')
end

local queryGuide = { id='ordered-query', title='Query', category='Test', revision=1, routeMode='ordered', goals={
    {id='old',kind='accept',text='Accept earlier.',complete={quest={id=179,state='activeOrCompleted'}}},
    {id='current',kind='accept',text='Accept current.',complete={quest={id=94792,state='activeOrCompleted'}}},
    {id='next',kind='accept',text='Accept next.',complete={quest={id=94863,state='activeOrCompleted'}}},
} }
ns:RegisterGuide(queryGuide)
select(queryGuide.id,state(1,3,'Alliance',10))
ns.OrderedRoutes:Storage(queryGuide).cursor='current'
ns.Engine.currentGoal=queryGuide.goals[2]
local ids,priority=ns.QuestQuery()
equal(ids[1],94792,'completion query starts with the current authored quest')
equal(priority,1,'only the current action needs immediate completion truth')
local api={ C_QuestLog={GetNumQuestLogEntries=function() return 0 end,
    IsQuestFlaggedCompleted=function(q) if q==179 then error('temporarily unavailable') end return false end} }
local captured=ns.PlayerState:Capture(api,ids,priority)
equal(captured.watchedQuests[94792],true,'an unrelated query failure does not hide current quest truth')
local cached=ns.QuestQuery()
equal(cached,ids,'idle current action reuses its query list')
ns.OrderedRoutes:Storage(queryGuide).cursor='next'
ns.Engine.currentGoal=queryGuide.goals[3]
local nextIDs=ns.QuestQuery()
equal(nextIDs[1],94863,'advancing the cursor reprioritizes quest querying')
equal(nextIDs==ids,false,'cursor advancement invalidates the query ordering cache')
local found=false
for _,q in ipairs(nextIDs) do if q==179 then found=true end end
equal(found,true,'remaining guide quests stay queryable for Sync')

local syncGuide = { id = 'ordered-sync-loading', title = 'Sync loading', category = 'Class Quests',
    routeMode = 'ordered', revision = 1, goals = {} }
for index = 1, 4 do
    syncGuide.goals[index] = { id = 'sync-' .. index, kind = 'accept', text = 'Accept quest ' .. index,
        complete = { any = { { quest = { id = 130100 + index, state = 'active' } },
            { quest = { id = 130100 + index, state = 'completed' } } } } }
end
ns:RegisterGuide(syncGuide)
local syncState = state(5, 2, 'Horde', 30)
select(syncGuide.id, syncState)
ns.OrderedRoutes:Activate(ns.Engine, syncGuide, syncGuide.goals[4], false)
local syncStorage = ns.charDB.orderedRoutes[syncGuide.id]
syncStorage.history = { 'keep-history' }
syncStorage.skipped['unrelated-skip'] = true
syncState.questCompletionKnown, syncState.questRouteKnown = false, false
syncState.watchedQuests = { [130104] = true }
for index = 1, 2 do
    equal(ns.Engine:ResyncCurrent(syncState), false, 'Sync waits for all guide completion answers')
    equal(ns.Engine.currentGoal.id, 'sync-4', 'repeated Sync keeps the visible action while loading')
    equal(syncStorage.history[1], 'keep-history', 'pending Sync preserves review history')
    syncState.completedQuests[130100 + index] = true
    syncState.watchedQuests[130100 + index] = true
    syncState.questRouteKnown = true
end
ns.Engine:Refresh(syncState)
equal(ns.Engine.currentGoal.id, 'sync-4', 'current-action query readiness does not finish a full-guide Sync')
syncState.watchedQuests[130103] = true
ns.Engine:Refresh(syncState)
equal(ns.Engine.currentGoal.id, 'sync-3', 'pending Sync resolves once at the earliest verified unfinished action')
equal(syncStorage.syncPending, nil, 'resolved Sync clears its pending flag')
equal(syncStorage.skipped['unrelated-skip'], true, 'Sync preserves explicit skips')
equal(ns.Engine:ResyncCurrent(syncState), true, 'repeated ready Sync succeeds')
equal(ns.Engine.currentGoal.id, 'sync-3', 'ready Sync is idempotent')
ns.OrderedRoutes:Activate(ns.Engine, syncGuide, syncGuide.goals[4], false)
syncStorage.revision = 0
syncState.watchedQuests[130103] = nil
syncState.questCompletionKnown, syncState.questRouteKnown = false, true
ns.Engine:ResyncCurrent(syncState)
equal(ns.Engine.currentGoal.id, 'sync-4', 'revision recovery cannot reposition a pending Sync')
equal(syncStorage.recover, true, 'pending Sync retains recovery intent')
ns.Engine:Refresh(syncState)
equal(ns.Engine.currentGoal.id, 'sync-4', 'pending recovery remains stable across refreshes')
syncState.watchedQuests[130103] = true
ns.Engine:Refresh(syncState)
equal(ns.Engine.currentGoal.id, 'sync-3', 'revision recovery and Sync resolve together after all answers arrive')
local capture = ns.PlayerState.Capture
ns.PlayerState.Capture = function(_, api, queryIDs, priority)
    equal(priority, #queryIDs, 'Sync requests the complete selected guide in one capture')
    equal(#queryIDs, 4, 'Sync capture is scoped to the selected guide')
    return syncState
end
ns.Engine:ResyncCurrent()
ns.PlayerState.Capture = capture

local budgetGuide = { id = 'ordered-sync-budget', title = 'Sync budget', category = 'Class Quests',
    routeMode = 'ordered', revision = 1, goals = {} }
for index = 1, 40 do
    budgetGuide.goals[index] = { id = 'budget-' .. index, kind = 'accept', text = 'Accept quest ' .. index,
        complete = { any = { { quest = { id = 131100 + index, state = 'active' } },
            { quest = { id = 131100 + index, state = 'completed' } } } } }
end
ns:RegisterGuide(budgetGuide)
select(budgetGuide.id, state(5, 2, 'Horde', 30))
ns.OrderedRoutes:Activate(ns.Engine, budgetGuide, budgetGuide.goals[40], false)
ns.PlayerState:InvalidateQuestCache()
local reads = 0
local syncAPI = {
    UnitRace = function() return 'Undead', 'Scourge', 5 end,
    UnitClass = function() return 'Paladin', 'PALADIN', 2 end,
    UnitFactionGroup = function() return 'Horde' end,
    UnitLevel = function() return 30 end,
    C_QuestLog = {
        GetNumQuestLogEntries = function() return 0 end,
        GetInfo = function() end,
        IsQuestFlaggedCompleted = function(id) reads = reads + 1; return id < 131130 end,
    },
}
ns.PlayerState.Capture = function(self, _, queryIDs, priority, achievements)
    return capture(self, syncAPI, queryIDs, priority, achievements)
end
equal(ns.Engine:ResyncCurrent(), true, 'real capture completes a guide larger than the pulse budget')
equal(reads, 40, 'Sync queries every selected guide quest instead of a partial budget')
equal(ns.Engine.currentGoal.id, 'budget-30', 'real capture selects the earliest unfinished quest once')
ns.Engine:ResyncCurrent()
equal(ns.Engine.currentGoal.id, 'budget-30', 'repeated real captures keep the same position')
ns.PlayerState.Capture = capture

-- Reload loses the session completion cache, but must retain the saved cursor
-- and populate progress for the selected itinerary without a Sync click.
ns.PlayerState:InvalidateQuestCache()
reads = 0
ns.Engine.currentGuide, ns.Engine.currentGoal, ns.Engine.state = nil, nil, nil
ns.charDB.orderedRoutes[budgetGuide.id].cursor = 'budget-30'
ns.PlayerState.Capture = function(self, _, queryIDs, priority, achievements)
    equal(priority, #queryIDs, 'login queries the complete selected guide')
    equal(#queryIDs, 40, 'login capture stays scoped to the selected guide')
    return capture(self, syncAPI, queryIDs, priority, achievements)
end
ns.Engine:Refresh()
equal(ns.Engine.currentGoal.id, 'budget-30', 'login restores the saved late cursor without Sync')
equal(ns.Engine:GetGuideProgress(budgetGuide, ns.Engine.state).completed, 29,
    'login shows full guide completion instead of the small background batch')
ns.PlayerState.Capture = capture
local loginStorage = ns.charDB.orderedRoutes[budgetGuide.id]
loginStorage.revision = 0
local loginPartial = state(5, 2, 'Horde', 30)
loginPartial.questCompletionKnown, loginPartial.questRouteKnown = false, true
loginPartial.watchedQuests = { [131130] = true }
ns.Engine:Refresh(loginPartial)
equal(ns.Engine.currentGoal.id, 'budget-30', 'login recovery preserves the cursor with only current quest truth')
equal(loginStorage.recover, true, 'login recovery waits for complete itinerary truth')
loginPartial.watchedQuests = {}
for index = 1, 40 do
    loginPartial.watchedQuests[131100 + index] = true
    if index < 30 then loginPartial.completedQuests[131100 + index] = true end
end
ns.Engine:Refresh(loginPartial)
equal(ns.Engine.currentGoal.id, 'budget-30', 'fully loaded login recovery preserves verified earlier progress')
equal(loginStorage.recover, nil, 'login recovery finishes automatically once the guide is known')

ns.Engine.currentGuide, ns.Engine.currentGoal, ns.Engine.state = nil, nil, nil
local startupReads = 0
ns.PlayerState.Capture = function(self, _, queryIDs, priority, achievements)
    startupReads = startupReads + 1
    equal(priority, #queryIDs, 'delayed login keeps full-guide query priority')
    equal(#queryIDs, 40, 'delayed login stays on the selected guide until it is loaded')
    if startupReads == 1 then
        local pending = state(5, 2, 'Horde', 30)
        pending.questCompletionKnown, pending.questRouteKnown = false, false
        pending.watchedQuests = { [131130] = true }
        return pending
    end
    return capture(self, syncAPI, queryIDs, priority, achievements)
end
ns.Engine:Refresh()
equal(ns.Engine.currentGoal.id, 'budget-30', 'unavailable login data preserves the saved cursor')
equal(ns.Engine.orderedQueryPending, budgetGuide.id, 'unavailable login data retains full-guide query intent')
ns.Engine:Refresh()
equal(ns.Engine.currentGoal.id, 'budget-30', 'normal refresh resolves delayed login without Sync')
equal(ns.Engine:GetGuideProgress(budgetGuide, ns.Engine.state).completed, 29,
    'delayed login fills the correct progress count automatically')
equal(ns.Engine.orderedQueryPending, nil, 'loaded login state returns to ordinary background queries')
ns.PlayerState.Capture = capture

ns.PlayerState:InvalidateQuestCache()
ns.Engine.currentGuide, ns.Engine.currentGoal, ns.Engine.state = nil, nil, nil
loginStorage.cursor, loginStorage.revision = 'budget-30', 0
local failRead = true
local flagReader = syncAPI.C_QuestLog.IsQuestFlaggedCompleted
syncAPI.C_QuestLog.IsQuestFlaggedCompleted = function(id)
    if id == 131102 and failRead then error('Quest data is not ready') end
    return flagReader(id)
end
ns.PlayerState.Capture = function(self, _, queryIDs, priority, achievements)
    return capture(self, syncAPI, queryIDs, priority, achievements)
end
ns.Engine:Refresh()
equal(ns.Engine.currentGoal.id, 'budget-30', 'an API error after successful reads cannot rewind login recovery')
equal(ns.Engine.state.watchedQuests[131102], nil, 'a failed completion query stays unknown')
equal(loginStorage.recover, true, 'an API error leaves recovery pending')
failRead = false
ns.Engine:Refresh()
equal(ns.Engine.currentGoal.id, 'budget-30', 'a later refresh retries unavailable completion automatically')
equal(loginStorage.recover, nil, 'successful completion answers resolve recovery without Sync')
ns.PlayerState.Capture = capture
syncAPI.C_QuestLog.IsQuestFlaggedCompleted = flagReader

ns.PlayerState:InvalidateQuestCache()
ns.Engine.currentGuide, ns.Engine.currentGoal, ns.Engine.state = nil, nil, nil
loginStorage.cursor, loginStorage.revision = 'budget-30', 0
failRead = true
syncAPI.C_QuestLog.IsQuestFlaggedCompleted = function(id)
    if id == 131101 and failRead then error('Client is not ready') end
    return flagReader(id)
end
ns.PlayerState.Capture = function(self, _, queryIDs, priority, achievements)
    return capture(self, syncAPI, queryIDs, priority, achievements)
end
ns.Engine:Refresh()
equal(ns.Engine.currentGoal.id, 'budget-30', 'failure on the first completion read preserves the login cursor')
failRead = false
equal(ns.Engine:ResyncCurrent(), true, 'explicit Sync retries an unavailable completion API')
equal(ns.Engine.currentGoal.id, 'budget-30', 'Sync after an initial API failure keeps the verified position')
ns.PlayerState.Capture = capture
syncAPI.C_QuestLog.IsQuestFlaggedCompleted = flagReader

local sharedFacts = { nested = { value = 'immutable' } }
local aliases = {}
for index = 1, 6000 do aliases[index] = sharedFacts end
local memoryGuide = { id = 'ordered-memory-validation', title = 'Validation memory', category = 'Class Quests',
    routeMode = 'ordered', revision = 1, metadata = aliases,
    goals = { { id = 'memory-action', classAction = 'accept-783-a-threat-within', conditions = { race = 1 } } } }
collectgarbage('collect')
collectgarbage('stop')
local beforeValidation = collectgarbage('count')
ns:RegisterGuide(memoryGuide)
local allocated = collectgarbage('count') - beforeValidation
collectgarbage('restart')
equal(allocated < 512, true, 'shared declarative tables validate without repeated traversal allocations')
equal(memoryGuide.goals[1].complete, ns.classActions['accept-783-a-threat-within'].complete,
    'class itineraries share read-only quest completion facts')
equal(memoryGuide.goals[1].conditions.race, 1, 'sharing facts preserves itinerary-specific branch conditions')
local invalidGuide = { id = 'ordered-invalid-shared', title = 'Invalid shared', category = 'Class Quests',
    routeMode = 'ordered', revision = 1, metadata = { shared = { invalid = function() end } },
    goals = { { id = 'invalid-note', kind = 'note', text = 'Invalid guide' } } }
local registered, reason = pcall(function() ns:RegisterGuide(invalidGuide) end)
equal(registered, false, 'memoized validation still rejects nested functions')
equal(tostring(reason):find('guide.metadata.shared.invalid cannot contain functions', 1, true) ~= nil,
    true, 'validation builds the complete error path only on failure')
invalidGuide.metadata = {}
invalidGuide.metadata.self = invalidGuide.metadata
registered = pcall(function() ns:RegisterGuide(invalidGuide) end)
equal(registered, false, 'memoized validation rejects cyclic declarative tables')

print('Ordered production journey tests passed: ' .. assertions .. ' assertions')
