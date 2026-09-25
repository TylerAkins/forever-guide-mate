local _, ns = ...

-- Horde Era leveling route for Azshara, levels 50-50.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    AZSHARA = 1447,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
    UNDERCITY = 1458,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index)
    return { questObjective = { id = questID, index = index } }
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

ns:RegisterGuide({
    id = "leveling-era-50-50-azshara",
    title = "50-50 Azshara (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 50 } },
        },
    },
    goals = {
        {
            id = "note-3517-orgrimmar",
            kind = "note",
            priority = 20,
            text = "Set your hearth in Orgrimmar with Innkeeper Gryshka.",
            route = {
                Point(MAP.ORGRIMMAR, 0.5410, 0.6860, "Innkeeper Gryshka",
                    "Travel to Innkeeper Gryshka."),
            },
        },
        {
            id = "accept-3517-stealing-knowledge",
            kind = "accept",
            priority = 40,
            text = "Accept Stealing Knowledge from Jediga in Valormok.",
            complete = QuestState(3517, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2253, 0.5140, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "objective-3517-3-tablet-of-markri",
            kind = "objective",
            priority = 50,
            text = "Collect Tablet of Markri from the ground in Ruins of Eldarath it spawns randomly around the area.",
            dependsOn = { "accept-3517-stealing-knowledge" },
            complete = QuestObjective(3517, 3),
            route = {
                Point(MAP.AZSHARA, 0.3573, 0.5656, "Ruins of Eldarath",
                    "Travel to Ruins of Eldarath."),
            },
        },
        {
            id = "objective-3517-4-tablet-of-sael-hai",
            kind = "objective",
            priority = 60,
            text = "Collect Tablet of Sael'hai from the ground in Ruins of Eldarath it spawns randomly around the area.",
            dependsOn = { "accept-3517-stealing-knowledge" },
            complete = QuestObjective(3517, 4),
            route = {
                Point(MAP.AZSHARA, 0.3956, 0.4817, "Ruins of Eldarath",
                    "Travel to Ruins of Eldarath."),
            },
        },
        {
            id = "objective-3517-1-tablet-of-beth-amara",
            kind = "objective",
            priority = 70,
            text = "Collect Tablet of Beth'Amara from the ground in Ruins of Eldarath it spawns randomly around the area.",
            dependsOn = { "accept-3517-stealing-knowledge" },
            complete = QuestObjective(3517, 1),
            route = {
                Point(MAP.AZSHARA, 0.3920, 0.5240, "Ruins of Eldarath",
                    "Travel to Ruins of Eldarath."),
            },
        },
        {
            id = "objective-3517-2-tablet-of-jin-yael",
            kind = "objective",
            priority = 80,
            text = "Collect Tablet of Jin'yael from the ground in Ruins of Eldarath it spawns randomly around the area.",
            dependsOn = { "accept-3517-stealing-knowledge" },
            complete = QuestObjective(3517, 2),
            route = {
                Point(MAP.AZSHARA, 0.3738, 0.6066, "Ruins of Eldarath",
                    "Travel to Ruins of Eldarath."),
            },
        },
        {
            id = "objective-3568-1-filled-vial-labeled-1",
            kind = "objective",
            priority = 90,
            text = "Use Empty Vial Labeled #1 in the pool to collect Filled Vial Labeled #1 at Southridge Beach.",
            complete = QuestObjective(3568, 1),
            route = {
                Point(MAP.AZSHARA, 0.4774, 0.6103, "Southridge Beach",
                    "Travel to Southridge Beach."),
            },
        },
        {
            id = "objective-3568-2-filled-vial-labeled-2",
            kind = "objective",
            priority = 100,
            text = "Use Empty Vial Labeled #2 in the pool to collect Filled Vial Labeled #2 at Southridge Beach.",
            complete = QuestObjective(3568, 2),
            route = {
                Point(MAP.AZSHARA, 0.4790, 0.5143, "Southridge Beach",
                    "Travel to Southridge Beach."),
            },
        },
        {
            id = "objective-3568-3-filled-vial-labeled-3",
            kind = "objective",
            priority = 110,
            text = "Use Empty Vial Labeled #3 in the pool to collect Filled Vial Labeled #3 at The Shattered Strand.",
            complete = QuestObjective(3568, 3),
            route = {
                Point(MAP.AZSHARA, 0.4863, 0.4853, "The Shattered Strand",
                    "Travel to The Shattered Strand."),
            },
        },
        {
            id = "objective-3568-4-filled-vial-labeled-4",
            kind = "objective",
            priority = 120,
            text = "Use Empty Vial Labeled #4 in the pool to collect Filled Vial Labeled #4 at The Shattered Strand.",
            complete = QuestObjective(3568, 4),
            route = {
                Point(MAP.AZSHARA, 0.4738, 0.4628, "The Shattered Strand",
                    "Travel to The Shattered Strand."),
            },
        },
        {
            id = "turnin-3517-stealing-knowledge",
            kind = "turnin",
            priority = 140,
            text = "Turn in Stealing Knowledge to Jediga in Valormok.",
            dependsOn = { "objective-3517-3-tablet-of-markri", "objective-3517-4-tablet-of-sael-hai", "objective-3517-1-tablet-of-beth-amara", "objective-3517-2-tablet-of-jin-yael" },
            complete = QuestState(3517, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2256, 0.5141, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "accept-3518-delivery-to-magatha",
            kind = "accept",
            priority = 150,
            text = "Accept Delivery to Magatha from Jediga in Valormok.",
            complete = QuestState(3518, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2256, 0.5141, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "accept-3541-delivery-to-jes-rimon",
            kind = "accept",
            priority = 160,
            text = "Accept Delivery to Jes'rimon from Jediga in Valormok.",
            complete = QuestState(3541, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2256, 0.5141, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "accept-3542-delivery-to-andron-gant",
            kind = "accept",
            priority = 170,
            text = "Accept Delivery to Andron Gant from Jediga in Valormok.",
            complete = QuestState(3542, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2256, 0.5141, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "accept-3561-delivery-to-archmage-xylem",
            kind = "accept",
            priority = 180,
            text = "Accept Delivery to Archmage Xylem from Jediga in Valormok.",
            complete = QuestState(3561, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2256, 0.5141, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "objective-3565-sanath-lim-yo",
            kind = "objective",
            priority = 190,
            text = "Speak to Sanath Lim-yo to teleport up to Bear's Head.",
            dependsOn = { "accept-3565-xylem-s-payment-to-jediga" },
            complete = QuestState(3565, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.2812, 0.5008, "Sanath Lim-yo",
                    "Travel to Sanath Lim-yo."),
            },
        },
        {
            id = "turnin-3561-delivery-to-archmage-xylem",
            kind = "turnin",
            priority = 200,
            text = "Turn in Delivery to Archmage Xylem to Archmage Xylem in Bear's Head.",
            dependsOn = { "accept-3561-delivery-to-archmage-xylem" },
            complete = QuestState(3561, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2689, 0.4302, "Continue toward Delivery to Archmage Xylem",
                    "Continue toward Delivery to Archmage Xylem."),
                Point(MAP.AZSHARA, 0.2972, 0.4049, "Archmage Xylem",
                    "Travel to Archmage Xylem."),
            },
        },
        {
            id = "accept-3565-xylem-s-payment-to-jediga",
            kind = "accept",
            priority = 210,
            text = "Accept Xylem's Payment to Jediga from Archmage Xylem in Bear's Head.",
            complete = QuestState(3565, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2972, 0.4049, "Archmage Xylem",
                    "Travel to Archmage Xylem."),
            },
        },
        {
            id = "objective-3565-nyrill",
            kind = "objective",
            priority = 220,
            text = "Speak to Nyrill to teleport down.",
            dependsOn = { "accept-3565-xylem-s-payment-to-jediga" },
            complete = QuestState(3565, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.2646, 0.4625, "Nyrill",
                    "Travel to Nyrill."),
            },
        },
        {
            id = "turnin-3565-xylem-s-payment-to-jediga",
            kind = "turnin",
            priority = 240,
            text = "Turn in Xylem's Payment to Jediga to Jediga in Valormok.",
            dependsOn = { "objective-3565-sanath-lim-yo", "objective-3565-nyrill" },
            complete = QuestState(3565, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2258, 0.5143, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "turnin-3518-delivery-to-magatha",
            kind = "turnin",
            priority = 260,
            text = "Turn in Delivery to Magatha to Magatha Grimtotem in Elder Rise.",
            dependsOn = { "accept-3518-delivery-to-magatha" },
            complete = QuestState(3518, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6984, 0.3088, "Magatha Grimtotem",
                    "Travel to Magatha Grimtotem."),
            },
        },
        {
            id = "accept-3562-magatha-s-payment-to-jediga",
            kind = "accept",
            priority = 270,
            text = "Accept Magatha's Payment to Jediga from Magatha Grimtotem in Elder Rise.",
            complete = QuestState(3562, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6984, 0.3088, "Magatha Grimtotem",
                    "Travel to Magatha Grimtotem."),
            },
        },
        {
            id = "accept-4494-march-of-the-silithid",
            kind = "accept",
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 32, state = "completed" } },
                },
            },
            text = "Accept March of the Silithid from Zilzibin Drumlore in The Drag.",
            complete = QuestState(4494, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.5639, 0.4654, "Zilzibin Drumlore",
                    "Travel to Zilzibin Drumlore."),
            },
        },
        {
            id = "turnin-3541-delivery-to-jes-rimon",
            kind = "turnin",
            priority = 300,
            text = "Turn in Delivery to Jes'rimon to Jes'rimon in The Drag.",
            dependsOn = { "accept-3541-delivery-to-jes-rimon" },
            complete = QuestState(3541, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.5548, 0.3413, "Jes'rimon",
                    "Travel to Jes'rimon."),
            },
        },
        {
            id = "accept-3563-jes-rimon-s-payment-to-jediga",
            kind = "accept",
            priority = 310,
            text = "Accept Jes'rimon's Payment to Jediga from Jes'rimon in The Drag.",
            complete = QuestState(3563, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.5548, 0.3413, "Jes'rimon",
                    "Travel to Jes'rimon."),
            },
        },
        {
            id = "accept-4300-bone-bladed-weapons",
            kind = "accept",
            priority = 320,
            text = "Accept Bone-Bladed Weapons from Jes'rimon in The Drag.",
            complete = QuestState(4300, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.5567, 0.3421, "Jes'rimon",
                    "Travel to Jes'rimon."),
            },
        },
        {
            id = "turnin-3542-delivery-to-andron-gant",
            kind = "turnin",
            priority = 340,
            text = "Turn in Delivery to Andron Gant to Andron Gant in The Apothecarium.",
            dependsOn = { "accept-3542-delivery-to-andron-gant" },
            complete = QuestState(3542, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.5484, 0.7631, "Andron Gant",
                    "Travel to Andron Gant."),
            },
        },
        {
            id = "accept-3564-andron-s-payment-to-jediga",
            kind = "accept",
            priority = 350,
            text = "Accept Andron's Payment to Jediga from Andron Gant in The Apothecarium.",
            complete = QuestState(3564, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.5484, 0.7631, "Andron Gant",
                    "Travel to Andron Gant."),
            },
        },
        {
            id = "turnin-3568-seeping-corruption",
            kind = "turnin",
            priority = 360,
            text = "Turn in Seeping Corruption to Chemist Cuely in The Apothecarium.",
            dependsOn = { "objective-3568-1-filled-vial-labeled-1", "objective-3568-2-filled-vial-labeled-2", "objective-3568-3-filled-vial-labeled-3", "objective-3568-4-filled-vial-labeled-4" },
            complete = QuestState(3568, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.5209, 0.8040, "Continue toward Seeping Corruption",
                    "Continue toward Seeping Corruption."),
                Point(MAP.UNDERCITY, 0.4751, 0.7573, "Continue toward Seeping Corruption",
                    "Continue toward Seeping Corruption."),
                Point(MAP.UNDERCITY, 0.4870, 0.7160, "Chemist Cuely",
                    "Travel to Chemist Cuely."),
            },
        },
        {
            id = "accept-3569-seeping-corruption",
            kind = "accept",
            priority = 370,
            text = "Accept Seeping Corruption from Chemist Cuely in The Apothecarium.",
            complete = QuestState(3569, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4876, 0.7164, "Chemist Cuely",
                    "Travel to Chemist Cuely."),
            },
        },
        {
            id = "turnin-3569-seeping-corruption",
            kind = "turnin",
            priority = 380,
            text = "Turn in Seeping Corruption to Thersa Windsong in The Apothecarium.",
            dependsOn = { "accept-3569-seeping-corruption" },
            complete = QuestState(3569, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.4909, 0.7068, "Thersa Windsong",
                    "Travel to Thersa Windsong."),
            },
        },
        {
            id = "accept-4133-vivian-lagrave",
            kind = "accept",
            priority = 390,
            text = "Accept Vivian Lagrave from Apothecary Zinge in The Apothecarium.",
            complete = QuestState(4133, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4992, 0.6823, "Apothecary Zinge",
                    "Travel to Apothecary Zinge."),
            },
        },
        {
            id = "accept-4293-a-sample-of-slime",
            kind = "accept",
            priority = 400,
            text = "Accept A Sample of Slime... from Chemist Fuely in The Apothecarium.",
            complete = QuestState(4293, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4746, 0.7330, "Chemist Fuely",
                    "Travel to Chemist Fuely."),
            },
        },
        {
            id = "accept-4294-and-a-batch-of-ooze",
            kind = "accept",
            priority = 410,
            text = "Accept ... and a Batch of Ooze from Chemist Fuely in The Apothecarium.",
            complete = QuestState(4294, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4746, 0.7330, "Chemist Fuely",
                    "Travel to Chemist Fuely."),
            },
        },
    },
})
