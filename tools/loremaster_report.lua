local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM', ns) end
end
local sources={}
for id,guide in pairs(ns.guides) do
    if guide.category=='Leveling Quest Guides' then sources[id]=guide end
end
ns:FinalizeGuides()
local function sourceGuide(id)
    if ns.guides[id] then return ns.guides[id] end
    for _,faction in ipairs({'alliance','horde'}) do
        local guide=ns.guides['leveling-casual-' .. faction]
        if guide and guide.segmentByID[id] then return guide.segmentByID[id] end
    end
    return assert(sources[id],id)
end
local mappings = dofile('tests/fixtures/loremaster_pairs.lua')
local profiles = {
    {'Dwarf Warrior',3,1,'Alliance'}, {'Human Warrior',1,1,'Alliance'},
    {'Night Elf Druid',4,11,'Alliance'}, {'Orc Warrior',2,1,'Horde'},
    {'Tauren Druid',6,11,'Horde'}, {'Undead Paladin',5,2,'Horde'},
    {'Skyborne Alliance Hunter',95,3,'Alliance'}, {'Skyborne Horde Hunter',96,3,'Horde'},
}
local function pickups(guide, state)
    local found = {}
    if state and ns.EvaluateCondition(guide.conditions,state)==false then return found end
    for _, goal in ipairs(guide.goals) do
        if goal.kind == 'accept' and (not state or not ns.OrderedRoutes:ExcludedAction(goal,state)) then
            local id = ns.Engine:GetGoalQuestID(goal)
            if id then found[id] = true end
        end
    end
    return found
end
local function values(set)
    local list = {}
    for id in pairs(set) do list[#list+1] = id end
    table.sort(list)
    return table.concat(list, ',')
end
-- Tab-separated sets keep the Lua runner independent of a JSON dependency.
for _, pair in ipairs(mappings) do
    local source, target = sourceGuide(pair.source), assert(ns.guides[pair.target])
    print(pair.target, pair.source, 'catalog', values(pickups(source)), values(pickups(target)))
    for _, p in ipairs(profiles) do
        local state = {raceID=p[2],classID=p[3],faction=p[4],level=60,
            professionsKnown=true,professions={},items={},quests={},completedQuests={},
            questLogKnown=true,questCompletionKnown=true}
        print(pair.target,pair.source,p[1],values(pickups(source,state)),values(pickups(target,state)))
        for _, skill in ipairs({129,164,165,171,182,185,186,197,202,333,356,393}) do state.professions[skill]=300 end
        print(pair.target,pair.source,p[1] .. ' professions',values(pickups(source,state)),values(pickups(target,state)))
    end
end

local reported = {}
for _, pair in ipairs(mappings) do reported[pair.target] = true end
for _, id in ipairs(ns.guideOrder) do
    local guide = ns.guides[id]
    if guide.category == 'Loremaster Guides' and not reported[id] then
        print(id, '', 'catalog', '', values(pickups(guide)))
        for _, p in ipairs(profiles) do
            local state = {raceID=p[2],classID=p[3],faction=p[4],level=60,
                professionsKnown=true,professions={},items={},quests={},completedQuests={},
                questLogKnown=true,questCompletionKnown=true}
            print(id,'',p[1],'',values(pickups(guide,state)))
            for _,skill in ipairs({129,164,165,171,182,185,186,197,202,333,356,393}) do state.professions[skill]=300 end
            print(id,'',p[1] .. ' professions','',values(pickups(guide,state)))
        end
    end
end

for id in pairs(sources) do
    local guide=sourceGuide(id)
    do
        print('__all__',guide.id,'catalog',values(pickups(guide)),'')
        for _,p in ipairs(profiles) do
            local state={raceID=p[2],classID=p[3],faction=p[4],level=60,professionsKnown=true,
                professions={},items={},quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
            print('__all__',guide.id,p[1],values(pickups(guide,state)),'')
            for _,skill in ipairs({129,164,165,171,182,185,186,197,202,333,356,393}) do state.professions[skill]=300 end
            print('__all__',guide.id,p[1] .. ' professions',values(pickups(guide,state)),'')
        end
    end
end
