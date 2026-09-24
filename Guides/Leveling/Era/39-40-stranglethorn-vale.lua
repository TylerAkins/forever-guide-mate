local _, ns = ...

-- Alliance Era leveling route for Stranglethorn Vale, levels 39-40.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STRANGLETHORN = 1434,
    IRONFORGE = 1455,
    STORMWIND = 1453,
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
    id = "leveling-era-39-40-stranglethorn-vale",
    title = "39-40 Stranglethorn Vale (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 39 } },
        },
    },
    goals = {
        {
            id = "travel-606-booty-bay",
            kind = "travel",
            priority = 10,
            text = "Travel to Booty Bay.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2808, 0.7619, "Booty Bay",
                    "Travel to Booty Bay."),
            },
        },
        {
            id = "accept-595-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 20,
            text = "Accept The Bloodsail Buccaneers from First Mate Crazz in Booty Bay.",
            complete = QuestState(595, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2808, 0.7619, "First Mate Crazz",
                    "Travel to First Mate Crazz."),
            },
        },
        {
            id = "accept-606-scaring-shaky",
            kind = "accept",
            priority = 30,
            text = "Accept Scaring Shaky from \"Sea Wolf\" MacKinley in Booty Bay.",
            complete = QuestState(606, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2779, 0.7708, "'Sea Wolf' MacKinley",
                    "Travel to 'Sea Wolf' MacKinley."),
            },
        },
        {
            id = "accept-600-venture-company-mining",
            kind = "accept",
            priority = 40,
            text = "Accept Venture Company Mining from Crank Fizzlebub in The Salty Sailor Tavern.",
            complete = QuestState(600, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2713, 0.7730, "Crank Fizzlebub",
                    "Travel to Crank Fizzlebub."),
            },
        },
        {
            id = "accept-1116-dream-dust-in-the-swamp",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 1116, state = "completed" } },
                },
            },
            text = "Accept Dream Dust in the Swamp from Krazek in The Salty Sailor Tavern.",
            complete = QuestState(1116, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2695, 0.7722, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "accept-209-skullsplitter-tusks",
            kind = "accept",
            priority = 60,
            text = "Accept Skullsplitter Tusks from Kebok in The Salty Sailor Tavern.",
            complete = QuestState(209, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2699, 0.7713, "Kebok",
                    "Travel to Kebok."),
            },
        },
        {
            id = "note-601-booty-bay",
            kind = "note",
            priority = 70,
            text = "Set your hearth in Booty Bay with Innkeeper Skindle.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2700, 0.7720, "Innkeeper Skindle",
                    "Travel to Innkeeper Skindle."),
            },
        },
        {
            id = "accept-670-sunken-treasure",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { quest = { id = 669, state = "completed" } },
                },
            },
            text = "Accept Sunken Treasure from Fleet Master Seahorn in Booty Bay.",
            complete = QuestState(670, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2717, 0.7700, "Fleet Master Seahorn",
                    "Travel to Fleet Master Seahorn."),
            },
        },
        {
            id = "accept-601-water-elementals",
            kind = "accept",
            priority = 90,
            text = "Accept Water Elementals from Baron Revilgaz in Booty Bay.",
            complete = QuestState(601, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2722, 0.7687, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "travel-606-mistvale-valley",
            kind = "travel",
            priority = 100,
            text = "Travel to Mistvale Valley.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2798, 0.7357, "Continue toward Mistvale Valley",
                    "Continue toward Mistvale Valley."),
                Point(MAP.STRANGLETHORN, 0.2969, 0.7234, "Continue toward Mistvale Valley",
                    "Continue toward Mistvale Valley."),
                Point(MAP.STRANGLETHORN, 0.3303, 0.6566, "Mistvale Valley",
                    "Travel to Mistvale Valley."),
            },
        },
        {
            id = "objective-606-scaring-shaky",
            kind = "objective",
            priority = 110,
            text = "Kill Elder Mistvale Gorilla and collect 5 Mistvale Giblets in Mistvale Valley.",
            dependsOn = { "accept-606-scaring-shaky" },
            complete = QuestState(606, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3303, 0.6566, "Elder Mistvale Gorilla",
                    "Travel to Elder Mistvale Gorilla."),
            },
        },
        {
            id = "travel-606-stranglethorn-vale",
            kind = "travel",
            priority = 120,
            text = "Travel to Stranglethorn Vale.",
        },
        {
            id = "objective-600-venture-company-mining",
            kind = "objective",
            priority = 130,
            text = "Kill Venture Co. Surveyor or Venture Co. Strip Miner and collect 10 Singing Blue Crystal You can skip this for now if you find it too difficult.",
            dependsOn = { "accept-600-venture-company-mining" },
            complete = QuestState(600, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4014, 0.4257, "Continue toward Venture Company Mining",
                    "Continue toward Venture Company Mining."),
                Point(MAP.STRANGLETHORN, 0.4172, 0.4457, "Venture Co. Surveyor",
                    "Travel to Venture Co. Surveyor."),
            },
        },
        {
            id = "travel-600-stranglethorn-vale",
            kind = "travel",
            priority = 140,
            text = "Travel to Stranglethorn Vale.",
        },
        {
            id = "objective-196-raptor-mastery",
            kind = "objective",
            priority = 150,
            text = "Kill 10 Jungle Stalker near Gurubashi Arena.",
            complete = QuestState(196, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3100, 0.4281, "Jungle Stalker",
                    "Travel to Jungle Stalker."),
            },
        },
        {
            id = "travel-196-stranglethorn-vale",
            kind = "travel",
            priority = 160,
            text = "Travel to Stranglethorn Vale.",
        },
        {
            id = "objective-577-some-assembly-required",
            kind = "objective",
            priority = 170,
            text = "Kill Snapjaw Crocolisk and collect 5 Snapjaw Crocolisk Skin along the river.",
            complete = QuestState(577, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4075, 0.2467, "Snapjaw Crocolisk",
                    "Travel to Snapjaw Crocolisk."),
            },
        },
        {
            id = "travel-209-ziata-jai-ruins",
            kind = "travel",
            priority = 180,
            text = "Travel to Ziata'jai Ruins.",
            route = {
                Point(MAP.STRANGLETHORN, 0.4217, 0.3616, "Ziata'jai Ruins",
                    "Travel to Ziata'jai Ruins."),
            },
        },
        {
            id = "objective-209-skullsplitter-tusks",
            kind = "objective",
            priority = 190,
            text = "Kill Trolls and collect 18 Skullsplitter Tusk in Ziata'jai Ruins and Ruins of Zul'Mamwe Stick to this area for the lower level trolls.",
            dependsOn = { "accept-209-skullsplitter-tusks" },
            complete = QuestState(209, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4572, 0.4219, "Continue toward Skullsplitter Tusks",
                    "Continue toward Skullsplitter Tusks."),
                Point(MAP.STRANGLETHORN, 0.4486, 0.4070, "Skullsplitter Witch Doctor",
                    "Travel to Skullsplitter Witch Doctor."),
            },
        },
        {
            id = "objective-193-panther-mastery",
            kind = "objective",
            priority = 200,
            text = "Kill Bhag'thera in Stranglethorn Vale He's stealth, level 40 elite and can be soloed.",
            complete = QuestState(193, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4952, 0.2382, "Bhag'thera",
                    "Travel to Bhag'thera."),
            },
        },
        {
            id = "travel-197-nesingwary-s-expedition",
            kind = "travel",
            priority = 210,
            text = "Travel to Nesingwary's Expedition.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1079, "Nesingwary's Expedition",
                    "Travel to Nesingwary's Expedition."),
            },
        },
        {
            id = "turnin-196-raptor-mastery",
            kind = "turnin",
            priority = 220,
            text = "Turn in Raptor Mastery to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "objective-196-raptor-mastery" },
            complete = QuestState(196, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1079, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-197-raptor-mastery",
            kind = "accept",
            priority = 230,
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(197, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1079, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "turnin-193-panther-mastery",
            kind = "turnin",
            priority = 240,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin in Nesingwary's Expedition.",
            dependsOn = { "objective-193-panther-mastery" },
            complete = QuestState(193, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3555, 0.1054, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "travel-601-the-savage-coast",
            kind = "travel",
            priority = 250,
            text = "Travel to The Savage Coast.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2743, 0.1973, "The Savage Coast",
                    "Travel to The Savage Coast."),
            },
        },
        {
            id = "objective-601-water-elementals",
            kind = "objective",
            priority = 260,
            text = "Kill Lesser Water Elemental and collect 6 Water Elemental Bracers in The Savage Coast.",
            dependsOn = { "accept-601-water-elementals" },
            complete = QuestState(601, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2743, 0.1973, "Continue toward Water Elementals",
                    "Continue toward Water Elementals."),
                Point(MAP.STRANGLETHORN, 0.2108, 0.2320, "Lesser Water Elemental",
                    "Travel to Lesser Water Elemental."),
            },
        },
        {
            id = "travel-628-the-salty-sailor-tavern",
            kind = "travel",
            priority = 270,
            text = "Travel or Hearthstone to Booty Bay.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7690, "Booty Bay",
                    "Travel to Booty Bay."),
            },
        },
        {
            id = "turnin-209-skullsplitter-tusks",
            kind = "turnin",
            priority = 280,
            text = "Turn in Skullsplitter Tusks to Kebok in The Salty Sailor Tavern.",
            dependsOn = { "objective-209-skullsplitter-tusks" },
            complete = QuestState(209, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2701, 0.7714, "Kebok",
                    "Travel to Kebok."),
            },
        },
        {
            id = "turnin-601-water-elementals",
            kind = "turnin",
            priority = 290,
            text = "Turn in Water Elementals to Baron Revilgaz in Booty Bay.",
            dependsOn = { "objective-601-water-elementals" },
            complete = QuestState(601, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7690, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "turnin-577-some-assembly-required",
            kind = "turnin",
            priority = 300,
            text = "Turn in Some Assembly Required to Drizzlik in Booty Bay.",
            dependsOn = { "objective-577-some-assembly-required" },
            complete = QuestState(577, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2829, 0.7760, "Drizzlik",
                    "Travel to Drizzlik."),
            },
        },
        {
            id = "accept-628-excelsior",
            kind = "accept",
            priority = 310,
            text = "Accept Excelsior from Drizzlik in Booty Bay.",
            complete = QuestState(628, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2829, 0.7760, "Drizzlik",
                    "Travel to Drizzlik."),
            },
        },
        {
            id = "travel-597-southern-savage-coast",
            kind = "travel",
            priority = 320,
            text = "Travel to Southern Savage Coast.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2798, 0.7357, "Continue toward Southern Savage Coast",
                    "Continue toward Southern Savage Coast."),
                Point(MAP.STRANGLETHORN, 0.2969, 0.7234, "Continue toward Southern Savage Coast",
                    "Continue toward Southern Savage Coast."),
                Point(MAP.STRANGLETHORN, 0.2729, 0.6951, "Southern Savage Coast",
                    "Travel to Southern Savage Coast."),
            },
        },
        {
            id = "turnin-595-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 330,
            text = "Turn in The Bloodsail Buccaneers in Southern Savage Coast.",
            dependsOn = { "accept-595-the-bloodsail-buccaneers" },
            complete = QuestState(595, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2729, 0.6951, "Southern Savage Coast",
                    "Travel to Southern Savage Coast."),
            },
        },
        {
            id = "accept-597-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 340,
            text = "Accept The Bloodsail Buccaneers in Southern Savage Coast.",
            complete = QuestState(597, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2729, 0.6951, "Southern Savage Coast",
                    "Travel to Southern Savage Coast."),
            },
        },
        {
            id = "objective-600-venture-company-mining-2",
            kind = "objective",
            priority = 350,
            text = "Kill Venture Co. Surveyor or Venture Co. Strip Miner and collect 10 Singing Blue Crystal You can skip this for now if you find it too difficult.",
            dependsOn = { "accept-600-venture-company-mining" },
            complete = QuestState(600, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4014, 0.4257, "Continue toward Venture Company Mining",
                    "Continue toward Venture Company Mining."),
                Point(MAP.STRANGLETHORN, 0.4172, 0.4457, "Venture Co. Surveyor",
                    "Travel to Venture Co. Surveyor."),
            },
        },
        {
            id = "travel-607-booty-bay",
            kind = "travel",
            priority = 360,
            text = "Travel to Booty Bay.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2830, 0.7294, "Booty Bay",
                    "Travel to Booty Bay."),
            },
        },
        {
            id = "turnin-606-scaring-shaky",
            kind = "turnin",
            priority = 370,
            text = "Turn in Scaring Shaky to \"Shaky\" Phillipe in Booty Bay.",
            dependsOn = { "objective-606-scaring-shaky" },
            complete = QuestState(606, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2690, 0.7360, "'Shaky' Phillipe",
                    "Travel to 'Shaky' Phillipe."),
            },
        },
        {
            id = "accept-607-return-to-mackinley",
            kind = "accept",
            priority = 380,
            text = "Accept Return to MacKinley from \"Shaky\" Phillipe in Booty Bay.",
            complete = QuestState(607, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2690, 0.7360, "'Shaky' Phillipe",
                    "Travel to 'Shaky' Phillipe."),
            },
        },
        {
            id = "turnin-597-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 390,
            text = "Turn in The Bloodsail Buccaneers to First Mate Crazz in Booty Bay.",
            dependsOn = { "accept-597-the-bloodsail-buccaneers" },
            complete = QuestState(597, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2808, 0.7623, "First Mate Crazz",
                    "Travel to First Mate Crazz."),
            },
        },
        {
            id = "accept-599-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 400,
            text = "Accept The Bloodsail Buccaneers from First Mate Crazz in Booty Bay.",
            complete = QuestState(599, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2808, 0.7623, "First Mate Crazz",
                    "Travel to First Mate Crazz."),
            },
        },
        {
            id = "turnin-607-return-to-mackinley",
            kind = "turnin",
            priority = 410,
            text = "Turn in Return to MacKinley to \"Sea Wolf\" MacKinley in Booty Bay.",
            dependsOn = { "accept-607-return-to-mackinley" },
            complete = QuestState(607, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2776, 0.7709, "'Sea Wolf' MacKinley",
                    "Travel to 'Sea Wolf' MacKinley."),
            },
        },
        {
            id = "accept-587-up-to-snuff",
            kind = "accept",
            priority = 420,
            text = "Accept Up to Snuff from Deeg in The Salty Sailor Tavern.",
            complete = QuestState(587, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2694, 0.7734, "Deeg",
                    "Travel to Deeg."),
            },
        },
        {
            id = "turnin-599-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 430,
            text = "Turn in The Bloodsail Buccaneers to Fleet Master Seahorn in Booty Bay.",
            dependsOn = { "accept-599-the-bloodsail-buccaneers" },
            complete = QuestState(599, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2717, 0.7698, "Fleet Master Seahorn",
                    "Travel to Fleet Master Seahorn."),
            },
        },
        {
            id = "accept-604-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 440,
            text = "Accept The Bloodsail Buccaneers from Fleet Master Seahorn in Booty Bay.",
            complete = QuestState(604, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2717, 0.7698, "Fleet Master Seahorn",
                    "Travel to Fleet Master Seahorn."),
            },
        },
        {
            id = "travel-628-the-savage-coast",
            kind = "travel",
            priority = 450,
            text = "Travel to The Savage Coast.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3327, 0.3231, "The Savage Coast",
                    "Travel to The Savage Coast."),
            },
        },
        {
            id = "objective-628-excelsior",
            kind = "objective",
            priority = 460,
            text = "Kill a Elder Snapjaw Crocolisk and collect Elder Crocolisk Skin in The Savage Coast.",
            dependsOn = { "accept-628-excelsior" },
            complete = QuestState(628, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3327, 0.3231, "Continue toward Excelsior",
                    "Continue toward Excelsior."),
                Point(MAP.STRANGLETHORN, 0.3085, 0.2981, "Continue toward Excelsior",
                    "Continue toward Excelsior."),
                Point(MAP.STRANGLETHORN, 0.2984, 0.2561, "Elder Snapjaw Crocolisk",
                    "Travel to Elder Snapjaw Crocolisk."),
            },
        },
        {
            id = "travel-338-nesingwary-s-expedition",
            kind = "travel",
            priority = 470,
            text = "Travel to Nesingwary's Expedition.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Nesingwary's Expedition",
                    "Travel to Nesingwary's Expedition."),
            },
        },
        {
            id = "accept-338-the-green-hills-of-stranglethorn",
            kind = "accept",
            priority = 480,
            text = "Accept The Green Hills of Stranglethorn from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(338, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "accept-339-chapter-i",
            kind = "accept",
            priority = 490,
            text = "Accept Chapter I from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(339, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "accept-340-chapter-ii",
            kind = "accept",
            priority = 500,
            text = "Accept Chapter II from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(340, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "accept-341-chapter-iii",
            kind = "accept",
            priority = 510,
            text = "Accept Chapter III from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(341, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "accept-342-chapter-iv",
            kind = "accept",
            priority = 520,
            text = "Accept Chapter IV from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(342, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "travel-booty-bay",
            kind = "travel",
            priority = 530,
            text = "Travel or Hearthstone to Booty Bay.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2829, 0.7760, "Booty Bay",
                    "Travel to Booty Bay."),
            },
        },
        {
            id = "turnin-628-excelsior",
            kind = "turnin",
            priority = 540,
            text = "Turn in Excelsior to Drizzlik in Booty Bay.",
            dependsOn = { "objective-628-excelsior" },
            complete = QuestState(628, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2829, 0.7760, "Drizzlik",
                    "Travel to Drizzlik."),
            },
        },
        {
            id = "accept-4486-the-tome-of-nobility",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept The Tome of Nobility from Brandur Ironhammer in Hall of Mysteries.",
            complete = QuestState(4486, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2332, 0.0633, "Brandur Ironhammer",
                    "Travel to Brandur Ironhammer."),
            },
        },
        {
            id = "turnin-4486-the-tome-of-nobility",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Nobility to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-4486-the-tome-of-nobility" },
            complete = QuestState(4486, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3983, 0.2983, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-4485-the-tome-of-nobility",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept The Tome of Nobility from Arthur the Faithful in Cathedral of Light.",
            complete = QuestState(4485, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3867, 0.3291, "Arthur the Faithful",
                    "Travel to Arthur the Faithful."),
            },
        },
        {
            id = "turnin-4485-the-tome-of-nobility",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Nobility to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-4485-the-tome-of-nobility" },
            complete = QuestState(4485, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3986, 0.2978, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "note-summon-warhorse",
            kind = "note",
            priority = 590,
            conditions = {
                all = {
                    { class = 2 },
                },
            },
            text = "Speak to Arthur the Faithful and train Summon Warhorse.",
            route = {
                Point(MAP.STORMWIND, 0.3867, 0.3291, "Arthur the Faithful",
                    "Travel to Arthur the Faithful."),
            },
        },
    },
})
