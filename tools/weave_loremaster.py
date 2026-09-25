#!/usr/bin/env python3
"""Build Loremaster guides on top of the leveling route.

The leveling guide is the spine. Quests that exist only on the Wowhead Forever
zone page, or only in an older Loremaster file, are inserted next to the stop
that already visits their giver, or after the series quest they follow.
"""

from __future__ import annotations

import json
import re
import urllib.request
from concurrent.futures import ThreadPoolExecutor
from dataclasses import dataclass, field
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CACHE = Path("/tmp/wh-cache")
USER_AGENT = "ForeverGuideMate/loremaster"

ZONE_UIMAP = {
    "Dun Morogh": 1426,
    "Badlands": 1418,
    "Blasted Lands": 1419,
    "Swamp of Sorrows": 1435,
    "Duskwood": 1431,
    "Wetlands": 1437,
    "Elwynn Forest": 1429,
    "Durotar": 1411,
    "Dustwallow Marsh": 1445,
    "Azshara": 1447,
    "The Barrens": 1413,
    "Barrens": 1413,
    "Western Plaguelands": 1422,
    "Stranglethorn Vale": 1434,
    "Loch Modan": 1432,
    "Westfall": 1436,
    "Deadwind Pass": 1430,
    "Redridge Mountains": 1433,
    "Arathi Highlands": 1417,
    "Burning Steppes": 1428,
    "The Hinterlands": 1425,
    "Hinterlands": 1425,
    "Searing Gorge": 1427,
    "Tirisfal Glades": 1420,
    "Silverpine Forest": 1421,
    "Eastern Plaguelands": 1423,
    "Teldrassil": 1438,
    "Darkshore": 1439,
    "Mulgore": 1412,
    "Feralas": 1444,
    "Felwood": 1448,
    "Thousand Needles": 1441,
    "Desolace": 1443,
    "Stonetalon Mountains": 1442,
    "Tanaris": 1446,
    "Un'Goro Crater": 1449,
    "Moonglade": 1450,
    "Winterspring": 1452,
    "Silithus": 1451,
    "Stormwind City": 1453,
    "Ironforge": 1455,
    "Orgrimmar": 1454,
    "Thunder Bluff": 1456,
    "Darnassus": 1457,
    "Undercity": 1458,
    "Alterac Mountains": 1416,
    "Hillsbrad Foothills": 1424,
    "Ashenvale": 1440,
    "Wailing Caverns": None,
    "Ragefire Chasm": None,
    "The Deadmines": None,
    "Deadmines": None,
    "Shadowfang Keep": None,
    "Blackfathom Deeps": None,
    "Gnomeregan": None,
    "The Stockade": None,
    "Razorfen Kraul": None,
    "Razorfen Downs": None,
    "Scarlet Monastery": None,
    "Uldaman": None,
    "Zul'Farrak": None,
    "Maraudon": None,
    "Sunken Temple": None,
    "Blackrock Depths": None,
    "Blackrock Mountain": None,
    "Hall of Thanes": None,
    "Ruins of Lordaeron": None,
}

CLASS_BITS = {
    1: 1,
    2: 2,
    4: 3,
    8: 4,
    16: 5,
    32: 6,
    64: 7,
    128: 8,
    256: 9,
    1024: 11,
}

# Quests the shipped guides already decided are not part of finishing the zone.
# Dungeon quests are added from the dungeon guides at runtime.
INTENTIONAL_OMISSIONS = {
    787, 5843, 807, 810, 814, 820, 5722, 5723,
    774, 5844, 99196,
    5842, 8734, 934,
    # Wailing Caverns shard turn-ins. They stay with the dungeon guide.
    3369, 3370, 914, 1489, 1491,
}

DUNGEON_WORDS = (
    "deadmines",
    "wailing caverns",
    "ragefire",
    "shadowfang",
    "blackfathom",
    "gnomeregan",
    "stockade",
    "razorfen",
    "scarlet monastery",
    "uldaman",
    "zul'farrak",
    "maraudon",
    "sunken temple",
    "blackrock",
    "hall of thanes",
    "ruins of lordaeron",
)


@dataclass
class Goal:
    raw: str
    id: str
    kind: str
    priority: int | float
    quest_id: int | None
    text: str
    labels: list[str]
    depends: list[str]
    origin: str
    faction: str | None = None
    source_file: str = ""


@dataclass
class BuiltQuest:
    quest_id: int
    name: str
    steps: list[Goal] = field(default_factory=list)
    recommended: int = 1
    giver: str = ""
    previous_id: int | None = None
    item_start: bool = False


def fetch(url: str) -> str:
    CACHE.mkdir(parents=True, exist_ok=True)
    key = re.sub(r"[^A-Za-z0-9._-]+", "_", url)[:180]
    path = CACHE / key
    if path.exists() and path.stat().st_size > 0:
        return path.read_text(encoding="utf-8", errors="replace")
    request = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    html = urllib.request.urlopen(request, timeout=40).read().decode("utf-8", "replace")
    path.write_text(html, encoding="utf-8")
    return html


def brace_end(text: str, open_at: int) -> int:
    depth = 0
    i = open_at
    in_string = False
    quote = ""
    while i < len(text):
        ch = text[i]
        if in_string:
            if ch == "\\":
                i += 2
                continue
            if ch == quote:
                in_string = False
        else:
            if ch in ("'", '"'):
                in_string = True
                quote = ch
            elif ch == "{":
                depth += 1
            elif ch == "}":
                depth -= 1
                if depth == 0:
                    return i
        i += 1
    raise ValueError("unbalanced braces")


def split_top_tables(body: str) -> list[str]:
    tables = []
    i = 0
    while True:
        start = body.find("{", i)
        if start < 0:
            break
        end = brace_end(body, start)
        tables.append(body[start : end + 1])
        i = end + 1
    return tables


def parse_goals(text: str, origin: str, source_file: str, faction: str | None) -> list[Goal]:
    marker = text.find("goals = {")
    if marker < 0:
        return []
    open_at = text.find("{", marker)
    end = brace_end(text, open_at)
    goals = []
    for raw in split_top_tables(text[open_at + 1 : end]):
        ident = re.search(r'\bid = "([^"]+)"', raw)
        kind = re.search(r'\bkind = "([^"]+)"', raw)
        priority = re.search(r"\bpriority = (\d+(?:\.\d+)?)", raw)
        quest = re.search(r"(?:QuestState|QuestObjective)\((\d+)", raw)
        step_text = re.search(r'\btext = "((?:\\.|[^"\\])*)"', raw)
        labels = re.findall(r',\s*"((?:\\.|[^"\\])*)"', raw)
        # Point label is the 4th string-ish arg; grab quoted labels on Point lines.
        point_labels = re.findall(
            r"Point\([^)]*?,\s*\"((?:\\.|[^\"\\])*)\"",
            raw,
        )
        depends = re.search(r"dependsOn = \{([^}]*)\}", raw)
        dep_ids = re.findall(r'"([^"]+)"', depends.group(1)) if depends else []
        goals.append(
            Goal(
                raw=raw,
                id=ident.group(1) if ident else f"step-{len(goals)}",
                kind=kind.group(1) if kind else "travel",
                priority=parse_priority(priority.group(1)) if priority else 0,
                quest_id=int(quest.group(1)) if quest else None,
                text=step_text.group(1) if step_text else "",
                labels=point_labels or labels[:1],
                depends=dep_ids,
                origin=origin,
                faction=faction,
                source_file=source_file,
            )
        )
    return goals


def guide_faction(text: str) -> str | None:
    header = text.split("goals = {", 1)[0]
    match = re.search(r'faction = "(Alliance|Horde)"', header)
    return match.group(1) if match else None


def map_entries(text: str) -> dict[str, int]:
    header = text.split("ns:RegisterGuide", 1)[0]
    return {key: int(value) for key, value in re.findall(r"\b([A-Z0-9_]+) = (\d+)", header)}


def lua_escape(value: str) -> str:
    return value.replace("\\", "\\\\").replace('"', '\\"')


def slug(value: str) -> str:
    value = value.lower()
    value = value.replace("'", "")
    value = re.sub(r"[^a-z0-9]+", "-", value).strip("-")
    return value[:48] or "step"


def rewrite_depends(raw: str, id_map: dict[str, str]) -> str:
    def repl(match: re.Match[str]) -> str:
        ids = []
        for dep in re.findall(r'"([^"]+)"', match.group(1)):
            mapped = id_map.get(dep, dep)
            if mapped not in ids:
                ids.append(mapped)
        inner = ", ".join(f'"{dep}"' for dep in ids)
        return "dependsOn = { " + inner + " }"

    return re.sub(r"dependsOn = \{([^}]*)\}", repl, raw)


def stamp_faction(raw: str, faction: str | None) -> str:
    if not faction or re.search(r'faction = "', raw):
        return raw
    line = '{ faction = "%s" },' % faction
    if re.search(r"conditions = \{\s*all = \{", raw):
        return re.sub(
            r"(conditions = \{\s*all = \{)",
            r"\1\n                    " + line,
            raw,
            count=1,
        )
    if "conditions = {" in raw:
        return raw
    return raw.replace(
        "text = ",
        "conditions = {\n                all = {\n                    "
        + line
        + "\n                },\n            },\n            text = ",
        1,
    )


def tidy_priority(value: int | float) -> int | float:
    if isinstance(value, float):
        value = round(value, 4)
        if value == int(value):
            return int(value)
    return value


def parse_priority(text: str) -> int | float:
    if "." not in text:
        return int(text)
    return tidy_priority(float(text))


def format_priority(priority: int | float) -> str:
    priority = tidy_priority(priority)
    return str(priority)


def set_priority(raw: str, priority: int | float) -> str:
    rendered = format_priority(priority)
    if re.search(r"\bpriority = \d+(?:\.\d+)?", raw):
        return re.sub(r"\bpriority = \d+(?:\.\d+)?", f"priority = {rendered}", raw, count=1)
    return raw.replace(
        "kind = ",
        f"priority = {rendered},\n            kind = ",
        1,
    )


def render_goals(goals: list[Goal], id_map: dict[str, str], stamp: str | None) -> str:
    chunks = []
    seen_priority = set()
    for index, goal in enumerate(goals, start=1):
        priority = index * 10
        while priority in seen_priority:
            priority += 1
        seen_priority.add(priority)
        raw = goal.raw
        if goal.origin == "leveling":
            raw = rewrite_depends(raw, id_map)
            if stamp:
                raw = stamp_faction(raw, stamp)
        raw = set_priority(raw, priority)
        chunks.append(raw)
    return ",\n        ".join(chunks)


def replace_goals(text: str, rendered: str) -> str:
    marker = text.find("goals = {")
    open_at = text.find("{", marker)
    end = brace_end(text, open_at)
    return text[: open_at + 1] + "\n        " + rendered + ",\n    " + text[end:]


def merge_maps(text: str, maps: dict[str, int]) -> str:
    existing = map_entries(text)
    missing = {key: value for key, value in maps.items() if key not in existing}
    if not missing:
        return text
    lines = "\n".join(f"    {key} = {value}," for key, value in missing.items())
    return text.replace("local MAP = {", "local MAP = {\n" + lines, 1)


def dungeon_quest_ids() -> set[int]:
    ids: set[int] = set()
    for path in (ROOT / "Guides/Dungeons").glob("*.lua"):
        ids.update(int(value) for value in re.findall(r"Quest(?:State|Objective)\((\d+)", path.read_text()))
    return ids


def load_leveling(paths: list[str], skip_ids: set[int] | None = None) -> tuple[list[Goal], dict[str, int], str | None]:
    skip_ids = skip_ids or set()
    goals: list[Goal] = []
    maps: dict[str, int] = {}
    factions = []
    seen_ids = set()
    seen_quests: set[int] = set()
    for relative in paths:
        text = (ROOT / relative).read_text(encoding="utf-8")
        faction = guide_faction(text)
        factions.append(faction)
        maps.update(map_entries(text))
        file_quests: set[int] = set()
        for goal in parse_goals(text, "leveling", relative, faction):
            if goal.quest_id and (goal.quest_id in seen_quests or goal.quest_id in skip_ids):
                continue
            if goal.id in seen_ids:
                goal.id = goal.id + "-" + slug(Path(relative).stem)[:12]
                goal.raw = re.sub(r'\bid = "[^"]+"', f'id = "{goal.id}"', goal.raw, count=1)
            seen_ids.add(goal.id)
            if goal.quest_id:
                file_quests.add(goal.quest_id)
            goals.append(goal)
        seen_quests.update(file_quests)
    faction = factions[0] if factions and all(item == factions[0] for item in factions) else None
    return goals, maps, faction


def phase_key(goal: Goal) -> tuple[int | None, str]:
    kind = "objective" if goal.kind == "objective" else goal.kind
    return goal.quest_id, kind


def take_phase(goals: list[Goal], index: int) -> tuple[list[Goal], int]:
    goal = goals[index]
    quest_id, kind = phase_key(goal)
    taken = [goal]
    index += 1
    if quest_id is None:
        return taken, index
    while index < len(goals):
        nxt = goals[index]
        if phase_key(nxt) != (quest_id, kind):
            break
        taken.append(nxt)
        index += 1
    return taken, index


def weave_spine(
    leveling: list[Goal],
    lore: list[Goal],
    levels: dict[int, int] | None = None,
) -> tuple[list[Goal], dict[str, str]]:
    lore_left: dict[tuple[int, str], list[Goal]] = {}
    lore_order: list[int] = []
    for goal in lore:
        if goal.quest_id is None:
            continue
        key = (goal.quest_id, "objective" if goal.kind == "objective" else goal.kind)
        lore_left.setdefault(key, []).append(goal)
        if goal.quest_id not in lore_order:
            lore_order.append(goal.quest_id)
    lore_quest_ids = {goal.quest_id for goal in lore if goal.quest_id}
    last_lore_step = {}
    for goal in lore:
        if goal.quest_id:
            last_lore_step[goal.quest_id] = goal.id
    used_lore_ids = set()
    consumed_kinds: set[tuple[int, str]] = set()
    kind_anchor: dict[tuple[int, str], str] = {}
    id_map: dict[str, str] = {}
    output: list[Goal] = []
    index = 0
    while index < len(leveling):
        phase, index = take_phase(leveling, index)
        quest_id = phase[0].quest_id
        kind = "objective" if phase[0].kind == "objective" else phase[0].kind
        if quest_id is None:
            continue
        if quest_id and (quest_id, kind) in consumed_kinds:
            for source in phase:
                id_map[source.id] = kind_anchor.get((quest_id, kind), source.id)
            continue
        replacements = lore_left.get((quest_id, kind), []) if quest_id else []
        if not replacements and quest_id in lore_quest_ids:
            for source in phase:
                id_map[source.id] = last_lore_step[quest_id]
            continue
        if replacements:
            consumed_kinds.add((quest_id, kind))
            kind_anchor[(quest_id, kind)] = replacements[-1].id
            lore_left[(quest_id, kind)] = []
            if len(replacements) == len(phase):
                for source, dest in zip(phase, replacements):
                    id_map[source.id] = dest.id
            else:
                for source in phase:
                    id_map[source.id] = replacements[-1].id
            for goal in replacements:
                used_lore_ids.add(goal.id)
                output.append(goal)
            continue
        for goal in phase:
            output.append(goal)
    # Objectives or turn-ins the leveling route collapsed into another phase.
    for goal in lore:
        if goal.quest_id is None or goal.id in used_lore_ids:
            continue
        if any(step.quest_id == goal.quest_id for step in output):
            insert_at = 0
            for pos, step in enumerate(output):
                if step.quest_id == goal.quest_id:
                    insert_at = pos + 1
            output.insert(insert_at, goal)
            used_lore_ids.add(goal.id)
    extras: list[list[Goal]] = []
    current: list[Goal] = []
    current_id = None
    for goal in lore:
        if goal.id in used_lore_ids or goal.quest_id is None:
            continue
        if goal.quest_id != current_id:
            if current:
                extras.append(current)
            current = [goal]
            current_id = goal.quest_id
        else:
            current.append(goal)
    if current:
        extras.append(current)
    for steps in extras:
        output = insert_quest(output, steps, levels)
        for goal in steps:
            used_lore_ids.add(goal.id)
    # Travel steps that exist only on the old Loremaster route stay at the
    # nearest shared label.
    for goal in lore:
        if goal.quest_id is None and goal.id not in {step.id for step in output}:
            output = insert_quest(output, [goal], levels)
    return output, id_map


def norm_name(value: str) -> str:
    value = value.lower()
    value = re.sub(r"\\'", "'", value)
    value = re.sub(r"[^a-z0-9]+", " ", value)
    return re.sub(r"\s+", " ", value).strip()


def giver_name(goal: Goal) -> str:
    match = re.search(r"\b(?:from|to) ([A-Z][^.]*)", goal.text)
    if match:
        return norm_name(match.group(1).split(" in ")[0].split(" if ")[0])
    if goal.labels:
        return norm_name(goal.labels[0])
    return ""


def recommended_level(summary: dict | None = None, meta: dict | None = None, html: str | None = None) -> int:
    """Wowhead's Level line, not Requires level.

    Level is the recommended level. Requires level is only when the quest can
    be picked up, which is often several levels earlier.
    """
    for source in (summary or {}, meta or {}):
        value = source.get("level")
        if isinstance(value, int) and value > 0:
            return value
        if isinstance(value, str) and value.isdigit() and int(value) > 0:
            return int(value)
    if html:
        match = re.search(r"\[li\]Level:\s*(\d+)", html) or re.search(r"Level:\s*(\d+)", html)
        if match:
            return int(match.group(1))
    for source in (summary or {}, meta or {}):
        value = source.get("reqlevel")
        if isinstance(value, int) and value > 0:
            return value
    return 1


def chapter_ceiling(path: str) -> int | None:
    """Highest level a leveling chapter is written for, from its file name."""
    match = re.search(r"(?:^|/)(\d+)-(\d+)-", path.replace("\\", "/"))
    if not match:
        return None
    return int(match.group(2))


def capped_level(level: int, ceiling: int | None) -> int:
    if ceiling is not None and level > ceiling:
        return ceiling
    return level


def route_levels(
    goals: list[Goal],
    levels: dict[int, int],
    ceiling: int | None = None,
) -> list[int | None]:
    carried = None
    result = []
    for goal in goals:
        if goal.quest_id is not None and goal.quest_id in levels:
            carried = capped_level(levels[goal.quest_id], ceiling)
        result.append(carried)
    return result


def insert_quest(
    output: list[Goal],
    steps: list[Goal],
    levels: dict[int, int] | None = None,
    ceiling: int | None = None,
) -> list[Goal]:
    if not steps:
        return output
    for dep in steps[0].depends:
        for pos, step in enumerate(output):
            if step.id == dep:
                return output[: pos + 1] + steps + output[pos + 1 :]
    recommended = None
    if levels and steps[0].quest_id is not None:
        recommended = levels.get(steps[0].quest_id)
    giver = giver_name(steps[0])
    route = route_levels(output, levels or {}, ceiling)

    def place_at(pos: int) -> list[Goal]:
        if steps[0].kind == "accept":
            while pos + 1 < len(output) and output[pos + 1].kind == "accept":
                pos += 1
        return output[: pos + 1] + steps + output[pos + 1 :]

    if giver:
        anchor = None
        for pos, step in enumerate(output):
            if giver not in norm_name(step.text):
                continue
            if recommended is not None:
                visit = route[pos]
                if visit is None or visit < recommended:
                    continue
            anchor = pos
            if step.kind == "accept":
                break
        if anchor is not None:
            return place_at(anchor)
    if recommended is not None and any(visit is not None for visit in route):
        for index, visit in enumerate(route):
            if visit is not None and visit >= recommended:
                return output[:index] + steps + output[index:]
        return output + steps
    return output + steps


def set_min_level(raw: str, level: int) -> str:
    if level <= 1:
        return raw
    if re.search(r"level = \{\s*min = \d+\s*\}", raw):
        return re.sub(
            r"level = \{\s*min = \d+\s*\}",
            "level = { min = %d }" % level,
            raw,
            count=1,
        )
    line = "{ level = { min = %d } }," % level
    if re.search(r"conditions = \{\s*all = \{", raw):
        return re.sub(
            r"(conditions = \{\s*all = \{)",
            r"\1\n                    " + line,
            raw,
            count=1,
        )
    return raw.replace(
        "text = ",
        "conditions = { level = { min = %d } },\n            text = " % level,
        1,
    )


def fit_priorities(goals: list[Goal], moved_ids: set[int]) -> None:
    index = 0
    while index < len(goals):
        if goals[index].quest_id not in moved_ids:
            index += 1
            continue
        start = index
        while index < len(goals) and goals[index].quest_id in moved_ids:
            index += 1
        end = index
        prev_priority = goals[start - 1].priority if start else 0
        need = end - start
        if end < len(goals):
            next_priority = goals[end].priority
        else:
            next_priority = prev_priority + need + 1
        if next_priority - prev_priority - 1 < need:
            shift = tidy_priority(need - (next_priority - prev_priority - 1))
            for goal in goals[end:]:
                goal.priority = tidy_priority(goal.priority + shift)
                goal.raw = set_priority(goal.raw, goal.priority)
            next_priority = tidy_priority(next_priority + shift)
        for offset, goal in enumerate(goals[start:end], start=1):
            goal.priority = tidy_priority(prev_priority + offset)
            goal.raw = set_priority(goal.raw, goal.priority)


def place_woven(
    goals: list[Goal],
    woven_ids: set[int],
    levels: dict[int, int],
    ceiling: int | None = None,
) -> list[Goal]:
    """Gate woven quests at their recommended level, and move the ones that sit too early.

    A leveling chapter's file name is the level that route is written for.
    Wowhead often rates a spine quest above that, and one such rating must
    not count as the route having reached a woven quest's recommended level.
    """
    for goal in goals:
        if goal.quest_id in woven_ids and goal.quest_id in levels:
            goal.raw = set_min_level(goal.raw, levels[goal.quest_id])
    early_ids = []
    seen = set()
    for index, goal in enumerate(goals):
        quest_id = goal.quest_id
        if quest_id not in woven_ids or quest_id in seen or quest_id not in levels:
            continue
        seen.add(quest_id)
        steps = [step for step in goals if step.quest_id == quest_id]
        if steps and steps[0].depends:
            continue
        recommended = levels[quest_id]
        # Quests inside the chapter were already woven. Repair only slides a
        # quest the chapter never reaches, so a second pass cannot reshuffle
        # the stops that are already in place.
        if ceiling is None or recommended <= ceiling:
            continue
        carried = None
        ready_at = len(goals)
        for pos, step in enumerate(goals):
            if step.quest_id and step.quest_id != quest_id and step.quest_id in levels:
                carried = capped_level(levels[step.quest_id], ceiling)
            if carried is not None and carried >= recommended:
                ready_at = pos
                break
        if index < ready_at:
            early_ids.append(quest_id)
    moved_ids = set()
    for quest_id in early_ids:
        steps = [step for step in goals if step.quest_id == quest_id]
        first = next(index for index, step in enumerate(goals) if step.quest_id == quest_id)
        remaining = [step for step in goals if step.quest_id != quest_id]
        placed = insert_quest(remaining, steps, levels, ceiling)
        new_at = next(index for index, step in enumerate(placed) if step.quest_id == quest_id)
        # Only slide a quest later. Re-inserting a block that is already at
        # its stop would reorder it against the other quests parked there.
        if new_at <= first:
            continue
        goals = placed
        moved_ids.add(quest_id)
    if not moved_ids:
        return goals
    fit_priorities(goals, moved_ids)
    return goals


def zone_quest_summaries(url: str) -> list[dict]:
    html = fetch(url)
    match = re.search(r"new Listview\(\{template: 'quest'.*?data:(\[.*?\])\}\)", html, re.S)
    if not match:
        raise RuntimeError(f"no quest list at {url}")
    return json.loads(match.group(1))


def parse_quest_page(quest_id: int) -> dict:
    html = fetch(f"https://www.wowhead.com/forever/quest={quest_id}")
    meta_match = re.search(rf"g_quests\[{quest_id}\], (\{{.*?\}});", html)
    meta = json.loads(meta_match.group(1)) if meta_match else {"id": quest_id, "name": f"Quest {quest_id}"}
    mapper_at = html.find("new Mapper(")
    mapper_end = html.find(',"zoneparent"', mapper_at) if mapper_at >= 0 else -1
    mapper = html[mapper_at:mapper_end] if mapper_end > mapper_at else ""
    zone_match = re.search(r'"zone":"((?:\\.|[^"\\])*)"', mapper)
    zone_name = bytes(zone_match.group(1), "utf-8").decode("unicode_escape") if zone_match else ""
    points = []
    for point, name, x, y in re.findall(
        r'"point":"([^"]+)","name":"((?:\\.|[^"\\])*)","coord":\[([\d.]+),([\d.]+)\]',
        mapper,
    ):
        points.append(
            {
                "point": point,
                "name": bytes(name, "utf-8").decode("unicode_escape"),
                "x": float(x) / 100.0,
                "y": float(y) / 100.0,
                "zone": zone_name,
            }
        )
    list_at = html.find('class="icon-list"')
    objective_names = []
    if list_at >= 0:
        table = html[list_at : html.find("</table>", list_at)]
        objective_names = re.findall(r"<a [^>]*>([^<]+)</a>", table)
    meta["objective_names"] = objective_names
    meta["elite"] = "Type: Elite" in html or "Type:\\/ Elite" in html
    if not meta.get("level"):
        level_match = re.search(r"\[li\]Level:\s*(\d+)", html) or re.search(r"Level:\s*(\d+)", html)
        if level_match:
            meta["level"] = int(level_match.group(1))
    if not meta.get("reqlevel"):
        requires_match = re.search(r"Requires level\s*(\d+)", html)
        if requires_match:
            meta["reqlevel"] = int(requires_match.group(1))
    series_ids = [int(value) for value in re.findall(r"/forever/quest=(\d+)/", html[html.find("series") :] if "series" in html else "")]
    # The series table lists earlier and later quests. Keep document order of
    # the first series table only.
    series_block = ""
    series_at = html.find('class="series"')
    if series_at >= 0:
        series_block = html[series_at : series_at + 2500]
    ordered = []
    for piece in re.findall(r"(?:quest=(\d+)/[^\"']*\"[^>]*>[^<]+)|(?:<b>([^<]+)</b>)", series_block):
        if piece[0]:
            ordered.append(int(piece[0]))
        else:
            ordered.append(quest_id)
    previous = None
    if quest_id in ordered:
        at = ordered.index(quest_id)
        if at > 0 and isinstance(ordered[at - 1], int):
            previous = ordered[at - 1]
    elif series_ids:
        previous = None
    start = re.search(
        r"quest-start\\?.{0,80}?(npc|item)=(\d+)\\?/[^\"\\]*\\?\">([^<\\]+)",
        html,
    )
    if not start:
        start = re.search(r"quest-start.{0,120}?(npc|item)=(\d+)/[^\"]+\">([^<]+)", html)
    return {
        "meta": meta,
        "points": points,
        "previous": previous,
        "start_kind": start.group(1) if start else "",
        "start_name": start.group(3) if start else "",
    }


def map_constant(zone_name: str, primary_key: str) -> str:
    ui = ZONE_UIMAP.get(zone_name)
    if ui is None and zone_name:
        return ""
    if not zone_name or ZONE_UIMAP.get(zone_name) == ZONE_UIMAP.get(primary_key.replace("_", " ").title()):
        pass
    return zone_name


def build_extra_quest(summary: dict, primary_zone: str, primary_key: str, previous_step: str | None) -> BuiltQuest | None:
    quest_id = int(summary["id"])
    name = summary.get("name") or f"Quest {quest_id}"
    if "unused" in name.lower() or name.strip() in {"Welcome!", "<UNUSED>"}:
        return None
    detail = parse_quest_page(quest_id)
    meta = detail["meta"]
    points = detail["points"]
    zones = {point["zone"] for point in points if point.get("zone")}
    if any(any(word in zone.lower() for word in DUNGEON_WORDS) for zone in zones):
        return None
    start_points = [point for point in points if point["point"] == "start"]
    end_points = [point for point in points if point["point"] == "end"]
    objective_points = [point for point in points if point["point"] not in {"start", "end"}]
    # Collapse duplicate creature pins to one objective in first-seen order.
    objectives = []
    seen_names = set()
    for point in objective_points:
        key = norm_name(point["name"])
        if key in seen_names:
            continue
        seen_names.add(key)
        objectives.append(point)
    start = start_points[0] if start_points else None
    end = end_points[0] if end_points else start
    named_objectives = meta.get("objective_names") or []
    if not named_objectives:
        named_objectives = []
        seen_names = set()
        for point in objective_points:
            key = norm_name(point["name"])
            if not key or key in seen_names:
                continue
            seen_names.add(key)
            named_objectives.append(point["name"])
    giver = detail["start_name"] or (start["name"] if start else "")
    item_start = detail["start_kind"] == "item" or (
        start is None
        and end is not None
        and not detail["previous"]
        and not named_objectives
        and not objective_points
    )
    if start is None and end is not None and not item_start:
        start = end
        if not giver:
            giver = end["name"]
    side = meta.get("side") or summary.get("side") or 0
    faction = {1: "Alliance", 2: "Horde"}.get(side)
    classes = []
    mask = meta.get("reqclass") or summary.get("reqclass") or 0
    for bit, class_id in CLASS_BITS.items():
        if mask & bit:
            classes.append(class_id)
    recommended = recommended_level(summary, meta)
    elite = bool(meta.get("elite"))
    handoff = (
        (not item_start)
        and not named_objectives
        and start
        and end
        and norm_name(start["name"]) != norm_name(end["name"])
    )
    quest_slug = slug(name)
    steps: list[Goal] = []

    def point_lua(point: dict, label: str, note: str) -> str:
        zone = point.get("zone") or primary_zone
        ui = ZONE_UIMAP.get(zone, ZONE_UIMAP.get(primary_zone))
        if ui is None:
            return ""
        key = primary_key if ui == ZONE_UIMAP.get(primary_zone) else "MAP_" + re.sub(r"[^A-Z0-9]", "", zone.upper())[:24]
        # The caller fills MAP constants. Use a placeholder token resolved later.
        return (
            f'Point(MAP.MAP_ID_{ui}, {point["x"]:.3f}, {point["y"]:.3f}, "{lua_escape(label)}",\n'
            f'                    "{lua_escape(note)}")'
        )

    def condition_lua() -> str:
        parts = []
        if faction:
            parts.append('{ faction = "%s" }' % faction)
        if classes:
            if len(classes) == 1:
                parts.append("{ class = %d }" % classes[0])
            else:
                parts.append("{ class = { %s } }" % ", ".join(str(class_id) for class_id in classes))
        if recommended > 1:
            parts.append("{ level = { min = %d } }" % recommended)
        if item_start:
            parts.append('{ quest = { id = %d, state = "activeOrCompleted" } }' % quest_id)
        if not parts:
            return ""
        inner = ",\n                    ".join(parts)
        return (
            "conditions = {\n                all = {\n                    "
            + inner
            + ",\n                },\n            },\n            "
        )

    def make(kind: str, ident: str, text: str, complete: str, point: dict | None, depends: list[str]) -> Goal:
        label = point["name"] if point else (giver or name)
        note = "Travel to %s." % label
        if point and point.get("zone") and point["zone"] not in {primary_zone, ""}:
            note = "Travel to %s in %s." % (label, point["zone"])
        route = ""
        client_pin = False
        client_note = " No saved spot for this, so the guide follows the pin in your quest log."
        if point and ZONE_UIMAP.get(point.get("zone") or primary_zone):
            route = point_lua(point, label, note)
        elif start and ZONE_UIMAP.get(start.get("zone") or primary_zone):
            route = point_lua(start, label, "Travel to %s." % (giver or label))
            text = text + client_note
            client_pin = True
        else:
            text = text + client_note
            client_pin = True
        dep = ""
        if depends:
            dep = "dependsOn = { %s },\n            " % ", ".join(f'"{dep_id}"' for dep_id in depends)
        elite_text = text
        if elite and kind == "objective" and "Bring a group" not in elite_text:
            elite_text += " This is an elite. Bring a group."
        raw = (
            "{\n"
            f'            id = "{ident}",\n'
            f'            kind = "{kind}",\n'
            f"            priority = 0,\n"
            f"            {condition_lua()}"
            + ("useClientPin = true,\n            " if client_pin else "")
            + f'text = "{lua_escape(elite_text)}",\n'
            + f"            {dep}"
            + f"complete = {complete},\n"
            + (
                f"            route = {{\n                {route},\n            }},\n"
                if route
                else "            route = {},\n"
            )
            + "        }"
        )
        return Goal(
            raw=raw,
            id=ident,
            kind=kind,
            priority=0,
            quest_id=quest_id,
            text=elite_text,
            labels=[label],
            depends=depends,
            origin="wowhead",
            faction=faction,
        )

    turnin_name = end["name"] if end else giver
    if item_start and not named_objectives:
        where = end or start
        steps.append(
            make(
                "turnin",
                f"turnin-{quest_id}-{quest_slug}",
                f"If {name} is in your log, turn it in to {turnin_name}.",
                f'QuestState({quest_id}, "completed")',
                where,
                [],
            )
        )
    elif handoff:
        depends = [previous_step] if previous_step else []
        steps.append(
            make(
                "turnin",
                f"turnin-{quest_id}-{quest_slug}",
                f"Accept {name} from {giver}, then turn it in to {turnin_name}.",
                f'QuestState({quest_id}, "completed")',
                end,
                depends,
            )
        )
    else:
        accept_id = f"accept-{quest_id}-{quest_slug}"
        depends = [previous_step] if previous_step else []
        if not item_start and (giver or start):
            steps.append(
                make(
                    "accept",
                    accept_id,
                    f"Accept {name} from {giver or (start['name'] if start else 'the quest giver')}.",
                    f'QuestState({quest_id}, "activeOrCompleted")',
                    start,
                    depends,
                )
            )
        creatures = [point for point in points if point["point"] == "sourcerequirement"]

        def pin_for(obj_name: str) -> dict | None:
            tokens = [token for token in norm_name(obj_name).split() if len(token) > 3]
            for creature in creatures:
                creature_name = norm_name(creature["name"])
                if any(token in creature_name for token in tokens):
                    return creature
            return creatures[0] if creatures else (start or end)

        obj_ids = []
        if not named_objectives:
            named_objectives = [name]
        for obj_index, obj_name in enumerate(named_objectives, start=1):
            obj_id = f"objective-{quest_id}-{quest_slug}-{obj_index}"
            obj_ids.append(obj_id)
            steps.append(
                make(
                    "objective",
                    obj_id,
                    f"{name}: {obj_name}.",
                    f'QuestObjective({quest_id}, {obj_index}, "{lua_escape(obj_name)}")',
                    pin_for(obj_name),
                    [accept_id] if (giver or start) and not item_start else depends,
                )
            )
        steps.append(
            make(
                "turnin",
                f"turnin-{quest_id}-{quest_slug}",
                f"Turn in {name} to {turnin_name}.",
                f'QuestState({quest_id}, "completed")',
                end or start,
                [obj_ids[-1]] if obj_ids else ([accept_id] if giver or start else depends),
            )
        )
    return BuiltQuest(
        quest_id=quest_id,
        name=name,
        steps=steps,
        recommended=recommended,
        giver=giver,
        previous_id=detail["previous"],
        item_start=item_start,
    )


def resolve_map_tokens(raw: str, maps_by_ui: dict[int, str]) -> str:
    def repl(match: re.Match[str]) -> str:
        ui = int(match.group(1))
        return maps_by_ui[ui]

    return re.sub(r"MAP_ID_(\d+)", repl, raw)


def new_guide_text(
    guide_id: str,
    title: str,
    faction: str | None,
    level_min: int,
    maps: dict[str, int],
    goals: list[Goal],
    sources: list[str],
    zone_url: str,
    omitted: list[str],
) -> str:
    comment = [
        f"-- {title} Loremaster route.",
        "-- The step order follows the leveling route. Quests that are on the",
        "-- Wowhead zone page and not on that route are woven in at the giver",
        "-- the route already visits, or after the series quest they follow.",
        f"-- Leveling route: {', '.join(sources)}",
        f"-- Quest list: {zone_url}",
        "-- Dungeon quests stay in the dungeon guides.",
        "-- Coordinates have not been validated in the Forever client.",
    ]
    if omitted:
        comment.append("-- Left out on purpose:")
        comment.extend(f"-- {line}" for line in omitted)
    map_lines = "\n".join(f"    {key} = {value}," for key, value in maps.items())
    faction_line = ""
    if faction:
        faction_line = f'\n            {{ faction = "{faction}" }},'
    rendered = render_goals(goals, {}, None)
    return f"""local _, ns = ...

{chr(10).join(comment)}

local MAP = {{
{map_lines}
}}

local function QuestState(questID, state)
    return {{ quest = {{ id = questID, state = state }} }}
end

local function QuestObjective(questID, index, text)
    return {{ questObjective = {{ id = questID, index = index, text = text }} }}
end

local function Point(mapID, x, y, label, offMapText)
    return {{
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
    }}
end

ns:RegisterGuide({{
    id = "{guide_id}",
    title = "{title}",
    category = "Loremaster Guides",
    revision = 1,
    conditions = {{
        all = {{{faction_line}
            {{ level = {{ min = {level_min} }} }},
        }},
    }},
    goals = {{
        {rendered},
    }},
}})
"""


def skill_entries(text: str) -> dict[str, int]:
    match = re.search(r"local SKILL = \{([^}]*)\}", text)
    if not match:
        return {}
    return {key: int(value) for key, value in re.findall(r"(\w+) = (\d+)", match.group(1))}


def ensure_skill(text: str, skills: dict[str, int]) -> str:
    if not skills or "SKILL." not in text:
        return text
    merged = dict(skills)
    merged.update(skill_entries(text))
    block = "local SKILL = {\n" + "\n".join(f"    {key} = {value}," for key, value in merged.items()) + "\n}\n\n"
    if "local SKILL = {" in text:
        return re.sub(r"local SKILL = \{[^}]*\}\n*", block, text, count=1)
    return text.replace("local function QuestState", block + "local function QuestState", 1)


def level_min(paths: list[str]) -> int:
    lowest = 60
    for relative in paths:
        match = re.search(r"(\d+)-", Path(relative).name)
        if match:
            lowest = min(lowest, int(match.group(1)))
    return lowest


def quest_ids(goals: list[Goal]) -> set[int]:
    return {goal.quest_id for goal in goals if goal.quest_id}


def build_zone(spec: dict, dungeons: set[int]) -> None:
    leveling, maps, file_faction = load_leveling(spec["leveling"], dungeons | INTENTIONAL_OMISSIONS)
    skills: dict[str, int] = {}
    for relative in spec["leveling"]:
        skills.update(skill_entries((ROOT / relative).read_text(encoding="utf-8")))
    lore_path = ROOT / spec["output"]
    lore_goals: list[Goal] = []
    if lore_path.exists() and spec.get("rewrite"):
        lore_text = lore_path.read_text(encoding="utf-8")
        lore_goals = parse_goals(lore_text, "lore", spec["output"], None)
        maps.update(map_entries(lore_text))
    summaries = zone_quest_summaries(spec["url"])
    levels = {int(item["id"]): recommended_level(item) for item in summaries}
    if lore_goals:
        output, id_map = weave_spine(leveling, lore_goals, levels)
    else:
        output, id_map = [goal for goal in leveling if goal.quest_id is not None], {}
    present = quest_ids(output)
    omitted = []
    extras: dict[int, BuiltQuest] = {}
    previous_turnin: dict[int, str] = {}
    for goal in output:
        if goal.quest_id and goal.kind == "turnin":
            previous_turnin[goal.quest_id] = goal.id
    # Fetch extras in series order so a follow-up can see its previous turn-in.
    pending = []
    for summary in summaries:
        quest_id = int(summary["id"])
        name = summary.get("name") or ""
        if quest_id in present or quest_id in dungeons or quest_id in INTENTIONAL_OMISSIONS:
            if quest_id in dungeons:
                omitted.append(f"{name} ({quest_id}) stays in the dungeon guides.")
            continue
        if "unused" in name.lower() or name.strip() in {"Welcome!", "<UNUSED>"}:
            omitted.append(f"{name} ({quest_id}) is unused or not offered.")
            continue
        pending.append(summary)
    # Stable order: recommended level, then id, so a chain's later half is built after.
    pending.sort(key=lambda item: (recommended_level(item), int(item["id"])))
    def warm(quest_id: int) -> None:
        try:
            fetch(f"https://www.wowhead.com/forever/quest={quest_id}")
        except Exception:
            return

    with ThreadPoolExecutor(max_workers=8) as pool:
        list(pool.map(warm, [int(item["id"]) for item in pending]))
    built_quests = []
    for summary in pending:
        try:
            built = build_extra_quest(summary, spec["zone"], spec["map_key"], None)
        except Exception as exc:  # noqa: BLE001 - keep the route when one page fails
            omitted.append(f"{summary.get('name')} ({summary.get('id')}) could not be read ({exc}).")
            continue
        if built is None:
            omitted.append(f"{summary.get('name')} ({summary.get('id')}) is a dungeon or unused quest.")
            continue
        if built.previous_id and built.previous_id in previous_turnin and built.steps and not built.steps[0].depends:
            built.steps[0].depends = [previous_turnin[built.previous_id]]
            built.steps[0].raw = rewrite_depends(
                built.steps[0].raw,
                {previous_turnin[built.previous_id]: previous_turnin[built.previous_id]},
            )
            if "dependsOn" not in built.steps[0].raw:
                built.steps[0].raw = built.steps[0].raw.replace(
                    "text = ",
                    'dependsOn = { "%s" },\n            text = ' % previous_turnin[built.previous_id],
                    1,
                )
        built_quests.append(built)
    guard = 0
    while built_quests and guard < 10000:
        guard += 1
        progress = False
        for built in list(built_quests):
            waiting = built.previous_id and any(other.quest_id == built.previous_id for other in built_quests)
            if waiting:
                continue
            if (
                built.previous_id
                and built.previous_id in previous_turnin
                and built.steps
                and not built.steps[0].depends
            ):
                dep = previous_turnin[built.previous_id]
                built.steps[0].depends = [dep]
                if "dependsOn" not in built.steps[0].raw:
                    built.steps[0].raw = built.steps[0].raw.replace(
                        "text = ",
                        'dependsOn = { "%s" },\n            text = ' % dep,
                        1,
                    )
            for step in built.steps:
                if step.kind == "turnin":
                    previous_turnin[built.quest_id] = step.id
            extras[built.quest_id] = built
            levels[built.quest_id] = built.recommended
            output = insert_quest(output, built.steps, levels)
            present.add(built.quest_id)
            built_quests.remove(built)
            progress = True
        if not progress:
            for built in built_quests:
                extras[built.quest_id] = built
                levels[built.quest_id] = built.recommended
                output = insert_quest(output, built.steps, levels)
            break
    maps_by_ui = {ui: key for key, ui in maps.items()}
    # Ensure every uiMap used by a woven step has a constant.
    for goal in output:
        for ui in re.findall(r"MAP_ID_(\d+)", goal.raw):
            ui_id = int(ui)
            if ui_id not in maps_by_ui:
                key = "ZONE_%d" % ui_id
                maps[key] = ui_id
                maps_by_ui[ui_id] = key
        goal.raw = resolve_map_tokens(goal.raw, maps_by_ui)
    stamp = None if spec.get("rewrite") else None
    if spec.get("stamp_faction"):
        stamp = spec["stamp_faction"]
    elif not lore_goals and not file_faction and spec.get("factions") == "mixed":
        stamp = None
    rendered_goals = []
    for goal in output:
        if goal.origin == "leveling" and spec.get("stamp_faction"):
            goal.raw = stamp_faction(goal.raw, spec["stamp_faction"])
        elif goal.origin == "leveling" and spec.get("factions") == "mixed" and goal.faction:
            goal.raw = stamp_faction(goal.raw, goal.faction)
        rendered_goals.append(goal)
    if lore_goals and spec.get("rewrite"):
        text = lore_path.read_text(encoding="utf-8")
        text = merge_maps(text, maps)
        if "follows the leveling route" not in text:
            text = text.replace(
                "\nlocal MAP",
                "\n-- Step order follows the leveling route. Zone quests that are not on\n"
                "-- that route are woven in at the same giver, or after their series quest.\n"
                "local MAP",
                1,
            )
        text = replace_goals(text, render_goals(rendered_goals, id_map, spec.get("stamp_faction")))
        text = ensure_skill(text, skills)
        lore_path.write_text(text, encoding="utf-8")
    else:
        faction = file_faction if spec.get("factions") != "mixed" else None
        if faction:
            other = "Horde" if faction == "Alliance" else "Alliance"
            has_other = any(
                re.search(r'faction = "%s"' % other, goal.raw) for goal in rendered_goals
            )
            if has_other:
                for goal in rendered_goals:
                    goal.raw = stamp_faction(goal.raw, faction)
                faction = None
        text = new_guide_text(
            spec["guide_id"],
            spec["title"],
            faction,
            level_min(spec["leveling"]),
            maps,
            rendered_goals,
            spec["leveling"],
            spec["url"],
            omitted,
        )
        text = ensure_skill(text, skills)
        lore_path.write_text(text, encoding="utf-8")
    print(
        f"{spec['title']}: {len(output)} steps, "
        f"+{len(extras)} woven, omitted {len(omitted)}"
    )


ZONES = [
    {
        "title": "Durotar",
        "output": "Guides/Loremaster/Durotar.lua",
        "guide_id": "leveling-durotar",
        "rewrite": True,
        "stamp_faction": "Horde",
        "zone": "Durotar",
        "map_key": "DUROTAR",
        "url": "https://www.wowhead.com/forever/quests/kalimdor/durotar",
        "leveling": ["Guides/Leveling/1-12-durotar.lua"],
    },
    {
        "title": "Mulgore",
        "output": "Guides/Loremaster/Mulgore.lua",
        "guide_id": "leveling-mulgore",
        "rewrite": True,
        "stamp_faction": "Horde",
        "zone": "Mulgore",
        "map_key": "MULGORE",
        "url": "https://www.wowhead.com/forever/quests/kalimdor/mulgore",
        "leveling": ["Guides/Leveling/1-12-mulgore.lua"],
    },
    {
        "title": "The Barrens",
        "output": "Guides/Loremaster/TheBarrens.lua",
        "guide_id": "leveling-the-barrens",
        "rewrite": True,
        "zone": "The Barrens",
        "map_key": "BARRENS",
        "url": "https://www.wowhead.com/forever/quests/kalimdor/the-barrens",
        "leveling": ["Guides/Leveling/12-20-barrens.lua"],
    },
    {
        "title": "Teldrassil",
        "output": "Guides/Loremaster/Teldrassil.lua",
        "guide_id": "leveling-teldrassil",
        "rewrite": True,
        "zone": "Teldrassil",
        "map_key": "TELDRASSIL",
        "url": "https://www.wowhead.com/forever/quests/kalimdor/teldrassil",
        "leveling": ["Guides/Leveling/1-12-teldrassil.lua"],
    },
    {
        "title": "Loch Modan",
        "output": "Guides/Loremaster/LochModan.lua",
        "guide_id": "leveling-loch-modan",
        "zone": "Loch Modan",
        "map_key": "LOCH_MODAN",
        "url": "https://www.wowhead.com/forever/quests/eastern-kingdoms/loch-modan",
        "leveling": ["Guides/Leveling/17-18-loch-modan.lua"],
    },
    {
        "title": "Westfall",
        "output": "Guides/Loremaster/Westfall.lua",
        "guide_id": "leveling-westfall",
        "zone": "Westfall",
        "map_key": "WESTFALL",
        "url": "https://www.wowhead.com/forever/quests/eastern-kingdoms/westfall",
        "leveling": ["Guides/Leveling/12-17-westfall.lua"],
    },
    {
        "title": "Dun Morogh",
        "output": "Guides/Loremaster/DunMorogh.lua",
        "guide_id": "leveling-dun-morogh",
        "zone": "Dun Morogh",
        "map_key": "DUN_MOROGH",
        "url": "https://www.wowhead.com/forever/quests/eastern-kingdoms/dun-morogh",
        "leveling": ["Guides/Leveling/1-12-dun-morogh.lua"],
    },
    {
        "title": "Duskwood",
        "output": "Guides/Loremaster/Duskwood.lua",
        "guide_id": "leveling-duskwood",
        "zone": "Duskwood",
        "map_key": "DUSKWOOD",
        "url": "https://www.wowhead.com/forever/quests/eastern-kingdoms/duskwood",
        "leveling": ["Guides/Leveling/28-29-duskwood.lua"],
    },
    {
        "title": "Redridge Mountains",
        "output": "Guides/Loremaster/RedridgeMountains.lua",
        "guide_id": "leveling-redridge-mountains",
        "zone": "Redridge Mountains",
        "map_key": "REDRIDGE",
        "url": "https://www.wowhead.com/forever/quests/eastern-kingdoms/redridge-mountains",
        "leveling": [
            "Guides/Leveling/18-20-redridge-mountains.lua",
            "Guides/Leveling/27-28-redridge-mountains.lua",
        ],
    },
    {
        "title": "Silverpine Forest",
        "output": "Guides/Loremaster/SilverpineForest.lua",
        "guide_id": "leveling-silverpine-forest",
        "zone": "Silverpine Forest",
        "map_key": "SILVERPINE",
        "url": "https://www.wowhead.com/forever/quests/eastern-kingdoms/silverpine-forest",
        "leveling": ["Guides/Leveling/12-20-silverpine-forest.lua"],
    },
    {
        "title": "Elwynn Forest",
        "output": "Guides/Loremaster/ElwynnForest.lua",
        "guide_id": "leveling-elwynn-forest",
        "zone": "Elwynn Forest",
        "map_key": "ELWYNN",
        "url": "https://www.wowhead.com/forever/quests/eastern-kingdoms/elwynn-forest",
        "leveling": ["Guides/Leveling/1-12-elwynn-forest.lua"],
    },
    {
        "title": "Ashenvale",
        "output": "Guides/Loremaster/Ashenvale.lua",
        "guide_id": "leveling-ashenvale",
        "factions": "mixed",
        "zone": "Ashenvale",
        "map_key": "ASHENVALE",
        "url": "https://www.wowhead.com/forever/quests/kalimdor/ashenvale",
        "leveling": [
            "Guides/Era/21-22-ashenvale.lua",
            "Guides/Era/24-24-ashenvale.lua",
            "Guides/Era/26-27-ashenvale.lua",
            "Guides/Era/29-30-ashenvale.lua",
        ],
    },
    {
        "title": "Darkshore",
        "output": "Guides/Loremaster/Darkshore.lua",
        "guide_id": "leveling-darkshore",
        "zone": "Darkshore",
        "map_key": "DARKSHORE",
        "url": "https://www.wowhead.com/forever/quests/kalimdor/darkshore",
        "leveling": [
            "Guides/Leveling/12-17-darkshore.lua",
            "Guides/Leveling/20-21-darkshore.lua",
            "Guides/Leveling/23-24-darkshore.lua",
        ],
    },
    {
        "title": "Stonetalon Mountains",
        "output": "Guides/Loremaster/StonetalonMountains.lua",
        "guide_id": "leveling-stonetalon-mountains",
        "factions": "mixed",
        "zone": "Stonetalon Mountains",
        "map_key": "STONETALON",
        "url": "https://www.wowhead.com/forever/quests/kalimdor/stonetalon-mountains",
        "leveling": [
            "Guides/Era/20-22-stonetalon-mountains.lua",
            "Guides/Era/22-23-stonetalon-mountains.lua",
            "Guides/Leveling/23-25-stonetalon-mountains.lua",
            "Guides/Era/27-27-stonetalon-mountains.lua",
        ],
    },
]


def load_level_catalog() -> dict[int, dict]:
    catalog: dict[int, dict] = {}
    for spec in ZONES:
        for summary in zone_quest_summaries(spec["url"]):
            catalog[int(summary["id"])] = summary
    return catalog


def repair_woven_levels() -> None:
    catalog = load_level_catalog()
    levels = {quest_id: recommended_level(summary) for quest_id, summary in catalog.items()}
    forever = {
        quest_id
        for quest_id, summary in catalog.items()
        if summary.get("firstseenpatch") == 16001
    }
    spine_by_lore = {
        spec["output"]: {
            quest_id
            for relative in spec["leveling"]
            for quest_id in quest_ids(parse_goals((ROOT / relative).read_text(encoding="utf-8"), "leveling", relative, None))
        }
        for spec in ZONES
    }
    files = sorted((ROOT / "Guides/Leveling").glob("*.lua")) + sorted((ROOT / "Guides/Loremaster").glob("*.lua"))
    for path in files:
        relative = str(path.relative_to(ROOT))
        text = path.read_text(encoding="utf-8")
        goals = parse_goals(text, "guide", relative, None)
        if not goals:
            continue
        present = quest_ids(goals)
        spine = spine_by_lore.get(relative, set())
        if relative.startswith("Guides/Loremaster/"):
            woven = {quest_id for quest_id in present if quest_id in forever or quest_id not in spine}
        else:
            woven = {quest_id for quest_id in present if quest_id in forever}
        if not woven:
            continue
        for quest_id in sorted(woven - set(levels)):
            try:
                detail = parse_quest_page(quest_id)
            except Exception:
                continue
            levels[quest_id] = recommended_level(None, detail["meta"])
        original_raw = {goal.id: goal.raw for goal in goals}
        original_at = {goal.id: index for index, goal in enumerate(goals)}
        updated = place_woven(goals, woven, levels, chapter_ceiling(relative))
        changed_ids = [
            goal.id
            for index, goal in enumerate(updated)
            if goal.raw != original_raw.get(goal.id) or index != original_at.get(goal.id)
        ]
        if not changed_ids:
            continue
        changes = []
        for goal in updated:
            if goal.id not in changed_ids or goal.quest_id not in woven:
                continue
            name = catalog.get(goal.quest_id, {}).get("name", goal.quest_id)
            if name not in changes:
                changes.append(str(name))
        rendered = ",\n        ".join(goal.raw for goal in updated)
        path.write_text(replace_goals(text, rendered), encoding="utf-8")
        print(f"{relative}: {', '.join(changes)}")


def main() -> None:
    import sys

    if "--repair" in sys.argv:
        repair_woven_levels()
        return
    chosen = set(sys.argv[1:])
    dungeons = dungeon_quest_ids()
    for spec in ZONES:
        if chosen and spec["title"] not in chosen and spec["output"] not in chosen:
            continue
        build_zone(spec, dungeons)


if __name__ == "__main__":
    main()
