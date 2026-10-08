local _, ns = ...

-- Forever Casual spine: Stranglethorn Vale & Swamp of Sorrows (40-41)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves:
-- 93663 Lost in Transit from Dar in Stonard; turn in to Magtoor at the Harborage.
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
    THE_BARRENS = 1413,
    DUSKWOOD = 1431,
    STRANGLETHORN_VALE = 1434,
    SWAMP_OF_SORROWS = 1435,
}

ns:RegisterGuide({
    id = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
    title = "Stranglethorn Vale & Swamp of Sorrows",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 40 } },
        },
    },
    goals = {
        {
            id = "turnin-1270-stinky-s-escape",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stinky's Escape.",
            complete = QuestState(1270, "completed"),
            route = {
                Point(1413, 0.6237, 0.3762, "Stinky's Escape",
                    "Travel to Stinky's Escape."),
            },
        },
        {
            id = "accept-577-some-assembly-required",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Some Assembly Required.",
            complete = QuestState(577, "activeOrCompleted"),
            route = {
                Point(1434, 0.2829, 0.7759, "Some Assembly Required",
                    "Travel to Some Assembly Required."),
            },
        },
        {
            id = "accept-600-venture-company-mining",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept Venture Company Mining.",
            complete = QuestState(600, "activeOrCompleted"),
            route = {
                Point(1434, 0.2712, 0.7721, "Venture Company Mining",
                    "Travel to Venture Company Mining."),
            },
        },
        {
            id = "accept-209-skullsplitter-tusks",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept Skullsplitter Tusks.",
            complete = QuestState(209, "activeOrCompleted"),
            route = {
                Point(1434, 0.2700, 0.7713, "Skullsplitter Tusks",
                    "Travel to Skullsplitter Tusks."),
            },
        },
        {
            id = "turnin-669-sunken-treasure",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in Sunken Treasure.",
            complete = QuestState(669, "completed"),
            route = {
                Point(1434, 0.2717, 0.7701, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "accept-572-mok-thardin-s-enchantment",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Mok'thardin's Enchantment.",
            complete = QuestState(572, "activeOrCompleted"),
            route = {
                Point(1434, 0.3212, 0.2924, "Mok'thardin's Enchantment",
                    "Travel to Mok'thardin's Enchantment."),
            },
        },
        {
            id = "accept-584-bloodscalp-clan-heads",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Bloodscalp Clan Heads.",
            complete = QuestState(584, "activeOrCompleted"),
            route = {
                Point(1434, 0.3216, 0.2772, "Bloodscalp Clan Heads",
                    "Travel to Bloodscalp Clan Heads."),
            },
        },
        {
            id = "accept-598-split-bone-necklace",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Split Bone Necklace.",
            complete = QuestState(598, "activeOrCompleted"),
            route = {
                Point(1434, 0.3227, 0.2771, "Split Bone Necklace",
                    "Travel to Split Bone Necklace."),
            },
        },
        {
            id = "turnin-1240-the-troll-witchdoctor",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Troll Witchdoctor.",
            complete = QuestState(1240, "completed"),
            route = {
                Point(1434, 0.3227, 0.2771, "The Troll Witchdoctor",
                    "Travel to The Troll Witchdoctor."),
            },
        },
        {
            id = "objective-584-2-nezzliok-the-dire",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Kill Nezzliok the Dire.",
            complete = QuestObjective(584, 2, "Nezzliok the Dire"),
            dependsOn = { "accept-584-bloodscalp-clan-heads" },
            route = {
                Point(1434, 0.2143, 0.1013, "Nezzliok the Dire",
                    "Travel to Nezzliok the Dire."),
            },
        },
        {
            id = "objective-584-1-gan-zulah",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Kill Gan'zulah.",
            complete = QuestObjective(584, 1, "Gan'zulah"),
            dependsOn = { "accept-584-bloodscalp-clan-heads" },
            route = {
                Point(1434, 0.2344, 0.0812, "Gan'zulah",
                    "Travel to Gan'zulah."),
            },
        },
        {
            id = "turnin-584-bloodscalp-clan-heads",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Bloodscalp Clan Heads.",
            complete = QuestState(584, "completed"),
            dependsOn = { "accept-584-bloodscalp-clan-heads", "objective-584-2-nezzliok-the-dire", "objective-584-1-gan-zulah" },
            route = {
                Point(1434, 0.3222, 0.2760, "Bloodscalp Clan Heads",
                    "Travel to Bloodscalp Clan Heads."),
            },
        },
        {
            id = "accept-585-speaking-with-nezzliok",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Speaking with Nezzliok.",
            complete = QuestState(585, "activeOrCompleted"),
            route = {
                Point(1434, 0.3222, 0.2760, "Speaking with Nezzliok",
                    "Travel to Speaking with Nezzliok."),
            },
        },
        {
            id = "objective-572-1-jungle-stalker",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Kill Jungle Stalker.",
            complete = QuestObjective(572, 1, "Jungle Stalker"),
            dependsOn = { "accept-572-mok-thardin-s-enchantment" },
            route = {
                Point(1434, 0.3340, 0.4040, "Jungle Stalker",
                    "Travel to Jungle Stalker."),
            },
        },
        {
            id = "objective-600-1-venture-co-strip-miner",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Kill Venture Co. Strip Miner.",
            complete = QuestObjective(600, 1, "Venture Co. Strip Miner"),
            dependsOn = { "accept-600-venture-company-mining" },
            route = {
                Point(1434, 0.4140, 0.4460, "Venture Co. Strip Miner",
                    "Travel to Venture Co. Strip Miner."),
            },
        },
        {
            id = "objective-577-1-snapjaw-crocolisk",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Kill Snapjaw Crocolisk.",
            complete = QuestObjective(577, 1, "Snapjaw Crocolisk"),
            dependsOn = { "accept-577-some-assembly-required" },
            route = {
                Point(1434, 0.3840, 0.3060, "Snapjaw Crocolisk",
                    "Travel to Snapjaw Crocolisk."),
            },
        },
        {
            id = "turnin-572-mok-thardin-s-enchantment",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Mok'thardin's Enchantment.",
            complete = QuestState(572, "completed"),
            dependsOn = { "accept-572-mok-thardin-s-enchantment", "objective-572-1-jungle-stalker" },
            route = {
                Point(1434, 0.3212, 0.2924, "Mok'thardin's Enchantment",
                    "Travel to Mok'thardin's Enchantment."),
            },
        },
        {
            id = "turnin-577-some-assembly-required",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Some Assembly Required.",
            complete = QuestState(577, "completed"),
            dependsOn = { "accept-577-some-assembly-required", "objective-577-1-snapjaw-crocolisk" },
            route = {
                Point(1434, 0.2829, 0.7759, "Some Assembly Required",
                    "Travel to Some Assembly Required."),
            },
        },
        {
            id = "accept-628-excelsior",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Excelsior.",
            complete = QuestState(628, "activeOrCompleted"),
            route = {
                Point(1434, 0.2829, 0.7759, "Excelsior",
                    "Travel to Excelsior."),
            },
        },
        {
            id = "turnin-600-venture-company-mining",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in Venture Company Mining.",
            complete = QuestState(600, "completed"),
            dependsOn = { "accept-600-venture-company-mining", "objective-600-1-venture-co-strip-miner" },
            route = {
                Point(1434, 0.2712, 0.7721, "Venture Company Mining",
                    "Travel to Venture Company Mining."),
            },
        },
        {
            id = "accept-1116-dream-dust-in-the-swamp",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Dream Dust in the Swamp.",
            complete = QuestState(1116, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Dream Dust in the Swamp",
                    "Travel to Dream Dust in the Swamp."),
            },
        },
        {
            id = "turnin-209-skullsplitter-tusks",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in Skullsplitter Tusks.",
            complete = QuestState(209, "completed"),
            dependsOn = { "accept-209-skullsplitter-tusks" },
            route = {
                Point(1434, 0.2700, 0.7713, "Skullsplitter Tusks",
                    "Travel to Skullsplitter Tusks."),
            },
        },
        {
            id = "turnin-598-split-bone-necklace",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Split Bone Necklace.",
            complete = QuestState(598, "completed"),
            dependsOn = { "accept-598-split-bone-necklace" },
            route = {
                Point(1434, 0.3227, 0.2771, "Split Bone Necklace",
                    "Travel to Split Bone Necklace."),
            },
        },
        {
            id = "turnin-585-speaking-with-nezzliok",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Speaking with Nezzliok.",
            complete = QuestState(585, "completed"),
            dependsOn = { "accept-585-speaking-with-nezzliok" },
            route = {
                Point(1434, 0.3222, 0.2760, "Speaking with Nezzliok",
                    "Travel to Speaking with Nezzliok."),
            },
        },
        {
            id = "accept-1261-marg-speaks",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept Marg Speaks.",
            complete = QuestState(1261, "activeOrCompleted"),
            route = {
                Point(1434, 0.3222, 0.2760, "Marg Speaks",
                    "Travel to Marg Speaks."),
            },
        },
        {
            id = "turnin-196-raptor-mastery",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in Raptor Mastery.",
            complete = QuestState(196, "completed"),
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "accept-197-raptor-mastery",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept Raptor Mastery.",
            complete = QuestState(197, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "accept-1372-nothing-but-the-truth",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Nothing But The Truth.",
            complete = QuestState(1372, "activeOrCompleted"),
            route = {
                Point(1431, 0.8781, 0.3563, "Nothing But The Truth",
                    "Travel to Nothing But The Truth."),
            },
        },
        {
            id = "turnin-1372-nothing-but-the-truth",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Nothing But The Truth.",
            complete = QuestState(1372, "completed"),
            dependsOn = { "accept-1372-nothing-but-the-truth" },
            route = {
                Point(1431, 0.8746, 0.3525, "Nothing But The Truth",
                    "Travel to Nothing But The Truth."),
            },
        },
        {
            id = "objective-1116-1-adolescent-whelp",
            kind = "objective",
            priority = 300,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Kill Adolescent Whelp.",
            complete = QuestObjective(1116, 1, "Adolescent Whelp"),
            dependsOn = { "accept-1116-dream-dust-in-the-swamp" },
            route = {
                Point(1435, 0.1240, 0.5740, "Adolescent Whelp",
                    "Travel to Adolescent Whelp."),
            },
        },
        {
            id = "accept-698-lack-of-surplus",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Lack of Surplus.",
            complete = QuestState(698, "activeOrCompleted"),
            route = {
                Point(1435, 0.4470, 0.5720, "Lack of Surplus",
                    "Travel to Lack of Surplus."),
            },
        },
        {
            id = "woven-accept-93663-lost-in-transit",
            kind = "accept",
            priority = 501,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Accept Lost in Transit from Dar in Stonard.",
            complete = QuestState(93663, "activeOrCompleted"),
            route = {
                Point(1435, 0.4480, 0.5720, "Dar",
                    "Travel to Dar."),
            },
        },
        {
            id = "woven-objective-93663-lost-in-transit",
            kind = "objective",
            priority = 502,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Lost in Transit: recover the Courier's Shipment.",
            complete = QuestObjective(93663, 1, "Courier's Shipment"),
            dependsOn = { "woven-accept-93663-lost-in-transit" },
            useClientPin = true,
            route = {
                Point(1435, 0.4480, 0.5720, "Dar",
                    "Travel to Dar."),
            },
        },
        {
            id = "woven-turnin-93663-lost-in-transit",
            kind = "turnin",
            priority = 503,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Turn in Lost in Transit to Magtoor at the Harborage.",
            complete = QuestState(93663, "completed"),
            dependsOn = { "woven-accept-93663-lost-in-transit", "woven-objective-93663-lost-in-transit" },
            route = {
                Point(1435, 0.2600, 0.3140, "Magtoor",
                    "Travel to Magtoor."),
            },
        },
        {
            id = "turnin-1420-report-to-helgrum",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Report to Helgrum.",
            complete = QuestState(1420, "completed"),
            route = {
                Point(1435, 0.4774, 0.5520, "Report to Helgrum",
                    "Travel to Report to Helgrum."),
            },
        },
        {
            id = "accept-1424-pool-of-tears",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Pool of Tears.",
            complete = QuestState(1424, "activeOrCompleted"),
            route = {
                Point(1435, 0.4793, 0.5480, "Pool of Tears",
                    "Travel to Pool of Tears."),
            },
        },
        {
            id = "accept-1392-noboru-the-cudgel",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Use the Noboru's Cudgel to accept Noboru the Cudgel.",
            complete = QuestState(1392, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-1392-noboru-the-cudgel",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Noboru the Cudgel.",
            complete = QuestState(1392, "completed"),
            dependsOn = { "accept-1392-noboru-the-cudgel" },
            route = {
                Point(1435, 0.2599, 0.3140, "Noboru the Cudgel",
                    "Travel to Noboru the Cudgel."),
            },
        },
        {
            id = "accept-1389-draenethyst-crystals",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Draenethyst Crystals.",
            complete = QuestState(1389, "activeOrCompleted"),
            route = {
                Point(1435, 0.2599, 0.3140, "Draenethyst Crystals",
                    "Travel to Draenethyst Crystals."),
            },
        },
        {
            id = "objective-1373-1-ongeku",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Kill Ongeku.",
            complete = QuestObjective(1373, 1, "Ongeku"),
            route = {
                Point(1435, 0.6131, 0.2325, "Ongeku",
                    "Travel to Ongeku."),
            },
        },
        {
            id = "accept-1393-galen-s-escape",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Galen's Escape.",
            complete = QuestState(1393, "activeOrCompleted"),
            route = {
                Point(1435, 0.6541, 0.1823, "Galen's Escape",
                    "Travel to Galen's Escape."),
            },
        },
        {
            id = "turnin-1393-galen-s-escape",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Galen's Escape.",
            complete = QuestState(1393, "completed"),
            dependsOn = { "accept-1393-galen-s-escape" },
            route = {
                Point(1435, 0.4781, 0.3976, "Galen's Escape",
                    "Travel to Galen's Escape."),
            },
        },
        {
            id = "objective-1424-1-elixir-of-water-breathing",
            kind = "objective",
            priority = 400,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Use Elixir of Water Breathing.",
            complete = QuestObjective(1424, 1, "Elixir of Water Breathing"),
            dependsOn = { "accept-1424-pool-of-tears" },
            route = {
                Point(1435, 0.6590, 0.4720, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "turnin-698-lack-of-surplus",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Lack of Surplus.",
            complete = QuestState(698, "completed"),
            dependsOn = { "accept-698-lack-of-surplus" },
            route = {
                Point(1435, 0.8132, 0.8097, "Lack of Surplus",
                    "Travel to Lack of Surplus."),
            },
        },
        {
            id = "turnin-1424-pool-of-tears",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Pool of Tears.",
            complete = QuestState(1424, "completed"),
            dependsOn = { "accept-1424-pool-of-tears", "objective-1424-1-elixir-of-water-breathing" },
            route = {
                Point(1435, 0.4793, 0.5479, "Pool of Tears",
                    "Travel to Pool of Tears."),
            },
        },
        {
            id = "turnin-1389-draenethyst-crystals",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Draenethyst Crystals.",
            complete = QuestState(1389, "completed"),
            dependsOn = { "accept-1389-draenethyst-crystals" },
            route = {
                Point(1435, 0.2599, 0.3140, "Draenethyst Crystals",
                    "Travel to Draenethyst Crystals."),
            },
        },
        {
            id = "turnin-1116-dream-dust-in-the-swamp",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Dream Dust in the Swamp.",
            complete = QuestState(1116, "completed"),
            dependsOn = { "accept-1116-dream-dust-in-the-swamp", "objective-1116-1-adolescent-whelp" },
            route = {
                Point(1434, 0.2694, 0.7721, "Dream Dust in the Swamp",
                    "Travel to Dream Dust in the Swamp."),
            },
        },
        {
            id = "accept-1117-rumors-for-kravel",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Rumors for Kravel.",
            complete = QuestState(1117, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Rumors for Kravel",
                    "Travel to Rumors for Kravel."),
            },
        },
        {
            id = "accept-2864-tran-rek",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Tran'rek.",
            complete = QuestState(2864, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Tran'rek",
                    "Travel to Tran'rek."),
            },
        },
        {
            id = "accept-1183-goblin-sponsorship",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Goblin Sponsorship.",
            complete = QuestState(1183, "activeOrCompleted"),
            route = {
                Point(1434, 0.2723, 0.7687, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-2872-stoley-s-debt",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Stoley's Debt.",
            complete = QuestState(2872, "activeOrCompleted"),
            route = {
                Point(1434, 0.2778, 0.7707, "Stoley's Debt",
                    "Travel to Stoley's Debt."),
            },
        },
    },
})
