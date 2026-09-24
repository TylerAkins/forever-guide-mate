local _, ns = ...

-- Alliance Loremaster route for Teldrassil.
-- Quest list: https://www.wowhead.com/forever/quests/kalimdor/teldrassil
-- Rules for the next zone: docs/zone-loremaster-guides.md
-- Shadowglen, Dolanaar, and the Oracle Glade pick up the quests offered
-- on that visit before the route leaves. Chains still wait on the real turn-in.
-- Each objective is its own step and depends only on its accept.
-- Omitted from this run:
-- Welcome! (5842) is the Collector's Edition gift voucher.
-- Crown of the Earth (934) has no giver. The offered part is Crown of the Earth (7383).
-- Tyrande and Remulos (8734) is a level 60 Scepter of the Shifting Sands
-- handoff. A Forest Wisp in Teldrassil sends you to Keeper Remulos in
-- Moonglade. It is not part of the Teldrassil leveling route.
-- The zone list still titles Bounty: Gnarlpine Furbolg (490) as unused.
-- The quest page gives the bounty, so this route includes it.
-- Fang of Githyiss (97236) and The Moss-twined Heart (927) appear only
-- after the quest is in the log. Planting the Heart waits on that heart.
-- A character who never loots them still reaches 100%.
-- The moonwells, Webwood egg, timberling sprouts, fel cones, moonpetal
-- lilies, the Starbreeze dresser, the Ban'ethil chests, the Gnarlpine
-- totems, and the Oracle Tree have no Wowhead pin.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    TELDRASSIL = 1438,
    DARNASSUS = 1457,
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
    id = "leveling-teldrassil",
    title = "Teldrassil (Loremaster)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-456-the-balance-of-nature",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept The Balance of Nature from Conservator Ilthalaine.",
            complete = QuestState(456, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.586, 0.442, "Conservator Ilthalaine",
                    "Travel to Conservator Ilthalaine."),
            },
        },
        {
            id = "accept-458-the-woodland-protector",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept The Woodland Protector from Melithar Staghelm.",
            complete = QuestState(458, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.598, 0.424, "Melithar Staghelm",
                    "Travel to Melithar Staghelm."),
            },
        },
        {
            id = "accept-4495-a-good-friend",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 2 } },
                },
            },
            text = "Accept A Good Friend from Dirania Silvershine.",
            complete = QuestState(4495, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.420, "Dirania Silvershine",
                    "Travel to Dirania Silvershine."),
            },
        },
        {
            id = "accept-916-webwood-venom",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Webwood Venom from Gilshalan Windwalker.",
            complete = QuestState(916, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.578, 0.416, "Gilshalan Windwalker",
                    "Travel to Gilshalan Windwalker."),
            },
        },
        {
            id = "objective-456-the-balance-of-nature-1",
            kind = "objective",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "The Balance of Nature: Young Nightsaber slain.",
            dependsOn = { "accept-456-the-balance-of-nature" },
            complete = QuestObjective(456, 1, "Young Nightsaber"),
            route = {
                Point(MAP.TELDRASSIL, 0.600, 0.456, "Young Nightsaber",
                    "Travel to Young Nightsaber."),
            },
        },
        {
            id = "objective-456-the-balance-of-nature-2",
            kind = "objective",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "The Balance of Nature: Young Thistle Boar slain.",
            dependsOn = { "accept-456-the-balance-of-nature" },
            complete = QuestObjective(456, 2, "Young Thistle Boar"),
            route = {
                Point(MAP.TELDRASSIL, 0.574, 0.452, "Young Thistle Boar",
                    "Travel to Young Thistle Boar."),
            },
        },
        {
            id = "turnin-458-the-woodland-protector",
            kind = "turnin",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in The Woodland Protector to Tarindrella.",
            dependsOn = { "accept-458-the-woodland-protector" },
            complete = QuestState(458, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.578, 0.450, "Tarindrella",
                    "Travel to Tarindrella."),
            },
        },
        {
            id = "accept-459-the-woodland-protector",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept The Woodland Protector from Tarindrella.",
            dependsOn = { "turnin-458-the-woodland-protector" },
            complete = QuestState(459, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.578, 0.450, "Tarindrella",
                    "Travel to Tarindrella."),
            },
        },
        {
            id = "objective-459-the-woodland-protector-1",
            kind = "objective",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "The Woodland Protector: Fel Moss.",
            dependsOn = { "accept-459-the-woodland-protector" },
            complete = QuestObjective(459, 1, "Fel Moss"),
            route = {
                Point(MAP.TELDRASSIL, 0.550, 0.446, "Grellkin",
                    "Travel to Grellkin."),
            },
        },
        {
            id = "turnin-456-the-balance-of-nature",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in The Balance of Nature to Conservator Ilthalaine.",
            dependsOn = { "objective-456-the-balance-of-nature-1", "objective-456-the-balance-of-nature-2" },
            complete = QuestState(456, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.586, 0.442, "Conservator Ilthalaine",
                    "Travel to Conservator Ilthalaine."),
            },
        },
        {
            id = "accept-457-the-balance-of-nature",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept The Balance of Nature from Conservator Ilthalaine.",
            dependsOn = { "turnin-456-the-balance-of-nature" },
            complete = QuestState(457, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.586, 0.442, "Conservator Ilthalaine",
                    "Travel to Conservator Ilthalaine."),
            },
        },
        {
            id = "turnin-459-the-woodland-protector",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in The Woodland Protector to Tarindrella.",
            dependsOn = { "objective-459-the-woodland-protector-1" },
            complete = QuestState(459, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.578, 0.450, "Tarindrella",
                    "Travel to Tarindrella."),
            },
        },
        {
            id = "accept-97977-natures-call",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Nature's Call from Tarindrella.",
            dependsOn = { "turnin-459-the-woodland-protector" },
            complete = QuestState(97977, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.578, 0.450, "Tarindrella",
                    "Travel to Tarindrella."),
            },
        },
        {
            id = "objective-457-the-balance-of-nature-1",
            kind = "objective",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "The Balance of Nature: Mangy Nightsaber slain.",
            dependsOn = { "accept-457-the-balance-of-nature" },
            complete = QuestObjective(457, 1, "Mangy Nightsaber"),
            route = {
                Point(MAP.TELDRASSIL, 0.624, 0.376, "Mangy Nightsaber",
                    "Travel to Mangy Nightsaber."),
            },
        },
        {
            id = "objective-457-the-balance-of-nature-2",
            kind = "objective",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "The Balance of Nature: Thistle Boar slain.",
            dependsOn = { "accept-457-the-balance-of-nature" },
            complete = QuestObjective(457, 2, "Thistle Boar"),
            route = {
                Point(MAP.TELDRASSIL, 0.562, 0.378, "Thistle Boar",
                    "Travel to Thistle Boar."),
            },
        },
        {
            id = "objective-97977-natures-call-1",
            kind = "objective",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Nature's Call: Gnarlpine Totem. The abandoned camps are along the western edge of Shadowglen. Wowhead has no totem pin, so this marks the grells who scatter them.",
            dependsOn = { "accept-97977-natures-call" },
            complete = QuestObjective(97977, 1, "Gnarlpine Totem"),
            route = {
                Point(MAP.TELDRASSIL, 0.550, 0.446, "Grell camps",
                    "Travel to Grell camps."),
            },
        },
        {
            id = "objective-916-webwood-venom-1",
            kind = "objective",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 3 } },
                },
            },
            text = "Webwood Venom: Webwood Venom Sac. The spiders are in and around Shadowthread Cave.",
            dependsOn = { "accept-916-webwood-venom" },
            complete = QuestObjective(916, 1, "Webwood Venom Sac"),
            route = {
                Point(MAP.TELDRASSIL, 0.566, 0.310, "Webwood Spider",
                    "Travel to Webwood Spider."),
            },
        },
        {
            id = "turnin-4495-a-good-friend",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in A Good Friend to Iverron.",
            dependsOn = { "accept-4495-a-good-friend" },
            complete = QuestState(4495, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.546, 0.330, "Iverron",
                    "Travel to Iverron."),
            },
        },
        {
            id = "turnin-3519-a-friend-in-need",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 2 } },
                },
            },
            text = "Accept A Friend in Need from Iverron, then tell Dirania Silvershine.",
            dependsOn = { "turnin-4495-a-good-friend" },
            complete = QuestState(3519, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.420, "Dirania Silvershine",
                    "Travel to Dirania Silvershine."),
            },
        },
        {
            id = "turnin-457-the-balance-of-nature",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in The Balance of Nature to Conservator Ilthalaine.",
            dependsOn = { "objective-457-the-balance-of-nature-1", "objective-457-the-balance-of-nature-2" },
            complete = QuestState(457, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.586, 0.442, "Conservator Ilthalaine",
                    "Travel to Conservator Ilthalaine."),
            },
        },
        {
            id = "turnin-97977-natures-call",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Nature's Call to Tarindrella.",
            dependsOn = { "objective-97977-natures-call-1" },
            complete = QuestState(97977, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.578, 0.450, "Tarindrella",
                    "Travel to Tarindrella."),
            },
        },
        {
            id = "turnin-916-webwood-venom",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Webwood Venom to Gilshalan Windwalker.",
            dependsOn = { "objective-916-webwood-venom-1" },
            complete = QuestState(916, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.578, 0.416, "Gilshalan Windwalker",
                    "Travel to Gilshalan Windwalker."),
            },
        },
        {
            id = "accept-917-webwood-egg",
            kind = "accept",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Webwood Egg from Gilshalan Windwalker.",
            dependsOn = { "turnin-916-webwood-venom" },
            complete = QuestState(917, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.578, 0.416, "Gilshalan Windwalker",
                    "Travel to Gilshalan Windwalker."),
            },
        },
        {
            id = "accept-3521-iverrons-antidote",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 2 } },
                },
            },
            text = "Accept Iverron's Antidote from Dirania Silvershine.",
            dependsOn = { "turnin-3519-a-friend-in-need" },
            complete = QuestState(3521, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.420, "Dirania Silvershine",
                    "Travel to Dirania Silvershine."),
            },
        },
        {
            id = "objective-917-webwood-egg-1",
            kind = "objective",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Webwood Egg. The egg is in a nest deep in Shadowthread Cave. Wowhead has no egg pin. Githyiss the Vile in this cave can drop a fang that starts Fang of Githyiss.",
            dependsOn = { "accept-917-webwood-egg" },
            complete = QuestObjective(917, 1, "Webwood Egg"),
            route = {
                Point(MAP.TELDRASSIL, 0.566, 0.310, "Shadowthread Cave",
                    "Travel to Shadowthread Cave."),
            },
        },
        {
            id = "objective-3521-iverrons-antidote-1",
            kind = "objective",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 2 } },
                },
            },
            text = "Iverron's Antidote: Hyacinth Mushroom. They grow under trees, and the grells carry them.",
            dependsOn = { "accept-3521-iverrons-antidote" },
            complete = QuestObjective(3521, 1, "Hyacinth Mushroom"),
            route = {
                Point(MAP.TELDRASSIL, 0.564, 0.456, "Grell",
                    "Travel to Grell."),
            },
        },
        {
            id = "objective-3521-iverrons-antidote-2",
            kind = "objective",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 2 } },
                },
            },
            text = "Iverron's Antidote: Moonpetal Lily. Lilies grow around pools. Wowhead has no lily pin, so this marks Iverron by the northern cave.",
            dependsOn = { "accept-3521-iverrons-antidote" },
            complete = QuestObjective(3521, 2, "Moonpetal Lily"),
            route = {
                Point(MAP.TELDRASSIL, 0.546, 0.330, "Moonpetal pool",
                    "Travel to Moonpetal pool."),
            },
        },
        {
            id = "objective-3521-iverrons-antidote-3",
            kind = "objective",
            priority = 280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 2 } },
                },
            },
            text = "Iverron's Antidote: Webwood Ichor.",
            dependsOn = { "accept-3521-iverrons-antidote" },
            complete = QuestObjective(3521, 3, "Webwood Ichor"),
            route = {
                Point(MAP.TELDRASSIL, 0.566, 0.310, "Webwood Spider",
                    "Travel to Webwood Spider."),
            },
        },
        {
            id = "turnin-97236-fang-of-githyiss",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                    { quest = { id = 97236, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Fang of Githyiss to Gilshalan Windwalker if Githyiss the Vile dropped the fang.",
            complete = QuestState(97236, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.578, 0.416, "Gilshalan Windwalker",
                    "Travel to Gilshalan Windwalker."),
            },
        },
        {
            id = "turnin-917-webwood-egg",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Webwood Egg to Gilshalan Windwalker.",
            dependsOn = { "objective-917-webwood-egg-1" },
            complete = QuestState(917, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.578, 0.416, "Gilshalan Windwalker",
                    "Travel to Gilshalan Windwalker."),
            },
        },
        {
            id = "turnin-3521-iverrons-antidote",
            kind = "turnin",
            priority = 294,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in Iverron's Antidote to Dirania Silvershine. The next antidote lasts 5 minutes.",
            dependsOn = { "objective-3521-iverrons-antidote-1", "objective-3521-iverrons-antidote-2", "objective-3521-iverrons-antidote-3" },
            complete = QuestState(3521, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.420, "Dirania Silvershine",
                    "Travel to Dirania Silvershine."),
            },
        },
        {
            id = "turnin-3522-iverrons-antidote",
            kind = "turnin",
            priority = 296,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 2 } },
                },
            },
            text = "Accept Iverron's Antidote from Dirania Silvershine, then bring it to Iverron before the 5 minute timer expires.",
            dependsOn = { "turnin-3521-iverrons-antidote" },
            timer = { seconds = 300, quest = 3522 },
            complete = QuestState(3522, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.546, 0.330, "Iverron",
                    "Travel to Iverron."),
            },
        },
        {
            id = "turnin-920-tenarons-summons",
            kind = "turnin",
            priority = 330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Tenaron's Summons from Gilshalan Windwalker, then speak with Tenaron Stormgrip atop Aldrassil.",
            dependsOn = { "turnin-917-webwood-egg" },
            complete = QuestState(920, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.590, 0.394, "Tenaron Stormgrip",
                    "Travel to Tenaron Stormgrip."),
            },
        },
        {
            id = "accept-921-crown-of-the-earth",
            kind = "accept",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Crown of the Earth from Tenaron Stormgrip.",
            dependsOn = { "turnin-920-tenarons-summons" },
            complete = QuestState(921, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.590, 0.394, "Tenaron Stormgrip",
                    "Travel to Tenaron Stormgrip."),
            },
        },
        {
            id = "objective-921-crown-of-the-earth-1",
            kind = "objective",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Crown of the Earth: Filled Crystal Phial. Use the phial at the moonwell north of Aldrassil. Wowhead has no moonwell pin, so this marks Iverron by the northern cave.",
            dependsOn = { "accept-921-crown-of-the-earth" },
            complete = QuestObjective(921, 1, "Filled Crystal Phial"),
            route = {
                Point(MAP.TELDRASSIL, 0.546, 0.330, "Moonwell north of Aldrassil",
                    "Travel to Moonwell north of Aldrassil."),
            },
        },
        {
            id = "turnin-921-crown-of-the-earth",
            kind = "turnin",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Crown of the Earth to Tenaron Stormgrip.",
            dependsOn = { "objective-921-crown-of-the-earth-1" },
            complete = QuestState(921, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.590, 0.394, "Tenaron Stormgrip",
                    "Travel to Tenaron Stormgrip."),
            },
        },
        {
            id = "accept-2159-dolanaar-delivery",
            kind = "accept",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Dolanaar Delivery from Porthannius.",
            complete = QuestState(2159, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.612, 0.476, "Porthannius",
                    "Travel to Porthannius."),
            },
        },
        {
            id = "turnin-928-crown-of-the-earth",
            kind = "turnin",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Crown of the Earth from Tenaron Stormgrip, then bring the vessel to Corithras Moonrage in Dolanaar.",
            dependsOn = { "turnin-921-crown-of-the-earth" },
            complete = QuestState(928, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.562, 0.616, "Corithras Moonrage",
                    "Travel to Corithras Moonrage."),
            },
        },
        {
            id = "turnin-2159-dolanaar-delivery",
            kind = "turnin",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Dolanaar Delivery to Innkeeper Keldamyr.",
            dependsOn = { "accept-2159-dolanaar-delivery" },
            complete = QuestState(2159, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.556, 0.598, "Innkeeper Keldamyr",
                    "Travel to Innkeeper Keldamyr."),
            },
        },
        {
            id = "accept-929-crown-of-the-earth",
            kind = "accept",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Crown of the Earth from Corithras Moonrage.",
            dependsOn = { "turnin-928-crown-of-the-earth" },
            complete = QuestState(929, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.562, 0.616, "Corithras Moonrage",
                    "Travel to Corithras Moonrage."),
            },
        },
        {
            id = "accept-997-denalans-earth",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Denalan's Earth from Syral Bladeleaf.",
            complete = QuestState(997, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.560, 0.576, "Syral Bladeleaf",
                    "Travel to Syral Bladeleaf."),
            },
        },
        {
            id = "accept-475-a-troubling-breeze",
            kind = "accept",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept A Troubling Breeze from Athridas Bearmantle.",
            complete = QuestState(475, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.560, 0.574, "Athridas Bearmantle",
                    "Travel to Athridas Bearmantle."),
            },
        },
        {
            id = "accept-2438-the-emerald-dreamcatcher",
            kind = "accept",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept The Emerald Dreamcatcher from Tallonkai Swiftroot.",
            complete = QuestState(2438, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.554, 0.568, "Tallonkai Swiftroot",
                    "Travel to Tallonkai Swiftroot."),
            },
        },
        {
            id = "accept-932-twisted-hatred",
            kind = "accept",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Twisted Hatred from Tallonkai Swiftroot.",
            complete = QuestState(932, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.554, 0.568, "Tallonkai Swiftroot",
                    "Travel to Tallonkai Swiftroot."),
            },
        },
        {
            id = "accept-87288-soft-saber-pelts",
            kind = "accept",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Soft Saber Pelts from Aldia.",
            complete = QuestState(87288, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.554, 0.572, "Aldia",
                    "Travel to Aldia."),
            },
        },
        {
            id = "accept-488-zenns-bidding",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Zenn's Bidding from Zenn Foulhoof.",
            complete = QuestState(488, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.604, 0.562, "Zenn Foulhoof",
                    "Travel to Zenn Foulhoof."),
            },
        },
        {
            id = "accept-487-the-road-to-darnassus",
            kind = "accept",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept The Road to Darnassus from Moon Priestess Amara.",
            complete = QuestState(487, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.556, 0.584, "Moon Priestess Amara",
                    "Travel to Moon Priestess Amara."),
            },
        },
        {
            id = "accept-99046-the-lost-runner",
            kind = "accept",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept The Lost Runner from Sentinel Kyra Starsong.",
            complete = QuestState(99046, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.560, 0.594, "Sentinel Kyra Starsong",
                    "Travel to Sentinel Kyra Starsong."),
            },
        },
        {
            id = "objective-87288-soft-saber-pelts-1",
            kind = "objective",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Soft Saber Pelts: Soft Nightsaber Pelt.",
            dependsOn = { "accept-87288-soft-saber-pelts" },
            complete = QuestObjective(87288, 1, "Soft Nightsaber Pelt"),
            route = {
                Point(MAP.TELDRASSIL, 0.614, 0.588, "Nightsaber",
                    "Travel to Nightsaber."),
            },
        },
        {
            id = "objective-488-zenns-bidding-1",
            kind = "objective",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Zenn's Bidding: Nightsaber Fang.",
            dependsOn = { "accept-488-zenns-bidding" },
            complete = QuestObjective(488, 1, "Nightsaber Fang"),
            route = {
                Point(MAP.TELDRASSIL, 0.614, 0.588, "Nightsaber",
                    "Travel to Nightsaber."),
            },
        },
        {
            id = "objective-488-zenns-bidding-2",
            kind = "objective",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Zenn's Bidding: Strigid Owl Feather.",
            dependsOn = { "accept-488-zenns-bidding" },
            complete = QuestObjective(488, 2, "Strigid Owl Feather"),
            route = {
                Point(MAP.TELDRASSIL, 0.620, 0.512, "Strigid Owl",
                    "Travel to Strigid Owl."),
            },
        },
        {
            id = "objective-488-zenns-bidding-3",
            kind = "objective",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Zenn's Bidding: Webwood Spider Silk.",
            dependsOn = { "accept-488-zenns-bidding" },
            complete = QuestObjective(488, 3, "Webwood Spider Silk"),
            route = {
                Point(MAP.TELDRASSIL, 0.606, 0.560, "Webwood Lurker",
                    "Travel to Webwood Lurker."),
            },
        },
        {
            id = "objective-929-crown-of-the-earth-1",
            kind = "objective",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Crown of the Earth: Filled Jade Phial. Fill it at the moonwell outside Starbreeze Village. Wowhead has no moonwell pin, so this marks Gaerolas Talvethren in the village.",
            dependsOn = { "accept-929-crown-of-the-earth" },
            complete = QuestObjective(929, 1, "Filled Jade Phial"),
            route = {
                Point(MAP.TELDRASSIL, 0.662, 0.586, "Starbreeze moonwell",
                    "Travel to Starbreeze moonwell."),
            },
        },
        {
            id = "objective-2438-the-emerald-dreamcatcher-1",
            kind = "objective",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "The Emerald Dreamcatcher. It is in Tallonkai's dresser in Starbreeze Village. Wowhead has no dresser pin, so this marks Gaerolas Talvethren.",
            dependsOn = { "accept-2438-the-emerald-dreamcatcher" },
            complete = QuestObjective(2438, 1, "Emerald Dreamcatcher"),
            route = {
                Point(MAP.TELDRASSIL, 0.662, 0.586, "Starbreeze Village",
                    "Travel to Starbreeze Village."),
            },
        },
        {
            id = "turnin-475-a-troubling-breeze",
            kind = "turnin",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in A Troubling Breeze to Gaerolas Talvethren.",
            dependsOn = { "accept-475-a-troubling-breeze" },
            complete = QuestState(475, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.662, 0.586, "Gaerolas Talvethren",
                    "Travel to Gaerolas Talvethren."),
            },
        },
        {
            id = "turnin-929-crown-of-the-earth",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Crown of the Earth to Corithras Moonrage.",
            dependsOn = { "objective-929-crown-of-the-earth-1" },
            complete = QuestState(929, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.562, 0.616, "Corithras Moonrage",
                    "Travel to Corithras Moonrage."),
            },
        },
        {
            id = "accept-933-crown-of-the-earth",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Crown of the Earth from Corithras Moonrage.",
            dependsOn = { "turnin-929-crown-of-the-earth" },
            complete = QuestState(933, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.562, 0.616, "Corithras Moonrage",
                    "Travel to Corithras Moonrage."),
            },
        },
        {
            id = "turnin-2438-the-emerald-dreamcatcher",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in The Emerald Dreamcatcher to Tallonkai Swiftroot.",
            dependsOn = { "objective-2438-the-emerald-dreamcatcher-1" },
            complete = QuestState(2438, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.554, 0.568, "Tallonkai Swiftroot",
                    "Travel to Tallonkai Swiftroot."),
            },
        },
        {
            id = "accept-2459-ferocitas-the-dream-eater",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Ferocitas the Dream Eater from Tallonkai Swiftroot.",
            dependsOn = { "turnin-2438-the-emerald-dreamcatcher" },
            complete = QuestState(2459, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.554, 0.568, "Tallonkai Swiftroot",
                    "Travel to Tallonkai Swiftroot."),
            },
        },
        {
            id = "turnin-87288-soft-saber-pelts",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Soft Saber Pelts to Aldia.",
            dependsOn = { "objective-87288-soft-saber-pelts-1" },
            complete = QuestState(87288, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.554, 0.572, "Aldia",
                    "Travel to Aldia."),
            },
        },
        {
            id = "turnin-488-zenns-bidding",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Zenn's Bidding to Zenn Foulhoof.",
            dependsOn = { "objective-488-zenns-bidding-1", "objective-488-zenns-bidding-2", "objective-488-zenns-bidding-3" },
            complete = QuestState(488, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.604, 0.562, "Zenn Foulhoof",
                    "Travel to Zenn Foulhoof."),
            },
        },
        {
            id = "accept-489-seek-redemption",
            kind = "accept",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Seek Redemption! from Syral Bladeleaf.",
            dependsOn = { "turnin-488-zenns-bidding" },
            complete = QuestState(489, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.560, 0.576, "Syral Bladeleaf",
                    "Travel to Syral Bladeleaf."),
            },
        },
        {
            id = "turnin-476-gnarlpine-corruption",
            kind = "turnin",
            priority = 555,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Gnarlpine Corruption from Gaerolas Talvethren, then report to Athridas Bearmantle.",
            dependsOn = { "turnin-475-a-troubling-breeze" },
            complete = QuestState(476, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.560, 0.574, "Athridas Bearmantle",
                    "Travel to Athridas Bearmantle."),
            },
        },
        {
            id = "accept-483-the-relics-of-wakening",
            kind = "accept",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept The Relics of Wakening from Athridas Bearmantle.",
            dependsOn = { "turnin-476-gnarlpine-corruption" },
            complete = QuestState(483, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.560, 0.574, "Athridas Bearmantle",
                    "Travel to Athridas Bearmantle."),
            },
        },
        {
            id = "objective-489-seek-redemption-1",
            kind = "objective",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Seek Redemption!: Fel Cone. Fel cones fall from the trees around Dolanaar. Wowhead has no cone pin, so this marks Zenn Foulhoof.",
            dependsOn = { "accept-489-seek-redemption" },
            complete = QuestObjective(489, 1, "Fel Cone"),
            route = {
                Point(MAP.TELDRASSIL, 0.604, 0.562, "Fel cones",
                    "Travel to Fel cones."),
            },
        },
        {
            id = "turnin-489-seek-redemption",
            kind = "turnin",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Seek Redemption! to Zenn Foulhoof.",
            dependsOn = { "objective-489-seek-redemption-1" },
            complete = QuestState(489, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.604, 0.562, "Zenn Foulhoof",
                    "Travel to Zenn Foulhoof."),
            },
        },
        {
            id = "objective-2459-ferocitas-the-dream-eater-1",
            kind = "objective",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Ferocitas the Dream Eater: Gnarlpine Mystic slain.",
            dependsOn = { "accept-2459-ferocitas-the-dream-eater" },
            complete = QuestObjective(2459, 1, "Gnarlpine Mystic"),
            route = {
                Point(MAP.TELDRASSIL, 0.686, 0.534, "Gnarlpine Mystic",
                    "Travel to Gnarlpine Mystic."),
            },
        },
        {
            id = "objective-2459-ferocitas-the-dream-eater-2",
            kind = "objective",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Ferocitas the Dream Eater: Tallonkai's Jewel. Loot the Gnarlpine Necklace from Ferocitas the Dream Eater and use it.",
            dependsOn = { "accept-2459-ferocitas-the-dream-eater" },
            complete = QuestObjective(2459, 2, "Tallonkai's Jewel"),
            route = {
                Point(MAP.TELDRASSIL, 0.688, 0.536, "Ferocitas the Dream Eater",
                    "Travel to Ferocitas the Dream Eater."),
            },
        },
        {
            id = "turnin-2459-ferocitas-the-dream-eater",
            kind = "turnin",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Ferocitas the Dream Eater to Tallonkai Swiftroot.",
            dependsOn = { "objective-2459-ferocitas-the-dream-eater-1", "objective-2459-ferocitas-the-dream-eater-2" },
            complete = QuestState(2459, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.554, 0.568, "Tallonkai Swiftroot",
                    "Travel to Tallonkai Swiftroot."),
            },
        },
        {
            id = "objective-932-twisted-hatred-1",
            kind = "objective",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Twisted Hatred: Melenas' Head. Lord Melenas is inside Fel Rock, north of Dolanaar.",
            dependsOn = { "accept-932-twisted-hatred" },
            complete = QuestObjective(932, 1, "Melenas' Head"),
            route = {
                Point(MAP.TELDRASSIL, 0.526, 0.496, "Lord Melenas",
                    "Travel to Lord Melenas."),
            },
        },
        {
            id = "turnin-932-twisted-hatred",
            kind = "turnin",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Twisted Hatred to Tallonkai Swiftroot.",
            dependsOn = { "objective-932-twisted-hatred-1" },
            complete = QuestState(932, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.554, 0.568, "Tallonkai Swiftroot",
                    "Travel to Tallonkai Swiftroot."),
            },
        },
        {
            id = "accept-98403-twisted-hatred",
            kind = "accept",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Twisted Hatred from Tallonkai Swiftroot. This is an elite. Bring a group.",
            dependsOn = { "turnin-932-twisted-hatred" },
            complete = QuestState(98403, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.554, 0.568, "Tallonkai Swiftroot",
                    "Travel to Tallonkai Swiftroot."),
            },
        },
        {
            id = "objective-98403-twisted-hatred-1",
            kind = "objective",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Twisted Hatred: Befouled Webwood slain. Xethorr the Wicked is in the Cleft, northwest of Dolanaar. This is an elite. Bring a group.",
            dependsOn = { "accept-98403-twisted-hatred" },
            complete = QuestObjective(98403, 1, "Befouled Webwood"),
            route = {
                Point(MAP.TELDRASSIL, 0.492, 0.474, "Befouled Webwood",
                    "Travel to Befouled Webwood."),
            },
        },
        {
            id = "objective-98403-twisted-hatred-2",
            kind = "objective",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Twisted Hatred: Mature Fel Moss. This is an elite. Bring a group.",
            dependsOn = { "accept-98403-twisted-hatred" },
            complete = QuestObjective(98403, 2, "Mature Fel Moss"),
            route = {
                Point(MAP.TELDRASSIL, 0.514, 0.442, "Xethorr the Wicked",
                    "Travel to Xethorr the Wicked."),
            },
        },
        {
            id = "turnin-99046-the-lost-runner",
            kind = "turnin",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in The Lost Runner to Sentinel Eralya Leafshadow.",
            dependsOn = { "accept-99046-the-lost-runner" },
            complete = QuestState(99046, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.376, 0.368, "Sentinel Eralya Leafshadow",
                    "Travel to Sentinel Eralya Leafshadow."),
            },
        },
        {
            id = "turnin-99047-not-dead-yet",
            kind = "turnin",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Not Dead Yet from Sentinel Eralya Leafshadow, then tell Byancie in Dolanaar.",
            dependsOn = { "turnin-99046-the-lost-runner" },
            complete = QuestState(99047, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.552, 0.568, "Byancie",
                    "Travel to Byancie."),
            },
        },
        {
            id = "turnin-98403-twisted-hatred",
            kind = "turnin",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Twisted Hatred to Tallonkai Swiftroot.",
            dependsOn = { "objective-98403-twisted-hatred-1", "objective-98403-twisted-hatred-2" },
            complete = QuestState(98403, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.554, 0.568, "Tallonkai Swiftroot",
                    "Travel to Tallonkai Swiftroot."),
            },
        },
        {
            id = "accept-99050-the-great-tree-provides",
            kind = "accept",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept The Great Tree Provides from Byancie.",
            dependsOn = { "turnin-99047-not-dead-yet" },
            complete = QuestState(99050, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.552, 0.568, "Byancie",
                    "Travel to Byancie."),
            },
        },
        {
            id = "objective-99050-the-great-tree-provides-2",
            kind = "objective",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "The Great Tree Provides: Empty Vial. Buy it from a Dolanaar vendor. Wowhead has no vendor pin, so this marks Byancie.",
            dependsOn = { "accept-99050-the-great-tree-provides" },
            complete = QuestObjective(99050, 2, "Empty Vial"),
            route = {
                Point(MAP.TELDRASSIL, 0.552, 0.568, "Dolanaar vendor",
                    "Travel to Dolanaar vendor."),
            },
        },
        {
            id = "objective-99050-the-great-tree-provides-3",
            kind = "objective",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "The Great Tree Provides: Refreshing Spring Water. Buy it in Dolanaar. Wowhead has no vendor pin, so this marks Byancie.",
            dependsOn = { "accept-99050-the-great-tree-provides" },
            complete = QuestObjective(99050, 3, "Refreshing Spring Water"),
            route = {
                Point(MAP.TELDRASSIL, 0.552, 0.568, "Dolanaar vendor",
                    "Travel to Dolanaar vendor."),
            },
        },
        {
            id = "objective-933-crown-of-the-earth-1",
            kind = "objective",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Crown of the Earth: Filled Tourmaline Phial. The moonwell is on the shores of the Pools of Arlithrien, southeast of the Darnassus entrance. Wowhead has no moonwell pin, so this marks Sentinel Shayla Nightbreeze outside Darnassus.",
            dependsOn = { "accept-933-crown-of-the-earth" },
            complete = QuestObjective(933, 1, "Filled Tourmaline Phial"),
            route = {
                Point(MAP.TELDRASSIL, 0.384, 0.540, "Pools of Arlithrien",
                    "Travel to Pools of Arlithrien."),
            },
        },
        {
            id = "objective-487-the-road-to-darnassus-1",
            kind = "objective",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 5 } },
                },
            },
            text = "The Road to Darnassus: Gnarlpine Ambusher slain.",
            dependsOn = { "accept-487-the-road-to-darnassus" },
            complete = QuestObjective(487, 1, "Gnarlpine Ambusher"),
            route = {
                Point(MAP.TELDRASSIL, 0.478, 0.532, "Gnarlpine Ambusher",
                    "Travel to Gnarlpine Ambusher."),
            },
        },
        {
            id = "accept-490-bounty-gnarlpine-furbolg",
            kind = "accept",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Bounty: Gnarlpine Furbolg from Sentinel Shayla Nightbreeze.",
            complete = QuestState(490, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.384, 0.540, "Sentinel Shayla Nightbreeze",
                    "Travel to Sentinel Shayla Nightbreeze."),
            },
        },
        {
            id = "accept-2541-the-sleeping-druid",
            kind = "accept",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept The Sleeping Druid from Oben Rageclaw in the Ban'ethil Barrow Den.",
            dependsOn = { "accept-483-the-relics-of-wakening" },
            complete = QuestState(2541, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.450, 0.614, "Oben Rageclaw",
                    "Travel to Oben Rageclaw."),
            },
        },
        {
            id = "objective-483-the-relics-of-wakening-1",
            kind = "objective",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "The Relics of Wakening: Raven Claw Talisman. The druids store the relics in sacred chests inside the Ban'ethil Barrow Den. Wowhead has no chest pin.",
            dependsOn = { "accept-483-the-relics-of-wakening" },
            complete = QuestObjective(483, 1, "Raven Claw Talisman"),
            route = {
                Point(MAP.TELDRASSIL, 0.450, 0.614, "Ban'ethil Barrow Den",
                    "Travel to Ban'ethil Barrow Den."),
            },
        },
        {
            id = "objective-483-the-relics-of-wakening-2",
            kind = "objective",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "The Relics of Wakening: Black Feather Quill. Wowhead has no chest pin, so this marks Oben Rageclaw in the Ban'ethil Barrow Den.",
            dependsOn = { "accept-483-the-relics-of-wakening" },
            complete = QuestObjective(483, 2, "Black Feather Quill"),
            route = {
                Point(MAP.TELDRASSIL, 0.450, 0.614, "Ban'ethil Barrow Den",
                    "Travel to Ban'ethil Barrow Den."),
            },
        },
        {
            id = "objective-483-the-relics-of-wakening-3",
            kind = "objective",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "The Relics of Wakening: Sapphire of Sky. Wowhead has no chest pin, so this marks Oben Rageclaw in the Ban'ethil Barrow Den.",
            dependsOn = { "accept-483-the-relics-of-wakening" },
            complete = QuestObjective(483, 3, "Sapphire of Sky"),
            route = {
                Point(MAP.TELDRASSIL, 0.450, 0.614, "Ban'ethil Barrow Den",
                    "Travel to Ban'ethil Barrow Den."),
            },
        },
        {
            id = "objective-483-the-relics-of-wakening-4",
            kind = "objective",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "The Relics of Wakening: Rune of Nesting. Wowhead has no chest pin, so this marks Oben Rageclaw in the Ban'ethil Barrow Den.",
            dependsOn = { "accept-483-the-relics-of-wakening" },
            complete = QuestObjective(483, 4, "Rune of Nesting"),
            route = {
                Point(MAP.TELDRASSIL, 0.450, 0.614, "Ban'ethil Barrow Den",
                    "Travel to Ban'ethil Barrow Den."),
            },
        },
        {
            id = "objective-490-bounty-gnarlpine-furbolg-1",
            kind = "objective",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 5 } },
                },
            },
            text = "Bounty: Gnarlpine Furbolg: Gnarlpine Fang. Any Gnarlpine furbolg drops them, including the ones in the Ban'ethil Barrow Den.",
            dependsOn = { "accept-490-bounty-gnarlpine-furbolg" },
            complete = QuestObjective(490, 1, "Gnarlpine Fang"),
            route = {
                Point(MAP.TELDRASSIL, 0.440, 0.582, "Gnarlpine Defender",
                    "Travel to Gnarlpine Defender."),
            },
        },
        {
            id = "objective-2541-the-sleeping-druid-1",
            kind = "objective",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 3 } },
                },
            },
            text = "The Sleeping Druid: Shaman Voodoo Charm.",
            dependsOn = { "accept-2541-the-sleeping-druid" },
            complete = QuestObjective(2541, 1, "Shaman Voodoo Charm"),
            route = {
                Point(MAP.TELDRASSIL, 0.440, 0.582, "Gnarlpine Shaman",
                    "Travel to Gnarlpine Shaman."),
            },
        },
        {
            id = "turnin-2541-the-sleeping-druid",
            kind = "turnin",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in The Sleeping Druid to Oben Rageclaw.",
            dependsOn = { "objective-2541-the-sleeping-druid-1" },
            complete = QuestState(2541, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.450, 0.614, "Oben Rageclaw",
                    "Travel to Oben Rageclaw."),
            },
        },
        {
            id = "accept-2561-druid-of-the-claw",
            kind = "accept",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Druid of the Claw from Oben Rageclaw.",
            dependsOn = { "turnin-2541-the-sleeping-druid" },
            complete = QuestState(2561, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.450, 0.614, "Oben Rageclaw",
                    "Travel to Oben Rageclaw."),
            },
        },
        {
            id = "objective-2561-druid-of-the-claw-1",
            kind = "objective",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 3 } },
                },
            },
            text = "Druid of the Claw: Release Oben Rageclaw's spirit. Kill his soulless body in the deepest part of the den, then use the Voodoo Charm on the corpse.",
            dependsOn = { "accept-2561-druid-of-the-claw" },
            complete = QuestObjective(2561, 1, "Release Oben Rageclaw's spirit"),
            route = {
                Point(MAP.TELDRASSIL, 0.454, 0.588, "Rageclaw",
                    "Travel to Rageclaw."),
            },
        },
        {
            id = "turnin-2561-druid-of-the-claw",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Druid of the Claw to Oben Rageclaw.",
            dependsOn = { "objective-2561-druid-of-the-claw-1" },
            complete = QuestState(2561, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.450, 0.614, "Oben Rageclaw",
                    "Travel to Oben Rageclaw."),
            },
        },
        {
            id = "accept-99053-escaping-banethil",
            kind = "accept",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Escaping Ban'ethil from Sentinel Lynessa Duskblossom.",
            dependsOn = { "accept-483-the-relics-of-wakening" },
            complete = QuestState(99053, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.446, 0.588, "Sentinel Lynessa Duskblossom",
                    "Travel to Sentinel Lynessa Duskblossom."),
            },
        },
        {
            id = "objective-99053-escaping-banethil-1",
            kind = "objective",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Escaping Ban'ethil: Escort Lynessa Duskblossom out of the Ban'ethil Barrow Den.",
            dependsOn = { "accept-99053-escaping-banethil" },
            complete = QuestObjective(99053, 1, "Escort Lynessa"),
            route = {
                Point(MAP.TELDRASSIL, 0.446, 0.588, "Sentinel Lynessa Duskblossom",
                    "Travel to Sentinel Lynessa Duskblossom."),
            },
        },
        {
            id = "turnin-933-crown-of-the-earth",
            kind = "turnin",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Crown of the Earth to Corithras Moonrage.",
            dependsOn = { "objective-933-crown-of-the-earth-1" },
            complete = QuestState(933, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.562, 0.616, "Corithras Moonrage",
                    "Travel to Corithras Moonrage."),
            },
        },
        {
            id = "accept-7383-crown-of-the-earth",
            kind = "accept",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Crown of the Earth from Corithras Moonrage.",
            dependsOn = { "turnin-933-crown-of-the-earth" },
            complete = QuestState(7383, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.562, 0.616, "Corithras Moonrage",
                    "Travel to Corithras Moonrage."),
            },
        },
        {
            id = "turnin-487-the-road-to-darnassus",
            kind = "turnin",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in The Road to Darnassus to Moon Priestess Amara.",
            dependsOn = { "objective-487-the-road-to-darnassus-1" },
            complete = QuestState(487, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.556, 0.584, "Moon Priestess Amara",
                    "Travel to Moon Priestess Amara."),
            },
        },
        {
            id = "turnin-483-the-relics-of-wakening",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in The Relics of Wakening to Athridas Bearmantle.",
            dependsOn = { "objective-483-the-relics-of-wakening-1", "objective-483-the-relics-of-wakening-2", "objective-483-the-relics-of-wakening-3", "objective-483-the-relics-of-wakening-4" },
            complete = QuestState(483, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.560, 0.574, "Athridas Bearmantle",
                    "Travel to Athridas Bearmantle."),
            },
        },
        {
            id = "accept-486-ursal-the-mauler",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Ursal the Mauler from Athridas Bearmantle.",
            dependsOn = { "turnin-483-the-relics-of-wakening" },
            complete = QuestState(486, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.560, 0.574, "Athridas Bearmantle",
                    "Travel to Athridas Bearmantle."),
            },
        },
        {
            id = "turnin-99053-escaping-banethil",
            kind = "turnin",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Escaping Ban'ethil to Sentinel Kyra Starsong.",
            dependsOn = { "objective-99053-escaping-banethil-1" },
            complete = QuestState(99053, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.560, 0.594, "Sentinel Kyra Starsong",
                    "Travel to Sentinel Kyra Starsong."),
            },
        },
        {
            id = "objective-486-ursal-the-mauler-1",
            kind = "objective",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Ursal the Mauler: Ursal the Mauler slain. He is in Gnarlpine Hold to the southwest.",
            dependsOn = { "accept-486-ursal-the-mauler" },
            complete = QuestObjective(486, 1, "Ursal the Mauler"),
            route = {
                Point(MAP.TELDRASSIL, 0.394, 0.802, "Ursal the Mauler",
                    "Travel to Ursal the Mauler."),
            },
        },
        {
            id = "accept-930-the-glowing-fruit",
            kind = "accept",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept The Glowing Fruit from the Strange Fruited Plant.",
            complete = QuestState(930, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.426, 0.761, "Strange Fruited Plant",
                    "Travel to Strange Fruited Plant."),
            },
        },
        {
            id = "turnin-486-ursal-the-mauler",
            kind = "turnin",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Ursal the Mauler to Athridas Bearmantle.",
            dependsOn = { "objective-486-ursal-the-mauler-1" },
            complete = QuestState(486, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.560, 0.574, "Athridas Bearmantle",
                    "Travel to Athridas Bearmantle."),
            },
        },
        {
            id = "turnin-997-denalans-earth",
            kind = "turnin",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Denalan's Earth to Denalan.",
            dependsOn = { "accept-997-denalans-earth" },
            complete = QuestState(997, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "accept-918-timberling-seeds",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Timberling Seeds from Denalan.",
            dependsOn = { "turnin-997-denalans-earth" },
            complete = QuestState(918, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "accept-919-timberling-sprouts",
            kind = "accept",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Timberling Sprouts from Denalan.",
            dependsOn = { "turnin-997-denalans-earth" },
            complete = QuestState(919, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "objective-918-timberling-seeds-1",
            kind = "objective",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Timberling Seeds: Timberling Seed.",
            dependsOn = { "accept-918-timberling-seeds" },
            complete = QuestObjective(918, 1, "Timberling Seed"),
            route = {
                Point(MAP.TELDRASSIL, 0.594, 0.722, "Timberling",
                    "Travel to Timberling."),
            },
        },
        {
            id = "objective-919-timberling-sprouts-1",
            kind = "objective",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Timberling Sprouts: Timberling Sprout. Sprouts grow around Lake Al'Ameth. Wowhead has no sprout pin, so this marks the timberlings.",
            dependsOn = { "accept-919-timberling-sprouts" },
            complete = QuestObjective(919, 1, "Timberling Sprout"),
            route = {
                Point(MAP.TELDRASSIL, 0.594, 0.722, "Lake Al'Ameth",
                    "Travel to Lake Al'Ameth."),
            },
        },
        {
            id = "objective-99050-the-great-tree-provides-1",
            kind = "objective",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "The Great Tree Provides: Dewy Lasher Frond. Lashers grow around Lake Al'Ameth and along Wellspring Lake.",
            dependsOn = { "accept-99050-the-great-tree-provides" },
            complete = QuestObjective(99050, 1, "Dewy Lasher Frond"),
            route = {
                Point(MAP.TELDRASSIL, 0.590, 0.640, "Lasher Sproutling",
                    "Travel to Lasher Sproutling."),
            },
        },
        {
            id = "turnin-918-timberling-seeds",
            kind = "turnin",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Timberling Seeds to Denalan.",
            dependsOn = { "objective-918-timberling-seeds-1" },
            complete = QuestState(918, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "accept-922-rellian-greenspyre",
            kind = "accept",
            priority = 1125,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Rellian Greenspyre from Denalan.",
            dependsOn = { "turnin-918-timberling-seeds" },
            complete = QuestState(922, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "turnin-919-timberling-sprouts",
            kind = "turnin",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Timberling Sprouts to Denalan.",
            dependsOn = { "objective-919-timberling-sprouts-1" },
            complete = QuestState(919, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "turnin-99050-the-great-tree-provides",
            kind = "turnin",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in The Great Tree Provides to Byancie.",
            dependsOn = { "objective-99050-the-great-tree-provides-1", "objective-99050-the-great-tree-provides-2", "objective-99050-the-great-tree-provides-3" },
            complete = QuestState(99050, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.552, 0.568, "Byancie",
                    "Travel to Byancie."),
            },
        },
        {
            id = "turnin-99073-easing-suffering",
            kind = "turnin",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Easing Suffering from Byancie, then take the salve to Sentinel Eralya Leafshadow.",
            dependsOn = { "turnin-99050-the-great-tree-provides" },
            complete = QuestState(99073, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.376, 0.368, "Sentinel Eralya Leafshadow",
                    "Travel to Sentinel Eralya Leafshadow."),
            },
        },
        {
            id = "objective-7383-crown-of-the-earth-1",
            kind = "objective",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Crown of the Earth: Filled Amethyst Phial. Fill it at the moonwell under the Oracle Tree. Wowhead has no moonwell pin, so this marks Sentinel Arynia Cloudsbreak.",
            dependsOn = { "accept-7383-crown-of-the-earth" },
            complete = QuestObjective(7383, 1, "Filled Amethyst Phial"),
            route = {
                Point(MAP.TELDRASSIL, 0.382, 0.344, "Oracle Tree moonwell",
                    "Travel to Oracle Tree moonwell."),
            },
        },
        {
            id = "accept-937-the-enchanted-glade",
            kind = "accept",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "Accept The Enchanted Glade from Sentinel Arynia Cloudsbreak.",
            complete = QuestState(937, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.382, 0.344, "Sentinel Arynia Cloudsbreak",
                    "Travel to Sentinel Arynia Cloudsbreak."),
            },
        },
        {
            id = "objective-937-the-enchanted-glade-1",
            kind = "objective",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "The Enchanted Glade: Bloodfeather Belt.",
            dependsOn = { "accept-937-the-enchanted-glade" },
            complete = QuestObjective(937, 1, "Bloodfeather Belt"),
            route = {
                Point(MAP.TELDRASSIL, 0.338, 0.354, "Bloodfeather Harpy",
                    "Travel to Bloodfeather Harpy."),
            },
        },
        {
            id = "accept-938-mist",
            kind = "accept",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 7 } },
                },
            },
            text = "Accept Mist from Mist.",
            dependsOn = { "accept-937-the-enchanted-glade" },
            complete = QuestState(938, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.314, 0.316, "Mist",
                    "Travel to Mist."),
            },
        },
        {
            id = "objective-938-mist-1",
            kind = "objective",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 7 } },
                },
            },
            text = "Mist: Lead Mist safely to Sentinel Arynia Cloudsbreak.",
            dependsOn = { "accept-938-mist" },
            complete = QuestObjective(938, 1, "Lead Mist"),
            route = {
                Point(MAP.TELDRASSIL, 0.382, 0.344, "Sentinel Arynia Cloudsbreak",
                    "Travel to Sentinel Arynia Cloudsbreak."),
            },
        },
        {
            id = "turnin-938-mist",
            kind = "turnin",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 7 } },
                },
            },
            text = "Turn in Mist to Sentinel Arynia Cloudsbreak.",
            dependsOn = { "objective-938-mist-1" },
            complete = QuestState(938, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.382, 0.344, "Sentinel Arynia Cloudsbreak",
                    "Travel to Sentinel Arynia Cloudsbreak."),
            },
        },
        {
            id = "turnin-937-the-enchanted-glade",
            kind = "turnin",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "Turn in The Enchanted Glade to Sentinel Arynia Cloudsbreak.",
            dependsOn = { "objective-937-the-enchanted-glade-1" },
            complete = QuestState(937, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.382, 0.344, "Sentinel Arynia Cloudsbreak",
                    "Travel to Sentinel Arynia Cloudsbreak."),
            },
        },
        {
            id = "accept-98392-darkness-in-the-glade",
            kind = "accept",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "Accept Darkness in the Glade from Sentinel Arynia Cloudsbreak.",
            dependsOn = { "turnin-937-the-enchanted-glade" },
            complete = QuestState(98392, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.382, 0.344, "Sentinel Arynia Cloudsbreak",
                    "Travel to Sentinel Arynia Cloudsbreak."),
            },
        },
        {
            id = "objective-98392-darkness-in-the-glade-1",
            kind = "objective",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "Darkness in the Glade: Hatescreech's Amulet.",
            dependsOn = { "accept-98392-darkness-in-the-glade" },
            complete = QuestObjective(98392, 1, "Hatescreech's Amulet"),
            route = {
                Point(MAP.TELDRASSIL, 0.350, 0.392, "Hatescreech",
                    "Travel to Hatescreech."),
            },
        },
        {
            id = "objective-98392-darkness-in-the-glade-2",
            kind = "objective",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "Darkness in the Glade: Windmistress Gaedress' Amulet.",
            dependsOn = { "accept-98392-darkness-in-the-glade" },
            complete = QuestObjective(98392, 2, "Windmistress Gaedress' Amulet"),
            route = {
                Point(MAP.TELDRASSIL, 0.332, 0.360, "Windmistress Gaedress",
                    "Travel to Windmistress Gaedress."),
            },
        },
        {
            id = "objective-98392-darkness-in-the-glade-3",
            kind = "objective",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "Darkness in the Glade: Witchmother Arysa's Amulet.",
            dependsOn = { "accept-98392-darkness-in-the-glade" },
            complete = QuestObjective(98392, 3, "Witchmother Arysa's Amulet"),
            route = {
                Point(MAP.TELDRASSIL, 0.342, 0.280, "Witchmother Arysa",
                    "Travel to Witchmother Arysa."),
            },
        },
        {
            id = "turnin-98392-darkness-in-the-glade",
            kind = "turnin",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "Turn in Darkness in the Glade to Sentinel Arynia Cloudsbreak.",
            dependsOn = { "objective-98392-darkness-in-the-glade-1", "objective-98392-darkness-in-the-glade-2", "objective-98392-darkness-in-the-glade-3" },
            complete = QuestState(98392, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.382, 0.344, "Sentinel Arynia Cloudsbreak",
                    "Travel to Sentinel Arynia Cloudsbreak."),
            },
        },
        {
            id = "turnin-98398-the-oracle-tree",
            kind = "turnin",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "Accept The Oracle Tree from Sentinel Arynia Cloudsbreak, then speak with the Oracle Tree. Wowhead has no tree pin, so this marks Sentinel Arynia Cloudsbreak beside it.",
            dependsOn = { "turnin-98392-darkness-in-the-glade" },
            complete = QuestState(98398, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.382, 0.344, "Oracle Tree",
                    "Travel to Oracle Tree."),
            },
        },
        {
            id = "accept-940-teldrassil",
            kind = "accept",
            priority = 1285,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "Accept Teldrassil from Sentinel Arynia Cloudsbreak.",
            dependsOn = { "turnin-98398-the-oracle-tree" },
            complete = QuestState(940, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.382, 0.344, "Sentinel Arynia Cloudsbreak",
                    "Travel to Sentinel Arynia Cloudsbreak."),
            },
        },
        {
            id = "accept-931-the-shimmering-frond",
            kind = "accept",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept The Shimmering Frond from the Strange Fronded Plant.",
            complete = QuestState(931, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.347, 0.288, "Strange Fronded Plant",
                    "Travel to Strange Fronded Plant."),
            },
        },
        {
            id = "turnin-927-the-moss-twined-heart",
            kind = "turnin",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 5 } },
                    { quest = { id = 927, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in The Moss-twined Heart to Denalan if you took it from Blackmoss the Fetid.",
            complete = QuestState(927, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "turnin-930-the-glowing-fruit",
            kind = "turnin",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in The Glowing Fruit to Denalan.",
            dependsOn = { "accept-930-the-glowing-fruit" },
            complete = QuestState(930, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "turnin-931-the-shimmering-frond",
            kind = "turnin",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in The Shimmering Frond to Denalan.",
            dependsOn = { "accept-931-the-shimmering-frond" },
            complete = QuestState(931, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "accept-2399-the-sprouted-fronds",
            kind = "accept",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept The Sprouted Fronds from the Sprouted Frond in Denalan's planter.",
            dependsOn = { "turnin-930-the-glowing-fruit", "turnin-931-the-shimmering-frond" },
            complete = QuestState(2399, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.685, "Sprouted Frond",
                    "Travel to Sprouted Frond."),
            },
        },
        {
            id = "turnin-2399-the-sprouted-fronds",
            kind = "turnin",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in The Sprouted Fronds to the Sprouted Frond.",
            dependsOn = { "accept-2399-the-sprouted-fronds" },
            complete = QuestState(2399, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.685, "Sprouted Frond",
                    "Travel to Sprouted Frond."),
            },
        },
        {
            id = "accept-941-planting-the-heart",
            kind = "accept",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 9 } },
                    { quest = { id = 927, state = "completed" } },
                },
            },
            text = "Accept Planting the Heart from Denalan.",
            dependsOn = { "turnin-927-the-moss-twined-heart" },
            complete = QuestState(941, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "objective-941-planting-the-heart-1",
            kind = "objective",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 9 } },
                    { quest = { id = 927, state = "completed" } },
                },
            },
            text = "Planting the Heart: plant the Tainted Heart in Denalan's Planter.",
            dependsOn = { "accept-941-planting-the-heart" },
            complete = QuestObjective(941, 1, "Tainted Heart"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.685, "Denalan's Planter",
                    "Travel to Denalan's Planter."),
            },
        },
        {
            id = "turnin-941-planting-the-heart",
            kind = "turnin",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 9 } },
                    { quest = { id = 927, state = "completed" } },
                },
            },
            text = "Turn in Planting the Heart to Denalan's Planter.",
            dependsOn = { "objective-941-planting-the-heart-1" },
            complete = QuestState(941, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.685, "Denalan's Planter",
                    "Travel to Denalan's Planter."),
            },
        },
        {
            id = "turnin-7383-crown-of-the-earth",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Crown of the Earth to Corithras Moonrage.",
            dependsOn = { "objective-7383-crown-of-the-earth-1" },
            complete = QuestState(7383, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.562, 0.616, "Corithras Moonrage",
                    "Travel to Corithras Moonrage."),
            },
        },
        {
            id = "turnin-490-bounty-gnarlpine-furbolg",
            kind = "turnin",
            priority = 1455,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Bounty: Gnarlpine Furbolg to Sentinel Shayla Nightbreeze. She stands outside Darnassus, on the way into the city.",
            dependsOn = { "objective-490-bounty-gnarlpine-furbolg-1" },
            complete = QuestState(490, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.384, 0.540, "Sentinel Shayla Nightbreeze",
                    "Travel to Sentinel Shayla Nightbreeze."),
            },
        },
        {
            id = "turnin-940-teldrassil",
            kind = "turnin",
            priority = 1387,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 6 } },
                },
            },
            text = "Turn in Teldrassil to Arch Druid Fandral Staghelm.",
            dependsOn = { "accept-940-teldrassil" },
            complete = QuestState(940, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.348, 0.088, "Arch Druid Fandral Staghelm",
                    "Travel to Arch Druid Fandral Staghelm."),
            },
        },
        {
            id = "turnin-935-crown-of-the-earth",
            kind = "turnin",
            priority = 1385,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Crown of the Earth from Corithras Moonrage, then bring the filled vessel to Arch Druid Fandral Staghelm in Darnassus.",
            dependsOn = { "turnin-7383-crown-of-the-earth" },
            complete = QuestState(935, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.348, 0.088, "Arch Druid Fandral Staghelm",
                    "Travel to Arch Druid Fandral Staghelm."),
            },
        },
        {
            id = "turnin-98046-crown-of-the-earth",
            kind = "turnin",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Crown of the Earth from Arch Druid Fandral Staghelm, then bring the drained vessel to Priestess Lariia in the Temple of the Moon.",
            dependsOn = { "turnin-935-crown-of-the-earth" },
            complete = QuestState(98046, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.400, 0.874, "Lariia",
                    "Travel to Lariia."),
            },
        },
        {
            id = "turnin-98065-crown-of-the-earth",
            kind = "turnin",
            priority = 1430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Crown of the Earth from Priestess Lariia, then bring the moonwell remnants to Tyrande Whisperwind.",
            dependsOn = { "turnin-98046-crown-of-the-earth" },
            complete = QuestState(98065, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.390, 0.812, "Tyrande Whisperwind",
                    "Travel to Tyrande Whisperwind."),
            },
        },
        {
            id = "turnin-922-rellian-greenspyre",
            kind = "turnin",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Rellian Greenspyre to Rellian Greenspyre.",
            dependsOn = { "accept-922-rellian-greenspyre" },
            complete = QuestState(922, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.384, 0.216, "Rellian Greenspyre",
                    "Travel to Rellian Greenspyre."),
            },
        },
        {
            id = "accept-923-tumors",
            kind = "accept",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Tumors from Rellian Greenspyre.",
            dependsOn = { "turnin-922-rellian-greenspyre" },
            complete = QuestState(923, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.384, 0.216, "Rellian Greenspyre",
                    "Travel to Rellian Greenspyre."),
            },
        },
        {
            id = "objective-923-tumors-1",
            kind = "objective",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Tumors: Mossy Tumor. The most tainted timberlings wander Wellspring Lake.",
            dependsOn = { "accept-923-tumors" },
            complete = QuestObjective(923, 1, "Mossy Tumor"),
            route = {
                Point(MAP.TELDRASSIL, 0.432, 0.358, "Timberling Mire Beast",
                    "Travel to Timberling Mire Beast."),
            },
        },
        {
            id = "turnin-923-tumors",
            kind = "turnin",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Tumors to Rellian Greenspyre.",
            dependsOn = { "objective-923-tumors-1" },
            complete = QuestState(923, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.384, 0.216, "Rellian Greenspyre",
                    "Travel to Rellian Greenspyre."),
            },
        },
        {
            id = "turnin-2498-return-to-denalan",
            kind = "turnin",
            priority = 1480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Return to Denalan from Rellian Greenspyre, then speak with Denalan at Lake Al'Ameth.",
            dependsOn = { "turnin-923-tumors" },
            complete = QuestState(2498, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "accept-2499-oakenscowl",
            kind = "accept",
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Oakenscowl from Denalan. This is an elite. Bring a group.",
            dependsOn = { "turnin-2498-return-to-denalan" },
            complete = QuestState(2499, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
        {
            id = "objective-2499-oakenscowl-1",
            kind = "objective",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Oakenscowl: Gargantuan Tumor. Oakenscowl is in the cave on the southern bank of Lake Al'Ameth. This is an elite. Bring a group.",
            dependsOn = { "accept-2499-oakenscowl" },
            complete = QuestObjective(2499, 1, "Gargantuan Tumor"),
            route = {
                Point(MAP.TELDRASSIL, 0.536, 0.750, "Oakenscowl",
                    "Travel to Oakenscowl."),
            },
        },
        {
            id = "turnin-2499-oakenscowl",
            kind = "turnin",
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Oakenscowl to Denalan.",
            dependsOn = { "objective-2499-oakenscowl-1" },
            complete = QuestState(2499, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.608, 0.684, "Denalan",
                    "Travel to Denalan."),
            },
        },
    },
})
