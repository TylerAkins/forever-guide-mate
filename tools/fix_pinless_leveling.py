#!/usr/bin/env python3
"""Fix pinless Leveling accept/objective/turnin steps.

- Item/drop accepts: rewrite to \"Use the … to accept …\".
- Deeprun: keep accept/objective/turnin; add tram navigation copy.
- Other pinless accepts: curated nav text (or pin when we have a same-step source).
- Pinless objectives/turnins/gossip: set useClientPin = true.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LEVELING = ROOT / "Guides" / "Leveling"

USE_ITEM: dict[int, str] = {
    2: "Sharptalon's Claw",
    23: "Ursangous's Paw",
    24: "Shadumbra's Head",
    184: "Furlbrow's Deed",
    337: "An Old History Book",
    361: "A Sealed Letter",
    373: "A Waterlogged Envelope",
    485: "OOX-09/HL Distress Beacon",
    624: "A Weathered Treasure Map",
    637: "Sully Balloo's Letter",
    654: "the sealed testing kit",
    830: "the Admiral's Orders",
    883: "the Hoof of Lakota'mani",
    897: "the Harvester's Head",
    939: "the Flute of Xavaric",
    968: "the Book: The Powers Below",
    1100: "Lonebrow's Journal",
    1392: "Noboru's Cudgel",
    2766: "OOX-22/FE Distress Beacon",
    2945: "the Grime-Encrusted Ring",
    3181: "Margol's Horn",
    4281: "the Undelivered Parcel",
    4451: "the Grim Guzzler Key",
    4881: "the Assassination Note",
    5050: "the Good Luck Charm",
    6564: "the Damp Note",
    6922: "the Strange Water Globe",
    6981: "the Glowing Shard",
    8308: "Brann Bronzebeard's Lost Letter",
    8471: "the Winterfall Ritual Totem",
}

# Pinless accepts that are not bag-item starts: navigation (or indoor) copy.
# Keep quest title; do not invent coordinates.
NAV_ACCEPT: dict[int, str] = {
    388: "Accept The Color of Blood from Brother Kristoff in Stormwind Cathedral District.",
    416: "Accept Rat Catching from Magistrate Bluntnose in Thelsamar.",
    487: "Accept The Road to Darnassus from Sentinel Arynia Cloudsbreak at the Oracle Glade.",
    749: "Accept The Ravaged Caravan from Morin Cloudstalker east of Bloodhoof Village.",
    1000: "Accept The New Frontier from Arch Druid Hamuul Runetotem on Elder Rise in Thunder Bluff.",
    1047: "Accept The New Frontier from Arch Druid Fandral Staghelm in Darnassus.",
    1200: "Inside Blackfathom Deeps, accept Blackfathom Villainy from Argent Guard Thaelrid.",
    1244: "Accept The Missing Diplomat from Watcher Backus in Duskwood (Darkshire inn area).",
    1245: "Accept The Missing Diplomat from Jorgen in Stormwind.",
    1339: "Accept Mountaineer Stormpike's Task from Mountaineer Kadrell in Thelsamar.",
    1642: "Accept The Tome of Divinity from Duthorian Rall in Stormwind Cathedral.",
    1646: "Accept The Tome of Divinity from Tiza Battleforge in Ironforge.",
    1648: "Accept The Tome of Divinity from Tiza Battleforge in Ironforge.",
    1649: "Accept The Tome of Valor from Daphne Stilwell in Westfall, or from Duthorian Rall if you already carry the tome.",
    1778: "Accept The Tome of Divinity from Tiza Battleforge in Ironforge.",
    2382: "Accept Wrenix of Ratchet from Wrenix the Wretched in Ratchet.",
    2904: "Inside Gnomeregan, accept A Fine Mess from Kernobee.",
    2947: "Accept Return of the Ring from the cleaned ring after the Sparklematic 5200 in Gnomeregan (turn in to Talvash del Kissel in Ironforge).",
    2949: "Accept Return of the Ring from the cleaned ring after the Sparklematic 5200 in Gnomeregan (turn in to Nogg in Orgrimmar).",
    2952: "Accept The Sparklematic 5200! from the Sparklematic 5200 machine inside Gnomeregan.",
    5090: "Accept A Call to Arms: The Plaguelands! from Courier Hammerfall in Ironforge or Stormwind.",
    5481: "Accept Gordo's Task from Gordo on the road into Brill.",
    5482: "Accept Doom Weed from Junior Apothecary Holland in Brill.",
    5724: "Accept Returning the Lost Satchel after Maur Grimtotem's satchel drops in Ragefire Chasm.",
    6561: "Inside Blackfathom Deeps, accept Blackfathom Villainy from Argent Guard Thaelrid.",
    7044: "Inside Maraudon, accept Legends of Maraudon from the Centaur Apparition.",
    7046: "Inside Maraudon, accept The Scepter of Celebras from Celebras the Redeemed.",
    7066: "Inside Maraudon, accept Seed of Life from Zaetar's Spirit.",
    7492: "Accept Camp Mojache from Warcaller Gorlach in Orgrimmar.",
}

DEEP_TEXT = {
    "accept-6661-deeprun-rat-roundup": (
        "Accept Deeprun Rat Roundup from Monty in the Deeprun Tram "
        "(Ironforge side of the tram tunnels)."
    ),
    "objective-6661-1-rat-catcher-s-flute": (
        "In the Deeprun Tram tunnels, use the Rat Catcher's Flute on Deeprun Rats "
        "until five are captured."
    ),
    "turnin-6661-deeprun-rat-roundup": (
        "Turn in Deeprun Rat Roundup to Monty in the Deeprun Tram "
        "(Ironforge side)."
    ),
    "accept-6662-me-brother-nipsy": (
        "Accept Me Brother, Nipsy from Monty in the Deeprun Tram."
    ),
    "turnin-6662-me-brother-nipsy": (
        "Turn in Me Brother, Nipsy to Nipsy on the Stormwind side of the Deeprun Tram."
    ),
}

GOAL_RE = re.compile(
    r"(\{\s*\n\s*id\s*=\s*\"([^\"]+)\"\s*,\s*\n\s*kind\s*=\s*\"(\w+)\"(.*?)"
    r")(?=\n\s*\{\s*\n\s*id\s*=|\n\s*\},\s*\n\})",
    re.S,
)


def quest_id_from_body(body: str) -> int | None:
    m = re.search(r"QuestState\((\d+)", body) or re.search(r"QuestObjective\((\d+)", body)
    return int(m.group(1)) if m else None


def has_route_pin(body: str) -> bool:
    return bool(re.search(r"route\s*=\s*\{", body))


def set_text(body: str, new_text: str) -> str:
    return re.sub(
        r'text\s*=\s*"(?:\\.|[^"\\])*"',
        f'text = "{new_text}"',
        body,
        count=1,
    )


def ensure_use_client_pin(body: str) -> str:
    if re.search(r"useClientPin\s*=\s*true", body):
        return body
    # Insert before route = nil or before complete/dependsOn trailing
    if re.search(r"route\s*=\s*nil", body):
        return re.sub(
            r"(\n)(\s*)route\s*=\s*nil",
            r"\1\2useClientPin = true,\n\2route = nil",
            body,
            count=1,
        )
    # No route line — add before closing of goal is hard; skip
    return body


def quest_title_from_accept_text(text: str) -> str:
    m = re.match(r"^Accept (.+)\.$", text)
    return m.group(1) if m else text


def patch_goal(goal_id: str, kind: str, body: str) -> tuple[str, str | None]:
    """Return (new_body, change_label)."""
    if kind not in ("accept", "objective", "turnin", "gossip"):
        return body, None

    if goal_id in DEEP_TEXT:
        body2 = set_text(body, DEEP_TEXT[goal_id])
        if kind in ("objective", "turnin"):
            body2 = ensure_use_client_pin(body2)
        return body2, f"deeprun:{goal_id}"

    if has_route_pin(body):
        return body, None

    qid = quest_id_from_body(body)
    text_m = re.search(r'text\s*=\s*"((?:\\.|[^"\\])*)"', body)
    text = text_m.group(1) if text_m else ""

    if kind == "accept" and qid in USE_ITEM:
        title = quest_title_from_accept_text(text)
        item = USE_ITEM[qid]
        # "the X" items already include article in map where needed
        if item.startswith("the "):
            new = f"Use {item} to accept {title}."
        else:
            new = f"Use the {item} to accept {title}."
        return set_text(body, new), f"use-item:{qid}"

    if kind == "accept" and qid in NAV_ACCEPT:
        return set_text(body, NAV_ACCEPT[qid]), f"nav:{qid}"

    if kind in ("objective", "turnin", "gossip"):
        body2 = ensure_use_client_pin(body)
        if body2 != body:
            return body2, f"client-pin:{kind}"
        return body, None

    return body, None


def patch_file(path: Path) -> list[str]:
    text = path.read_text(encoding="utf-8")
    changes: list[str] = []

    def repl(match: re.Match[str]) -> str:
        full, goal_id, kind, body = match.group(1), match.group(2), match.group(3), match.group(4)
        # full includes opening through body but the regex is tricky — rebuild
        new_body, label = patch_goal(goal_id, kind, body)
        if label:
            changes.append(f"{path.name}:{goal_id}:{label}")
        # Reconstruct: the match group 1 was wrong. Use groups properly.
        return "{\n            id = \"%s\",\n            kind = \"%s\"%s" % (
            goal_id,
            kind,
            new_body,
        )

    # Safer: iterate matches and splice
    out = []
    last = 0
    for m in GOAL_RE.finditer(text):
        out.append(text[last : m.start()])
        goal_id, kind, body = m.group(2), m.group(3), m.group(4)
        # m.group(1) is prefix including id/kind — rebuild from start of match
        prefix_end = m.start(4)
        new_body, label = patch_goal(goal_id, kind, body)
        if label:
            changes.append(f"{path.name}:{goal_id}:{label}")
        out.append(text[m.start() : prefix_end])
        out.append(new_body)
        last = m.end()
        # GOAL_RE end is start of next lookahead — need to include nothing after body
        # Actually m.end() is end of body before lookahead. Good.
    out.append(text[last:])
    if changes:
        path.write_text("".join(out), encoding="utf-8")
    return changes


def main() -> int:
    all_changes: list[str] = []
    for path in sorted(LEVELING.rglob("*.lua")):
        all_changes.extend(patch_file(path))
    print(f"Updated {len(all_changes)} goals")
    for line in all_changes:
        print(f"  {line}")
    # Report any remaining bare pinless accepts
    remaining = []
    goal_re = GOAL_RE
    for path in sorted(LEVELING.rglob("*.lua")):
        text = path.read_text(encoding="utf-8")
        for m in goal_re.finditer(text):
            goal_id, kind, body = m.group(2), m.group(3), m.group(4)
            if kind != "accept" or has_route_pin(body):
                continue
            text_m = re.search(r'text\s*=\s*"((?:\\.|[^"\\])*)"', body)
            t = text_m.group(1) if text_m else ""
            if t.startswith("Use ") or "Deeprun" in t or t.startswith("Inside ") or " from " in t:
                continue
            remaining.append(f"{path.name}:{goal_id}:{t}")
    if remaining:
        print(f"\nStill bare pinless accepts: {len(remaining)}")
        for line in remaining:
            print(f"  {line}")
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
