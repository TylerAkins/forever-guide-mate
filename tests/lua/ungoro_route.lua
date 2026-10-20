local ns={}
for path in io.lines('ForeverGuideMate.toc') do if path:match('%.lua$') then assert(loadfile(path))('FGM',ns) end end
for _,faction in ipairs({'alliance','horde'}) do
 local guide=ns.guides['loremaster-ungoro-crater']
 local found=false
 for _,goal in ipairs(guide.goals) do if goal.id==faction..'-extra-3962-objective' then
  found=true
  assert(goal.text:find('Use the quest item',1,true),'The totem must be used before fighting Blazerunner')
  assert(goal.text:find('Ornate Chest',1,true),'The Golden Flame chest must be named')
  assert(not goal.text:find('Defeat Blazerunner until',1,true),'Do not imply killing alone completes the quest')
  local chest=false
  for _,pin in ipairs(goal.route or {}) do if pin.label=='Ornate Chest' and pin.mapID==1449 and math.abs(pin.x-0.502)<0.0001 and math.abs(pin.y-0.5)<0.0001 then chest=true end end
  assert(chest,'The observed Ornate Chest pin is required')
 end end
 assert(found,'Both factions need the reviewed 3962 objective')
end
print("Un'Goro 3962 step sequence passed")
