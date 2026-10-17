local _, ns = ...

-- Forever dungeon quest list:
-- https://www.wowhead.com/forever/quests/dungeons/wailing-caverns
-- The guide level is the highest required level among those quests (15).
-- When Dreams Turn to Nightmares (999) and Waking Naralex (1500) remain in the
-- database but are not offered in Forever. The Disciple escort and Mutanus are
-- the dungeon finale without a quest log entry. The Glowing Shard still starts
-- from Mutanus.
-- Zone pins come from Forever. Nalpak and Ebru only have a Kalimdor pin beside
-- the cavern mouth, so they share Mad Magglish's Barrens entrance pin until
-- that cave is validated in Forever.

local MAP = {
    BARRENS = 1413,
    MULGORE = 1412,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
}

local HORDE = { faction = "Horde" }
local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }
local WAILING_CAVERNS = 43

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function EitherQuest(state, firstQuestID, secondQuestID)
    return { any = { QuestState(firstQuestID, state), QuestState(secondQuestID, state) } }
end

local function Point(mapID, x, y, label, offMapText, complete, flightTo)
    return {
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
        complete = complete,
        flightTo = flightTo,
    }
end

local function ThunderBluffRoute(x, y, label, offMapText)
    return {
        Point(MAP.BARRENS, 0.515, 0.303, "Take the flight path to Thunder Bluff.",
            "Take the flight path to Thunder Bluff.",
            { map = { MAP.ORGRIMMAR, MAP.MULGORE, MAP.THUNDER_BLUFF } },
            "Thunder Bluff"),
        Point(MAP.ORGRIMMAR, 0.451, 0.639, "Take the flight path to Thunder Bluff.",
            "Take the flight path to Thunder Bluff.",
            { map = { MAP.MULGORE, MAP.THUNDER_BLUFF } },
            "Thunder Bluff"),
        -- Southwest elevator. Wowhead pins it at 32, 65 on the Thunder Bluff map.
        -- Classic zone transforms put that shaft at about 36.3, 30.1 in Mulgore.
        Point(MAP.MULGORE, 0.363, 0.301, "Ride the southwest elevator up to Thunder Bluff.",
            "Travel through Mulgore and take the elevator up to Thunder Bluff.",
            { map = MAP.THUNDER_BLUFF }),
        Point(MAP.THUNDER_BLUFF, x, y, label, offMapText),
    }
end

ns:RegisterGuide({
    routeMode = "ordered",
    id = "dungeons-wailing-caverns",
    title = "Wailing Caverns",
    category = "Dungeon Quest Guides",
    revision = 2,
    conditions = {
        all = {
            { level = { min = 15 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            text = "Accept The Forgotten Pools from Tonga Runetotem.",
            id = "prerequisite-accept-870-the-forgotten-pools",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 870, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {  },
        },
        {
            id = "prerequisite-objective-870-forgotten-pools",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Explore the waters of the Forgotten Pools northwest of the Crossroads. Swim down to the bubbling fissure.",
            dependsOn = { "prerequisite-accept-870-the-forgotten-pools" },
            complete = QuestState(870, "complete"),
            useClientPin = true,
        },
        {
            text = "Turn in The Forgotten Pools to Tonga Runetotem.",
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            dependsOn = { "prerequisite-accept-870-the-forgotten-pools", "prerequisite-objective-870-forgotten-pools" },
            id = "prerequisite-turnin-870-the-forgotten-pools",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 870, state = "completed" },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            text = "Accept The Stagnant Oasis from Tonga Runetotem.",
            id = "prerequisite-accept-877-the-stagnant-oasis",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 877, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 870 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "prerequisite-turnin-870-the-forgotten-pools" },
        },
        {
            text = "Swim down to the Bubbling Fissure at the Stagnant Oasis and interact with it to test the Dried Seeds.",
            id = "prerequisite-objective-877-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 877, index = 1, count = 1 },
            },
            sourceStep = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 870 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "prerequisite-accept-877-the-stagnant-oasis" },
            route = {
                { mapID = 1413, x = 0.5561, y = 0.4274, label = "The Stagnant Oasis", offMapText = "Travel to The Stagnant Oasis." },
            },
        },
        {
            text = "Turn in The Stagnant Oasis to Tonga Runetotem.",
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            dependsOn = { "prerequisite-accept-877-the-stagnant-oasis", "prerequisite-objective-877-quest-work" },
            id = "prerequisite-turnin-877-the-stagnant-oasis",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 877, state = "completed" },
            },
            sourceStep = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 870 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            text = "Accept Altered Beings from Tonga Runetotem.",
            id = "prerequisite-accept-880-altered-beings",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 880, state = "activeOrCompleted" },
            },
            sourceStep = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 877 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "prerequisite-turnin-877-the-stagnant-oasis" },
        },
        {
            text = "Collect 8 Altered Snapjaw Shell.",
            route = {
                { y = 0.427, mapID = 1413, label = "Oasis Snapjaw", offMapText = "Travel to Oasis Snapjaw.", x = 0.5553 },
            },
            dependsOn = { "prerequisite-accept-880-altered-beings" },
            id = "prerequisite-objective-880-1-oasis-snapjaw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 880, text = "Oasis Snapjaw", index = 1, count = 8 },
            },
            sourceStep = 162,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 877 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Altered Beings to Tonga Runetotem.",
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            dependsOn = { "prerequisite-accept-880-altered-beings", "prerequisite-objective-880-1-oasis-snapjaw" },
            id = "prerequisite-turnin-880-altered-beings",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 880, state = "completed" },
            },
            sourceStep = 175,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 877 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "accept-hamuul-runetotem",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 880 } } },
            kind = "accept",
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Accept Hamuul Runetotem from Tonga Runetotem at the Crossroads. " ..
                "He offers it after Altered Beings.",
            taxiDestination = "Crossroads",
            complete = QuestState(1489, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.318, "Tonga Runetotem at the Crossroads",
                    "Travel to the Crossroads in the Barrens."),
            },
        },
        {
            id = "turnin-hamuul-runetotem",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 880 } } },
            kind = "turnin",
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Speak with Arch Druid Hamuul Runetotem on Elder Rise.",
            dependsOn = { "accept-hamuul-runetotem" },
            taxiDestination = "Thunder Bluff",
            complete = QuestState(1489, "completed"),
            route = ThunderBluffRoute(0.785, 0.285, "Arch Druid Hamuul Runetotem on Elder Rise",
                "Travel to Thunder Bluff and climb Elder Rise."),
        },
        {
            id = "accept-nara-wildmane",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 1489 } }, { conditions = { all = { { faction = "Horde" }, {  } } }, mode = "all", quests = { 1489 } } },
            kind = "accept",
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Accept Nara Wildmane from Arch Druid Hamuul Runetotem.",
            dependsOn = { "turnin-hamuul-runetotem" },
            taxiDestination = "Thunder Bluff",
            complete = QuestState(1490, "activeOrCompleted"),
            route = ThunderBluffRoute(0.785, 0.285, "Arch Druid Hamuul Runetotem on Elder Rise",
                "Travel to Thunder Bluff and climb Elder Rise."),
        },
        {
            id = "turnin-nara-wildmane",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 1489 } }, { conditions = { all = { { faction = "Horde" }, {  } } }, mode = "all", quests = { 1489 } } },
            kind = "turnin",
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Speak with Nara Wildmane in the tent beside Hamuul.",
            dependsOn = { "accept-nara-wildmane" },
            taxiDestination = "Thunder Bluff",
            complete = QuestState(1490, "completed"),
            route = ThunderBluffRoute(0.756, 0.310, "Nara Wildmane on Elder Rise",
                "Travel to Thunder Bluff and climb Elder Rise."),
        },
        {
            id = "accept-leaders-of-the-fang",
            requiredQuests = { { conditions = { all = { { faction = "Horde" }, {  } } }, mode = "all", quests = { 1490 } } },
            kind = "accept",
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Accept Leaders of the Fang from Nara Wildmane.",
            dependsOn = { "turnin-nara-wildmane" },
            taxiDestination = "Thunder Bluff",
            complete = QuestState(914, "activeOrCompleted"),
            route = ThunderBluffRoute(0.756, 0.310, "Nara Wildmane on Elder Rise",
                "Travel to Thunder Bluff and climb Elder Rise."),
        },
        {
            id = "accept-serpentbloom",
            kind = "accept",
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Accept Serpentbloom from Apothecary Zamah in the Pools of Vision. " ..
                "She offers it after you deliver Apothecary Zamah.",
            taxiDestination = "Thunder Bluff",
            complete = QuestState(962, "activeOrCompleted"),
            route = ThunderBluffRoute(0.230, 0.208, "Apothecary Zamah on Spirit Rise",
                "Travel to Thunder Bluff and enter the Pools of Vision on Spirit Rise."),
        },
        {
            id = "accept-smart-drinks",
            kind = "accept",
            conditions = { level = { min = 15 } },
            text = "Accept Smart Drinks from Mebok Mizzyrix in Ratchet.",
            taxiDestination = "Ratchet",
            complete = QuestState(1491, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.376, "Mebok Mizzyrix in Ratchet",
                    "Travel to Ratchet in the Barrens."),
            },
        },
        {
            id = "accept-trouble-at-the-docks",
            kind = "accept",
            conditions = { level = { min = 15 } },
            text = "Accept Trouble at the Docks from Crane Operator Bigglefuzz in Ratchet.",
            taxiDestination = "Ratchet",
            complete = QuestState(959, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.630, 0.376, "Crane Operator Bigglefuzz in Ratchet",
                    "Travel to Ratchet in the Barrens."),
            },
        },
        {
            id = "accept-deviate-hides",
            kind = "accept",
            conditions = { level = { min = 15 } },
            text = "Accept Deviate Hides from Nalpak in the cave above the Wailing Caverns portal.",
            complete = QuestState(1486, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.460, 0.364, "Nalpak above the Wailing Caverns portal",
                    "Travel to the Wailing Caverns in the northern Barrens and enter the cave above the portal."),
            },
        },
        {
            id = "accept-deviate-eradication",
            kind = "accept",
            conditions = { level = { min = 15 } },
            text = "Accept Deviate Eradication from Ebru in the same cave.",
            complete = QuestState(1487, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.460, 0.364, "Ebru above the Wailing Caverns portal",
                    "Travel to the Wailing Caverns in the northern Barrens and enter the cave above the portal."),
            },
        },
        {
            id = "enter-wailing-caverns",
            kind = "travel",
            text = "Enter Wailing Caverns through the portal below Nalpak and Ebru.",
            dependsOn = {
                "accept-hamuul-runetotem",
                "turnin-hamuul-runetotem",
                "accept-nara-wildmane",
                "turnin-nara-wildmane",
                "accept-leaders-of-the-fang",
                "accept-serpentbloom",
                "accept-smart-drinks",
                "accept-trouble-at-the-docks",
                "accept-deviate-hides",
                "accept-deviate-eradication",
            },
            complete = { instance = WAILING_CAVERNS },
            persistCompletion = true,
            route = {
                Point(MAP.BARRENS, 0.460, 0.364, "Wailing Caverns entrance",
                    "Travel to the Wailing Caverns in the northern Barrens and enter the cave above the portal."),
            },
        },
        {
            id = "complete-deviate-eradication",
            kind = "objective",
            conditions = { level = { min = 15 } },
            text = "Slay 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers, and 7 Deviate Dreadfangs.",
            dependsOn = { "enter-wailing-caverns" },
            complete = QuestState(1487, "complete"),
        },
        {
            id = "complete-deviate-hides",
            kind = "objective",
            conditions = { level = { min = 15 } },
            text = "Kill deviate beasts inside Wailing Caverns until you loot 20 Deviate Hides.",
            dependsOn = { "enter-wailing-caverns" },
            complete = QuestState(1486, "complete"),
        },
        {
            id = "complete-smart-drinks",
            kind = "objective",
            conditions = { level = { min = 15 } },
            text = "Collect 6 Wailing Essences from the ectoplasmic creatures.",
            dependsOn = { "enter-wailing-caverns" },
            complete = QuestState(1491, "complete"),
        },
        {
            id = "complete-trouble-at-the-docks",
            kind = "objective",
            conditions = { level = { min = 15 } },
            text = "Recover the 99-Year-Old Port from Mad Magglish.",
            dependsOn = { "enter-wailing-caverns" },
            complete = QuestState(959, "complete"),
        },
        {
            id = "complete-serpentbloom",
            kind = "objective",
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Loot 10 Serpentbloom from the green plants growing around the cavern pools.",
            dependsOn = { "enter-wailing-caverns" },
            complete = QuestState(962, "complete"),
        },
        {
            id = "complete-leaders-of-the-fang",
            requiredQuests = { { conditions = { all = { { faction = "Horde" }, {  } } }, mode = "all", quests = { 1490 } } },
            kind = "objective",
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Collect the gems from Lady Anacondra, Lord Cobrahn, Lord Pythas, and Lord Serpentis.",
            dependsOn = { "enter-wailing-caverns" },
            complete = QuestState(914, "complete"),
        },
        {
            id = "accept-glowing-shard",
            kind = "accept",
            text = "Use the Glowing Shard dropped by Mutanus the Devourer to accept The Glowing Shard.",
            dependsOn = { "enter-wailing-caverns" },
            complete = EitherQuest("activeOrCompleted", 6981, 3366),
        },
        {
            id = "speak-about-glowing-shard",
            kind = "objective",
            text = "Ask Sputtervalve in Ratchet about the Glowing Shard.",
            dependsOn = { "accept-glowing-shard" },
            taxiDestination = "Ratchet",
            complete = EitherQuest("complete", 6981, 3366),
            route = {
                Point(MAP.BARRENS, 0.630, 0.372, "Sputtervalve in Ratchet",
                    "Travel to Ratchet in the Barrens."),
            },
        },
        {
            id = "turnin-glowing-shard",
            kind = "turnin",
            text = "Deliver the Glowing Shard to Falla Sagewind outside Wailing Caverns.",
            dependsOn = { "speak-about-glowing-shard" },
            complete = EitherQuest("completed", 6981, 3366),
            route = {
                Point(MAP.BARRENS, 0.482, 0.328, "Falla Sagewind outside Wailing Caverns",
                    "Travel to Falla Sagewind in the northern Barrens."),
            },
        },
        {
            id = "turnin-deviate-hides",
            kind = "turnin",
            conditions = { level = { min = 15 } },
            text = "Bring the Deviate Hides back to Nalpak.",
            dependsOn = { "complete-deviate-hides" },
            complete = QuestState(1486, "completed"),
            route = {
                Point(MAP.BARRENS, 0.460, 0.364, "Nalpak above the Wailing Caverns portal",
                    "Travel to the Wailing Caverns in the northern Barrens and enter the cave above the portal."),
            },
        },
        {
            id = "turnin-deviate-eradication",
            kind = "turnin",
            conditions = { level = { min = 15 } },
            text = "Return to Ebru and turn in Deviate Eradication.",
            dependsOn = { "complete-deviate-eradication" },
            complete = QuestState(1487, "completed"),
            route = {
                Point(MAP.BARRENS, 0.460, 0.364, "Ebru above the Wailing Caverns portal",
                    "Travel to the Wailing Caverns in the northern Barrens and enter the cave above the portal."),
            },
        },
        {
            id = "turnin-smart-drinks",
            kind = "turnin",
            conditions = { level = { min = 15 } },
            text = "Bring the Wailing Essences to Mebok Mizzyrix in Ratchet.",
            dependsOn = { "complete-smart-drinks" },
            taxiDestination = "Ratchet",
            complete = QuestState(1491, "completed"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.376, "Mebok Mizzyrix in Ratchet",
                    "Travel to Ratchet in the Barrens."),
            },
        },
        {
            id = "turnin-trouble-at-the-docks",
            kind = "turnin",
            conditions = { level = { min = 15 } },
            text = "Return the 99-Year-Old Port to Crane Operator Bigglefuzz in Ratchet.",
            dependsOn = { "complete-trouble-at-the-docks" },
            taxiDestination = "Ratchet",
            complete = QuestState(959, "completed"),
            route = {
                Point(MAP.BARRENS, 0.630, 0.376, "Crane Operator Bigglefuzz in Ratchet",
                    "Travel to Ratchet in the Barrens."),
            },
        },
        {
            id = "turnin-serpentbloom",
            kind = "turnin",
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Bring the Serpentbloom to Apothecary Zamah in Thunder Bluff.",
            dependsOn = { "complete-serpentbloom" },
            taxiDestination = "Thunder Bluff",
            complete = QuestState(962, "completed"),
            route = ThunderBluffRoute(0.230, 0.208, "Apothecary Zamah on Spirit Rise",
                "Travel to Thunder Bluff and enter the Pools of Vision on Spirit Rise."),
        },
        {
            id = "turnin-leaders-of-the-fang",
            requiredQuests = { { conditions = { all = { { faction = "Horde" }, {  } } }, mode = "all", quests = { 1490 } } },
            kind = "turnin",
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Bring the four dream gems to Nara Wildmane in Thunder Bluff.",
            dependsOn = { "complete-leaders-of-the-fang" },
            taxiDestination = "Thunder Bluff",
            complete = QuestState(914, "completed"),
            route = ThunderBluffRoute(0.756, 0.310, "Nara Wildmane on Elder Rise",
                "Travel to Thunder Bluff and climb Elder Rise."),
        },
    },
})
