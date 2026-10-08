local _, ns = ...

-- Forever Casual spine: Orc & Troll Starter (1-13)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves ported from prior Leveling chapters (quest id >= 90000).
-- Coordinates not yet validated in Forever.

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

local MAP = {
    DUROTAR = 1411,
    THE_BARRENS = 1413,
    TIRISFAL_GLADES = 1420,
    ORGRIMMAR = 1454,
    UNDERCITY = 1458,
}

ns:RegisterGuide({
    id = "leveling-era-durotar",
    title = "Orc & Troll Starter",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
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
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Your Place In The World.",
            complete = QuestState(4641, "activeOrCompleted"),
            route = {
                Point(1411, 0.4329, 0.6853, "Your Place In The World",
                    "Travel to Your Place In The World.")
            }
            },
        {
            id = "objective-4641-1-mottled-boar",
            kind = "objective",
            priority = 20,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { any = { { class = 1 }, { class = 7 }, { class = 9 } } }
            } },
            text = "Kill Mottled Boar.",
            complete = QuestObjective(4641, 1, "Mottled Boar"),
            dependsOn = { "accept-4641-your-place-in-the-world" },
            route = {
                Point(1411, 0.4380, 0.7040, "Mottled Boar",
                    "Travel to Mottled Boar.")
            }
            },
        {
            id = "accept-1485-vile-familiars",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Accept Vile Familiars.",
            complete = QuestState(1485, "activeOrCompleted"),
            route = {
                Point(1411, 0.4259, 0.6900, "Vile Familiars",
                    "Travel to Vile Familiars.")
            }
            },
        {
            id = "turnin-4641-your-place-in-the-world",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Your Place In The World.",
            complete = QuestState(4641, "completed"),
            dependsOn = { "accept-4641-your-place-in-the-world", "objective-4641-1-mottled-boar" },
            route = {
                Point(1411, 0.4206, 0.6833, "Your Place In The World",
                    "Travel to Your Place In The World.")
            }
            },
        {
            id = "accept-788-cutting-teeth",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Cutting Teeth.",
            complete = QuestState(788, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Cutting Teeth",
                    "Travel to Cutting Teeth.")
            }
            },
        {
            id = "objective-788-1-mottled-boar",
            kind = "objective",
            priority = 60,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill 10 Mottled Boar.",
            complete = QuestObjective(788, 1, "Mottled Boar"),
            dependsOn = { "accept-788-cutting-teeth" },
            route = {
                Point(1411, 0.4380, 0.6620, "Mottled Boar",
                    "Travel to Mottled Boar.")
            }
            },
        {
            id = "accept-790-sarkoth",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Sarkoth.",
            complete = QuestState(790, "activeOrCompleted"),
            route = {
                Point(1411, 0.4060, 0.6259, "Sarkoth",
                    "Travel to Sarkoth.")
            }
            },
        {
            id = "objective-790-1-sarkoth",
            kind = "objective",
            priority = 80,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Sarkoth.",
            complete = QuestObjective(790, 1, "Sarkoth"),
            dependsOn = { "accept-790-sarkoth" },
            route = {
                Point(1411, 0.4060, 0.6540, "Sarkoth",
                    "Travel to Sarkoth.")
            }
            },
        {
            id = "turnin-790-sarkoth",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Sarkoth.",
            complete = QuestState(790, "completed"),
            dependsOn = { "accept-790-sarkoth", "objective-790-1-sarkoth" },
            route = {
                Point(1411, 0.4060, 0.6259, "Sarkoth",
                    "Travel to Sarkoth.")
            }
            },
        {
            id = "accept-804-sarkoth",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Sarkoth.",
            complete = QuestState(804, "activeOrCompleted"),
            route = {
                Point(1411, 0.4060, 0.6259, "Sarkoth",
                    "Travel to Sarkoth.")
            }
            },
        {
            id = "turnin-1485-vile-familiars",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Turn in Vile Familiars.",
            complete = QuestState(1485, "completed"),
            dependsOn = { "accept-1485-vile-familiars" },
            route = {
                Point(1411, 0.4259, 0.6900, "Vile Familiars",
                    "Travel to Vile Familiars.")
            }
            },
        {
            id = "accept-1499-vile-familiars",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Accept Vile Familiars.",
            complete = QuestState(1499, "activeOrCompleted"),
            route = {
                Point(1411, 0.4259, 0.6900, "Vile Familiars",
                    "Travel to Vile Familiars.")
            }
            },
        {
            id = "turnin-1499-vile-familiars",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Turn in Vile Familiars.",
            complete = QuestState(1499, "completed"),
            dependsOn = { "accept-1499-vile-familiars" },
            route = {
                Point(1411, 0.4285, 0.6915, "Vile Familiars",
                    "Travel to Vile Familiars.")
            }
            },
        {
            id = "turnin-788-cutting-teeth",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Cutting Teeth.",
            complete = QuestState(788, "completed"),
            dependsOn = { "accept-788-cutting-teeth", "objective-788-1-mottled-boar" },
            route = {
                Point(1411, 0.4206, 0.6833, "Cutting Teeth",
                    "Travel to Cutting Teeth.")
            }
            },
        {
            id = "turnin-804-sarkoth",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Sarkoth.",
            complete = QuestState(804, "completed"),
            dependsOn = { "accept-804-sarkoth" },
            route = {
                Point(1411, 0.4206, 0.6833, "Sarkoth",
                    "Travel to Sarkoth.")
            }
            },
        {
            id = "accept-2383-simple-parchment",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 2 },
                { class = 1 }
            } },
            text = "Accept Simple Parchment.",
            complete = QuestState(2383, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Simple Parchment",
                    "Travel to Simple Parchment.")
            }
            },
        {
            id = "accept-3089-rune-inscribed-parchment",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 2 },
                { class = 7 }
            } },
            text = "Accept Rune-Inscribed Parchment.",
            complete = QuestState(3089, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Rune-Inscribed Parchment",
                    "Travel to Rune-Inscribed Parchment.")
            }
            },
        {
            id = "accept-3088-encrypted-parchment",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 2 },
                { class = 4 }
            } },
            text = "Accept Encrypted Parchment.",
            complete = QuestState(3088, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Encrypted Parchment",
                    "Travel to Encrypted Parchment.")
            }
            },
        {
            id = "accept-3087-etched-parchment",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 2 },
                { class = 3 }
            } },
            text = "Accept Etched Parchment.",
            complete = QuestState(3087, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Etched Parchment",
                    "Travel to Etched Parchment.")
            }
            },
        {
            id = "accept-3090-tainted-parchment",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 2 },
                { class = 9 }
            } },
            text = "Accept Tainted Parchment.",
            complete = QuestState(3090, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Tainted Parchment",
                    "Travel to Tainted Parchment.")
            }
            },
        {
            id = "accept-3065-simple-tablet",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 1 }
            } },
            text = "Accept Simple Tablet.",
            complete = QuestState(3065, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Simple Tablet",
                    "Travel to Simple Tablet.")
            }
            },
        {
            id = "accept-3082-etched-tablet",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 3 }
            } },
            text = "Accept Etched Tablet.",
            complete = QuestState(3082, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Etched Tablet",
                    "Travel to Etched Tablet.")
            }
            },
        {
            id = "accept-3083-encrypted-tablet",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 4 }
            } },
            text = "Accept Encrypted Tablet.",
            complete = QuestState(3083, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Encrypted Tablet",
                    "Travel to Encrypted Tablet.")
            }
            },
        {
            id = "accept-3085-hallowed-tablet",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 5 }
            } },
            text = "Accept Hallowed Tablet.",
            complete = QuestState(3085, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Hallowed Tablet",
                    "Travel to Hallowed Tablet.")
            }
            },
        {
            id = "accept-3084-rune-inscribed-tablet",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 7 }
            } },
            text = "Accept Rune-Inscribed Tablet.",
            complete = QuestState(3084, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Rune-Inscribed Tablet",
                    "Travel to Rune-Inscribed Tablet.")
            }
            },
        {
            id = "accept-3086-glyphic-tablet",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 8 }
            } },
            text = "Accept Glyphic Tablet.",
            complete = QuestState(3086, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Glyphic Tablet",
                    "Travel to Glyphic Tablet.")
            }
            },
        {
            id = "accept-789-sting-of-the-scorpid",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Sting of the Scorpid.",
            complete = QuestState(789, "activeOrCompleted"),
            route = {
                Point(1411, 0.4206, 0.6833, "Sting of the Scorpid",
                    "Travel to Sting of the Scorpid.")
            }
            },
        {
            id = "turnin-3088-encrypted-parchment",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 2 },
                { class = 4 }
            } },
            text = "Turn in Encrypted Parchment.",
            complete = QuestState(3088, "completed"),
            dependsOn = { "accept-3088-encrypted-parchment" },
            route = {
                Point(1411, 0.4128, 0.6800, "Encrypted Parchment",
                    "Travel to Encrypted Parchment.")
            }
            },
        {
            id = "turnin-3083-encrypted-tablet",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 4 }
            } },
            text = "Turn in Encrypted Tablet.",
            complete = QuestState(3083, "completed"),
            dependsOn = { "accept-3083-encrypted-tablet" },
            route = {
                Point(1411, 0.4128, 0.6800, "Encrypted Tablet",
                    "Travel to Encrypted Tablet.")
            }
            },
        {
            id = "turnin-3090-tainted-parchment",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 2 },
                { class = 9 }
            } },
            text = "Turn in Tainted Parchment.",
            complete = QuestState(3090, "completed"),
            dependsOn = { "accept-3090-tainted-parchment" },
            route = {
                Point(1411, 0.4065, 0.6851, "Tainted Parchment",
                    "Travel to Tainted Parchment.")
            }
            },
        {
            id = "accept-4402-galgar-s-cactus-apple-surprise",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Galgar's Cactus Apple Surprise.",
            complete = QuestState(4402, "activeOrCompleted"),
            route = {
                Point(1411, 0.4273, 0.6724, "Galgar's Cactus Apple Surprise",
                    "Travel to Galgar's Cactus Apple Surprise.")
            }
            },
        {
            id = "turnin-3085-hallowed-tablet",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 5 }
            } },
            text = "Turn in Hallowed Tablet.",
            complete = QuestState(3085, "completed"),
            dependsOn = { "accept-3085-hallowed-tablet" },
            route = {
                Point(1411, 0.4236, 0.6882, "Hallowed Tablet",
                    "Travel to Hallowed Tablet.")
            }
            },
        {
            id = "turnin-3089-rune-inscribed-parchment",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 2 },
                { class = 7 }
            } },
            text = "Turn in Rune-Inscribed Parchment.",
            complete = QuestState(3089, "completed"),
            dependsOn = { "accept-3089-rune-inscribed-parchment" },
            route = {
                Point(1411, 0.4239, 0.6900, "Rune-Inscribed Parchment",
                    "Travel to Rune-Inscribed Parchment.")
            }
            },
        {
            id = "turnin-3084-rune-inscribed-tablet",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 7 }
            } },
            text = "Turn in Rune-Inscribed Tablet.",
            complete = QuestState(3084, "completed"),
            dependsOn = { "accept-3084-rune-inscribed-tablet" },
            route = {
                Point(1411, 0.4239, 0.6900, "Rune-Inscribed Tablet",
                    "Travel to Rune-Inscribed Tablet.")
            }
            },
        {
            id = "accept-1516-call-of-earth",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Earth.",
            complete = QuestState(1516, "activeOrCompleted"),
            route = {
                Point(1411, 0.4241, 0.6917, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "turnin-3086-glyphic-tablet",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 8 }
            } },
            text = "Turn in Glyphic Tablet.",
            complete = QuestState(3086, "completed"),
            dependsOn = { "accept-3086-glyphic-tablet" },
            route = {
                Point(1411, 0.4251, 0.6904, "Glyphic Tablet",
                    "Travel to Glyphic Tablet.")
            }
            },
        {
            id = "accept-792-vile-familiars",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 2 } },
                { faction = "Horde" },
                { class = { 1, 2, 3, 4, 5, 7, 8, 11 } },
            } },
            text = "Accept Vile Familiars.",
            complete = QuestState(792, "activeOrCompleted"),
            route = {
                Point(1411, 0.4285, 0.6914, "Vile Familiars",
                    "Travel to Vile Familiars."),
            },
        },
        {
            id = "turnin-2383-simple-parchment",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 2 },
                { class = 1 }
            } },
            text = "Turn in Simple Parchment.",
            complete = QuestState(2383, "completed"),
            dependsOn = { "accept-2383-simple-parchment" },
            route = {
                Point(1411, 0.4289, 0.6943, "Simple Parchment",
                    "Travel to Simple Parchment.")
            }
            },
        {
            id = "turnin-3065-simple-tablet",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 1 }
            } },
            text = "Turn in Simple Tablet.",
            complete = QuestState(3065, "completed"),
            dependsOn = { "accept-3065-simple-tablet" },
            route = {
                Point(1411, 0.4289, 0.6943, "Simple Tablet",
                    "Travel to Simple Tablet.")
            }
            },
        {
            id = "turnin-3087-etched-parchment",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 2 },
                { class = 3 }
            } },
            text = "Turn in Etched Parchment.",
            complete = QuestState(3087, "completed"),
            dependsOn = { "accept-3087-etched-parchment" },
            route = {
                Point(1411, 0.4284, 0.6932, "Etched Parchment",
                    "Travel to Etched Parchment.")
            }
            },
        {
            id = "turnin-3082-etched-tablet",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 3 }
            } },
            text = "Turn in Etched Tablet.",
            complete = QuestState(3082, "completed"),
            dependsOn = { "accept-3082-etched-tablet" },
            route = {
                Point(1411, 0.4284, 0.6932, "Etched Tablet",
                    "Travel to Etched Tablet.")
            }
            },
        {
            id = "accept-5441-lazy-peons",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Lazy Peons.",
            complete = QuestState(5441, "activeOrCompleted"),
            route = {
                Point(1411, 0.4462, 0.6864, "Lazy Peons",
                    "Travel to Lazy Peons."),
            },
        },
        {
            id = "objective-792-1-vile-familiar",
            kind = "objective",
            priority = 430,
            conditions = { all = {
                { level = { min = 2 } },
                { faction = "Horde" },
                { class = { 1, 2, 3, 4, 5, 7, 8, 11 } },
            } },
            text = "Kill 12 Vile Familiar.",
            complete = QuestObjective(792, 1, "Vile Familiar"),
            dependsOn = { "accept-792-vile-familiars" },
            route = {
                Point(1411, 0.4580, 0.5740, "Vile Familiar",
                    "Travel to Vile Familiar."),
            },
        },
        {
            id = "turnin-4402-galgar-s-cactus-apple-surprise",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Galgar's Cactus Apple Surprise.",
            complete = QuestState(4402, "completed"),
            dependsOn = { "accept-4402-galgar-s-cactus-apple-surprise" },
            route = {
                Point(1411, 0.4273, 0.6724, "Galgar's Cactus Apple Surprise",
                    "Travel to Galgar's Cactus Apple Surprise.")
            }
            },
        {
            id = "turnin-789-sting-of-the-scorpid",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Sting of the Scorpid.",
            complete = QuestState(789, "completed"),
            dependsOn = { "accept-789-sting-of-the-scorpid" },
            route = {
                Point(1411, 0.4205, 0.6832, "Sting of the Scorpid",
                    "Travel to Sting of the Scorpid.")
            }
            },
        {
            id = "turnin-792-vile-familiars",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 2 } },
                { faction = "Horde" },
                { class = { 1, 2, 3, 4, 5, 7, 8, 11 } },
            } },
            text = "Turn in Vile Familiars.",
            complete = QuestState(792, "completed"),
            dependsOn = { "accept-792-vile-familiars", "objective-792-1-vile-familiar" },
            route = {
                Point(1411, 0.4285, 0.6915, "Vile Familiars",
                    "Travel to Vile Familiars."),
            },
        },
        {
            id = "accept-794-burning-blade-medallion",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Burning Blade Medallion.",
            complete = QuestState(794, "activeOrCompleted"),
            route = {
                Point(1411, 0.4285, 0.6915, "Burning Blade Medallion",
                    "Travel to Burning Blade Medallion.")
            }
            },
        {
            id = "turnin-5441-lazy-peons",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Lazy Peons.",
            complete = QuestState(5441, "completed"),
            dependsOn = { "accept-5441-lazy-peons" },
            route = {
                Point(1411, 0.4462, 0.6864, "Lazy Peons",
                    "Travel to Lazy Peons."),
            },
        },
        {
            id = "accept-6394-thazz-ril-s-pick",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Thazz'ril's Pick.",
            complete = QuestState(6394, "activeOrCompleted"),
            route = {
                Point(1411, 0.4462, 0.6864, "Thazz'ril's Pick",
                    "Travel to Thazz'ril's Pick."),
            },
        },
        {
            id = "turnin-794-burning-blade-medallion",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Burning Blade Medallion.",
            complete = QuestState(794, "completed"),
            dependsOn = { "accept-794-burning-blade-medallion" },
            route = {
                Point(1411, 0.4285, 0.6915, "Burning Blade Medallion",
                    "Travel to Burning Blade Medallion.")
            }
            },
        {
            id = "accept-805-report-to-sen-jin-village",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Report to Sen'jin Village.",
            complete = QuestState(805, "activeOrCompleted"),
            route = {
                Point(1411, 0.4285, 0.6915, "Report to Sen'jin Village",
                    "Travel to Report to Sen'jin Village.")
            }
            },
        {
            id = "accept-5649-in-favor-of-spirituality",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 5 }
            } },
            text = "Accept In Favor of Spirituality.",
            complete = QuestState(5649, "activeOrCompleted"),
            route = {
                Point(1411, 0.4236, 0.6881, "In Favor of Spirituality",
                    "Travel to In Favor of Spirituality.")
            }
            },
        {
            id = "turnin-1516-call-of-earth",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Earth.",
            complete = QuestState(1516, "completed"),
            dependsOn = { "accept-1516-call-of-earth" },
            route = {
                Point(1411, 0.4241, 0.6917, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "accept-1517-call-of-earth",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Earth.",
            complete = QuestState(1517, "activeOrCompleted"),
            route = {
                Point(1411, 0.4241, 0.6917, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "turnin-1517-call-of-earth",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Earth.",
            complete = QuestState(1517, "completed"),
            dependsOn = { "accept-1517-call-of-earth" },
            route = {
                Point(1411, 0.4156, 0.7328, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "accept-1518-call-of-earth",
            kind = "accept",
            priority = 560,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Earth.",
            complete = QuestState(1518, "activeOrCompleted"),
            route = {
                Point(1411, 0.4156, 0.7328, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "turnin-1518-call-of-earth",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Earth.",
            complete = QuestState(1518, "completed"),
            dependsOn = { "accept-1518-call-of-earth" },
            route = {
                Point(1411, 0.4241, 0.6917, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "turnin-6394-thazz-ril-s-pick",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Thazz'ril's Pick.",
            complete = QuestState(6394, "completed"),
            dependsOn = { "accept-6394-thazz-ril-s-pick" },
            route = {
                Point(1411, 0.4462, 0.6864, "Thazz'ril's Pick",
                    "Travel to Thazz'ril's Pick."),
            },
        },
        {
            id = "accept-2161-a-peon-s-burden",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A Peon's Burden.",
            complete = QuestState(2161, "activeOrCompleted"),
            route = {
                Point(1411, 0.5206, 0.6831, "A Peon's Burden",
                    "Travel to A Peon's Burden.")
            }
            },
        {
            id = "accept-786-thwarting-kolkar-aggression",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept Thwarting Kolkar Aggression.",
            complete = QuestState(786, "activeOrCompleted"),
            route = {
                Point(1411, 0.5419, 0.7329, "Thwarting Kolkar Aggression",
                    "Travel to Thwarting Kolkar Aggression."),
            },
        },
        {
            id = "accept-817-practical-prey",
            kind = "accept",
            priority = 610,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept Practical Prey.",
            complete = QuestState(817, "activeOrCompleted"),
            route = {
                Point(1411, 0.5596, 0.7392, "Practical Prey",
                    "Travel to Practical Prey."),
            },
        },
        {
            id = "accept-818-a-solvent-spirit",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept A Solvent Spirit.",
            complete = QuestState(818, "activeOrCompleted"),
            route = {
                Point(1411, 0.5594, 0.7439, "A Solvent Spirit",
                    "Travel to A Solvent Spirit."),
            },
        },
        {
            id = "turnin-805-report-to-sen-jin-village",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Report to Sen'jin Village.",
            complete = QuestState(805, "completed"),
            dependsOn = { "accept-805-report-to-sen-jin-village" },
            route = {
                Point(1411, 0.5595, 0.7472, "Report to Sen'jin Village",
                    "Travel to Report to Sen'jin Village.")
            }
            },
        {
            id = "accept-808-minshina-s-skull",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Minshina's Skull.",
            complete = QuestState(808, "activeOrCompleted"),
            route = {
                Point(1411, 0.5595, 0.7472, "Minshina's Skull",
                    "Travel to Minshina's Skull."),
            },
        },
        {
            id = "accept-826-zalazane",
            kind = "accept",
            priority = 650,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Zalazane.",
            complete = QuestState(826, "activeOrCompleted"),
            route = {
                Point(1411, 0.5595, 0.7472, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "accept-823-report-to-orgnil",
            kind = "accept",
            priority = 660,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Report to Orgnil.",
            complete = QuestState(823, "activeOrCompleted"),
            route = {
                Point(1411, 0.5595, 0.7472, "Report to Orgnil",
                    "Travel to Report to Orgnil."),
            },
        },
        {
            id = "objective-818-1-makrura-clacker",
            kind = "objective",
            priority = 670,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Kill Makrura Clacker.",
            complete = QuestObjective(818, 1, "Makrura Clacker"),
            dependsOn = { "accept-818-a-solvent-spirit" },
            route = {
                Point(1411, 0.6020, 0.7080, "Makrura Clacker",
                    "Travel to Makrura Clacker."),
            },
        },
        {
            id = "turnin-818-a-solvent-spirit",
            kind = "turnin",
            priority = 680,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Solvent Spirit.",
            complete = QuestState(818, "completed"),
            dependsOn = { "accept-818-a-solvent-spirit", "objective-818-1-makrura-clacker" },
            route = {
                Point(1411, 0.5594, 0.7439, "A Solvent Spirit",
                    "Travel to A Solvent Spirit."),
            },
        },
        {
            id = "turnin-786-thwarting-kolkar-aggression",
            kind = "turnin",
            priority = 690,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in Thwarting Kolkar Aggression.",
            complete = QuestState(786, "completed"),
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            route = {
                Point(1411, 0.5419, 0.7329, "Thwarting Kolkar Aggression",
                    "Travel to Thwarting Kolkar Aggression."),
            },
        },
        {
            id = "turnin-823-report-to-orgnil",
            kind = "turnin",
            priority = 700,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { any = { { class = 1 }, { class = 7 } } },
            } },
            text = "Turn in Report to Orgnil.",
            complete = QuestState(823, "completed"),
            dependsOn = { "accept-823-report-to-orgnil" },
            route = {
                Point(1411, 0.5225, 0.4315, "Report to Orgnil",
                    "Travel to Report to Orgnil."),
            },
        },
        {
            id = "accept-806-dark-storms",
            kind = "accept",
            priority = 710,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { any = { { class = 1 }, { class = 7 } } },
            } },
            text = "Accept Dark Storms.",
            complete = QuestState(806, "activeOrCompleted"),
            route = {
                Point(1411, 0.5225, 0.4315, "Dark Storms",
                    "Travel to Dark Storms."),
            },
        },
        {
            id = "accept-784-vanquish-the-betrayers",
            kind = "accept",
            priority = 720,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Vanquish the Betrayers.",
            complete = QuestState(784, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "Vanquish the Betrayers",
                    "Travel to Vanquish the Betrayers."),
            },
        },
        {
            id = "accept-837-encroachment",
            kind = "accept",
            priority = 730,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Accept Encroachment.",
            complete = QuestState(837, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "Encroachment",
                    "Travel to Encroachment."),
            },
        },
        {
            id = "accept-815-break-a-few-eggs",
            kind = "accept",
            priority = 740,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Accept Break a Few Eggs.",
            complete = QuestState(815, "activeOrCompleted"),
            route = {
                Point(1411, 0.5111, 0.4245, "Break a Few Eggs",
                    "Travel to Break a Few Eggs."),
            },
        },
        {
            id = "accept-791-carry-your-weight",
            kind = "accept",
            priority = 750,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Carry Your Weight.",
            complete = QuestState(791, "activeOrCompleted"),
            route = {
                Point(1411, 0.5009, 0.4301, "Carry Your Weight",
                    "Travel to Carry Your Weight."),
            },
        },
        {
            id = "turnin-2161-a-peon-s-burden",
            kind = "turnin",
            priority = 760,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A Peon's Burden.",
            complete = QuestState(2161, "completed"),
            dependsOn = { "accept-2161-a-peon-s-burden" },
            route = {
                Point(1411, 0.5152, 0.4165, "A Peon's Burden",
                    "Travel to A Peon's Burden.")
            }
            },
        {
            id = "turnin-5649-in-favor-of-spirituality",
            kind = "turnin",
            priority = 770,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 5 }
            } },
            text = "Turn in In Favor of Spirituality.",
            complete = QuestState(5649, "completed"),
            dependsOn = { "accept-5649-in-favor-of-spirituality" },
            route = {
                Point(1411, 0.5426, 0.4293, "In Favor of Spirituality",
                    "Travel to In Favor of Spirituality.")
            }
            },
        {
            id = "accept-5648-garments-of-spirituality",
            kind = "accept",
            priority = 780,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 5 }
            } },
            text = "Accept Garments of Spirituality.",
            complete = QuestState(5648, "activeOrCompleted"),
            route = {
                Point(1411, 0.5426, 0.4293, "Garments of Spirituality",
                    "Travel to Garments of Spirituality.")
            }
            },
        {
            id = "turnin-5648-garments-of-spirituality",
            kind = "turnin",
            priority = 790,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 5 }
            } },
            text = "Turn in Garments of Spirituality.",
            complete = QuestState(5648, "completed"),
            dependsOn = { "accept-5648-garments-of-spirituality" },
            route = {
                Point(1411, 0.5426, 0.4293, "Garments of Spirituality",
                    "Travel to Garments of Spirituality.")
            }
            },
        {
            id = "objective-784-3-lieutenant-benedict",
            kind = "objective",
            priority = 800,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Kill Lieutenant Benedict.",
            complete = QuestObjective(784, 3, "Lieutenant Benedict"),
            dependsOn = { "accept-784-vanquish-the-betrayers" },
            route = {
                Point(1411, 0.5899, 0.5830, "Lieutenant Benedict",
                    "Travel to Lieutenant Benedict."),
            },
        },
        {
            id = "accept-830-the-admiral-s-orders",
            kind = "accept",
            priority = 810,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Use the Admiral's Orders to accept The Admiral's Orders.",
            complete = QuestState(830, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-784-vanquish-the-betrayers",
            kind = "turnin",
            priority = 820,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Vanquish the Betrayers.",
            complete = QuestState(784, "completed"),
            dependsOn = { "accept-784-vanquish-the-betrayers", "objective-784-3-lieutenant-benedict" },
            route = {
                Point(1411, 0.5195, 0.4350, "Vanquish the Betrayers",
                    "Travel to Vanquish the Betrayers."),
            },
        },
        {
            id = "accept-825-from-the-wreckage",
            kind = "accept",
            priority = 830,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept From The Wreckage....",
            complete = QuestState(825, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "From The Wreckage...",
                    "Travel to From The Wreckage....."),
            },
        },
        {
            id = "turnin-830-the-admiral-s-orders",
            kind = "turnin",
            priority = 840,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Admiral's Orders.",
            complete = QuestState(830, "completed"),
            dependsOn = { "accept-830-the-admiral-s-orders" },
            route = {
                Point(1411, 0.5195, 0.4350, "The Admiral's Orders",
                    "Travel to The Admiral's Orders.")
            }
            },
        {
            id = "accept-831-the-admiral-s-orders",
            kind = "accept",
            priority = 850,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Admiral's Orders.",
            complete = QuestState(831, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "The Admiral's Orders",
                    "Travel to The Admiral's Orders.")
            }
            },
        {
            id = "turnin-791-carry-your-weight",
            kind = "turnin",
            priority = 860,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Carry Your Weight.",
            complete = QuestState(791, "completed"),
            dependsOn = { "accept-791-carry-your-weight" },
            route = {
                Point(1411, 0.5009, 0.4301, "Carry Your Weight",
                    "Travel to Carry Your Weight."),
            },
        },
        {
            id = "objective-825-1-gnomish-tools",
            kind = "objective",
            priority = 870,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Collect 3 Gnomish Tools.",
            complete = QuestObjective(825, 1, "Gnomish Tools"),
            dependsOn = { "accept-825-from-the-wreckage" },
            route = {
                Point(1411, 0.6140, 0.5620, "Gnomish Tools",
                    "Travel to Gnomish Tools."),
            },
        },
        {
            id = "objective-826-3-zalazane",
            kind = "objective",
            priority = 880,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Kill Zalazane.",
            complete = QuestObjective(826, 3, "Zalazane"),
            dependsOn = { "accept-826-zalazane" },
            route = {
                Point(1411, 0.6740, 0.8640, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "turnin-808-minshina-s-skull",
            kind = "turnin",
            priority = 890,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Minshina's Skull.",
            complete = QuestState(808, "completed"),
            dependsOn = { "accept-808-minshina-s-skull" },
            route = {
                Point(1411, 0.5595, 0.7472, "Minshina's Skull",
                    "Travel to Minshina's Skull."),
            },
        },
        {
            id = "turnin-826-zalazane",
            kind = "turnin",
            priority = 900,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Zalazane.",
            complete = QuestState(826, "completed"),
            dependsOn = { "accept-826-zalazane", "objective-826-3-zalazane" },
            route = {
                Point(1411, 0.5595, 0.7472, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "turnin-817-practical-prey",
            kind = "turnin",
            priority = 910,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in Practical Prey.",
            complete = QuestState(817, "completed"),
            dependsOn = { "accept-817-practical-prey" },
            route = {
                Point(1411, 0.5595, 0.7393, "Practical Prey",
                    "Travel to Practical Prey."),
            },
        },
        {
            id = "turnin-825-from-the-wreckage",
            kind = "turnin",
            priority = 920,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in From The Wreckage....",
            complete = QuestState(825, "completed"),
            dependsOn = { "accept-825-from-the-wreckage", "objective-825-1-gnomish-tools" },
            route = {
                Point(1411, 0.5195, 0.4350, "From The Wreckage...",
                    "Travel to From The Wreckage....."),
            },
        },
        {
            id = "turnin-815-break-a-few-eggs",
            kind = "turnin",
            priority = 930,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Turn in Break a Few Eggs.",
            complete = QuestState(815, "completed"),
            dependsOn = { "accept-815-break-a-few-eggs" },
            route = {
                Point(1411, 0.5111, 0.4245, "Break a Few Eggs",
                    "Travel to Break a Few Eggs."),
            },
        },
        {
            id = "objective-837-1-razormane-quilboar",
            kind = "objective",
            priority = 940,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Quilboar.",
            complete = QuestObjective(837, 1, "Razormane Quilboar"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.5000, 0.4960, "Razormane Quilboar",
                    "Travel to Razormane Quilboar."),
            },
        },
        {
            id = "objective-837-2-razormane-scout",
            kind = "objective",
            priority = 950,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Scout.",
            complete = QuestObjective(837, 2, "Razormane Scout"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.5000, 0.4960, "Razormane Scout",
                    "Travel to Razormane Scout."),
            },
        },
        {
            id = "objective-837-3-razormane-dustrunner",
            kind = "objective",
            priority = 960,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Dustrunner.",
            complete = QuestObjective(837, 3, "Razormane Dustrunner"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.4240, 0.4060, "Razormane Dustrunner",
                    "Travel to Razormane Dustrunner."),
            },
        },
        {
            id = "objective-837-4-razormane-battleguard",
            kind = "objective",
            priority = 970,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Battleguard.",
            complete = QuestObjective(837, 4, "Razormane Battleguard"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.4240, 0.4060, "Razormane Battleguard",
                    "Travel to Razormane Battleguard."),
            },
        },
        {
            id = "turnin-837-encroachment",
            kind = "turnin",
            priority = 980,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Turn in Encroachment.",
            complete = QuestState(837, "completed"),
            dependsOn = { "accept-837-encroachment", "objective-837-1-razormane-quilboar", "objective-837-2-razormane-scout", "objective-837-3-razormane-dustrunner", "objective-837-4-razormane-battleguard" },
            route = {
                Point(1411, 0.5195, 0.4350, "Encroachment",
                    "Travel to Encroachment."),
            },
        },
        {
            id = "accept-5654-hex-of-weakness",
            kind = "accept",
            priority = 990,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 5 }
            } },
            text = "Accept Hex of Weakness.",
            complete = QuestState(5654, "activeOrCompleted"),
            route = {
                Point(1411, 0.5426, 0.4293, "Hex of Weakness",
                    "Travel to Hex of Weakness.")
            }
            },
        {
            id = "accept-6062-taming-the-beast",
            kind = "accept",
            priority = 1000,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6062, "activeOrCompleted"),
            route = {
                Point(1411, 0.5185, 0.4349, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "objective-6062-1-taming-rod",
            kind = "objective",
            priority = 1010,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6062, 1, "Taming Rod"),
            dependsOn = { "accept-6062-taming-the-beast" },
            route = {
                Point(1411, 0.5140, 0.4800, "Taming Rod",
                    "Travel to Taming Rod."),
            },
        },
        {
            id = "turnin-6062-taming-the-beast",
            kind = "turnin",
            priority = 1020,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6062, "completed"),
            dependsOn = { "accept-6062-taming-the-beast", "objective-6062-1-taming-rod" },
            route = {
                Point(1411, 0.5185, 0.4349, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "accept-6083-taming-the-beast",
            kind = "accept",
            priority = 1030,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6083, "activeOrCompleted"),
            route = {
                Point(1411, 0.5185, 0.4349, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "objective-6083-1-taming-rod",
            kind = "objective",
            priority = 1040,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6083, 1, "Taming Rod"),
            dependsOn = { "accept-6083-taming-the-beast" },
            route = {
                Point(1411, 0.5780, 0.2800, "Taming Rod",
                    "Travel to Taming Rod."),
            },
        },
        {
            id = "turnin-6083-taming-the-beast",
            kind = "turnin",
            priority = 1050,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6083, "completed"),
            dependsOn = { "accept-6083-taming-the-beast", "objective-6083-1-taming-rod" },
            route = {
                Point(1411, 0.5185, 0.4349, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "accept-6082-taming-the-beast",
            kind = "accept",
            priority = 1060,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6082, "activeOrCompleted"),
            route = {
                Point(1411, 0.5185, 0.4349, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "objective-6082-1-taming-rod",
            kind = "objective",
            priority = 1070,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6082, 1, "Taming Rod"),
            dependsOn = { "accept-6082-taming-the-beast" },
            route = {
                Point(1411, 0.5500, 0.3820, "Taming Rod",
                    "Travel to Taming Rod."),
            },
        },
        {
            id = "turnin-6082-taming-the-beast",
            kind = "turnin",
            priority = 1080,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6082, "completed"),
            dependsOn = { "accept-6082-taming-the-beast", "objective-6082-1-taming-rod" },
            route = {
                Point(1411, 0.5185, 0.4349, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "accept-6081-training-the-beast",
            kind = "accept",
            priority = 1090,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Accept Training the Beast.",
            complete = QuestState(6081, "activeOrCompleted"),
            route = {
                Point(1411, 0.5185, 0.4349, "Training the Beast",
                    "Travel to Training the Beast."),
            },
        },
        {
            id = "accept-812-need-for-a-cure",
            kind = "accept",
            priority = 1100,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
                { class = 3 },
            } },
            text = "Accept Need for a Cure.",
            complete = QuestState(812, "activeOrCompleted"),
            route = {
                Point(1411, 0.4155, 0.1861, "Need for a Cure",
                    "Travel to Need for a Cure."),
            },
        },
        {
            id = "turnin-831-the-admiral-s-orders",
            kind = "turnin",
            priority = 1110,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 3 }
            } },
            text = "Turn in The Admiral's Orders.",
            complete = QuestState(831, "completed"),
            dependsOn = { "accept-831-the-admiral-s-orders" },
            route = {
                Point(1454, 0.3227, 0.3580, "The Admiral's Orders",
                    "Travel to The Admiral's Orders.")
            }
            },
        {
            id = "accept-813-finding-the-antidote",
            kind = "accept",
            priority = 1120,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
                { class = 3 },
            } },
            text = "Accept Finding the Antidote.",
            complete = QuestState(813, "activeOrCompleted"),
            route = {
                Point(1454, 0.4724, 0.5358, "Finding the Antidote",
                    "Travel to Finding the Antidote."),
            },
        },
        {
            id = "turnin-6081-training-the-beast",
            kind = "turnin",
            priority = 1130,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = { 2, 8 } },
                { class = 3 },
            } },
            text = "Turn in Training the Beast.",
            complete = QuestState(6081, "completed"),
            dependsOn = { "accept-6081-training-the-beast" },
            route = {
                Point(1454, 0.6605, 0.1854, "Training the Beast",
                    "Travel to Training the Beast."),
            },
        },
        {
            id = "accept-2983-call-of-fire",
            kind = "accept",
            priority = 1140,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Fire.",
            complete = QuestState(2983, "activeOrCompleted"),
            route = {
                Point(1411, 0.5442, 0.4259, "Call of Fire",
                    "Travel to Call of Fire."),
            },
        },
        {
            id = "turnin-2983-call-of-fire",
            kind = "turnin",
            priority = 1150,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Fire.",
            complete = QuestState(2983, "completed"),
            dependsOn = { "accept-2983-call-of-fire" },
            route = {
                Point(1413, 0.5603, 0.1989, "Call of Fire",
                    "Travel to Call of Fire."),
            },
        },
        {
            id = "accept-1524-call-of-fire",
            kind = "accept",
            priority = 1160,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Accept Call of Fire.",
            complete = QuestState(1524, "activeOrCompleted"),
            route = {
                Point(1413, 0.5603, 0.1989, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "turnin-1524-call-of-fire",
            kind = "turnin",
            priority = 1170,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Turn in Call of Fire.",
            complete = QuestState(1524, "completed"),
            dependsOn = { "accept-1524-call-of-fire" },
            route = {
                Point(1411, 0.3659, 0.5707, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "accept-1525-call-of-fire",
            kind = "accept",
            priority = 1180,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Accept Call of Fire.",
            complete = QuestState(1525, "activeOrCompleted"),
            route = {
                Point(1411, 0.3659, 0.5707, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "objective-1525-1-razormane-geomancer",
            kind = "objective",
            priority = 1190,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Kill Razormane Geomancer.",
            complete = QuestObjective(1525, 1, "Razormane Geomancer"),
            dependsOn = { "accept-1525-call-of-fire" },
            route = {
                Point(1413, 0.5560, 0.2540, "Razormane Geomancer",
                    "Travel to Razormane Geomancer.")
            }
            },
        {
            id = "accept-834-winds-in-the-desert",
            kind = "accept",
            priority = 1200,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Accept Winds in the Desert.",
            complete = QuestState(834, "activeOrCompleted"),
            route = {
                Point(1411, 0.5280, 0.2860, "Winds in the Desert",
                    "Travel to Winds in the Desert."),
            },
        },
        {
            id = "objective-834-1-sack-of-supplies",
            kind = "objective",
            priority = 1210,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Collect 5 Sack of Supplies.",
            complete = QuestObjective(834, 1, "Sack of Supplies"),
            dependsOn = { "accept-834-winds-in-the-desert" },
            route = {
                Point(1411, 0.4910, 0.2250, "Sack of Supplies",
                    "Travel to Sack of Supplies."),
            },
        },
        {
            id = "turnin-834-winds-in-the-desert",
            kind = "turnin",
            priority = 1220,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in Winds in the Desert.",
            complete = QuestState(834, "completed"),
            dependsOn = { "accept-834-winds-in-the-desert", "objective-834-1-sack-of-supplies" },
            route = {
                Point(1411, 0.4637, 0.2294, "Winds in the Desert",
                    "Travel to Winds in the Desert."),
            },
        },
        {
            id = "accept-835-securing-the-lines",
            kind = "accept",
            priority = 1230,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Accept Securing the Lines.",
            complete = QuestState(835, "activeOrCompleted"),
            route = {
                Point(1411, 0.4637, 0.2294, "Securing the Lines",
                    "Travel to Securing the Lines."),
            },
        },
        {
            id = "turnin-835-securing-the-lines",
            kind = "turnin",
            priority = 1240,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in Securing the Lines.",
            complete = QuestState(835, "completed"),
            dependsOn = { "accept-835-securing-the-lines" },
            route = {
                Point(1411, 0.5351, 0.2779, "Securing the Lines",
                    "Travel to Securing the Lines."),
            },
        },
        {
            id = "accept-816-lost-but-not-forgotten",
            kind = "accept",
            priority = 1250,
            conditions = { all = {
                { level = { min = 8 } },
                { faction = "Horde" },
            } },
            text = "Accept Lost But Not Forgotten.",
            complete = QuestState(816, "activeOrCompleted"),
            route = {
                Point(1411, 0.4311, 0.3024, "Lost But Not Forgotten",
                    "Travel to Lost But Not Forgotten."),
            },
        },
        {
            id = "objective-816-1-dreadmaw-crocolisk",
            kind = "objective",
            priority = 1260,
            conditions = { all = {
                { level = { min = 8 } },
                { faction = "Horde" },
            } },
            text = "Kill Dreadmaw Crocolisk.",
            complete = QuestObjective(816, 1, "Dreadmaw Crocolisk"),
            dependsOn = { "accept-816-lost-but-not-forgotten" },
            route = {
                Point(1411, 0.3480, 0.3640, "Dreadmaw Crocolisk",
                    "Travel to Dreadmaw Crocolisk."),
            },
        },
        {
            id = "turnin-1525-call-of-fire",
            kind = "turnin",
            priority = 1270,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Turn in Call of Fire.",
            complete = QuestState(1525, "completed"),
            dependsOn = { "accept-1525-call-of-fire", "objective-1525-1-razormane-geomancer" },
            route = {
                Point(1411, 0.3659, 0.5707, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "accept-1526-call-of-fire",
            kind = "accept",
            priority = 1280,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Accept Call of Fire.",
            complete = QuestState(1526, "activeOrCompleted"),
            route = {
                Point(1411, 0.3659, 0.5707, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "objective-1526-1-fire-sapta",
            kind = "objective",
            priority = 1290,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Use Fire Sapta.",
            complete = QuestObjective(1526, 1, "Fire Sapta"),
            dependsOn = { "accept-1526-call-of-fire" },
            route = {
                Point(1411, 0.3816, 0.5854, "Fire Sapta",
                    "Travel to Fire Sapta.")
            }
            },
        {
            id = "objective-1526-1-minor-manifestation-of-fire",
            kind = "objective",
            priority = 1300,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Kill Minor Manifestation of Fire.",
            complete = QuestObjective(1526, 1, "Minor Manifestation of Fire"),
            dependsOn = { "accept-1526-call-of-fire" },
            route = {
                Point(1411, 0.3872, 0.5829, "Minor Manifestation of Fire",
                    "Travel to Minor Manifestation of Fire.")
            }
            },
        {
            id = "turnin-1526-call-of-fire",
            kind = "turnin",
            priority = 1310,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Turn in Call of Fire.",
            complete = QuestState(1526, "completed"),
            dependsOn = { "accept-1526-call-of-fire", "objective-1526-1-fire-sapta", "objective-1526-1-minor-manifestation-of-fire" },
            route = {
                Point(1411, 0.3895, 0.5822, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "accept-1527-call-of-fire",
            kind = "accept",
            priority = 1320,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Accept Call of Fire.",
            complete = QuestState(1527, "activeOrCompleted"),
            route = {
                Point(1411, 0.3895, 0.5822, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "turnin-1527-call-of-fire",
            kind = "turnin",
            priority = 1330,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Turn in Call of Fire.",
            complete = QuestState(1527, "completed"),
            dependsOn = { "accept-1527-call-of-fire" },
            route = {
                Point(1413, 0.5604, 0.1989, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "turnin-816-lost-but-not-forgotten",
            kind = "turnin",
            priority = 1340,
            conditions = { all = {
                { level = { min = 8 } },
                { faction = "Horde" },
            } },
            text = "Turn in Lost But Not Forgotten.",
            complete = QuestState(816, "completed"),
            dependsOn = { "accept-816-lost-but-not-forgotten", "objective-816-1-dreadmaw-crocolisk" },
            route = {
                Point(1411, 0.4311, 0.3024, "Lost But Not Forgotten",
                    "Travel to Lost But Not Forgotten."),
            },
        },
        {
            id = "objective-806-1-fizzle-s-claw",
            kind = "objective",
            priority = 1345,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { any = { { class = 1 }, { class = 7 } } },
            } },
            text = "Collect Fizzle's Claw from Fizzle Darkstorm on Thunder Ridge.",
            complete = QuestObjective(806, 1, "Fizzle's Claw"),
            dependsOn = { "accept-806-dark-storms" },
            route = {
                Point(1411, 0.4200, 0.2660, "Fizzle Darkstorm",
                    "Travel to Fizzle Darkstorm."),
            },
        },
        {
            id = "turnin-806-dark-storms",
            kind = "turnin",
            priority = 1346,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { any = { { class = 1 }, { class = 7 } } },
            } },
            text = "Turn in Dark Storms.",
            complete = QuestState(806, "completed"),
            dependsOn = { "accept-806-dark-storms", "objective-806-1-fizzle-s-claw" },
            route = {
                Point(1411, 0.5225, 0.4315, "Dark Storms",
                    "Travel to Dark Storms."),
            },
        },
        {
            id = "turnin-5654-hex-of-weakness",
            kind = "turnin",
            priority = 1350,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 8 },
                { class = 5 }
            } },
            text = "Turn in Hex of Weakness.",
            complete = QuestState(5654, "completed"),
            dependsOn = { "accept-5654-hex-of-weakness" },
            route = {
                Point(1454, 0.3559, 0.8780, "Hex of Weakness",
                    "Travel to Hex of Weakness.")
            }
            },
        {
            id = "turnin-831-the-admiral-s-orders-2",
            kind = "turnin",
            priority = 1360,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Admiral's Orders.",
            complete = QuestState(831, "completed"),
            dependsOn = { "accept-831-the-admiral-s-orders" },
            route = {
                Point(1454, 0.3227, 0.3580, "The Admiral's Orders",
                    "Travel to The Admiral's Orders.")
            }
            },
        {
            id = "objective-813-1-venomtail-scorpid",
            kind = "objective",
            priority = 1380,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Kill Venomtail Scorpid.",
            complete = QuestObjective(813, 1, "Venomtail Scorpid"),
            dependsOn = { "accept-813-finding-the-antidote" },
            route = {
                Point(1411, 0.5502, 0.0979, "Venomtail Scorpid",
                    "Travel to Venomtail Scorpid."),
            },
        },
        {
            id = "turnin-813-finding-the-antidote",
            kind = "turnin",
            priority = 1390,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in Finding the Antidote.",
            complete = QuestState(813, "completed"),
            dependsOn = { "accept-813-finding-the-antidote", "objective-813-1-venomtail-scorpid" },
            route = {
                Point(1454, 0.4724, 0.5359, "Finding the Antidote",
                    "Travel to Finding the Antidote."),
            },
        },
        {
            id = "turnin-812-need-for-a-cure",
            kind = "turnin",
            priority = 1410,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in Need for a Cure.",
            complete = QuestState(812, "completed"),
            dependsOn = { "accept-812-need-for-a-cure" },
            route = {
                Point(1411, 0.4155, 0.1861, "Need for a Cure",
                    "Travel to Need for a Cure."),
            },
        },
        {
            id = "accept-1818-speak-with-dillinger",
            kind = "accept",
            priority = 1420,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Accept Speak with Dillinger.",
            complete = QuestState(1818, "activeOrCompleted"),
            route = {
                Point(1420, 0.6185, 0.5254, "Speak with Dillinger",
                    "Travel to Speak with Dillinger.")
            }
            },
        {
            id = "accept-354-deaths-in-the-family",
            kind = "accept",
            priority = 1430,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Deaths in the Family.",
            complete = QuestState(354, "activeOrCompleted"),
            route = {
                Point(1420, 0.6172, 0.5229, "Deaths in the Family",
                    "Travel to Deaths in the Family.")
            }
            },
        {
            id = "accept-362-the-haunted-mills",
            kind = "accept",
            priority = 1440,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Haunted Mills.",
            complete = QuestState(362, "activeOrCompleted"),
            route = {
                Point(1420, 0.6172, 0.5229, "The Haunted Mills",
                    "Travel to The Haunted Mills.")
            }
            },
        {
            id = "accept-1881-speak-with-anastasia",
            kind = "accept",
            priority = 1450,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = { 5, 8 } },
                { class = 8 }
            } },
            text = "Accept Speak with Anastasia.",
            complete = QuestState(1881, "activeOrCompleted"),
            route = {
                Point(1420, 0.6197, 0.5247, "Speak with Anastasia",
                    "Travel to Speak with Anastasia.")
            }
            },
        {
            id = "accept-375-the-chill-of-death",
            kind = "accept",
            priority = 1460,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Chill of Death.",
            complete = QuestState(375, "activeOrCompleted"),
            route = {
                Point(1420, 0.6189, 0.5273, "The Chill of Death",
                    "Travel to The Chill of Death.")
            }
            },
        {
            id = "accept-1478-halgar-s-summons",
            kind = "accept",
            priority = 1470,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Accept Halgar's Summons.",
            complete = QuestState(1478, "activeOrCompleted"),
            route = {
                Point(1420, 0.6162, 0.5268, "Halgar's Summons",
                    "Travel to Halgar's Summons.")
            }
            },
        {
            id = "accept-358-graverobbers",
            kind = "accept",
            priority = 1480,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Graverobbers.",
            complete = QuestState(358, "activeOrCompleted"),
            route = {
                Point(1420, 0.6126, 0.5084, "Graverobbers",
                    "Travel to Graverobbers.")
            }
            },
        {
            id = "accept-398-wanted-maggot-eye",
            kind = "accept",
            priority = 1490,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Wanted: Maggot Eye.",
            complete = QuestState(398, "activeOrCompleted"),
            route = {
                Point(1420, 0.6073, 0.5152, "Wanted: Maggot Eye",
                    "Travel to Wanted: Maggot Eye.")
            }
            },
        {
            id = "accept-367-a-new-plague",
            kind = "accept",
            priority = 1500,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A New Plague.",
            complete = QuestState(367, "activeOrCompleted"),
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "turnin-1818-speak-with-dillinger",
            kind = "turnin",
            priority = 1510,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Turn in Speak with Dillinger.",
            complete = QuestState(1818, "completed"),
            dependsOn = { "accept-1818-speak-with-dillinger" },
            route = {
                Point(1420, 0.5820, 0.5145, "Speak with Dillinger",
                    "Travel to Speak with Dillinger.")
            }
            },
        {
            id = "accept-1819-ulag-the-cleaver",
            kind = "accept",
            priority = 1520,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Accept Ulag the Cleaver.",
            complete = QuestState(1819, "activeOrCompleted"),
            route = {
                Point(1420, 0.5820, 0.5145, "Ulag the Cleaver",
                    "Travel to Ulag the Cleaver.")
            }
            },
        {
            id = "objective-1819-1-mausoleum-trigger",
            kind = "objective",
            priority = 1530,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Click Mausoleum Trigger.",
            complete = QuestObjective(1819, 1, "Mausoleum Trigger"),
            dependsOn = { "accept-1819-ulag-the-cleaver" },
            route = {
                Point(1420, 0.5916, 0.4851, "Mausoleum Trigger",
                    "Travel to Mausoleum Trigger.")
            }
            },
        {
            id = "turnin-1819-ulag-the-cleaver",
            kind = "turnin",
            priority = 1540,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Turn in Ulag the Cleaver.",
            complete = QuestState(1819, "completed"),
            dependsOn = { "accept-1819-ulag-the-cleaver", "objective-1819-1-mausoleum-trigger" },
            route = {
                Point(1420, 0.5820, 0.5145, "Ulag the Cleaver",
                    "Travel to Ulag the Cleaver.")
            }
            },
        {
            id = "accept-1820-speak-with-coleman",
            kind = "accept",
            priority = 1550,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Accept Speak with Coleman.",
            complete = QuestState(1820, "activeOrCompleted"),
            route = {
                Point(1420, 0.5820, 0.5145, "Speak with Coleman",
                    "Travel to Speak with Coleman.")
            }
            },
        {
            id = "turnin-1820-speak-with-coleman",
            kind = "turnin",
            priority = 1560,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Turn in Speak with Coleman.",
            complete = QuestState(1820, "completed"),
            dependsOn = { "accept-1820-speak-with-coleman" },
            route = {
                Point(1420, 0.6172, 0.5229, "Speak with Coleman",
                    "Travel to Speak with Coleman.")
            }
            },
        {
            id = "turnin-1478-halgar-s-summons",
            kind = "turnin",
            priority = 1570,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Turn in Halgar's Summons.",
            complete = QuestState(1478, "completed"),
            dependsOn = { "accept-1478-halgar-s-summons" },
            route = {
                Point(1458, 0.8504, 0.2601, "Halgar's Summons",
                    "Travel to Halgar's Summons.")
            }
            },
        {
            id = "accept-1473-creature-of-the-void",
            kind = "accept",
            priority = 1580,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 5 },
                { class = 9 }
            } },
            text = "Accept Creature of the Void.",
            complete = QuestState(1473, "activeOrCompleted"),
            route = {
                Point(1458, 0.8504, 0.2601, "Creature of the Void",
                    "Travel to Creature of the Void.")
            }
            },
        {
            id = "turnin-1473-creature-of-the-void",
            kind = "turnin",
            priority = 1590,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 5 },
                { class = 9 }
            } },
            text = "Turn in Creature of the Void.",
            complete = QuestState(1473, "completed"),
            dependsOn = { "accept-1473-creature-of-the-void" },
            route = {
                Point(1458, 0.8504, 0.2601, "Creature of the Void",
                    "Travel to Creature of the Void.")
            }
            },
        {
            id = "accept-1471-the-binding",
            kind = "accept",
            priority = 1600,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 5 },
                { class = 9 }
            } },
            text = "Accept The Binding.",
            complete = QuestState(1471, "activeOrCompleted"),
            route = {
                Point(1458, 0.8504, 0.2601, "The Binding",
                    "Travel to The Binding.")
            }
            },
        {
            id = "objective-1471-1-runes-of-summoning",
            kind = "objective",
            priority = 1610,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 5 },
                { class = 9 }
            } },
            text = "Use Runes of Summoning.",
            complete = QuestObjective(1471, 1, "Runes of Summoning"),
            dependsOn = { "accept-1471-the-binding" },
            route = {
                Point(1458, 0.8662, 0.2710, "Runes of Summoning",
                    "Travel to Runes of Summoning.")
            }
            },
        {
            id = "turnin-1471-the-binding",
            kind = "turnin",
            priority = 1620,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 5 },
                { class = 9 }
            } },
            text = "Turn in The Binding.",
            complete = QuestState(1471, "completed"),
            dependsOn = { "accept-1471-the-binding", "objective-1471-1-runes-of-summoning" },
            route = {
                Point(1458, 0.8504, 0.2601, "The Binding",
                    "Travel to The Binding.")
            }
            },
        {
            id = "turnin-1881-speak-with-anastasia",
            kind = "turnin",
            priority = 1630,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = { 5, 8 } },
                { class = 8 }
            } },
            text = "Turn in Speak with Anastasia.",
            complete = QuestState(1881, "completed"),
            dependsOn = { "accept-1881-speak-with-anastasia" },
            route = {
                Point(1458, 0.8514, 0.1003, "Speak with Anastasia",
                    "Travel to Speak with Anastasia.")
            }
            },
        {
            id = "accept-1882-the-balnir-farmstead",
            kind = "accept",
            priority = 1640,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = { 5, 8 } },
                { class = 8 }
            } },
            text = "Accept The Balnir Farmstead.",
            complete = QuestState(1882, "activeOrCompleted"),
            route = {
                Point(1458, 0.8514, 0.1003, "The Balnir Farmstead",
                    "Travel to The Balnir Farmstead.")
            }
            },
        {
            id = "objective-375-1-vampiric-duskbat",
            kind = "objective",
            priority = 1650,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Vampiric Duskbat.",
            complete = QuestObjective(375, 1, "Vampiric Duskbat"),
            dependsOn = { "accept-375-the-chill-of-death" },
            route = {
                Point(1420, 0.5120, 0.6140, "Vampiric Duskbat",
                    "Travel to Vampiric Duskbat.")
            }
            },
        {
            id = "turnin-367-a-new-plague",
            kind = "turnin",
            priority = 1660,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A New Plague.",
            complete = QuestState(367, "completed"),
            dependsOn = { "accept-367-a-new-plague" },
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "accept-368-a-new-plague",
            kind = "accept",
            priority = 1670,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A New Plague.",
            complete = QuestState(368, "activeOrCompleted"),
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "turnin-375-the-chill-of-death",
            kind = "turnin",
            priority = 1680,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Chill of Death.",
            complete = QuestState(375, "completed"),
            dependsOn = { "accept-375-the-chill-of-death", "objective-375-1-vampiric-duskbat" },
            route = {
                Point(1420, 0.6189, 0.5273, "The Chill of Death",
                    "Travel to The Chill of Death.")
            }
            },
        {
            id = "objective-362-1-devlin-agamand",
            kind = "objective",
            priority = 1690,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Devlin Agamand.",
            complete = QuestObjective(362, 1, "Devlin Agamand"),
            dependsOn = { "accept-362-the-haunted-mills" },
            route = {
                Point(1420, 0.4740, 0.4160, "Devlin Agamand",
                    "Travel to Devlin Agamand.")
            }
            },
        {
            id = "objective-354-2-nissa-agamand",
            kind = "objective",
            priority = 1700,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Nissa Agamand.",
            complete = QuestObjective(354, 2, "Nissa Agamand"),
            dependsOn = { "accept-354-deaths-in-the-family" },
            route = {
                Point(1420, 0.4954, 0.3602, "Nissa Agamand",
                    "Travel to Nissa Agamand.")
            }
            },
        {
            id = "objective-354-1-gregor-agamand",
            kind = "objective",
            priority = 1710,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Gregor Agamand.",
            complete = QuestObjective(354, 1, "Gregor Agamand"),
            dependsOn = { "accept-354-deaths-in-the-family" },
            route = {
                Point(1420, 0.4640, 0.3060, "Gregor Agamand",
                    "Travel to Gregor Agamand.")
            }
            },
        {
            id = "objective-354-3-thurman-agamand",
            kind = "objective",
            priority = 1720,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Thurman Agamand.",
            complete = QuestObjective(354, 3, "Thurman Agamand"),
            dependsOn = { "accept-354-deaths-in-the-family" },
            route = {
                Point(1420, 0.4340, 0.3420, "Thurman Agamand",
                    "Travel to Thurman Agamand.")
            }
            },
        {
            id = "accept-361-a-letter-undelivered",
            kind = "accept",
            priority = 1730,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Use the A Sealed Letter to accept A Letter Undelivered.",
            complete = QuestState(361, "activeOrCompleted"),
            route = nil
            },
        {
            id = "objective-398-1-maggot-eye",
            kind = "objective",
            priority = 1740,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Maggot Eye.",
            complete = QuestObjective(398, 1, "Maggot Eye"),
            dependsOn = { "accept-398-wanted-maggot-eye" },
            route = {
                Point(1420, 0.5428, 0.3167, "Maggot Eye",
                    "Travel to Maggot Eye.")
            }
            },
        {
            id = "objective-368-1-vile-fin-puddlejumper",
            kind = "objective",
            priority = 1750,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Vile Fin Puddlejumper.",
            complete = QuestObjective(368, 1, "Vile Fin Puddlejumper"),
            dependsOn = { "accept-368-a-new-plague" },
            route = {
                Point(1420, 0.6240, 0.2880, "Vile Fin Puddlejumper",
                    "Travel to Vile Fin Puddlejumper.")
            }
            },
        {
            id = "objective-358-1-rot-hide-graverobber",
            kind = "objective",
            priority = 1760,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill 8 Rot Hide Graverobber.",
            complete = QuestObjective(358, 1, "Rot Hide Graverobber"),
            dependsOn = { "accept-358-graverobbers" },
            route = {
                Point(1420, 0.5537, 0.4234, "Rot Hide Graverobber",
                    "Travel to Rot Hide Graverobber.")
            }
            },
        {
            id = "turnin-361-a-letter-undelivered",
            kind = "turnin",
            priority = 1770,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A Letter Undelivered.",
            complete = QuestState(361, "completed"),
            dependsOn = { "accept-361-a-letter-undelivered" },
            route = {
                Point(1420, 0.6158, 0.5260, "A Letter Undelivered",
                    "Travel to A Letter Undelivered.")
            }
            },
        {
            id = "turnin-354-deaths-in-the-family",
            kind = "turnin",
            priority = 1780,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Deaths in the Family.",
            complete = QuestState(354, "completed"),
            dependsOn = { "accept-354-deaths-in-the-family", "objective-354-2-nissa-agamand", "objective-354-1-gregor-agamand", "objective-354-3-thurman-agamand" },
            route = {
                Point(1420, 0.6172, 0.5229, "Deaths in the Family",
                    "Travel to Deaths in the Family.")
            }
            },
        {
            id = "turnin-362-the-haunted-mills",
            kind = "turnin",
            priority = 1790,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Haunted Mills.",
            complete = QuestState(362, "completed"),
            dependsOn = { "accept-362-the-haunted-mills", "objective-362-1-devlin-agamand" },
            route = {
                Point(1420, 0.6172, 0.5229, "The Haunted Mills",
                    "Travel to The Haunted Mills.")
            }
            },
        {
            id = "accept-355-speak-with-sevren",
            kind = "accept",
            priority = 1800,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Speak with Sevren.",
            complete = QuestState(355, "activeOrCompleted"),
            route = {
                Point(1420, 0.6172, 0.5229, "Speak with Sevren",
                    "Travel to Speak with Sevren.")
            }
            },
        {
            id = "turnin-355-speak-with-sevren",
            kind = "turnin",
            priority = 1810,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Speak with Sevren.",
            complete = QuestState(355, "completed"),
            dependsOn = { "accept-355-speak-with-sevren" },
            route = {
                Point(1420, 0.6126, 0.5084, "Speak with Sevren",
                    "Travel to Speak with Sevren.")
            }
            },
        {
            id = "turnin-358-graverobbers",
            kind = "turnin",
            priority = 1820,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Graverobbers.",
            complete = QuestState(358, "completed"),
            dependsOn = { "accept-358-graverobbers", "objective-358-1-rot-hide-graverobber" },
            route = {
                Point(1420, 0.6126, 0.5084, "Graverobbers",
                    "Travel to Graverobbers.")
            }
            },
        {
            id = "turnin-398-wanted-maggot-eye",
            kind = "turnin",
            priority = 1830,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Wanted: Maggot Eye.",
            complete = QuestState(398, "completed"),
            dependsOn = { "accept-398-wanted-maggot-eye", "objective-398-1-maggot-eye" },
            route = {
                Point(1420, 0.6059, 0.5176, "Wanted: Maggot Eye",
                    "Travel to Wanted: Maggot Eye.")
            }
            },
        {
            id = "turnin-368-a-new-plague",
            kind = "turnin",
            priority = 1840,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A New Plague.",
            complete = QuestState(368, "completed"),
            dependsOn = { "accept-368-a-new-plague", "objective-368-1-vile-fin-puddlejumper" },
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "accept-445-delivery-to-silverpine-forest",
            kind = "accept",
            priority = 1850,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Horde" },
            } },
            text = "Accept Delivery to Silverpine Forest.",
            complete = QuestState(445, "activeOrCompleted"),
            route = {
                Point(1420, 0.5945, 0.5240, "Delivery to Silverpine Forest",
                    "Travel to Delivery to Silverpine Forest."),
            },
        },
        {
            id = "accept-356-rear-guard-patrol",
            kind = "accept",
            priority = 1860,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Rear Guard Patrol.",
            complete = QuestState(356, "activeOrCompleted"),
            route = {
                Point(1420, 0.6549, 0.6025, "Rear Guard Patrol",
                    "Travel to Rear Guard Patrol.")
            }
            },
        {
            id = "turnin-356-rear-guard-patrol",
            kind = "turnin",
            priority = 1870,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Rear Guard Patrol.",
            complete = QuestState(356, "completed"),
            dependsOn = { "accept-356-rear-guard-patrol" },
            route = {
                Point(1420, 0.6549, 0.6025, "Rear Guard Patrol",
                    "Travel to Rear Guard Patrol.")
            }
            },
        {
            id = "turnin-1882-the-balnir-farmstead",
            kind = "turnin",
            priority = 1880,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = { 5, 8 } },
                { class = 8 }
            } },
            text = "Turn in The Balnir Farmstead.",
            complete = QuestState(1882, "completed"),
            dependsOn = { "accept-1882-the-balnir-farmstead" },
            route = {
                Point(1458, 0.8514, 0.1003, "The Balnir Farmstead",
                    "Travel to The Balnir Farmstead.")
            }
            },
        {
            id = "woven-accept-97279-wayward-weapons",
            kind = "accept",
            priority = 1890,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Wayward Weapons from Gornek in The Den.",
            complete = QuestState(97279, "activeOrCompleted"),
            route = {
                Point(1411, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek."),
            },
        },
        {
            id = "woven-objective-97279-wayward-weapons",
            kind = "objective",
            priority = 1900,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { race = { 2, 8 } },
                },
            },
            useClientPin = true,
            text = "Collect 6 Abandoned Training Weapons around the Valley of Trials. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(97279, "complete"),
            route = {
                Point(1411, 0.4200, 0.6840, "Valley of Trials",
                    "Travel to Valley of Trials."),
            },
        },
        {
            id = "woven-turnin-97279-wayward-weapons",
            kind = "turnin",
            priority = 1910,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Wayward Weapons to Kzan Thornslash in The Den.",
            complete = QuestState(97279, "completed"),
            route = {
                Point(1411, 0.4040, 0.6800, "Kzan Thornslash",
                    "Travel to Kzan Thornslash."),
            },
        },
        {
            id = "woven-accept-98576-glyphic-parchment",
            kind = "accept",
            priority = 1920,
            conditions = {
                all = {
                    { race = 2 },
                    { class = 8 },
                },
            },
            text = "Accept Glyphic Parchment from Gornek in the Den.",
            complete = QuestState(98576, "activeOrCompleted"),
            route = {
                Point(1411, 0.4200, 0.6840, "Gornek", "Travel to Gornek."),
            },
        },
        {
            id = "woven-turnin-98576-glyphic-parchment",
            kind = "turnin",
            priority = 1930,
            conditions = {
                all = {
                    { race = 2 },
                    { class = 8 },
                },
            },
            text = "Turn in Glyphic Parchment to Mai'ah in the Valley of Trials.",
            complete = QuestState(98576, "completed"),
            route = {
                Point(1411, 0.4240, 0.6900, "Mai'ah", "Travel to Mai'ah."),
            },
        },
        {
            id = "woven-accept-98575-tainted-tablet",
            kind = "accept",
            priority = 1940,
            conditions = {
                all = {
                    { race = 8 },
                    { class = 9 },
                },
            },
            text = "Accept Tainted Tablet from Gornek in the Den.",
            complete = QuestState(98575, "activeOrCompleted"),
            route = {
                Point(1411, 0.4200, 0.6840, "Gornek", "Travel to Gornek."),
            },
        },
        {
            id = "woven-turnin-98575-tainted-tablet",
            kind = "turnin",
            priority = 1950,
            conditions = {
                all = {
                    { race = 8 },
                    { class = 9 },
                },
            },
            text = "Turn in Tainted Tablet to Nartok in the Valley of Trials.",
            complete = QuestState(98575, "completed"),
            route = {
                Point(1411, 0.4060, 0.6840, "Nartok", "Travel to Nartok."),
            },
        },
        {
            id = "woven-accept-96652-the-adventurer",
            kind = "accept",
            priority = 1960,
            conditions = { level = { min = 6 } },
            useClientPin = true,
            text = "Accept The Adventurer from the Lost Journal. No saved spot for the journal, so the guide follows the pin in your quest log.",
            complete = QuestState(96652, "activeOrCompleted"),
            route = {
                Point(1411, 0.4200, 0.6840, "Valley of Trials",
                    "Travel to the Valley of Trials."),
            },
        },
        {
            id = "woven-accept-96821-legging-it",
            kind = "accept",
            priority = 1970,
            conditions = { level = { min = 6 } },
            text = "Accept Legging It from Vel'rin Fang in Sen'jin Village.",
            complete = QuestState(96821, "activeOrCompleted"),
            route = {
                Point(1411, 0.5580, 0.7400, "Vel'rin Fang",
                    "Travel to Vel'rin Fang."),
            },
        },
        {
            id = "woven-accept-97225-forgotten-loa-idols",
            kind = "accept",
            priority = 1980,
            conditions = { level = { min = 9 } },
            text = "Accept Forgotten Loa Idols from Master Vornal in Sen'jin Village.",
            complete = QuestState(97225, "activeOrCompleted"),
            route = {
                Point(1411, 0.5580, 0.7440, "Master Vornal",
                    "Travel to Master Vornal."),
            },
        },
        {
            id = "woven-accept-97223-bloodtalon-matriarch",
            kind = "accept",
            priority = 1990,
            conditions = { level = { min = 8 } },
            text = "Accept Bloodtalon Matriarch from Xar'Ti in Sen'jin Village.",
            complete = QuestState(97223, "activeOrCompleted"),
            route = {
                Point(1411, 0.5520, 0.7540, "Xar'Ti",
                    "Travel to Xar'Ti."),
            },
        },
        {
            id = "woven-objective-96821-legging-it-1",
            kind = "objective",
            priority = 2000,
            conditions = { level = { min = 6 } },
            text = "Legging It: kill Ridgeshade Creepers on the way to Razor Hill.",
            complete = QuestObjective(96821, 1),
            route = {
                Point(1411, 0.5160, 0.5740, "Ridgeshade Creeper",
                    "Travel to Ridgeshade Creeper."),
            },
        },
        {
            id = "woven-objective-96821-legging-it-2",
            kind = "objective",
            priority = 2010,
            conditions = { level = { min = 6 } },
            text = "Legging It: kill Ridgeshade Lurkers on the way to Razor Hill. A lost pack can drop for Ukor.",
            complete = QuestObjective(96821, 2),
            route = {
                Point(1411, 0.5040, 0.5180, "Ridgeshade Lurker",
                    "Travel to Ridgeshade Lurker."),
            },
        },
        {
            id = "woven-turnin-96876-ukors-lost-pack",
            kind = "turnin",
            priority = 2020,
            conditions = {
                all = {
                    { level = { min = 8 } },
                    { quest = { id = 96876, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Ukor's Lost Pack to Ukor in the Valley of Trials if you found the pack.",
            complete = QuestState(96876, "completed"),
            route = {
                Point(1411, 0.5200, 0.6820, "Ukor",
                    "Travel to Ukor."),
            },
        },
        {
            id = "woven-turnin-96652-the-adventurer",
            kind = "turnin",
            priority = 2030,
            conditions = { level = { min = 6 } },
            text = "Turn in The Adventurer to Brakk near Razor Hill.",
            complete = QuestState(96652, "completed"),
            route = {
                Point(1411, 0.5200, 0.4740, "Brakk",
                    "Travel to Brakk."),
            },
        },
        {
            id = "woven-accept-96101-the-great-outdoors",
            kind = "accept",
            priority = 2040,
            conditions = { level = { min = 6 } },
            text = "Accept The Great Outdoors from Brakk.",
            complete = QuestState(96101, "activeOrCompleted"),
            route = {
                Point(1411, 0.5200, 0.4740, "Brakk",
                    "Travel to Brakk."),
            },
        },
        {
            id = "woven-objective-96101-the-great-outdoors",
            kind = "objective",
            priority = 2050,
            conditions = { level = { min = 6 } },
            text = "Type /sit at Brakk's campfire and wait until you gain the Boosted Rest buff.",
            complete = QuestState(96101, "complete"),
        },
        {
            id = "woven-turnin-96101-the-great-outdoors",
            kind = "turnin",
            priority = 2060,
            conditions = { level = { min = 6 } },
            text = "Turn in The Great Outdoors to Brakk.",
            complete = QuestState(96101, "completed"),
            route = {
                Point(1411, 0.5200, 0.4740, "Brakk",
                    "Travel to Brakk."),
            },
        },
        {
            id = "woven-turnin-96821-legging-it",
            kind = "turnin",
            priority = 2070,
            conditions = { level = { min = 6 } },
            text = "Turn in Legging It to Gar'Thok in Razor Hill.",
            complete = QuestState(96821, "completed"),
            route = {
                Point(1411, 0.5200, 0.4340, "Gar'Thok",
                    "Travel to Gar'Thok."),
            },
        },
        {
            id = "woven-accept-96822-for-honor",
            kind = "accept",
            priority = 2080,
            conditions = { level = { min = 6 } },
            text = "Accept For Honor from Turroc in Razor Hill Barracks.",
            complete = QuestState(96822, "activeOrCompleted"),
            route = {
                Point(1411, 0.5400, 0.4260, "Turroc",
                    "Travel to Turroc."),
            },
        },
        {
            id = "woven-accept-96825-this-fruit-could-bite-back",
            kind = "accept",
            priority = 2090,
            conditions = { level = { min = 6 } },
            text = "Accept This Fruit Could Bite Back from Cook Torka in Razor Hill.",
            complete = QuestState(96825, "activeOrCompleted"),
            route = {
                Point(1411, 0.5120, 0.4240, "Cook Torka",
                    "Travel to Cook Torka."),
            },
        },
        {
            id = "woven-turnin-96822-for-honor",
            kind = "turnin",
            priority = 2100,
            conditions = { level = { min = 6 } },
            text = "Turn in For Honor to Turroc in Razor Hill Barracks.",
            complete = QuestState(96822, "completed"),
            route = {
                Point(1411, 0.5400, 0.4260, "Turroc",
                    "Travel to Turroc."),
            },
        },
        {
            id = "woven-turnin-96825-this-fruit-could-bite-back",
            kind = "turnin",
            priority = 2110,
            conditions = { level = { min = 6 } },
            text = "Turn in This Fruit Could Bite Back to Cook Torka in Razor Hill.",
            complete = QuestState(96825, "completed"),
            route = {
                Point(1411, 0.5120, 0.4240, "Cook Torka",
                    "Travel to Cook Torka."),
            },
        },
        {
            id = "woven-objective-96825-this-fruit-could-bite-back",
            kind = "objective",
            priority = 2120,
            conditions = { level = { min = 6 } },
            useClientPin = true,
            text = "Collect Prickly Pear Fruit on the Razormane grounds. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(96825, "complete"),
            route = {
                Point(1411, 0.4300, 0.3980, "Razormane grounds",
                    "Travel to Razormane grounds."),
            },
        },
        {
            id = "woven-objective-96822-for-honor",
            kind = "objective",
            priority = 2130,
            conditions = { level = { min = 6 } },
            useClientPin = true,
            text = "For Honor: collect the Raider's Bow, Battleaxe, and Shield on the Tiragarde Keep outskirts. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(96822, "complete"),
            route = {
                Point(1411, 0.5940, 0.5880, "Tiragarde Keep outskirts",
                    "Travel to Tiragarde Keep outskirts."),
            },
        },
        {
            id = "woven-accept-99123-lost-in-the-shadows",
            kind = "accept",
            priority = 2140,
            conditions = { level = { min = 8 } },
            text = "Accept Lost in the Shadows from Pal'juh inside Kolkar Crag.",
            complete = QuestState(99123, "activeOrCompleted"),
            route = {
                Point(1411, 0.4620, 0.7860, "Pal'juh",
                    "Travel to Pal'juh."),
            },
        },
        {
            id = "woven-objective-99123-lost-in-the-shadows",
            kind = "objective",
            priority = 2150,
            conditions = { level = { min = 8 } },
            text = "Escort Pal'juh out of Kolkar Crag.",
            complete = QuestState(99123, "complete"),
            route = {
                Point(1411, 0.4620, 0.7860, "Pal'juh",
                    "Travel to Pal'juh."),
            },
        },
        {
            id = "woven-turnin-99123-lost-in-the-shadows",
            kind = "turnin",
            priority = 2160,
            conditions = { level = { min = 8 } },
            text = "Turn in Lost in the Shadows to Master Vornal in Sen'jin Village.",
            complete = QuestState(99123, "completed"),
            route = {
                Point(1411, 0.5580, 0.7440, "Master Vornal",
                    "Travel to Master Vornal."),
            },
        },
        {
            id = "woven-objective-97225-forgotten-loa-idols",
            kind = "objective",
            priority = 2170,
            conditions = { level = { min = 9 } },
            useClientPin = true,
            text = "Collect Forgotten Loa Idols on the Echo Isles. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(97225, "complete"),
            route = {
                Point(1411, 0.6760, 0.8340, "Echo Isles",
                    "Travel to Echo Isles."),
            },
        },
        {
            id = "woven-objective-97223-bloodtalon-matriarch",
            kind = "objective",
            priority = 2180,
            conditions = { level = { min = 8 } },
            text = "Collect Bloodtalon Matriarch Eggs.",
            complete = QuestState(97223, "complete"),
            route = {
                Point(1411, 0.6860, 0.7160, "Bloodtalon Matriarch",
                    "Travel to Bloodtalon Matriarch."),
            },
        },
        {
            id = "woven-turnin-97225-forgotten-loa-idols",
            kind = "turnin",
            priority = 2190,
            conditions = { level = { min = 9 } },
            text = "Turn in Forgotten Loa Idols to Master Gadrin in Sen'jin Village.",
            complete = QuestState(97225, "completed"),
            route = {
                Point(1411, 0.5600, 0.7460, "Master Gadrin",
                    "Travel to Master Gadrin."),
            },
        },
        {
            id = "woven-turnin-97223-bloodtalon-matriarch",
            kind = "turnin",
            priority = 2200,
            conditions = { level = { min = 8 } },
            text = "Turn in Bloodtalon Matriarch to Xar'Ti in Sen'jin Village.",
            complete = QuestState(97223, "completed"),
            route = {
                Point(1411, 0.5520, 0.7540, "Xar'Ti",
                    "Travel to Xar'Ti."),
            },
        },
        {
            id = "woven-turnin-97281-a-simmering-storm",
            kind = "turnin",
            priority = 2210,
            conditions = {
                all = {
                    { level = { min = 11 } },
                    { quest = { id = 97281, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in A Simmering Storm to Rezlak if a thunder lizard dropped the Dull Stormy Orb.",
            complete = QuestState(97281, "completed"),
            route = {
                Point(1411, 0.4640, 0.2300, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "woven-accept-97282-stormy-potential",
            kind = "accept",
            priority = 2220,
            conditions = {
                all = {
                    { level = { min = 11 } },
                    { quest = { id = 97281, state = "completed" } },
                },
            },
            text = "Accept Stormy Potential from Rezlak.",
            complete = QuestState(97282, "activeOrCompleted"),
            route = {
                Point(1411, 0.4640, 0.2300, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "woven-objective-97282-stormy-potential",
            kind = "objective",
            priority = 2230,
            conditions = {
                all = {
                    { level = { min = 11 } },
                    { quest = { id = 97281, state = "completed" } },
                },
            },
            text = "Collect a Charged Thunder Lizard Organ from the thunder lizards on Thunder Ridge.",
            complete = QuestState(97282, "complete"),
            route = {
                Point(1411, 0.3920, 0.2840, "Thunder Lizard",
                    "Travel to Thunder Lizard."),
            },
        },
        {
            id = "woven-turnin-97282-stormy-potential",
            kind = "turnin",
            priority = 2240,
            conditions = {
                all = {
                    { level = { min = 11 } },
                    { quest = { id = 97281, state = "completed" } },
                },
            },
            text = "Turn in Stormy Potential to Rezlak.",
            complete = QuestState(97282, "completed"),
            route = {
                Point(1411, 0.4640, 0.2300, "Rezlak",
                    "Travel to Rezlak."),
            },
        },
        {
            id = "woven-accept-99048-a-missing-hand",
            kind = "accept",
            priority = 2250,
            conditions = { level = { min = 11 } },
            text = "Accept A Missing Hand from Orgnil Soulscar in Razor Hill.",
            complete = QuestState(99048, "activeOrCompleted"),
            route = {
                Point(1411, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "woven-turnin-99048-a-missing-hand",
            kind = "turnin",
            priority = 2260,
            conditions = { level = { min = 11 } },
            text = "Turn in A Missing Hand to Heglan Shadeeye, north of Tiragarde Keep.",
            complete = QuestState(99048, "completed"),
            route = {
                Point(1411, 0.5860, 0.4560, "Heglan Shadeeye",
                    "Travel to Heglan Shadeeye."),
            },
        },
        {
            id = "woven-accept-99049-threat-from-below",
            kind = "accept",
            priority = 2270,
            conditions = { level = { min = 11 } },
            text = "Accept Threat from Below from Heglan Shadeeye.",
            complete = QuestState(99049, "activeOrCompleted"),
            route = {
                Point(1411, 0.5860, 0.4560, "Heglan Shadeeye",
                    "Travel to Heglan Shadeeye."),
            },
        },
        {
            id = "woven-objective-99049-threat-from-below",
            kind = "objective",
            priority = 2280,
            conditions = { level = { min = 11 } },
            useClientPin = true,
            text = "Collect the Orcish Dagger, Banner Scrap, and Broken Bone Trident on the destroyed ground north of Tiragarde Keep. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(99049, "complete"),
            route = {
                Point(1411, 0.5860, 0.4560, "Skirmish site",
                    "Travel to Skirmish site."),
            },
        },
        {
            id = "woven-turnin-99049-threat-from-below",
            kind = "turnin",
            priority = 2290,
            conditions = { level = { min = 11 } },
            text = "Turn in Threat from Below to Orgnil Soulscar in Razor Hill.",
            complete = QuestState(99049, "completed"),
            route = {
                Point(1411, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "woven-accept-99051-threat-from-below",
            kind = "accept",
            priority = 2300,
            conditions = { level = { min = 11 } },
            text = "Accept the next Threat from Below from Orgnil Soulscar.",
            complete = QuestState(99051, "activeOrCompleted"),
            route = {
                Point(1411, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "woven-objective-99051-threat-from-below",
            kind = "objective",
            priority = 2310,
            conditions = { level = { min = 11 } },
            text = "Collect 9 Naga Spinefins from Spitelash naga on the north coast.",
            complete = QuestState(99051, "complete"),
            route = {
                Point(1411, 0.5900, 0.2380, "Spitelash Scout",
                    "Travel to Spitelash Scout."),
            },
        },
        {
            id = "woven-turnin-99051-threat-from-below",
            kind = "turnin",
            priority = 2320,
            conditions = { level = { min = 11 } },
            text = "Turn in Threat from Below to Orgnil Soulscar in Razor Hill.",
            complete = QuestState(99051, "completed"),
            route = {
                Point(1411, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "woven-accept-99052-threat-from-below",
            kind = "accept",
            priority = 2330,
            conditions = { level = { min = 12 } },
            text = "Accept the next Threat from Below from Orgnil Soulscar. This is an elite. Bring a group.",
            complete = QuestState(99052, "activeOrCompleted"),
            route = {
                Point(1411, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "woven-objective-99052-threat-from-below",
            kind = "objective",
            priority = 2340,
            conditions = { level = { min = 12 } },
            text = "Kill Aggor the Young on the north coast and take Aggor's Belt. This is an elite. Bring a group.",
            complete = QuestState(99052, "complete"),
            route = {
                Point(1411, 0.5900, 0.1740, "Aggor the Young",
                    "Travel to Aggor the Young."),
            },
        },
        {
            id = "woven-turnin-99052-threat-from-below",
            kind = "turnin",
            priority = 2350,
            conditions = { level = { min = 12 } },
            text = "Turn in Threat from Below to Orgnil Soulscar in Razor Hill.",
            complete = QuestState(99052, "completed"),
            route = {
                Point(1411, 0.5220, 0.4320, "Orgnil Soulscar",
                    "Travel to Orgnil Soulscar."),
            },
        },
        {
            id = "woven-turnin-96877-halikors-hoof",
            kind = "turnin",
            priority = 2360,
            conditions = {
                all = {
                    { level = { min = 12 } },
                    { quest = { id = 96877, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Halikor's Hoof to Kamari if a thunder lizard dropped the hoof.",
            complete = QuestState(96877, "completed"),
            route = {
                Point(1454, 0.6300, 0.4500, "Kamari",
                    "Travel to Kamari."),
            },
        },
    },
})
