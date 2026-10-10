#!/usr/bin/env python3
"""Import classic leveling guide dumps into Forever GuideMate Lua chapters.

Spine source: external classic leveling dump (Guides-Classic/Leveling).
Omits hearth trash, ding/grind, trainers, vendors, flight learning, and banks.
Forever weaves are applied in a later pass (port_forever_weaves / era-forever-weave).
"""

from __future__ import annotations

import argparse
import re
import sys
from dataclasses import dataclass, field
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DEFAULT_CLASSIC_DUMP = Path.home() / "Downloads/classic-leveling-dump/Guides-Classic/Leveling"

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
    "Stonetalon Mountain": 1442,
    "Tanaris": 1446,
    "Un'Goro Crater": 1449,
    "Moonglade": 1450,
    "Winterspring": 1452,
    "Silithus": 1451,
    "Stormwind City": 1453,
    "Stormwind": 1453,
    "Ironforge": 1455,
    "Orgrimmar": 1454,
    "Thunder Bluff": 1456,
    "Darnassus": 1457,
    "Undercity": 1458,
    "Alterac Mountains": 1416,
    "Hillsbrad Foothills": 1424,
    "Ashenvale": 1440,
    "Northshire Valley": 1429,
    "Coldridge Valley": 1426,
    "Shadowglen": 1438,
    "Valley of Trials": 1411,
    "Red Cloud Mesa": 1412,
    "Deathknell": 1420,
    "Camp Narache": 1412,
    "Sen'jin Village": 1411,
    "Razor Hill": 1411,
    "Bloodhoof Village": 1412,
    "Brill": 1420,
    "The Sepulcher": 1421,
    "Crossroads": 1413,
    "Ratchet": 1413,
}

RACE_IDS = {
    "human": 1,
    "orc": 2,
    "dwarf": 3,
    "nightelf": 4,
    "night elf": 4,
    "scourge": 5,
    "undead": 5,
    "tauren": 6,
    "gnome": 7,
    "troll": 8,
    "skyborne": None,  # resolved by faction below
}

CLASS_IDS = {
    "warrior": 1,
    "paladin": 2,
    "hunter": 3,
    "rogue": 4,
    "priest": 5,
    "shaman": 7,
    "mage": 8,
    "warlock": 9,
    "druid": 11,
}

SKIP_TITLE_SUBSTR = (
    "season of discovery",
    "ahn'qiraj",
    "cenarion",
    "scepter",
    "class quests",
    "startup guide",
    "hidden guides",
    "scourge invasion",
    "trial",
)

OMIT_LINE = re.compile(
    r"(?i)^("
    r"trash\b|ding\b|train\b|trainer\b|vendor\b|sell\b|buy\b|fpath\b|home\b|"
    r"bank\b|learn\b|money\b|collect\s+money|_destroy|_note|click here to continue|"
    r"kill enemies|grind\b|description\b|hideif\b|label\b|stickystart\b|stickystop\b|"
    r"defaultfor\b|hardcore\b|image=|next=|condition_|linked|modeldisplay|"
    r"confirm\b|watch\b|gain\b|reach\b|follow\b|path\b|mapmarker\b"
    r")"
)

ACTION_ACCEPT = re.compile(
    r"^accept\s+(.+?)##(\d+)\b", re.I
)
ACTION_TURNIN = re.compile(
    r"^turnin(?:any)?\s+(.+?)##(\d+)\b", re.I
)
ACTION_KILL = re.compile(
    r"^kill\s+(?:(\d+)\s+)?(.+?)##(\d+)\b", re.I
)
ACTION_COLLECT = re.compile(
    r"^collect\s+(?:(\d+)\s+)?(.+?)##(\d+)\b", re.I
)
ACTION_CLICK = re.compile(
    r"^click\s+(.+?)##(\d+)\b", re.I
)
ACTION_USE = re.compile(
    r"^use\s+(.+?)##(\d+)\b", re.I
)
ACTION_TALK = re.compile(
    r"^talk\s+(.+?)##(\d+)\b", re.I
)
GOTO_RE = re.compile(
    r"\|goto\s+([^|]+?)\s+(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)", re.I
)
ONLY_RE = re.compile(r"\|only if\s+(.+)$", re.I)
Q_RE = re.compile(r"\|q\s+(\d+)(?:/(\d+))?", re.I)
FUTURE_RE = re.compile(r"\|future\b", re.I)


@dataclass
class ParsedGoal:
    kind: str
    quest_id: int | None
    name: str
    text: str
    map_id: int | None = None
    x: float | None = None
    y: float | None = None
    npc: str = ""
    objective_index: int | None = None
    count: int | None = None
    classes: list[int] = field(default_factory=list)
    races: list[int] = field(default_factory=list)
    faction: str | None = None
    level_min: int | None = None
    instant: bool = False
    source_step: int = 0


@dataclass
class ParsedGuide:
    title: str
    faction: str
    level_min: int
    slug: str
    starter: bool
    goals: list[ParsedGoal] = field(default_factory=list)


def slugify(title: str) -> str:
    name = title.split("\\")[-1]
    name = re.sub(r"\s*\([^)]*\)\s*$", "", name).strip()
    name = name.lower()
    name = name.replace("&", "and").replace("'", "")
    name = re.sub(r"[^a-z0-9]+", "-", name).strip("-")
    return name


def level_from_title(title: str) -> int:
    m = re.search(r"\((\d+)\s*-\s*\d+\)", title)
    return int(m.group(1)) if m else 1


def is_starter(title: str) -> bool:
    return "starter" in title.lower()


def skip_title(title: str) -> bool:
    low = title.lower()
    return any(part in low for part in SKIP_TITLE_SUBSTR)


def zone_map_id(zone: str) -> int | None:
    zone = zone.strip()
    zone = re.sub(r"/\d+$", "", zone).strip()
    if zone in ZONE_UIMAP:
        return ZONE_UIMAP[zone]
    for key, value in ZONE_UIMAP.items():
        if zone.lower() == key.lower():
            return value
    return None


def parse_only(expr: str, faction: str) -> tuple[list[int], list[int]]:
    negative = re.fullmatch(r"\s*not\s+(\w+)\s*", expr, re.I)
    if negative and negative.group(1).lower() in CLASS_IDS:
        excluded = CLASS_IDS[negative.group(1).lower()]
        return sorted(value for value in CLASS_IDS.values() if value != excluded), []
    classes: list[int] = []
    races: list[int] = []
    tokens = re.split(r"\s+or\s+|,|/|\s+and\s+", expr, flags=re.I)
    for raw in tokens:
        token = raw.strip().lower()
        token = re.sub(r"[^a-z ]", "", token).strip()
        for race, race_id in RACE_IDS.items():
            if token.startswith(race + " ") and race_id is not None:
                races.append(race_id)
        if not token or token in ("not", "completedq", "haveq", "rep", "trained"):
            continue
        if token in CLASS_IDS:
            classes.append(CLASS_IDS[token])
        elif token in RACE_IDS:
            rid = RACE_IDS[token]
            if rid is None:
                races.append(95 if faction == "Alliance" else 96)
            else:
                races.append(rid)
        elif token.endswith("warlock"):
            classes.append(9)
        elif token.endswith("warrior"):
            classes.append(1)
        elif token.endswith("hunter"):
            classes.append(3)
        elif token.endswith("priest"):
            classes.append(5)
        elif token.endswith("mage"):
            classes.append(8)
        elif token.endswith("rogue"):
            classes.append(4)
        elif token.endswith("druid"):
            classes.append(11)
        elif token.endswith("shaman"):
            classes.append(7)
        elif token.endswith("paladin"):
            classes.append(2)
    return sorted(set(classes)), sorted(set(races))


def parse_goto(blob: str) -> tuple[int | None, float | None, float | None]:
    m = GOTO_RE.search(blob)
    if not m:
        return None, None, None
    map_id = zone_map_id(m.group(1))
    x = float(m.group(2)) / 100.0
    y = float(m.group(3)) / 100.0
    return map_id, x, y


def clean_name(name: str) -> str:
    name = re.sub(r"\{[^}]+\}", "", name)
    name = re.sub(r"\+\s*$", "", name).strip()
    return re.sub(r"\s+", " ", name)


def should_omit_step(body: str) -> bool:
    lines = [ln.strip() for ln in body.splitlines() if ln.strip() and not ln.strip().lower().startswith("label ")]
    if not lines:
        return True
    joined = "\n".join(lines)
    if re.search(r"(?i)hearthstone|set your hearth|bind your hearth", joined):
        return True
    if re.search(r"(?i)^ding\b", joined, re.M):
        return True
    if re.search(r"(?i)kill enemies", joined) and "ding" in joined.lower():
        return True
    # Pure trainer / vendor / fpath steps
    actions = []
    for line in lines:
        if line.startswith("|") or line.startswith("_"):
            continue
        actions.append(line)
    if not actions:
        return True
    first = actions[0]
    if OMIT_LINE.match(first):
        # keep if the same step also accepts/turns in
        if not re.search(r"(?i)^(accept|turnin)\b", joined, re.M):
            return True
    if re.search(r"(?i)click here to continue\s*\|confirm", joined):
        if not re.search(r"(?i)^(accept|turnin|kill|collect)\b", joined, re.M):
            return True
    return False


def parse_step(body: str, faction: str, level_min: int) -> list[ParsedGoal]:
    if should_omit_step(body):
        return []
    goals: list[ParsedGoal] = []
    step_map_id, step_x, step_y = parse_goto(body)
    classes: list[int] = []
    races: list[int] = []
    for line in body.splitlines():
        m = ONLY_RE.match(line.strip())
        if not m:
            continue
        c, r = parse_only(m.group(1), faction)
        classes.extend(c)
        races.extend(r)
    classes = sorted(set(classes))
    races = sorted(set(races))
    step_classes, step_races = classes, races

    npc = ""
    talk_m = re.search(ACTION_TALK.pattern, body, re.I | re.M)
    if talk_m:
        npc = clean_name(talk_m.group(1))

    for line in body.splitlines():
        s = line.strip()
        if not s or s.startswith("|") or s.startswith("_") or s.startswith("tip"):
            continue
        classes, races = step_classes, step_races
        map_id, x, y = parse_goto(s)
        if map_id is None:
            map_id, x, y = step_map_id, step_x, step_y
        restriction = ONLY_RE.search(s)
        if restriction:
            local_classes, local_races = parse_only(restriction.group(1), faction)
            classes = sorted(set(step_classes) & set(local_classes)) if step_classes and local_classes else (local_classes or step_classes)
            races = sorted(set(step_races) & set(local_races)) if step_races and local_races else (local_races or step_races)
        am = ACTION_ACCEPT.match(s)
        if am:
            qid = int(am.group(2))
            name = clean_name(am.group(1))
            instant = bool(re.search(r"\|instant\b", s, re.I) or re.search(r"\|instant\b", body, re.I))
            goals.append(
                ParsedGoal(
                    kind="accept",
                    quest_id=qid,
                    name=name,
                    text=(
                        f"Accept {name} (instant)."
                        if instant
                        else f"Accept {name}" + (f" from {npc}." if npc else ".")
                    ),
                    map_id=map_id,
                    x=x,
                    y=y,
                    npc=npc,
                    classes=classes,
                    races=races,
                    faction=faction,
                    level_min=level_min,
                    instant=instant,
                )
            )
            continue
        tam = re.match(r"^turninany\s+(.+?)##(\d+)((?:,\d+)*)", s, re.I)
        if tam:
            name = clean_name(tam.group(1))
            quest_ids = [int(tam.group(2))]
            if tam.group(3):
                quest_ids.extend(int(part) for part in tam.group(3).split(",") if part)
            for qid in quest_ids:
                goals.append(
                    ParsedGoal(
                        kind="turnin",
                        quest_id=qid,
                        name=name,
                        text=f"Turn in {name}" + (f" to {npc}." if npc else "."),
                        map_id=map_id,
                        x=x,
                        y=y,
                        npc=npc,
                        classes=classes,
                        races=races,
                        faction=faction,
                        level_min=level_min,
                    )
                )
            continue
        tm = ACTION_TURNIN.match(s)
        if tm:
            qid = int(tm.group(2))
            name = clean_name(tm.group(1))
            goals.append(
                ParsedGoal(
                    kind="turnin",
                    quest_id=qid,
                    name=name,
                    text=f"Turn in {name}" + (f" to {npc}." if npc else "."),
                    map_id=map_id,
                    x=x,
                    y=y,
                    npc=npc,
                    classes=classes,
                    races=races,
                    faction=faction,
                    level_min=level_min,
                )
            )
            continue
        km = ACTION_KILL.match(s)
        if km:
            q = Q_RE.search(s)
            if not q or not q.group(2):
                continue
            qid = int(q.group(1))
            obj = int(q.group(2)) if q.group(2) else 1
            count = int(km.group(1)) if km.group(1) else None
            mob = clean_name(km.group(2))
            text = f"Kill {count} {mob}." if count else f"Kill {mob}."
            goals.append(
                ParsedGoal(
                    kind="objective",
                    quest_id=qid,
                    name=mob,
                    text=text,
                    map_id=map_id,
                    x=x,
                    y=y,
                    objective_index=obj,
                    count=count,
                    classes=classes,
                    races=races,
                    faction=faction,
                    level_min=level_min,
                )
            )
            continue
        cm = ACTION_COLLECT.match(s)
        if cm:
            q = Q_RE.search(s)
            if not q or not q.group(2):
                continue
            qid = int(q.group(1))
            obj = int(q.group(2)) if q.group(2) else 1
            count = int(cm.group(1)) if cm.group(1) else 1
            item = clean_name(cm.group(2))
            goals.append(
                ParsedGoal(
                    kind="objective",
                    quest_id=qid,
                    name=item,
                    text=f"Collect {count} {item}.",
                    map_id=map_id,
                    x=x,
                    y=y,
                    objective_index=obj,
                    count=count,
                    classes=classes,
                    races=races,
                    faction=faction,
                    level_min=level_min,
                )
            )
            continue
        um = ACTION_USE.match(s)
        if um:
            q = Q_RE.search(s)
            if not q or not q.group(2):
                continue
            qid = int(q.group(1))
            obj = int(q.group(2)) if q.group(2) else 1
            item = clean_name(um.group(1))
            goals.append(
                ParsedGoal(
                    kind="objective",
                    quest_id=qid,
                    name=item,
                    text=f"Use {item}.",
                    map_id=map_id,
                    x=x,
                    y=y,
                    objective_index=obj,
                    classes=classes,
                    races=races,
                    faction=faction,
                    level_min=level_min,
                )
            )
            continue
        cl = ACTION_CLICK.match(s)
        if cl:
            q = Q_RE.search(s)
            if not q or not q.group(2):
                continue
            qid = int(q.group(1))
            obj = int(q.group(2)) if q.group(2) else 1
            obj_name = clean_name(cl.group(1))
            goals.append(
                ParsedGoal(
                    kind="objective",
                    quest_id=qid,
                    name=obj_name,
                    text=f"Click {obj_name}.",
                    map_id=map_id,
                    x=x,
                    y=y,
                    objective_index=obj,
                    classes=classes,
                    races=races,
                    faction=faction,
                    level_min=level_min,
                )
            )
            continue
    return goals


def extract_guides(path: Path, faction: str) -> list[ParsedGuide]:
    text = path.read_text(encoding="utf-8", errors="replace")
    # Match GuideAddon:RegisterGuide("...", {..}, [[...]]) dumps without naming a vendor.
    pattern = re.compile(
        r'\w+:RegisterGuide\("([^"]+)",\s*\{(.*?)\},\s*\[\[(.*?)\]\]',
        re.S,
    )
    guides: list[ParsedGuide] = []
    for match in pattern.finditer(text):
        title = match.group(1)
        if skip_title(title):
            continue
        if not title.startswith("Leveling Guides\\"):
            continue
        body = match.group(3)
        level_min = level_from_title(title)
        starter = is_starter(title)
        slug = slugify(title)
        # Stable starter slugs matching existing STARTER_GUIDE_IDS.
        low = title.lower()
        if "orc" in low and "troll" in low:
            slug = "durotar"
        elif "tauren starter" in low:
            slug = "mulgore"
        elif "undead starter" in low:
            slug = "tirisfal-glades"
        elif "human starter" in low:
            slug = "elwynn-forest"
        elif "dwarf" in low and "gnome" in low:
            slug = "dun-morogh"
        elif "night elf starter" in low or "nightelf starter" in low:
            slug = "teldrassil"

        goals: list[ParsedGoal] = []
        steps = re.split(r"(?m)^step\s*$", body)
        for source_step, step_body in enumerate(steps[1:], 1):
            parsed = parse_step(step_body, faction, level_min)
            for goal in parsed:
                goal.source_step = source_step
            goals.extend(parsed)
        # Deduplicate identical accept/turnin at same quest+kind+coords
        seen: set[tuple] = set()
        unique: list[ParsedGoal] = []
        for goal in goals:
            key = (
                goal.kind,
                goal.quest_id,
                goal.objective_index,
                goal.map_id,
                round(goal.x or 0, 3),
                round(goal.y or 0, 3),
                tuple(goal.classes),
                tuple(goal.races),
            )
            if key in seen:
                continue
            seen.add(key)
            unique.append(goal)
        guides.append(
            ParsedGuide(
                title=title.split("\\")[-1],
                faction=faction,
                level_min=level_min,
                slug=slug,
                starter=starter,
                goals=unique,
            )
        )
    return guides


def goal_id(goal: ParsedGoal, used: set[str]) -> str:
    base = f"{goal.kind}-{goal.quest_id}"
    if goal.kind == "objective" and goal.objective_index:
        base = f"objective-{goal.quest_id}-{goal.objective_index}"
    slug = re.sub(r"[^a-z0-9]+", "-", goal.name.lower()).strip("-")[:40]
    if slug:
        base = f"{base}-{slug}"
    candidate = base
    n = 2
    while candidate in used:
        candidate = f"{base}-{n}"
        n += 1
    used.add(candidate)
    return candidate


def off_map_text(label: str) -> str:
    """Travel copy for off-map pins. Avoid 'Travel to Return to …'."""
    clean = (label or "").rstrip(".")
    match = re.match(r"(?i)^return(?:ing)? to\s+(.+)$", clean)
    if match:
        return f"Travel to {match.group(1)}."
    return f"Travel to {clean}."


def lua_string(value: str) -> str:
    return value.replace("\\", "\\\\").replace('"', '\\"')


def emit_conditions(goal: ParsedGoal, guide_faction: str, guide_level: int) -> str:
    parts = [f'{{ level = {{ min = {goal.level_min or guide_level} }} }}']
    if goal.faction or guide_faction:
        parts.append(f'{{ faction = "{goal.faction or guide_faction}" }}')
    if len(goal.classes) == 1:
        parts.append(f"{{ class = {goal.classes[0]} }}")
    elif goal.classes:
        inner = ", ".join(str(c) for c in goal.classes)
        parts.append(f"{{ any = {{ {', '.join(f'{{ class = {c} }}' for c in goal.classes)} }} }}")
    if len(goal.races) == 1:
        parts.append(f"{{ race = {goal.races[0]} }}")
    elif goal.races:
        parts.append(
            "{ any = { "
            + ", ".join(f"{{ race = {r} }}" for r in goal.races)
            + " } }"
        )
    if len(parts) == 1:
        return parts[0]
    return "{ all = {\n                " + ",\n                ".join(parts) + ",\n            } }"


def emit_guide(guide: ParsedGuide, *, era: bool = False) -> str:
    if guide.starter:
        guide_id = f"leveling-era-{guide.slug}"
    else:
        guide_id = f"leveling-era-{guide.faction.lower()}-{guide.slug}"
    display = re.sub(r"\s*\([^)]*\)\s*$", "", guide.title).strip()
    if era and not display.endswith("(Era)"):
        display = f"{display} (Era)"
    # Part numbering for repeat zone visits left to filename slug uniqueness.
    maps: dict[str, int] = {}
    for goal in guide.goals:
        if goal.map_id:
            # reverse lookup for MAP constants
            for name, mid in ZONE_UIMAP.items():
                if mid == goal.map_id:
                    key = re.sub(r"[^A-Z0-9]+", "_", name.upper()).strip("_")
                    maps[key] = mid
                    break

    used_ids: set[str] = set()
    goals_lua: list[str] = []
    priority = 10
    accept_by_quest: dict[int, str] = {}
    objectives_by_quest: dict[int, list[str]] = {}

    for goal in guide.goals:
        gid = goal_id(goal, used_ids)
        depends_ids: list[str] = []
        if goal.quest_id and goal.kind in ("objective", "gossip", "confirm"):
            accept_id = accept_by_quest.get(goal.quest_id)
            if accept_id:
                depends_ids.append(accept_id)
        elif goal.quest_id and goal.kind == "turnin":
            accept_id = accept_by_quest.get(goal.quest_id)
            if accept_id:
                depends_ids.append(accept_id)
            for objective_id in objectives_by_quest.get(goal.quest_id, []):
                if objective_id not in depends_ids:
                    depends_ids.append(objective_id)
        if goal.quest_id and goal.kind == "accept":
            accept_by_quest[goal.quest_id] = gid
        elif goal.quest_id and goal.kind in ("objective", "gossip"):
            objectives_by_quest.setdefault(goal.quest_id, []).append(gid)
        depends = ""
        if depends_ids:
            quoted = ", ".join(f'"{item}"' for item in depends_ids)
            depends = f"\n            dependsOn = {{ {quoted} }},"

        if goal.kind == "accept":
            state = "completed" if goal.instant else "activeOrCompleted"
            complete = f'QuestState({goal.quest_id}, "{state}")'
        elif goal.kind == "turnin":
            complete = f"QuestState({goal.quest_id}, \"completed\")"
        else:
            label = lua_string(goal.name)
            idx = goal.objective_index or 1
            complete = f'QuestObjective({goal.quest_id}, {idx}, "{label}")'

        route = "nil"
        if goal.map_id and goal.x is not None and goal.y is not None:
            raw_label = (goal.npc or goal.name or "").rstrip(".")
            label = lua_string(raw_label)
            travel = lua_string(off_map_text(raw_label))
            route = (
                "{\n"
                f'                Point({goal.map_id}, {goal.x:.4f}, {goal.y:.4f}, "{label}",\n'
                f'                    "{travel}"),\n'
                "            }"
            )

        goals_lua.append(
            "        {\n"
            f'            id = "{gid}",\n'
            f'            kind = "{goal.kind}",\n'
            f"            priority = {priority},\n"
            f"            conditions = {emit_conditions(goal, guide.faction, guide.level_min)},\n"
            f'            text = "{lua_string(goal.text)}",\n'
            f"            complete = {complete},{depends}\n"
            f"            route = {route},\n"
            "        },"
        )
        priority += 10

    map_lines = "\n".join(f"    {key} = {mid}," for key, mid in sorted(maps.items(), key=lambda kv: kv[1]))
    header = (
        "local _, ns = ...\n\n"
        f"-- Forever Casual spine: {guide.title}\n"
        "-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.\n"
        "-- Forever weaves are applied in a separate pass.\n"
        "-- Coordinates not yet validated in Forever.\n\n"
        "local function QuestState(questID, state)\n"
        "    return { quest = { id = questID, state = state } }\n"
        "end\n\n"
        "local function QuestObjective(questID, index, text)\n"
        "    return { questObjective = { id = questID, index = index, text = text } }\n"
        "end\n\n"
        "local function Point(mapID, x, y, label, offMapText)\n"
        "    return {\n"
        "        mapID = mapID,\n"
        "        x = x,\n"
        "        y = y,\n"
        "        label = label,\n"
        "        offMapText = offMapText,\n"
        "    }\n"
        "end\n\n"
    )
    if map_lines:
        header += f"local MAP = {{\n{map_lines}\n}}\n\n"

    return (
        header
        + "ns:RegisterGuide({\n"
        f'    id = "{guide_id}",\n'
        f'    title = "{lua_string(display)}",\n'
        '    category = "Leveling Quest Guides",\n'
        "    revision = 1,\n"
        "    casualSpine = true,\n"
        "    conditions = {\n"
        "        all = {\n"
        f'            {{ faction = "{guide.faction}" }},\n'
        f"            {{ level = {{ min = {guide.level_min} }} }},\n"
        "        },\n"
        "    },\n"
        "    goals = {\n"
        + "\n".join(goals_lua)
        + "\n    },\n})\n"
    )


def write_guides(guides: list[ParsedGuide], out_leveling: Path, dry_run: bool) -> list[tuple[str, Path, bool]]:
    written: list[tuple[str, Path, bool]] = []
    slug_counts: dict[tuple[str, str], int] = {}
    for guide in guides:
        key = (guide.faction, guide.slug)
        slug_counts[key] = slug_counts.get(key, 0) + 1
        count = slug_counts[key]
        slug = guide.slug
        if count > 1:
            slug = f"{slug}-part-{count}"
            guide.slug = slug
        dest_dir = out_leveling
        if guide.starter:
            path = dest_dir / f"{slug}.lua"
        else:
            path = dest_dir / f"{guide.faction.lower()}-{slug}.lua"
        written.append((guide.slug, path, guide.starter))
        if dry_run:
            print(f"DRY {path} goals={len(guide.goals)} starter={guide.starter}")
            continue
        if path.exists() and 'routeMode = "ordered"' in path.read_text(encoding="utf-8"):
            raise ValueError(f"{path}: ordered itineraries require an explicit reviewed conversion; legacy import is disabled")
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(emit_guide(guide, era=False), encoding="utf-8")
        print(f"Wrote {path} ({len(guide.goals)} goals)")
    return written


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--classic-dir", type=Path, default=DEFAULT_CLASSIC_DUMP)
    parser.add_argument("--faction", choices=("Horde", "Alliance", "both"), default="both")
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--limit", type=int, default=0, help="Max guides per faction")
    args = parser.parse_args()

    pairs = []
    if args.faction in ("Horde", "both"):
        pairs.append(("Horde", args.classic_dir / "LevelingHordeCLASSIC.lua"))
    if args.faction in ("Alliance", "both"):
        pairs.append(("Alliance", args.classic_dir / "LevelingAllianceCLASSIC.lua"))

    all_guides: list[ParsedGuide] = []
    for faction, path in pairs:
        if not path.exists():
            print(f"missing {path}", file=sys.stderr)
            return 1
        guides = extract_guides(path, faction)
        if args.limit:
            guides = guides[: args.limit]
        print(f"{faction}: {len(guides)} guides from {path.name}")
        all_guides.extend(guides)

    write_guides(
        all_guides,
        ROOT / "Guides" / "Leveling",
        args.dry_run,
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
