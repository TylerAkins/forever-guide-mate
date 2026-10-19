"""Read original source observations for offline Loremaster authoring."""
from __future__ import annotations

import gzip
import json
import re
from pathlib import Path

SOURCE_PRIORITY = ('wowhead', 'questiedb', 'allthethings', 'foreverclient')
CLASS_IDS = (1, 2, 3, 4, 5, 7, 8, 9, 11)


def list_ids(value):
    if isinstance(value, int):
        return [value] if value else []
    return value if isinstance(value, list) else []


def quest_facts(quest_id, attributes):
    sources = attributes.get('sourceData', {})
    observed = {name: sources.get(name, {}).get('attributes', {}) for name in SOURCE_PRIORITY}
    def choose(*keys, default=None):
        for source in SOURCE_PRIORITY:
            for key in keys:
                if key in observed[source] and observed[source][key] is not None:
                    return observed[source][key]
        return default
    wh = observed['wowhead']
    catalog = wh.get('wowheadCatalog', {})
    detail = wh.get('wowheadDetail', {})
    flags = choose('flags', default={})
    objectives = choose('objectives', default=[])
    items = (objectives[2] or []) if isinstance(objectives, list) and len(objectives) > 2 else []
    if isinstance(objectives, dict): items = objectives.get('item', [])
    objective_items = []
    for row in items:
        item = row.get('id') if isinstance(row, dict) else row[0] if isinstance(row, list) and row else None
        if isinstance(item, int) and item not in objective_items: objective_items.append(item)
    requirements, unresolved = [], []
    for source in SOURCE_PRIORITY:
        values = observed[source]
        if 'preQuestGroup' not in values and 'preQuestSingle' not in values:
            continue
        for field, mode in [('preQuestGroup', 'all'), ('preQuestSingle', 'any')]:
            ids = list_ids(values.get(field))
            if any(not isinstance(q, int) or q <= 0 or q == quest_id for q in ids):
                unresolved.append(f'{source}.{field} has signed, self, or unsupported references')
            elif ids:
                requirements.append({'mode': mode, 'quests': list(dict.fromkeys(ids))})
        break
    for field in ('requiredMinRep','requiredMaxRep','requiredSpell','requiredSpecialization',
                  'requiredRanks','sourceQuestNumRequired','requiredMaxLevel','childQuests','extraObjectives'):
        value = choose(field)
        if value:
            unresolved.append(f'{field} requires reviewed mechanics not represented by this authoring tool')
    races = choose('races', 'requiredRaces', default=[])
    if not isinstance(races, list):
        unresolved.append('Race bitmask requires an explicit supported race observation')
        races = []
    faction = choose('faction')
    faction_races = {'Alliance': {1, 3, 4, 7, 95}, 'Horde': {2, 5, 6, 8, 96}}
    if faction in faction_races and races and not set(races) & faction_races[faction]:
        unresolved.append('Faction and race observations have no applicable character')
    classes = choose('classes', 'requiredClasses', default=[])
    if isinstance(classes, int):
        classes = [c for c in CLASS_IDS if classes & (1 << (c - 1))]
    points = []
    for group in wh.get('mapper', {}).get('objectives', {}).values():
        for level in group.get('levels', []):
            for point in level:
                if isinstance(point, dict):
                    points.append({**point, 'zone': group.get('zone')})
    markup = detail.get('infoboxMarkup') or ''
    item = re.search(r'Start:.*?item=(\d+)/[^\]]*\]([^\[]+)', markup)
    skill = choose('requiredSkill')
    if skill is not None and not (isinstance(skill, list) and len(skill) >= 2
                                   and all(isinstance(v, int) for v in skill[:2])):
        unresolved.append('Unsupported profession requirement')
        skill = None
    def positive(key, default):
        return next((observed[source][key] for source in SOURCE_PRIORITY
                     if isinstance(observed[source].get(key), int) and observed[source][key] > 0), default)
    offer = positive('requiredLevel', 1)
    level = positive('questLevel', offer)
    if not isinstance(offer, int) or offer < 1: offer = 1
    if not isinstance(level, int) or level < 1: level = offer
    firstseen = catalog.get('list', {}).get('firstseenpatch')
    forever = firstseen == 16001 or any('ADDED_1_60_1' in str(d.get('rawFields', {}).get('timeline', ''))
                                      for d in observed['allthethings'].get('declarations', []))
    return {'id': quest_id, 'name': choose('name', default=f'Quest {quest_id}'),
            'offer': offer, 'level': level, 'races': races, 'classes': classes,
            'faction': choose('faction'), 'skill': skill, 'flags': flags,
            'elite': catalog.get('list', {}).get('type') == 1,
            'requirements': requirements, 'unresolved': unresolved,
            'objectivesText': choose('objectivesText', default=[]), 'objectiveItems': objective_items,
            'points': points, 'startPins': wh.get('startPins', []),
            'zoneId': wh.get('zoneId'), 'questieZone': observed['questiedb'].get('zoneOrSort'),
            'forever': forever, 'firstseenpatch': firstseen,
            'item': ({'id': int(item[1]), 'name': item[2]} if item else
                     {'id': choose('sourceItemId'), 'name': None} if choose('sourceItemId') else None),
            'exclusiveTo': list_ids(choose('exclusiveTo', default=[])),
            'breadcrumbs': list_ids(choose('breadcrumbs', default=[])),
            'breadcrumbForQuestId': choose('breadcrumbForQuestId'),
            'evidence': {name: {k: v for k, v in values.items()
                               if k in {'name','classes','races','faction','requiredRaces','requiredClasses',
                                        'questLevel','requiredLevel','zoneOrSort','flags','preQuestGroup',
                                        'preQuestSingle','prerequisiteReferences','objectivesText','objectives','requiredSkill',
                                        'sourceItemId','startedBy','finishedBy','exclusiveTo','breadcrumbs','breadcrumbForQuestId',
                                        'requiredMinRep','requiredMaxRep','requiredSpell','requiredSpecialization',
                                        'requiredRanks','sourceQuestNumRequired','requiredMaxLevel','childQuests','extraObjectives'}}
                         for name, values in observed.items()},
            'sourceRevisions': {name: s.get('revision') for name, s in sources.items()}}


def load_facts(database):
    records = database / 'data/forever/compilation/records.jsonl.gz'
    facts = {}
    with gzip.open(records, 'rt') as stream:
        for line in stream:
            record = json.loads(line)
            if record['entityType'] == 'quest':
                quest_id = int(record['entityId'])
                facts[quest_id] = quest_facts(quest_id, record['attributes'])
    return facts


def lua(value, depth=0):
    """Render reviewed source data as ordinary Lua tables."""
    if value is None: return 'nil'
    if isinstance(value, bool): return str(value).lower()
    if isinstance(value, (int, float)): return str(value)
    if isinstance(value, str): return json.dumps(value, ensure_ascii=False)
    if not value: return '{}'
    indent = '    ' * (depth + 1)
    if isinstance(value, list):
        fields = [lua(v, depth + 1) for v in value]
    else:
        fields = [(str(k) if re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]*', str(k)) and str(k) not in {'and','break','do','else','elseif','end','false','for','function','if','in','local','nil','not','or','repeat','return','then','true','until','while'} else '[' + lua(k) + ']')
                  + ' = ' + lua(v, depth + 1) for k, v in value.items()]
    if all('\n' not in field for field in fields) and sum(map(len, fields)) < 110:
        return '{ ' + ', '.join(fields) + ' }'
    return '{\n' + indent + (',\n' + indent).join(fields) + ',\n' + '    ' * depth + '}'


def prerequisite_availability(quest, facts, failures=(), visiting=()):
    """Describe a possible prerequisite path without granting completion credit."""
    history = {'quest': {'id': quest, 'state': 'completed'}}
    if quest in failures or quest not in facts or quest in visiting:
        return history
    entry = facts[quest]
    own = []
    if entry['faction']: own.append({'faction': entry['faction']})
    if entry['races']: own.append({'race': entry['races']})
    if entry['classes']: own.append({'class': entry['classes']})
    if entry['skill']:
        own.append({'profession': {'skillLineID': entry['skill'][0], 'minRank': entry['skill'][1]}})
    for group in entry['requirements']:
        options = [prerequisite_availability(p, facts, failures, (*visiting, quest)) for p in group['quests']]
        available = {group['mode']: options}
        if group.get('conditions'):
            available = {'any': [{'not': group['conditions']}, available]}
        own.append(available)
    return {'any': [history, {'all': own}]}
