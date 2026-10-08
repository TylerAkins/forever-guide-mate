local _, ns = ...

-- Forever Casual spine: Stranglethorn Vale (42-43)
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
    STRANGLETHORN_VALE = 1434,
    STORMWIND_CITY = 1453,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-stranglethorn-vale-part-3",
    title = "Stranglethorn Vale",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 42 } },
        },
    },
    goals = {
        {
            id = "accept-1477-vital-supplies",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Vital Supplies.",
            complete = QuestState(1477, "activeOrCompleted"),
            route = {
                Point(1453, 0.3752, 0.8167, "Vital Supplies",
                    "Travel to Vital Supplies."),
            },
        },
        {
            id = "accept-1364-mazen-s-behest",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { quest = { id = 1364, state = "notCompleted" } },
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Mazen's Behest.",
            complete = QuestState(1364, "activeOrCompleted"),
            route = {
                Point(1453, 0.4117, 0.6367, "Mazen's Behest",
                    "Travel to Mazen's Behest."),
            },
        },
        {
            id = "accept-209-skullsplitter-tusks",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
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
            priority = 40,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Sunken Treasure.",
            complete = QuestState(669, "completed"),
            route = {
                Point(1434, 0.2717, 0.7701, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "turnin-603-ansirem-s-key",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ansirem's Key.",
            complete = QuestState(603, "completed"),
            route = {
                Point(1434, 0.2728, 0.7753, "Ansirem's Key",
                    "Travel to Ansirem's Key."),
            },
        },
        {
            id = "accept-610-pretty-boy-duncan",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Accept \"Pretty Boy\" Duncan.",
            complete = QuestState(610, "activeOrCompleted"),
            route = {
                Point(1434, 0.2728, 0.7753, "\"Pretty Boy\" Duncan",
                    "Travel to \"Pretty Boy\" Duncan."),
            },
        },
        {
            id = "turnin-1118-back-to-booty-bay",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Back to Booty Bay.",
            complete = QuestState(1118, "completed"),
            route = {
                Point(1434, 0.2712, 0.7721, "Back to Booty Bay",
                    "Travel to Back to Booty Bay."),
            },
        },
        {
            id = "accept-600-venture-company-mining",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Accept Venture Company Mining.",
            complete = QuestState(600, "activeOrCompleted"),
            route = {
                Point(1434, 0.2712, 0.7721, "Venture Company Mining",
                    "Travel to Venture Company Mining."),
            },
        },
        {
            id = "accept-621-zanzil-s-secret",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Zanzil's Secret.",
            complete = QuestState(621, "activeOrCompleted"),
            route = {
                Point(1434, 0.2712, 0.7721, "Zanzil's Secret",
                    "Travel to Zanzil's Secret."),
            },
        },
        {
            id = "accept-606-scaring-shaky",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Scaring Shaky.",
            complete = QuestState(606, "activeOrCompleted"),
            route = {
                Point(1434, 0.2778, 0.7707, "Scaring Shaky",
                    "Travel to Scaring Shaky."),
            },
        },
        {
            id = "accept-595-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Bloodsail Buccaneers.",
            complete = QuestState(595, "activeOrCompleted"),
            route = {
                Point(1434, 0.2810, 0.7622, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "accept-628-excelsior",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Excelsior.",
            complete = QuestState(628, "activeOrCompleted"),
            route = {
                Point(1434, 0.2829, 0.7759, "Excelsior",
                    "Travel to Excelsior."),
            },
        },
        {
            id = "objective-606-1-elder-mistvale-gorilla",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill Elder Mistvale Gorilla.",
            complete = QuestObjective(606, 1, "Elder Mistvale Gorilla"),
            dependsOn = { "accept-606-scaring-shaky" },
            route = {
                Point(1434, 0.2800, 0.7346, "Elder Mistvale Gorilla",
                    "Travel to Elder Mistvale Gorilla."),
            },
        },
        {
            id = "turnin-595-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Bloodsail Buccaneers.",
            complete = QuestState(595, "completed"),
            dependsOn = { "accept-595-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.2728, 0.6952, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "accept-597-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Bloodsail Buccaneers.",
            complete = QuestState(597, "activeOrCompleted"),
            route = {
                Point(1434, 0.2728, 0.6952, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "turnin-606-scaring-shaky",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Scaring Shaky.",
            complete = QuestState(606, "completed"),
            dependsOn = { "accept-606-scaring-shaky", "objective-606-1-elder-mistvale-gorilla" },
            route = {
                Point(1434, 0.2956, 0.7251, "Scaring Shaky",
                    "Travel to Scaring Shaky."),
            },
        },
        {
            id = "accept-607-return-to-mackinley",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to MacKinley.",
            complete = QuestState(607, "activeOrCompleted"),
            route = {
                Point(1434, 0.2956, 0.7251, "Return to MacKinley",
                    "Travel to MacKinley."),
            },
        },
        {
            id = "turnin-597-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Bloodsail Buccaneers.",
            complete = QuestState(597, "completed"),
            dependsOn = { "accept-597-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.2810, 0.7621, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "accept-599-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Bloodsail Buccaneers.",
            complete = QuestState(599, "activeOrCompleted"),
            route = {
                Point(1434, 0.2810, 0.7621, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "turnin-607-return-to-mackinley",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to MacKinley.",
            complete = QuestState(607, "completed"),
            dependsOn = { "accept-607-return-to-mackinley" },
            route = {
                Point(1434, 0.2778, 0.7707, "Return to MacKinley",
                    "Travel to MacKinley."),
            },
        },
        {
            id = "accept-609-voodoo-dues",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Voodoo Dues.",
            complete = QuestState(609, "activeOrCompleted"),
            route = {
                Point(1434, 0.2778, 0.7707, "Voodoo Dues",
                    "Travel to Voodoo Dues."),
            },
        },
        {
            id = "turnin-610-pretty-boy-duncan",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Turn in \"Pretty Boy\" Duncan.",
            complete = QuestState(610, "completed"),
            dependsOn = { "accept-610-pretty-boy-duncan" },
            route = {
                Point(1434, 0.2728, 0.7753, "\"Pretty Boy\" Duncan",
                    "Travel to \"Pretty Boy\" Duncan."),
            },
        },
        {
            id = "accept-611-the-curse-of-the-tides",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Curse of the Tides.",
            complete = QuestState(611, "activeOrCompleted"),
            route = {
                Point(1434, 0.2728, 0.7753, "The Curse of the Tides",
                    "Travel to The Curse of the Tides."),
            },
        },
        {
            id = "turnin-599-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Bloodsail Buccaneers.",
            complete = QuestState(599, "completed"),
            dependsOn = { "accept-599-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.2717, 0.7701, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "accept-617-akiris-by-the-bundle",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Akiris by the Bundle.",
            complete = QuestState(617, "activeOrCompleted"),
            route = {
                Point(1434, 0.2676, 0.7638, "Akiris by the Bundle",
                    "Travel to Akiris by the Bundle."),
            },
        },
        {
            id = "objective-617-1-naga-explorer",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill Naga Explorer.",
            complete = QuestObjective(617, 1, "Naga Explorer"),
            dependsOn = { "accept-617-akiris-by-the-bundle" },
            route = {
                Point(1434, 0.2800, 0.7346, "Naga Explorer",
                    "Travel to Naga Explorer."),
            },
        },
        {
            id = "objective-609-2-jon-jon-the-crow",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill Jon-Jon the Crow.",
            complete = QuestObjective(609, 2, "Jon-Jon the Crow"),
            dependsOn = { "accept-609-voodoo-dues" },
            route = {
                Point(1434, 0.3493, 0.5185, "Jon-Jon the Crow",
                    "Travel to Jon-Jon the Crow."),
            },
        },
        {
            id = "objective-609-1-maury-club-foot-wilkins",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill Maury \"Club Foot\" Wilkins.",
            complete = QuestObjective(609, 1, "Maury \"Club Foot\" Wilkins"),
            dependsOn = { "accept-609-voodoo-dues" },
            route = {
                Point(1434, 0.3525, 0.5126, "Maury \"Club Foot\" Wilkins",
                    "Travel to Maury \"Club Foot\" Wilkins."),
            },
        },
        {
            id = "objective-196-1-jungle-stalker",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Jungle Stalker.",
            complete = QuestObjective(196, 1, "Jungle Stalker"),
            route = {
                Point(1434, 0.2720, 0.4820, "Jungle Stalker",
                    "Travel to Jungle Stalker."),
            },
        },
        {
            id = "objective-600-1-venture-co-strip-miner",
            kind = "objective",
            priority = 300,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
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
            id = "objective-205-1-skullsplitter-warrior",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Kill Skullsplitter Warrior.",
            complete = QuestObjective(205, 1, "Skullsplitter Warrior"),
            route = {
                Point(1434, 0.4220, 0.3620, "Skullsplitter Warrior",
                    "Travel to Skullsplitter Warrior."),
            },
        },
        {
            id = "objective-209-1-skullsplitter-tusk",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Collect 18 Skullsplitter Tusk.",
            complete = QuestObjective(209, 1, "Skullsplitter Tusk"),
            dependsOn = { "accept-209-skullsplitter-tusks" },
            route = {
                Point(1434, 0.4220, 0.3620, "Skullsplitter Tusk",
                    "Travel to Skullsplitter Tusk."),
            },
        },
        {
            id = "objective-193-1-bhag-thera",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill Bhag'thera.",
            complete = QuestObjective(193, 1, "Bhag'thera"),
            route = {
                Point(1434, 0.4637, 0.2905, "Bhag'thera",
                    "Travel to Bhag'thera."),
            },
        },
        {
            id = "turnin-205-troll-witchery",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Troll Witchery.",
            complete = QuestState(205, "completed"),
            dependsOn = { "objective-205-1-skullsplitter-warrior" },
            route = {
                Point(1434, 0.3783, 0.0356, "Troll Witchery",
                    "Travel to Troll Witchery."),
            },
        },
        {
            id = "turnin-193-panther-mastery",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Panther Mastery.",
            complete = QuestState(193, "completed"),
            dependsOn = { "objective-193-1-bhag-thera" },
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "turnin-196-raptor-mastery",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raptor Mastery.",
            complete = QuestState(196, "completed"),
            dependsOn = { "objective-196-1-jungle-stalker" },
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "accept-197-raptor-mastery",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raptor Mastery.",
            complete = QuestState(197, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "objective-628-1-elder-saltwater-crocolisk",
            kind = "objective",
            priority = 380,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Kill Elder Saltwater Crocolisk.",
            complete = QuestObjective(628, 1, "Elder Saltwater Crocolisk"),
            dependsOn = { "accept-628-excelsior" },
            route = {
                Point(1434, 0.2920, 0.2240, "Elder Saltwater Crocolisk",
                    "Travel to Elder Saltwater Crocolisk."),
            },
        },
        {
            id = "objective-611-1-gazban",
            kind = "objective",
            priority = 390,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Kill Gazban.",
            complete = QuestObjective(611, 1, "Gazban"),
            dependsOn = { "accept-611-the-curse-of-the-tides" },
            route = {
                Point(1434, 0.2496, 0.2358, "Gazban",
                    "Travel to Gazban."),
            },
        },
        {
            id = "turnin-600-venture-company-mining",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
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
            id = "turnin-621-zanzil-s-secret",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Zanzil's Secret.",
            complete = QuestState(621, "completed"),
            dependsOn = { "accept-621-zanzil-s-secret" },
            route = {
                Point(1434, 0.2712, 0.7721, "Zanzil's Secret",
                    "Travel to Zanzil's Secret."),
            },
        },
        {
            id = "accept-587-up-to-snuff",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Up to Snuff.",
            complete = QuestState(587, "activeOrCompleted"),
            route = {
                Point(1434, 0.2692, 0.7735, "Up to Snuff",
                    "Travel to Up to Snuff."),
            },
        },
        {
            id = "turnin-209-skullsplitter-tusks",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Skullsplitter Tusks.",
            complete = QuestState(209, "completed"),
            dependsOn = { "accept-209-skullsplitter-tusks", "objective-209-1-skullsplitter-tusk" },
            route = {
                Point(1434, 0.2700, 0.7713, "Skullsplitter Tusks",
                    "Travel to Skullsplitter Tusks."),
            },
        },
        {
            id = "accept-604-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Bloodsail Buccaneers.",
            complete = QuestState(604, "activeOrCompleted"),
            route = {
                Point(1434, 0.2717, 0.7701, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "turnin-611-the-curse-of-the-tides",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Curse of the Tides.",
            complete = QuestState(611, "completed"),
            dependsOn = { "accept-611-the-curse-of-the-tides", "objective-611-1-gazban" },
            route = {
                Point(1434, 0.2723, 0.7687, "The Curse of the Tides",
                    "Travel to The Curse of the Tides."),
            },
        },
        {
            id = "turnin-617-akiris-by-the-bundle",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Akiris by the Bundle.",
            complete = QuestState(617, "completed"),
            dependsOn = { "accept-617-akiris-by-the-bundle", "objective-617-1-naga-explorer" },
            route = {
                Point(1434, 0.2676, 0.7638, "Akiris by the Bundle",
                    "Travel to Akiris by the Bundle."),
            },
        },
        {
            id = "accept-623-akiris-by-the-bundle",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Akiris by the Bundle.",
            complete = QuestState(623, "activeOrCompleted"),
            route = {
                Point(1434, 0.2676, 0.7638, "Akiris by the Bundle",
                    "Travel to Akiris by the Bundle."),
            },
        },
        {
            id = "turnin-609-voodoo-dues",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Voodoo Dues.",
            complete = QuestState(609, "completed"),
            dependsOn = { "accept-609-voodoo-dues", "objective-609-2-jon-jon-the-crow", "objective-609-1-maury-club-foot-wilkins" },
            route = {
                Point(1434, 0.2778, 0.7707, "Voodoo Dues",
                    "Travel to Voodoo Dues."),
            },
        },
        {
            id = "turnin-628-excelsior",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Excelsior.",
            complete = QuestState(628, "completed"),
            dependsOn = { "accept-628-excelsior", "objective-628-1-elder-saltwater-crocolisk" },
            route = {
                Point(1434, 0.2829, 0.7759, "Excelsior",
                    "Travel to Excelsior."),
            },
        },
        {
            id = "accept-576-keep-an-eye-out",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Keep An Eye Out.",
            complete = QuestState(576, "activeOrCompleted"),
            route = {
                Point(1434, 0.2859, 0.7590, "Keep An Eye Out",
                    "Travel to Keep An Eye Out."),
            },
        },
        {
            id = "turnin-576-keep-an-eye-out",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Keep An Eye Out.",
            complete = QuestState(576, "completed"),
            dependsOn = { "accept-576-keep-an-eye-out" },
            route = {
                Point(1434, 0.2956, 0.7251, "Keep An Eye Out",
                    "Travel to Keep An Eye Out."),
            },
        },
        {
            id = "turnin-604-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Bloodsail Buccaneers.",
            complete = QuestState(604, "completed"),
            dependsOn = { "accept-604-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.2717, 0.7701, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "turnin-587-up-to-snuff",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Up to Snuff.",
            complete = QuestState(587, "completed"),
            dependsOn = { "accept-587-up-to-snuff" },
            route = {
                Point(1434, 0.2692, 0.7735, "Up to Snuff",
                    "Travel to Up to Snuff."),
            },
        },
        {
            id = "accept-338-the-green-hills-of-stranglethorn",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Green Hills of Stranglethorn.",
            complete = QuestState(338, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "The Green Hills of Stranglethorn",
                    "Travel to The Green Hills of Stranglethorn."),
            },
        },
        {
            id = "accept-339-chapter-i",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Chapter I.",
            complete = QuestState(339, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter I",
                    "Travel to Chapter I."),
            },
        },
        {
            id = "turnin-339-chapter-i",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Chapter I.",
            complete = QuestState(339, "completed"),
            dependsOn = { "accept-339-chapter-i" },
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter I",
                    "Travel to Chapter I."),
            },
        },
        {
            id = "accept-340-chapter-ii",
            kind = "accept",
            priority = 570,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Chapter II.",
            complete = QuestState(340, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter II",
                    "Travel to Chapter II."),
            },
        },
        {
            id = "turnin-340-chapter-ii",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Chapter II.",
            complete = QuestState(340, "completed"),
            dependsOn = { "accept-340-chapter-ii" },
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter II",
                    "Travel to Chapter II."),
            },
        },
        {
            id = "accept-341-chapter-iii",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Chapter III.",
            complete = QuestState(341, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter III",
                    "Travel to Chapter III."),
            },
        },
        {
            id = "turnin-341-chapter-iii",
            kind = "turnin",
            priority = 600,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Chapter III.",
            complete = QuestState(341, "completed"),
            dependsOn = { "accept-341-chapter-iii" },
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter III",
                    "Travel to Chapter III."),
            },
        },
        {
            id = "accept-342-chapter-iv",
            kind = "accept",
            priority = 610,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Chapter IV.",
            complete = QuestState(342, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter IV",
                    "Travel to Chapter IV."),
            },
        },
        {
            id = "turnin-342-chapter-iv",
            kind = "turnin",
            priority = 620,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Chapter IV.",
            complete = QuestState(342, "completed"),
            dependsOn = { "accept-342-chapter-iv" },
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter IV",
                    "Travel to Chapter IV."),
            },
        },
        {
            id = "turnin-338-the-green-hills-of-stranglethorn",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Green Hills of Stranglethorn.",
            complete = QuestState(338, "completed"),
            dependsOn = { "accept-338-the-green-hills-of-stranglethorn" },
            route = {
                Point(1434, 0.3566, 0.1053, "The Green Hills of Stranglethorn",
                    "Travel to The Green Hills of Stranglethorn."),
            },
        },
    },
})
