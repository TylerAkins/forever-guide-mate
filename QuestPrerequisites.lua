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
    quest = 94773,
    mode = "all",
    quests = { 94774 },
    conditions = { all = { { faction = "Alliance" }, { race = 1 }, { class = 5 } } },
    note = "Laurena's Divine Grace follows Priestess Josetta's handoff.",
})

ns:RegisterQuestPrerequisite({
    quest = 94863,
    mode = "all",
    quests = { 94792 },
    conditions = { all = { { faction = "Alliance" }, { class = 3 } } },
    note = "Goldshire Taming the Beast continues in quest order.",
})

ns:RegisterQuestPrerequisite({
    quest = 94864,
    mode = "all",
    quests = { 94863 },
    conditions = { all = { { faction = "Alliance" }, { class = 3 } } },
    note = "Goldshire Taming the Beast continues in quest order.",
})

ns:RegisterQuestPrerequisite({
    quest = 94793,
    mode = "all",
    quests = { 94864 },
    conditions = { all = { { faction = "Alliance" }, { class = 3 } } },
    note = "Training the Beast follows the last Goldshire tame.",
})

ns:RegisterQuestPrerequisite({
    quest = 94374,
    mode = "all",
    quests = { 94373 },
    conditions = { all = { { faction = "Alliance" }, { class = 7 } } },
    note = "Coldridge Call of Earth continues at the earth shrine.",
})

ns:RegisterQuestPrerequisite({
    quest = 94375,
    mode = "all",
    quests = { 94374 },
    conditions = { all = { { faction = "Alliance" }, { class = 7 } } },
    note = "Coldridge Call of Earth returns to Teo Hammerstorm.",
})

ns:RegisterQuestPrerequisite({
    quest = 94465,
    mode = "all",
    quests = { 94449 },
    conditions = { all = { { faction = "Alliance" }, { class = 7 } } },
    note = "Call of Fire continues from Bruegs Kindleborn.",
})

ns:RegisterQuestPrerequisite({
    quest = 94817,
    mode = "all",
    quests = { 94824 },
    conditions = { all = { { faction = "Alliance" }, { race = 7 }, { class = 5 } } },
    note = "High Priestess Mims continues Confounding Flash.",
})

ns:RegisterQuestPrerequisite({
    quest = 94913,
    mode = "all",
    quests = { 94911 },
    conditions = { all = { { faction = "Horde" }, { race = 96 } } },
    note = "Skyborne Moonglade follows Child of Nature.",
})

ns:RegisterQuestPrerequisite({
    quest = 91282,
    mode = "all",
    quests = { 91209 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Second Home is offered by Shari Stilwell after Continue Your Training.",
})

ns:RegisterQuestPrerequisite({
    quest = 91285,
    mode = "all",
    quests = { 91282 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "Murlocs at the Gates follows A Second Home.",
})

ns:RegisterQuestPrerequisite({
    quest = 91294,
    mode = "all",
    quests = { 91285 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "Touring the Grounds follows Murlocs at the Gates.",
})

ns:RegisterQuestPrerequisite({
    quest = 91317,
    mode = "all",
    quests = { 91294 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "The Tarnished follows Touring the Grounds.",
})

ns:RegisterQuestPrerequisite({
    quest = 95803,
    mode = "all",
    quests = { 91317 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Token of Good Faith follows The Tarnished.",
})

ns:RegisterQuestPrerequisite({
    quest = 94427,
    mode = "all",
    quests = { 91317 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity follows The Tarnished.",
})

ns:RegisterQuestPrerequisite({
    quest = 94434,
    mode = "all",
    quests = { 94427 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity continues with Tanis Alderwood.",
})

ns:RegisterQuestPrerequisite({
    quest = 94435,
    mode = "all",
    quests = { 94434 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity returns to Danitha Morr.",
})

ns:RegisterQuestPrerequisite({
    quest = 94436,
    mode = "all",
    quests = { 94435 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity continues with Deathguard Billmuth.",
})

ns:RegisterQuestPrerequisite({
    quest = 94438,
    mode = "all",
    quests = { 94436 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity continues with Deathguard Falgan.",
})

ns:RegisterQuestPrerequisite({
    quest = 94440,
    mode = "all",
    quests = { 94438 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity continues from Deathguard Falgan.",
})

ns:RegisterQuestPrerequisite({
    quest = 94441,
    mode = "all",
    quests = { 94440 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "A Lesson in Divinity returns to Danitha Morr.",
})

ns:RegisterQuestPrerequisite({
    quest = 5727,
    mode = "all",
    quests = { 5726 },
    conditions = { faction = "Horde" },
    note = "Thrall's Hidden Enemies follow-up is offered after the Lieutenant's Insignia is returned.",
})

ns:RegisterQuestPrerequisite({
    quest = 430,
    mode = "all",
    quests = { 429 },
    conditions = { faction = "Horde" },
    note = "Return to Quinn is offered after Wild Hearts is turned in to Apothecary Renferrel.",
})

ns:RegisterQuestPrerequisite({
    quest = 91920,
    mode = "all",
    quests = { 430 },
    conditions = { faction = "Horde" },
    note = "Wild Eyes is offered after the minor potion is delivered to Quinn Yorick.",
})

ns:RegisterQuestPrerequisite({
    quest = 91921,
    mode = "all",
    quests = { 91920 },
    conditions = { faction = "Horde" },
    note = "Return to Quinn (Again) is offered after Wild Eyes is turned in to Apothecary Renferrel.",
})

ns:RegisterQuestPrerequisite({
    quest = 425,
    mode = "all",
    quests = { 91921 },
    conditions = { faction = "Horde" },
    note = "Ivar the Foul is offered after Quinn Yorick receives the second potion.",
})

ns:RegisterQuestPrerequisite({
    quest = 98298,
    mode = "all",
    quests = { 99 },
    conditions = { faction = "Horde" },
    note = "Dalar's worgen follow-up is offered after Pyrewood Village is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 98299,
    mode = "all",
    quests = { 98298 },
    conditions = { faction = "Horde" },
    note = "Stop the Spread is offered after the worgen bits are turned in to Dalar Dawnweaver.",
})

ns:RegisterQuestPrerequisite({
    quest = 95774,
    mode = "all",
    quests = { 4921 },
    conditions = { faction = "Horde" },
    note = "Her Name Is Olgra is offered after Lost in Battle is turned in to Mankrik.",
})

ns:RegisterQuestPrerequisite({
    quest = 99156,
    mode = "all",
    quests = { 356 },
    conditions = { faction = "Horde" },
    note = "Linnea's abomination report is offered after Rear Guard Patrol is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 2519,
    mode = "all",
    quests = { 98391 },
    conditions = { faction = "Alliance" },
    note = "The Temple of the Moon is offered after The Sisterhood of Elune is turned in to Sister Aquinne.",
})

ns:RegisterQuestPrerequisite({
    quest = 99142,
    mode = "all",
    quests = { 5482 },
    conditions = { faction = "Horde" },
    note = "Tomb Weed is offered after Doom Weed is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 95125,
    mode = "all",
    quests = { 95111 },
    conditions = { all = { { faction = "Horde" }, { race = 5 }, { class = 2 } } },
    note = "Ott's Masterwork is offered after An Underrated Talent delivers the smithing materials.",
})

ns:RegisterQuestPrerequisite({
    quest = 99152,
    mode = "all",
    quests = { 96899 },
    conditions = { faction = "Horde" },
    note = "As Above, So Below is offered after Bandarion Keep is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 99153,
    mode = "all",
    quests = { 96899 },
    conditions = { faction = "Horde" },
    note = "The One That Got Away is offered after Bandarion Keep is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 95981,
    mode = "all",
    quests = { 479 },
    conditions = { faction = "Horde" },
    note = "Watching the Roads is offered after Ambermill Investigations is turned in.",
})

ns:RegisterQuestPrerequisite({
    quest = 480,
    mode = "all",
    quests = { 95981 },
    conditions = { faction = "Horde" },
    note = "The Weaver is offered after Watching the Roads is turned in.",
})

-- Sergra Darkthorn at the Crossroads. Classic series verified on Warcraft Wiki
-- (The Zhevra, Echeyakee, Jorn Skyseer): each quest is offered only after the
-- previous one is turned in.
ns:RegisterQuestPrerequisite({
    quest = 845,
    mode = "all",
    quests = { 844 },
    conditions = { faction = "Horde" },
    note = "The Zhevra is offered after Plainstrider Menace.",
})

ns:RegisterQuestPrerequisite({
    quest = 903,
    mode = "all",
    quests = { 845 },
    conditions = { faction = "Horde" },
    note = "Prowlers of the Barrens is offered after The Zhevra.",
})

ns:RegisterQuestPrerequisite({
    quest = 881,
    mode = "all",
    quests = { 903 },
    conditions = { faction = "Horde" },
    note = "Echeyakee is offered after Prowlers of the Barrens.",
})

ns:RegisterQuestPrerequisite({
    quest = 905,
    mode = "all",
    quests = { 881 },
    conditions = { faction = "Horde" },
    note = "The Angry Scytheclaws is offered after Echeyakee.",
})

ns:RegisterQuestPrerequisite({
    quest = 3261,
    mode = "all",
    quests = { 905 },
    conditions = { faction = "Horde" },
    note = "Jorn Skyseer is offered after The Angry Scytheclaws.",
})

