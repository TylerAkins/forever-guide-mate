local _, ns = ...

-- Forever dungeon quest list:
-- https://www.wowhead.com/forever/quests/dungeons/excavation-site-wetlands
-- https://www.wowhead.com/forever/news/every-quest-in-excavation-site-wetlands-wow-forever-383239
-- The guide level is the offer level on those quests (24). Wowhead's Level
-- line is 31 for the dungeon quests and 28 for Highland Hides.
-- Daily Delivery is the Wowhead series prerequisite for Highland Hides.
-- Dragonmaw Rumors leads to Open the Maw. Elder Knowledge leads to Earthen
-- Echo. Lost in the Thicket Things leads to Heartwoven. Lost Relic Carry
-- leads to Prehistoric Prism. Songblade Search leads to Fallen in the Fen.
-- Seeking Caitlin is a breadcrumb. Caitlin Grassman also offers Lost in the
-- Thicket Things, so that accept does not wait on the breadcrumb.
-- Wowhead has no interior map. Accepts and turn-ins inside the excavation
-- follow the quest log. Fallen in the Fen has a turn-in pin and no start pin.
-- Turning in Elder Knowledge removes the Titan Relic in the current beta,
-- and Earthen Echo still asks for that relic.

local MAP = {
    WETLANDS = 1437,
    REDRIDGE_MOUNTAINS = 1433,
    ASHENVALE = 1440,
    ARATHI_HIGHLANDS = 1417,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
    MULGORE = 1412,
    IRONFORGE = 1455,
}

local ALLIANCE = { faction = "Alliance" }
local HORDE = { faction = "Horde" }
local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }

local function Alliance(level)
    return { all = { ALLIANCE, { level = { min = level } } } }
end

local function Horde(level)
    return { all = { HORDE, { level = { min = level } } } }
end

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
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

local function Wetlands(x, y, label)
    return { Point(MAP.WETLANDS, x, y, label, "Travel to Wetlands.") }
end

ns:RegisterGuide({
    id = "dungeons-excavation-site-wetlands",
    title = "Excavation Site: Wetlands",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 24 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "accept-469-daily-delivery",
            kind = "accept",
            priority = 10,
            conditions = Alliance(18),
            text = "Accept Daily Delivery from Einar Stonegrip in The Green Belt. " ..
                "James Halloran offers Highland Hides after this.",
            complete = QuestState(469, "activeOrCompleted"),
            route = Wetlands(0.4993, 0.3938, "Einar Stonegrip"),
        },
        {
            id = "turnin-469-daily-delivery",
            kind = "turnin",
            priority = 11,
            conditions = Alliance(18),
            text = "Turn in Daily Delivery to James Halloran.",
            dependsOn = { "accept-469-daily-delivery" },
            complete = QuestState(469, "completed"),
            route = Wetlands(0.086, 0.556, "James Halloran"),
        },
        {
            id = "accept-98815-highland-hides",
            kind = "accept",
            priority = 12,
            conditions = Alliance(24),
            text = "Accept Highland Hides from James Halloran in Menethil Harbor.",
            dependsOn = { "turnin-469-daily-delivery" },
            complete = QuestState(98815, "activeOrCompleted"),
            route = Wetlands(0.086, 0.556, "James Halloran"),
        },
        {
            id = "accept-95772-songblade-search",
            kind = "accept",
            priority = 20,
            conditions = Alliance(24),
            text = "Accept Songblade Search from Dorin Songblade in Lakeshire.",
            complete = QuestState(95772, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE_MOUNTAINS, 0.308, 0.466, "Dorin Songblade",
                    "Travel to Redridge Mountains."),
            },
        },
        {
            id = "accept-95737-seeking-caitlin",
            kind = "accept",
            priority = 30,
            conditions = Alliance(24),
            text = "Accept Seeking Caitlin from Llana in Ashenvale. " ..
                "This breadcrumb leads to Caitlin Grassman. She also offers Lost in the Thicket Things on her own.",
            complete = QuestState(95737, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.350, 0.484, "Llana", "Travel to Ashenvale."),
            },
        },
        {
            id = "turnin-95737-seeking-caitlin",
            kind = "turnin",
            priority = 31,
            conditions = Alliance(24),
            text = "Turn in Seeking Caitlin to Caitlin Grassman.",
            dependsOn = { "accept-95737-seeking-caitlin" },
            complete = QuestState(95737, "completed"),
            route = Wetlands(0.118, 0.586, "Caitlin Grassman"),
        },
        {
            id = "accept-95647-lost-in-the-thicket-things",
            kind = "accept",
            priority = 32,
            conditions = Alliance(24),
            text = "Accept Lost in the Thicket Things from Caitlin Grassman in Menethil Harbor.",
            complete = QuestState(95647, "activeOrCompleted"),
            route = Wetlands(0.118, 0.586, "Caitlin Grassman"),
        },
        {
            id = "accept-95646-horrors-in-the-highland",
            kind = "accept",
            priority = 40,
            conditions = Alliance(24),
            text = "Accept Horrors in the Highland from Rethiel the Greenwarden.",
            complete = QuestState(95646, "activeOrCompleted"),
            route = Wetlands(0.562, 0.404, "Rethiel the Greenwarden"),
        },
        {
            id = "accept-95697-changing-tastes",
            kind = "accept",
            priority = 50,
            conditions = Horde(24),
            text = "Accept Changing Tastes from Borstan in the Drag in Orgrimmar.",
            complete = QuestState(95697, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.574, 0.534, "Borstan", "Travel to Orgrimmar."),
            },
        },
        {
            id = "accept-95663-dragonmaw-rumors",
            kind = "accept",
            priority = 60,
            conditions = Horde(24),
            text = "Accept Dragonmaw Rumors from Zaruk in Hammerfall.",
            complete = QuestState(95663, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI_HIGHLANDS, 0.744, 0.356, "Zaruk",
                    "Travel to Arathi Highlands."),
            },
        },
        {
            id = "turnin-95663-dragonmaw-rumors",
            kind = "turnin",
            priority = 61,
            conditions = Horde(24),
            text = "Turn in Dragonmaw Rumors to the Deathstalker Agent in the hills above the Dragonmaw camp.",
            dependsOn = { "accept-95663-dragonmaw-rumors" },
            complete = QuestState(95663, "completed"),
            route = Wetlands(0.514, 0.592, "Deathstalker Agent"),
        },
        {
            id = "accept-95682-open-the-maw",
            kind = "accept",
            priority = 62,
            conditions = Horde(24),
            text = "Accept Open the Maw from the Deathstalker Agent.",
            dependsOn = { "turnin-95663-dragonmaw-rumors" },
            complete = QuestState(95682, "activeOrCompleted"),
            route = Wetlands(0.514, 0.592, "Deathstalker Agent"),
        },
        {
            id = "enter-excavation-site-wetlands",
            kind = "travel",
            priority = 70,
            conditions = {
                all = {
                    { level = { min = 24 } },
                    BOTH_FACTIONS,
                },
            },
            text = "Enter Excavation Site: Wetlands from the path by the spider cave near Thelgen Rock. " ..
                "Boss order: Saltspine, Shadetooth, Highland Horror, Relic Guardian. " ..
                "Mark this step complete after you zone in. " ..
                "It also advances when an Excavation Site: Wetlands quest is finished inside or the Titan Relic quest is accepted.",
            persistCompletion = true,
            complete = {
                any = {
                    QuestState(98815, "complete"),
                    QuestState(95646, "complete"),
                    QuestState(95647, "completed"),
                    QuestState(95772, "completed"),
                    QuestState(95697, "complete"),
                    QuestState(95682, "complete"),
                    QuestState(95664, "activeOrCompleted"),
                    QuestState(95810, "activeOrCompleted"),
                },
            },
            route = Wetlands(0.532, 0.658, "Path up from the spider cave near Thelgen Rock"),
        },
        {
            id = "objective-98815-highland-hides",
            kind = "objective",
            priority = 80,
            conditions = Alliance(24),
            text = "Collect 4 Thicket Raptor Hides. They drop from Shadetooth and the Thicket raptors.",
            dependsOn = { "accept-98815-highland-hides" },
            complete = QuestState(98815, "complete"),
        },
        {
            id = "turnin-95772-songblade-search",
            kind = "turnin",
            priority = 81,
            conditions = Alliance(24),
            text = "Turn in Songblade Search to Daewyn Songblade. The guide follows the quest log pin.",
            dependsOn = { "accept-95772-songblade-search" },
            useClientPin = true,
            complete = QuestState(95772, "completed"),
        },
        {
            id = "accept-95795-fallen-in-the-fen",
            kind = "accept",
            priority = 82,
            conditions = Alliance(24),
            text = "Accept Fallen in the Fen after Songblade Search. Wowhead does not list who offers it. " ..
                "The guide follows the quest log pin.",
            dependsOn = { "turnin-95772-songblade-search" },
            useClientPin = true,
            complete = QuestState(95795, "activeOrCompleted"),
        },
        {
            id = "turnin-95647-lost-in-the-thicket-things",
            kind = "turnin",
            priority = 83,
            conditions = Alliance(24),
            text = "Turn in Lost in the Thicket Things to Ardin Grassman. The guide follows the quest log pin.",
            dependsOn = { "accept-95647-lost-in-the-thicket-things" },
            useClientPin = true,
            complete = QuestState(95647, "completed"),
        },
        {
            id = "accept-95809-heartwoven",
            kind = "accept",
            priority = 84,
            conditions = Alliance(24),
            text = "Accept Heartwoven from Ardin Grassman. The guide follows the quest log pin.",
            dependsOn = { "turnin-95647-lost-in-the-thicket-things" },
            useClientPin = true,
            complete = QuestState(95809, "activeOrCompleted"),
        },
        {
            id = "objective-95646-horrors-in-the-highland",
            kind = "objective",
            priority = 85,
            conditions = Alliance(24),
            text = "Kill the Highland Horror and collect the Horrible Rootcore.",
            dependsOn = { "accept-95646-horrors-in-the-highland" },
            complete = QuestState(95646, "complete"),
        },
        {
            id = "objective-95697-changing-tastes",
            kind = "objective",
            priority = 86,
            conditions = Horde(24),
            text = "Collect Thicket Raptor Meat. It drops from Shadetooth and the Thicket raptors.",
            dependsOn = { "accept-95697-changing-tastes" },
            complete = QuestState(95697, "complete"),
        },
        {
            id = "objective-95682-open-the-maw",
            kind = "objective",
            priority = 87,
            conditions = Horde(24),
            text = "Slay the Dragonmaw Warders and Dragonmaw Saboteurs and take a Dragonmaw Dispatch from a Dragonmaw Thaumaturgist.",
            dependsOn = { "accept-95682-open-the-maw" },
            complete = QuestState(95682, "complete"),
        },
        {
            id = "accept-95664-elder-knowledge",
            kind = "accept",
            priority = 90,
            conditions = Horde(24),
            text = "Loot the Titan Relic from Relic Guardian and accept Elder Knowledge. " ..
                "Keep the relic if you still need Earthen Echo. Turning this quest in removes it in the current beta.",
            dependsOn = { "enter-excavation-site-wetlands" },
            complete = QuestState(95664, "activeOrCompleted"),
        },
        {
            id = "accept-95810-lost-relic-carry",
            kind = "accept",
            priority = 91,
            conditions = Alliance(24),
            text = "Loot the Titan Relic from Relic Guardian and accept Lost Relic Carry.",
            dependsOn = { "enter-excavation-site-wetlands" },
            complete = QuestState(95810, "activeOrCompleted"),
        },
        {
            id = "turnin-98815-highland-hides",
            kind = "turnin",
            priority = 100,
            conditions = Alliance(24),
            text = "Turn in Highland Hides to James Halloran.",
            dependsOn = { "objective-98815-highland-hides" },
            complete = QuestState(98815, "completed"),
            route = Wetlands(0.086, 0.556, "James Halloran"),
        },
        {
            id = "turnin-95795-fallen-in-the-fen",
            kind = "turnin",
            priority = 101,
            conditions = Alliance(24),
            text = "Turn in Fallen in the Fen to Dorin Songblade.",
            dependsOn = { "accept-95795-fallen-in-the-fen" },
            complete = QuestState(95795, "completed"),
            route = {
                Point(MAP.REDRIDGE_MOUNTAINS, 0.308, 0.466, "Dorin Songblade",
                    "Travel to Redridge Mountains."),
            },
        },
        {
            id = "turnin-95809-heartwoven",
            kind = "turnin",
            priority = 102,
            conditions = Alliance(24),
            text = "Turn in Heartwoven to Caitlin Grassman.",
            dependsOn = { "accept-95809-heartwoven" },
            complete = QuestState(95809, "completed"),
            route = Wetlands(0.118, 0.586, "Caitlin Grassman"),
        },
        {
            id = "turnin-95646-horrors-in-the-highland",
            kind = "turnin",
            priority = 103,
            conditions = Alliance(24),
            text = "Turn in Horrors in the Highland to Rethiel the Greenwarden.",
            dependsOn = { "objective-95646-horrors-in-the-highland" },
            complete = QuestState(95646, "completed"),
            route = Wetlands(0.562, 0.404, "Rethiel the Greenwarden"),
        },
        {
            id = "turnin-95810-lost-relic-carry",
            kind = "turnin",
            priority = 104,
            conditions = Alliance(24),
            text = "Turn in Lost Relic Carry to Prospector Whelgar.",
            dependsOn = { "accept-95810-lost-relic-carry" },
            complete = QuestState(95810, "completed"),
            route = Wetlands(0.388, 0.522, "Prospector Whelgar"),
        },
        {
            id = "accept-98824-prehistoric-prism",
            kind = "accept",
            priority = 105,
            conditions = Alliance(24),
            text = "Accept Prehistoric Prism from Prospector Whelgar.",
            dependsOn = { "turnin-95810-lost-relic-carry" },
            complete = QuestState(98824, "activeOrCompleted"),
            route = Wetlands(0.388, 0.522, "Prospector Whelgar"),
        },
        {
            id = "turnin-98824-prehistoric-prism",
            kind = "turnin",
            priority = 106,
            conditions = Alliance(24),
            text = "Turn in Prehistoric Prism to High Explorer Magellas.",
            dependsOn = { "accept-98824-prehistoric-prism" },
            complete = QuestState(98824, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.699, 0.185, "High Explorer Magellas",
                    "Travel to Ironforge."),
            },
        },
        {
            id = "turnin-95697-changing-tastes",
            kind = "turnin",
            priority = 110,
            conditions = Horde(24),
            text = "Turn in Changing Tastes to Borstan.",
            dependsOn = { "objective-95697-changing-tastes" },
            complete = QuestState(95697, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.574, 0.534, "Borstan", "Travel to Orgrimmar."),
            },
        },
        {
            id = "turnin-95682-open-the-maw",
            kind = "turnin",
            priority = 111,
            conditions = Horde(24),
            text = "Turn in Open the Maw to the Deathstalker Agent.",
            dependsOn = { "objective-95682-open-the-maw" },
            complete = QuestState(95682, "completed"),
            route = Wetlands(0.514, 0.592, "Deathstalker Agent"),
        },
        {
            id = "turnin-95664-elder-knowledge",
            kind = "turnin",
            priority = 112,
            conditions = Horde(24),
            text = "Turn in Elder Knowledge to Bashana Runetotem on Elder Rise.",
            dependsOn = { "accept-95664-elder-knowledge" },
            complete = QuestState(95664, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.708, 0.338, "Bashana Runetotem",
                    "Travel to Thunder Bluff."),
            },
        },
        {
            id = "accept-98823-earthen-echo",
            kind = "accept",
            priority = 113,
            conditions = Horde(24),
            text = "Accept Earthen Echo from Bashana Runetotem. It still requires the Titan Relic.",
            dependsOn = { "turnin-95664-elder-knowledge" },
            complete = QuestState(98823, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.708, 0.338, "Bashana Runetotem",
                    "Travel to Thunder Bluff."),
            },
        },
        {
            id = "turnin-98823-earthen-echo",
            kind = "turnin",
            priority = 114,
            conditions = Horde(24),
            text = "Turn in Earthen Echo to Muln Earthfury.",
            dependsOn = { "accept-98823-earthen-echo" },
            complete = QuestState(98823, "completed"),
            route = {
                Point(MAP.MULGORE, 0.3340, 0.2240, "Muln Earthfury", "Travel to Mulgore."),
            },
        },
    },
})
