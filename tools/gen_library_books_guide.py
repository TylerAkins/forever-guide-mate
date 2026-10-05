#!/usr/bin/env python3
"""Generate Guides/Miscellaneous/LibraryBooks.lua (run from repo root)."""
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "Guides/Miscellaneous/LibraryBooks.lua"

HEADER = '''local _, ns = ...

-- Library book collection for all classes in WoW Forever.
-- Turn books in to Garion Wendell in Stormwind or Owen Thadd in Undercity.
-- Rumi of Gnomeregan exists in Westfall and Loch Modan but counts once.
-- Deleting a book from your bags may prevent re-looting it.
-- Milestone quests: 78150 (10 books), 79536 (20 books), 82208 (25 books, level 30+).
-- The first 25 loot steps are both-faction books in turn-in order for milestone gating; extra books follow.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    ELWYNN = 1429,
    WESTFALL = 1436,
    DUSKWOOD = 1431,
    LOCH_MODAN = 1432,
    WETLANDS = 1437,
    IRONFORGE = 1455,
    TIRISFAL = 1420,
    SILVERPINE = 1421,
    BARRENS = 1413,
    DARKSHORE = 1439,
    STONETALON = 1442,
    ORGRIMMAR = 1454,
    STV = 1434,
    THOUSAND_NEEDLES = 1441,
    ALTERAC = 1416,
    DUSTWALLOW = 1445,
    ARATHI = 1417,
    DESOLACE = 1443,
    BADLANDS = 1418,
    WPL = 1422,
    EPL = 1423,
    SWAMP_OF_SORROWS = 1435,
    HINTERLANDS = 1425,
    FELWOOD = 1448,
    FERALAS = 1444,
    WINTER_SPRING = 1449,
    BURNING_STEPPES = 1428,
    SEARING_GORGE = 1427,
    AZSHARA = 1447,
    TANARIS = 1446,
    BLASTED_LANDS = 1419,
    STORMWIND = 1453,
    UNDERCITY = 1458,
}

local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function Point(mapID, x, y, label, offMapText)
    return {
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
    }
end

'''


def pt(map_key: str, x: float, y: float, label: str, off: str | None = None) -> str:
    nx, ny = x / 100.0, y / 100.0
    if off:
        return (
            f"                Point(MAP.{map_key}, {nx:.4f}, {ny:.4f}, \"{label}\",\n"
            f"                    \"{off}\"),"
        )
    return f"                Point(MAP.{map_key}, {nx:.4f}, {ny:.4f}, \"{label}\"),"


# (step_id, text, pins, quest_id|None, condition_snippet|None)
Book = tuple[str, str, list[tuple], int | None, str | None]

BOOKS: list[Book] = [
    (
        "book-theocritus-journal",
        "Loot Archmage Theocritus's Research Journal from the Tower of Azora in Elwynn Forest.",
        [("ELWYNN", 65.4, 70.1, "Archmage Theocritus's Research Journal", "Travel to the Tower of Azora.")],
        79092,
        None,
    ),
    (
        "book-bewitchments-glamours",
        "Loot Bewitchments and Glamours from Moonbrook in Westfall.",
        [("WESTFALL", 45.4, 70.5, "Bewitchments and Glamours", "Travel to Moonbrook.")],
        78142,
        None,
    ),
    (
        "book-rumi-collected-works",
        "Loot Rumi of Gnomeregan: The Collected Works from Sentinel Hill in Westfall or Thelsamar in Loch Modan (counts once).",
        [
            ("WESTFALL", 52.7, 53.8, "Rumi of Gnomeregan: The Collected Works", "Travel to Sentinel Hill."),
            ("LOCH_MODAN", 35.6, 48.9, "Rumi of Gnomeregan: The Collected Works", "Travel to Thelsamar."),
        ],
        79093,
        None,
    ),
    (
        "book-goaz-scrolls",
        "Loot Goaz Scrolls from Whelgar's Excavation Site in the Wetlands.",
        [("WETLANDS", 33.6, 47.9, "Goaz Scrolls", "Travel to Whelgar's Excavation Site.")],
        None,
        None,
    ),
    (
        "book-crimes-against-anatomy",
        "Loot Crimes Against Anatomy from Raven Hill Crypt in Duskwood.",
        [("DUSKWOOD", 16.7, 28.5, "Crimes Against Anatomy", "Travel to Raven Hill Crypt.")],
        None,
        None,
    ),
    (
        "book-runes-sorcerer-kings",
        "Loot Runes of the Sorcerer-Kings from the ogre cave at Mo'grosh Stronghold in Loch Modan.",
        [("LOCH_MODAN", 77.5, 14.1, "Runes of the Sorcerer-Kings", "Travel to Mo'grosh Stronghold.")],
        78148,
        None,
    ),
    (
        "book-antonidas-autobiography",
        "Loot Archmage Antonidas: The Unabridged Autobiography from the Hall of Explorers in Ironforge.",
        [("IRONFORGE", 75.7, 10.5, "Archmage Antonidas: The Unabridged Autobiography", "Travel to the Hall of Explorers.")],
        79091,
        '{ faction = "Alliance" }',
    ),
    (
        "book-apothecary-primer",
        "Loot The Apothecary's Metaphysical Primer from the alchemy shop in Brill, Tirisfal Glades.",
        [("TIRISFAL", 59.4, 52.3, "The Apothecary's Metaphysical Primer", "Travel to Brill.")],
        79095,
        '{ faction = "Horde" }',
    ),
    (
        "book-dalaran-digest",
        "Loot The Dalaran Digest, Vol. 23 from Amber Mill in Silverpine Forest.",
        [("SILVERPINE", 63.5, 63.1, "The Dalaran Digest, Vol. 23", "Travel to Amber Mill.")],
        78127,
        None,
    ),
    (
        "book-baxtan-destructive-magics",
        "Loot Baxtan: On Destructive Magics from Ratchet in the Barrens.",
        [("BARRENS", 62.7, 36.3, "Baxtan: On Destructive Magics", "Travel to Ratchet.")],
        79097,
        None,
    ),
    (
        "book-arcanic-systems-manual",
        "Loot Arcanic Systems Manual from the Sludge Fen oil rig in the Barrens.",
        [("BARRENS", 56.3, 8.8, "Arcanic Systems Manual", "Travel to the Sludge Fen oil rig.")],
        78145,
        None,
    ),
    (
        "book-secrets-dreamers",
        "Loot Secrets of the Dreamers from the Cavern of Mists near Wailing Caverns (not inside the dungeon).",
        [
            ("BARRENS", 46.0, 36.5, "Cavern of Mists entrance", "Travel to Lushwater Oasis."),
            ("BARRENS", 52.83, 54.70, "Secrets of the Dreamers", "Enter the cave toward the Cavern of Mists."),
        ],
        78143,
        None,
    ),
    (
        "book-narthalas-almanac",
        "Loot Nar'thalas Almanac, Vol. 74 from the Ruins of Mathystra in Darkshore.",
        [("DARKSHORE", 59.6, 22.2, "Nar'thalas Almanac, Vol. 74", "Travel to the Ruins of Mathystra.")],
        78124,
        None,
    ),
    (
        "book-fury-of-the-land",
        "Loot Fury of the Land from the Grimtotem camp in Stonetalon Mountains.",
        [("STONETALON", 74.4, 85.7, "Fury of the Land", "Travel to the Grimtotem camp.")],
        78149,
        None,
    ),
    (
        "book-lessons-tazo",
        "Loot The Lessons of Ta'zo from the tablet at Darkbriar Lodge in Orgrimmar.",
        [("ORGRIMMAR", 38.6, 78.4, "The Lessons of Ta'zo", "Travel to the Valley of Spirits.")],
        79094,
        '{ faction = "Horde" }',
    ),
    (
        "book-ataeric-arcane-curiosities",
        "Loot Ataeric: On Arcane Curiosities from the tomb near Sebastian Meloche in Silverpine Forest.",
        [("SILVERPINE", 43.4, 41.2, "Ataeric: On Arcane Curiosities", "Travel to the Sepulcher area.")],
        None,
        '{ faction = "Horde" }',
    ),
    (
        "book-defensive-magics-101",
        "Loot Defensive Magics 101 from the first ogre tower at Gallows' Corner in Alterac Mountains.",
        [("ALTERAC", 48.4, 57.5, "Defensive Magics 101", "Travel to Gallows' Corner.")],
        79948,
        None,
    ),
    (
        "book-geomancy-stone-cold-truth",
        "Loot Geomancy: The Stone-Cold Truth from Darkcloud Pinnacle in Thousand Needles.",
        [
            ("THOUSAND_NEEDLES", 31.9, 38.5, "Path up Darkcloud Pinnacle", "Travel to the Grimtotem mound."),
            ("THOUSAND_NEEDLES", 34.4, 40.0, "Geomancy: The Stone-Cold Truth", "Follow the ramps to the main hut."),
        ],
        None,
        None,
    ),
    (
        "book-basilisks-petrification",
        "Loot Basilisks: Should Petrification be Feared? outside Crystalvein Mine in Stranglethorn Vale.",
        [
            ("STV", 37.1, 48.8, "Path toward Crystalvein Mine", "Travel toward the mine."),
            ("STV", 41.3, 50.9, "Basilisks: Should Petrification be Feared?", "Follow the path to the platform."),
        ],
        None,
        None,
    ),
    (
        "book-rwlrwl",
        "Loot RwlRwlRwlRwl! from the murloc camp furnace in Dustwallow Marsh.",
        [("DUSTWALLOW", 57.1, 20.8, "RwlRwlRwlRwl!", "Travel to Witch Hill.")],
        None,
        None,
    ),
    (
        "book-web-of-lies",
        "Loot A Web of Lies: Debunking Myths and Legends from Witherbark Village in Arathi Highlands.",
        [("ARATHI", 73.6, 65.2, "A Web of Lies: Debunking Myths and Legends", "Travel to Witherbark Village.")],
        None,
        None,
    ),
    (
        "book-demons-and-you",
        "Loot Demons and You from Thunder Axe Fortress in Desolace.",
        [("DESOLACE", 55.1, 26.2, "Demons and You", "Travel to Thunder Axe Fortress.")],
        None,
        None,
    ),
    (
        "book-mummies-unsavory-undead",
        "Loot Mummies: A Guide to the Unsavory Undead from the crypt south of the Badlands butte.",
        [
            ("BADLANDS", 56.0, 45.0, "Path toward the crypt", "Travel toward the southern foothills."),
            ("BADLANDS", 56.7, 39.7, "Mummies: A Guide to the Unsavory Undead", "Climb to the crypt entrance."),
        ],
        None,
        None,
    ),
    (
        "book-conjurers-codex",
        "Loot Conjurer's Codex in the Blasted Lands.",
        [("BLASTED_LANDS", 55.4, 32.2, "Conjurer's Codex", "Travel to the Blasted Lands.")],
        None,
        None,
    ),
    (
        "book-liminal-arcane",
        "Loot The Liminal and the Arcane in Feralas.",
        [("FERALAS", 50.6, 15.7, "The Liminal and the Arcane", "Travel to northern Feralas.")],
        None,
        None,
    ),
    (
        "book-sanguine-sorcery",
        "Loot Sanguine Sorcery from the Temple of Atal'Hakkar ledge in the Swamp of Sorrows (outside the dungeon).",
        [("SWAMP_OF_SORROWS", 70.2, 51.9, "Sanguine Sorcery", "Travel to the Temple of Atal'Hakkar.")],
        None,
        None,
    ),
    (
        "book-luddite-demonic-pet",
        "Loot A Luddite's Guide to Caring for Your Demonic Pet from the cage in the Fallow Sanctuary.",
        [("SWAMP_OF_SORROWS", 61.0, 22.0, "A Luddite's Guide to Caring for Your Demonic Pet", "Travel to the Fallow Sanctuary.")],
        None,
        None,
    ),
    (
        "book-study-of-the-light",
        "Loot A Study of the Light inside Light's Hope Chapel in Eastern Plaguelands.",
        [("EPL", 71.8, 48.2, "A Study of the Light", "Travel to Light's Hope Chapel.")],
        None,
        None,
    ),
    (
        "book-knight-and-the-lady",
        "Loot The Knight and the Lady from the burnt house by the lake in Eastern Plaguelands.",
        [("EPL", 47.3, 42.3, "The Knight and the Lady", "Travel to the lake house.")],
        None,
        None,
    ),
    (
        "book-scourge-misunderstood",
        "Loot Scourge: Undead Menace or Misunderstood? from the table before the Stratholme bridge.",
        [("EPL", 26.6, 14.5, "Scourge: Undead Menace or Misunderstood?", "Travel to the Stratholme approach.")],
        None,
        None,
    ),
    (
        "book-necromancy-101",
        "Loot Necromancy 101 from the top floor near Scholomance in Western Plaguelands (outside the instance).",
        [("WPL", 69.18, 72.27, "Necromancy 101", "Travel to Caer Darrow.")],
        None,
        None,
    ),
    (
        "book-undead-potatoes",
        "Loot Undead Potatoes from Janice Felstone's farmhouse in Western Plaguelands.",
        [("WPL", 38.26, 54.62, "Undead Potatoes", "Travel to Felstone Field.")],
        None,
        None,
    ),
    (
        "book-venomous-journeys",
        "Loot Venomous Journeys from the pyramid wall in the Hinterlands.",
        [("HINTERLANDS", 35.8, 72.5, "Venomous Journeys", "Travel to the temple ruins.")],
        81954,
        None,
    ),
    (
        "book-northern-kalimdor-guide",
        "Loot Northern Kalimdor - A Comprehensive Guide inside Timbermaw Hold in Felwood.",
        [("FELWOOD", 65.1, 3.2, "Northern Kalimdor - A Comprehensive Guide", "Travel to Timbermaw Hold.")],
        None,
        None,
    ),
    (
        "book-ka-boom",
        "Loot Ka-Boom! from Everlook in Winterspring.",
        [("WINTER_SPRING", 60.4, 37.4, "Ka-Boom!", "Travel to Everlook.")],
        None,
        None,
    ),
    (
        "book-stonewrought-design",
        "Loot Stonewrought Design from Franclorn Forgewright's chamber in Blackrock Mountain (no dungeon entry).",
        [("BURNING_STEPPES", 31.1, 30.1, "Stonewrought Design", "Travel to Blackrock Mountain.")],
        81953,
        None,
    ),
    (
        "book-magma-or-lava",
        "Loot Magma or Lava? on the platform before the Blackrock Depths entrance in Blackrock Mountain.",
        [("BURNING_STEPPES", 31.1, 30.1, "Magma or Lava?", "Travel past the summoning stone toward Lothos Riftwaker.")],
        84396,
        None,
    ),
    (
        "book-mind-of-metal",
        "Loot A Mind of Metal from the tent in Searing Gorge.",
        [("SEARING_GORGE", 38.1, 49.8, "A Mind of Metal", "Travel to the Dark Iron camp.")],
        81955,
        None,
    ),
    (
        "book-everyday-etiquette",
        "Loot Everyday Etiquette north of the Azshara flight path.",
        [("AZSHARA", 20.4, 62.3, "Everyday Etiquette", "Travel north from the flight path.")],
        None,
        None,
    ),
    (
        "book-legends-tidesages",
        "Loot Legends of the Tidesages from Lost Rigger Cove in Tanaris.",
        [("TANARIS", 72.6, 47.8, "Legends of the Tidesages", "Travel to Lost Rigger Cove.")],
        None,
        None,
    ),
]

ALL_BY_ID = {entry[0]: entry for entry in BOOKS}

MILESTONE_SEQUENCE = [
    "book-theocritus-journal",
    "book-bewitchments-glamours",
    "book-rumi-collected-works",
    "book-goaz-scrolls",
    "book-crimes-against-anatomy",
    "book-runes-sorcerer-kings",
    "book-dalaran-digest",
    "book-arcanic-systems-manual",
    "book-secrets-dreamers",
    "book-baxtan-destructive-magics",
    "book-narthalas-almanac",
    "book-fury-of-the-land",
    "book-defensive-magics-101",
    "book-geomancy-stone-cold-truth",
    "book-basilisks-petrification",
    "book-rwlrwl",
    "book-web-of-lies",
    "book-demons-and-you",
    "book-mummies-unsavory-undead",
    "book-conjurers-codex",
    "book-sanguine-sorcery",
    "book-luddite-demonic-pet",
    "book-study-of-the-light",
    "book-knight-and-the-lady",
    "book-scourge-misunderstood",
]

EXTRA_SEQUENCE = [
    "book-antonidas-autobiography",
    "book-apothecary-primer",
    "book-lessons-tazo",
    "book-ataeric-arcane-curiosities",
    "book-liminal-arcane",
    "book-necromancy-101",
    "book-undead-potatoes",
    "book-venomous-journeys",
    "book-northern-kalimdor-guide",
    "book-ka-boom",
    "book-stonewrought-design",
    "book-magma-or-lava",
    "book-mind-of-metal",
    "book-everyday-etiquette",
    "book-legends-tidesages",
]

MILESTONES = [
    (10, 78150, "Friend of the Library", "accept-78150-friend-of-the-library", "turnin-78150-friend-of-the-library", None),
    (20, 79536, "Greater Friend of the Library", "accept-79536-greater-friend-ring", "turnin-79536-greater-friend-ring", None),
    (25, 82208, "Greater Friend of the Library", "accept-82208-greater-friend-bow", "turnin-82208-greater-friend-bow", "{ level = { min = 30 } }"),
]


def book_goal(step_id: str, text: str, pins: list, quest_id: int | None, cond: str | None, priority: int, depends: str | None) -> str:
    lines = [
        "        {",
        f'            id = "{step_id}",',
        '            kind = "note",',
        f"            priority = {priority},",
    ]
    if cond:
        lines.append(f"            conditions = {cond},")
    lines.append(f'            text = "{text}",')
    if depends:
        lines.append(f'            dependsOn = {{ "{depends}" }},')
    if quest_id:
        lines.append(f"            {quest_complete(quest_id)}")
    lines.append("            route = {")
    for pin in pins:
        lines.append(pt(*pin))
    lines.append("            },")
    lines.append("        },")
    return "\n".join(lines)


def quest_complete(qid: int) -> str:
    return f"complete = QuestState({qid}, \"completed\"),"


def milestone_block(after_id: str, accept_id: str, turnin_id: str, quest_id: int, title: str, level_cond: str | None, priority: int) -> str:
    cond = level_cond or None
    accept_lines = [
        "        {",
        f'            id = "{accept_id}",',
        '            kind = "accept",',
        f"            priority = {priority},",
    ]
    if cond:
        accept_lines.append(f"            conditions = {cond},")
    accept_lines.extend([
        f'            text = "Accept {title} from your faction librarian after enough book turn-ins.",',
        f'            dependsOn = {{ "{after_id}" }},',
        f"            complete = QuestState({quest_id}, \"activeOrCompleted\"),",
        "            route = {",
        '                Point(MAP.STORMWIND, 0.4900, 0.8630, "Garion Wendell",',
        '                    "Travel to Garion Wendell in Stormwind City."),',
        '                Point(MAP.UNDERCITY, 0.7400, 0.3250, "Owen Thadd",',
        '                    "Travel to Owen Thadd in Undercity."),',
        "            },",
        "        },",
    ])
    turnin_lines = [
        "        {",
        f'            id = "{turnin_id}",',
        '            kind = "turnin",',
        f"            priority = {priority + 1},",
    ]
    if cond:
        turnin_lines.append(f"            conditions = {cond},")
    turnin_lines.extend([
        f'            text = "Turn in {title} to Garion Wendell or Owen Thadd and choose your reward.",',
        f'            dependsOn = {{ "{accept_id}" }},',
        f"            complete = QuestState({quest_id}, \"completed\"),",
        "            useClientPin = true,",
        "            route = {",
        '                Point(MAP.STORMWIND, 0.3780, 0.8020, "Garion Wendell",',
        '                    "Travel to Garion Wendell in Stormwind City."),',
        '                Point(MAP.UNDERCITY, 0.7360, 0.3250, "Owen Thadd",',
        '                    "Travel to Owen Thadd in Undercity."),',
        "            },",
        "        },",
    ])
    return "\n".join(accept_lines + turnin_lines)


def main() -> None:
    goals: list[str] = []
    priority = 10
    prev_id: str | None = None
    milestone_idx = 0
    milestones = list(MILESTONES)

    for index, step_id in enumerate(MILESTONE_SEQUENCE, start=1):
        _, text, pins, qid, cond = ALL_BY_ID[step_id]
        goals.append(book_goal(step_id, text, pins, qid, cond, priority, prev_id))
        prev_id = step_id
        priority += 10
        while milestone_idx < len(milestones) and milestones[milestone_idx][0] == index:
            _, qid_m, title, accept_id, turnin_id, level_cond = milestones[milestone_idx]
            goals.append(milestone_block(prev_id, accept_id, turnin_id, qid_m, title, level_cond, priority))
            prev_id = turnin_id
            priority += 20
            milestone_idx += 1

    for step_id in EXTRA_SEQUENCE:
        _, text, pins, qid, cond = ALL_BY_ID[step_id]
        goals.append(book_goal(step_id, text, pins, qid, cond, priority, prev_id))
        prev_id = step_id
        priority += 10

    body = HEADER + f"""ns:RegisterGuide({{
    id = "misc-library-books",
    title = "Library Books",
    category = "Miscellaneous Guides",
    revision = 1,
    conditions = {{
        all = {{
            {{ level = {{ min = 1 }} }},
            BOTH_FACTIONS,
        }},
    }},
    goals = {{
{chr(10).join(goals)}
    }},
}})
"""
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(body, encoding="utf-8")
    print(f"Wrote {OUT} ({len(MILESTONE_SEQUENCE) + len(EXTRA_SEQUENCE)} books, {len(milestones)} milestone tiers)")


if __name__ == "__main__":
    main()
