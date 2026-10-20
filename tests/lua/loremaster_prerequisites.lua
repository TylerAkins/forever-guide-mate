local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('FGM', ns) end
end
local missing = {}
local checked = 0
local function sameQuests(first, second)
    if #(first or {}) ~= #(second or {}) then return false end
    local wanted = {}
    for _, quest in ipairs(first or {}) do wanted[quest]=true end
    for _, quest in ipairs(second or {}) do if not wanted[quest] then return false end end
    return true
end
for _, guide in pairs(ns.guides) do
    if guide.category=='Loremaster Guides' then
        for _, goal in ipairs(guide.goals) do
            if goal.id:match('%-extra%-%d+%-accept$') then
                local quest = ns.Engine:GetGoalQuestID(goal)
                for _, required in ipairs(goal.requiredQuests or {}) do
                    checked = checked + 1
                    local found = false
                    for _, rule in ipairs(ns.questPrerequisites[quest] or {}) do
                        if rule.mode==required.mode and sameQuests(rule.quests,required.quests) then found=true end
                    end
                    if not found then missing[quest]=table.concat(required.quests,',') end
                end
            end
        end
    end
end
local messages = {}
for quest, parents in pairs(missing) do messages[#messages+1]=quest..' requires '..parents end
table.sort(messages)
assert(#messages==0, 'New Loremaster chains need shared registrations: '..table.concat(messages,'; '))
assert(checked>0, 'The catalog check selects new quest prerequisites')
print('Loremaster shared prerequisite registrations passed: '..checked)
