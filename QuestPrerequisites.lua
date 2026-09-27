local _, ns = ...

-- Verified quest-chain edges used by leveling and Loremaster recovery. Dungeon
-- guides intentionally keep their focused pickup lists and are not augmented.
-- Add entries only after verifying the chain in the Forever client or an
-- authoritative quest source.
ns:RegisterQuestPrerequisite({
    quest = 1489,
    mode = "all",
    quests = { 880 },
    conditions = { faction = "Horde" },
    note = "Hamuul Runetotem is offered after Altered Beings.",
})

ns:RegisterQuestPrerequisite({
    quest = 1490,
    mode = "all",
    quests = { 1489 },
    conditions = { faction = "Horde" },
    note = "Nara Wildmane is offered after Hamuul Runetotem.",
})

ns:RegisterQuestPrerequisite({
    quest = 91209,
    mode = "all",
    quests = { 91208 },
    conditions = {
        all = {
            { faction = "Horde" },
            { race = 5 },
            { class = 2 },
        },
    },
    note = "Continue Your Training is offered after Coming to Terms.",
})

ns:RegisterQuestPrerequisite({
    quest = 5727,
    mode = "all",
    quests = { 5726 },
    conditions = { faction = "Horde" },
    note = "Thrall's Hidden Enemies follow-up is offered after the Lieutenant's Insignia is returned.",
})
