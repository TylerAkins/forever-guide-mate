local ns = {}
for path in io.lines('ForeverGuideMate.toc') do
    if path:match('%.lua$') then assert(loadfile(path))('ForeverGuideMate', ns) end
end
local parity = dofile('tools/loremaster_parity.lua')
local baseline = dofile('tests/fixtures/loremaster_parity_baseline.lua')
local differences = parity.Compare(ns, dofile('tests/fixtures/loremaster_pairs.lua'))
for key, difference in pairs(differences) do
    local recorded = baseline[key]
    assert(recorded and recorded.source == difference.source and recorded.target == difference.target,
        'Unreviewed Casual/Loremaster behavioral drift: ' .. key)
end
local source = {id='accept-test', kind='accept', conditions={race=5}}
local target = {id='accept-test', kind='accept', conditions={race=5}}
local sample = {guides={source={goals={source}},target={goals={target}}}}
local pair = {{source='source',target='target'}}
assert(next(parity.Compare(sample,pair)) == nil)
source.conditions = {race=6}
assert(next(parity.Compare(sample,pair)), 'A changed source restriction must fail synchronization')
target.conditions = {race=6}
assert(next(parity.Compare(sample,pair)) == nil, 'Mirroring the source restores synchronization')
print('Loremaster behavioral synchronization checks passed')
source.complete={quest={id=9,state='activeOrCompleted'}}
target.complete={quest={id=9,state='activeOrCompleted'}}
pair[1].sharedActions={'accept-test'}
source.route={{mapID=1429,x=0.2,y=0.3}}
target.route={{mapID=1429,x=0.4,y=0.3}}
assert(next(parity.Compare(sample,pair)),'Changed navigation must fail synchronization')
target.route=source.route
source.requiredQuests={{mode='all',quests={8}}}
assert(next(parity.Compare(sample,pair)),'Changed prerequisites must fail synchronization')
target.requiredQuests=source.requiredQuests
source.complete={quest={id=10,state='activeOrCompleted'}}
assert(next(parity.Compare(sample,pair)),'Changed quest identity must fail synchronization')
target.complete=source.complete
sample.guides.source.goals={}
assert(next(parity.Compare(sample,pair)),'Deleting a shared source action must fail synchronization')
sample.guides.source.goals={source,{id='objective-test',kind='objective',complete={quest={id=10,state='complete'}}}}
assert(next(parity.Compare(sample,pair)),'Adding an unmatched action for a shared quest must fail synchronization')
print('Loremaster synchronization regression sensitivity passed')
local canonical={id='turnin-test',kind='turnin',complete={quest={id=42,state='complete'}}}
local wrapped={id='loremaster-zone-turnin-test',sourceActionID='turnin-test',kind='turnin',
    complete={quest={id=42,state='complete'}}}
local wrappedSample={guides={source={goals={canonical}},target={goals={wrapped}}}}
local wrappedPair={{source='source',target='target',sharedActions={'turnin-test'}}}
assert(next(parity.Compare(wrappedSample,wrappedPair))==nil,
    'A route-wrapped action keeps its sourceActionID for parity matching')
wrapped.complete={quest={id=43,state='complete'}}
assert(next(parity.Compare(wrappedSample,wrappedPair)),
    'A wrapped action still reports changed behavior')
local a={id='a',kind='accept'}
local b={id='b',kind='turnin'}
local ordered={guides={source={goals={a,b}},target={goals={b,a}}}}
local orderPairs={{source='source',target='target',sharedActions={'a','b'}}}
local before=parity.Serialize(parity.Compare(ordered,orderPairs))
table.insert(ordered.guides.target.goals,1,{id='unrelated',kind='note'})
assert(before==parity.Serialize(parity.Compare(ordered,orderPairs)),
    'An unrelated Loremaster insertion does not change an existing relative-order discrepancy')
local header={guides={source={goals={a}},target={goals={a}}}}
assert(next(parity.Compare(header,{{source='source',target='target'}}))==nil)
header.guides.source.conditions={faction='Horde'}
assert(next(parity.Compare(header,{{source='source',target='target'}})),
    'A changed source guide restriction must fail synchronization')
