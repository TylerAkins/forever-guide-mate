#!/usr/bin/env python3
"""Report authored pickups and eligibility without inferring prerequisite credit."""
import argparse
import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def report(lua):
    result = subprocess.run([lua, 'tools/loremaster_report.lua'], cwd=ROOT,
                            text=True, capture_output=True, check=True)
    sets = {}
    for line in result.stdout.splitlines():
        target, source, profile, before, after = line.split('\t')
        entry = sets.setdefault(target, {}).setdefault(profile, [set(), set()])
        for bucket, values in zip(entry, (before, after)):
            bucket.update(int(value) for value in values.split(',') if value)
    zones = {}
    for path in sorted((ROOT / 'docs/loremaster').glob('*.json')):
        audit = json.loads(path.read_text())
        profiles = sets[audit['guide']]
        source, target = profiles.pop('catalog')
        expanded = path.stem in {'westfall','loch-modan','darkshore','silverpine-forest','the-barrens'}
        catalog = {int(q) for q, entry in audit['quests'].items() if entry.get('catalogs')}
        if expanded:
            relevant = catalog | set(audit.get('supportingQuests', []))
            source = sets['__all__']['catalog'][0] & relevant
            for name, (before, after) in profiles.items():
                profiles[name][0] = sets['__all__'][name][0] & relevant
        dispositions = {}
        for quest, entry in audit['quests'].items():
            dispositions.setdefault(entry['status'], []).append(int(quest))
        zones[path.stem] = {
            'leveling': len(source), 'levelingCatalog': len(source & catalog), 'levelingOverlap': len(source & target),
            'loremaster': len(target), 'added': sorted(target - source),
            'supporting': audit.get('supportingQuests'), 'unresolvedOwnership': audit.get('unresolvedOwnershipQuests', []), 'dispositions': dispositions,
            'profiles': {name: {'leveling': len(before), 'loremaster': len(after),
                                'added': sorted(after - before), 'omitted': sorted(before - after),
                                'levelingQuests': sorted(before), 'loremasterQuests': sorted(after)}
                         for name, (before, after) in profiles.items()},
            'clientWalkthrough': 'unverified',
        }
    return zones


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--lua', default='lua5.1')
    args = parser.parse_args()
    print(json.dumps(report(args.lua), indent=2, sort_keys=True))
