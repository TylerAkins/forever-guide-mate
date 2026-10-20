#!/usr/bin/env python3
"""Prepare one ordered zone itinerary and its evidence for review.

This is an authoring tool, not an upstream guide importer. It preserves existing
route actions, reads quest facts from original Forever observations, and records
unsupported candidates rather than inventing missing mechanics. Review its output
and run the repository checks before committing each zone.
"""
from __future__ import annotations

import argparse
import copy
import hashlib
import json
import re
import subprocess
from collections import Counter
from pathlib import Path

from loremaster_ordering import parse_upstream, weave
from loremaster_sources import SOURCE_PRIORITY, load_facts, lua, prerequisite_availability
from weave_loremaster import ZONE_UIMAP, parse_goals, replace_goals, slug

ROOT = Path(__file__).resolve().parents[1]
UPSTREAM_COMMIT = '9087c457e20fb96e73e5b362dd6fc50324b75718'
UPSTREAM_REPO = 'https://github.com/ErebusAres/ZygorGuidesRemaster-3.3.5a_WOTLK'
CAPITALS = {'Stormwind City', 'Ironforge', 'Darnassus', 'Orgrimmar', 'Thunder Bluff', 'Undercity'}
ALIASES = {'Barrens': 'The Barrens', 'Hinterlands': 'The Hinterlands',
           'Blackmaw Hold': 'Felwood', 'Abyssal Sands': 'Tanaris',
           'Field of Giants': 'The Barrens', 'Stonewrought Dam': 'Loch Modan',
           "Thoradin's Wall": 'Arathi Highlands', "Rut'theran Village": 'Teldrassil',
           'Anvilmar': 'Dun Morogh', 'Kharanos': 'Dun Morogh'}


def quest_id(goal):
    complete = goal.get('complete', {})
    return (goal.get('checkpointQuest') or goal.get('referenceQuest') or
            complete.get('quest', {}).get('id') or complete.get('questObjective', {}).get('id'))


def faction_of(condition):
    if not isinstance(condition, dict): return None
    if condition.get('faction'): return condition['faction']
    for part in condition.get('all', []):
        result = faction_of(part)
        if result: return result
    return None


def ownership(facts, area_names):
    # Objective locations establish ownership before a capital pickup does.
    work = [ALIASES.get(p.get('zone'), p.get('zone')) for p in facts['points']
            if p.get('point') not in ('start', 'end')]
    outside = [name for name in work if name in ZONE_UIMAP and name not in CAPITALS]
    if outside: return Counter(outside).most_common(1)[0][0]
    for area in (facts['zoneId'], facts['questieZone']):
        if area in area_names and area_names[area] not in CAPITALS:
            return area_names[area]
    ends = [ALIASES.get(p.get('zone'), p.get('zone')) for p in facts['points'] if p.get('point') == 'end']
    return next((name for name in ends if name in ZONE_UIMAP and name not in CAPITALS), None)


def point_route(point):
    zone = ALIASES.get(point.get('zone'), point.get('zone'))
    map_id = ZONE_UIMAP.get(zone)
    coord = point.get('coord')
    if not map_id or not isinstance(coord, list) or len(coord) < 2: return None
    if not all(isinstance(c, (int, float)) and 0 <= c <= 100 for c in coord[:2]): return None
    return {'mapID': map_id, 'x': coord[0] / 100, 'y': coord[1] / 100,
            'label': point.get('name') or zone, 'offMapText': f'Travel to {point.get("name") or zone} in {zone}.'}


def build_actions(facts, faction):
    """Build only when supported pickup/return and objective directions are known."""
    if facts['unresolved']: raise ValueError('; '.join(facts['unresolved']))
    if facts['item']: raise ValueError('Item starter requires reviewed drop-source and optional-item gating')
    start = next((p for p in facts['points'] if p.get('point') == 'start' and point_route(p)), None)
    end = next((p for p in facts['points'] if p.get('point') == 'end' and point_route(p)), None)
    if not start or not end: raise ValueError('Missing supported pickup or return navigation')
    work = [p for p in facts['points'] if p.get('point') not in ('start', 'end')]
    instructions = facts['objectivesText']
    materials = {p['item'] for p in work if p.get('item')}
    if len(facts.get('objectiveItems', [])) > len(materials):
        raise ValueError('Required collection materials lack complete acquisition sources and visits')
    def words(text):
        return ' '.join(word.rstrip('s') for word in re.findall(r'[a-z0-9]+', text.lower()))
    if len(materials) > 1 and any(words(item) not in words(' '.join(instructions)) for item in materials):
        raise ValueError('Unexplained intermediate material requires reviewed mechanics and visits')
    if work and not instructions: raise ValueError('Missing objective how-to text')
    if instructions and not work and not any(re.search(r'(?i)\b(speak|talk|report)\b', line) for line in instructions):
        raise ValueError('Objective materials are named but acquisition sources and visits need review')
    if not work and not instructions and start.get('id') == end.get('id'):
        raise ValueError('Missing objective or instant-turn-in evidence')
    q, name = facts['id'], facts['name']
    prefix = faction.lower() + '-extra-' + str(q)
    conditions = [{'faction': faction}, {'level': {'min': facts['offer']}}]
    for key, values in [('race', facts['races']), ('class', facts['classes'])]:
        if values: conditions.append({key: values})
    exclusion = []
    if facts['skill']:
        skill, rank = facts['skill'][:2]
        conditions.append({'profession': {'skillLineID': skill, 'minRank': rank}})
        exclusion.append({'not': {'profession': {'skillLineID': skill, 'minRank': rank}}})
    if facts['exclusiveTo']:
        exclusion.extend({'quest': {'id': other, 'state': 'activeOrCompleted'}} for other in facts['exclusiveTo'] if other > 0)
    def action(kind, text, route, complete):
        out = {'id': prefix + '-' + kind, 'kind': kind, 'text': text,
               'conditions': {'all': copy.deepcopy(conditions)}, 'route': [route] if route else [],
               'complete': complete, 'requiredQuests': copy.deepcopy(facts['requirements']),
               'useClientText': False}
        if exclusion: out['excludeWhen'] = {'any': copy.deepcopy(exclusion)}
        if facts.get('breadcrumbForQuestId'): out['alternativeQuests'] = [facts['breadcrumbForQuestId']]
        return out
    accept = action('accept', f'Accept {name} from {start["name"]}.', point_route(start),
                    {'quest': {'id': q, 'state': 'activeOrCompleted'}})
    objective = None
    if work or instructions:
        pin = next((point_route(p) for p in work if point_route(p)), None)
        text = ' '.join(instructions)
        text = re.split(r'(?i)(?:,?\s+(?:and\s+)?then\s+(?:return to|report(?: back)?(?: to)?|turn in)|\s+and\s+(?:return to|report(?: back)?(?: to)?|turn in))\b', text)[0].rstrip(' ,.;') + '.'
        hostile = [p for p in work if p.get('type') == 1 and
                   (p.get('reactalliance') == -1 if faction == 'Alliance' else p.get('reacthorde') == -1)]
        if hostile and not re.search(r'(?i)\b(kill|slay|defeat|collect|gather)\b', text):
            p = hostile[0]
            text = f'Defeat {p["name"]}' + (f' and loot the {p["item"]}.' if p.get('item') else ' until the quest log marks the objective complete.') + ' ' + text
        if facts.get('elite'): text += ' This is an elite. Bring a group.'
        objective = action('objective', text, pin, {'quest': {'id': q, 'state': 'complete'}})
        objective['dependsOn'] = [accept['id']]
        if not pin:
            objective['useClientPin'] = True
            objective['text'] += ' Follow the quest log for the destination.'
    turnin = action('turnin', f'Turn in {name} to {end["name"]}.', point_route(end),
                    {'quest': {'id': q, 'state': 'completed'}})
    turnin['dependsOn'] = [objective['id'] if objective else accept['id']]
    checkpoint = {'id': prefix + '-level', 'kind': 'note', 'checkpointQuest': q,
                  'text': f'Reach level {facts["level"]} before this visit.',
                  'conditions': {'all': [c for c in copy.deepcopy(conditions) if 'level' not in c]},
                  'complete': {'level': {'min': facts['level']}}, 'requiredLevel': facts['level']}
    if exclusion: checkpoint['excludeWhen'] = {'any': copy.deepcopy(exclusion)}
    if facts.get('breadcrumbForQuestId'): checkpoint['alternativeQuests'] = [facts['breadcrumbForQuestId']]
    accept['dependsOn'] = [checkpoint['id']]
    return [checkpoint, accept] + ([objective] if objective else []) + [turnin]


def upstream_actions(upstream, faction, zone):
    base = upstream / 'ZygorGuidesViewerRM/Guides'
    sources = []
    if faction == 'Alliance':
        for continent in ('EasternKingdoms', 'Kalimdor'):
            sources.append(base / f'Achievements/A-Loremaster-{continent}.lua')
    sources.append(base / f'Leveling/ZygorGuides{faction}.lua')
    actions, hashes = [], {}
    for path in sources:
        relative = str(path.relative_to(upstream))
        text = path.read_text()
        hashes[relative] = hashlib.sha256(path.read_bytes()).hexdigest()
        parsed = parse_upstream(text, faction, relative)
        if 'A-Loremaster' in path.name:
            parsed = [a for a in parsed if zone.lower() in a['chapter'].lower()]
        actions.extend(parsed)
    return actions, hashes


def prepare(zone_spec, database, upstream, snapshot):
    revision = subprocess.check_output(['git', '-C', str(upstream), 'rev-parse', 'HEAD'], text=True).strip()
    if revision != UPSTREAM_COMMIT:
        raise ValueError(f'Expected upstream {UPSTREAM_COMMIT}, found {revision}')
    subprocess.run(['git', '-C', str(upstream), 'diff', '--exit-code', 'HEAD', '--', 'ZygorGuidesViewerRM/Guides'], check=True)
    facts = load_facts(database)
    area_names, catalogs = {}, {}
    bundles = database / 'data/forever/compiled/zones'
    for path in sorted(bundles.glob('*.json')):
        bundle = json.loads(path.read_text())
        area = bundle.get('zone', {}).get('zoneId')
        name = next((n for n in ZONE_UIMAP if slug(n) == path.stem), None)
        if name and area: area_names[area] = name
        for q in bundle.get('quests', {}): catalogs.setdefault(int(q), []).append(path.stem)
    zone, zone_slug = zone_spec['zone'], zone_spec['slug']
    if zone_slug == 'un-goro-crater': zone_slug = 'ungoro-crater'
    candidates = {q for q, names in catalogs.items() if zone_slug in names}
    candidates.update(q for q, f in facts.items() if ownership(f, area_names) == zone
                      and any(slug(city) in catalogs.get(q, []) for city in CAPITALS))
    guides = snapshot['guides']
    current = next((g for g in guides if g['id'] == 'loremaster-' + zone_spec['slug']), None)
    old_audit = ROOT / f'docs/loremaster/{zone_spec["slug"]}.json'
    audit = json.loads(old_audit.read_text()) if old_audit.exists() else {
        'guide': 'loremaster-' + zone_spec['slug'], 'title': zone, 'spine': '', 'additionalSpines': [],
        'spineActions': [], 'placements': [], 'quests': {}, 'supportingQuests': [], 'clientWalkthrough': 'unverified'}
    audit['sourcePriority'] = list(SOURCE_PRIORITY)
    manifest = database / 'data/forever/compilation/manifest.json'
    audit['sources'] = {'databaseCommit': subprocess.check_output(['git','-C',str(database),'rev-parse','HEAD'],text=True).strip(),
                        'compilation': json.loads(manifest.read_text()),
                        'sourceHashes': {'data/forever/compilation/records.jsonl.gz': hashlib.sha256(
                            (database / 'data/forever/compilation/records.jsonl.gz').read_bytes()).hexdigest()}}
    audit['coverageMode'] = 'zone'
    audit['orderingEligibility'] = {}
    audit['upstream'] = {'repository': UPSTREAM_REPO, 'commit': UPSTREAM_COMMIT, 'strict': False, 'sourceHashes': {}}
    current_goals = copy.deepcopy(current['goals']) if current else []
    all_goals = {g['id']: g for g in current_goals}
    raw = {}
    path = ROOT / zone_spec['file']
    if current:
        raw = {g.id: g.raw for g in parse_goals(path.read_text(), '', '', None)}
    added, sources_used, matches, placements = [], [], {}, []
    for faction in ('Alliance', 'Horde'):
        source_guides = [g for g in guides if g['category'] == 'Leveling Quest Guides'
                         and faction_of(g.get('conditions')) == faction]
        source_actions, by_quest, by_id = [], {}, {}
        for guide in source_guides:
            for goal in guide['goals']:
                node = faction.lower() + '-' + guide['id'] + '-' + goal['id']
                source_actions.append((node, guide, goal))
                by_id.setdefault(goal['id'], []).append(node)
                if quest_id(goal): by_quest.setdefault(quest_id(goal), []).append((node, guide, goal))
        source_lookup = {node: (guide, goal) for node, guide, goal in source_actions}
        source_order = {node: index for index, (node, _, _) in enumerate(source_actions)}
        def dependency_quests(quest):
            found, seen = set(), set()
            pending_actions = [node for node, _, _ in by_quest.get(quest, [])]
            while pending_actions:
                node = pending_actions.pop()
                if node in seen: continue
                seen.add(node)
                guide, goal = source_lookup[node]
                for dependency in goal.get('dependsOn', []):
                    options = by_id.get(dependency, [])
                    local = [candidate for candidate in options
                             if source_lookup[candidate][0]['id'] == guide['id']]
                    earlier = [candidate for candidate in options if source_order[candidate] < source_order[node]]
                    target = local[0] if local else earlier[-1] if earlier else None
                    if target:
                        predecessor = quest_id(source_lookup[target][1])
                        if predecessor and predecessor != quest:
                            found.add(predecessor)
                        else:
                            pending_actions.append(target)
            return found
        casual_quests = {quest_id(g) for _, _, g in source_actions if g.get('kind') == 'accept'}
        upstream_order, hashes = upstream_actions(upstream, faction, zone)
        audit['upstream']['sourceHashes'].update(hashes)
        for q in candidates:
            audit['orderingEligibility'].setdefault(str(q), {})[faction] = {
                'inCasual': q in casual_quests, 'foreverSpecific': facts.get(q, {}).get('forever'),
                'upstreamAdvisory': q not in casual_quests and not facts.get(q, {}).get('forever', True)}
        known = {quest_id(g) for g in current_goals if g.get('kind') == 'accept'
                 and faction_of(g.get('conditions')) in (None, faction)}
        wanted = set()
        for q in sorted(candidates):
            if q in known: continue
            f = facts.get(q)
            if not f: continue
            if f['faction'] and f['faction'] != faction: continue
            existing = audit['quests'].get(str(q), {})
            if existing.get('status') in ('excluded','other-zone','unresolved') and current: continue
            entry = {'catalogs': catalogs.get(q, []), 'evidence': f['evidence'],
                     'sourceRevisions': f['sourceRevisions'], 'locations': f['points'], 'supporting': False}
            audit['quests'][str(q)] = entry
            owner = ownership(f, area_names)
            if owner and owner != zone:
                entry.update(status='other-zone', reason=f'Quest work belongs to {owner}, not its pickup catalog.')
            elif any(f['flags'].get(k) for k in ('dungeon','raid','daily','weekly','monthly','repeatable')) or 'unused' in f['name'].lower():
                entry.update(status='excluded', reason='Dungeon, raid, event/repeatable, or unused work is outside this outdoor itinerary.')
            elif f['unresolved'] and q not in casual_quests:
                entry.update(status='unresolved', reason='; '.join(f['unresolved']))
            else:
                wanted.add(q)
        # Supporting quest closure uses the same evidence and source route actions.
        roots = set(wanted)
        pending = list(sorted(wanted))
        requirements, source_requirements = {}, {}
        failures = {}
        while pending:
            q = pending.pop()
            if q in requirements: continue
            f = facts.get(q)
            if not f:
                failures[q] = 'Missing prerequisite observations'; requirements[q] = []; continue
            owner = ownership(f, area_names)
            if owner in ('Mount Hyjal', 'Riverglades') or any(p.get('zone') in ('Mount Hyjal', 'Riverglades') for p in f['points']):
                failures[q] = 'Required work visits an excluded zone'
            if f['faction'] and f['faction'] != faction:
                failures[q] = 'Prerequisite is unavailable to this faction'
            if any(f['flags'].get(k) for k in ('dungeon','raid','daily','weekly','monthly')):
                failures[q] = 'Prerequisite requires dungeon, raid, or event work outside this itinerary'
            groups = f['requirements']
            if q in casual_quests:
                source_groups = [g.get('requiredQuests', []) for _,_,g in by_quest.get(q, []) if g.get('kind') == 'accept']
                groups = []
                for collection in source_groups:
                    for group in collection:
                        if group not in groups: groups.append(group)
            registered = snapshot['prerequisites'].get(str(q), [])
            if not groups and registered:
                groups = [{'mode': g['mode'], 'quests': g['quests'], 'conditions': g.get('conditions', {})} for g in registered]
            requirements[q] = groups
            source_requirements[q] = dependency_quests(q) if q in casual_quests else set()
            if q not in casual_quests:
                try: build_actions(f, faction)
                except ValueError as exc: failures[q] = str(exc)
            predecessors = source_requirements[q] | {p for group in groups for p in group['quests']}
            for predecessor in predecessors:
                if predecessor not in wanted and predecessor not in known:
                    wanted.add(predecessor); pending.append(predecessor)
                    if str(predecessor) not in audit['quests'] and predecessor in facts:
                        pf = facts[predecessor]
                        audit['quests'][str(predecessor)] = {'catalogs': catalogs.get(predecessor, []),
                            'supporting': True, 'evidence': pf['evidence'], 'sourceRevisions': pf['sourceRevisions'], 'locations': pf['points']}
                    if predecessor not in roots and predecessor in facts:
                        audit['quests'][str(predecessor)]['supporting'] = True
        changed = True
        while changed:
            changed = False
            for q, groups in requirements.items():
                if q in failures: continue
                if any(p in failures for p in source_requirements.get(q, ())):
                    failures[q] = 'A required source handoff remains unresolved'; changed = True; continue
                if any(not group.get('conditions') and ((group['mode'] == 'all' and any(p in failures for p in group['quests'])) or
                       (group['mode'] == 'any' and all(p in failures for p in group['quests']))) for group in groups):
                    failures[q] = 'A required prerequisite remains unresolved'; changed = True
        for q in list(wanted):
            if q in failures:
                audit['quests'].setdefault(str(q), {'evidence': {}, 'catalogs': []}).update(status='unresolved', reason=failures[q]);wanted.remove(q)
        needed, pending = set(), list(roots & wanted)
        while pending:
            q = pending.pop()
            if q in needed: continue
            needed.add(q)
            predecessors = source_requirements.get(q, set()) | {p for group in requirements.get(q, []) for p in group['quests']}
            pending.extend(p for p in predecessors if p in wanted and p not in needed)
        for q in wanted - needed:
            audit['quests'][str(q)].update(status='excluded',
                reason='Prerequisite excursion only served a candidate whose complete itinerary remains unresolved.')
        wanted.intersection_update(needed)
        selected = [(node,g,goal) for node,g,goal in source_actions if quest_id(goal) in wanted]
        selected_ids = {node for node,_,_ in selected}
        # Dependency notes belong with the selected source action even without a quest id.
        changed = True
        while changed:
            changed = False
            for node,guide,goal in source_actions:
                if node not in selected_ids: continue
                for dep in goal.get('dependsOn', []):
                    for dep_node in by_id.get(dep, []):
                        if dep_node.startswith(faction.lower() + '-' + guide['id'] + '-') and dep_node not in selected_ids:
                            selected_ids.add(dep_node);changed = True
        selected = [(node,g,goal) for node,g,goal in source_actions if node in selected_ids]
        mapping = {}
        for node,guide,goal in selected:
            mapping[(guide['id'],goal['id'])] = node
        faction_spine = []
        source_ordinals = {node: i for i, (node, _, _) in enumerate(source_actions)}
        originals = {node: goal for node, _, goal in selected}
        for node,guide,goal in selected:
            clone = copy.deepcopy(goal)
            clone.pop('questPrerequisites', None)
            clone['id'] = node
            clone['sourceGuide'] = guide['id'];clone['sourceActionID'] = goal['id']
            clone['dependsOn'] = []
            for dep in goal.get('dependsOn', []):
                target = mapping.get((guide['id'], dep))
                if target is None:
                    earlier = [n for n, _, action in selected if action['id'] == dep
                               and source_ordinals[n] < source_ordinals[node]]
                    target = earlier[-1] if earlier else None
                # An identical earlier pickup already satisfies the observed quest state.
                if target and source_ordinals[target] > source_ordinals[node]:
                    dependency = originals[target]
                    if dependency.get('kind') == 'accept' and quest_id(dependency) == quest_id(goal):
                        earlier_pickups = [n for n, original in originals.items()
                            if source_ordinals[n] < source_ordinals[node]
                            and original.get('kind') == 'accept'
                            and quest_id(original) == quest_id(goal)
                            and original.get('conditions') == goal.get('conditions')
                            and original.get('complete', {}).get('quest', {}).get('state') == 'activeOrCompleted']
                        if earlier_pickups: target = max(earlier_pickups, key=source_ordinals.get)
                if target and target not in clone['dependsOn']: clone['dependsOn'].append(target)
            all_goals[node] = clone; added.append(node);faction_spine.append(node)
            if guide['id'] not in sources_used: sources_used.append(guide['id'])
        extra_ids = []
        for q in sorted(wanted - casual_quests):
            for goal in build_actions(facts[q], faction):
                all_goals[goal['id']] = goal;added.append(goal['id']);extra_ids.append(goal['id'])
        existing = [g['id'] for g in current_goals if faction_of(g.get('conditions')) in (None, faction)]
        movable = [n for n in existing if quest_id(all_goals[n]) in facts
                   and quest_id(all_goals[n]) not in casual_quests
                   and (('-extra-' in n) or (not facts[quest_id(all_goals[n])]['forever']
                        and facts[quest_id(all_goals[n])]['firstseenpatch'] is not None))]
        extra_ids = movable + extra_ids
        active = [n for n in existing if n not in movable]
        # Place newly copied Casual actions alongside matching original source IDs.
        original_positions = {}
        source_positions = {node:i for i,(node,_,_) in enumerate(source_actions)}
        for i,(_,_,goal) in enumerate(source_actions): original_positions.setdefault(goal['id'],i)
        def source_position(node):
            if node in source_positions: return source_positions[node]
            goal = all_goals[node]
            if goal.get('sourceGuide'):
                source_node = faction.lower() + '-' + goal['sourceGuide'] + '-' + goal['sourceActionID']
                return source_positions.get(source_node)
            return original_positions.get(goal['id'])
        for node in faction_spine:
            position = next(i for i, (n, _, _) in enumerate(source_actions) if n == node)
            anchors = [n for n in active if source_position(n) is not None and source_position(n) <= position]
            anchor = anchors[-1] if anchors else None
            index = active.index(anchor) + 1 if anchor else 0
            active.insert(index, node)
        nodes = active + extra_ids
        turnins, accepts = {}, {}
        for node in nodes:
            goal = all_goals[node];q = quest_id(goal)
            if goal.get('kind') == 'turnin': turnins.setdefault(q, []).append(node)
            if goal.get('kind') == 'accept': accepts.setdefault(q, []).append(node)
        for node in nodes:
            goal = all_goals[node]
            if goal.get('kind') == 'turnin':
                work = [n for n in nodes if all_goals[n].get('kind') == 'objective'
                        and quest_id(all_goals[n]) == quest_id(goal)]
                goal['dependsOn'] = list(dict.fromkeys(list(goal.get('dependsOn') or []) + work))
                if node in raw: raw.pop(node)
        predecessors = {node: [d for d in all_goals[node].get('dependsOn', []) if d in nodes] for node in nodes}
        for node in nodes:
            goal = all_goals[node];q = quest_id(goal)
            if node not in extra_ids: continue
            if goal['kind'] == 'accept':
                groups = goal.get('requiredQuests') or requirements.get(q, [])
                for group in groups:
                    for p in group['quests']:
                        predecessors[node].extend(turnins.get(p, []))
                # Ordering every available alternative before this pickup does not
                # make every alternative a completion requirement.
                goal['requiredQuests'] = copy.deepcopy(groups)
                for group in groups:
                    if group['mode'] == 'all' and not group.get('conditions'):
                        goal.setdefault('dependsOn', []).extend(d for p in group['quests'] for d in turnins.get(p, []))
        for q in {quest_id(all_goals[n]) for n in extra_ids}:
            target = facts.get(q, {}).get('breadcrumbForQuestId')
            if target:
                for pickup in accepts.get(target, []):
                    predecessors[pickup].extend(turnins.get(q, []))
        availability_facts = dict(facts)
        for q, groups in requirements.items():
            if q in facts: availability_facts[q] = {**facts[q], 'requirements': groups}
        for node in nodes:
            goal = all_goals[node];q = quest_id(goal)
            if node not in added and node not in extra_ids: continue
            groups = goal.get('requiredQuests') or requirements.get(q, [])
            if not groups or q not in availability_facts: continue
            availability_facts[q] = {**availability_facts[q], 'requirements': groups}
            possible = prerequisite_availability(q, availability_facts, failures)
            gate = {'not': {'any': [{'quest': {'id': q, 'state': 'activeOrCompleted'}}, possible]}}
            old = goal.get('excludeWhen')
            goal['excludeWhen'] = {'any': [old,gate]} if old else gate
            if node in raw: raw.pop(node)
            missing = [p for group in groups for p in group['quests'] if p in failures]
            if missing: goal['unresolvedPrerequisites'] = sorted(set(missing))
        rank = {}
        for action in upstream_order:
            key = (action['quest'],action['kind'])
            rank.setdefault(key, action)
        ranked = []
        for node in nodes:
            goal = all_goals[node];q = quest_id(goal)
            if facts.get(q, {}).get('forever') or (q in casual_quests and node in extra_ids): continue
            match = rank.get((q,'accept' if goal.get('checkpointQuest') else goal.get('kind')))
            if match:
                ranked.append((match['source'],match['line'],node))
                if node in extra_ids: matches[node] = match
        preference = [n for _,_,n in sorted(ranked)]
        # Offer minima do not identify the leveling visit. Use the frozen
        # Casual chapter bands to keep higher recommendations in later returns.
        bands_path = ROOT / 'tests/fixtures/reference_bands.json'
        bands = json.loads(bands_path.read_text()) if bands_path.exists() else {}
        for node in extra_ids:
            goal = all_goals[node];q = quest_id(goal)
            if goal['kind'] != 'accept': continue
            level = facts[q]['level']
            visits = [(n,bands.get(all_goals[n].get('sourceGuide'))) for n in active]
            anchor = next((n for n,band in visits if band and band['max'] >= level), None)
            if anchor is None and active: anchor = active[-1]
            if anchor:
                predecessors[node].append(anchor)
                checkpoint = next((n for n in extra_ids if all_goals[n].get('checkpointQuest') == q), None)
                if checkpoint: predecessors[checkpoint].append(anchor)
        order = weave(active, extra_ids, preference, predecessors)
        for node in list(order):
            goal = all_goals[node]
            if goal.get('checkpointQuest') and '-extra-' in node and node.endswith('-level'):
                q = goal['checkpointQuest']
                pickup = next((n for n in order if all_goals[n].get('kind') == 'accept' and quest_id(all_goals[n]) == q), None)
                if pickup:
                    order.remove(node)
                    order.insert(order.index(pickup),node)
        if not current:
            current_goals.extend(all_goals[n] for n in order)
        else:
            replaced = set(nodes)
            first = next((i for i,g in enumerate(current_goals) if g['id'] in replaced), len(current_goals))
            remaining = [g for g in current_goals if g['id'] not in replaced]
            current_goals = remaining[:first] + [all_goals[n] for n in order] + remaining[first:]
        for q in wanted:
            entry = audit['quests'].setdefault(str(q), {'catalogs': catalogs.get(q, []), 'evidence': facts[q]['evidence']})
            entry.update(status='spine' if q in casual_quests else 'included', reason='Preserved faction Casual actions.' if q in casual_quests else 'Permanent outdoor quest woven using verified source requirements and advisory legacy order.')
            if entry.get('supporting') and q not in audit['supportingQuests']: audit['supportingQuests'].append(q)
    # An extracted visit must retain the original chapter entry level even
    # when its preceding leveling chapters are outside this zone.
    def without_level(condition):
        if not isinstance(condition, dict): return condition
        return {k: ([without_level(c) for c in value if not (isinstance(c, dict) and set(c) == {'level'})]
                    if k in ('all', 'any') else without_level(value))
                for k, value in condition.items() if k != 'level'}
    visits = set()
    for goal in list(current_goals):
        source = goal.get('sourceGuide')
        if not source or source in visits: continue
        visits.add(source)
        original = next(g for g in guides if g['id'] == source)
        condition = original.get('conditions', {})
        levels = [condition.get('level', {}).get('min', 1)]
        levels.extend(c.get('level', {}).get('min', 1) for c in condition.get('all', []))
        level = max(levels)
        node = 'visit-entry-' + source
        if level <= 1 or any(g['id'] == node for g in current_goals): continue
        actor = without_level(condition)
        entry = {'id': node, 'kind': 'note', 'visitSourceGuide': source,
                 'text': f'Reach level {level} before the {original.get("title", source)} visit.',
                 'conditions': actor, 'excludeWhen': {'not': actor},
                 'complete': {'level': {'min': level}}, 'requiredLevel': level}
        current_goals.insert(current_goals.index(goal), entry)
        added.append(node)
    authored = {quest_id(g) for g in current_goals if g.get('kind') == 'accept'}
    for q in authored:
        entry = audit['quests'].get(str(q))
        if entry and entry.get('status') in ('excluded', 'other-zone', 'unresolved'):
            entry['factionNotes'] = entry.get('reason')
            entry.update(status='included', reason='Authored for an applicable faction; other faction limitations are recorded separately.')
    audit['supportingQuests'] = sorted(q for q in authored
        if audit['quests'].get(str(q), {}).get('supporting') or q in audit.get('supportingQuests', []))
    valid_actions = {g['id'] for g in current_goals}
    audit['placements'] = [visit for visit in audit['placements']
        if visit['anchor'] in valid_actions and set(visit['actions']) <= valid_actions]
    if not current_goals:
        return None, audit
    guide = {k: v for k,v in (current or {}).items() if k != 'goals'}
    guide.update(id=audit['guide'],title=zone,category='Loremaster Guides',revision=(current or {}).get('revision',0)+1,routeMode='ordered',loremasterExpanded=True)
    if not current: guide['goals'] = current_goals
    for goal in current_goals: goal.pop('questPrerequisites', None)
    audit['sources']['upstreamCommit'] = UPSTREAM_COMMIT
    audit['upstream']['matches'] = matches
    audit['spineActions'] = [g['id'] for g in current_goals if g['id'] in set(audit['spineActions']) or g.get('sourceActionID')]
    audit['additionalSpines'] = list(dict.fromkeys(audit.get('additionalSpines', []) + sources_used))
    if not audit['spine'] and sources_used: audit['spine'] = sources_used[0]
    for goal in current_goals:
        if goal['id'] not in added: continue
        index = next(i for i,g in enumerate(current_goals) if g['id']==goal['id'])
        placements.append({'anchor':current_goals[max(0,index-1)]['id'],'actions':[goal['id']],
                           'reason':'Preserved Casual source order or constrained advisory insertion; Forever observations govern quest facts.'})
    audit['placements'].extend(placements)
    if current:
        text = path.read_text()
        if 'loremasterExpanded' not in text: text = text.replace('routeMode = "ordered",', 'routeMode = "ordered",\n    loremasterExpanded = true,',1)
        text = re.sub(r'revision = \d+',f'revision = {guide["revision"]}',text,count=1)
        rendered = ',\n        '.join(raw.get(g['id'],lua(g,2)) for g in current_goals)
        text = replace_goals(text,rendered)
    else:
        guide['goals'] = current_goals
        text = 'local _, ns = ...\n\n-- Source decisions: docs/loremaster/'+zone_spec['slug']+'.json.\n-- Coordinates require a Forever client walkthrough.\nns:RegisterGuide('+lua(guide)+')\n'
    return text, audit


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('zone')
    parser.add_argument('--database',type=Path,default=ROOT.parent/'wow-database')
    parser.add_argument('--upstream',type=Path,required=True)
    parser.add_argument('--lua',default='lua5.1')
    parser.add_argument('--write',action='store_true',help='Write the one zone candidate for review')
    args = parser.parse_args()
    inventory = json.loads((ROOT/'docs/loremaster-zones.json').read_text())
    spec = next(z for z in inventory['zones'] if z['slug']==args.zone)
    snapshot = json.loads(subprocess.check_output([args.lua,'tools/export_loremaster.lua'],cwd=ROOT,text=True))
    text,audit = prepare(spec,args.database,args.upstream,snapshot)
    counts = Counter(e['status'] for e in audit['quests'].values())
    print(spec['zone'],dict(counts))
    if args.write:
        if text: (ROOT/spec['file']).write_text(text)
        (ROOT/f'docs/loremaster/{spec["slug"]}.json').write_text(json.dumps(audit,indent=2)+'\n')


if __name__ == '__main__': main()
