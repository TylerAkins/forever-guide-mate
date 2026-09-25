local _, ns = ...

-- Horde Era leveling route for Durotar, levels 1-12.
-- Forever quests from the Durotar and Orgrimmar lists are woven into this route.
-- Left out on purpose: Exploring the Horde and Welcome to Azeroth are Skyborne.
-- Orgrimmar cooking quests are level 15, past this route.
-- Crafting lessons stay on the profession. Drop quests appear only after the item starts them.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DUROTAR = 1411,
    ORGRIMMAR = 1454,
}

local SKILL = {
    BLACKSMITHING = 164,
    LEATHERWORKING = 165,
    ENCHANTING = 333,
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
    id = "leveling-era-1-12-durotar",
    title = "1-12 Durotar",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-4641-your-place-in-the-world",
            kind = "accept",
            priority = 10,
            text = "Accept Your Place In The World from Kaltunk in Valley of Trials.",
            complete = QuestState(4641, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4329, 0.6861, "Kaltunk",
                    "Travel to Kaltunk."),
            },
        },
        {
            id = "accept-1485-vile-familiars",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Vile Familiars from Ruzan in Valley of Trials.",
            complete = QuestState(1485, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4261, 0.6879, "Ruzan",
                    "Travel to Ruzan."),
            },
        },
        {
            id = "turnin-4641-your-place-in-the-world",
            kind = "turnin",
            priority = 30,
            text = "Turn in Your Place In The World to Gornek in The Den.",
            dependsOn = { "accept-4641-your-place-in-the-world" },
            complete = QuestState(4641, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-788-cutting-teeth",
            kind = "accept",
            priority = 40,
            text = "Accept Cutting Teeth from Gornek in The Den.",
            complete = QuestState(788, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-97279-wayward-weapons",
            kind = "accept",
            priority = 41,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Wayward Weapons from Gornek in The Den.",
            complete = QuestState(97279, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "objective-788-cutting-teeth",
            kind = "objective",
            priority = 50,
            text = "Kill 10 Mottled Boar in the Valley of Trials.",
            dependsOn = { "accept-788-cutting-teeth" },
            complete = QuestState(788, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4450, 0.6610, "Mottled Boar",
                    "Travel to Mottled Boar."),
            },
        },
        {
            id = "objective-97279-wayward-weapons",
            kind = "objective",
            priority = 51,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { race = { 2, 8 } },
                },
            },
            useClientPin = true,
            text = "Collect 6 Abandoned Training Weapons around the Valley of Trials. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "accept-97279-wayward-weapons" },
            complete = QuestState(97279, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Valley of Trials",
                    "Travel to Valley of Trials."),
            },
        },
        {
            id = "objective-1485-vile-familiars",
            kind = "objective",
            priority = 60,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Kill Vile Familiar and collect 6 Vile Familiar Head in Valley of Trials.",
            dependsOn = { "accept-1485-vile-familiars" },
            complete = QuestState(1485, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4499, 0.5694, "Vile Familiar",
                    "Travel to Vile Familiar."),
            },
        },
        {
            id = "turnin-1485-vile-familiars",
            kind = "turnin",
            priority = 70,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Vile Familiars to Ruzan in Valley of Trials.",
            dependsOn = { "objective-1485-vile-familiars" },
            complete = QuestState(1485, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4261, 0.6900, "Ruzan",
                    "Travel to Ruzan."),
            },
        },
        {
            id = "accept-1499-vile-familiars",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Vile Familiars from Ruzan in Valley of Trials.",
            complete = QuestState(1499, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4261, 0.6900, "Ruzan",
                    "Travel to Ruzan."),
            },
        },
        {
            id = "turnin-1499-vile-familiars",
            kind = "turnin",
            priority = 90,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Vile Familiars to Zureetha Fargaze in Valley of Trials.",
            dependsOn = { "accept-1499-vile-familiars" },
            complete = QuestState(1499, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4283, 0.6910, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "turnin-788-cutting-teeth",
            kind = "turnin",
            priority = 100,
            text = "Turn in Cutting Teeth to Gornek in The Den.",
            dependsOn = { "objective-788-cutting-teeth" },
            complete = QuestState(788, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "turnin-97279-wayward-weapons",
            kind = "turnin",
            priority = 105,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Wayward Weapons to Kzan Thornslash in The Den.",
            dependsOn = { "objective-97279-wayward-weapons" },
            complete = QuestState(97279, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4040, 0.6800, "Kzan Thornslash",
                    "Travel to Kzan Thornslash."),
            },
        },
        {
            id = "accept-789-sting-of-the-scorpid",
            kind = "accept",
            priority = 110,
            text = "Accept Sting of the Scorpid from Gornek in The Den.",
            complete = QuestState(789, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3087-etched-parchment",
            kind = "accept",
            priority = 120,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 2 },
                },
            },
            text = "Accept Etched Parchment from Gornek in The Den.",
            complete = QuestState(3087, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3082-etched-tablet",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 8 },
                },
            },
            text = "Accept Etched Tablet from Gornek in The Den.",
            complete = QuestState(3082, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3084-rune-inscribed-tablet",
            kind = "accept",
            priority = 140,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 8 },
                },
            },
            text = "Accept Rune-Inscribed Tablet from Gornek in The Den.",
            complete = QuestState(3084, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3089-rune-inscribed-parchment",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 2 },
                },
            },
            text = "Accept Rune-Inscribed Parchment from Gornek in The Den.",
            complete = QuestState(3089, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3086-glyphic-tablet",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Accept Glyphic Tablet from Gornek in The Den.",
            complete = QuestState(3086, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3088-encrypted-parchment",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { class = 4 },
                    { race = 2 },
                },
            },
            text = "Accept Encrypted Parchment from Gornek in The Den.",
            complete = QuestState(3088, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3083-encrypted-tablet",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { class = 4 },
                    { race = 8 },
                },
            },
            text = "Accept Encrypted Tablet from Gornek in The Den.",
            complete = QuestState(3083, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3085-hallowed-tablet",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { class = 5 },
                },
            },
            text = "Accept Hallowed Tablet from Gornek in The Den.",
            complete = QuestState(3085, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3065-simple-tablet",
            kind = "accept",
            priority = 200,
            conditions = {
                all = {
                    { class = 1 },
                    { race = 8 },
                },
            },
            text = "Accept Simple Tablet from Gornek in The Den.",
            complete = QuestState(3065, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-2383-simple-parchment",
            kind = "accept",
            priority = 210,
            conditions = {
                all = {
                    { class = 1 },
                    { race = 2 },
                },
            },
            text = "Accept Simple Parchment from Gornek in The Den.",
            complete = QuestState(2383, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3090-tainted-parchment",
            kind = "accept",
            priority = 220,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Tainted Parchment from Gornek in The Den.",
            complete = QuestState(3090, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-792-vile-familiars",
            kind = "accept",
            priority = 230,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 1485, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept Vile Familiars from Zureetha Fargaze in Valley of Trials.",
            complete = QuestState(792, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4283, 0.6910, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "turnin-3087-etched-tablet",
            kind = "turnin",
            priority = 240,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 2 },
                },
            },
            text = "Turn in Etched Tablet to Jen'shan in Valley of Trials.",
            dependsOn = { "accept-3087-etched-parchment" },
            complete = QuestState(3087, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4280, 0.6930, "Jen'shan",
                    "Travel to Jen'shan."),
            },
        },
        {
            id = "turnin-3082-etched-tablet",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 8 },
                },
            },
            text = "Turn in Etched Tablet to Jen'shan in Valley of Trials.",
            dependsOn = { "accept-3082-etched-tablet" },
            complete = QuestState(3082, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4280, 0.6930, "Jen'shan",
                    "Travel to Jen'shan."),
            },
        },
        {
            id = "turnin-3084-rune-inscribed-tablet",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 8 },
                },
            },
            text = "Turn in Rune-Inscribed Tablet.",
            dependsOn = { "accept-3084-rune-inscribed-tablet" },
            complete = QuestState(3084, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Rune-Inscribed Tablet",
                    "Travel to Rune-Inscribed Tablet."),
            },
        },
        {
            id = "turnin-3089-rune-inscribed-parchment",
            kind = "turnin",
            priority = 270,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 2 },
                },
            },
            text = "Turn in Rune-Inscribed Parchment.",
            dependsOn = { "accept-3089-rune-inscribed-parchment" },
            complete = QuestState(3089, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Rune-Inscribed Parchment",
                    "Travel to Rune-Inscribed Parchment."),
            },
        },
        {
            id = "turnin-3086-glyphic-tablet",
            kind = "turnin",
            priority = 280,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Turn in Glyphic Tablet to Mai'ah in Valley of Trials.",
            dependsOn = { "accept-3086-glyphic-tablet" },
            complete = QuestState(3086, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4253, 0.6897, "Mai'ah",
                    "Travel to Mai'ah."),
            },
        },
        {
            id = "turnin-3088-encrypted-parchment",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { class = 4 },
                    { race = 2 },
                },
            },
            text = "Turn in Encrypted Parchment.",
            dependsOn = { "accept-3088-encrypted-parchment" },
            complete = QuestState(3088, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4130, 0.6810, "Encrypted Parchment",
                    "Travel to Encrypted Parchment."),
            },
        },
        {
            id = "turnin-3083-encrypted-tablet",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { class = 4 },
                    { race = 8 },
                },
            },
            text = "Turn in Encrypted Tablet.",
            dependsOn = { "accept-3083-encrypted-tablet" },
            complete = QuestState(3083, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4130, 0.6810, "Encrypted Tablet",
                    "Travel to Encrypted Tablet."),
            },
        },
        {
            id = "turnin-3085-hallowed-tablet",
            kind = "turnin",
            priority = 310,
            conditions = {
                all = {
                    { class = 5 },
                },
            },
            text = "Turn in Hallowed Tablet.",
            dependsOn = { "accept-3085-hallowed-tablet" },
            complete = QuestState(3085, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6880, "Hallowed Tablet",
                    "Travel to Hallowed Tablet."),
            },
        },
        {
            id = "turnin-3065-simple-tablet",
            kind = "turnin",
            priority = 320,
            conditions = {
                all = {
                    { class = 1 },
                    { race = 8 },
                },
            },
            text = "Turn in Simple Tablet.",
            dependsOn = { "accept-3065-simple-tablet" },
            complete = QuestState(3065, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4290, 0.6940, "Simple Tablet",
                    "Travel to Simple Tablet."),
            },
        },
        {
            id = "turnin-2383-simple-parchment",
            kind = "turnin",
            priority = 330,
            conditions = {
                all = {
                    { class = 1 },
                    { race = 2 },
                },
            },
            text = "Turn in Simple Parchment.",
            dependsOn = { "accept-2383-simple-parchment" },
            complete = QuestState(2383, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4290, 0.6940, "Simple Parchment",
                    "Travel to Simple Parchment."),
            },
        },
        {
            id = "turnin-3090-tainted-parchment",
            kind = "turnin",
            priority = 340,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Tainted Parchment.",
            dependsOn = { "accept-3090-tainted-parchment" },
            complete = QuestState(3090, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4060, 0.6840, "Tainted Parchment",
                    "Travel to Tainted Parchment."),
            },
        },
        {
            id = "accept-4402-galgar-s-cactus-apple-surprise",
            kind = "accept",
            priority = 350,
            text = "Accept Galgar's Cactus Apple Surprise from Galgar in Valley of Trials.",
            complete = QuestState(4402, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4274, 0.6732, "Galgar",
                    "Travel to Galgar."),
            },
        },
        {
            id = "accept-790-sarkoth",
            kind = "accept",
            priority = 360,
            text = "Accept Sarkoth from Hana'zua in Valley of Trials.",
            complete = QuestState(790, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4068, 0.6259, "Hana'zua",
                    "Travel to Hana'zua."),
            },
        },
        {
            id = "objective-790-sarkoth",
            kind = "objective",
            priority = 370,
            text = "Kill Sarkoth and collect Sarkoth's Mangled Claw.",
            dependsOn = { "accept-790-sarkoth" },
            complete = QuestState(790, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4060, 0.6710, "Sarkoth",
                    "Travel to Sarkoth."),
            },
        },
        {
            id = "objective-789-sting-of-the-scorpid",
            kind = "objective",
            priority = 380,
            text = "Kill Scorpid Worker and collect 10 Scorpid Worker Tail in Valley of Trials.",
            dependsOn = { "accept-789-sting-of-the-scorpid" },
            complete = QuestState(789, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4080, 0.6210, "Scorpid Worker",
                    "Travel to Scorpid Worker."),
            },
        },
        {
            id = "turnin-790-sarkoth",
            kind = "turnin",
            priority = 390,
            text = "Turn in Sarkoth to Hana'zua in Valley of Trials.",
            dependsOn = { "objective-790-sarkoth" },
            complete = QuestState(790, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4068, 0.6259, "Hana'zua",
                    "Travel to Hana'zua."),
            },
        },
        {
            id = "accept-804-sarkoth",
            kind = "accept",
            priority = 400,
            text = "Accept Sarkoth from Hana'zua in Valley of Trials.",
            complete = QuestState(804, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4068, 0.6259, "Hana'zua",
                    "Travel to Hana'zua."),
            },
        },
        {
            id = "turnin-804-sarkoth",
            kind = "turnin",
            priority = 410,
            text = "Turn in Sarkoth to Gornek in The Den.",
            dependsOn = { "accept-804-sarkoth" },
            complete = QuestState(804, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "objective-792-vile-familiars",
            kind = "objective",
            priority = 430,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 1485, state = "activeOrCompleted" } } },
                },
            },
            text = "Kill 12 Vile Familiar near the cave in Valley of Trials.",
            dependsOn = { "accept-792-vile-familiars" },
            complete = QuestState(792, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4500, 0.5600, "Vile Familiar",
                    "Travel to Vile Familiar."),
            },
        },
        {
            id = "objective-4402-galgar-s-cactus-apple-surprise",
            kind = "objective",
            priority = 440,
            text = "Collect 10 Cactus Apple from the Cactus Plants in the Valley.",
            dependsOn = { "accept-4402-galgar-s-cactus-apple-surprise" },
            complete = QuestState(4402, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4600, 0.6300, "Galgar's Cactus Apple Surprise",
                    "Travel to Galgar's Cactus Apple Surprise."),
            },
        },
        {
            id = "turnin-4402-galgar-s-cactus-apple-surprise",
            kind = "turnin",
            priority = 450,
            text = "Turn in Galgar's Cactus Apple Surprise to Galgar in Valley of Trials.",
            dependsOn = { "objective-4402-galgar-s-cactus-apple-surprise" },
            complete = QuestState(4402, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4274, 0.6732, "Galgar",
                    "Travel to Galgar."),
            },
        },
        {
            id = "turnin-789-sting-of-the-scorpid",
            kind = "turnin",
            priority = 460,
            text = "Turn in Sting of the Scorpid to Gornek in The Den.",
            dependsOn = { "objective-789-sting-of-the-scorpid" },
            complete = QuestState(789, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.6835, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "turnin-792-vile-familiars",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 1485, state = "activeOrCompleted" } } },
                },
            },
            text = "Turn in Vile Familiars to Zureetha Fargaze in Valley of Trials.",
            dependsOn = { "objective-792-vile-familiars" },
            complete = QuestState(792, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4283, 0.6907, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "accept-794-burning-blade-medallion",
            kind = "accept",
            priority = 480,
            text = "Accept Burning Blade Medallion from Zureetha Fargaze in Valley of Trials.",
            complete = QuestState(794, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4283, 0.6910, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "accept-5441-lazy-peons",
            kind = "accept",
            priority = 490,
            text = "Accept Lazy Peons from Foreman Thazz'ril in Valley of Trials.",
            complete = QuestState(5441, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4456, 0.6865, "Foreman Thazz'ril",
                    "Travel to Foreman Thazz'ril."),
            },
        },
        {
            id = "objective-5441-lazy-peons",
            kind = "objective",
            priority = 500,
            text = "Use Foreman's Blackjack to wake 5 Lazy Peon in the Valley of Trials.",
            dependsOn = { "accept-5441-lazy-peons" },
            complete = QuestState(5441, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4713, 0.6542, "Lazy Peon",
                    "Travel to Lazy Peon."),
            },
        },
        {
            id = "turnin-5441-lazy-peons",
            kind = "turnin",
            priority = 510,
            text = "Turn in Lazy Peons to Foreman Thazz'ril in Valley of Trials.",
            dependsOn = { "objective-5441-lazy-peons" },
            complete = QuestState(5441, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4456, 0.6865, "Foreman Thazz'ril",
                    "Travel to Foreman Thazz'ril."),
            },
        },
        {
            id = "accept-6394-thazz-ril-s-pick",
            kind = "accept",
            priority = 520,
            text = "Accept Thazz'ril's Pick from Foreman Thazz'ril in Valley of Trials.",
            complete = QuestState(6394, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4456, 0.6865, "Foreman Thazz'ril",
                    "Travel to Foreman Thazz'ril."),
            },
        },
        {
            id = "accept-1516-call-of-earth",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Earth from Canaga Earthcaller in Valley of Trials.",
            complete = QuestState(1516, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4242, 0.6916, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller."),
            },
        },
        {
            id = "objective-794-burning-blade-medallion",
            kind = "objective",
            priority = 550,
            text = "Follow the waypoint and kill Yarrog Baneshadow and collect Burning Blade Medallion.",
            dependsOn = { "accept-794-burning-blade-medallion" },
            complete = QuestState(794, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4276, 0.5270, "Yarrog Baneshadow",
                    "Travel to Yarrog Baneshadow."),
            },
        },
        {
            id = "objective-6394-thazz-ril-s-pick",
            kind = "objective",
            priority = 560,
            text = "Collect Thazz'ril's Pick in Burning Blade Coven.",
            dependsOn = { "accept-6394-thazz-ril-s-pick" },
            complete = QuestState(6394, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4370, 0.5370, "Burning Blade Coven",
                    "Travel to Burning Blade Coven."),
            },
        },
        {
            id = "objective-1516-call-of-earth",
            kind = "objective",
            priority = 570,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Kill Felstalker and collect 2 Felstalker Hoof in Burning Blade Coven.",
            dependsOn = { "accept-1516-call-of-earth" },
            complete = QuestState(1516, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4447, 0.5499, "Felstalker",
                    "Travel to Felstalker."),
            },
        },
        {
            id = "turnin-1516-call-of-earth",
            kind = "turnin",
            priority = 590,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Earth to Canaga Earthcaller in Valley of Trials.",
            dependsOn = { "objective-1516-call-of-earth" },
            complete = QuestState(1516, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4238, 0.6912, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller."),
            },
        },
        {
            id = "accept-1517-call-of-earth",
            kind = "accept",
            priority = 600,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Earth from Canaga Earthcaller in Valley of Trials.",
            complete = QuestState(1517, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4238, 0.6912, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller."),
            },
        },
        {
            id = "turnin-794-burning-blade-medallion",
            kind = "turnin",
            priority = 610,
            text = "Turn in Burning Blade Medallion to Zureetha Fargaze in Valley of Trials.",
            dependsOn = { "objective-794-burning-blade-medallion" },
            complete = QuestState(794, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4283, 0.6910, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "accept-805-report-to-sen-jin-village",
            kind = "accept",
            priority = 620,
            text = "Accept Report to Sen'jin Village from Zureetha Fargaze in Valley of Trials.",
            complete = QuestState(805, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4283, 0.6910, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "turnin-6394-thazz-ril-s-pick",
            kind = "turnin",
            priority = 630,
            text = "Turn in Thazz'ril's Pick to Foreman Thazz'ril in Valley of Trials.",
            dependsOn = { "objective-6394-thazz-ril-s-pick" },
            complete = QuestState(6394, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4456, 0.6865, "Foreman Thazz'ril",
                    "Travel to Foreman Thazz'ril."),
            },
        },
        {
            id = "note-earth-sapta",
            kind = "note",
            priority = 640,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Get Earth Sapta from Canaga Earthcaller.",
            route = {
                Point(MAP.DUROTAR, 0.4238, 0.6912, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller."),
            },
        },
        {
            id = "note-earth-sapta-2",
            kind = "note",
            priority = 660,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Use Earth Sapta to gain the Sapta Sight buff.",
        },
        {
            id = "turnin-1517-call-of-earth",
            kind = "turnin",
            priority = 670,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Earth to Minor Manifestation of Earth in Spirit Rock.",
            dependsOn = { "accept-1517-call-of-earth" },
            complete = QuestState(1517, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4400, 0.7614, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth."),
            },
        },
        {
            id = "accept-1518-call-of-earth",
            kind = "accept",
            priority = 680,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Earth from Minor Manifestation of Earth in Spirit Rock.",
            complete = QuestState(1518, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4401, 0.7608, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth."),
            },
        },
        {
            id = "turnin-1518-call-of-earth",
            kind = "turnin",
            priority = 700,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Earth to Canaga Earthcaller in Valley of Trials.",
            dependsOn = { "accept-1518-call-of-earth" },
            complete = QuestState(1518, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4242, 0.6917, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller."),
            },
        },
        {
            id = "accept-2161-a-peon-s-burden",
            kind = "accept",
            priority = 710,
            text = "Accept A Peon's Burden from Ukor in Valley of Trials.",
            complete = QuestState(2161, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5200, 0.6830, "Ukor",
                    "Travel to Ukor."),
            },
        },
        {
            id = "accept-786-thwarting-kolkar-aggression",
            kind = "accept",
            priority = 730,
            text = "Accept Thwarting Kolkar Aggression from Lar Prowltusk in Sen'jin Village.",
            complete = QuestState(786, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5459, 0.7522, "Lar Prowltusk",
                    "Travel to Lar Prowltusk."),
            },
        },
        {
            id = "turnin-805-report-to-sen-jin-village",
            kind = "turnin",
            priority = 740,
            text = "Turn in Report to Sen'jin Village to Master Gadrin in Sen'jin Village.",
            dependsOn = { "accept-805-report-to-sen-jin-village" },
            complete = QuestState(805, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5593, 0.7476, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "accept-808-minshina-s-skull",
            kind = "accept",
            priority = 750,
            text = "Accept Minshina's Skull from Master Gadrin in Sen'jin Village.",
            complete = QuestState(808, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5593, 0.7476, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "accept-823-report-to-orgnil",
            kind = "accept",
            priority = 760,
            text = "Accept Report to Orgnil from Master Gadrin in Sen'jin Village.",
            complete = QuestState(823, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5593, 0.7476, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "accept-826-zalazane",
            kind = "accept",
            priority = 770,
            text = "Accept Zalazane from Master Gadrin in Sen'jin Village.",
            complete = QuestState(826, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5593, 0.7476, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "accept-818-a-solvent-spirit",
            kind = "accept",
            priority = 780,
            text = "Accept A Solvent Spirit from Master Vornal in Sen'jin Village.",
            complete = QuestState(818, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5595, 0.7446, "Master Vornal",
                    "Travel to Master Vornal."),
            },
        },
        {
            id = "accept-817-practical-prey",
            kind = "accept",
            priority = 790,
            text = "Accept Practical Prey from Vel'rin Fang in Sen'jin Village.",
            complete = QuestState(817, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5593, 0.7395, "Vel'rin Fang",
                    "Travel to Vel'rin Fang."),
            },
        },
        {
            id = "accept-96821-legging-it",
            kind = "accept",
            priority = 791,
            conditions = { level = { min = 6 } },
            text = "Accept Legging It from Vel'rin Fang in Sen'jin Village.",
            complete = QuestState(96821, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5580, 0.7400, "Vel'rin Fang",
                    "Travel to Vel'rin Fang."),
            },
        },
        {
            id = "accept-97225-forgotten-loa-idols",
            kind = "accept",
            priority = 792,
            conditions = { level = { min = 9 } },
            text = "Accept Forgotten Loa Idols from Master Vornal in Sen'jin Village.",
            complete = QuestState(97225, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5580, 0.7440, "Master Vornal",
                    "Travel to Master Vornal."),
            },
        },
        {
            id = "accept-97223-bloodtalon-matriarch",
            kind = "accept",
            priority = 793,
            conditions = { level = { min = 8 } },
            text = "Accept Bloodtalon Matriarch from Xar'Ti in Sen'jin Village.",
            complete = QuestState(97223, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5520, 0.7540, "Xar'Ti",
                    "Travel to Xar'Ti."),
            },
        },
        {
            id = "accept-96873-a-pain-in-the-neck",
            kind = "accept",
            priority = 794,
            conditions = {
                all = {
                    { level = { min = 8 } },
                    { profession = { skillLineID = SKILL.ENCHANTING } },
                },
            },
            text = "Accept A Pain in the Neck from Pa'zula in Sen'jin Village. This step is for enchanters.",
            complete = QuestState(96873, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5660, 0.7360, "Pa'zula",
                    "Travel to Pa'zula."),
            },
        },
        {
            id = "objective-96821-legging-it-1",
            kind = "objective",
            priority = 801,
            conditions = { level = { min = 6 } },
            text = "Legging It: kill Ridgeshade Creepers on the way to Razor Hill.",
            dependsOn = { "accept-96821-legging-it" },
            complete = QuestObjective(96821, 1),
            route = {
                Point(MAP.DUROTAR, 0.5160, 0.5740, "Ridgeshade Creeper",
                    "Travel to Ridgeshade Creeper."),
            },
        },
        {
            id = "objective-96821-legging-it-2",
            kind = "objective",
            priority = 802,
            conditions = { level = { min = 6 } },
            text = "Legging It: kill Ridgeshade Lurkers on the way to Razor Hill. A lost pack can drop for Ukor.",
            dependsOn = { "accept-96821-legging-it" },
            complete = QuestObjective(96821, 2),
            route = {
                Point(MAP.DUROTAR, 0.5040, 0.5180, "Ridgeshade Lurker",
                    "Travel to Ridgeshade Lurker."),
            },
        },
        {
            id = "turnin-96876-ukors-lost-pack",
            kind = "turnin",
            priority = 803,
            conditions = {
                all = {
                    { level = { min = 8 } },
                    { quest = { id = 96876, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Ukor's Lost Pack to Ukor in the Valley of Trials if you found the pack.",
            complete = QuestState(96876, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5200, 0.6820, "Ukor",
                    "Travel to Ukor."),
            },
        },
        {
            id = "turnin-823-report-to-orgnil",
            kind = "turnin",
            priority = 810,
            text = "Turn in Report to Orgnil to Orgnil Soulscar in Razor Hill.",
            dependsOn = { "accept-823-report-to-orgnil" },
            complete = QuestState(823, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5228, 0.4322, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-806-dark-storms",
            kind = "accept",
            priority = 820,
            text = "Accept Dark Storms from Orgnil Soulscar in Razor Hill.",
            complete = QuestState(806, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5228, 0.4322, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-784-vanquish-the-betrayers",
            kind = "accept",
            priority = 830,
            text = "Accept Vanquish the Betrayers from Gar'Thok in Razor Hill.",
            complete = QuestState(784, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5190, 0.4348, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "turnin-96821-legging-it",
            kind = "turnin",
            priority = 831,
            conditions = { level = { min = 6 } },
            text = "Turn in Legging It to Gar'Thok in Razor Hill.",
            dependsOn = { "objective-96821-legging-it-1", "objective-96821-legging-it-2" },
            complete = QuestState(96821, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5200, 0.4340, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "accept-96822-for-honor",
            kind = "accept",
            priority = 832,
            conditions = { level = { min = 6 } },
            text = "Accept For Honor from Turroc in Razor Hill Barracks.",
            complete = QuestState(96822, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5400, 0.4260, "Turroc",
                    "Travel to Turroc."),
            },
        },
        {
            id = "accept-837-encroachment",
            kind = "accept",
            priority = 840,
            text = "Accept Encroachment from Gar'Thok in Razor Hill.",
            complete = QuestState(837, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5190, 0.4348, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "accept-791-carry-your-weight",
            kind = "accept",
            priority = 850,
            text = "Accept Carry Your Weight from Furl Scornbrow in Razor Hill.",
            complete = QuestState(791, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4984, 0.4044, "Furl Scornbrow",
                    "Travel to Furl Scornbrow."),
            },
        },
        {
            id = "accept-815-break-a-few-eggs",
            kind = "accept",
            priority = 860,
            text = "Accept Break a Few Eggs from Cook Torka in Razor Hill.",
            complete = QuestState(815, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5118, 0.4246, "Cook Torka",
                    "Travel to Cook Torka."),
            },
        },
        {
            id = "accept-96825-this-fruit-could-bite-back",
            kind = "accept",
            priority = 861,
            conditions = { level = { min = 6 } },
            text = "Accept This Fruit Could Bite Back from Cook Torka in Razor Hill.",
            complete = QuestState(96825, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5120, 0.4240, "Cook Torka",
                    "Travel to Cook Torka."),
            },
        },
        {
            id = "turnin-2161-a-peon-s-burden",
            kind = "turnin",
            priority = 870,
            text = "Turn in A Peon's Burden to Innkeeper Grosk in Razor Hill.",
            dependsOn = { "accept-2161-a-peon-s-burden" },
            complete = QuestState(2161, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5157, 0.4171, "Innkeeper Grosk",
                    "Travel to Innkeeper Grosk."),
            },
        },
        {
            id = "note-791-razor-hill",
            kind = "note",
            priority = 880,
            text = "Set your hearth in Razor Hill with Innkeeper Grosk.",
            route = {
                Point(MAP.DUROTAR, 0.5157, 0.4171, "Innkeeper Grosk",
                    "Travel to Innkeeper Grosk."),
            },
        },
        {
            id = "objective-784-3-lieutenant-benedict",
            kind = "objective",
            priority = 890,
            text = "Kill Lieutenant Benedict upstairs in Tiragarde Keep.",
            dependsOn = { "accept-784-vanquish-the-betrayers" },
            complete = QuestObjective(784, 3),
            route = {
                Point(MAP.DUROTAR, 0.5914, 0.5826, "Lieutenant Benedict",
                    "Travel to Lieutenant Benedict."),
            },
        },
        {
            id = "objective-784-vanquish-the-betrayers",
            kind = "objective",
            priority = 900,
            text = "Kill 10 Kul Tiras Sailor and 8 Kul Tiras Marine in Tiragarde Keep.",
            dependsOn = { "accept-784-vanquish-the-betrayers" },
            complete = QuestState(784, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5940, 0.5830, "Kul Tiras Sailor",
                    "Travel to Kul Tiras Sailor."),
            },
        },
        {
            id = "objective-830-aged-envelope",
            kind = "objective",
            priority = 910,
            text = "Collect Aged Envelope from Benedict's Chest upstair.",
            dependsOn = { "accept-830-the-admiral-s-orders" },
            complete = QuestState(830, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5930, 0.5770, "Aged Envelope",
                    "Travel to Aged Envelope."),
            },
        },
        {
            id = "accept-830-the-admiral-s-orders",
            kind = "accept",
            priority = 920,
            text = "Use the Aged Envelope to accept The Admiral's Orders.",
            complete = QuestState(830, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5930, 0.5770, "The Admiral's Orders",
                    "Travel to The Admiral's Orders."),
            },
        },
        {
            id = "objective-791-carry-your-weight",
            kind = "objective",
            priority = 930,
            text = "Kill Kul Tiras Sailor and Kul Tiras Marine and collect 8 Canvas Scraps Tiragarde Keep.",
            dependsOn = { "accept-791-carry-your-weight" },
            complete = QuestState(791, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5700, 0.5500, "Kul Tiras Sailor",
                    "Travel to Kul Tiras Sailor."),
            },
        },
        {
            id = "turnin-784-vanquish-the-betrayers",
            kind = "turnin",
            priority = 950,
            text = "Turn in Vanquish the Betrayers to Gar'Thok in Razor Hill.",
            dependsOn = { "objective-784-3-lieutenant-benedict", "objective-784-vanquish-the-betrayers" },
            complete = QuestState(784, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5190, 0.4348, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "turnin-96822-for-honor",
            kind = "turnin",
            priority = 951,
            conditions = { level = { min = 6 } },
            text = "Turn in For Honor to Turroc in Razor Hill Barracks.",
            dependsOn = { "objective-96822-for-honor" },
            complete = QuestState(96822, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5400, 0.4260, "Turroc",
                    "Travel to Turroc."),
            },
        },
        {
            id = "turnin-96825-this-fruit-could-bite-back",
            kind = "turnin",
            priority = 1071,
            conditions = { level = { min = 6 } },
            text = "Turn in This Fruit Could Bite Back to Cook Torka in Razor Hill.",
            dependsOn = { "objective-96825-this-fruit-could-bite-back" },
            complete = QuestState(96825, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5120, 0.4240, "Cook Torka",
                    "Travel to Cook Torka."),
            },
        },
        {
            id = "accept-825-from-the-wreckage",
            kind = "accept",
            priority = 960,
            text = "Accept From The Wreckage.... from Gar'Thok in Razor Hill.",
            complete = QuestState(825, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5190, 0.4348, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "turnin-830-the-admiral-s-orders",
            kind = "turnin",
            priority = 970,
            text = "Turn in The Admiral's Orders to Gar'Thok in Razor Hill.",
            dependsOn = { "objective-830-aged-envelope" },
            complete = QuestState(830, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5190, 0.4348, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "accept-831-the-admiral-s-orders",
            kind = "accept",
            priority = 980,
            text = "Accept The Admiral's Orders from Gar'Thok in Razor Hill.",
            complete = QuestState(831, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5190, 0.4348, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "turnin-791-carry-your-weight",
            kind = "turnin",
            priority = 990,
            text = "Turn in Carry Your Weight to Furl Scornbrow in Durotar.",
            dependsOn = { "objective-791-carry-your-weight" },
            complete = QuestState(791, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4985, 0.4043, "Furl Scornbrow",
                    "Travel to Furl Scornbrow."),
            },
        },
        {
            id = "objective-96825-this-fruit-could-bite-back",
            kind = "objective",
            priority = 1001,
            conditions = { level = { min = 6 } },
            useClientPin = true,
            text = "Collect Prickly Pear Fruit on the Razormane grounds. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "accept-96825-this-fruit-could-bite-back" },
            complete = QuestState(96825, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4300, 0.3980, "Razormane grounds",
                    "Travel to Razormane grounds."),
            },
        },
        {
            id = "objective-96822-for-honor",
            kind = "objective",
            priority = 931,
            conditions = { level = { min = 6 } },
            useClientPin = true,
            text = "For Honor: collect the Raider's Bow, Battleaxe, and Shield on the Tiragarde Keep outskirts. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "accept-96822-for-honor" },
            complete = QuestState(96822, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5940, 0.5880, "Tiragarde Keep outskirts",
                    "Travel to Tiragarde Keep outskirts."),
            },
        },
        {
            id = "objective-837-encroachment",
            kind = "objective",
            priority = 1010,
            text = "Kill 4 Razormane Quilboar, 4 Razormane Scout, 4 Razormane Dustrunner and 4 Razormane Battleguard in the camps west of Razor hill in Razormane Grounds.",
            dependsOn = { "accept-837-encroachment" },
            complete = QuestState(837, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4380, 0.4055, "Razormane Quilboar",
                    "Travel to Razormane Quilboar."),
            },
        },
        {
            id = "objective-825-from-the-wreckage",
            kind = "objective",
            priority = 1030,
            text = "Collect the 3 Gnomish Tools from Gnomish Toolbox east of Razor Hill, off the coast.",
            dependsOn = { "accept-825-from-the-wreckage" },
            complete = QuestState(825, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.6140, 0.5610, "From The Wreckage....",
                    "Travel to From The Wreckage....."),
            },
        },
        {
            id = "objective-818-a-solvent-spirit",
            kind = "objective",
            priority = 1040,
            text = "Kill Makrura Clacker for 4 Intact Makrura Eye and Surf Crawler for 4 Crawler Mucus along the eastern shore.",
            dependsOn = { "accept-818-a-solvent-spirit" },
            complete = QuestState(818, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.6100, 0.6900, "Makrura Clacker",
                    "Travel to Makrura Clacker."),
            },
        },
        {
            id = "turnin-825-from-the-wreckage",
            kind = "turnin",
            priority = 1060,
            text = "Turn in From The Wreckage.... to Gar'Thok in Razor Hill.",
            dependsOn = { "objective-825-from-the-wreckage" },
            complete = QuestState(825, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5190, 0.4348, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "turnin-837-encroachment",
            kind = "turnin",
            priority = 1070,
            text = "Turn in Encroachment to Gar'Thok in Razor Hill.",
            dependsOn = { "objective-837-encroachment" },
            complete = QuestState(837, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5190, 0.4348, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "accept-99123-lost-in-the-shadows",
            kind = "accept",
            priority = 1081,
            conditions = { level = { min = 8 } },
            text = "Accept Lost in the Shadows from Pal'juh inside Kolkar Crag.",
            complete = QuestState(99123, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4620, 0.7860, "Pal'juh",
                    "Travel to Pal'juh."),
            },
        },
        {
            id = "objective-99123-lost-in-the-shadows",
            kind = "objective",
            priority = 1082,
            conditions = { level = { min = 8 } },
            text = "Escort Pal'juh out of Kolkar Crag.",
            dependsOn = { "accept-99123-lost-in-the-shadows" },
            complete = QuestState(99123, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4620, 0.7860, "Pal'juh",
                    "Travel to Pal'juh."),
            },
        },
        {
            id = "objective-786-1-attack-plan-valley-of-trials",
            kind = "objective",
            priority = 1090,
            text = "Destroy Attack Plan: Valley of Trials in Kolkar Crag.",
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            complete = QuestObjective(786, 1),
            route = {
                Point(MAP.DUROTAR, 0.4984, 0.8128, "Kolkar Crag",
                    "Travel to Kolkar Crag."),
            },
        },
        {
            id = "objective-786-2-attack-plan-sen-jin-village",
            kind = "objective",
            priority = 1100,
            text = "Destroy Attack Plan: Sen'jin Village in Kolkar Crag.",
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            complete = QuestObjective(786, 2),
            route = {
                Point(MAP.DUROTAR, 0.4766, 0.7743, "Kolkar Crag",
                    "Travel to Kolkar Crag."),
            },
        },
        {
            id = "objective-786-3-attack-plan-orgrimmar",
            kind = "objective",
            priority = 1110,
            text = "Destroy Attack Plan: Orgrimmar in Kolkar Crag.",
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            complete = QuestObjective(786, 3),
            route = {
                Point(MAP.DUROTAR, 0.4627, 0.7895, "Kolkar Crag",
                    "Travel to Kolkar Crag."),
            },
        },
        {
            id = "turnin-786-thwarting-kolkar-aggression",
            kind = "turnin",
            priority = 1130,
            text = "Turn in Thwarting Kolkar Aggression to Lar Prowltusk in Sen'jin Village.",
            dependsOn = { "objective-786-1-attack-plan-valley-of-trials", "objective-786-2-attack-plan-sen-jin-village", "objective-786-3-attack-plan-orgrimmar" },
            complete = QuestState(786, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5459, 0.7522, "Lar Prowltusk",
                    "Travel to Lar Prowltusk."),
            },
        },
        {
            id = "turnin-99123-lost-in-the-shadows",
            kind = "turnin",
            priority = 1121,
            conditions = { level = { min = 8 } },
            text = "Turn in Lost in the Shadows to Master Vornal in Sen'jin Village.",
            dependsOn = { "objective-99123-lost-in-the-shadows" },
            complete = QuestState(99123, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5580, 0.7440, "Master Vornal",
                    "Travel to Master Vornal."),
            },
        },
        {
            id = "turnin-818-a-solvent-spirit",
            kind = "turnin",
            priority = 1140,
            text = "Turn in A Solvent Spirit to Master Vornal in Sen'jin Village.",
            dependsOn = { "objective-818-a-solvent-spirit" },
            complete = QuestState(818, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5595, 0.7446, "Master Vornal",
                    "Travel to Master Vornal."),
            },
        },
        {
            id = "objective-97225-forgotten-loa-idols",
            kind = "objective",
            priority = 1141,
            conditions = { level = { min = 9 } },
            useClientPin = true,
            text = "Collect Forgotten Loa Idols on the Echo Isles. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "accept-97225-forgotten-loa-idols" },
            complete = QuestState(97225, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.6760, 0.8340, "Echo Isles",
                    "Travel to Echo Isles."),
            },
        },
        {
            id = "objective-97223-bloodtalon-matriarch",
            kind = "objective",
            priority = 1142,
            conditions = { level = { min = 8 } },
            text = "Collect Bloodtalon Matriarch Eggs.",
            dependsOn = { "accept-97223-bloodtalon-matriarch" },
            complete = QuestState(97223, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.6860, 0.7160, "Bloodtalon Matriarch",
                    "Travel to Bloodtalon Matriarch."),
            },
        },
        {
            id = "objective-96873-a-pain-in-the-neck",
            kind = "objective",
            priority = 1143,
            conditions = {
                all = {
                    { level = { min = 8 } },
                    { profession = { skillLineID = SKILL.ENCHANTING } },
                },
            },
            text = "A Pain in the Neck: disenchant Hexed Pendants from the Echo Isles trolls for Luminous Residue. This step is for enchanters.",
            dependsOn = { "accept-96873-a-pain-in-the-neck" },
            complete = QuestState(96873, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.6760, 0.8340, "Hexed Troll",
                    "Travel to Hexed Troll."),
            },
        },
        {
            id = "objective-826-3-zalazane",
            kind = "objective",
            priority = 1160,
            text = "Kill Zalazane and collect Zalazane's Head in Echo Isles.",
            dependsOn = { "accept-826-zalazane" },
            complete = QuestObjective(826, 3),
            route = {
                Point(MAP.DUROTAR, 0.6759, 0.8654, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "objective-808-minshina-s-skull",
            kind = "objective",
            priority = 1170,
            text = "Collect Minshina's Skull from the Imprisoned Darkspear, looks like a glowing ritual circle above Zalazane.",
            dependsOn = { "accept-808-minshina-s-skull" },
            complete = QuestState(808, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.6743, 0.8763, "Minshina's Skull",
                    "Travel to Minshina's Skull."),
            },
        },
        {
            id = "objective-815-break-a-few-eggs",
            kind = "objective",
            priority = 1190,
            text = "Collect 3 Taillasher Egg from the raptor nests near the base of the tree and bushes in Echo Isles.",
            dependsOn = { "accept-815-break-a-few-eggs" },
            complete = QuestState(815, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5960, 0.8260, "Echo Isles",
                    "Travel to Echo Isles."),
            },
        },
        {
            id = "objective-817-practical-prey",
            kind = "objective",
            priority = 1200,
            text = "Kill Durotar Tiger and collect 4 Durotar Tiger Fur in Echo Isles.",
            dependsOn = { "accept-817-practical-prey" },
            complete = QuestState(817, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.6000, 0.9000, "Durotar Tiger",
                    "Travel to Durotar Tiger."),
            },
        },
        {
            id = "objective-826-zalazane",
            kind = "objective",
            priority = 1210,
            text = "Kill 8 Hexed Troll and 8 Voodoo Troll in Echo Isles.",
            dependsOn = { "accept-826-zalazane" },
            complete = QuestState(826, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.6755, 0.8667, "Hexed Troll",
                    "Travel to Hexed Troll."),
            },
        },
        {
            id = "turnin-808-minshina-s-skull",
            kind = "turnin",
            priority = 1230,
            text = "Turn in Minshina's Skull to Master Gadrin in Sen'jin Village.",
            dependsOn = { "objective-808-minshina-s-skull" },
            complete = QuestState(808, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5593, 0.7476, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "turnin-97225-forgotten-loa-idols",
            kind = "turnin",
            priority = 1231,
            conditions = { level = { min = 9 } },
            text = "Turn in Forgotten Loa Idols to Master Gadrin in Sen'jin Village.",
            dependsOn = { "objective-97225-forgotten-loa-idols" },
            complete = QuestState(97225, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5600, 0.7460, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "turnin-97223-bloodtalon-matriarch",
            kind = "turnin",
            priority = 1232,
            conditions = { level = { min = 8 } },
            text = "Turn in Bloodtalon Matriarch to Xar'Ti in Sen'jin Village.",
            dependsOn = { "objective-97223-bloodtalon-matriarch" },
            complete = QuestState(97223, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5520, 0.7540, "Xar'Ti",
                    "Travel to Xar'Ti."),
            },
        },
        {
            id = "turnin-96873-a-pain-in-the-neck",
            kind = "turnin",
            priority = 1233,
            conditions = {
                all = {
                    { level = { min = 8 } },
                    { profession = { skillLineID = SKILL.ENCHANTING } },
                },
            },
            text = "Turn in A Pain in the Neck to Pa'zula in Sen'jin Village. This step is for enchanters.",
            dependsOn = { "objective-96873-a-pain-in-the-neck" },
            complete = QuestState(96873, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5660, 0.7360, "Pa'zula",
                    "Travel to Pa'zula."),
            },
        },
        {
            id = "turnin-826-zalazane",
            kind = "turnin",
            priority = 1240,
            text = "Turn in Zalazane to Master Gadrin in Sen'jin Village.",
            dependsOn = { "objective-826-3-zalazane", "objective-826-zalazane" },
            complete = QuestState(826, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5595, 0.7464, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "turnin-817-practical-prey",
            kind = "turnin",
            priority = 1250,
            text = "Turn in Practical Prey to Vel'rin Fang in Sen'jin Village.",
            dependsOn = { "objective-817-practical-prey" },
            complete = QuestState(817, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5593, 0.7395, "Vel'rin Fang",
                    "Travel to Vel'rin Fang."),
            },
        },
        {
            id = "turnin-815-break-a-few-eggs",
            kind = "turnin",
            priority = 1270,
            text = "Turn in Break a Few Eggs to Cook Torka in Razor Hill.",
            dependsOn = { "objective-815-break-a-few-eggs" },
            complete = QuestState(815, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5118, 0.4246, "Cook Torka",
                    "Travel to Cook Torka."),
            },
        },
        {
            id = "accept-816-lost-but-not-forgotten",
            kind = "accept",
            priority = 1290,
            text = "Accept Lost But Not Forgotten from Misha Tor'kren in Tor'kren Farm.",
            complete = QuestState(816, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4311, 0.3030, "Misha Tor'kren",
                    "Travel to Misha Tor'kren."),
            },
        },
        {
            id = "accept-834-winds-in-the-desert",
            kind = "accept",
            priority = 1300,
            text = "Accept Winds in the Desert from Rezlak in Durotar.",
            complete = QuestState(834, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4631, 0.2291, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "objective-834-winds-in-the-desert",
            kind = "objective",
            priority = 1310,
            text = "Collect 5 Sack of Supplies on the ground inside the Razorwind Canyon.",
            dependsOn = { "accept-834-winds-in-the-desert" },
            complete = QuestState(834, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4854, 0.3209, "Razorwind Canyon",
                    "Travel to Razorwind Canyon."),
            },
        },
        {
            id = "turnin-834-winds-in-the-desert",
            kind = "turnin",
            priority = 1320,
            text = "Turn in Winds in the Desert to Rezlak in Durotar.",
            dependsOn = { "objective-834-winds-in-the-desert" },
            complete = QuestState(834, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4639, 0.2303, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "accept-835-securing-the-lines",
            kind = "accept",
            priority = 1330,
            text = "Accept Securing the Lines from Rezlak in Durotar.",
            complete = QuestState(835, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4639, 0.2303, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "accept-812-need-for-a-cure",
            kind = "accept",
            priority = 1340,
            text = "Accept Need for a Cure from Rhinag in Durotar.",
            complete = QuestState(812, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4157, 0.1864, "Rhinag",
                    "Travel to Rhinag."),
            },
        },
        {
            id = "accept-6062-taming-the-beast",
            kind = "accept",
            priority = 1360,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Taming the Beast from Thotar in Razor Hill.",
            complete = QuestState(6062, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5192, 0.4345, "Thotar",
                    "Travel to Thotar."),
            },
        },
        {
            id = "objective-6062-taming-the-beast",
            kind = "objective",
            priority = 1370,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Use the Taming Rod to tame a Dire Mottled Boar.",
            dependsOn = { "accept-6062-taming-the-beast" },
            complete = QuestState(6062, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5186, 0.4596, "Dire Mottled Boar",
                    "Travel to Dire Mottled Boar."),
            },
        },
        {
            id = "turnin-6062-taming-the-beast",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Taming the Beast to Thotar in Razor Hill.",
            dependsOn = { "objective-6062-taming-the-beast" },
            complete = QuestState(6062, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5186, 0.4349, "Thotar",
                    "Travel to Thotar."),
            },
        },
        {
            id = "accept-6083-taming-the-beast",
            kind = "accept",
            priority = 1390,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Taming the Beast from Thotar in Razor Hill.",
            complete = QuestState(6083, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5186, 0.4349, "Thotar",
                    "Travel to Thotar."),
            },
        },
        {
            id = "objective-6083-taming-the-beast",
            kind = "objective",
            priority = 1400,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Use the Taming Rod to tame a Mature Surf Crawler in Echo Isles.",
            dependsOn = { "accept-6083-taming-the-beast" },
            complete = QuestState(6083, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.6201, 0.7927, "Mature Surf Crawler",
                    "Travel to Mature Surf Crawler."),
            },
        },
        {
            id = "turnin-6083-taming-the-beast",
            kind = "turnin",
            priority = 1410,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Taming the Beast to Thotar in Razor Hill.",
            dependsOn = { "objective-6083-taming-the-beast" },
            complete = QuestState(6083, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5186, 0.4349, "Thotar",
                    "Travel to Thotar."),
            },
        },
        {
            id = "accept-6082-taming-the-beast",
            kind = "accept",
            priority = 1420,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Taming the Beast from Thotar in Razor Hill.",
            complete = QuestState(6082, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5186, 0.4349, "Thotar",
                    "Travel to Thotar."),
            },
        },
        {
            id = "objective-6082-taming-the-beast",
            kind = "objective",
            priority = 1430,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Use the Taming Rod to tame an Armored Scorpid.",
            dependsOn = { "accept-6082-taming-the-beast" },
            complete = QuestState(6082, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5480, 0.3694, "Armored Scorpid",
                    "Travel to Armored Scorpid."),
            },
        },
        {
            id = "turnin-6082-taming-the-beast",
            kind = "turnin",
            priority = 1440,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Taming the Beast to Thotar in Razor Hill.",
            dependsOn = { "objective-6082-taming-the-beast" },
            complete = QuestState(6082, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5187, 0.4349, "Thotar",
                    "Travel to Thotar."),
            },
        },
        {
            id = "accept-6081-training-the-beast",
            kind = "accept",
            priority = 1450,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Training the Beast from Thotar in Razor Hill.",
            complete = QuestState(6081, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5201, 0.4348, "Thotar",
                    "Travel to Thotar."),
            },
        },
        {
            id = "accept-1506-gan-rul-s-summons",
            kind = "accept",
            priority = 1460,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Gan'rul's Summons from Ophek in Razor Hill.",
            complete = QuestState(1506, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5421, 0.4104, "Ophek",
                    "Travel to Ophek."),
            },
        },
        {
            id = "accept-96874-this-is-spinal-axe",
            kind = "accept",
            priority = 1471,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = SKILL.BLACKSMITHING } },
                },
            },
            text = "Accept This Is Spinal Axe from Ug'thok in the Valley of Honor. This step is for blacksmiths.",
            complete = QuestState(96874, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.8060, 0.2340, "Ug'thok",
                    "Travel to Ug'thok."),
            },
        },
        {
            id = "accept-96875-beasts-of-thunder-ridge",
            kind = "accept",
            priority = 1472,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = SKILL.LEATHERWORKING } },
                },
            },
            text = "Accept Beasts of Thunder Ridge from Kamari in Orgrimmar. This step is for leatherworkers.",
            complete = QuestState(96875, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.6300, 0.4500, "Kamari",
                    "Travel to Kamari."),
            },
        },
        {
            id = "accept-1883-speak-with-un-thuwa",
            kind = "accept",
            priority = 1480,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Accept Speak with Un'thuwa from Uthel'nay in Valley of Spirits.",
            complete = QuestState(1883, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3886, 0.8628, "Uthel'nay",
                    "Travel to Uthel'nay."),
            },
        },
        {
            id = "turnin-831-the-admiral-s-orders",
            kind = "turnin",
            priority = 1490,
            text = "Turn in The Admiral's Orders to Nazgrel in Grommash Hold.",
            dependsOn = { "accept-831-the-admiral-s-orders" },
            complete = QuestState(831, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3240, 0.3603, "Nazgrel",
                    "Travel to Nazgrel."),
            },
        },
        {
            id = "accept-5726-hidden-enemies",
            kind = "accept",
            priority = 1500,
            text = "Accept Hidden Enemies from Thrall in Grommash Hold.",
            complete = QuestState(5726, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3200, 0.3786, "Thrall",
                    "Travel to Thrall."),
            },
        },
        {
            id = "accept-813-finding-the-antidote",
            kind = "accept",
            priority = 1510,
            text = "Accept Finding the Antidote from Kor'ghan in Cleft of Shadow.",
            complete = QuestState(813, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4700, 0.5356, "Kor'ghan",
                    "Travel to Kor'ghan."),
            },
        },
        {
            id = "turnin-6081-training-the-beast",
            kind = "turnin",
            priority = 1520,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Training the Beast to Ormak Grimshot in Valley of Honor.",
            dependsOn = { "accept-6081-training-the-beast" },
            complete = QuestState(6081, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.6607, 0.1859, "Ormak Grimshot",
                    "Travel to Ormak Grimshot."),
            },
        },
        {
            id = "turnin-1506-gan-rul-s-summons",
            kind = "turnin",
            priority = 1540,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Gan'rul's Summons to Mordak Darkfist in Cleft of Shadow.",
            dependsOn = { "accept-1506-gan-rul-s-summons" },
            complete = QuestState(1506, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4826, 0.4541, "Mordak Darkfist",
                    "Travel to Mordak Darkfist."),
            },
        },
        {
            id = "accept-1501-creature-of-the-void",
            kind = "accept",
            priority = 1550,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Creature of the Void from Mordak Darkfist in Cleft of Shadow.",
            complete = QuestState(1501, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4826, 0.4541, "Mordak Darkfist",
                    "Travel to Mordak Darkfist."),
            },
        },
        {
            id = "objective-813-finding-the-antidote",
            kind = "objective",
            priority = 1570,
            text = "Kill Venomtail Scorpid and collect 4 Venomtail Poison Sac.",
            dependsOn = { "accept-813-finding-the-antidote" },
            complete = QuestState(813, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4100, 0.1700, "Venomtail Scorpid",
                    "Travel to Venomtail Scorpid."),
            },
        },
        {
            id = "turnin-813-finding-the-antidote",
            kind = "turnin",
            priority = 1590,
            text = "Turn in Finding the Antidote to Kor'ghan in Cleft of Shadow.",
            dependsOn = { "objective-813-finding-the-antidote" },
            complete = QuestState(813, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4710, 0.5317, "Kor'ghan",
                    "Travel to Kor'ghan."),
            },
        },
        {
            id = "turnin-812-need-for-a-cure",
            kind = "turnin",
            priority = 1600,
            text = "Turn in Need for a Cure to Rhinag in Durotar.",
            dependsOn = { "accept-812-need-for-a-cure" },
            complete = QuestState(812, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4157, 0.1864, "Rhinag",
                    "Travel to Rhinag."),
            },
        },
        {
            id = "turnin-1883-speak-with-un-thuwa",
            kind = "turnin",
            priority = 1620,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Turn in Speak with Un'thuwa to Un'Thuwa in Sen'jin Village.",
            dependsOn = { "accept-1883-speak-with-un-thuwa" },
            complete = QuestState(1883, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5623, 0.7510, "Un'Thuwa",
                    "Travel to Un'Thuwa."),
            },
        },
        {
            id = "accept-1884-ju-ju-heaps",
            kind = "accept",
            priority = 1630,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Accept Ju-Ju Heaps from Un'Thuwa in Sen'jin Village.",
            complete = QuestState(1884, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5623, 0.7510, "Un'Thuwa",
                    "Travel to Un'Thuwa."),
            },
        },
        {
            id = "objective-1884-ju-ju-heaps",
            kind = "objective",
            priority = 1640,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Destroy 4 Ju-Ju Heaps in Echo Isles.",
            dependsOn = { "accept-1884-ju-ju-heaps" },
            complete = QuestState(1884, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.6739, 0.8259, "Echo Isles",
                    "Travel to Echo Isles."),
            },
        },
        {
            id = "turnin-1884-ju-ju-heaps",
            kind = "turnin",
            priority = 1650,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Turn in Ju-Ju Heaps to Un'Thuwa in Sen'jin Village.",
            dependsOn = { "objective-1884-ju-ju-heaps" },
            complete = QuestState(1884, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5625, 0.7515, "Un'Thuwa",
                    "Travel to Un'Thuwa."),
            },
        },
        {
            id = "objective-835-securing-the-lines",
            kind = "objective",
            priority = 1670,
            text = "Kill 12 Dustwind Savage and 8 Dustwind Storm Witch near Drygulch Ravine.",
            dependsOn = { "accept-835-securing-the-lines" },
            complete = QuestState(835, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5193, 0.2052, "Dustwind Savage",
                    "Travel to Dustwind Savage."),
            },
        },
        {
            id = "turnin-835-securing-the-lines",
            kind = "turnin",
            priority = 1680,
            text = "Turn in Securing the Lines to Rezlak in Durotar.",
            dependsOn = { "objective-835-securing-the-lines" },
            complete = QuestState(835, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4639, 0.2303, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "objective-816-lost-but-not-forgotten",
            kind = "objective",
            priority = 1690,
            text = "Kill Dreadmaw Crocolisk until you find Kron's Amulet in Southfury River.",
            dependsOn = { "accept-816-lost-but-not-forgotten" },
            complete = QuestState(816, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.3500, 0.4800, "Dreadmaw Crocolisk",
                    "Travel to Dreadmaw Crocolisk."),
            },
        },
        {
            id = "objective-806-dark-storms",
            kind = "objective",
            priority = 1710,
            text = "Kill Fizzle Darkclaw and collect Fizzle's Claw in Thunder Ridge.",
            dependsOn = { "accept-806-dark-storms" },
            complete = QuestState(806, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4208, 0.2677, "Fizzle Darkclaw",
                    "Travel to Fizzle Darkclaw."),
            },
        },
        {
            id = "objective-96874-this-is-spinal-axe-1",
            kind = "objective",
            priority = 1701,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = SKILL.BLACKSMITHING } },
                },
            },
            text = "This Is Spinal Axe: collect Weathered Spines from thunder lizards. Lightning Hide can also drop Halikor's Hoof. Use the hoof if it drops. This step is for blacksmiths.",
            dependsOn = { "accept-96874-this-is-spinal-axe" },
            complete = QuestObjective(96874, 1),
            route = {
                Point(MAP.DUROTAR, 0.3920, 0.2840, "Thunder Lizard",
                    "Travel to Thunder Lizard."),
            },
        },
        {
            id = "objective-96875-beasts-of-thunder-ridge-1",
            kind = "objective",
            priority = 1702,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = SKILL.LEATHERWORKING } },
                },
            },
            text = "Beasts of Thunder Ridge: collect Rough Lizard Hides from Lightning Hide. This step is for leatherworkers.",
            dependsOn = { "accept-96875-beasts-of-thunder-ridge" },
            complete = QuestObjective(96875, 1),
            route = {
                Point(MAP.DUROTAR, 0.4140, 0.2440, "Lightning Hide",
                    "Travel to Lightning Hide."),
            },
        },
        {
            id = "turnin-97281-a-simmering-storm",
            kind = "turnin",
            priority = 1703,
            conditions = {
                all = {
                    { level = { min = 11 } },
                    { quest = { id = 97281, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in A Simmering Storm to Rezlak if a thunder lizard dropped the Dull Stormy Orb.",
            complete = QuestState(97281, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4640, 0.2300, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "accept-97282-stormy-potential",
            kind = "accept",
            priority = 1704,
            conditions = {
                all = {
                    { level = { min = 11 } },
                    { quest = { id = 97281, state = "completed" } },
                },
            },
            text = "Accept Stormy Potential from Rezlak.",
            dependsOn = { "turnin-97281-a-simmering-storm" },
            complete = QuestState(97282, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4640, 0.2300, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "objective-97282-stormy-potential",
            kind = "objective",
            priority = 1705,
            conditions = {
                all = {
                    { level = { min = 11 } },
                    { quest = { id = 97281, state = "completed" } },
                },
            },
            text = "Collect a Charged Thunder Lizard Organ from the thunder lizards on Thunder Ridge.",
            dependsOn = { "accept-97282-stormy-potential" },
            complete = QuestState(97282, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.3920, 0.2840, "Thunder Lizard",
                    "Travel to Thunder Lizard."),
            },
        },
        {
            id = "turnin-97282-stormy-potential",
            kind = "turnin",
            priority = 1706,
            conditions = {
                all = {
                    { level = { min = 11 } },
                    { quest = { id = 97281, state = "completed" } },
                },
            },
            text = "Turn in Stormy Potential to Rezlak.",
            dependsOn = { "objective-97282-stormy-potential" },
            complete = QuestState(97282, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4640, 0.2300, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "turnin-816-lost-but-not-forgotten",
            kind = "turnin",
            priority = 1730,
            text = "Turn in Lost But Not Forgotten to Misha Tor'kren in Tor'kren Farm.",
            dependsOn = { "objective-816-lost-but-not-forgotten" },
            complete = QuestState(816, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4311, 0.3030, "Misha Tor'kren",
                    "Travel to Misha Tor'kren."),
            },
        },
        {
            id = "turnin-806-dark-storms",
            kind = "turnin",
            priority = 1750,
            text = "Turn in Dark Storms to Orgnil Soulscar in Razor Hill.",
            dependsOn = { "objective-806-dark-storms" },
            complete = QuestState(806, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5228, 0.4322, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-99048-a-missing-hand",
            kind = "accept",
            priority = 1751,
            conditions = { level = { min = 11 } },
            text = "Accept A Missing Hand from Orgnil Soulscar in Razor Hill.",
            complete = QuestState(99048, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "turnin-99048-a-missing-hand",
            kind = "turnin",
            priority = 1752,
            conditions = { level = { min = 11 } },
            text = "Turn in A Missing Hand to Heglan Shadeeye, north of Tiragarde Keep.",
            dependsOn = { "accept-99048-a-missing-hand" },
            complete = QuestState(99048, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5860, 0.4560, "Heglan Shadeeye",
                    "Travel to Heglan Shadeeye."),
            },
        },
        {
            id = "accept-99049-threat-from-below",
            kind = "accept",
            priority = 1753,
            conditions = { level = { min = 11 } },
            text = "Accept Threat from Below from Heglan Shadeeye.",
            dependsOn = { "turnin-99048-a-missing-hand" },
            complete = QuestState(99049, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5860, 0.4560, "Heglan Shadeeye",
                    "Travel to Heglan Shadeeye."),
            },
        },
        {
            id = "objective-99049-threat-from-below",
            kind = "objective",
            priority = 1754,
            conditions = { level = { min = 11 } },
            useClientPin = true,
            text = "Collect the Orcish Dagger, Banner Scrap, and Broken Bone Trident on the destroyed ground north of Tiragarde Keep. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "accept-99049-threat-from-below" },
            complete = QuestState(99049, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5860, 0.4560, "Skirmish site",
                    "Travel to Skirmish site."),
            },
        },
        {
            id = "turnin-99049-threat-from-below",
            kind = "turnin",
            priority = 1755,
            conditions = { level = { min = 11 } },
            text = "Turn in Threat from Below to Orgnil Soulscar in Razor Hill.",
            dependsOn = { "objective-99049-threat-from-below" },
            complete = QuestState(99049, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-99051-threat-from-below",
            kind = "accept",
            priority = 1756,
            conditions = { level = { min = 11 } },
            text = "Accept the next Threat from Below from Orgnil Soulscar.",
            dependsOn = { "turnin-99049-threat-from-below" },
            complete = QuestState(99051, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "objective-99051-threat-from-below",
            kind = "objective",
            priority = 1757,
            conditions = { level = { min = 11 } },
            text = "Collect 9 Naga Spinefins from Spitelash naga on the north coast.",
            dependsOn = { "accept-99051-threat-from-below" },
            complete = QuestState(99051, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5900, 0.2380, "Spitelash Scout",
                    "Travel to Spitelash Scout."),
            },
        },
        {
            id = "turnin-99051-threat-from-below",
            kind = "turnin",
            priority = 1758,
            conditions = { level = { min = 11 } },
            text = "Turn in Threat from Below to Orgnil Soulscar in Razor Hill.",
            dependsOn = { "objective-99051-threat-from-below" },
            complete = QuestState(99051, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-99052-threat-from-below",
            kind = "accept",
            priority = 1759,
            conditions = { level = { min = 12 } },
            text = "Accept the next Threat from Below from Orgnil Soulscar. This is an elite. Bring a group.",
            dependsOn = { "turnin-99051-threat-from-below" },
            complete = QuestState(99052, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-828-margoz",
            kind = "accept",
            priority = 1760,
            text = "Accept Margoz from Orgnil Soulscar in Razor Hill.",
            complete = QuestState(828, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5228, 0.4322, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-2983-call-of-fire",
            kind = "accept",
            priority = 1770,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Fire from Swart in Razor Hill Barracks.",
            complete = QuestState(2983, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5441, 0.4258, "Swart",
                    "Travel to Swart."),
            },
        },
        {
            id = "turnin-828-margoz",
            kind = "turnin",
            priority = 1780,
            text = "Turn in Margoz to Margoz in Durotar.",
            dependsOn = { "accept-828-margoz" },
            complete = QuestState(828, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5638, 0.2015, "Margoz",
                    "Travel to Margoz."),
            },
        },
        {
            id = "accept-827-skull-rock",
            kind = "accept",
            priority = 1790,
            text = "Accept Skull Rock from Margoz in Durotar.",
            complete = QuestState(827, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5638, 0.2015, "Margoz",
                    "Travel to Margoz."),
            },
        },
        {
            id = "objective-99052-threat-from-below",
            kind = "objective",
            priority = 1801,
            conditions = { level = { min = 12 } },
            text = "Kill Aggor the Young on the north coast and take Aggor's Belt. This is an elite. Bring a group.",
            dependsOn = { "accept-99052-threat-from-below" },
            complete = QuestState(99052, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5900, 0.1740, "Aggor the Young",
                    "Travel to Aggor the Young."),
            },
        },
        {
            id = "objective-1501-creature-of-the-void",
            kind = "objective",
            priority = 1810,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Follow the path around the right side of the cave and collect Tablet of Verga from the chest in Skull Rock.",
            dependsOn = { "accept-1501-creature-of-the-void" },
            complete = QuestState(1501, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5161, 0.0971, "Skull Rock",
                    "Travel to Skull Rock."),
            },
        },
        {
            id = "objective-827-skull-rock",
            kind = "objective",
            priority = 1820,
            text = "Kill Burning Blade Apprentice, Burning Blade Fanatic and collect 6 Searing Collar in Skull Rock.",
            dependsOn = { "accept-827-skull-rock" },
            complete = QuestState(827, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5406, 0.0886, "Burning Blade Apprentice",
                    "Travel to Burning Blade Apprentice."),
            },
        },
        {
            id = "objective-5726-hidden-enemies",
            kind = "objective",
            priority = 1830,
            text = "Kill Burning Blade Apprentice until you find Lieutenant's Insignia in Skull Rock.",
            dependsOn = { "accept-5726-hidden-enemies" },
            complete = QuestState(5726, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5406, 0.0886, "Burning Blade Apprentice",
                    "Travel to Burning Blade Apprentice."),
            },
        },
        {
            id = "objective-832-gazz-uz",
            kind = "objective",
            priority = 1840,
            text = "Kill Gazz'uz to collect Eye of Burning Shadow to start a quest. Use the Faintly Glowing Skull on him to help if you still have this. Skip this if you fail.",
            complete = QuestState(832, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5150, 0.0970, "Gazz'uz",
                    "Travel to Gazz'uz."),
            },
        },
        {
            id = "turnin-827-skull-rock",
            kind = "turnin",
            priority = 1850,
            text = "Turn in Skull Rock to Margoz in Durotar.",
            dependsOn = { "objective-827-skull-rock" },
            complete = QuestState(827, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5635, 0.2005, "Margoz",
                    "Travel to Margoz."),
            },
        },
        {
            id = "turnin-99052-threat-from-below",
            kind = "turnin",
            priority = 1865,
            conditions = { level = { min = 12 } },
            text = "Turn in Threat from Below to Orgnil Soulscar in Razor Hill.",
            dependsOn = { "objective-99052-threat-from-below" },
            complete = QuestState(99052, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-829-neeru-fireblade",
            kind = "accept",
            priority = 1860,
            text = "Accept Neeru Fireblade from Margoz in Durotar.",
            complete = QuestState(829, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5635, 0.2005, "Margoz",
                    "Travel to Margoz."),
            },
        },
        {
            id = "turnin-5726-hidden-enemies",
            kind = "turnin",
            priority = 1880,
            text = "Turn in Hidden Enemies to Thrall in Grommash Hold.",
            dependsOn = { "objective-5726-hidden-enemies" },
            complete = QuestState(5726, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3198, 0.3783, "Thrall",
                    "Travel to Thrall."),
            },
        },
        {
            id = "accept-5727-hidden-enemies",
            kind = "accept",
            priority = 1890,
            text = "Accept Hidden Enemies from Thrall in Grommash Hold.",
            complete = QuestState(5727, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3198, 0.3783, "Thrall",
                    "Travel to Thrall."),
            },
        },
        {
            id = "turnin-829-neeru-fireblade",
            kind = "turnin",
            priority = 1900,
            text = "Turn in Neeru Fireblade to Arnak Fireblade in Cleft of Shadow.",
            dependsOn = { "accept-829-neeru-fireblade" },
            complete = QuestState(829, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4956, 0.5046, "Arnak Fireblade",
                    "Travel to Arnak Fireblade."),
            },
        },
        {
            id = "accept-809-ak-zeloth",
            kind = "accept",
            priority = 1910,
            text = "Accept Ak'Zeloth from Arnak Fireblade in Cleft of Shadow.",
            complete = QuestState(809, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4956, 0.5046, "Arnak Fireblade",
                    "Travel to Arnak Fireblade."),
            },
        },
        {
            id = "turnin-1501-creature-of-the-void",
            kind = "turnin",
            priority = 1920,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Creature of the Void to Mordak Darkfist in Cleft of Shadow.",
            dependsOn = { "objective-1501-creature-of-the-void" },
            complete = QuestState(1501, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4826, 0.4541, "Mordak Darkfist",
                    "Travel to Mordak Darkfist."),
            },
        },
        {
            id = "accept-1504-the-binding",
            kind = "accept",
            priority = 1930,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept The Binding from Mordak Darkfist in Cleft of Shadow.",
            complete = QuestState(1504, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4826, 0.4541, "Mordak Darkfist",
                    "Travel to Mordak Darkfist."),
            },
        },
        {
            id = "objective-1504-the-binding",
            kind = "objective",
            priority = 1940,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Using the Glyphs of Summoning summon on the purple summoning circle and subdue a Summoned Voidwalker in Cleft of Shadow.",
            dependsOn = { "accept-1504-the-binding" },
            complete = QuestState(1504, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4560, 0.0007, "Summoned Voidwalker",
                    "Travel to Summoned Voidwalker."),
            },
        },
        {
            id = "turnin-1504-the-binding",
            kind = "turnin",
            priority = 1950,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in The Binding to Mordak Darkfist in Cleft of Shadow.",
            dependsOn = { "objective-1504-the-binding" },
            complete = QuestState(1504, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4826, 0.4541, "Mordak Darkfist",
                    "Travel to Mordak Darkfist."),
            },
        },
        {
            id = "objective-5727-hidden-enemies",
            kind = "objective",
            priority = 1960,
            text = "Talk to Arnak Fireblade in Cleft of Shadow.",
            dependsOn = { "accept-5727-hidden-enemies" },
            complete = QuestState(5727, "complete"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4956, 0.5046, "Arnak Fireblade",
                    "Travel to Arnak Fireblade."),
            },
        },
        {
            id = "turnin-5727-hidden-enemies",
            kind = "turnin",
            priority = 1970,
            text = "Turn in Hidden Enemies to Thrall in Grommash Hold.",
            dependsOn = { "objective-5727-hidden-enemies" },
            complete = QuestState(5727, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3198, 0.3783, "Thrall",
                    "Travel to Thrall."),
            },
        },
        {
            id = "objective-96874-this-is-spinal-axe-2",
            kind = "objective",
            priority = 1971,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = SKILL.BLACKSMITHING } },
                },
            },
            text = "This Is Spinal Axe: buy or craft 5 of Ug'thok's coarse stone reagent. This step is for blacksmiths.",
            dependsOn = { "accept-96874-this-is-spinal-axe" },
            complete = QuestObjective(96874, 2),
            route = {
                Point(MAP.ORGRIMMAR, 0.8060, 0.2340, "Ug'thok",
                    "Travel to Ug'thok."),
            },
        },
        {
            id = "turnin-96874-this-is-spinal-axe",
            kind = "turnin",
            priority = 1972,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = SKILL.BLACKSMITHING } },
                },
            },
            text = "Turn in This Is Spinal Axe to Ug'thok. This step is for blacksmiths.",
            dependsOn = { "objective-96874-this-is-spinal-axe-1", "objective-96874-this-is-spinal-axe-2" },
            complete = QuestState(96874, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.8060, 0.2340, "Ug'thok",
                    "Travel to Ug'thok."),
            },
        },
        {
            id = "objective-96875-beasts-of-thunder-ridge-2",
            kind = "objective",
            priority = 1973,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = SKILL.LEATHERWORKING } },
                },
            },
            text = "Beasts of Thunder Ridge: buy or craft 2 Cured Light Hides. This step is for leatherworkers.",
            dependsOn = { "accept-96875-beasts-of-thunder-ridge" },
            complete = QuestObjective(96875, 2),
            route = {
                Point(MAP.ORGRIMMAR, 0.6300, 0.4500, "Kamari",
                    "Travel to Kamari."),
            },
        },
        {
            id = "turnin-96875-beasts-of-thunder-ridge",
            kind = "turnin",
            priority = 1974,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { profession = { skillLineID = SKILL.LEATHERWORKING } },
                },
            },
            text = "Turn in Beasts of Thunder Ridge to Kamari. This step is for leatherworkers.",
            dependsOn = { "objective-96875-beasts-of-thunder-ridge-1", "objective-96875-beasts-of-thunder-ridge-2" },
            complete = QuestState(96875, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.6300, 0.4500, "Kamari",
                    "Travel to Kamari."),
            },
        },
        {
            id = "turnin-96877-halikors-hoof",
            kind = "turnin",
            priority = 1975,
            conditions = {
                all = {
                    { level = { min = 12 } },
                    { quest = { id = 96877, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Halikor's Hoof to Kamari if a thunder lizard dropped the hoof.",
            complete = QuestState(96877, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.6300, 0.4500, "Kamari",
                    "Travel to Kamari."),
            },
        },
        {
            id = "accept-840-conscript-of-the-horde",
            kind = "accept",
            priority = 1990,
            text = "Accept Conscript of the Horde from Takrin Pathseeker in Razor Hill.",
            complete = QuestState(840, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5089, 0.4358, "Takrin Pathseeker",
                    "Travel to Takrin Pathseeker."),
            },
        },
    },
})
