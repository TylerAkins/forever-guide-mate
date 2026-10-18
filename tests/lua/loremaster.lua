local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
ns:FinalizeGuides()
local guide = assert(ns.guides['loremaster-dun-morogh'], 'Dun Morogh has a Loremaster itinerary')
local function index(kind, quest)
    for i, goal in ipairs(guide.goals) do
        if goal.kind == kind and ns.Engine:GetGoalQuestID(goal) == quest then return i, goal end
    end
    error('Missing ' .. kind .. ' for quest ' .. quest)
end
local prior = index('turnin', 412)
local follow, accept = index('accept', 95041)
assert(prior < follow, 'Operation Recombobulation unlocks Data Hoarders before its Ironforge pickup')
local found = false
for _, group in ipairs(accept.requiredQuests or {}) do
    for _, quest in ipairs(group.quests) do if quest == 412 then found = true end end
end
assert(found, 'Data Hoarders requires observed completion of Operation Recombobulation')
assert(accept.route[1].mapID == 1455, 'Data Hoarders is accepted in Ironforge despite Dun Morogh ownership')
local snapshot = { faction = 'Alliance', raceID = 3, classID = 1, level = 10,
    quests = {}, completedQuests = {}, questLogKnown = true, questCompletionKnown = true,
    professionsKnown = true, professions = {}, items = {} }
assert(ns.OrderedRoutes:Prerequisites(accept, snapshot) == false, 'Data Hoarders waits for the actual predecessor turn-in')
snapshot.completedQuests[412] = true
assert(ns.OrderedRoutes:Prerequisites(accept, snapshot) == true, 'Observed predecessor completion unlocks Data Hoarders')
local _, smith = index('accept', 95217)
assert(ns.OrderedRoutes:ExcludedAction(smith, snapshot), 'Non-blacksmiths pass the profession quest')
snapshot.professions[164] = 1
assert(not ns.OrderedRoutes:ExcludedAction(smith, snapshot), 'Blacksmiths retain the quarry quest')
local _, map = index('accept', 96391)
assert(ns.OrderedRoutes:ExcludedAction(map, snapshot), 'An absent optional map does not block Loremaster')
snapshot.items['Dark Iron Map'] = 1
assert(not ns.OrderedRoutes:ExcludedAction(map, snapshot), 'The outdoor map drop enables its quest')
local _, brew = index('accept', 415)
snapshot.completedQuests[413] = true
assert(ns.OrderedRoutes:ExcludedAction(brew, snapshot), 'Shimmer Stout completion bypasses its unavailable breadcrumb')
local elwynn = assert(ns.guides['loremaster-elwynn-forest'], 'Elwynn Forest has a Loremaster itinerary')
local function questAction(route, kind, quest)
    for i, goal in ipairs(route.goals) do
        if goal.kind == kind and ns.Engine:GetGoalQuestID(goal) == quest then return goal, i end
    end
    error(route.id .. ' is missing ' .. kind .. ' ' .. quest)
end
local lesson, lessonIndex = questAction(elwynn, 'accept', 91753)
local _, mineIndex = ns.Engine:GetGoal(elwynn, 'woven-objective-91723-delicate-instruments')
local lessonWork, lessonWorkIndex = questAction(elwynn, 'objective', 91753)
local lessonReturn, lessonReturnIndex = questAction(elwynn, 'turnin', 91753)
assert(lessonIndex < mineIndex and mineIndex < lessonWorkIndex and lessonWorkIndex < lessonReturnIndex,
    'The Tower pickup precedes the Jasperlode outing and its Tower return')
assert(lesson.route[1].mapID == 1429, 'The enchanting lesson belongs to Elwynn')
local teldrassil = assert(ns.guides['loremaster-teldrassil'], 'Teldrassil has a Loremaster itinerary')
local waterReturn, waterReturnIndex = questAction(teldrassil, 'turnin', 927)
local grove, groveIndex = questAction(teldrassil, 'accept', 941)
assert(waterReturnIndex < groveIndex, 'The Moss-twined Heart turn-in precedes Planting the Heart')
local crownReturn = questAction(teldrassil, 'turnin', 935)
assert(crownReturn.route[1].mapID == 1457, 'The Teldrassil chain includes its Darnassus return')
local durotar = assert(ns.guides['loremaster-durotar'], 'Durotar has a Loremaster itinerary')
for _, quest in ipairs({96874, 96875}) do
    local pickup, pickupIndex = questAction(durotar, 'accept', quest)
    local work, workIndex = questAction(durotar, 'objective', quest)
    local finish, finishIndex = questAction(durotar, 'turnin', quest)
    local _, ridgeIndex = ns.Engine:GetGoal(durotar, 'objective-806-1-fizzle-s-claw')
    assert(pickup.route[1].mapID == 1454, 'Durotar profession pickup is in Orgrimmar')
    assert(work.route[1].mapID == 1411, 'The profession outing belongs to Durotar')
    assert(pickupIndex < ridgeIndex and ridgeIndex < workIndex and workIndex < finishIndex,
        'Orgrimmar pickups precede Thunder Ridge work and the later city return')
end
local hunterPickup = ns.Engine:GetGoal(durotar, 'accept-812-need-for-a-cure')
local hordeSnapshot = { faction = 'Horde', raceID = 2, classID = 1, level = 10,
    quests = {}, completedQuests = {}, questLogKnown = true, questCompletionKnown = true,
    professionsKnown = true, professions = {}, items = {} }
assert(ns.OrderedRoutes:ExcludedAction(hunterPickup, hordeSnapshot), 'Warriors pass the earlier hunter-only city pickup')
hordeSnapshot.classID = 3
assert(not ns.OrderedRoutes:ExcludedAction(hunterPickup, hordeSnapshot), 'Hunters keep their earlier city pickup')
local mulgore = assert(ns.guides['loremaster-mulgore'], 'Mulgore has a Loremaster itinerary')
local mining, miningIndex = questAction(mulgore, 'turnin', 76156)
local salve, salveIndex = questAction(mulgore, 'accept', 76160)
local salveReturn, salveReturnIndex = questAction(mulgore, 'turnin', 76160)
local fish, fishIndex = questAction(mulgore, 'accept', 76240)
assert(miningIndex < salveIndex and salveReturnIndex < fishIndex, 'The Earthmother trials start only after their prerequisite turn-ins')
assert(ns.OrderedRoutes:Prerequisites(salve, hordeSnapshot) == false, 'The cone trial waits for the mining turn-in')
hordeSnapshot.classID = 7
local miningPickup = questAction(mulgore, 'accept', 76156)
assert(not ns.OrderedRoutes:ExcludedAction(miningPickup, hordeSnapshot), 'An eligible Orc shaman retains the prerequisite trial')
assert(not ns.OrderedRoutes:ExcludedAction(salve, hordeSnapshot), 'An eligible Orc shaman retains the cone trial')
local later = questAction(mulgore, 'accept', 96259)
assert(later, 'Mulgore includes its later Skywatcher Plateau visit')
local wool, woolIndex = questAction(mulgore, 'accept', 99196)
assert(woolIndex > fishIndex, 'The level 60 donation belongs after the starter trials')
local tirisfal = assert(ns.guides['loremaster-tirisfal-glades'], 'Tirisfal Glades has a Loremaster itinerary')
local _, gravesIndex = questAction(tirisfal, 'turnin', 358)
local lich, lichIndex = questAction(tirisfal, 'accept', 405)
local lichReturn = questAction(tirisfal, 'turnin', 405)
assert(gravesIndex < lichIndex, 'Graverobbers is turned in before The Prodigal Lich pickup')
assert(lichReturn.route[1].mapID == 1458, 'The Tirisfal chain keeps its required Undercity handoff')
for _, goal in ipairs(tirisfal.goals) do
    local quest = ns.Engine:GetGoalQuestID(goal)
    assert(quest ~= 5901 and quest ~= 5902, 'Plaguelands work is not assigned to Tirisfal by pickup location')
end
local zephras = assert(ns.guides['loremaster-zephras-isle'], 'Zephras Isle has a separate Loremaster itinerary')
assert(ns.guides['leveling-zephras-isle'].category == 'Leveling Quest Guides', 'The Skyborne starter remains available')
local outdoors, outdoorsIndex = questAction(zephras, 'turnin', 96101)
local alchemy, alchemyIndex = questAction(zephras, 'accept', 97963)
assert(outdoorsIndex < alchemyIndex, 'Profession lessons follow The Great Outdoors')
local herb, herbIndex = questAction(zephras, 'turnin', 97968)
local _, valanaarIndex = ns.Engine:GetGoal(zephras, 'turnin-92579-to-valanaar')
assert(valanaarIndex < herbIndex, 'The herbalism lesson finishes on the Valanaar visit')
local engineering, engineeringIndex = questAction(zephras, 'accept', 98285)
local _, hermitIndex = ns.Engine:GetGoal(zephras, 'turnin-the-strange-hermit')
assert(hermitIndex < engineeringIndex, 'Engineering is offered on the existing Strange Hermit visit')
assert(engineering.route[1].label == 'Strange Hermit', 'Wowhead provider evidence takes precedence over the Questie Raan provider')

local skyborne = { faction = 'Alliance', raceID = 95, classID = 8, level = 6,
    quests = {}, completedQuests = {}, questLogKnown = true, questCompletionKnown = true,
    professionsKnown = true, professions = {}, items = {} }
assert(ns.OrderedRoutes:ExcludedAction(alchemy, skyborne), 'Profession lessons pass characters without that profession')
skyborne.professions[171] = 1
assert(not ns.OrderedRoutes:ExcludedAction(alchemy, skyborne), 'Alchemists retain the profession lesson')
assert(not ns.OrderedRoutes:Prerequisites(alchemy, skyborne), 'The lesson cannot start without an outdoors introduction')
skyborne.completedQuests[96605] = true
assert(ns.OrderedRoutes:Prerequisites(alchemy, skyborne), 'Any verified outdoors introduction can unlock the lesson')
skyborne.completedQuests[96045] = true
assert(ns.OrderedRoutes:ExcludedAction(alchemy, skyborne), 'An equivalent completed recipe quest bypasses the lesson')
print('Loremaster route checks passed')
