"""Advisory upstream ordering for authored Loremaster actions.

Only action identity and order are read from upstream. Quest facts and eligibility
remain the responsibility of the Forever source inventory.
"""
from __future__ import annotations

import heapq
import re


def weave(spine, extras, upstream, predecessors):
    """Keep spine edges and verified predecessors; upstream breaks ready-node ties."""
    nodes = list(spine) + list(extras)
    if len(nodes) != len(set(nodes)):
        raise ValueError('Duplicate action identity')
    rank = {node: i for i, node in reversed(list(enumerate(upstream)))}
    fallback = {node: i for i, node in enumerate(nodes)}
    edges = {node: set() for node in nodes}
    incoming = dict.fromkeys(nodes, 0)
    pairs = list(zip(spine, spine[1:]))
    pairs += [(before, node) for node, values in predecessors.items() for before in values]
    for before, after in pairs:
        if before not in edges or after not in edges:
            raise ValueError(f'Unknown prerequisite action: {before} -> {after}')
        if after not in edges[before]:
            edges[before].add(after)
            incoming[after] += 1
    def key(node):
        return (rank.get(node, len(upstream) + fallback[node]), fallback[node], node)
    ready = [key(node) for node in nodes if incoming[node] == 0]
    heapq.heapify(ready)
    result = []
    while ready:
        _, _, node = heapq.heappop(ready)
        result.append(node)
        for after in sorted(edges[node]):
            incoming[after] -= 1
            if incoming[after] == 0:
                heapq.heappush(ready, key(after))
    if len(result) != len(nodes):
        blocked = [node for node in nodes if incoming[node]]
        raise ValueError('Prerequisite/spine cycle: ' + ', '.join(blocked[:12]))
    return result


def parse_upstream(text, faction, source):
    """Read legacy Zygor action lines without evaluating downloaded Lua."""
    chapter = ''
    result = []
    for line_number, line in enumerate(text.splitlines(), 1):
        title = re.search(r'RegisterGuide\("([^"\n]+)"', line)
        if title:
            chapter = title[1]
        action = re.search(r'\b(accept|turnin)\s+[^\n]*?##(\d+)', line)
        objective = re.search(r'\|q\s+(\d+)/(\d+)', line)
        if action:
            kind, quest, index = action[1], int(action[2]), 0
        elif objective and re.search(r'\.(?:kill|get|collect|goal|use|from)\b', line):
            kind, quest, index = 'objective', int(objective[1]), int(objective[2])
        else:
            continue
        result.append({'quest': quest, 'kind': kind, 'index': index,
                       'faction': faction, 'chapter': chapter,
                       'source': source, 'line': line_number})
    return result
