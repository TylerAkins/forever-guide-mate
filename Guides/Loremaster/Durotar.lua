local _, ns = ...

-- Horde Loremaster route for Durotar.
-- The step order is the leveling route. Zone quests that route skips are woven in.
-- Quest list: https://www.wowhead.com/forever/quests/kalimdor/durotar
-- Rules for the next zone: docs/zone-loremaster-guides.md
-- Chains stay in Wowhead series order. At Sen'jin Village, Thwarting Kolkar
-- Aggression, Practical Prey, A Solvent Spirit, Zalazane, and Minshina's Skull
-- are accepted before the route leaves. Each quest objective is its own step
-- so a finished pin cannot become active again.
-- Omitted from this run:
-- The New Horde (787) is an alternate of Your Place In The World and has no giver.
-- Welcome! (5843) is the Collector's Edition gift voucher.
-- <UNUSED> (807, 810, 814, 820) has no quest text worth running.
-- Vile Familiars stays because the leveling route trains the warlock there.
-- Ragefire Chasm quests stay in the dungeon guide.
-- A Strategic Alliance (785), Burning Shadows (832), Ukor's Lost Pack (96876),
-- Halikor's Hoof (96877), and A Simmering Storm (97281) have no world start.
-- Those turn-ins appear only after the quest is in the log.
-- The Orgrimmar and Sen'jin crafting lessons need the profession the trainer
-- teaches: A Pain in the Neck (96873) enchanting, This Is Spinal Axe (96874)
-- blacksmithing, and Beasts of Thunder Ridge (96875) leatherworking. Those
-- steps are skipped without the profession, and the character still reaches
-- 100%. Halikor's Hoof (96877) drops for anyone, so its turn-in is not gated.
-- The Valley of Trials through Report to Sen'jin Village, Wayward Weapons,
-- A Peon's Burden, and Conscript of the Horde are orc and troll.
-- Other Horde races still reach 100%.
-- Cactus apples, training weapons, Thazz'ril's Pick, Minshina's skull, loa idols,
-- gnomish tools, Tiragarde relics, prickly pears, taillasher eggs, and the
-- north-coast clues have no Wowhead pin. Those steps name the landmark.
-- Coordinates have not been validated in the Forever client.

-- Step order follows the leveling route. Zone quests that are not on
-- that route are woven in at the same giver, or after their series quest.
local MAP = {
    DUROTAR = 1411,
    ORGRIMMAR = 1454,
    BARRENS = 1413,
}

local SKILL = {
    BLACKSMITHING = 164,
    LEATHERWORKING = 165,
    ENCHANTING = 333,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index, text)
    return { questObjective = { id = questID, index = index, text = text } }
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
    id = "leveling-durotar",
    title = "Durotar (Loremaster)",
    category = "Loremaster Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-4641-your-place-in-the-world",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Your Place In The World from Kaltunk.",
            complete = QuestState(4641, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.432, 0.686, "Kaltunk",
                    "Travel to Kaltunk."),
            },
        },
        {
            id = "accept-1485-vile-familiars",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Your Place In The World to Gornek.",
            dependsOn = { "accept-4641-your-place-in-the-world" },
            complete = QuestState(4641, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.420, 0.684, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-788-cutting-teeth",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Cutting Teeth from Gornek.",
            dependsOn = { "turnin-4641-your-place-in-the-world" },
            complete = QuestState(788, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.420, 0.684, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-97279-wayward-weapons",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Wayward Weapons from Gornek.",
            complete = QuestState(97279, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.420, 0.684, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "objective-788-cutting-teeth-1",
            kind = "objective",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Cutting Teeth: Mottled Boar.",
            dependsOn = { "accept-788-cutting-teeth" },
            complete = QuestObjective(788, 1, "Mottled Boar"),
            route = {
                Point(MAP.DUROTAR, 0.438, 0.662, "Mottled Boar",
                    "Travel to Mottled Boar."),
            },
        },
        {
            id = "objective-97279-wayward-weapons-1",
            kind = "objective",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Wayward Weapons: Abandoned Training Weapon. The weapons are abandoned around the Valley of Trials. Wowhead has no weapon pin, so this marks the Den.",
            dependsOn = { "accept-97279-wayward-weapons" },
            complete = QuestObjective(97279, 1, "Abandoned Training Weapon"),
            route = {
                Point(MAP.DUROTAR, 0.420, 0.684, "Valley of Trials",
                    "Travel to Valley of Trials."),
            },
        },
        {
            id = "objective-1485-vile-familiars",
            kind = "objective",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 90,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 100,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 110,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Cutting Teeth to Gornek.",
            dependsOn = { "objective-788-cutting-teeth-1" },
            complete = QuestState(788, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.420, 0.684, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "turnin-97279-wayward-weapons",
            kind = "turnin",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Wayward Weapons to Kzan Thornslash.",
            dependsOn = { "objective-97279-wayward-weapons-1" },
            complete = QuestState(97279, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.404, 0.680, "Kzan Thornslash",
                    "Travel to Kzan Thornslash."),
            },
        },
        {
            id = "accept-789-sting-of-the-scorpid",
            kind = "accept",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Sting of the Scorpid from Gornek.",
            complete = QuestState(789, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.420, 0.684, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "accept-3087-etched-parchment",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 160,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 170,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 180,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 190,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 200,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 210,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 220,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 230,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 240,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 250,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 2 } },
                },
            },
            text = "Accept Vile Familiars from Zureetha Fargaze.",
            complete = QuestState(792, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.428, 0.690, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "turnin-3087-etched-tablet",
            kind = "turnin",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 280,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 290,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 300,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 310,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 320,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 330,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 340,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 350,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 360,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 370,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            id = "accept-4402-galgars-cactus-apple-surprise",
            kind = "accept",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Galgar's Cactus Apple Surprise from Galgar.",
            complete = QuestState(4402, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.426, 0.672, "Galgar",
                    "Travel to Galgar."),
            },
        },
        {
            id = "accept-790-sarkoth",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Sarkoth from Hana'zua.",
            complete = QuestState(790, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.406, 0.626, "Hana'zua",
                    "Travel to Hana'zua."),
            },
        },
        {
            id = "objective-790-sarkoth-1",
            kind = "objective",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Sarkoth: Sarkoth's Mangled Claw.",
            dependsOn = { "accept-790-sarkoth" },
            complete = QuestObjective(790, 1, "Sarkoth's Mangled Claw"),
            route = {
                Point(MAP.DUROTAR, 0.406, 0.662, "Sarkoth",
                    "Travel to Sarkoth."),
            },
        },
        {
            id = "objective-789-sting-of-the-scorpid-1",
            kind = "objective",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Sting of the Scorpid: Scorpid Worker Tail.",
            dependsOn = { "accept-789-sting-of-the-scorpid" },
            complete = QuestObjective(789, 1, "Scorpid Worker Tail"),
            route = {
                Point(MAP.DUROTAR, 0.406, 0.656, "Scorpid Worker",
                    "Travel to Scorpid Worker."),
            },
        },
        {
            id = "turnin-790-sarkoth",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Sarkoth to Hana'zua.",
            dependsOn = { "objective-790-sarkoth-1" },
            complete = QuestState(790, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.406, 0.626, "Hana'zua",
                    "Travel to Hana'zua."),
            },
        },
        {
            id = "accept-804-sarkoth",
            kind = "accept",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Sarkoth from Hana'zua.",
            dependsOn = { "turnin-790-sarkoth" },
            complete = QuestState(804, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.406, 0.626, "Hana'zua",
                    "Travel to Hana'zua."),
            },
        },
        {
            id = "turnin-804-sarkoth",
            kind = "turnin",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Sarkoth to Gornek.",
            dependsOn = { "accept-804-sarkoth" },
            complete = QuestState(804, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.420, 0.684, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "objective-792-vile-familiars-1",
            kind = "objective",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 2 } },
                },
            },
            text = "Vile Familiars: Vile Familiar.",
            dependsOn = { "accept-792-vile-familiars" },
            complete = QuestObjective(792, 1, "Vile Familiar"),
            route = {
                Point(MAP.DUROTAR, 0.452, 0.550, "Vile Familiar",
                    "Travel to Vile Familiar."),
            },
        },
        {
            id = "objective-4402-galgars-cactus-apple-surprise-1",
            kind = "objective",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Galgar's Cactus Apple Surprise: Cactus Apple. Cactuses stand around the Valley of Trials. Wowhead has no cactus pin, so this marks Galgar's camp.",
            dependsOn = { "accept-4402-galgars-cactus-apple-surprise" },
            complete = QuestObjective(4402, 1, "Cactus Apple"),
            route = {
                Point(MAP.DUROTAR, 0.426, 0.672, "Cactus",
                    "Travel to Cactus."),
            },
        },
        {
            id = "turnin-4402-galgars-cactus-apple-surprise",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Galgar's Cactus Apple Surprise to Galgar.",
            dependsOn = { "objective-4402-galgars-cactus-apple-surprise-1" },
            complete = QuestState(4402, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.426, 0.672, "Galgar",
                    "Travel to Galgar."),
            },
        },
        {
            id = "turnin-789-sting-of-the-scorpid",
            kind = "turnin",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Sting of the Scorpid to Gornek.",
            dependsOn = { "objective-789-sting-of-the-scorpid-1" },
            complete = QuestState(789, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.420, 0.684, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "turnin-792-vile-familiars",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in Vile Familiars to Zureetha Fargaze.",
            dependsOn = { "objective-792-vile-familiars-1" },
            complete = QuestState(792, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.428, 0.690, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "accept-794-burning-blade-medallion",
            kind = "accept",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Burning Blade Medallion from Zureetha Fargaze.",
            dependsOn = { "turnin-792-vile-familiars" },
            complete = QuestState(794, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.428, 0.690, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "accept-5441-lazy-peons",
            kind = "accept",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Lazy Peons from Foreman Thazz'ril.",
            complete = QuestState(5441, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.446, 0.686, "Foreman Thazz'ril",
                    "Travel to Foreman Thazz'ril."),
            },
        },
        {
            id = "objective-5441-lazy-peons-1",
            kind = "objective",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 3 } },
                },
            },
            text = "Lazy Peons: Peons Awoken. Use the Foreman's Blackjack on sleeping peons.",
            dependsOn = { "accept-5441-lazy-peons" },
            complete = QuestObjective(5441, 1, "Peons Awoken"),
            route = {
                Point(MAP.DUROTAR, 0.448, 0.690, "Lazy Peon",
                    "Travel to Lazy Peon."),
            },
        },
        {
            id = "turnin-5441-lazy-peons",
            kind = "turnin",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Lazy Peons to Foreman Thazz'ril.",
            dependsOn = { "objective-5441-lazy-peons-1" },
            complete = QuestState(5441, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.446, 0.686, "Foreman Thazz'ril",
                    "Travel to Foreman Thazz'ril."),
            },
        },
        {
            id = "accept-6394-thazzrils-pick",
            kind = "accept",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Thazz'ril's Pick from Foreman Thazz'ril.",
            dependsOn = { "turnin-5441-lazy-peons" },
            complete = QuestState(6394, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.446, 0.686, "Foreman Thazz'ril",
                    "Travel to Foreman Thazz'ril."),
            },
        },
        {
            id = "accept-1516-call-of-earth",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            id = "objective-794-burning-blade-medallion-1",
            kind = "objective",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Burning Blade Medallion: Burning Blade Medallion.",
            dependsOn = { "accept-794-burning-blade-medallion" },
            complete = QuestObjective(794, 1, "Burning Blade Medallion"),
            route = {
                Point(MAP.DUROTAR, 0.426, 0.528, "Yarrog Baneshadow",
                    "Travel to Yarrog Baneshadow."),
            },
        },
        {
            id = "objective-6394-thazzrils-pick-1",
            kind = "objective",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 3 } },
                },
            },
            text = "Thazz'ril's Pick: Thazz'ril's Pick. The pick is inside the Burning Blade cave with the Vile Familiars. Wowhead has no pick pin.",
            dependsOn = { "accept-6394-thazzrils-pick" },
            complete = QuestObjective(6394, 1, "Thazz'ril's Pick"),
            route = {
                Point(MAP.DUROTAR, 0.452, 0.550, "Burning Blade cave",
                    "Travel to Burning Blade cave."),
            },
        },
        {
            id = "objective-1516-call-of-earth",
            kind = "objective",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Burning Blade Medallion to Zureetha Fargaze.",
            dependsOn = { "objective-794-burning-blade-medallion-1" },
            complete = QuestState(794, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.428, 0.690, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "accept-805-report-to-senjin-village",
            kind = "accept",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Report to Sen'jin Village from Zureetha Fargaze.",
            dependsOn = { "turnin-794-burning-blade-medallion" },
            complete = QuestState(805, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.428, 0.690, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze."),
            },
        },
        {
            id = "turnin-6394-thazzrils-pick",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Thazz'ril's Pick to Foreman Thazz'ril.",
            dependsOn = { "objective-6394-thazzrils-pick-1" },
            complete = QuestState(6394, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.446, 0.686, "Foreman Thazz'ril",
                    "Travel to Foreman Thazz'ril."),
            },
        },
        {
            id = "turnin-1517-call-of-earth",
            kind = "turnin",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            id = "accept-2161-a-peons-burden",
            kind = "accept",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Accept A Peon's Burden from Ukor.",
            complete = QuestState(2161, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.682, "Ukor",
                    "Travel to Ukor."),
            },
        },
        {
            id = "accept-786-thwarting-kolkar-aggression",
            kind = "accept",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Thwarting Kolkar Aggression from Lar Prowltusk.",
            complete = QuestState(786, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.542, 0.732, "Lar Prowltusk",
                    "Travel to Lar Prowltusk."),
            },
        },
        {
            id = "turnin-785-a-strategic-alliance",
            kind = "turnin",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 785, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in A Strategic Alliance to Lar Prowltusk if it is in your log. Wowhead has no giver for this breadcrumb.",
            complete = QuestState(785, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.542, 0.732, "Lar Prowltusk",
                    "Travel to Lar Prowltusk."),
            },
        },
        {
            id = "turnin-805-report-to-senjin-village",
            kind = "turnin",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Report to Sen'jin Village to Master Gadrin.",
            dependsOn = { "accept-805-report-to-senjin-village" },
            complete = QuestState(805, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.560, 0.746, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "accept-808-minshinas-skull",
            kind = "accept",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Minshina's Skull from Master Gadrin.",
            complete = QuestState(808, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.560, 0.746, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "accept-823-report-to-orgnil",
            kind = "accept",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Report to Orgnil from Master Gadrin.",
            complete = QuestState(823, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.560, 0.746, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "accept-826-zalazane",
            kind = "accept",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Zalazane from Master Gadrin.",
            complete = QuestState(826, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.560, 0.746, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "accept-818-a-solvent-spirit",
            kind = "accept",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept A Solvent Spirit from Master Vornal.",
            complete = QuestState(818, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.558, 0.744, "Master Vornal",
                    "Travel to Master Vornal."),
            },
        },
        {
            id = "accept-817-practical-prey",
            kind = "accept",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Practical Prey from Vel'rin Fang.",
            complete = QuestState(817, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.558, 0.740, "Vel'rin Fang",
                    "Travel to Vel'rin Fang."),
            },
        },
        {
            id = "accept-96821-legging-it",
            kind = "accept",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Legging It from Vel'rin Fang.",
            complete = QuestState(96821, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.558, 0.740, "Vel'rin Fang",
                    "Travel to Vel'rin Fang."),
            },
        },
        {
            id = "accept-97225-forgotten-loa-idols",
            kind = "accept",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Forgotten Loa Idols from Master Vornal.",
            complete = QuestState(97225, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.558, 0.744, "Master Vornal",
                    "Travel to Master Vornal."),
            },
        },
        {
            id = "accept-97223-bloodtalon-matriarch",
            kind = "accept",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Bloodtalon Matriarch from Xar'Ti.",
            complete = QuestState(97223, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.552, 0.754, "Xar'Ti",
                    "Travel to Xar'Ti."),
            },
        },
        {
            id = "accept-96873-a-pain-in-the-neck",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { profession = { skillLineID = SKILL.ENCHANTING } },
                },
            },
            text = "Accept A Pain in the Neck from Pa'zula. This step is for enchanters.",
            complete = QuestState(96873, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.566, 0.736, "Pa'zula",
                    "Travel to Pa'zula."),
            },
        },
        {
            id = "objective-96821-legging-it-1",
            kind = "objective",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Legging It: Ridgeshade Creeper.",
            dependsOn = { "accept-96821-legging-it" },
            complete = QuestObjective(96821, 1, "Ridgeshade Creeper"),
            route = {
                Point(MAP.DUROTAR, 0.516, 0.574, "Ridgeshade Creeper",
                    "Travel to Ridgeshade Creeper."),
            },
        },
        {
            id = "objective-96821-legging-it-2",
            kind = "objective",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Legging It: Ridgeshade Lurker.",
            dependsOn = { "accept-96821-legging-it" },
            complete = QuestObjective(96821, 2, "Ridgeshade Lurker"),
            route = {
                Point(MAP.DUROTAR, 0.504, 0.518, "Ridgeshade Lurker",
                    "Travel to Ridgeshade Lurker."),
            },
        },
        {
            id = "turnin-96876-ukors-lost-pack",
            kind = "turnin",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 96876, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Ukor's Lost Pack to Ukor if you found the pack.",
            complete = QuestState(96876, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.682, "Ukor",
                    "Travel to Ukor."),
            },
        },
        {
            id = "turnin-823-report-to-orgnil",
            kind = "turnin",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Report to Orgnil to Orgnil Soulscar.",
            dependsOn = { "accept-823-report-to-orgnil" },
            complete = QuestState(823, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.522, 0.432, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-806-dark-storms",
            kind = "accept",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Dark Storms from Orgnil Soulscar.",
            dependsOn = { "turnin-823-report-to-orgnil" },
            complete = QuestState(806, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.522, 0.432, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-784-vanquish-the-betrayers",
            kind = "accept",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Vanquish the Betrayers from Gar'Thok.",
            complete = QuestState(784, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.434, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "turnin-96821-legging-it",
            kind = "turnin",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Legging It to Gar'Thok.",
            dependsOn = { "objective-96821-legging-it-1", "objective-96821-legging-it-2" },
            complete = QuestState(96821, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.434, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "accept-96822-for-honor",
            kind = "accept",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept For Honor from Turroc.",
            complete = QuestState(96822, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.540, 0.426, "Turroc",
                    "Travel to Turroc."),
            },
        },
        {
            id = "accept-837-encroachment",
            kind = "accept",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Accept Encroachment from Gar'Thok.",
            complete = QuestState(837, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.434, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "accept-791-carry-your-weight",
            kind = "accept",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Carry Your Weight from Furl Scornbrow.",
            complete = QuestState(791, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.498, 0.404, "Furl Scornbrow",
                    "Travel to Furl Scornbrow."),
            },
        },
        {
            id = "accept-815-break-a-few-eggs",
            kind = "accept",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Accept Break a Few Eggs from Cook Torka.",
            complete = QuestState(815, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.512, 0.424, "Cook Torka",
                    "Travel to Cook Torka."),
            },
        },
        {
            id = "accept-96825-this-fruit-could-bite-back",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept This Fruit Could Bite Back from Cook Torka.",
            complete = QuestState(96825, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.512, 0.424, "Cook Torka",
                    "Travel to Cook Torka."),
            },
        },
        {
            id = "turnin-2161-a-peons-burden",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in A Peon's Burden to Innkeeper Grosk.",
            dependsOn = { "accept-2161-a-peons-burden" },
            complete = QuestState(2161, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.516, 0.416, "Innkeeper Grosk",
                    "Travel to Innkeeper Grosk."),
            },
        },
        {
            id = "objective-784-vanquish-the-betrayers-1",
            kind = "objective",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Vanquish the Betrayers: Kul Tiras Sailor.",
            dependsOn = { "accept-784-vanquish-the-betrayers" },
            complete = QuestObjective(784, 1, "Kul Tiras Sailor"),
            route = {
                Point(MAP.DUROTAR, 0.594, 0.588, "Kul Tiras Sailor",
                    "Travel to Kul Tiras Sailor."),
            },
        },
        {
            id = "objective-784-vanquish-the-betrayers-2",
            kind = "objective",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Vanquish the Betrayers: Kul Tiras Marine.",
            dependsOn = { "accept-784-vanquish-the-betrayers" },
            complete = QuestObjective(784, 2, "Kul Tiras Marine"),
            route = {
                Point(MAP.DUROTAR, 0.592, 0.578, "Kul Tiras Marine",
                    "Travel to Kul Tiras Marine."),
            },
        },
        {
            id = "objective-784-vanquish-the-betrayers-3",
            kind = "objective",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Vanquish the Betrayers: Lieutenant Benedict.",
            dependsOn = { "accept-784-vanquish-the-betrayers" },
            complete = QuestObjective(784, 3, "Lieutenant Benedict"),
            route = {
                Point(MAP.DUROTAR, 0.594, 0.582, "Lieutenant Benedict",
                    "Travel to Lieutenant Benedict."),
            },
        },
        {
            id = "accept-830-the-admirals-orders",
            kind = "accept",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Take Admiral Proudmoore's Orders from Lieutenant Benedict and read them.",
            dependsOn = { "objective-784-vanquish-the-betrayers-3" },
            complete = QuestState(830, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.594, 0.582, "Lieutenant Benedict",
                    "Travel to Lieutenant Benedict."),
            },
        },
        {
            id = "objective-791-carry-your-weight-1",
            kind = "objective",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Carry Your Weight: Canvas Scraps. Canvas Scraps drop from the humans and other Durotar humanoids.",
            dependsOn = { "accept-791-carry-your-weight" },
            complete = QuestObjective(791, 1, "Canvas Scraps"),
            route = {
                Point(MAP.DUROTAR, 0.594, 0.588, "Kul Tiras Sailor",
                    "Travel to Kul Tiras Sailor."),
            },
        },
        {
            id = "turnin-784-vanquish-the-betrayers",
            kind = "turnin",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Vanquish the Betrayers to Gar'Thok.",
            dependsOn = { "objective-784-vanquish-the-betrayers-1", "objective-784-vanquish-the-betrayers-2", "objective-784-vanquish-the-betrayers-3" },
            complete = QuestState(784, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.434, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "turnin-96822-for-honor",
            kind = "turnin",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in For Honor to Turroc.",
            dependsOn = { "objective-96822-for-honor-1", "objective-96822-for-honor-2", "objective-96822-for-honor-3" },
            complete = QuestState(96822, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.540, 0.426, "Turroc",
                    "Travel to Turroc."),
            },
        },
        {
            id = "turnin-96825-this-fruit-could-bite-back",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in This Fruit Could Bite Back to Cook Torka.",
            dependsOn = { "objective-96825-this-fruit-could-bite-back-1" },
            complete = QuestState(96825, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.512, 0.424, "Cook Torka",
                    "Travel to Cook Torka."),
            },
        },
        {
            id = "accept-825-from-the-wreckage",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept From The Wreckage.... from Gar'Thok.",
            dependsOn = { "turnin-784-vanquish-the-betrayers" },
            complete = QuestState(825, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.434, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "turnin-830-the-admirals-orders",
            kind = "turnin",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in The Admiral's Orders to Gar'Thok.",
            dependsOn = { "accept-830-the-admirals-orders" },
            complete = QuestState(830, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.434, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "accept-831-the-admirals-orders",
            kind = "accept",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept The Admiral's Orders from Gar'Thok.",
            dependsOn = { "turnin-830-the-admirals-orders" },
            complete = QuestState(831, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.434, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "turnin-791-carry-your-weight",
            kind = "turnin",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Carry Your Weight to Furl Scornbrow.",
            dependsOn = { "objective-791-carry-your-weight-1" },
            complete = QuestState(791, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.498, 0.404, "Furl Scornbrow",
                    "Travel to Furl Scornbrow."),
            },
        },
        {
            id = "objective-96825-this-fruit-could-bite-back-1",
            kind = "objective",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "This Fruit Could Bite Back: Prickly Pear Fruit. The fruit grows on the Razormane grounds west of Razor Hill. Wowhead has no cactus pin.",
            dependsOn = { "accept-96825-this-fruit-could-bite-back" },
            complete = QuestObjective(96825, 1, "Prickly Pear Fruit"),
            route = {
                Point(MAP.DUROTAR, 0.430, 0.398, "Razormane grounds",
                    "Travel to Razormane grounds."),
            },
        },
        {
            id = "objective-96822-for-honor-1",
            kind = "objective",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "For Honor: Raider's Bow. Search the outskirts of Tiragarde Keep. Wowhead has no item pin.",
            dependsOn = { "accept-96822-for-honor" },
            complete = QuestObjective(96822, 1, "Raider's Bow"),
            route = {
                Point(MAP.DUROTAR, 0.594, 0.588, "Tiragarde Keep outskirts",
                    "Travel to Tiragarde Keep outskirts."),
            },
        },
        {
            id = "objective-96822-for-honor-2",
            kind = "objective",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "For Honor: Raider's Battleaxe. Search the outskirts of Tiragarde Keep. Wowhead has no item pin.",
            dependsOn = { "accept-96822-for-honor" },
            complete = QuestObjective(96822, 2, "Raider's Battleaxe"),
            route = {
                Point(MAP.DUROTAR, 0.594, 0.588, "Tiragarde Keep outskirts",
                    "Travel to Tiragarde Keep outskirts."),
            },
        },
        {
            id = "objective-96822-for-honor-3",
            kind = "objective",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "For Honor: Raider's Shield. Search the outskirts of Tiragarde Keep. Wowhead has no item pin.",
            dependsOn = { "accept-96822-for-honor" },
            complete = QuestObjective(96822, 3, "Raider's Shield"),
            route = {
                Point(MAP.DUROTAR, 0.594, 0.588, "Tiragarde Keep outskirts",
                    "Travel to Tiragarde Keep outskirts."),
            },
        },
        {
            id = "objective-837-encroachment-1",
            kind = "objective",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Encroachment: Razormane Quilboar.",
            dependsOn = { "accept-837-encroachment" },
            complete = QuestObjective(837, 1, "Razormane Quilboar"),
            route = {
                Point(MAP.DUROTAR, 0.496, 0.492, "Razormane Quilboar",
                    "Travel to Razormane Quilboar."),
            },
        },
        {
            id = "objective-837-encroachment-2",
            kind = "objective",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Encroachment: Razormane Scout.",
            dependsOn = { "accept-837-encroachment" },
            complete = QuestObjective(837, 2, "Razormane Scout"),
            route = {
                Point(MAP.DUROTAR, 0.496, 0.492, "Razormane Scout",
                    "Travel to Razormane Scout."),
            },
        },
        {
            id = "objective-837-encroachment-3",
            kind = "objective",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Encroachment: Razormane Dustrunner.",
            dependsOn = { "accept-837-encroachment" },
            complete = QuestObjective(837, 3, "Razormane Dustrunner"),
            route = {
                Point(MAP.DUROTAR, 0.430, 0.398, "Razormane Dustrunner",
                    "Travel to Razormane Dustrunner."),
            },
        },
        {
            id = "objective-837-encroachment-4",
            kind = "objective",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Encroachment: Razormane Battleguard.",
            dependsOn = { "accept-837-encroachment" },
            complete = QuestObjective(837, 4, "Razormane Battleguard"),
            route = {
                Point(MAP.DUROTAR, 0.432, 0.404, "Razormane Battleguard",
                    "Travel to Razormane Battleguard."),
            },
        },
        {
            id = "objective-825-from-the-wreckage-1",
            kind = "objective",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "From The Wreckage....: Gnomish Tools. The tools are in the wreckage off the coast east of Tiragarde Keep. Wowhead has no wreckage pin.",
            dependsOn = { "accept-825-from-the-wreckage" },
            complete = QuestObjective(825, 1, "Gnomish Tools"),
            route = {
                Point(MAP.DUROTAR, 0.620, 0.500, "Fleet wreckage",
                    "Travel to Fleet wreckage."),
            },
        },
        {
            id = "objective-818-a-solvent-spirit-1",
            kind = "objective",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "A Solvent Spirit: Intact Makrura Eye.",
            dependsOn = { "accept-818-a-solvent-spirit" },
            complete = QuestObjective(818, 1, "Intact Makrura Eye"),
            route = {
                Point(MAP.DUROTAR, 0.598, 0.712, "Makrura",
                    "Travel to Makrura."),
            },
        },
        {
            id = "objective-818-a-solvent-spirit-2",
            kind = "objective",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "A Solvent Spirit: Crawler Mucus.",
            dependsOn = { "accept-818-a-solvent-spirit" },
            complete = QuestObjective(818, 2, "Crawler Mucus"),
            route = {
                Point(MAP.DUROTAR, 0.578, 0.782, "Pygmy Surf Crawler",
                    "Travel to Pygmy Surf Crawler."),
            },
        },
        {
            id = "turnin-825-from-the-wreckage",
            kind = "turnin",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in From The Wreckage.... to Gar'Thok.",
            dependsOn = { "objective-825-from-the-wreckage-1" },
            complete = QuestState(825, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.434, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "turnin-837-encroachment",
            kind = "turnin",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Turn in Encroachment to Gar'Thok.",
            dependsOn = { "objective-837-encroachment-1", "objective-837-encroachment-2", "objective-837-encroachment-3", "objective-837-encroachment-4" },
            complete = QuestState(837, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.520, 0.434, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "accept-99123-lost-in-the-shadows",
            kind = "accept",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Lost in the Shadows from Pal'juh.",
            complete = QuestState(99123, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.462, 0.786, "Pal'juh",
                    "Travel to Pal'juh."),
            },
        },
        {
            id = "objective-99123-lost-in-the-shadows-1",
            kind = "objective",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Lost in the Shadows: Escort Pal'juh. Pal'juh starts inside Kolkar Crag.",
            dependsOn = { "accept-99123-lost-in-the-shadows" },
            complete = QuestObjective(99123, 1, "Escort Pal'juh"),
            route = {
                Point(MAP.DUROTAR, 0.462, 0.786, "Pal'juh",
                    "Travel to Pal'juh."),
            },
        },
        {
            id = "objective-786-thwarting-kolkar-aggression-1",
            kind = "objective",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Thwarting Kolkar Aggression: Attack Plan: Valley of Trials.",
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            complete = QuestObjective(786, 1, "Attack Plan: Valley of Trials"),
            route = {
                Point(MAP.DUROTAR, 0.498, 0.813, "Attack Plan: Valley of Trials",
                    "Travel to Attack Plan: Valley of Trials."),
            },
        },
        {
            id = "objective-786-thwarting-kolkar-aggression-2",
            kind = "objective",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Thwarting Kolkar Aggression: Attack Plan: Sen'jin Village.",
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            complete = QuestObjective(786, 2, "Attack Plan: Sen'jin Village"),
            route = {
                Point(MAP.DUROTAR, 0.477, 0.774, "Attack Plan: Sen'jin Village",
                    "Travel to Attack Plan: Sen'jin Village."),
            },
        },
        {
            id = "objective-786-thwarting-kolkar-aggression-3",
            kind = "objective",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Thwarting Kolkar Aggression: Attack Plan: Orgrimmar.",
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            complete = QuestObjective(786, 3, "Attack Plan: Orgrimmar"),
            route = {
                Point(MAP.DUROTAR, 0.463, 0.790, "Attack Plan: Orgrimmar",
                    "Travel to Attack Plan: Orgrimmar."),
            },
        },
        {
            id = "turnin-786-thwarting-kolkar-aggression",
            kind = "turnin",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Thwarting Kolkar Aggression to Lar Prowltusk.",
            dependsOn = { "objective-786-thwarting-kolkar-aggression-1", "objective-786-thwarting-kolkar-aggression-2", "objective-786-thwarting-kolkar-aggression-3" },
            complete = QuestState(786, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.542, 0.732, "Lar Prowltusk",
                    "Travel to Lar Prowltusk."),
            },
        },
        {
            id = "turnin-99123-lost-in-the-shadows",
            kind = "turnin",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Lost in the Shadows to Master Vornal.",
            dependsOn = { "objective-99123-lost-in-the-shadows-1" },
            complete = QuestState(99123, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.558, 0.744, "Master Vornal",
                    "Travel to Master Vornal."),
            },
        },
        {
            id = "turnin-818-a-solvent-spirit",
            kind = "turnin",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in A Solvent Spirit to Master Vornal.",
            dependsOn = { "objective-818-a-solvent-spirit-1", "objective-818-a-solvent-spirit-2" },
            complete = QuestState(818, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.558, 0.744, "Master Vornal",
                    "Travel to Master Vornal."),
            },
        },
        {
            id = "objective-97225-forgotten-loa-idols-1",
            kind = "objective",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Forgotten Loa Idols: Forgotten Loa Idol. The idols are on the Echo Isles. Wowhead has no idol pin, so this marks the hexed trolls.",
            dependsOn = { "accept-97225-forgotten-loa-idols" },
            complete = QuestObjective(97225, 1, "Forgotten Loa Idol"),
            route = {
                Point(MAP.DUROTAR, 0.676, 0.834, "Echo Isles",
                    "Travel to Echo Isles."),
            },
        },
        {
            id = "objective-97223-bloodtalon-matriarch-1",
            kind = "objective",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Bloodtalon Matriarch: Bloodtalon Martriarch Eggs.",
            dependsOn = { "accept-97223-bloodtalon-matriarch" },
            complete = QuestObjective(97223, 1, "Bloodtalon Martriarch Eggs"),
            route = {
                Point(MAP.DUROTAR, 0.686, 0.716, "Bloodtalon Matriarch",
                    "Travel to Bloodtalon Matriarch."),
            },
        },
        {
            id = "objective-96873-a-pain-in-the-neck-1",
            kind = "objective",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { profession = { skillLineID = SKILL.ENCHANTING } },
                },
            },
            text = "A Pain in the Neck: Luminous Residue. Disenchant Hexed Pendants from the Echo Isles trolls. This step is for enchanters.",
            dependsOn = { "accept-96873-a-pain-in-the-neck" },
            complete = QuestObjective(96873, 1, "Luminous Residue"),
            route = {
                Point(MAP.DUROTAR, 0.676, 0.834, "Hexed Troll",
                    "Travel to Hexed Troll."),
            },
        },
        {
            id = "objective-826-zalazane-1",
            kind = "objective",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Zalazane: Hexed Troll.",
            dependsOn = { "accept-826-zalazane" },
            complete = QuestObjective(826, 1, "Hexed Troll"),
            route = {
                Point(MAP.DUROTAR, 0.676, 0.834, "Hexed Troll",
                    "Travel to Hexed Troll."),
            },
        },
        {
            id = "objective-826-zalazane-2",
            kind = "objective",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Zalazane: Voodoo Troll.",
            dependsOn = { "accept-826-zalazane" },
            complete = QuestObjective(826, 2, "Voodoo Troll"),
            route = {
                Point(MAP.DUROTAR, 0.676, 0.834, "Voodoo Troll",
                    "Travel to Voodoo Troll."),
            },
        },
        {
            id = "objective-826-zalazane-3",
            kind = "objective",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Zalazane: Zalazane's Head.",
            dependsOn = { "accept-826-zalazane" },
            complete = QuestObjective(826, 3, "Zalazane's Head"),
            route = {
                Point(MAP.DUROTAR, 0.676, 0.878, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "objective-808-minshinas-skull-1",
            kind = "objective",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Minshina's Skull: Minshina's Skull. The skull is in the circle of power on the Echo Isles. Wowhead has no skull pin, so this marks Zalazane's camp.",
            dependsOn = { "accept-808-minshinas-skull" },
            complete = QuestObjective(808, 1, "Minshina's Skull"),
            route = {
                Point(MAP.DUROTAR, 0.676, 0.878, "Circle of power",
                    "Travel to Circle of power."),
            },
        },
        {
            id = "objective-815-break-a-few-eggs-1",
            kind = "objective",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Break a Few Eggs: Taillasher Egg. Eggs sit near bloodtalon taillasher nests. Wowhead has no egg pin, so this marks the taillasher spawn.",
            dependsOn = { "accept-815-break-a-few-eggs" },
            complete = QuestObjective(815, 1, "Taillasher Egg"),
            route = {
                Point(MAP.DUROTAR, 0.594, 0.836, "Bloodtalon Taillasher",
                    "Travel to Bloodtalon Taillasher."),
            },
        },
        {
            id = "objective-817-practical-prey-1",
            kind = "objective",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Practical Prey: Durotar Tiger Fur.",
            dependsOn = { "accept-817-practical-prey" },
            complete = QuestObjective(817, 1, "Durotar Tiger Fur"),
            route = {
                Point(MAP.DUROTAR, 0.600, 0.798, "Durotar Tiger",
                    "Travel to Durotar Tiger."),
            },
        },
        {
            id = "turnin-808-minshinas-skull",
            kind = "turnin",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Minshina's Skull to Master Gadrin.",
            dependsOn = { "objective-808-minshinas-skull-1" },
            complete = QuestState(808, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.560, 0.746, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "turnin-97225-forgotten-loa-idols",
            kind = "turnin",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Forgotten Loa Idols to Master Gadrin.",
            dependsOn = { "objective-97225-forgotten-loa-idols-1" },
            complete = QuestState(97225, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.560, 0.746, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "turnin-97223-bloodtalon-matriarch",
            kind = "turnin",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Bloodtalon Matriarch to Xar'Ti.",
            dependsOn = { "objective-97223-bloodtalon-matriarch-1" },
            complete = QuestState(97223, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.552, 0.754, "Xar'Ti",
                    "Travel to Xar'Ti."),
            },
        },
        {
            id = "turnin-96873-a-pain-in-the-neck",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { profession = { skillLineID = SKILL.ENCHANTING } },
                },
            },
            text = "Turn in A Pain in the Neck to Pa'zula.",
            dependsOn = { "objective-96873-a-pain-in-the-neck-1" },
            complete = QuestState(96873, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.566, 0.736, "Pa'zula",
                    "Travel to Pa'zula."),
            },
        },
        {
            id = "turnin-826-zalazane",
            kind = "turnin",
            priority = 1390,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Zalazane to Master Gadrin.",
            dependsOn = { "objective-826-zalazane-1", "objective-826-zalazane-2", "objective-826-zalazane-3" },
            complete = QuestState(826, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.560, 0.746, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "turnin-817-practical-prey",
            kind = "turnin",
            priority = 1400,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Practical Prey to Vel'rin Fang.",
            dependsOn = { "objective-817-practical-prey-1" },
            complete = QuestState(817, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.558, 0.740, "Vel'rin Fang",
                    "Travel to Vel'rin Fang."),
            },
        },
        {
            id = "turnin-815-break-a-few-eggs",
            kind = "turnin",
            priority = 1410,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Turn in Break a Few Eggs to Cook Torka.",
            dependsOn = { "objective-815-break-a-few-eggs-1" },
            complete = QuestState(815, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.512, 0.424, "Cook Torka",
                    "Travel to Cook Torka."),
            },
        },
        {
            id = "accept-816-lost-but-not-forgotten",
            kind = "accept",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 8 } },
                },
            },
            text = "Accept Lost But Not Forgotten from Misha Tor'kren.",
            complete = QuestState(816, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.430, 0.302, "Misha Tor'kren",
                    "Travel to Misha Tor'kren."),
            },
        },
        {
            id = "accept-834-winds-in-the-desert",
            kind = "accept",
            priority = 1430,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Accept Winds in the Desert from Rezlak.",
            complete = QuestState(834, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.464, 0.230, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "objective-834-winds-in-the-desert-1",
            kind = "objective",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Winds in the Desert: Sack of Supplies.",
            dependsOn = { "accept-834-winds-in-the-desert" },
            complete = QuestObjective(834, 1, "Sack of Supplies"),
            route = {
                Point(MAP.DUROTAR, 0.517, 0.277, "Stolen Supply Sack",
                    "Travel to Stolen Supply Sack."),
            },
        },
        {
            id = "turnin-834-winds-in-the-desert",
            kind = "turnin",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Turn in Winds in the Desert to Rezlak.",
            dependsOn = { "objective-834-winds-in-the-desert-1" },
            complete = QuestState(834, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.464, 0.230, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "accept-835-securing-the-lines",
            kind = "accept",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Accept Securing the Lines from Rezlak.",
            dependsOn = { "turnin-834-winds-in-the-desert" },
            complete = QuestState(835, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.464, 0.230, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "accept-812-need-for-a-cure",
            kind = "accept",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Accept Need for a Cure from Rhinag. The poison timer is 45 minutes, so get the antidote before other work.",
            timer = 45 * 60,
            complete = QuestState(812, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.416, 0.186, "Rhinag",
                    "Travel to Rhinag."),
            },
        },
        {
            id = "accept-6062-taming-the-beast",
            kind = "accept",
            priority = 1480,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1520,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1530,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1540,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1550,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1560,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1570,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1580,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                    { profession = { skillLineID = SKILL.BLACKSMITHING } },
                },
            },
            text = "Accept This Is Spinal Axe from Ug'thok in Orgrimmar. This step is for blacksmiths.",
            complete = QuestState(96874, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.806, 0.234, "Ug'thok",
                    "Travel to Ug'thok."),
            },
        },
        {
            id = "accept-96875-beasts-of-thunder-ridge",
            kind = "accept",
            priority = 1600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                    { profession = { skillLineID = SKILL.LEATHERWORKING } },
                },
            },
            text = "Accept Beasts of Thunder Ridge from Kamari in Orgrimmar. This step is for leatherworkers.",
            complete = QuestState(96875, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.630, 0.450, "Kamari",
                    "Travel to Kamari."),
            },
        },
        {
            id = "accept-1883-speak-with-un-thuwa",
            kind = "accept",
            priority = 1610,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            id = "turnin-831-the-admirals-orders",
            kind = "turnin",
            priority = 1620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in The Admiral's Orders to Nazgrel in Thrall's chamber in Orgrimmar.",
            dependsOn = { "accept-831-the-admirals-orders" },
            complete = QuestState(831, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.324, 0.360, "Nazgrel",
                    "Travel to Nazgrel."),
            },
        },
        {
            id = "accept-813-finding-the-antidote",
            kind = "accept",
            priority = 1630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Accept Finding the Antidote from Kor'ghan in Orgrimmar.",
            dependsOn = { "accept-812-need-for-a-cure" },
            complete = QuestState(813, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.470, 0.534, "Kor'ghan",
                    "Travel to Kor'ghan."),
            },
        },
        {
            id = "turnin-6081-training-the-beast",
            kind = "turnin",
            priority = 1640,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1650,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1660,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            id = "objective-813-finding-the-antidote-1",
            kind = "objective",
            priority = 1670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Finding the Antidote: Venomtail Poison Sac. Venomtail scorpids hunt the northwestern hills. Wowhead does not pin them on this quest.",
            dependsOn = { "accept-813-finding-the-antidote" },
            complete = QuestObjective(813, 1, "Venomtail Poison Sac"),
            route = {
                Point(MAP.DUROTAR, 0.420, 0.186, "Venomtail Scorpid",
                    "Travel to Venomtail Scorpid."),
            },
        },
        {
            id = "turnin-813-finding-the-antidote",
            kind = "turnin",
            priority = 1680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Turn in Finding the Antidote to Kor'ghan.",
            dependsOn = { "objective-813-finding-the-antidote-1" },
            complete = QuestState(813, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.470, 0.534, "Kor'ghan",
                    "Travel to Kor'ghan."),
            },
        },
        {
            id = "turnin-812-need-for-a-cure",
            kind = "turnin",
            priority = 1690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Turn in Need for a Cure to Rhinag.",
            dependsOn = { "turnin-813-finding-the-antidote" },
            complete = QuestState(812, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.416, 0.186, "Rhinag",
                    "Travel to Rhinag."),
            },
        },
        {
            id = "turnin-1883-speak-with-un-thuwa",
            kind = "turnin",
            priority = 1700,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1710,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 1720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                },
            },
            text = "Destroy 4 Ju-Ju Heaps in Echo Isles.",
            dependsOn = { "accept-1884-ju-ju-heaps" },
            complete = QuestState(1884, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5947, 0.8208, "Continue toward Ju-Ju Heaps",
                    "Continue toward Ju-Ju Heaps."),
                Point(MAP.DUROTAR, 0.6360, 0.8416, "Continue toward Ju-Ju Heaps",
                    "Continue toward Ju-Ju Heaps."),
                Point(MAP.DUROTAR, 0.6709, 0.8776, "Continue toward Ju-Ju Heaps",
                    "Continue toward Ju-Ju Heaps."),
                Point(MAP.DUROTAR, 0.6712, 0.8649, "Continue toward Ju-Ju Heaps",
                    "Continue toward Ju-Ju Heaps."),
                Point(MAP.DUROTAR, 0.6853, 0.8430, "Continue toward Ju-Ju Heaps",
                    "Continue toward Ju-Ju Heaps."),
                Point(MAP.DUROTAR, 0.6739, 0.8259, "Echo Isles",
                    "Travel to Echo Isles."),
            },
        },
        {
            id = "turnin-1884-ju-ju-heaps",
            kind = "turnin",
            priority = 1730,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            id = "objective-835-securing-the-lines-1",
            kind = "objective",
            priority = 1740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Securing the Lines: Dustwind Savage.",
            dependsOn = { "accept-835-securing-the-lines" },
            complete = QuestObjective(835, 1, "Dustwind Savage"),
            route = {
                Point(MAP.DUROTAR, 0.538, 0.278, "Dustwind Savage",
                    "Travel to Dustwind Savage."),
            },
        },
        {
            id = "objective-835-securing-the-lines-2",
            kind = "objective",
            priority = 1750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Securing the Lines: Dustwind Storm Witch.",
            dependsOn = { "accept-835-securing-the-lines" },
            complete = QuestObjective(835, 2, "Dustwind Storm Witch"),
            route = {
                Point(MAP.DUROTAR, 0.540, 0.224, "Dustwind Storm Witch",
                    "Travel to Dustwind Storm Witch."),
            },
        },
        {
            id = "turnin-835-securing-the-lines",
            kind = "turnin",
            priority = 1760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Turn in Securing the Lines to Rezlak.",
            dependsOn = { "objective-835-securing-the-lines-1", "objective-835-securing-the-lines-2" },
            complete = QuestState(835, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.464, 0.230, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "objective-816-lost-but-not-forgotten-1",
            kind = "objective",
            priority = 1770,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 8 } },
                },
            },
            text = "Lost But Not Forgotten: Kron's Amulet.",
            dependsOn = { "accept-816-lost-but-not-forgotten" },
            complete = QuestObjective(816, 1, "Kron's Amulet"),
            route = {
                Point(MAP.DUROTAR, 0.366, 0.220, "Dreadmaw Crocolisk",
                    "Travel to Dreadmaw Crocolisk."),
            },
        },
        {
            id = "objective-806-dark-storms-1",
            kind = "objective",
            priority = 1780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Dark Storms: Fizzle's Claw.",
            dependsOn = { "accept-806-dark-storms" },
            complete = QuestObjective(806, 1, "Fizzle's Claw"),
            route = {
                Point(MAP.DUROTAR, 0.420, 0.266, "Fizzle Darkstorm",
                    "Travel to Fizzle Darkstorm."),
            },
        },
        {
            id = "objective-96874-this-is-spinal-axe-1",
            kind = "objective",
            priority = 1790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                    { profession = { skillLineID = SKILL.BLACKSMITHING } },
                },
            },
            text = "This Is Spinal Axe: Weathered Spine. Lightning Hide can also drop Halikor's Hoof.",
            dependsOn = { "accept-96874-this-is-spinal-axe" },
            complete = QuestObjective(96874, 1, "Weathered Spine"),
            route = {
                Point(MAP.DUROTAR, 0.392, 0.284, "Thunder Lizard",
                    "Travel to Thunder Lizard."),
            },
        },
        {
            id = "objective-96874-this-is-spinal-axe-2",
            kind = "objective",
            priority = 1800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                    { profession = { skillLineID = SKILL.BLACKSMITHING } },
                },
            },
            text = "This Is Spinal Axe: Rough Grinding Stone. Buy or craft 5 Rough Grinding Stones. They are not a Thunder Ridge drop.",
            dependsOn = { "accept-96874-this-is-spinal-axe" },
            complete = QuestObjective(96874, 2, "Rough Grinding Stone"),
            route = {
                Point(MAP.ORGRIMMAR, 0.806, 0.234, "Ug'thok",
                    "Travel to Ug'thok."),
            },
        },
        {
            id = "objective-96875-beasts-of-thunder-ridge-1",
            kind = "objective",
            priority = 1810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                    { profession = { skillLineID = SKILL.LEATHERWORKING } },
                },
            },
            text = "Beasts of Thunder Ridge: Rough Lizard Hide.",
            dependsOn = { "accept-96875-beasts-of-thunder-ridge" },
            complete = QuestObjective(96875, 1, "Rough Lizard Hide"),
            route = {
                Point(MAP.DUROTAR, 0.414, 0.244, "Lightning Hide",
                    "Travel to Lightning Hide."),
            },
        },
        {
            id = "objective-96875-beasts-of-thunder-ridge-2",
            kind = "objective",
            priority = 1820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                    { profession = { skillLineID = SKILL.LEATHERWORKING } },
                },
            },
            text = "Beasts of Thunder Ridge: Cured Light Hide. Buy or craft 2 Cured Light Hides. They are not a Thunder Ridge drop.",
            dependsOn = { "accept-96875-beasts-of-thunder-ridge" },
            complete = QuestObjective(96875, 2, "Cured Light Hide"),
            route = {
                Point(MAP.ORGRIMMAR, 0.630, 0.450, "Kamari",
                    "Travel to Kamari."),
            },
        },
        {
            id = "turnin-97281-a-simmering-storm",
            kind = "turnin",
            priority = 1830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                    { quest = { id = 97281, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in A Simmering Storm to Rezlak if you found the Dull Stormy Orb.",
            complete = QuestState(97281, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.464, 0.230, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "accept-97282-stormy-potential",
            kind = "accept",
            priority = 1840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                    { quest = { id = 97281, state = "activeOrCompleted" } },
                },
            },
            text = "Accept Stormy Potential from Rezlak.",
            dependsOn = { "turnin-97281-a-simmering-storm" },
            complete = QuestState(97282, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.464, 0.230, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "objective-97282-stormy-potential-1",
            kind = "objective",
            priority = 1850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                    { quest = { id = 97281, state = "activeOrCompleted" } },
                },
            },
            text = "Stormy Potential: Charged Thunder Lizard Organ.",
            dependsOn = { "accept-97282-stormy-potential" },
            complete = QuestObjective(97282, 1, "Charged Thunder Lizard Organ"),
            route = {
                Point(MAP.DUROTAR, 0.392, 0.284, "Thunder Lizard",
                    "Travel to Thunder Lizard."),
            },
        },
        {
            id = "turnin-97282-stormy-potential",
            kind = "turnin",
            priority = 1860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                    { quest = { id = 97281, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Stormy Potential to Rezlak.",
            dependsOn = { "objective-97282-stormy-potential-1" },
            complete = QuestState(97282, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.464, 0.230, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "turnin-816-lost-but-not-forgotten",
            kind = "turnin",
            priority = 1870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 8 } },
                },
            },
            text = "Turn in Lost But Not Forgotten to Misha Tor'kren.",
            dependsOn = { "objective-816-lost-but-not-forgotten-1" },
            complete = QuestState(816, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.430, 0.302, "Misha Tor'kren",
                    "Travel to Misha Tor'kren."),
            },
        },
        {
            id = "turnin-806-dark-storms",
            kind = "turnin",
            priority = 1880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Dark Storms to Orgnil Soulscar.",
            dependsOn = { "objective-806-dark-storms-1" },
            complete = QuestState(806, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.522, 0.432, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-99048-a-missing-hand",
            kind = "accept",
            priority = 1890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept A Missing Hand from Orgnil Soulscar.",
            complete = QuestState(99048, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.522, 0.432, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "turnin-99048-a-missing-hand",
            kind = "turnin",
            priority = 1900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in A Missing Hand to Heglan Shadeeye.",
            dependsOn = { "accept-99048-a-missing-hand" },
            complete = QuestState(99048, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.586, 0.456, "Heglan Shadeeye",
                    "Travel to Heglan Shadeeye."),
            },
        },
        {
            id = "accept-99049-threat-from-below",
            kind = "accept",
            priority = 1910,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Threat from Below from Heglan Shadeeye.",
            dependsOn = { "turnin-99048-a-missing-hand" },
            complete = QuestState(99049, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.586, 0.456, "Heglan Shadeeye",
                    "Travel to Heglan Shadeeye."),
            },
        },
        {
            id = "objective-99049-threat-from-below-1",
            kind = "objective",
            priority = 1920,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Threat from Below: Orcish Dagger. Search the destroyed ground north of Tiragarde Keep. Wowhead has no item pin.",
            dependsOn = { "accept-99049-threat-from-below" },
            complete = QuestObjective(99049, 1, "Orcish Dagger"),
            route = {
                Point(MAP.DUROTAR, 0.586, 0.456, "Skirmish site",
                    "Travel to Skirmish site."),
            },
        },
        {
            id = "objective-99049-threat-from-below-2",
            kind = "objective",
            priority = 1930,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Threat from Below: Banner Scrap. Search the destroyed ground north of Tiragarde Keep. Wowhead has no item pin.",
            dependsOn = { "accept-99049-threat-from-below" },
            complete = QuestObjective(99049, 2, "Banner Scrap"),
            route = {
                Point(MAP.DUROTAR, 0.586, 0.456, "Skirmish site",
                    "Travel to Skirmish site."),
            },
        },
        {
            id = "objective-99049-threat-from-below-3",
            kind = "objective",
            priority = 1940,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Threat from Below: Broken Bone Trident. Search the destroyed ground north of Tiragarde Keep. Wowhead has no item pin.",
            dependsOn = { "accept-99049-threat-from-below" },
            complete = QuestObjective(99049, 3, "Broken Bone Trident"),
            route = {
                Point(MAP.DUROTAR, 0.586, 0.456, "Skirmish site",
                    "Travel to Skirmish site."),
            },
        },
        {
            id = "turnin-99049-threat-from-below",
            kind = "turnin",
            priority = 1950,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in Threat from Below to Orgnil Soulscar.",
            dependsOn = { "objective-99049-threat-from-below-1", "objective-99049-threat-from-below-2", "objective-99049-threat-from-below-3" },
            complete = QuestState(99049, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.522, 0.432, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-99051-threat-from-below",
            kind = "accept",
            priority = 1960,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Threat from Below from Orgnil Soulscar.",
            dependsOn = { "turnin-99049-threat-from-below" },
            complete = QuestState(99051, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.522, 0.432, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "objective-99051-threat-from-below-1",
            kind = "objective",
            priority = 1970,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Threat from Below: Naga Spinefin.",
            dependsOn = { "accept-99051-threat-from-below" },
            complete = QuestObjective(99051, 1, "Naga Spinefin"),
            route = {
                Point(MAP.DUROTAR, 0.590, 0.238, "Spitelash Scout",
                    "Travel to Spitelash Scout."),
            },
        },
        {
            id = "turnin-99051-threat-from-below",
            kind = "turnin",
            priority = 1980,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in Threat from Below to Orgnil Soulscar.",
            dependsOn = { "objective-99051-threat-from-below-1" },
            complete = QuestState(99051, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.522, 0.432, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-99052-threat-from-below",
            kind = "accept",
            priority = 1990,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Threat from Below from Orgnil Soulscar. This is an elite. Bring a group.",
            dependsOn = { "turnin-99051-threat-from-below" },
            complete = QuestState(99052, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.522, 0.432, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-828-margoz",
            kind = "accept",
            priority = 2000,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Margoz from Orgnil Soulscar.",
            complete = QuestState(828, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.522, 0.432, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-2983-call-of-fire",
            kind = "accept",
            priority = 2010,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 2020,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Margoz to Margoz.",
            dependsOn = { "accept-828-margoz" },
            complete = QuestState(828, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.564, 0.200, "Margoz",
                    "Travel to Margoz."),
            },
        },
        {
            id = "accept-827-skull-rock",
            kind = "accept",
            priority = 2030,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Skull Rock from Margoz.",
            dependsOn = { "turnin-828-margoz" },
            complete = QuestState(827, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.564, 0.200, "Margoz",
                    "Travel to Margoz."),
            },
        },
        {
            id = "objective-99052-threat-from-below-1",
            kind = "objective",
            priority = 2040,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Threat from Below: Aggor's Belt. This is an elite. Bring a group.",
            dependsOn = { "accept-99052-threat-from-below" },
            complete = QuestObjective(99052, 1, "Aggor's Belt"),
            route = {
                Point(MAP.DUROTAR, 0.590, 0.174, "Aggor the Young",
                    "Travel to Aggor the Young."),
            },
        },
        {
            id = "objective-1501-creature-of-the-void",
            kind = "objective",
            priority = 2050,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                },
            },
            text = "Follow the path around the right side of the cave and collect Tablet of Verga from the chest in Skull Rock.",
            dependsOn = { "accept-1501-creature-of-the-void" },
            complete = QuestState(1501, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5283, 0.0784, "Continue toward Creature of the Void",
                    "Continue toward Creature of the Void."),
                Point(MAP.DUROTAR, 0.5141, 0.0850, "Continue toward Creature of the Void",
                    "Continue toward Creature of the Void."),
                Point(MAP.DUROTAR, 0.5161, 0.0971, "Skull Rock",
                    "Travel to Skull Rock."),
            },
        },
        {
            id = "objective-827-skull-rock-1",
            kind = "objective",
            priority = 2060,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Skull Rock: Searing Collar. Gazz'uz inside Skull Rock is dangerous. Bring a group if you need one. An eye he drops starts Burning Shadows for Neeru Fireblade.",
            dependsOn = { "accept-827-skull-rock" },
            complete = QuestObjective(827, 1, "Searing Collar"),
            route = {
                Point(MAP.DUROTAR, 0.544, 0.088, "Burning Blade Fanatic",
                    "Travel to Burning Blade Fanatic."),
            },
        },
        {
            id = "turnin-827-skull-rock",
            kind = "turnin",
            priority = 2070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Skull Rock to Margoz.",
            dependsOn = { "objective-827-skull-rock-1" },
            complete = QuestState(827, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.564, 0.200, "Margoz",
                    "Travel to Margoz."),
            },
        },
        {
            id = "turnin-832-burning-shadows",
            kind = "turnin",
            priority = 2080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { quest = { id = 832, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Burning Shadows to Neeru Fireblade if Gazz'uz dropped the eye.",
            dependsOn = { "turnin-827-skull-rock" },
            complete = QuestState(832, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.496, 0.504, "Neeru Fireblade",
                    "Travel to Neeru Fireblade."),
            },
        },
        {
            id = "turnin-99052-threat-from-below",
            kind = "turnin",
            priority = 2090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Threat from Below to Orgnil Soulscar.",
            dependsOn = { "objective-99052-threat-from-below-1" },
            complete = QuestState(99052, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.522, 0.432, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "accept-829-neeru-fireblade",
            kind = "accept",
            priority = 2100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Neeru Fireblade from Margoz.",
            dependsOn = { "turnin-827-skull-rock" },
            complete = QuestState(829, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.564, 0.200, "Margoz",
                    "Travel to Margoz."),
            },
        },
        {
            id = "turnin-829-neeru-fireblade",
            kind = "turnin",
            priority = 2110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Neeru Fireblade to Neeru Fireblade.",
            dependsOn = { "accept-829-neeru-fireblade" },
            complete = QuestState(829, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.496, 0.504, "Neeru Fireblade",
                    "Travel to Neeru Fireblade."),
            },
        },
        {
            id = "accept-809-akzeloth",
            kind = "accept",
            priority = 2120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Ak'Zeloth from Neeru Fireblade.",
            dependsOn = { "turnin-829-neeru-fireblade" },
            complete = QuestState(809, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.496, 0.504, "Neeru Fireblade",
                    "Travel to Neeru Fireblade."),
            },
        },
        {
            id = "turnin-809-akzeloth",
            kind = "turnin",
            priority = 2130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Ak'Zeloth to Ak'Zeloth in the Barrens. Destroy the Demon Seed is this report, not a separate kill.",
            dependsOn = { "accept-809-akzeloth" },
            complete = QuestState(809, "completed"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.200, "Ak'Zeloth",
                    "Travel to Ak'Zeloth."),
            },
        },
        {
            id = "accept-924-the-demon-seed",
            kind = "accept",
            priority = 2140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept The Demon Seed from Ak'Zeloth.",
            dependsOn = { "turnin-809-akzeloth" },
            complete = QuestState(924, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.200, "Ak'Zeloth",
                    "Travel to Ak'Zeloth."),
            },
        },
        {
            id = "objective-924-the-demon-seed-1",
            kind = "objective",
            priority = 2150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "The Demon Seed: Destroy the Demon Seed. Use the Flawed Power Stone at the altar before the 30 minute timer expires.",
            dependsOn = { "accept-924-the-demon-seed", "accept-926-flawed-power-stone" },
            complete = QuestObjective(924, 1, "Destroy the Demon Seed"),
            route = {
                Point(MAP.BARRENS, 0.480, 0.191, "Altar of Fire",
                    "Travel to Altar of Fire."),
            },
        },
        {
            id = "turnin-924-the-demon-seed",
            kind = "turnin",
            priority = 2160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in The Demon Seed to Ak'Zeloth.",
            dependsOn = { "objective-924-the-demon-seed-1" },
            complete = QuestState(924, "completed"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.200, "Ak'Zeloth",
                    "Travel to Ak'Zeloth."),
            },
        },
        {
            id = "accept-926-flawed-power-stone",
            kind = "accept",
            priority = 2170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Take a Flawed Power Stone from the table beside Ak'Zeloth. It expires in 30 minutes, so use it at the altar next.",
            timer = { seconds = 30 * 60, quest = 924 },
            dependsOn = { "accept-924-the-demon-seed" },
            complete = QuestState(926, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.200, "Flawed Power Stones",
                    "Travel to Flawed Power Stones."),
            },
        },
        {
            id = "turnin-926-flawed-power-stone",
            kind = "turnin",
            priority = 2180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Flawed Power Stone to Flawed Power Stones.",
            dependsOn = { "accept-926-flawed-power-stone", "objective-924-the-demon-seed-1" },
            complete = QuestState(926, "completed"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.200, "Flawed Power Stones",
                    "Travel to Flawed Power Stones."),
            },
        },
        {
            id = "turnin-1501-creature-of-the-void",
            kind = "turnin",
            priority = 2190,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 2200,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 2210,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 2220,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            id = "turnin-96874-this-is-spinal-axe",
            kind = "turnin",
            priority = 2230,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                    { profession = { skillLineID = SKILL.BLACKSMITHING } },
                },
            },
            text = "Turn in This Is Spinal Axe to Ug'thok.",
            dependsOn = { "objective-96874-this-is-spinal-axe-1", "objective-96874-this-is-spinal-axe-2" },
            complete = QuestState(96874, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.806, 0.234, "Ug'thok",
                    "Travel to Ug'thok."),
            },
        },
        {
            id = "turnin-96875-beasts-of-thunder-ridge",
            kind = "turnin",
            priority = 2240,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                    { profession = { skillLineID = SKILL.LEATHERWORKING } },
                },
            },
            text = "Turn in Beasts of Thunder Ridge to Kamari.",
            dependsOn = { "objective-96875-beasts-of-thunder-ridge-1", "objective-96875-beasts-of-thunder-ridge-2" },
            complete = QuestState(96875, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.630, 0.450, "Kamari",
                    "Travel to Kamari."),
            },
        },
        {
            id = "turnin-96877-halikors-hoof",
            kind = "turnin",
            priority = 2250,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                    { quest = { id = 96877, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Halikor's Hoof to Kamari if a thunder lizard dropped the hoof.",
            complete = QuestState(96877, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.630, 0.450, "Kamari",
                    "Travel to Kamari."),
            },
        },
        {
            id = "accept-840-conscript-of-the-horde",
            kind = "accept",
            priority = 2260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Conscript of the Horde from Takrin Pathseeker.",
            complete = QuestState(840, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.508, 0.436, "Takrin Pathseeker",
                    "Travel to Takrin Pathseeker."),
            },
        },
        {
            id = "turnin-840-conscript-of-the-horde",
            kind = "turnin",
            priority = 2270,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Conscript of the Horde to Kargal Battlescar at Far Watch Post.",
            dependsOn = { "accept-840-conscript-of-the-horde" },
            complete = QuestState(840, "completed"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.194, "Kargal Battlescar",
                    "Travel to Kargal Battlescar."),
            },
        },
        {
            id = "accept-842-crossroads-conscription",
            kind = "accept",
            priority = 2280,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Crossroads Conscription from Kargal Battlescar.",
            dependsOn = { "turnin-840-conscript-of-the-horde" },
            complete = QuestState(842, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.194, "Kargal Battlescar",
                    "Travel to Kargal Battlescar."),
            },
        },
        {
            id = "turnin-842-crossroads-conscription",
            kind = "turnin",
            priority = 2290,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Crossroads Conscription to Sergra Darkthorn at the Crossroads.",
            dependsOn = { "accept-842-crossroads-conscription" },
            complete = QuestState(842, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
    },
})
