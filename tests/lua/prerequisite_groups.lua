local data = dofile('tests/lua/guide_data_checks.lua')
local guide = { category = 'Loremaster Guides', goals = {
    { id = 'turnin-96101-outdoors', kind = 'turnin' },
    { id = 'accept-97963-alchemy', kind = 'accept' },
} }
local catalog = { [97963] = { { mode = 'any', quests = {95998, 96101, 96604} } } }
assert(#data.PrerequisiteTurninViolations({ zone = guide }, catalog) == 0,
    'An any prerequisite group needs one supported local turn-in, not every alternative')
guide.goals[1] = { id = 'turnin-the-great-outdoors', kind = 'turnin', complete = { quest = { id = 96101, state = 'completed' } } }
assert(#data.PrerequisiteTurninViolations({ zone = guide }, catalog) == 0,
    'Named actions identify their prerequisite turn-in through observed quest completion')
catalog[97963][1].mode = 'all'
assert(#data.PrerequisiteTurninViolations({ zone = guide }, catalog) == 2,
    'An all prerequisite group still requires every turn-in')
catalog[97963][1].mode = 'any'
guide.goals[1] = { id = 'turnin-1-unrelated', kind = 'turnin' }
assert(#data.PrerequisiteTurninViolations({ zone = guide }, catalog) > 0,
    'An any prerequisite group with no supported local predecessor fails')
print('Prerequisite group semantics passed')
