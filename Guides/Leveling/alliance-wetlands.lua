local _, ns = ...

-- Forever Casual spine: Wetlands (24-25)
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
    WETLANDS = 1437,
    STORMWIND_CITY = 1453,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-wetlands",
    title = "Wetlands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 24 } },
        },
    },
    goals = {
        {
            id = "accept-484-young-crocolisk-skins",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept Young Crocolisk Skins.",
            complete = QuestState(484, "activeOrCompleted"),
            route = {
                Point(1437, 0.0851, 0.5571, "Young Crocolisk Skins",
                    "Travel to Young Crocolisk Skins."),
            },
        },
        {
            id = "accept-279-claws-from-the-deep",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept Claws from the Deep.",
            complete = QuestState(279, "activeOrCompleted"),
            route = {
                Point(1437, 0.0831, 0.5853, "Claws from the Deep",
                    "Travel to Claws from the Deep."),
            },
        },
        {
            id = "turnin-968-the-powers-below",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Powers Below.",
            complete = QuestState(968, "completed"),
            route = {
                Point(1455, 0.5083, 0.0562, "The Powers Below",
                    "Travel to The Powers Below."),
            },
        },
        {
            id = "turnin-971-knowledge-in-the-deeps",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Knowledge in the Deeps.",
            complete = QuestState(971, "completed"),
            route = {
                Point(1455, 0.5083, 0.0562, "Knowledge in the Deeps",
                    "Travel to Knowledge in the Deeps."),
            },
        },
        {
            id = "accept-288-the-third-fleet",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Third Fleet.",
            complete = QuestState(288, "activeOrCompleted"),
            route = {
                Point(1437, 0.1089, 0.5967, "The Third Fleet",
                    "Travel to The Third Fleet."),
            },
        },
        {
            id = "accept-463-the-greenwarden",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Greenwarden.",
            complete = QuestState(463, "activeOrCompleted"),
            route = {
                Point(1437, 0.1089, 0.5967, "The Greenwarden",
                    "Travel to The Greenwarden."),
            },
        },
        {
            id = "turnin-942-the-absent-minded-prospector",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Absent Minded Prospector.",
            complete = QuestState(942, "completed"),
            route = {
                Point(1437, 0.1084, 0.6043, "The Absent Minded Prospector",
                    "Travel to The Absent Minded Prospector."),
            },
        },
        {
            id = "accept-943-the-absent-minded-prospector",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Absent Minded Prospector.",
            complete = QuestState(943, "activeOrCompleted"),
            route = {
                Point(1437, 0.1084, 0.6043, "The Absent Minded Prospector",
                    "Travel to The Absent Minded Prospector."),
            },
        },
        {
            id = "turnin-288-the-third-fleet",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Third Fleet.",
            complete = QuestState(288, "completed"),
            dependsOn = { "accept-288-the-third-fleet" },
            route = {
                Point(1437, 0.1089, 0.5967, "The Third Fleet",
                    "Travel to The Third Fleet."),
            },
        },
        {
            id = "accept-470-digging-through-the-ooze",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept Digging Through the Ooze.",
            complete = QuestState(470, "activeOrCompleted"),
            route = {
                Point(1437, 0.1180, 0.5799, "Digging Through the Ooze",
                    "Travel to Digging Through the Ooze."),
            },
        },
        {
            id = "accept-305-in-search-of-the-excavation-team",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept In Search of The Excavation Team.",
            complete = QuestState(305, "activeOrCompleted"),
            route = {
                Point(1437, 0.1150, 0.5214, "In Search of The Excavation Team",
                    "Travel to In Search of The Excavation Team."),
            },
        },
        {
            id = "objective-279-2-gobbler",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Kill Gobbler.",
            complete = QuestObjective(279, 2, "Gobbler"),
            dependsOn = { "accept-279-claws-from-the-deep" },
            route = {
                Point(1437, 0.1799, 0.4038, "Gobbler",
                    "Travel to Gobbler."),
            },
        },
        {
            id = "accept-294-ormer-s-revenge",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ormer's Revenge.",
            complete = QuestState(294, "activeOrCompleted"),
            route = {
                Point(1437, 0.3419, 0.4109, "Ormer's Revenge",
                    "Travel to Ormer's Revenge."),
            },
        },
        {
            id = "turnin-305-in-search-of-the-excavation-team",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in In Search of The Excavation Team.",
            complete = QuestState(305, "completed"),
            dependsOn = { "accept-305-in-search-of-the-excavation-team" },
            route = {
                Point(1437, 0.3891, 0.5234, "In Search of The Excavation Team",
                    "Travel to In Search of The Excavation Team."),
            },
        },
        {
            id = "accept-306-in-search-of-the-excavation-team",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept In Search of The Excavation Team.",
            complete = QuestState(306, "activeOrCompleted"),
            route = {
                Point(1437, 0.3891, 0.5234, "In Search of The Excavation Team",
                    "Travel to In Search of The Excavation Team."),
            },
        },
        {
            id = "objective-294-1-mottled-raptor",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Mottled Raptor.",
            complete = QuestObjective(294, 1, "Mottled Raptor"),
            dependsOn = { "accept-294-ormer-s-revenge" },
            route = {
                Point(1437, 0.3402, 0.4085, "Mottled Raptor",
                    "Travel to Mottled Raptor."),
            },
        },
        {
            id = "objective-294-2-mottled-screecher",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Mottled Screecher.",
            complete = QuestObjective(294, 2, "Mottled Screecher"),
            dependsOn = { "accept-294-ormer-s-revenge" },
            route = {
                Point(1437, 0.3402, 0.4085, "Mottled Screecher",
                    "Travel to Mottled Screecher."),
            },
        },
        {
            id = "turnin-294-ormer-s-revenge",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ormer's Revenge.",
            complete = QuestState(294, "completed"),
            dependsOn = { "accept-294-ormer-s-revenge", "objective-294-1-mottled-raptor", "objective-294-2-mottled-screecher" },
            route = {
                Point(1437, 0.3419, 0.4109, "Ormer's Revenge",
                    "Travel to Ormer's Revenge."),
            },
        },
        {
            id = "accept-469-daily-delivery",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept Daily Delivery.",
            complete = QuestState(469, "activeOrCompleted"),
            route = {
                Point(1437, 0.3402, 0.4085, "Daily Delivery",
                    "Travel to Daily Delivery."),
            },
        },
        {
            id = "turnin-463-the-greenwarden",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Greenwarden.",
            complete = QuestState(463, "completed"),
            dependsOn = { "accept-463-the-greenwarden" },
            route = {
                Point(1437, 0.5634, 0.4043, "The Greenwarden",
                    "Travel to The Greenwarden."),
            },
        },
        {
            id = "accept-276-tramping-paws",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept Tramping Paws.",
            complete = QuestState(276, "activeOrCompleted"),
            route = {
                Point(1437, 0.5634, 0.4043, "Tramping Paws",
                    "Travel to Tramping Paws."),
            },
        },
        {
            id = "objective-276-2-mosshide-mongrel",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Mosshide Mongrel.",
            complete = QuestObjective(276, 2, "Mosshide Mongrel"),
            dependsOn = { "accept-276-tramping-paws" },
            route = {
                Point(1437, 0.6040, 0.5820, "Mosshide Mongrel",
                    "Travel to Mosshide Mongrel."),
            },
        },
        {
            id = "turnin-276-tramping-paws",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Tramping Paws.",
            complete = QuestState(276, "completed"),
            dependsOn = { "accept-276-tramping-paws", "objective-276-2-mosshide-mongrel" },
            route = {
                Point(1437, 0.5634, 0.4043, "Tramping Paws",
                    "Travel to Tramping Paws."),
            },
        },
        {
            id = "accept-277-fire-taboo",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Fire Taboo.",
            complete = QuestState(277, "activeOrCompleted"),
            route = {
                Point(1437, 0.5634, 0.4043, "Fire Taboo",
                    "Travel to Fire Taboo."),
            },
        },
        {
            id = "objective-470-1-black-ooze",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Kill Black Ooze.",
            complete = QuestObjective(470, 1, "Black Ooze"),
            dependsOn = { "accept-470-digging-through-the-ooze" },
            route = {
                Point(1437, 0.4800, 0.2860, "Black Ooze",
                    "Travel to Black Ooze."),
            },
        },
        {
            id = "turnin-943-the-absent-minded-prospector",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Absent Minded Prospector.",
            complete = QuestState(943, "completed"),
            dependsOn = { "accept-943-the-absent-minded-prospector" },
            route = {
                Point(1437, 0.1084, 0.6043, "The Absent Minded Prospector",
                    "Travel to The Absent Minded Prospector."),
            },
        },
        {
            id = "turnin-470-digging-through-the-ooze",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Digging Through the Ooze.",
            complete = QuestState(470, "completed"),
            dependsOn = { "accept-470-digging-through-the-ooze", "objective-470-1-black-ooze" },
            route = {
                Point(1437, 0.1180, 0.5799, "Digging Through the Ooze",
                    "Travel to Digging Through the Ooze."),
            },
        },
        {
            id = "turnin-306-in-search-of-the-excavation-team",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in In Search of The Excavation Team.",
            complete = QuestState(306, "completed"),
            dependsOn = { "accept-306-in-search-of-the-excavation-team" },
            route = {
                Point(1437, 0.1150, 0.5214, "In Search of The Excavation Team",
                    "Travel to In Search of The Excavation Team."),
            },
        },
        {
            id = "turnin-484-young-crocolisk-skins",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Young Crocolisk Skins.",
            complete = QuestState(484, "completed"),
            dependsOn = { "accept-484-young-crocolisk-skins" },
            route = {
                Point(1437, 0.0851, 0.5571, "Young Crocolisk Skins",
                    "Travel to Young Crocolisk Skins."),
            },
        },
        {
            id = "turnin-469-daily-delivery",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Daily Delivery.",
            complete = QuestState(469, "completed"),
            dependsOn = { "accept-469-daily-delivery" },
            route = {
                Point(1437, 0.0851, 0.5571, "Daily Delivery",
                    "Travel to Daily Delivery."),
            },
        },
        {
            id = "turnin-279-claws-from-the-deep",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Claws from the Deep.",
            complete = QuestState(279, "completed"),
            dependsOn = { "accept-279-claws-from-the-deep", "objective-279-2-gobbler" },
            route = {
                Point(1437, 0.0831, 0.5853, "Claws from the Deep",
                    "Travel to Claws from the Deep."),
            },
        },
        {
            id = "objective-1073-1-elixir-of-minor-fortitude",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Collect 2 Elixir of Minor Fortitude.",
            complete = QuestObjective(1073, 1, "Elixir of Minor Fortitude"),
            route = {
                Point(1455, 0.2424, 0.7457, "Elixir of Minor Fortitude",
                    "Travel to Elixir of Minor Fortitude."),
            },
        },
        {
            id = "turnin-1072-an-old-colleague",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in An Old Colleague.",
            complete = QuestState(1072, "completed"),
            route = {
                Point(1455, 0.7209, 0.5188, "An Old Colleague",
                    "Travel to An Old Colleague."),
            },
        },
        {
            id = "accept-1073-ineptitude-chemicals-fun",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ineptitude + Chemicals = Fun.",
            complete = QuestState(1073, "activeOrCompleted"),
            route = {
                Point(1455, 0.7209, 0.5188, "Ineptitude + Chemicals = Fun",
                    "Travel to Ineptitude + Chemicals = Fun."),
            },
        },
        {
            id = "turnin-1073-ineptitude-chemicals-fun",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ineptitude + Chemicals = Fun.",
            complete = QuestState(1073, "completed"),
            dependsOn = { "accept-1073-ineptitude-chemicals-fun", "objective-1073-1-elixir-of-minor-fortitude" },
            route = {
                Point(1455, 0.7209, 0.5188, "Ineptitude + Chemicals = Fun",
                    "Travel to Ineptitude + Chemicals = Fun."),
            },
        },
        {
            id = "accept-1650-the-tome-of-valor",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Alliance" },
                { class = 2 },
            } },
            text = "Accept The Tome of Valor.",
            complete = QuestState(1650, "activeOrCompleted"),
            route = {
                Point(1453, 0.4305, 0.3448, "The Tome of Valor",
                    "Travel to The Tome of Valor."),
            },
        },
        {
            id = "accept-2360-mathias-and-the-defias",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { quest = { id = 2360, state = "notCompleted" } },
                { level = { min = 25 } },
                { faction = "Alliance" },
                { class = 4 },
            } },
            text = "Accept Mathias and the Defias.",
            complete = QuestState(2360, "activeOrCompleted"),
            route = {
                Point(1453, 0.7578, 0.5985, "Mathias and the Defias",
                    "Travel to Mathias and the Defias."),
            },
        },
        {
            id = "turnin-1075-a-scroll-from-mauren",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Scroll from Mauren.",
            complete = QuestState(1075, "completed"),
            route = {
                Point(1453, 0.4309, 0.8038, "A Scroll from Mauren",
                    "Travel to A Scroll from Mauren."),
            },
        },
        {
            id = "turnin-1738-heartswood",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Turn in Heartswood.",
            complete = QuestState(1738, "completed"),
            route = {
                Point(1453, 0.2916, 0.7415, "Heartswood",
                    "Travel to Heartswood."),
            },
        },
        {
            id = "accept-1739-the-binding",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Accept The Binding.",
            complete = QuestState(1739, "activeOrCompleted"),
            route = {
                Point(1453, 0.2916, 0.7415, "The Binding",
                    "Travel to The Binding."),
            },
        },
        {
            id = "objective-1739-1-heartswood-core",
            kind = "objective",
            priority = 410,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Use Heartswood Core.",
            complete = QuestObjective(1739, 1, "Heartswood Core"),
            dependsOn = { "accept-1739-the-binding" },
            route = {
                Point(1453, 0.2511, 0.7746, "Heartswood Core",
                    "Travel to Heartswood Core."),
            },
        },
        {
            id = "turnin-1739-the-binding",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Turn in The Binding.",
            complete = QuestState(1739, "completed"),
            dependsOn = { "accept-1739-the-binding", "objective-1739-1-heartswood-core" },
            route = {
                Point(1453, 0.2525, 0.7856, "The Binding",
                    "Travel to The Binding."),
            },
        },
        {
            id = "woven-accept-98197-spoils-of-war",
            kind = "accept",
            priority = 430,
            conditions = { level = { min = 22 } },
            text = "Accept Spoils of War from Valstag Ironjaw in Menethil Keep.",
            complete = QuestState(98197, "activeOrCompleted"),
            route = {
                Point(1437, 0.1000, 0.5680, "Valstag Ironjaw",
                    "Travel to Valstag Ironjaw."),
            },
        },
        {
            id = "woven-turnin-98461-unrequited-love",
            kind = "turnin",
            priority = 440,
            conditions = {
                all = {
                    { level = { min = 21 } },
                    { quest = { id = 98461, state = "active" } },
                },
            },
            text = "Turn in Unrequited Love to Tarrel Rockweaver in Menethil Harbor.",
            complete = QuestState(98461, "completed"),
            route = {
                Point(1437, 0.1147, 0.5220, "Tarrel Rockweaver",
                    "Travel to Tarrel Rockweaver."),
            },
        },
        {
            id = "woven-objective-98197-spoils-of-war",
            kind = "objective",
            priority = 450,
            conditions = { level = { min = 22 } },
            useClientPin = true,
            text = "Recover 6 Khaz Modan Timber and 30 Khaz Modan Iron from the water in Menethil Harbor. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(98197, "complete"),
            route = {
                Point(1437, 0.1000, 0.5680, "Menethil Harbor",
                    "Travel to Menethil Harbor."),
            },
        },
        {
            id = "woven-turnin-98197-spoils-of-war",
            kind = "turnin",
            priority = 460,
            conditions = { level = { min = 22 } },
            text = "Turn in Spoils of War to Valstag Ironjaw in Menethil Keep.",
            complete = QuestState(98197, "completed"),
            route = {
                Point(1437, 0.1000, 0.5680, "Valstag Ironjaw",
                    "Travel to Valstag Ironjaw."),
            },
        },
    },
})
