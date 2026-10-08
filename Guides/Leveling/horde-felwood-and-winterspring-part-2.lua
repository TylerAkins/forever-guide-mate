local _, ns = ...

-- Forever Casual spine: Felwood & Winterspring (54-56)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves are applied in a separate pass.
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
    THE_HINTERLANDS = 1425,
    TANARIS = 1446,
    FELWOOD = 1448,
    UN_GORO_CRATER = 1449,
    WINTERSPRING = 1452,
    ORGRIMMAR = 1454,
    UNDERCITY = 1458,
}

ns:RegisterGuide({
    id = "leveling-era-horde-felwood-and-winterspring-part-2",
    title = "Felwood & Winterspring",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 54 } },
        },
    },
    goals = {
        {
            id = "accept-4506-corrupted-sabers",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Corrupted Sabers.",
            complete = QuestState(4506, "activeOrCompleted"),
            route = {
                Point(1448, 0.3421, 0.5234, "Corrupted Sabers",
                    "Travel to Corrupted Sabers."),
            },
        },
        {
            id = "turnin-5159-cleansed-water-returns-to-felwood",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Cleansed Water Returns to Felwood.",
            complete = QuestState(5159, "completed"),
            route = {
                Point(1448, 0.5121, 0.8211, "Cleansed Water Returns to Felwood",
                    "Travel to Cleansed Water Returns to Felwood."),
            },
        },
        {
            id = "accept-5165-dousing-the-flames-of-protection",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Dousing the Flames of Protection.",
            complete = QuestState(5165, "activeOrCompleted"),
            route = {
                Point(1448, 0.5121, 0.8211, "Dousing the Flames of Protection",
                    "Travel to Dousing the Flames of Protection."),
            },
        },
        {
            id = "objective-5887-1-deadwood-warrior",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill Deadwood Warrior.",
            complete = QuestObjective(5887, 1, "Deadwood Warrior"),
            route = {
                Point(1448, 0.4840, 0.8920, "Deadwood Warrior",
                    "Travel to Deadwood Warrior."),
            },
        },
        {
            id = "accept-5887-salve-via-hunting",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Salve via Hunting.",
            complete = QuestState(5887, "activeOrCompleted"),
            route = {
                Point(1448, 0.4672, 0.8307, "Salve via Hunting",
                    "Travel to Salve via Hunting."),
            },
        },
        {
            id = "accept-5202-a-strange-red-key",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept A Strange Red Key.",
            complete = QuestState(5202, "activeOrCompleted"),
            route = {
                Point(1448, 0.3621, 0.5550, "A Strange Red Key",
                    "Travel to A Strange Red Key."),
            },
        },
        {
            id = "turnin-5202-a-strange-red-key",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Strange Red Key.",
            complete = QuestState(5202, "completed"),
            dependsOn = { "accept-5202-a-strange-red-key" },
            route = {
                Point(1448, 0.3621, 0.5550, "A Strange Red Key",
                    "Travel to A Strange Red Key."),
            },
        },
        {
            id = "turnin-4506-corrupted-sabers",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Corrupted Sabers.",
            complete = QuestState(4506, "completed"),
            dependsOn = { "accept-4506-corrupted-sabers" },
            route = {
                Point(1448, 0.3421, 0.5234, "Corrupted Sabers",
                    "Travel to Corrupted Sabers."),
            },
        },
        {
            id = "accept-4521-wild-guardians",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Wild Guardians.",
            complete = QuestState(4521, "activeOrCompleted"),
            route = {
                Point(1448, 0.3473, 0.5279, "Wild Guardians",
                    "Travel to Wild Guardians."),
            },
        },
        {
            id = "accept-8461-deadwood-of-the-north",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Deadwood of the North.",
            complete = QuestState(8461, "activeOrCompleted"),
            route = {
                Point(1448, 0.6477, 0.0813, "Deadwood of the North",
                    "Travel to Deadwood of the North."),
            },
        },
        {
            id = "objective-8461-1-deadwood-den-watcher",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Deadwood Den Watcher.",
            complete = QuestObjective(8461, 1, "Deadwood Den Watcher"),
            dependsOn = { "accept-8461-deadwood-of-the-north" },
            route = {
                Point(1448, 0.6360, 0.0960, "Deadwood Den Watcher",
                    "Travel to Deadwood Den Watcher."),
            },
        },
        {
            id = "objective-8461-2-deadwood-avenger",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Deadwood Avenger.",
            complete = QuestObjective(8461, 2, "Deadwood Avenger"),
            dependsOn = { "accept-8461-deadwood-of-the-north" },
            route = {
                Point(1448, 0.6360, 0.0960, "Deadwood Avenger",
                    "Travel to Deadwood Avenger."),
            },
        },
        {
            id = "objective-8461-3-deadwood-shaman",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Deadwood Shaman.",
            complete = QuestObjective(8461, 3, "Deadwood Shaman"),
            dependsOn = { "accept-8461-deadwood-of-the-north" },
            route = {
                Point(1448, 0.6360, 0.0960, "Deadwood Shaman",
                    "Travel to Deadwood Shaman."),
            },
        },
        {
            id = "turnin-5084-falling-to-corruption",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Falling to Corruption.",
            complete = QuestState(5084, "completed"),
            route = {
                Point(1448, 0.6020, 0.0587, "Falling to Corruption",
                    "Travel to Falling to Corruption."),
            },
        },
        {
            id = "accept-5085-mystery-goo",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Mystery Goo.",
            complete = QuestState(5085, "activeOrCompleted"),
            route = {
                Point(1448, 0.6020, 0.0587, "Mystery Goo",
                    "Travel to Mystery Goo."),
            },
        },
        {
            id = "turnin-8461-deadwood-of-the-north",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Deadwood of the North.",
            complete = QuestState(8461, "completed"),
            dependsOn = { "accept-8461-deadwood-of-the-north", "objective-8461-1-deadwood-den-watcher", "objective-8461-2-deadwood-avenger", "objective-8461-3-deadwood-shaman" },
            route = {
                Point(1448, 0.6477, 0.0813, "Deadwood of the North",
                    "Travel to Deadwood of the North."),
            },
        },
        {
            id = "accept-8465-speak-to-salfa",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Speak to Salfa.",
            complete = QuestState(8465, "activeOrCompleted"),
            route = {
                Point(1448, 0.6477, 0.0813, "Speak to Salfa",
                    "Travel to Speak to Salfa."),
            },
        },
        {
            id = "accept-8467-feathers-for-nafien",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Feathers for Nafien.",
            complete = QuestState(8467, "activeOrCompleted"),
            route = {
                Point(1448, 0.6477, 0.0813, "Feathers for Nafien",
                    "Travel to Feathers for Nafien."),
            },
        },
        {
            id = "turnin-8465-speak-to-salfa",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Speak to Salfa.",
            complete = QuestState(8465, "completed"),
            dependsOn = { "accept-8465-speak-to-salfa" },
            route = {
                Point(1452, 0.2774, 0.3450, "Speak to Salfa",
                    "Travel to Speak to Salfa."),
            },
        },
        {
            id = "turnin-980-the-new-springs",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in The New Springs.",
            complete = QuestState(980, "completed"),
            route = {
                Point(1452, 0.3127, 0.4516, "The New Springs",
                    "Travel to The New Springs."),
            },
        },
        {
            id = "accept-4842-strange-sources",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Strange Sources.",
            complete = QuestState(4842, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Strange Sources",
                    "Travel to Strange Sources."),
            },
        },
        {
            id = "turnin-3909-the-videre-elixir",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Videre Elixir.",
            complete = QuestState(3909, "completed"),
            route = {
                Point(1452, 0.3127, 0.4516, "The Videre Elixir",
                    "Travel to The Videre Elixir."),
            },
        },
        {
            id = "accept-3912-meet-at-the-grave",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Meet at the Grave.",
            complete = QuestState(3912, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Meet at the Grave",
                    "Travel to Meet at the Grave."),
            },
        },
        {
            id = "turnin-5085-mystery-goo",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Mystery Goo.",
            complete = QuestState(5085, "completed"),
            dependsOn = { "accept-5085-mystery-goo" },
            route = {
                Point(1452, 0.3127, 0.4516, "Mystery Goo",
                    "Travel to Mystery Goo."),
            },
        },
        {
            id = "accept-5086-toxic-horrors",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Toxic Horrors.",
            complete = QuestState(5086, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Toxic Horrors",
                    "Travel to Toxic Horrors."),
            },
        },
        {
            id = "objective-4521-2-ragged-owlbeast",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill 15 Ragged Owlbeast.",
            complete = QuestObjective(4521, 2, "Ragged Owlbeast"),
            dependsOn = { "accept-4521-wild-guardians" },
            route = {
                Point(1452, 0.2900, 0.4440, "Ragged Owlbeast",
                    "Travel to Ragged Owlbeast."),
            },
        },
        {
            id = "accept-3783-are-we-there-yeti",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Are We There, Yeti?.",
            complete = QuestState(3783, "activeOrCompleted"),
            route = {
                Point(1452, 0.6088, 0.3762, "Are We There, Yeti?",
                    "Travel to Are We There, Yeti?."),
            },
        },
        {
            id = "objective-4521-1-raging-owlbeast",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill 15 Raging Owlbeast.",
            complete = QuestObjective(4521, 1, "Raging Owlbeast"),
            dependsOn = { "accept-4521-wild-guardians" },
            route = {
                Point(1452, 0.5940, 0.3140, "Raging Owlbeast",
                    "Travel to Raging Owlbeast."),
            },
        },
        {
            id = "turnin-3783-are-we-there-yeti",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Are We There, Yeti?.",
            complete = QuestState(3783, "completed"),
            dependsOn = { "accept-3783-are-we-there-yeti" },
            route = {
                Point(1452, 0.6088, 0.3762, "Are We There, Yeti?",
                    "Travel to Are We There, Yeti?."),
            },
        },
        {
            id = "turnin-4809-chillwind-horns",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Chillwind Horns.",
            complete = QuestState(4809, "completed"),
            route = {
                Point(1452, 0.6163, 0.3861, "Chillwind Horns",
                    "Travel to Chillwind Horns."),
            },
        },
        {
            id = "turnin-4521-wild-guardians",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Wild Guardians.",
            complete = QuestState(4521, "completed"),
            dependsOn = { "accept-4521-wild-guardians", "objective-4521-2-ragged-owlbeast", "objective-4521-1-raging-owlbeast" },
            route = {
                Point(1448, 0.3473, 0.5279, "Wild Guardians",
                    "Travel to Wild Guardians."),
            },
        },
        {
            id = "accept-4741-wild-guardians",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Wild Guardians.",
            complete = QuestState(4741, "activeOrCompleted"),
            route = {
                Point(1448, 0.3473, 0.5279, "Wild Guardians",
                    "Travel to Wild Guardians."),
            },
        },
        {
            id = "objective-3912-1-videre-elixir",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Use Videre Elixir.",
            complete = QuestObjective(3912, 1, "Videre Elixir"),
            dependsOn = { "accept-3912-meet-at-the-grave" },
            route = {
                Point(1446, 0.5403, 0.2873, "Videre Elixir",
                    "Travel to Videre Elixir."),
            },
        },
        {
            id = "turnin-3912-meet-at-the-grave",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Meet at the Grave.",
            complete = QuestState(3912, "completed"),
            dependsOn = { "accept-3912-meet-at-the-grave", "objective-3912-1-videre-elixir" },
            route = {
                Point(1446, 0.5398, 0.2339, "Meet at the Grave",
                    "Travel to Meet at the Grave."),
            },
        },
        {
            id = "accept-3913-a-grave-situation",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept A Grave Situation.",
            complete = QuestState(3913, "activeOrCompleted"),
            route = {
                Point(1446, 0.5398, 0.2339, "A Grave Situation",
                    "Travel to A Grave Situation."),
            },
        },
        {
            id = "turnin-3913-a-grave-situation",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Grave Situation.",
            complete = QuestState(3913, "completed"),
            dependsOn = { "accept-3913-a-grave-situation" },
            route = {
                Point(1446, 0.5382, 0.2906, "A Grave Situation",
                    "Travel to A Grave Situation."),
            },
        },
        {
            id = "accept-3914-linken-s-sword",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Linken's Sword.",
            complete = QuestState(3914, "activeOrCompleted"),
            route = {
                Point(1446, 0.5382, 0.2906, "Linken's Sword",
                    "Travel to Linken's Sword."),
            },
        },
        {
            id = "accept-4504-super-sticky",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Super Sticky.",
            complete = QuestState(4504, "activeOrCompleted"),
            route = {
                Point(1446, 0.5157, 0.2676, "Super Sticky",
                    "Travel to Super Sticky."),
            },
        },
        {
            id = "turnin-3914-linken-s-sword",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Linken's Sword.",
            complete = QuestState(3914, "completed"),
            dependsOn = { "accept-3914-linken-s-sword" },
            route = {
                Point(1449, 0.4466, 0.0810, "Linken's Sword",
                    "Travel to Linken's Sword."),
            },
        },
        {
            id = "accept-3941-a-gnome-s-assistance",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept A Gnome's Assistance.",
            complete = QuestState(3941, "activeOrCompleted"),
            route = {
                Point(1449, 0.4466, 0.0810, "A Gnome's Assistance",
                    "Travel to A Gnome's Assistance."),
            },
        },
        {
            id = "turnin-3941-a-gnome-s-assistance",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Gnome's Assistance.",
            complete = QuestState(3941, "completed"),
            dependsOn = { "accept-3941-a-gnome-s-assistance" },
            route = {
                Point(1449, 0.4347, 0.0679, "A Gnome's Assistance",
                    "Travel to A Gnome's Assistance."),
            },
        },
        {
            id = "accept-3942-linken-s-memory",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Linken's Memory.",
            complete = QuestState(3942, "activeOrCompleted"),
            route = {
                Point(1449, 0.4192, 0.0270, "Linken's Memory",
                    "Travel to Linken's Memory."),
            },
        },
        {
            id = "objective-4504-1-tar-beast",
            kind = "objective",
            priority = 430,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill Tar Beast.",
            complete = QuestObjective(4504, 1, "Tar Beast"),
            dependsOn = { "accept-4504-super-sticky" },
            route = {
                Point(1449, 0.4347, 0.0679, "Tar Beast",
                    "Travel to Tar Beast."),
            },
        },
        {
            id = "turnin-4504-super-sticky",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Super Sticky.",
            complete = QuestState(4504, "completed"),
            dependsOn = { "accept-4504-super-sticky", "objective-4504-1-tar-beast" },
            route = {
                Point(1446, 0.5157, 0.2676, "Super Sticky",
                    "Travel to Super Sticky."),
            },
        },
        {
            id = "accept-6029-the-everlook-report",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept The Everlook Report.",
            complete = QuestState(6029, "activeOrCompleted"),
            route = {
                Point(1452, 0.6135, 0.3897, "The Everlook Report",
                    "Travel to The Everlook Report."),
            },
        },
        {
            id = "accept-6030-duke-nicholas-zverenhoff",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Duke Nicholas Zverenhoff.",
            complete = QuestState(6030, "activeOrCompleted"),
            route = {
                Point(1452, 0.6135, 0.3897, "Duke Nicholas Zverenhoff",
                    "Travel to Duke Nicholas Zverenhoff."),
            },
        },
        {
            id = "accept-5601-sister-pamela",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Sister Pamela.",
            complete = QuestState(5601, "activeOrCompleted"),
            route = {
                Point(1452, 0.6128, 0.3898, "Sister Pamela",
                    "Travel to Sister Pamela."),
            },
        },
        {
            id = "turnin-5165-dousing-the-flames-of-protection",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Dousing the Flames of Protection.",
            complete = QuestState(5165, "completed"),
            dependsOn = { "accept-5165-dousing-the-flames-of-protection" },
            route = {
                Point(1448, 0.5121, 0.8211, "Dousing the Flames of Protection",
                    "Travel to Dousing the Flames of Protection."),
            },
        },
        {
            id = "turnin-3942-linken-s-memory",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Linken's Memory.",
            complete = QuestState(3942, "completed"),
            dependsOn = { "accept-3942-linken-s-memory" },
            route = {
                Point(1448, 0.5135, 0.8151, "Linken's Memory",
                    "Travel to Linken's Memory."),
            },
        },
        {
            id = "accept-4084-silver-heart",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Silver Heart.",
            complete = QuestState(4084, "activeOrCompleted"),
            route = {
                Point(1448, 0.5135, 0.8151, "Silver Heart",
                    "Travel to Silver Heart."),
            },
        },
        {
            id = "objective-4084-2-irontree-stomper",
            kind = "objective",
            priority = 510,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Kill Irontree Stomper.",
            complete = QuestObjective(4084, 2, "Irontree Stomper"),
            dependsOn = { "accept-4084-silver-heart" },
            route = {
                Point(1448, 0.4520, 0.2340, "Irontree Stomper",
                    "Travel to Irontree Stomper."),
            },
        },
        {
            id = "accept-8470-deadwood-ritual-totem",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Deadwood Ritual Totem.",
            complete = QuestState(8470, "activeOrCompleted"),
            route = {
                Point(1448, 0.6360, 0.0960, "Deadwood Ritual Totem",
                    "Travel to Deadwood Ritual Totem."),
            },
        },
        {
            id = "turnin-8470-deadwood-ritual-totem",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Deadwood Ritual Totem.",
            complete = QuestState(8470, "completed"),
            dependsOn = { "accept-8470-deadwood-ritual-totem" },
            route = {
                Point(1448, 0.6549, 0.0348, "Deadwood Ritual Totem",
                    "Travel to Deadwood Ritual Totem."),
            },
        },
        {
            id = "turnin-4842-strange-sources",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Strange Sources.",
            complete = QuestState(4842, "completed"),
            dependsOn = { "accept-4842-strange-sources" },
            route = {
                Point(1452, 0.3127, 0.4516, "Strange Sources",
                    "Travel to Strange Sources."),
            },
        },
        {
            id = "turnin-5086-toxic-horrors",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Toxic Horrors.",
            complete = QuestState(5086, "completed"),
            dependsOn = { "accept-5086-toxic-horrors" },
            route = {
                Point(1452, 0.3127, 0.4516, "Toxic Horrors",
                    "Travel to Toxic Horrors."),
            },
        },
        {
            id = "accept-5087-winterfall-runners",
            kind = "accept",
            priority = 560,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Winterfall Runners.",
            complete = QuestState(5087, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Winterfall Runners",
                    "Travel to Winterfall Runners."),
            },
        },
        {
            id = "objective-5087-1-winterfall-runner",
            kind = "objective",
            priority = 570,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill Winterfall Runner.",
            complete = QuestObjective(5087, 1, "Winterfall Runner"),
            dependsOn = { "accept-5087-winterfall-runners" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-5087-winterfall-runners",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Winterfall Runners.",
            complete = QuestState(5087, "completed"),
            dependsOn = { "accept-5087-winterfall-runners", "objective-5087-1-winterfall-runner" },
            route = {
                Point(1452, 0.3127, 0.4516, "Winterfall Runners",
                    "Travel to Winterfall Runners."),
            },
        },
        {
            id = "accept-8464-winterfall-activity",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Winterfall Activity.",
            complete = QuestState(8464, "activeOrCompleted"),
            route = {
                Point(1452, 0.2774, 0.3450, "Winterfall Activity",
                    "Travel to Winterfall Activity."),
            },
        },
        {
            id = "turnin-4084-silver-heart",
            kind = "turnin",
            priority = 600,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Silver Heart.",
            complete = QuestState(4084, "completed"),
            dependsOn = { "accept-4084-silver-heart", "objective-4084-2-irontree-stomper" },
            route = {
                Point(1448, 0.5135, 0.8151, "Silver Heart",
                    "Travel to Silver Heart."),
            },
        },
        {
            id = "accept-4005-aquementas",
            kind = "accept",
            priority = 610,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Aquementas.",
            complete = QuestState(4005, "activeOrCompleted"),
            route = {
                Point(1448, 0.5135, 0.8151, "Aquementas",
                    "Travel to Aquementas."),
            },
        },
        {
            id = "turnin-3507-betrayed",
            kind = "turnin",
            priority = 620,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Betrayed.",
            complete = QuestState(3507, "completed"),
            route = {
                Point(1454, 0.7523, 0.3423, "Betrayed",
                    "Travel to Betrayed."),
            },
        },
        {
            id = "turnin-3542-delivery-to-andron-gant",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Delivery to Andron Gant.",
            complete = QuestState(3542, "completed"),
            route = {
                Point(1458, 0.5482, 0.7633, "Delivery to Andron Gant",
                    "Travel to Delivery to Andron Gant."),
            },
        },
        {
            id = "accept-3564-andron-s-payment-to-jediga",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Andron's Payment to Jediga.",
            complete = QuestState(3564, "activeOrCompleted"),
            route = {
                Point(1458, 0.5482, 0.7633, "Andron's Payment to Jediga",
                    "Travel to Andron's Payment to Jediga."),
            },
        },
        {
            id = "turnin-3568-seeping-corruption",
            kind = "turnin",
            priority = 650,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Seeping Corruption.",
            complete = QuestState(3568, "completed"),
            route = {
                Point(1458, 0.5286, 0.7757, "Seeping Corruption",
                    "Travel to Seeping Corruption."),
            },
        },
        {
            id = "accept-3569-seeping-corruption",
            kind = "accept",
            priority = 660,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Seeping Corruption.",
            complete = QuestState(3569, "activeOrCompleted"),
            route = {
                Point(1458, 0.4869, 0.7141, "Seeping Corruption",
                    "Travel to Seeping Corruption."),
            },
        },
        {
            id = "turnin-3569-seeping-corruption",
            kind = "turnin",
            priority = 670,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Seeping Corruption.",
            complete = QuestState(3569, "completed"),
            dependsOn = { "accept-3569-seeping-corruption" },
            route = {
                Point(1458, 0.4903, 0.7083, "Seeping Corruption",
                    "Travel to Seeping Corruption."),
            },
        },
        {
            id = "accept-3570-seeping-corruption",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Seeping Corruption.",
            complete = QuestState(3570, "activeOrCompleted"),
            route = {
                Point(1458, 0.4871, 0.7140, "Seeping Corruption",
                    "Travel to Seeping Corruption."),
            },
        },
        {
            id = "accept-7816-gammerita-mon",
            kind = "accept",
            priority = 690,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Gammerita, Mon!.",
            complete = QuestState(7816, "activeOrCompleted"),
            route = {
                Point(1425, 0.8033, 0.8153, "Gammerita, Mon!",
                    "Travel to Gammerita, Mon!."),
            },
        },
        {
            id = "turnin-626-cortello-s-riddle",
            kind = "turnin",
            priority = 700,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Cortello's Riddle.",
            complete = QuestState(626, "completed"),
            route = {
                Point(1425, 0.8081, 0.4681, "Cortello's Riddle",
                    "Travel to Cortello's Riddle."),
            },
        },
        {
            id = "turnin-7816-gammerita-mon",
            kind = "turnin",
            priority = 710,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gammerita, Mon!.",
            complete = QuestState(7816, "completed"),
            dependsOn = { "accept-7816-gammerita-mon" },
            route = {
                Point(1425, 0.8033, 0.8153, "Gammerita, Mon!",
                    "Travel to Gammerita, Mon!."),
            },
        },
    },
})
