local _, ns = ...

-- Horde Era leveling route for Stranglethorn Vale, levels 42-43.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STRANGLETHORN = 1434,
    SWAMP_OF_SORROWS = 1435,
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
    id = "leveling-era-42-43-stranglethorn-vale",
    title = "42-43 Stranglethorn Vale (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 42 } },
        },
    },
    goals = {
        {
            id = "accept-573-mok-thardin-s-enchantment",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 573, state = "completed" } },
                },
            },
            text = "Accept Mok'thardin's Enchantment from Far Seer Mok'thardin in Grom'gol Base Camp.",
            complete = QuestState(573, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3216, 0.2918, "Far Seer Mok'thardin",
                    "Travel to Far Seer Mok'thardin."),
            },
        },
        {
            id = "accept-598-split-bone-necklace",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 596, state = "completed" } },
                },
            },
            text = "Accept Split Bone Necklace from Kin'weelay in Grom'gol Base Camp.",
            complete = QuestState(598, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3221, 0.2774, "Kin'weelay",
                    "Travel to Kin'weelay."),
            },
        },
        {
            id = "accept-197-raptor-mastery",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 197, state = "completed" } },
                },
            },
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(197, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1075, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-2864-tran-rek",
            kind = "accept",
            priority = 60,
            text = "Accept Tran'rek from Krazek in The Salty Sailor Tavern.",
            complete = QuestState(2864, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2700, 0.7720, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "accept-1117-rumors-for-kravel",
            kind = "accept",
            priority = 70,
            text = "Accept Rumors for Kravel from Krazek in The Salty Sailor Tavern.",
            complete = QuestState(1117, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2700, 0.7720, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "accept-621-zanzil-s-secret",
            kind = "accept",
            priority = 80,
            text = "Accept Zanzil's Secret from Crank Fizzlebub in The Salty Sailor Tavern.",
            complete = QuestState(621, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7730, "Crank Fizzlebub",
                    "Travel to Crank Fizzlebub."),
            },
        },
        {
            id = "accept-606-scaring-shaky",
            kind = "accept",
            priority = 90,
            text = "Accept Scaring Shaky from \"Sea Wolf\" MacKinley in Booty Bay.",
            complete = QuestState(606, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2779, 0.7708, "'Sea Wolf' MacKinley",
                    "Travel to 'Sea Wolf' MacKinley."),
            },
        },
        {
            id = "accept-595-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 100,
            text = "Accept The Bloodsail Buccaneers from First Mate Crazz in Booty Bay.",
            complete = QuestState(595, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2808, 0.7619, "First Mate Crazz",
                    "Travel to First Mate Crazz."),
            },
        },
        {
            id = "turnin-595-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 110,
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
            priority = 120,
            text = "Accept The Bloodsail Buccaneers in Southern Savage Coast.",
            complete = QuestState(597, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2729, 0.6951, "Southern Savage Coast",
                    "Travel to Southern Savage Coast."),
            },
        },
        {
            id = "objective-606-scaring-shaky",
            kind = "objective",
            priority = 130,
            text = "Kill Elder Mistvale Gorilla and collect 5 Mistvale Giblets in Mistvale Valley.",
            dependsOn = { "accept-606-scaring-shaky" },
            complete = QuestState(606, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3303, 0.6566, "Elder Mistvale Gorilla",
                    "Travel to Elder Mistvale Gorilla."),
            },
        },
        {
            id = "turnin-597-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 140,
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
            priority = 150,
            text = "Accept The Bloodsail Buccaneers from First Mate Crazz in Booty Bay.",
            complete = QuestState(599, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2808, 0.7623, "First Mate Crazz",
                    "Travel to First Mate Crazz."),
            },
        },
        {
            id = "turnin-599-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 160,
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
            priority = 170,
            text = "Accept The Bloodsail Buccaneers from Fleet Master Seahorn in Booty Bay.",
            complete = QuestState(604, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7700, "Fleet Master Seahorn",
                    "Travel to Fleet Master Seahorn."),
            },
        },
        {
            id = "turnin-606-scaring-shaky",
            kind = "turnin",
            priority = 180,
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
            priority = 190,
            text = "Accept Return to MacKinley from \"Sea Wolf\" MacKinley in Booty Bay.",
            complete = QuestState(607, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2779, 0.7708, "'Sea Wolf' MacKinley",
                    "Travel to 'Sea Wolf' MacKinley."),
            },
        },
        {
            id = "accept-587-up-to-snuff",
            kind = "accept",
            priority = 200,
            text = "Accept Up to Snuff from Deeg in Booty Bay.",
            complete = QuestState(587, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2700, 0.7730, "Deeg",
                    "Travel to Deeg."),
            },
        },
        {
            id = "note-600-booty-bay",
            kind = "note",
            priority = 210,
            text = "Set your hearth in Booty Bay with Innkeeper Skindle.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7730, "Innkeeper Skindle",
                    "Travel to Innkeeper Skindle."),
            },
        },
        {
            id = "accept-600-venture-company-mining",
            kind = "accept",
            priority = 220,
            conditions = {
                all = {
                    { quest = { id = 605, state = "completed" } },
                },
            },
            text = "Accept Venture Company Mining from Crank Fizzlebub in The Salty Sailor Tavern.",
            complete = QuestState(600, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7730, "Crank Fizzlebub",
                    "Travel to Crank Fizzlebub."),
            },
        },
        {
            id = "accept-617-akiris-by-the-bundle",
            kind = "accept",
            priority = 230,
            text = "Accept Akiris by the Bundle from Privateer Bloads in Booty Bay.",
            complete = QuestState(617, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2670, 0.7640, "Privateer Bloads",
                    "Travel to Privateer Bloads."),
            },
        },
        {
            id = "turnin-607-return-to-mackinley",
            kind = "turnin",
            priority = 240,
            text = "Turn in Return to MacKinley to \"Sea Wolf\" MacKinley in Booty Bay.",
            dependsOn = { "accept-607-return-to-mackinley" },
            complete = QuestState(607, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2779, 0.7708, "'Sea Wolf' MacKinley",
                    "Travel to 'Sea Wolf' MacKinley."),
            },
        },
        {
            id = "accept-609-voodoo-dues",
            kind = "accept",
            priority = 250,
            text = "Accept Voodoo Dues from \"Sea Wolf\" MacKinley in Booty Bay.",
            complete = QuestState(609, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2780, 0.7710, "'Sea Wolf' MacKinley",
                    "Travel to 'Sea Wolf' MacKinley."),
            },
        },
        {
            id = "accept-2872-stoley-s-debt",
            kind = "accept",
            priority = 260,
            text = "Accept Stoley's Debt from \"Sea Wolf\" MacKinley in Booty Bay.",
            complete = QuestState(2872, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2780, 0.7710, "'Sea Wolf' MacKinley",
                    "Travel to 'Sea Wolf' MacKinley."),
            },
        },
        {
            id = "accept-576-keep-an-eye-out",
            kind = "accept",
            priority = 270,
            text = "Accept Keep An Eye Out from Dizzy One-Eye in Booty Bay.",
            complete = QuestState(576, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2860, 0.7580, "Dizzy One-Eye",
                    "Travel to Dizzy One-Eye."),
            },
        },
        {
            id = "objective-604-2-bloodsail-charts",
            kind = "objective",
            priority = 290,
            text = "Collect Bloodsail Charts on top the table in Wild Shore.",
            dependsOn = { "accept-604-the-bloodsail-buccaneers" },
            complete = QuestObjective(604, 2),
            route = {
                Point(MAP.STRANGLETHORN, 0.2690, 0.8250, "Wild Shore",
                    "Travel to Wild Shore."),
            },
        },
        {
            id = "objective-604-3-bloodsail-orders",
            kind = "objective",
            priority = 300,
            text = "Collect Bloodsail Orders on top of the crate in Wild Shore.",
            dependsOn = { "accept-604-the-bloodsail-buccaneers" },
            complete = QuestObjective(604, 3),
            route = {
                Point(MAP.STRANGLETHORN, 0.2780, 0.8310, "Wild Shore",
                    "Travel to Wild Shore."),
            },
        },
        {
            id = "objective-604-the-bloodsail-buccaneers",
            kind = "objective",
            priority = 310,
            text = "Kill 10 Bloodsail Swashbuckler in Wild Shore.",
            dependsOn = { "accept-604-the-bloodsail-buccaneers" },
            complete = QuestState(604, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3031, 0.8075, "Bloodsail Swashbuckler",
                    "Travel to Bloodsail Swashbuckler."),
            },
        },
        {
            id = "objective-587-up-to-snuff",
            kind = "objective",
            priority = 320,
            text = "Kill Bloodsail pirates and collect 15 Snuff in Wild Shore.",
            dependsOn = { "accept-587-up-to-snuff" },
            complete = QuestState(587, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3000, 0.8000, "Bloodsail Swashbuckler",
                    "Travel to Bloodsail Swashbuckler."),
            },
        },
        {
            id = "objective-576-keep-an-eye-out",
            kind = "objective",
            priority = 330,
            text = "The Pirates should have dropped Dizzy's Eye by now, or else keep killing pirates until you find one.",
            dependsOn = { "accept-576-keep-an-eye-out" },
            complete = QuestState(576, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3000, 0.8000, "Bloodsail Swashbuckler",
                    "Travel to Bloodsail Swashbuckler."),
            },
        },
        {
            id = "turnin-587-up-to-snuff",
            kind = "turnin",
            priority = 350,
            text = "Turn in Up to Snuff to Deeg in Booty Bay.",
            dependsOn = { "objective-587-up-to-snuff" },
            complete = QuestState(587, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2700, 0.7730, "Deeg",
                    "Travel to Deeg."),
            },
        },
        {
            id = "turnin-604-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 360,
            text = "Turn in The Bloodsail Buccaneers to Fleet Master Seahorn in Booty Bay.",
            dependsOn = { "objective-604-2-bloodsail-charts", "objective-604-3-bloodsail-orders", "objective-604-the-bloodsail-buccaneers" },
            complete = QuestState(604, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7700, "Fleet Master Seahorn",
                    "Travel to Fleet Master Seahorn."),
            },
        },
        {
            id = "turnin-576-keep-an-eye-out",
            kind = "turnin",
            priority = 370,
            text = "Turn in Keep An Eye Out to Dizzy One-Eye in Booty Bay.",
            dependsOn = { "objective-576-keep-an-eye-out" },
            complete = QuestState(576, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2860, 0.7580, "Dizzy One-Eye",
                    "Travel to Dizzy One-Eye."),
            },
        },
        {
            id = "objective-573-2-holy-spring-water",
            kind = "objective",
            priority = 390,
            conditions = {
                all = {
                    { quest = { id = 573, state = "completed" } },
                },
            },
            text = "Collect Holy Spring Water from the well by Nek'mani Wellspring fo.",
            dependsOn = { "accept-573-mok-thardin-s-enchantment" },
            complete = QuestObjective(573, 2),
            route = {
                Point(MAP.STRANGLETHORN, 0.2800, 0.6100, "Holy Spring Water",
                    "Travel to Holy Spring Water."),
            },
        },
        {
            id = "objective-617-akiris-by-the-bundle",
            kind = "objective",
            priority = 400,
            text = "Kill the Naga at the Nek'mani Wellspring for 10 Akiris Reed.",
            dependsOn = { "accept-617-akiris-by-the-bundle" },
            complete = QuestState(617, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2572, 0.6120, "Naga Explorer",
                    "Travel to Naga Explorer."),
            },
        },
        {
            id = "objective-573-mok-thardin-s-enchantment",
            kind = "objective",
            priority = 410,
            conditions = {
                all = {
                    { quest = { id = 573, state = "completed" } },
                },
            },
            text = "Kill 10 Naga Explorer at the Nek'mani Wellspring.",
            dependsOn = { "accept-573-mok-thardin-s-enchantment" },
            complete = QuestState(573, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2572, 0.6120, "Naga Explorer",
                    "Travel to Naga Explorer."),
            },
        },
        {
            id = "objective-609-2-jon-jon-the-crow",
            kind = "objective",
            priority = 430,
            text = "Kill Jon-Jon the Crow and collect Jon-Jon's Golden Spyglass in Ruins of Jubuwal.",
            dependsOn = { "accept-609-voodoo-dues" },
            complete = QuestObjective(609, 2),
            route = {
                Point(MAP.STRANGLETHORN, 0.3475, 0.5182, "Jon-Jon the Crow",
                    "Travel to Jon-Jon the Crow."),
            },
        },
        {
            id = "objective-609-1-maury-club-foot-wilkins",
            kind = "objective",
            priority = 440,
            text = "Kill Maury \"Club Foot\" Wilkins and collect Maury's Clubbed Foot in Ruins of Jubuwal.",
            dependsOn = { "accept-609-voodoo-dues" },
            complete = QuestObjective(609, 1),
            route = {
                Point(MAP.STRANGLETHORN, 0.3518, 0.5111, "Maury 'Club Foot' Wilkins",
                    "Travel to Maury 'Club Foot' Wilkins."),
            },
        },
        {
            id = "objective-609-3-chucky-ten-thumbs",
            kind = "objective",
            priority = 460,
            text = "Kill Chucky \"Ten Thumbs\" and collect Chucky's Huge Ring in Ruins of Aboraz.",
            dependsOn = { "accept-609-voodoo-dues" },
            complete = QuestObjective(609, 3),
            route = {
                Point(MAP.STRANGLETHORN, 0.4005, 0.5821, "Chucky 'Ten Thumbs'",
                    "Travel to Chucky 'Ten Thumbs'."),
            },
        },
        {
            id = "objective-621-zanzil-s-secret",
            kind = "objective",
            priority = 470,
            text = "Kill Zanzil Hunter and Zanzil Zombie at the Ruins of Aboraz for 12 Zanzil's Mixture.",
            dependsOn = { "accept-621-zanzil-s-secret" },
            complete = QuestState(621, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4000, 0.5700, "Zanzil Hunter",
                    "Travel to Zanzil Hunter."),
            },
        },
        {
            id = "objective-600-venture-company-mining",
            kind = "objective",
            priority = 490,
            conditions = {
                all = {
                    { quest = { id = 605, state = "completed" } },
                },
            },
            text = "Kill the Venture Co. goblins for 10 Singing Blue Crystal.",
            dependsOn = { "accept-600-venture-company-mining" },
            complete = QuestState(600, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4172, 0.4457, "Venture Co. Foreman",
                    "Travel to Venture Co. Foreman."),
            },
        },
        {
            id = "objective-197-raptor-mastery",
            kind = "objective",
            priority = 510,
            conditions = {
                all = {
                    { quest = { id = 197, state = "completed" } },
                },
            },
            text = "Kill Tethis and loot Talon of Tethis.",
            dependsOn = { "accept-197-raptor-mastery" },
            complete = QuestState(197, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2800, 0.4400, "Tethis",
                    "Travel to Tethis."),
            },
        },
        {
            id = "turnin-600-venture-company-mining",
            kind = "turnin",
            priority = 530,
            conditions = {
                all = {
                    { quest = { id = 605, state = "completed" } },
                },
            },
            text = "Turn in Venture Company Mining to Crank Fizzlebub in The Salty Sailor Tavern.",
            dependsOn = { "objective-600-venture-company-mining" },
            complete = QuestState(600, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7730, "Crank Fizzlebub",
                    "Travel to Crank Fizzlebub."),
            },
        },
        {
            id = "turnin-621-zanzil-s-secret",
            kind = "turnin",
            priority = 540,
            text = "Turn in Zanzil's Secret to Crank Fizzlebub in The Salty Sailor Tavern.",
            dependsOn = { "objective-621-zanzil-s-secret" },
            complete = QuestState(621, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7730, "Crank Fizzlebub",
                    "Travel to Crank Fizzlebub."),
            },
        },
        {
            id = "turnin-617-akiris-by-the-bundle",
            kind = "turnin",
            priority = 550,
            text = "Turn in Akiris by the Bundle to Privateer Bloads in Booty Bay.",
            dependsOn = { "objective-617-akiris-by-the-bundle" },
            complete = QuestState(617, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2670, 0.7640, "Privateer Bloads",
                    "Travel to Privateer Bloads."),
            },
        },
        {
            id = "turnin-609-voodoo-dues",
            kind = "turnin",
            priority = 560,
            text = "Turn in Voodoo Dues to \"Sea Wolf\" MacKinley in Booty Bay.",
            dependsOn = { "objective-609-2-jon-jon-the-crow", "objective-609-1-maury-club-foot-wilkins", "objective-609-3-chucky-ten-thumbs" },
            complete = QuestState(609, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2780, 0.7710, "'Sea Wolf' MacKinley",
                    "Travel to 'Sea Wolf' MacKinley."),
            },
        },
        {
            id = "turnin-573-mok-thardin-s-enchantment",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { quest = { id = 573, state = "completed" } },
                },
            },
            text = "Turn in Mok'thardin's Enchantment to Far Seer Mok'thardin in Grom'gol Base Camp.",
            dependsOn = { "objective-573-2-holy-spring-water", "objective-573-mok-thardin-s-enchantment" },
            complete = QuestState(573, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3208, 0.2926, "Far Seer Mok'thardin",
                    "Travel to Far Seer Mok'thardin."),
            },
        },
        {
            id = "turnin-197-raptor-mastery",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { quest = { id = 197, state = "completed" } },
                },
            },
            text = "Turn in Raptor Mastery to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "objective-197-raptor-mastery" },
            complete = QuestState(197, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3570, 0.1080, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-208-big-game-hunter",
            kind = "accept",
            priority = 610,
            conditions = {
                all = {
                    { quest = { id = 197, state = "completed" } },
                },
            },
            text = "Accept Big Game Hunter from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(208, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3570, 0.1080, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "objective-208-big-game-hunter",
            kind = "objective",
            priority = 620,
            conditions = {
                all = {
                    { quest = { id = 197, state = "completed" } },
                },
            },
            text = "Kill King Bangalash and loot the Head of Bangalash.",
            dependsOn = { "accept-208-big-game-hunter" },
            complete = QuestState(208, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3800, 0.3500, "King Bangalash",
                    "Travel to King Bangalash."),
            },
        },
        {
            id = "accept-338-the-green-hills-of-stranglethorn",
            kind = "accept",
            priority = 630,
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
            priority = 640,
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
            priority = 650,
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
            priority = 660,
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
            priority = 670,
            text = "Accept Chapter IV from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(342, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "objective-598-split-bone-necklace",
            kind = "objective",
            priority = 690,
            conditions = {
                all = {
                    { quest = { id = 596, state = "completed" } },
                },
            },
            text = "Kill Skullsplitter trolls in Ziata'jai Ruins and Balia'mah Ruins.",
            dependsOn = { "accept-598-split-bone-necklace" },
            complete = QuestState(598, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4542, 0.3046, "Skullsplitter Mystic",
                    "Travel to Skullsplitter Mystic."),
            },
        },
        {
            id = "turnin-208-big-game-hunter",
            kind = "turnin",
            priority = 710,
            conditions = {
                all = {
                    { quest = { id = 197, state = "completed" } },
                },
            },
            text = "Turn in Big Game Hunter to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "objective-208-big-game-hunter" },
            complete = QuestState(208, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3570, 0.1080, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "turnin-598-split-bone-necklace",
            kind = "turnin",
            priority = 730,
            conditions = {
                all = {
                    { quest = { id = 596, state = "completed" } },
                },
            },
            text = "Turn in Split Bone Necklace to Kin'weelay in Grom'gol Base Camp.",
            dependsOn = { "objective-598-split-bone-necklace" },
            complete = QuestState(598, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3221, 0.2775, "Kin'weelay",
                    "Travel to Kin'weelay."),
            },
        },
        {
            id = "accept-2932-grim-message",
            kind = "accept",
            priority = 740,
            conditions = {
                all = {
                    { quest = { id = 596, state = "completed" } },
                },
            },
            text = "Accept Grim Message from Nimboya in Grom'gol Base Camp.",
            complete = QuestState(2932, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3216, 0.2777, "Nimboya",
                    "Travel to Nimboya."),
            },
        },
    },
})
