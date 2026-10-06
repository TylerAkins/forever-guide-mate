#!/usr/bin/env python3
"""Compare guide quest paths with wow-database compiled records.

Reads Guides/ and QuestPrerequisites.lua. Prints a categorized report.
Does not edit guides and does not fail the process when findings exist.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools"))

from weave_loremaster import (  # noqa: E402
    FOREVER_PATCH,
    Goal,
    guide_faction,
    parse_goals,
    positive_level,
    questie_fields,
    step_level,
)

GUIDE_ROOTS = ("Guides/Leveling", "Guides/Loremaster", "Guides/Class", "Guides/Dungeons", "Guides/Era")
CLASSIC_RACE_IDS = set(range(1, 9))
CLASSIC_CLASS_IDS = {1, 2, 3, 4, 5, 7, 8, 9, 11}
HORDE_RACES = {2, 5, 6, 8}
ALLIANCE_RACES = {1, 3, 4, 7}


@dataclass
class Finding:
    category: str
    quest_id: int
    forever: bool
    message: str


@dataclass
class Requirement:
    mode: str
    quests: list[int]


@dataclass
class CatalogQuest:
    quest_id: int
    forever: bool
    name: str
    requirement: Requirement | None
    exclusive: list[int]
    breadcrumbs: list[int]
    next_quest: int | None
    required_classes: list[int]
    required_races: list[int]
    required_skills: list[int]
    step_level: int | None
    record_found: bool


def _ints(value) -> list[int]:
    if isinstance(value, int) and value > 0:
        return [value]
    if isinstance(value, list):
        return [int(item) for item in value if isinstance(item, int) and item > 0]
    return []


def mask_ids(mask, allowed: set[int]) -> list[int]:
    if not isinstance(mask, int) or mask <= 0:
        return []
    return [bit for bit in allowed if mask & (1 << (bit - 1))]


def id_list(value, allowed: set[int]) -> list[int]:
    """Accept schema v2 id arrays or legacy Questie bitmasks."""
    if isinstance(value, list):
        return sorted({int(item) for item in value if isinstance(item, int) and item in allowed})
    return mask_ids(value, allowed)


def requirement_from_record(record: dict | None) -> Requirement | None:
    """Map allOf/preQuestGroup to all and anyOf/preQuestSingle to any.

    A quest with both groups is mixed and is reported, not collapsed.
    """
    if not isinstance(record, dict):
        return None
    detail = record.get("detail") if isinstance(record.get("detail"), dict) else {}
    requirements = detail.get("requirements") if isinstance(detail.get("requirements"), dict) else {}
    fields = questie_fields(record) or {}
    all_of = (
        _ints(requirements.get("allOf"))
        or _ints(fields.get("preQuestGroup"))
        or _ints(record.get("preQuestGroup"))
    )
    any_of = (
        _ints(requirements.get("anyOf"))
        or _ints(fields.get("preQuestSingle"))
        or _ints(record.get("preQuestSingle"))
    )
    if all_of and any_of:
        return Requirement("mixed", sorted(set(all_of + any_of)))
    if all_of:
        return Requirement("all", sorted(set(all_of)))
    if any_of:
        return Requirement("any", sorted(set(any_of)))
    return None


def catalog_quest(quest_id: int, record: dict | None) -> CatalogQuest:
    fields = questie_fields(record) or {}
    detail = {}
    listed = {}
    if isinstance(record, dict):
        detail = record.get("detail") if isinstance(record.get("detail"), dict) else {}
        listed = record.get("list") if isinstance(record.get("list"), dict) else {}
        if not fields:
            fields = record
    requirements = detail.get("requirements") if isinstance(detail.get("requirements"), dict) else {}
    exclusive = (
        _ints(requirements.get("exclusiveTo"))
        or _ints(fields.get("exclusiveTo"))
        or _ints(record.get("exclusiveTo") if isinstance(record, dict) else None)
    )
    breadcrumbs = (
        _ints(requirements.get("breadcrumbs"))
        or _ints(fields.get("breadcrumbs"))
        or _ints(record.get("breadcrumbs") if isinstance(record, dict) else None)
    )
    breadcrumb_for = positive_level(fields.get("breadcrumbForQuestId"))
    if not breadcrumb_for and isinstance(record, dict):
        breadcrumb_for = positive_level(record.get("breadcrumbForQuestId"))
    if breadcrumb_for and breadcrumb_for not in breadcrumbs:
        breadcrumbs.append(breadcrumb_for)
    next_quest = (
        positive_level(requirements.get("nextQuestInChain"))
        or positive_level(fields.get("nextQuestInChain"))
        or positive_level(record.get("nextQuestInChain") if isinstance(record, dict) else None)
    )
    skill = fields.get("requiredSkill")
    if skill is None and isinstance(record, dict):
        skill = record.get("requiredSkill")
    skills = []
    if isinstance(skill, list) and skill and isinstance(skill[0], int) and skill[0] > 0:
        skills = [skill[0]]
    elif isinstance(skill, int) and skill > 0:
        skills = [skill]
    patch = listed.get("firstseenpatch") if isinstance(listed, dict) else None
    if patch is None and isinstance(record, dict):
        patch = record.get("firstseenpatch")
    # Schema v2 Forever exports omit firstseenpatch. Forever-added quest ids sit
    # in the high 90k range in the current QuestieDB cut.
    forever = patch == FOREVER_PATCH or quest_id >= 90000
    name = ""
    if isinstance(listed, dict) and isinstance(listed.get("name"), str):
        name = listed["name"]
    elif isinstance(fields.get("name"), str):
        name = fields["name"]
    elif isinstance(record, dict) and isinstance(record.get("name"), str):
        name = record["name"]
    return CatalogQuest(
        quest_id=quest_id,
        forever=forever,
        name=name,
        requirement=requirement_from_record(record),
        exclusive=sorted(set(exclusive)),
        breadcrumbs=sorted(set(breadcrumbs)),
        next_quest=next_quest,
        required_classes=id_list(fields.get("requiredClasses"), CLASSIC_CLASS_IDS),
        required_races=id_list(fields.get("requiredRaces"), CLASSIC_RACE_IDS),
        required_skills=skills,
        step_level=step_level(record) if record else None,
        record_found=record is not None,
    )


def normalize_export_quest(quest: dict) -> dict:
    """Map schema v2 quest bodies onto the catalog record shape."""
    quest_id = int(quest["id"])
    quest_level = quest.get("questLevel") if isinstance(quest.get("questLevel"), int) else None
    required_level = quest.get("requiredLevel") if isinstance(quest.get("requiredLevel"), int) else None
    required_classes = quest.get("requiredClasses") if isinstance(quest.get("requiredClasses"), list) else []
    fields = {
        key: quest[key]
        for key in (
            "name",
            "questLevel",
            "requiredLevel",
            "preQuestGroup",
            "preQuestSingle",
            "exclusiveTo",
            "breadcrumbs",
            "breadcrumbForQuestId",
            "nextQuestInChain",
            "requiredClasses",
            "requiredRaces",
            "requiredSkill",
        )
        if key in quest and quest[key] is not None
    }
    return {
        "id": quest_id,
        "list": {
            "id": quest_id,
            "level": quest_level,
            "reqlevel": required_level,
            "firstseenpatch": FOREVER_PATCH if quest_id >= 90000 else None,
            "name": quest.get("name") if isinstance(quest.get("name"), str) else "",
            "reqclass": 1 if required_classes else 0,
        },
        "minLevel": required_level,
        "classes": [item for item in required_classes if isinstance(item, int)],
        "detail": {
            "requirements": {
                "allOf": _ints(quest.get("preQuestGroup")),
                "anyOf": _ints(quest.get("preQuestSingle")),
                "exclusiveTo": _ints(quest.get("exclusiveTo")),
                "breadcrumbs": _ints(quest.get("breadcrumbs")),
                "nextQuestInChain": quest.get("nextQuestInChain"),
            },
            "questie": {"fields": fields},
        },
    }


def load_export_records(database_root: Path) -> dict[int, dict]:
    quests_dir = database_root / "export" / "forever" / "quests"
    paths = sorted(quests_dir.glob("*.json"))
    print(f"reading {len(paths)} schema v2 shards from {quests_dir}", flush=True)
    records: dict[int, dict] = {}
    for path in paths:
        bundle = json.loads(path.read_text(encoding="utf-8"))
        quests = bundle.get("quests")
        if not isinstance(quests, dict):
            continue
        for quest in quests.values():
            if not isinstance(quest, dict) or not isinstance(quest.get("id"), int):
                continue
            records[quest["id"]] = normalize_export_quest(quest)
    print(f"loaded {len(records)} exported quests", flush=True)
    return records


def load_compiled_records(database_root: Path) -> dict[int, dict]:
    export_quests = database_root / "export" / "forever" / "quests"
    if export_quests.is_dir():
        return load_export_records(database_root)

    compiled = database_root / "data" / "forever" / "compiled"
    records: dict[int, dict] = {}
    if not compiled.is_dir():
        raise SystemExit(
            f"no wow-database export at {export_quests} and no compiled forever data at {compiled}"
        )
    paths = sorted(compiled.rglob("*.json"))
    print(f"reading {len(paths)} compiled bundles from {compiled}", flush=True)
    for path in paths:
        bundle = json.loads(path.read_text(encoding="utf-8"))
        quests = bundle.get("quests")
        if not isinstance(quests, dict):
            continue
        for key, quest in quests.items():
            if not isinstance(quest, dict):
                continue
            quest_id = int(key)
            index = quest.get("index") if isinstance(quest.get("index"), dict) else {}
            record = records.get(quest_id, {})
            merged = {
                "id": quest_id,
                "list": index.get("list") if isinstance(index.get("list"), dict) else record.get("list"),
                "minLevel": index.get("minLevel", record.get("minLevel")),
                "classes": index.get("classes", record.get("classes")),
                "detail": quest.get("detail") if isinstance(quest.get("detail"), dict) else record.get("detail"),
            }
            records[quest_id] = merged
    print(f"loaded {len(records)} compiled quests", flush=True)
    return records


def parse_registered_prereqs(text: str) -> dict[int, Requirement]:
    registered: dict[int, Requirement] = {}
    for match in re.finditer(r"ns:RegisterQuestPrerequisite\(\{(.*?)\}\)", text, re.S):
        body = match.group(1)
        quest = re.search(r"\bquest\s*=\s*(\d+)", body)
        mode = re.search(r'\bmode\s*=\s*"(all|any)"', body)
        quests = re.search(r"\bquests\s*=\s*\{([^}]*)\}", body)
        if not quest or not mode or not quests:
            continue
        ids = [int(value) for value in re.findall(r"\d+", quests.group(1))]
        registered[int(quest.group(1))] = Requirement(mode.group(1), ids)
    return registered


def load_guide_goals(root: Path) -> list[Goal]:
    goals: list[Goal] = []
    for relative in GUIDE_ROOTS:
        for path in sorted((root / relative).glob("*.lua")):
            text = path.read_text(encoding="utf-8")
            header_faction = guide_faction(text)
            parsed = parse_goals(text, "guide", str(path.relative_to(root)), header_faction)
            for goal in parsed:
                if goal.step_faction is None:
                    goal.step_faction = header_faction
            goals.extend(parsed)
    return goals


def same_file_prereq_ids(goals: list[Goal], quest_id: int) -> set[int]:
    """Quest ids whose turn-in this quest's accept already depends on."""
    by_id = {goal.id: goal for goal in goals}
    found: set[int] = set()
    for goal in goals:
        if goal.quest_id != quest_id or goal.kind not in ("accept", "gossip"):
            continue
        for dep in goal.depends:
            other = by_id.get(dep)
            if other and other.kind == "turnin" and other.quest_id:
                found.add(other.quest_id)
    return found


def compare_quest(
    quest_id: int,
    record: dict | None,
    goals: list[Goal],
    registered: dict[int, Requirement],
) -> list[Finding]:
    catalog = catalog_quest(quest_id, record)
    findings: list[Finding] = []
    if not catalog.record_found:
        findings.append(Finding("missing-record", quest_id, False, "quest id is not in the compiled bundles"))
        return findings

    expected = catalog.requirement
    authored = registered.get(quest_id)
    linked = same_file_prereq_ids(goals, quest_id)
    if expected and expected.mode == "mixed":
        findings.append(
            Finding(
                "prerequisite-mode",
                quest_id,
                catalog.forever,
                f"has both allOf and anyOf ({expected.quests}); register them separately",
            )
        )
    elif expected:
        covered = set(authored.quests if authored else []) | linked
        missing = [item for item in expected.quests if item not in covered]
        if missing:
            findings.append(
                Finding(
                    "missing-prerequisite",
                    quest_id,
                    catalog.forever,
                    f"needs {expected.mode} of {missing}; covered {sorted(covered) or 'none'}",
                )
            )
        if authored and authored.mode != expected.mode:
            findings.append(
                Finding(
                    "prerequisite-mode",
                    quest_id,
                    catalog.forever,
                    f"registered mode {authored.mode} but the database says {expected.mode}",
                )
            )
        if authored:
            extra = [item for item in authored.quests if item not in expected.quests]
            if extra:
                findings.append(
                    Finding(
                        "extra-prerequisite",
                        quest_id,
                        catalog.forever,
                        f"registered {extra} but the database requirement is {expected.quests}",
                    )
                )
    elif authored:
        findings.append(
            Finding(
                "extra-prerequisite",
                quest_id,
                catalog.forever,
                f"registered {authored.quests} but the database lists no prerequisite",
            )
        )

    if catalog.next_quest:
        findings.extend(_order_findings(catalog, goals))
    findings.extend(_condition_findings(catalog, goals))
    if catalog.exclusive:
        present = _quest_ids(goals)
        both = [item for item in catalog.exclusive if item in present]
        if both:
            findings.append(
                Finding(
                    "exclusive",
                    quest_id,
                    catalog.forever,
                    f"exclusive with {both}; leave both on the route only when the header says so",
                )
            )
    if catalog.breadcrumbs:
        findings.append(
            Finding(
                "breadcrumb",
                quest_id,
                catalog.forever,
                f"breadcrumb link {catalog.breadcrumbs}",
            )
        )
    return findings


def _quest_ids(goals: list[Goal]) -> set[int]:
    return {goal.quest_id for goal in goals if goal.quest_id}


def _order_findings(catalog: CatalogQuest, goals: list[Goal]) -> list[Finding]:
    child = catalog.next_quest
    by_file: dict[str, list[Goal]] = {}
    for goal in goals:
        if goal.quest_id in (catalog.quest_id, child):
            by_file.setdefault(goal.source_file, []).append(goal)
    findings = []
    for source, steps in by_file.items():
        parent_turnins = [step for step in steps if step.quest_id == catalog.quest_id and step.kind == "turnin"]
        child_accepts = [step for step in steps if step.quest_id == child and step.kind == "accept"]
        if not parent_turnins or not child_accepts:
            continue
        parent_at = max(step.priority for step in parent_turnins)
        child_at = min(step.priority for step in child_accepts)
        if child_at < parent_at:
            findings.append(
                Finding(
                    "order",
                    catalog.quest_id,
                    catalog.forever,
                    f"{source}: accept of {child} is before the turn-in of {catalog.quest_id}",
                )
            )
    return findings


def _condition_findings(catalog: CatalogQuest, goals: list[Goal]) -> list[Finding]:
    steps = [goal for goal in goals if goal.quest_id == catalog.quest_id]
    if not steps:
        return []
    findings = []
    if catalog.step_level and catalog.step_level > 1:
        stamped = {goal.level_min for goal in steps}
        if catalog.step_level not in stamped:
            findings.append(
                Finding(
                    "level",
                    catalog.quest_id,
                    catalog.forever,
                    f"step level {catalog.step_level} is not on the steps (have {sorted(value for value in stamped if value)})",
                )
            )
    if catalog.required_classes and set(catalog.required_classes) != CLASSIC_CLASS_IDS:
        present = {class_id for goal in steps for class_id in goal.classes}
        missing = [class_id for class_id in catalog.required_classes if class_id not in present]
        if missing and present != set(catalog.required_classes):
            findings.append(
                Finding(
                    "class",
                    catalog.quest_id,
                    catalog.forever,
                    f"classes {catalog.required_classes} are not on every matching step (have {sorted(present) or 'none'})",
                )
            )
    if catalog.required_races and set(catalog.required_races) != CLASSIC_RACE_IDS:
        required = set(catalog.required_races)
        present = {race_id for goal in steps for race_id in goal.races}

        def race_covered(goal: Goal) -> bool:
            if required.issubset(set(goal.races)):
                return True
            if required == HORDE_RACES and goal.step_faction == "Horde":
                return True
            if required == ALLIANCE_RACES and goal.step_faction == "Alliance":
                return True
            return False

        if not all(race_covered(goal) for goal in steps):
            findings.append(
                Finding(
                    "race",
                    catalog.quest_id,
                    catalog.forever,
                    f"races {catalog.required_races} are not on the steps (have {sorted(present) or 'none'})",
                )
            )
    if catalog.required_skills:
        present = {skill for goal in steps for skill in goal.skills}
        missing = [skill for skill in catalog.required_skills if skill not in present]
        if missing:
            findings.append(
                Finding(
                    "skill",
                    catalog.quest_id,
                    catalog.forever,
                    f"skill {missing} is not on the steps",
                )
            )
    return findings


def audit(
    goals: list[Goal],
    records: dict[int, dict],
    registered: dict[int, Requirement],
) -> list[Finding]:
    quest_ids = sorted({goal.quest_id for goal in goals if goal.quest_id})
    findings: list[Finding] = []
    for quest_id in quest_ids:
        findings.extend(compare_quest(quest_id, records.get(quest_id), goals, registered))
    findings.sort(key=lambda item: (not item.forever, item.category, item.quest_id))
    return findings


def format_report(findings: list[Finding]) -> str:
    lines = [f"{len(findings)} findings"]
    counts: dict[str, int] = {}
    for finding in findings:
        counts[finding.category] = counts.get(finding.category, 0) + 1
    for category, count in sorted(counts.items()):
        lines.append(f"  {category}: {count}")
    lines.append("")
    for finding in findings:
        tag = "forever" if finding.forever else "classic"
        lines.append(f"{tag} {finding.category} {finding.quest_id}: {finding.message}")
    return "\n".join(lines) + "\n"


DEP_CATEGORIES = (
    "missing-prerequisite",
    "extra-prerequisite",
    "prerequisite-mode",
    "missing-record",
)


def main() -> None:
    parser = argparse.ArgumentParser(description="Report guide quest paths that disagree with wow-database.")
    parser.add_argument(
        "--database",
        type=Path,
        default=ROOT.parent / "wow-database",
        help="wow-database checkout (default: sibling ../wow-database)",
    )
    parser.add_argument(
        "--deps-only",
        action="store_true",
        help="only print prerequisite / missing-record findings",
    )
    args = parser.parse_args()
    records = load_compiled_records(args.database)
    goals = load_guide_goals(ROOT)
    print(f"parsed {len(goals)} guide steps", flush=True)
    registered = parse_registered_prereqs((ROOT / "QuestPrerequisites.lua").read_text(encoding="utf-8"))
    findings = audit(goals, records, registered)
    if args.deps_only:
        findings = [item for item in findings if item.category in DEP_CATEGORIES]
    print(format_report(findings), end="")


if __name__ == "__main__":
    main()
