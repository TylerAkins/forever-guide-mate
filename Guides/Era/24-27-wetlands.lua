local _, ns = ...

-- Alliance Era leveling route for the Wetlands, levels 24-27.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    WETLANDS = 1437,
    IRONFORGE = 1455,
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
    id = "leveling-era-24-27-wetlands",
    title = "24-27 Wetlands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 24 } },
        },
    },
    goals = {
        {
            id = "accept-279-claws-from-the-deep",
            kind = "accept",
            priority = 20,
            text = "Accept Claws from the Deep from Karl Boran in Menethil Harbor.",
            complete = QuestState(279, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.0831, 0.5854, "Karl Boran",
                    "Travel to Karl Boran."),
            },
        },
        {
            id = "accept-484-young-crocolisk-skins",
            kind = "accept",
            priority = 30,
            text = "Accept Young Crocolisk Skins from James Halloran in Menethil Harbor.",
            complete = QuestState(484, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.0851, 0.5581, "James Halloran",
                    "Travel to James Halloran."),
            },
        },
        {
            id = "accept-288-the-third-fleet",
            kind = "accept",
            priority = 40,
            text = "Accept The Third Fleet from First Mate Fitzsimmons in Menethil Harbor.",
            complete = QuestState(288, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1091, 0.5953, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "accept-463-the-greenwarden",
            kind = "accept",
            priority = 50,
            text = "Accept The Greenwarden from First Mate Fitzsimmons in Menethil Harbor.",
            complete = QuestState(463, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1091, 0.5953, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "note-943-deepwater-tavern",
            kind = "note",
            priority = 60,
            text = "Set your hearth in Deepwater Tavern with Innkeeper Helbrek.",
            route = {
                Point(MAP.WETLANDS, 0.1070, 0.6090, "Innkeeper Helbrek",
                    "Travel to Innkeeper Helbrek."),
            },
        },
        {
            id = "objective-943-flagon-of-dwarven-mead",
            kind = "objective",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 942, state = "completed" } },
                },
            },
            text = "Buy Flagon of Dwarven Mead from Innkeeper Helbrek.",
            dependsOn = { "accept-943-the-absent-minded-prospector" },
            complete = QuestState(943, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.1070, 0.6090, "Innkeeper Helbrek",
                    "Travel to Innkeeper Helbrek."),
            },
        },
        {
            id = "accept-943-the-absent-minded-prospector",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { quest = { id = 942, state = "completed" } },
                },
            },
            text = "Accept The Absent Minded Prospector from Archaeologist Flagongut in Deepwater Tavern.",
            complete = QuestState(943, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1081, 0.6041, "Archaeologist Flagongut",
                    "Travel to Archaeologist Flagongut."),
            },
        },
        {
            id = "turnin-288-the-third-fleet",
            kind = "turnin",
            priority = 90,
            text = "Turn in The Third Fleet to First Mate Fitzsimmons in Menethil Harbor.",
            dependsOn = { "accept-288-the-third-fleet" },
            complete = QuestState(288, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1091, 0.5953, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "accept-289-the-cursed-crew",
            kind = "accept",
            priority = 100,
            text = "Accept The Cursed Crew from First Mate Fitzsimmons in Menethil Harbor.",
            complete = QuestState(289, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1091, 0.5953, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "accept-470-digging-through-the-ooze",
            kind = "accept",
            priority = 110,
            text = "Accept Digging Through the Ooze from Sida in Menethil Harbor.",
            complete = QuestState(470, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1174, 0.5797, "Sida",
                    "Travel to Sida."),
            },
        },
        {
            id = "accept-464-war-banners",
            kind = "accept",
            priority = 120,
            text = "Accept War Banners from Captain Stoutfist in Menethil Keep.",
            complete = QuestState(464, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.0990, 0.5743, "Captain Stoutfist",
                    "Travel to Captain Stoutfist."),
            },
        },
        {
            id = "accept-305-in-search-of-the-excavation-team",
            kind = "accept",
            priority = 130,
            text = "Accept In Search of The Excavation Team from Tarrel Rockweaver in Menethil Harbor.",
            complete = QuestState(305, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1147, 0.5220, "Tarrel Rockweaver",
                    "Travel to Tarrel Rockweaver."),
            },
        },
        {
            id = "objective-279-2-gobbler",
            kind = "objective",
            priority = 140,
            text = "Kill Gobbler and collect Gobbler's Head in Whelgar's Excavation Site.",
            dependsOn = { "accept-279-claws-from-the-deep" },
            complete = QuestObjective(279, 2),
            route = {
                Point(MAP.WETLANDS, 0.1798, 0.4049, "Gobbler",
                    "Travel to Gobbler."),
            },
        },
        {
            id = "objective-279-1-bluegill-murloc",
            kind = "objective",
            priority = 150,
            text = "Kill Bluegill Murloc in Whelgar's Excavation Site.",
            dependsOn = { "accept-279-claws-from-the-deep" },
            complete = QuestObjective(279, 1),
            route = {
                Point(MAP.WETLANDS, 0.1972, 0.4108, "Bluegill Murloc",
                    "Travel to Bluegill Murloc."),
            },
        },
        {
            id = "accept-294-ormer-s-revenge",
            kind = "accept",
            priority = 160,
            text = "Accept Ormer's Revenge from Ormer Ironbraid in Whelgar's Excavation Site.",
            complete = QuestState(294, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.3797, 0.5135, "Ormer Ironbraid",
                    "Travel to Ormer Ironbraid."),
            },
        },
        {
            id = "turnin-305-in-search-of-the-excavation-team",
            kind = "turnin",
            priority = 170,
            text = "Turn in In Search of The Excavation Team to Merrin Rockweaver in Whelgar's Excavation Site.",
            dependsOn = { "accept-305-in-search-of-the-excavation-team" },
            complete = QuestState(305, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.3889, 0.5234, "Merrin Rockweaver",
                    "Travel to Merrin Rockweaver."),
            },
        },
        {
            id = "accept-306-in-search-of-the-excavation-team",
            kind = "accept",
            priority = 180,
            text = "Accept In Search of The Excavation Team from Merrin Rockweaver in Whelgar's Excavation Site.",
            complete = QuestState(306, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.3889, 0.5234, "Merrin Rockweaver",
                    "Travel to Merrin Rockweaver."),
            },
        },
        {
            id = "objective-943-2-flagongut-s-fossil",
            kind = "objective",
            priority = 190,
            conditions = {
                all = {
                    { quest = { id = 942, state = "completed" } },
                },
            },
            text = "Collect Flagongut's Fossil from the chest near Merrin Rockweaver.",
            dependsOn = { "accept-943-the-absent-minded-prospector" },
            complete = QuestObjective(943, 2),
            route = {
                Point(MAP.WETLANDS, 0.3880, 0.5220, "Merrin Rockweaver",
                    "Travel to Merrin Rockweaver."),
            },
        },
        {
            id = "objective-294-ormer-s-revenge",
            kind = "objective",
            priority = 210,
            text = "Kill 10 Mottled Screecher and 10 Mottled Raptor which are found around Black Channel Marsh.",
            dependsOn = { "accept-294-ormer-s-revenge" },
            complete = QuestState(294, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.2338, 0.5352, "Mottled Screecher",
                    "Travel to Mottled Screecher."),
            },
        },
        {
            id = "objective-943-the-absent-minded-prospector",
            kind = "objective",
            priority = 220,
            conditions = {
                all = {
                    { quest = { id = 942, state = "completed" } },
                },
            },
            text = "Kill Mottled Raptor and until you collect Stone of Relu.",
            dependsOn = { "accept-943-the-absent-minded-prospector" },
            complete = QuestState(943, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.2338, 0.5352, "Mottled Raptor",
                    "Travel to Mottled Raptor."),
            },
        },
        {
            id = "turnin-294-ormer-s-revenge",
            kind = "turnin",
            priority = 240,
            text = "Turn in Ormer's Revenge to Ormer Ironbraid in Whelgar's Excavation Site.",
            dependsOn = { "objective-294-ormer-s-revenge" },
            complete = QuestState(294, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.3797, 0.5135, "Ormer Ironbraid",
                    "Travel to Ormer Ironbraid."),
            },
        },
        {
            id = "accept-295-ormer-s-revenge",
            kind = "accept",
            priority = 250,
            text = "Accept Ormer's Revenge from Ormer Ironbraid in Whelgar's Excavation Site.",
            complete = QuestState(295, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.3797, 0.5135, "Ormer Ironbraid",
                    "Travel to Ormer Ironbraid."),
            },
        },
        {
            id = "accept-469-daily-delivery",
            kind = "accept",
            priority = 270,
            text = "Accept Daily Delivery from Einar Stonegrip in The Green Belt.",
            complete = QuestState(469, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.4993, 0.3938, "Einar Stonegrip",
                    "Travel to Einar Stonegrip."),
            },
        },
        {
            id = "turnin-463-the-greenwarden",
            kind = "turnin",
            priority = 280,
            text = "Turn in The Greenwarden to Rethiel the Greenwarden in The Green Belt.",
            dependsOn = { "accept-463-the-greenwarden" },
            complete = QuestState(463, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.5624, 0.4030, "Rethiel the Greenwarden",
                    "Travel to Rethiel the Greenwarden."),
            },
        },
        {
            id = "accept-276-tramping-paws",
            kind = "accept",
            priority = 290,
            text = "Accept Tramping Paws from Rethiel the Greenwarden in The Green Belt.",
            complete = QuestState(276, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.5624, 0.4030, "Rethiel the Greenwarden",
                    "Travel to Rethiel the Greenwarden."),
            },
        },
        {
            id = "objective-276-tramping-paws",
            kind = "objective",
            priority = 300,
            text = "Kill 15 Mosshide Gnoll and 10 Mosshide Mongrel which are found to the South.",
            dependsOn = { "accept-276-tramping-paws" },
            complete = QuestState(276, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.6200, 0.6600, "Mosshide Gnoll",
                    "Travel to Mosshide Gnoll."),
            },
        },
        {
            id = "turnin-276-tramping-paws",
            kind = "turnin",
            priority = 310,
            text = "Turn in Tramping Paws to Rethiel the Greenwarden in The Green Belt.",
            dependsOn = { "objective-276-tramping-paws" },
            complete = QuestState(276, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.5624, 0.4030, "Rethiel the Greenwarden",
                    "Travel to Rethiel the Greenwarden."),
            },
        },
        {
            id = "accept-277-fire-taboo",
            kind = "accept",
            priority = 320,
            text = "Accept Fire Taboo from Rethiel the Greenwarden in The Green Belt.",
            complete = QuestState(277, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.5624, 0.4030, "Rethiel the Greenwarden",
                    "Travel to Rethiel the Greenwarden."),
            },
        },
        {
            id = "objective-484-young-crocolisk-skins",
            kind = "objective",
            priority = 330,
            text = "Kill Young Wetlands Crocolisk and collect 4 Young Crocolisk Skin in The Green Belt.",
            dependsOn = { "accept-484-young-crocolisk-skins" },
            complete = QuestState(484, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.5100, 0.3600, "Young Wetlands Crocolisk",
                    "Travel to Young Wetlands Crocolisk."),
            },
        },
        {
            id = "objective-470-digging-through-the-ooze",
            kind = "objective",
            priority = 340,
            text = "Kill any Black Ooze to collect Sida's Bag in The Green Belt.",
            dependsOn = { "accept-470-digging-through-the-ooze" },
            complete = QuestState(470, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.5730, 0.4432, "Black Ooze",
                    "Travel to Black Ooze."),
            },
        },
        {
            id = "objective-277-fire-taboo",
            kind = "objective",
            priority = 360,
            text = "Kill any Mosshide mobs and collect 9 Crude Flint in The Green Belt.",
            dependsOn = { "accept-277-fire-taboo" },
            complete = QuestState(277, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.3800, 0.3100, "Mosshide Mystic",
                    "Travel to Mosshide Mystic."),
            },
        },
        {
            id = "turnin-277-fire-taboo",
            kind = "turnin",
            priority = 370,
            text = "Turn in Fire Taboo to Rethiel the Greenwarden in The Green Belt.",
            dependsOn = { "objective-277-fire-taboo" },
            complete = QuestState(277, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.5624, 0.4030, "Rethiel the Greenwarden",
                    "Travel to Rethiel the Greenwarden."),
            },
        },
        {
            id = "accept-275-blisters-on-the-land",
            kind = "accept",
            priority = 380,
            text = "Accept Blisters on The Land from Rethiel the Greenwarden in The Green Belt.",
            complete = QuestState(275, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.5624, 0.4030, "Rethiel the Greenwarden",
                    "Travel to Rethiel the Greenwarden."),
            },
        },
        {
            id = "turnin-943-the-absent-minded-prospector",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { quest = { id = 942, state = "completed" } },
                },
            },
            text = "Turn in The Absent Minded Prospector to Archaeologist Flagongut in Deepwater Tavern.",
            dependsOn = { "objective-943-flagon-of-dwarven-mead", "objective-943-2-flagongut-s-fossil", "objective-943-the-absent-minded-prospector" },
            complete = QuestState(943, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1081, 0.6041, "Archaeologist Flagongut",
                    "Travel to Archaeologist Flagongut."),
            },
        },
        {
            id = "turnin-279-claws-from-the-deep",
            kind = "turnin",
            priority = 410,
            text = "Turn in Claws from the Deep to Karl Boran in Menethil Harbor.",
            dependsOn = { "objective-279-2-gobbler", "objective-279-1-bluegill-murloc" },
            complete = QuestState(279, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.0831, 0.5854, "Karl Boran",
                    "Travel to Karl Boran."),
            },
        },
        {
            id = "accept-281-reclaiming-goods",
            kind = "accept",
            priority = 420,
            text = "Accept Reclaiming Goods from Karl Boran in Menethil Harbor.",
            complete = QuestState(281, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.0831, 0.5854, "Karl Boran",
                    "Travel to Karl Boran."),
            },
        },
        {
            id = "turnin-484-young-crocolisk-skins",
            kind = "turnin",
            priority = 430,
            text = "Turn in Young Crocolisk Skins to James Halloran in Menethil Harbor.",
            dependsOn = { "objective-484-young-crocolisk-skins" },
            complete = QuestState(484, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.0851, 0.5581, "James Halloran",
                    "Travel to James Halloran."),
            },
        },
        {
            id = "turnin-469-daily-delivery",
            kind = "turnin",
            priority = 440,
            text = "Turn in Daily Delivery to James Halloran in Menethil Harbor.",
            dependsOn = { "accept-469-daily-delivery" },
            complete = QuestState(469, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.0851, 0.5581, "James Halloran",
                    "Travel to James Halloran."),
            },
        },
        {
            id = "accept-471-apprentice-s-duties",
            kind = "accept",
            priority = 450,
            text = "Accept Apprentice's Duties from James Halloran in Menethil Harbor.",
            complete = QuestState(471, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.0851, 0.5581, "James Halloran",
                    "Travel to James Halloran."),
            },
        },
        {
            id = "turnin-470-digging-through-the-ooze",
            kind = "turnin",
            priority = 460,
            text = "Turn in Digging Through the Ooze to Sida in Menethil Harbor.",
            dependsOn = { "objective-470-digging-through-the-ooze" },
            complete = QuestState(470, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1174, 0.5797, "Sida",
                    "Travel to Sida."),
            },
        },
        {
            id = "turnin-306-in-search-of-the-excavation-team",
            kind = "turnin",
            priority = 470,
            text = "Turn in In Search of The Excavation Team to Tarrel Rockweaver in Menethil Harbor.",
            dependsOn = { "accept-306-in-search-of-the-excavation-team" },
            complete = QuestState(306, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1147, 0.5220, "Tarrel Rockweaver",
                    "Travel to Tarrel Rockweaver."),
            },
        },
        {
            id = "turnin-281-reclaiming-goods",
            kind = "turnin",
            priority = 480,
            text = "Turn in Reclaiming Goods in Bluegill Marsh.",
            dependsOn = { "accept-281-reclaiming-goods" },
            complete = QuestState(281, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1348, 0.4146, "Bluegill Marsh",
                    "Travel to Bluegill Marsh."),
            },
        },
        {
            id = "accept-284-the-search-continues",
            kind = "accept",
            priority = 490,
            text = "Accept The Search Continues from Guard Thomas in Bluegill Marsh.",
            complete = QuestState(284, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1348, 0.4146, "Guard Thomas",
                    "Travel to Guard Thomas."),
            },
        },
        {
            id = "turnin-284-the-search-continues",
            kind = "turnin",
            priority = 500,
            text = "Turn in The Search Continues in Bluegill Marsh.",
            dependsOn = { "accept-284-the-search-continues" },
            complete = QuestState(284, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1359, 0.3808, "Bluegill Marsh",
                    "Travel to Bluegill Marsh."),
            },
        },
        {
            id = "accept-285-search-more-hovels",
            kind = "accept",
            priority = 510,
            text = "Accept Search More Hovels in Bluegill Marsh.",
            complete = QuestState(285, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1359, 0.3808, "Bluegill Marsh",
                    "Travel to Bluegill Marsh."),
            },
        },
        {
            id = "turnin-285-search-more-hovels",
            kind = "turnin",
            priority = 520,
            text = "Turn in Search More Hovels in Bluegill Marsh.",
            dependsOn = { "accept-285-search-more-hovels" },
            complete = QuestState(285, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1388, 0.3491, "Bluegill Marsh",
                    "Travel to Bluegill Marsh."),
            },
        },
        {
            id = "accept-286-return-the-statuette",
            kind = "accept",
            priority = 530,
            text = "Accept Return the Statuette in Bluegill Marsh.",
            complete = QuestState(286, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1388, 0.3491, "Bluegill Marsh",
                    "Travel to Bluegill Marsh."),
            },
        },
        {
            id = "objective-471-apprentice-s-duties",
            kind = "objective",
            priority = 540,
            text = "Kill Giant Wetlands Crocolisk and collect 6 Giant Crocolisk Skin in Sundown Marsh.",
            dependsOn = { "accept-471-apprentice-s-duties" },
            complete = QuestState(471, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.2298, 0.2297, "Giant Wetlands Crocolisk",
                    "Travel to Giant Wetlands Crocolisk."),
            },
        },
        {
            id = "objective-275-blisters-on-the-land",
            kind = "objective",
            priority = 550,
            text = "Kill 12 Fen Creepers in the shallow marsh water. More of them are near the turn-in.",
            dependsOn = { "accept-275-blisters-on-the-land" },
            complete = QuestState(275, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.5624, 0.4030, "Fen Creeper",
                    "Travel to Fen Creeper."),
            },
        },
        {
            id = "turnin-275-blisters-on-the-land",
            kind = "turnin",
            priority = 560,
            text = "Turn in Blisters on The Land to Rethiel the Greenwarden in The Green Belt.",
            dependsOn = { "objective-275-blisters-on-the-land" },
            complete = QuestState(275, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.5624, 0.4030, "Rethiel the Greenwarden",
                    "Travel to Rethiel the Greenwarden."),
            },
        },
        {
            id = "accept-299-uncovering-the-past",
            kind = "accept",
            priority = 580,
            text = "Accept Uncovering the Past from Prospector Whelgar in Whelgar's Excavation Site.",
            complete = QuestState(299, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.3880, 0.5230, "Prospector Whelgar",
                    "Travel to Prospector Whelgar."),
            },
        },
        {
            id = "objective-299-4-neru-fragment",
            kind = "objective",
            priority = 590,
            text = "Click on Dirt Pile to collect Neru Fragment in Whelgar's Excavation Site.",
            dependsOn = { "accept-299-uncovering-the-past" },
            complete = QuestObjective(299, 4),
            route = {
                Point(MAP.WETLANDS, 0.3621, 0.4891, "Whelgar's Excavation Site",
                    "Travel to Whelgar's Excavation Site."),
            },
        },
        {
            id = "objective-299-3-golm-fragment",
            kind = "objective",
            priority = 600,
            text = "Click on the Vase to collect Golm Fragment in Whelgar's Excavation Site.",
            dependsOn = { "accept-299-uncovering-the-past" },
            complete = QuestObjective(299, 3),
            route = {
                Point(MAP.WETLANDS, 0.3551, 0.4524, "Whelgar's Excavation Site",
                    "Travel to Whelgar's Excavation Site."),
            },
        },
        {
            id = "objective-299-2-modr-fragment",
            kind = "objective",
            priority = 610,
            text = "Click on the Ancient Relic to collect Modr Fragment in Whelgar's Excavation Site.",
            dependsOn = { "accept-299-uncovering-the-past" },
            complete = QuestObjective(299, 2),
            route = {
                Point(MAP.WETLANDS, 0.3374, 0.4859, "Whelgar's Excavation Site",
                    "Travel to Whelgar's Excavation Site."),
            },
        },
        {
            id = "objective-299-1-ados-fragment",
            kind = "objective",
            priority = 620,
            text = "Click on Ancient Relic to collect Ados Fragment in Whelgar's Excavation Site.",
            dependsOn = { "accept-299-uncovering-the-past" },
            complete = QuestObjective(299, 1),
            route = {
                Point(MAP.WETLANDS, 0.3228, 0.4858, "Whelgar's Excavation Site",
                    "Travel to Whelgar's Excavation Site."),
            },
        },
        {
            id = "objective-295-ormer-s-revenge",
            kind = "objective",
            priority = 630,
            text = "Kill 10 Mottled Scytheclaw and 10 Mottled Razormaw which are found inside Whelgar's Excavation Site.",
            dependsOn = { "accept-295-ormer-s-revenge" },
            complete = QuestState(295, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.3400, 0.4200, "Mottled Scytheclaw",
                    "Travel to Mottled Scytheclaw."),
            },
        },
        {
            id = "turnin-295-ormer-s-revenge",
            kind = "turnin",
            priority = 640,
            text = "Turn in Ormer's Revenge to Ormer Ironbraid in Whelgar's Excavation Site.",
            dependsOn = { "objective-295-ormer-s-revenge" },
            complete = QuestState(295, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.3797, 0.5135, "Ormer Ironbraid",
                    "Travel to Ormer Ironbraid."),
            },
        },
        {
            id = "accept-296-ormer-s-revenge",
            kind = "accept",
            priority = 650,
            text = "Accept Ormer's Revenge from Ormer Ironbraid in Whelgar's Excavation Site.",
            complete = QuestState(296, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.3797, 0.5135, "Ormer Ironbraid",
                    "Travel to Ormer Ironbraid."),
            },
        },
        {
            id = "objective-296-ormer-s-revenge",
            kind = "objective",
            priority = 660,
            text = "Find and kill Sarltooth who is found on top of the hill in the Excavation Site to collect Sarltooth's Talon.",
            dependsOn = { "accept-296-ormer-s-revenge" },
            complete = QuestState(296, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.3100, 0.5000, "Sarltooth",
                    "Travel to Sarltooth."),
            },
        },
        {
            id = "turnin-299-uncovering-the-past",
            kind = "turnin",
            priority = 670,
            text = "Turn in Uncovering the Past to Prospector Whelgar in Whelgar's Excavation Site.",
            dependsOn = { "objective-299-4-neru-fragment", "objective-299-3-golm-fragment", "objective-299-2-modr-fragment", "objective-299-1-ados-fragment" },
            complete = QuestState(299, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.3880, 0.5230, "Prospector Whelgar",
                    "Travel to Prospector Whelgar."),
            },
        },
        {
            id = "turnin-296-ormer-s-revenge",
            kind = "turnin",
            priority = 680,
            text = "Turn in Ormer's Revenge to Ormer Ironbraid in Whelgar's Excavation Site.",
            dependsOn = { "objective-296-ormer-s-revenge" },
            complete = QuestState(296, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.3797, 0.5135, "Ormer Ironbraid",
                    "Travel to Ormer Ironbraid."),
            },
        },
        {
            id = "objective-464-war-banners",
            kind = "objective",
            priority = 700,
            text = "Kill Dragonmaw Swamprunner, Dragonmaw Bonewarder and Dragonmaw Raider and collect 8 Dragonmaw War Banner in Angerfang Encampment.",
            dependsOn = { "accept-464-war-banners" },
            complete = QuestState(464, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.4122, 0.4617, "Dragonmaw Swamprunner",
                    "Travel to Dragonmaw Swamprunner."),
            },
        },
        {
            id = "turnin-464-war-banners",
            kind = "turnin",
            priority = 720,
            text = "Turn in War Banners to Captain Stoutfist in Menethil Keep.",
            dependsOn = { "objective-464-war-banners" },
            complete = QuestState(464, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.0990, 0.5743, "Captain Stoutfist",
                    "Travel to Captain Stoutfist."),
            },
        },
        {
            id = "accept-465-nek-rosh-s-gambit",
            kind = "accept",
            priority = 730,
            text = "Accept Nek'rosh's Gambit from Captain Stoutfist in Menethil Keep.",
            complete = QuestState(465, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.0990, 0.5743, "Captain Stoutfist",
                    "Travel to Captain Stoutfist."),
            },
        },
        {
            id = "turnin-471-apprentice-s-duties",
            kind = "turnin",
            priority = 740,
            text = "Turn in Apprentice's Duties to James Halloran in Menethil Harbor.",
            dependsOn = { "objective-471-apprentice-s-duties" },
            complete = QuestState(471, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.0851, 0.5581, "James Halloran",
                    "Travel to James Halloran."),
            },
        },
        {
            id = "turnin-286-return-the-statuette",
            kind = "turnin",
            priority = 750,
            text = "Turn in Return the Statuette to Karl Boran in Menethil Harbor.",
            dependsOn = { "accept-286-return-the-statuette" },
            complete = QuestState(286, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.0831, 0.5854, "Karl Boran",
                    "Travel to Karl Boran."),
            },
        },
        {
            id = "objective-289-3-first-mate-snellig",
            kind = "objective",
            priority = 770,
            text = "Collect Snellig's Snuffbox in The Lost Fleet.",
            dependsOn = { "accept-289-the-cursed-crew" },
            complete = QuestObjective(289, 3),
            route = {
                Point(MAP.WETLANDS, 0.1391, 0.3103, "First Mate Snellig",
                    "Travel to First Mate Snellig."),
            },
        },
        {
            id = "objective-289-the-cursed-crew",
            kind = "objective",
            priority = 780,
            text = "Kill 13 Cursed Sailor and 5 Cursed Marine which are found around the shipwreck.",
            dependsOn = { "accept-289-the-cursed-crew" },
            complete = QuestState(289, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.1400, 0.3000, "Cursed Sailor",
                    "Travel to Cursed Sailor."),
            },
        },
        {
            id = "turnin-289-the-cursed-crew",
            kind = "turnin",
            priority = 790,
            text = "Turn in The Cursed Crew to First Mate Fitzsimmons in Menethil Harbor.",
            dependsOn = { "objective-289-3-first-mate-snellig", "objective-289-the-cursed-crew" },
            complete = QuestState(289, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1091, 0.5953, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "accept-290-lifting-the-curse",
            kind = "accept",
            priority = 800,
            text = "Accept Lifting the Curse from First Mate Fitzsimmons in Menethil Harbor.",
            complete = QuestState(290, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1091, 0.5953, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "accept-1073-ineptitude-chemicals-fun",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { quest = { id = 1072, state = "completed" } },
                },
            },
            text = "Accept Ineptitude + Chemicals = Fun from Lomac Gearstrip in Tinker Town.",
            complete = QuestState(1073, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7180, 0.5140, "Lomac Gearstrip",
                    "Travel to Lomac Gearstrip."),
            },
        },
        {
            id = "objective-1073-ineptitude-chemicals-fun",
            kind = "objective",
            priority = 820,
            conditions = {
                all = {
                    { quest = { id = 1072, state = "completed" } },
                },
            },
            text = "Buy 4 Minor Mana Potion and 2 Elixir of Minor Fortitude from the Auction House, skip the quest if items are too expensive for you or not available.",
            dependsOn = { "accept-1073-ineptitude-chemicals-fun" },
            complete = QuestState(1073, "complete"),
            route = {
                Point(MAP.IRONFORGE, 0.2420, 0.7440, "Auctioneer Redmuse",
                    "Travel to Auctioneer Redmuse."),
            },
        },
        {
            id = "turnin-1073-ineptitude-chemicals-fun",
            kind = "turnin",
            priority = 830,
            conditions = {
                all = {
                    { quest = { id = 1072, state = "completed" } },
                },
            },
            text = "Turn in Ineptitude + Chemicals = Fun to Lomac Gearstrip in Tinker Town.",
            dependsOn = { "objective-1073-ineptitude-chemicals-fun" },
            complete = QuestState(1073, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7180, 0.5140, "Lomac Gearstrip",
                    "Travel to Lomac Gearstrip."),
            },
        },
    },
})
