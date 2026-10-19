local ns={}
for p in io.lines('ForeverGuideMate.toc') do if p:match('%.lua$') then assert(loadfile(p))('FGM',ns) end end
local guide=ns.guides['leveling-era-horde-alterac-mountains-and-arathi-highlands']
local positions={}
for i,g in ipairs(guide.goals) do positions[g.id]=i end
assert(positions['objective-566-1-baron-vardus-2'] < positions['turnin-566-wanted-baron-vardus'],
    'Both Baron Vardus objective locations precede the return to Tarren Mill')
print('Hillsbrad and Alterac return ordering checks passed')
