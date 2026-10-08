local _, ns = ...

-- Forever Casual spine: Winterspring & Felwood (54-56)
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
    TELDRASSIL = 1438,
    TANARIS = 1446,
    FELWOOD = 1448,
    UN_GORO_CRATER = 1449,
    WINTERSPRING = 1452,
    DARNASSUS = 1457,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-winterspring-and-felwood",
    title = "Winterspring & Felwood",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 54 } },
        },
    },
    goals = {
        {
            id = "objective-5882-1-deadwood-den-watcher",
            kind = "objective",
            priority = 10,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Kill Deadwood Den Watcher.",
            complete = QuestObjective(5882, 1, "Deadwood Den Watcher"),
            route = {
                Point(1448, 0.6240, 0.1260, "Deadwood Den Watcher",
                    "Travel to Deadwood Den Watcher."),
            },
        },
        {
            id = "turnin-5159-cleansed-water-returns-to-felwood",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
                { faction = "Alliance" },
            } },
            text = "Accept Dousing the Flames of Protection.",
            complete = QuestState(5165, "activeOrCompleted"),
            route = {
                Point(1448, 0.5121, 0.8211, "Dousing the Flames of Protection",
                    "Travel to Dousing the Flames of Protection."),
            },
        },
        {
            id = "turnin-4441-felbound-ancients",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Felbound Ancients.",
            complete = QuestState(4441, "completed"),
            route = {
                Point(1448, 0.5135, 0.8151, "Felbound Ancients",
                    "Travel to Felbound Ancients."),
            },
        },
        {
            id = "accept-4442-purified",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Purified!.",
            complete = QuestState(4442, "activeOrCompleted"),
            route = {
                Point(1448, 0.5135, 0.8151, "Purified!",
                    "Travel to Purified!."),
            },
        },
        {
            id = "turnin-4442-purified",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Purified!.",
            complete = QuestState(4442, "completed"),
            dependsOn = { "accept-4442-purified" },
            route = {
                Point(1448, 0.5135, 0.8151, "Purified!",
                    "Travel to Purified!."),
            },
        },
        {
            id = "accept-5882-salve-via-hunting",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Salve via Hunting.",
            complete = QuestState(5882, "activeOrCompleted"),
            route = {
                Point(1448, 0.5415, 0.8683, "Salve via Hunting",
                    "Travel to Salve via Hunting."),
            },
        },
        {
            id = "accept-5202-a-strange-red-key",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 90,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            id = "accept-8461-deadwood-of-the-north",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Deadwood of the North.",
            complete = QuestState(8461, "activeOrCompleted"),
            route = {
                Point(1448, 0.6477, 0.0813, "Deadwood of the North",
                    "Travel to Deadwood of the North."),
            },
        },
        {
            id = "turnin-8461-deadwood-of-the-north",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Deadwood of the North.",
            complete = QuestState(8461, "completed"),
            dependsOn = { "accept-8461-deadwood-of-the-north" },
            route = {
                Point(1448, 0.6477, 0.0813, "Deadwood of the North",
                    "Travel to Deadwood of the North."),
            },
        },
        {
            id = "accept-8465-speak-to-salfa",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Speak to Salfa.",
            complete = QuestState(8465, "activeOrCompleted"),
            route = {
                Point(1448, 0.6477, 0.0813, "Speak to Salfa",
                    "Travel to Speak to Salfa."),
            },
        },
        {
            id = "turnin-8465-speak-to-salfa",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            id = "turnin-3909-the-videre-elixir",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 150,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Meet at the Grave.",
            complete = QuestState(3912, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Meet at the Grave",
                    "Travel to Meet at the Grave."),
            },
        },
        {
            id = "turnin-980-the-new-springs",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The New Springs.",
            complete = QuestState(980, "completed"),
            route = {
                Point(1452, 0.3127, 0.4516, "The New Springs",
                    "Travel to The New Springs."),
            },
        },
        {
            id = "accept-5082-threat-of-the-winterfall",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Threat of the Winterfall.",
            complete = QuestState(5082, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Threat of the Winterfall",
                    "Travel to Threat of the Winterfall."),
            },
        },
        {
            id = "accept-5083-winterfall-firewater",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Winterfall Firewater.",
            complete = QuestState(5083, "activeOrCompleted"),
            route = {
                Point(1452, 0.3000, 0.3540, "Winterfall Firewater",
                    "Travel to Winterfall Firewater."),
            },
        },
        {
            id = "turnin-5082-threat-of-the-winterfall",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Threat of the Winterfall.",
            complete = QuestState(5082, "completed"),
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
            route = {
                Point(1452, 0.3127, 0.4516, "Threat of the Winterfall",
                    "Travel to Threat of the Winterfall."),
            },
        },
        {
            id = "turnin-5083-winterfall-firewater",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Winterfall Firewater.",
            complete = QuestState(5083, "completed"),
            dependsOn = { "accept-5083-winterfall-firewater" },
            route = {
                Point(1452, 0.3127, 0.4516, "Winterfall Firewater",
                    "Travel to Winterfall Firewater."),
            },
        },
        {
            id = "accept-5084-falling-to-corruption",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Falling to Corruption.",
            complete = QuestState(5084, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Falling to Corruption",
                    "Travel to Falling to Corruption."),
            },
        },
        {
            id = "turnin-5084-falling-to-corruption",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Falling to Corruption.",
            complete = QuestState(5084, "completed"),
            dependsOn = { "accept-5084-falling-to-corruption" },
            route = {
                Point(1448, 0.6020, 0.0587, "Falling to Corruption",
                    "Travel to Falling to Corruption."),
            },
        },
        {
            id = "accept-5085-mystery-goo",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Mystery Goo.",
            complete = QuestState(5085, "activeOrCompleted"),
            route = {
                Point(1448, 0.6020, 0.0587, "Mystery Goo",
                    "Travel to Mystery Goo."),
            },
        },
        {
            id = "turnin-5085-mystery-goo",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
                { faction = "Alliance" },
            } },
            text = "Accept Toxic Horrors.",
            complete = QuestState(5086, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Toxic Horrors",
                    "Travel to Toxic Horrors."),
            },
        },
        {
            id = "objective-3912-1-videre-elixir",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 270,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 280,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 290,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 300,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Linken's Sword.",
            complete = QuestState(3914, "activeOrCompleted"),
            route = {
                Point(1446, 0.5382, 0.2906, "Linken's Sword",
                    "Travel to Linken's Sword."),
            },
        },
        {
            id = "turnin-3914-linken-s-sword",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 320,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 330,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 340,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Linken's Memory.",
            complete = QuestState(3942, "activeOrCompleted"),
            route = {
                Point(1449, 0.4192, 0.0270, "Linken's Memory",
                    "Travel to Linken's Memory."),
            },
        },
        {
            id = "turnin-5165-dousing-the-flames-of-protection",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Dousing the Flames of Protection.",
            complete = QuestState(5165, "completed"),
            dependsOn = { "accept-5165-dousing-the-flames-of-protection" },
            route = {
                Point(1449, 0.4347, 0.0679, "Dousing the Flames of Protection",
                    "Travel to Dousing the Flames of Protection."),
            },
        },
        {
            id = "turnin-3942-linken-s-memory",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 370,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
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
            priority = 380,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
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
            id = "turnin-5086-toxic-horrors",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            priority = 400,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Winterfall Runners.",
            complete = QuestState(5087, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Winterfall Runners",
                    "Travel to Winterfall Runners."),
            },
        },
        {
            id = "accept-4842-strange-sources",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Strange Sources.",
            complete = QuestState(4842, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Strange Sources",
                    "Travel to Strange Sources."),
            },
        },
        {
            id = "objective-5087-1-winterfall-runner",
            kind = "objective",
            priority = 420,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Kill Winterfall Runner.",
            complete = QuestObjective(5087, 1, "Winterfall Runner"),
            dependsOn = { "accept-5087-winterfall-runners" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-5250-starfall",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Starfall.",
            complete = QuestState(5250, "completed"),
            route = {
                Point(1452, 0.5197, 0.3039, "Starfall",
                    "Travel to Starfall."),
            },
        },
        {
            id = "accept-5244-the-ruins-of-kel-theril",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Ruins of Kel'Theril.",
            complete = QuestState(5244, "activeOrCompleted"),
            route = {
                Point(1452, 0.5197, 0.3039, "The Ruins of Kel'Theril",
                    "Travel to The Ruins of Kel'Theril."),
            },
        },
        {
            id = "turnin-5244-the-ruins-of-kel-theril",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Ruins of Kel'Theril.",
            complete = QuestState(5244, "completed"),
            dependsOn = { "accept-5244-the-ruins-of-kel-theril" },
            route = {
                Point(1452, 0.5214, 0.3043, "The Ruins of Kel'Theril",
                    "Travel to The Ruins of Kel'Theril."),
            },
        },
        {
            id = "accept-5245-troubled-spirits-of-kel-theril",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Troubled Spirits of Kel'Theril.",
            complete = QuestState(5245, "activeOrCompleted"),
            route = {
                Point(1452, 0.5214, 0.3043, "Troubled Spirits of Kel'Theril",
                    "Travel to Troubled Spirits of Kel'Theril."),
            },
        },
        {
            id = "accept-4861-enraged-wildkin",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Enraged Wildkin.",
            complete = QuestState(4861, "activeOrCompleted"),
            route = {
                Point(1452, 0.5214, 0.3043, "Enraged Wildkin",
                    "Travel to Enraged Wildkin."),
            },
        },
        {
            id = "accept-6028-the-everlook-report",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Everlook Report.",
            complete = QuestState(6028, "activeOrCompleted"),
            route = {
                Point(1452, 0.6135, 0.3897, "The Everlook Report",
                    "Travel to The Everlook Report."),
            },
        },
        {
            id = "accept-6030-duke-nicholas-zverenhoff",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Duke Nicholas Zverenhoff.",
            complete = QuestState(6030, "activeOrCompleted"),
            route = {
                Point(1452, 0.6135, 0.3897, "Duke Nicholas Zverenhoff",
                    "Travel to Duke Nicholas Zverenhoff."),
            },
        },
        {
            id = "turnin-4861-enraged-wildkin",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Enraged Wildkin.",
            complete = QuestState(4861, "completed"),
            dependsOn = { "accept-4861-enraged-wildkin" },
            route = {
                Point(1452, 0.5900, 0.5978, "Enraged Wildkin",
                    "Travel to Enraged Wildkin."),
            },
        },
        {
            id = "accept-4863-enraged-wildkin",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Enraged Wildkin.",
            complete = QuestState(4863, "activeOrCompleted"),
            route = {
                Point(1452, 0.5900, 0.5978, "Enraged Wildkin",
                    "Travel to Enraged Wildkin."),
            },
        },
        {
            id = "turnin-4863-enraged-wildkin",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Enraged Wildkin.",
            complete = QuestState(4863, "completed"),
            dependsOn = { "accept-4863-enraged-wildkin" },
            route = {
                Point(1452, 0.6141, 0.6068, "Enraged Wildkin",
                    "Travel to Enraged Wildkin."),
            },
        },
        {
            id = "accept-4864-enraged-wildkin",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Enraged Wildkin.",
            complete = QuestState(4864, "activeOrCompleted"),
            route = {
                Point(1452, 0.6141, 0.6068, "Enraged Wildkin",
                    "Travel to Enraged Wildkin."),
            },
        },
        {
            id = "turnin-979-find-ranshalla",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Find Ranshalla.",
            complete = QuestState(979, "completed"),
            route = {
                Point(1452, 0.6307, 0.5947, "Find Ranshalla",
                    "Travel to Find Ranshalla."),
            },
        },
        {
            id = "accept-4901-guardians-of-the-altar",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Guardians of the Altar.",
            complete = QuestState(4901, "activeOrCompleted"),
            route = {
                Point(1452, 0.6307, 0.5947, "Guardians of the Altar",
                    "Travel to Guardians of the Altar."),
            },
        },
        {
            id = "turnin-4864-enraged-wildkin",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Enraged Wildkin.",
            complete = QuestState(4864, "completed"),
            dependsOn = { "accept-4864-enraged-wildkin" },
            route = {
                Point(1452, 0.5214, 0.3043, "Enraged Wildkin",
                    "Travel to Enraged Wildkin."),
            },
        },
        {
            id = "turnin-4842-strange-sources",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
            id = "turnin-5087-winterfall-runners",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
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
                { faction = "Alliance" },
            } },
            text = "Accept Winterfall Activity.",
            complete = QuestState(8464, "activeOrCompleted"),
            route = {
                Point(1452, 0.2774, 0.3450, "Winterfall Activity",
                    "Travel to Winterfall Activity."),
            },
        },
        {
            id = "accept-8470-deadwood-ritual-totem",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Accept Deadwood Ritual Totem.",
            complete = QuestState(8470, "activeOrCompleted"),
            route = {
                Point(1448, 0.6360, 0.0960, "Deadwood Ritual Totem",
                    "Travel to Deadwood Ritual Totem."),
            },
        },
        {
            id = "accept-8467-feathers-for-nafien",
            kind = "accept",
            priority = 610,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Accept Feathers for Nafien.",
            complete = QuestState(8467, "activeOrCompleted"),
            route = {
                Point(1448, 0.6477, 0.0813, "Feathers for Nafien",
                    "Travel to Feathers for Nafien."),
            },
        },
        {
            id = "accept-8471-winterfall-ritual-totem",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Use the Winterfall Ritual Totem to accept Winterfall Ritual Totem.",
            complete = QuestState(8471, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-8470-deadwood-ritual-totem",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
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
            id = "turnin-8471-winterfall-ritual-totem",
            kind = "turnin",
            priority = 640,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Winterfall Ritual Totem.",
            complete = QuestState(8471, "completed"),
            dependsOn = { "accept-8471-winterfall-ritual-totem" },
            route = {
                Point(1448, 0.6549, 0.0348, "Winterfall Ritual Totem",
                    "Travel to Winterfall Ritual Totem."),
            },
        },
        {
            id = "turnin-4901-guardians-of-the-altar",
            kind = "turnin",
            priority = 650,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Guardians of the Altar.",
            complete = QuestState(4901, "completed"),
            dependsOn = { "accept-4901-guardians-of-the-altar" },
            route = {
                Point(1438, 0.5550, 0.9205, "Guardians of the Altar",
                    "Travel to Guardians of the Altar."),
            },
        },
        {
            id = "accept-4902-wildkin-of-elune",
            kind = "accept",
            priority = 660,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Wildkin of Elune.",
            complete = QuestState(4902, "activeOrCompleted"),
            route = {
                Point(1438, 0.5550, 0.9205, "Wildkin of Elune",
                    "Travel to Wildkin of Elune."),
            },
        },
        {
            id = "objective-4512-1-filled-cursed-ooze-jar",
            kind = "objective",
            priority = 670,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Collect 6 Filled Cursed Ooze Jar.",
            complete = QuestObjective(4512, 1, "Filled Cursed Ooze Jar"),
            route = {
                Point(1457, 0.3960, 0.4199, "Filled Cursed Ooze Jar",
                    "Travel to Filled Cursed Ooze Jar."),
            },
        },
        {
            id = "turnin-4902-wildkin-of-elune",
            kind = "turnin",
            priority = 680,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Wildkin of Elune.",
            complete = QuestState(4902, "completed"),
            dependsOn = { "accept-4902-wildkin-of-elune" },
            route = {
                Point(1457, 0.3482, 0.0925, "Wildkin of Elune",
                    "Travel to Wildkin of Elune."),
            },
        },
    },
})
