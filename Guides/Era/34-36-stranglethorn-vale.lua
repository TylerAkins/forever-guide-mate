local _, ns = ...

-- Horde Era leveling route for Stranglethorn Vale, levels 34-36.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STRANGLETHORN = 1434,
    UNDERCITY = 1458,
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
    id = "leveling-era-34-36-stranglethorn-vale",
    title = "34-36 Stranglethorn Vale (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 34 } },
        },
    },
    goals = {
        {
            id = "travel-583-grom-gol-base-camp",
            kind = "travel",
            priority = 10,
            text = "Travel to Grom'gol Base Camp.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3250, 0.2930, "Thysta",
                    "Travel to Thysta."),
            },
        },
        {
            id = "travel-583-nesingwary-s-expedition",
            kind = "travel",
            priority = 20,
            text = "Travel to Nesingwary's Expedition. Follow the road north, look for a little camp by the river.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3500, 0.1000, "Nesingwary's Expedition",
                    "Travel to Nesingwary's Expedition."),
            },
        },
        {
            id = "accept-583-welcome-to-the-jungle",
            kind = "accept",
            priority = 30,
            text = "Accept Welcome to the Jungle from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(583, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3568, 0.1052, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "turnin-583-welcome-to-the-jungle",
            kind = "turnin",
            priority = 40,
            text = "Turn in Welcome to the Jungle to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "accept-583-welcome-to-the-jungle" },
            complete = QuestState(583, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1075, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-185-tiger-mastery",
            kind = "accept",
            priority = 50,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(185, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1064, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-190-panther-mastery",
            kind = "accept",
            priority = 60,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(190, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1057, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "accept-194-raptor-mastery",
            kind = "accept",
            priority = 70,
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(194, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1075, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "objective-185-tiger-mastery",
            kind = "objective",
            priority = 80,
            text = "Kill 10 Young Stranglethorn Tiger slightly to the east in Stranglethorn Vale.",
            dependsOn = { "accept-185-tiger-mastery" },
            complete = QuestState(185, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3500, 0.1400, "Young Stranglethorn Tiger",
                    "Travel to Young Stranglethorn Tiger."),
            },
        },
        {
            id = "turnin-185-tiger-mastery",
            kind = "turnin",
            priority = 90,
            text = "Turn in Tiger Mastery to Ajeck Rouack in Nesingwary's Expedition.",
            dependsOn = { "objective-185-tiger-mastery" },
            complete = QuestState(185, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1064, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-186-tiger-mastery",
            kind = "accept",
            priority = 100,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(186, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1064, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "objective-190-panther-mastery",
            kind = "objective",
            priority = 110,
            text = "Kill 10 Young Panther to the north in Stranglethorn Vale.",
            dependsOn = { "accept-190-panther-mastery" },
            complete = QuestState(190, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4100, 0.0900, "Young Panther",
                    "Travel to Young Panther."),
            },
        },
        {
            id = "objective-186-tiger-mastery",
            kind = "objective",
            priority = 120,
            text = "Kill 10 Stranglethorn Tiger east of the camp in Stranglethorn Vale.",
            dependsOn = { "accept-186-tiger-mastery" },
            complete = QuestState(186, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3000, 0.1500, "Stranglethorn Tiger",
                    "Travel to Stranglethorn Tiger."),
            },
        },
        {
            id = "turnin-190-panther-mastery",
            kind = "turnin",
            priority = 130,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin in Nesingwary's Expedition.",
            dependsOn = { "objective-190-panther-mastery" },
            complete = QuestState(190, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1057, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "accept-191-panther-mastery",
            kind = "accept",
            priority = 140,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(191, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1057, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "turnin-186-tiger-mastery",
            kind = "turnin",
            priority = 150,
            text = "Turn in Tiger Mastery to Ajeck Rouack in Nesingwary's Expedition.",
            dependsOn = { "objective-186-tiger-mastery" },
            complete = QuestState(186, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1064, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-187-tiger-mastery",
            kind = "accept",
            priority = 160,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(187, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1064, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "objective-191-panther-mastery",
            kind = "objective",
            priority = 170,
            text = "Kill 10 Panther east of the camp in Stranglethorn Vale.",
            dependsOn = { "accept-191-panther-mastery" },
            complete = QuestState(191, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2900, 0.1100, "Panther",
                    "Travel to Panther."),
            },
        },
        {
            id = "objective-194-raptor-mastery",
            kind = "objective",
            priority = 180,
            text = "Kill 10 Stranglethorn Raptor east near the ruins in Stranglethorn Vale.",
            dependsOn = { "accept-194-raptor-mastery" },
            complete = QuestState(194, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2800, 0.1400, "Stranglethorn Raptor",
                    "Travel to Stranglethorn Raptor."),
            },
        },
        {
            id = "turnin-194-raptor-mastery",
            kind = "turnin",
            priority = 190,
            text = "Turn in Raptor Mastery to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "objective-194-raptor-mastery" },
            complete = QuestState(194, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1075, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-195-raptor-mastery",
            kind = "accept",
            priority = 200,
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(195, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1075, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "turnin-191-panther-mastery",
            kind = "turnin",
            priority = 210,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin in Nesingwary's Expedition.",
            dependsOn = { "objective-191-panther-mastery" },
            complete = QuestState(191, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3556, 0.1057, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "travel-1181-booty-bay",
            kind = "travel",
            priority = 220,
            text = "Take the boat to Booty Bay.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2633, 0.7349, "Booty Bay",
                    "Travel to Booty Bay."),
            },
        },
        {
            id = "accept-1181-goblin-sponsorship",
            kind = "accept",
            priority = 230,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Accept Goblin Sponsorship from Wharfmaster Lozgil in Booty Bay.",
            complete = QuestState(1181, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2633, 0.7349, "Wharfmaster Lozgil",
                    "Travel to Wharfmaster Lozgil."),
            },
        },
        {
            id = "note-605-booty-bay",
            kind = "note",
            priority = 240,
            text = "Set your hearth in Booty Bay with Innkeeper Skindle.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7730, "Innkeeper Skindle",
                    "Travel to Innkeeper Skindle."),
            },
        },
        {
            id = "accept-605-singing-blue-shards",
            kind = "accept",
            priority = 250,
            text = "Accept Singing Blue Shards from Crank Fizzlebub in The Salty Sailor Tavern.",
            complete = QuestState(605, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7729, "Crank Fizzlebub",
                    "Travel to Crank Fizzlebub."),
            },
        },
        {
            id = "accept-189-bloodscalp-ears",
            kind = "accept",
            priority = 260,
            text = "Accept Bloodscalp Ears from Kebok in The Salty Sailor Tavern.",
            complete = QuestState(189, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2701, 0.7718, "Kebok",
                    "Travel to Kebok."),
            },
        },
        {
            id = "accept-213-hostile-takeover",
            kind = "accept",
            priority = 270,
            text = "Accept Hostile Takeover from Kebok in The Salty Sailor Tavern.",
            complete = QuestState(213, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2701, 0.7718, "Kebok",
                    "Travel to Kebok."),
            },
        },
        {
            id = "accept-201-investigate-the-camp",
            kind = "accept",
            priority = 280,
            text = "Accept Investigate the Camp from Krazek in The Salty Sailor Tavern.",
            complete = QuestState(201, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2699, 0.7723, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "accept-575-supply-and-demand",
            kind = "accept",
            priority = 290,
            text = "Accept Supply and Demand from Drizzlik in Booty Bay.",
            complete = QuestState(575, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2825, 0.7757, "Drizzlik",
                    "Travel to Drizzlik."),
            },
        },
        {
            id = "turnin-1181-goblin-sponsorship",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Turn in Goblin Sponsorship to Baron Revilgaz in Booty Bay.",
            dependsOn = { "accept-1181-goblin-sponsorship" },
            complete = QuestState(1181, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7690, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "accept-1182-goblin-sponsorship",
            kind = "accept",
            priority = 310,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Accept Goblin Sponsorship from Baron Revilgaz in Booty Bay.",
            complete = QuestState(1182, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2721, 0.7690, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "accept-568-the-defense-of-grom-gol",
            kind = "accept",
            priority = 320,
            text = "Accept The Defense of Grom'gol from Commander Aggro'gosh in Grom'gol Base Camp.",
            complete = QuestState(568, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3222, 0.2891, "Commander Aggro'gosh",
                    "Travel to Commander Aggro'gosh."),
            },
        },
        {
            id = "accept-570-mok-thardin-s-enchantment",
            kind = "accept",
            priority = 330,
            text = "Accept Mok'thardin's Enchantment from Far Seer Mok'thardin in Grom'gol Base Camp.",
            complete = QuestState(570, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3214, 0.2916, "Far Seer Mok'thardin",
                    "Travel to Far Seer Mok'thardin."),
            },
        },
        {
            id = "accept-581-hunt-for-yenniku",
            kind = "accept",
            priority = 340,
            text = "Accept Hunt for Yenniku from Nimboya in Grom'gol Base Camp.",
            complete = QuestState(581, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3216, 0.2778, "Nimboya",
                    "Travel to Nimboya."),
            },
        },
        {
            id = "accept-596-bloody-bone-necklaces",
            kind = "accept",
            priority = 350,
            text = "Accept Bloody Bone Necklaces from Kin'weelay in Grom'gol Base Camp.",
            complete = QuestState(596, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3223, 0.2777, "Kin'weelay",
                    "Travel to Kin'weelay."),
            },
        },
        {
            id = "objective-605-singing-blue-shards",
            kind = "objective",
            priority = 360,
            text = "Find Stone Maw Basilisk and collect some Singing Crystal Shard, you can complete this later, if you can't find crocs The Savage Coast.",
            dependsOn = { "accept-605-singing-blue-shards" },
            complete = QuestState(605, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3700, 0.0800, "Stone Maw Basilisk",
                    "Travel to Stone Maw Basilisk."),
            },
        },
        {
            id = "travel-581-bal-lal-ruins",
            kind = "travel",
            priority = 370,
            text = "Travel to Bal'lal Ruins.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2952, 0.2087, "Bal'lal Ruins",
                    "Travel to Bal'lal Ruins."),
            },
        },
        {
            id = "objective-189-bloodscalp-ears",
            kind = "objective",
            priority = 380,
            text = "Kill the Bloodscalp trolls and collect 15 Bloodscalp Ear in Bal'lal Ruins.",
            dependsOn = { "accept-189-bloodscalp-ears" },
            complete = QuestState(189, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2952, 0.2087, "Bloodscalp Warrior",
                    "Travel to Bloodscalp Warrior."),
            },
        },
        {
            id = "objective-581-hunt-for-yenniku",
            kind = "objective",
            priority = 390,
            text = "Kill Bloodscalp trolls and collect 9 Bloodscalp Tusk in Bal'lal Ruins.",
            dependsOn = { "accept-581-hunt-for-yenniku" },
            complete = QuestState(581, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2900, 0.1961, "Bloodscalp Warrior",
                    "Travel to Bloodscalp Warrior."),
            },
        },
        {
            id = "travel-581-stranglethorn-vale",
            kind = "travel",
            priority = 400,
            text = "Travel to Stranglethorn Vale.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3400, 0.1900, "Stranglethorn Vale",
                    "Travel to Stranglethorn Vale."),
            },
        },
        {
            id = "objective-187-tiger-mastery",
            kind = "objective",
            priority = 410,
            text = "Kill 10 Elder Stranglethorn Tiger between the troll ruins and Nessingwary's camp.",
            dependsOn = { "accept-187-tiger-mastery" },
            complete = QuestState(187, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3400, 0.1900, "Elder Stranglethorn Tiger",
                    "Travel to Elder Stranglethorn Tiger."),
            },
        },
        {
            id = "objective-195-raptor-mastery",
            kind = "objective",
            priority = 420,
            text = "Kill 10 Lashtail Raptor near Grom'gol Base Camp.",
            dependsOn = { "accept-195-raptor-mastery" },
            complete = QuestState(195, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3800, 0.2300, "Lashtail Raptor",
                    "Travel to Lashtail Raptor."),
            },
        },
        {
            id = "objective-568-the-defense-of-grom-gol",
            kind = "objective",
            priority = 430,
            text = "Kill 15 Lashtail Raptor in Stranglethorn Vale.",
            dependsOn = { "accept-568-the-defense-of-grom-gol" },
            complete = QuestState(568, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3800, 0.2300, "Lashtail Raptor",
                    "Travel to Lashtail Raptor."),
            },
        },
        {
            id = "travel-grom-gol-base-camp",
            kind = "travel",
            priority = 440,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 569, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Grom'gol Base Camp.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3216, 0.2778, "Grom'gol Base Camp",
                    "Travel to Grom'gol Base Camp."),
            },
        },
        {
            id = "turnin-581-hunt-for-yenniku",
            kind = "turnin",
            priority = 450,
            text = "Turn in Hunt for Yenniku to Nimboya in Grom'gol Base Camp.",
            dependsOn = { "objective-581-hunt-for-yenniku" },
            complete = QuestState(581, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3216, 0.2778, "Nimboya",
                    "Travel to Nimboya."),
            },
        },
        {
            id = "accept-582-headhunting",
            kind = "accept",
            priority = 460,
            text = "Accept Headhunting from Nimboya in Grom'gol Base Camp.",
            complete = QuestState(582, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3216, 0.2778, "Nimboya",
                    "Travel to Nimboya."),
            },
        },
        {
            id = "turnin-568-the-defense-of-grom-gol",
            kind = "turnin",
            priority = 470,
            text = "Turn in The Defense of Grom'gol to Commander Aggro'gosh in Grom'gol Base Camp.",
            dependsOn = { "objective-568-the-defense-of-grom-gol" },
            complete = QuestState(568, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3222, 0.2891, "Commander Aggro'gosh",
                    "Travel to Commander Aggro'gosh."),
            },
        },
        {
            id = "accept-569-the-defense-of-grom-gol",
            kind = "accept",
            priority = 480,
            text = "Accept The Defense of Grom'gol from Commander Aggro'gosh in Grom'gol Base Camp.",
            complete = QuestState(569, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3222, 0.2891, "Commander Aggro'gosh",
                    "Travel to Commander Aggro'gosh."),
            },
        },
        {
            id = "objective-582-headhunting",
            kind = "objective",
            priority = 490,
            text = "Follow the path and kill Bloodscalp Headhunter in Ruins of Zul'Kunda 20 Shrunken Head Note: only Bloodscalp Headhunter will drop the item.",
            dependsOn = { "accept-582-headhunting" },
            complete = QuestState(582, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2465, 0.0995, "Continue toward Headhunting",
                    "Continue toward Headhunting."),
                Point(MAP.STRANGLETHORN, 0.2752, 0.0958, "Continue toward Headhunting",
                    "Continue toward Headhunting."),
                Point(MAP.STRANGLETHORN, 0.2752, 0.0958, "Continue toward Headhunting",
                    "Continue toward Headhunting."),
                Point(MAP.STRANGLETHORN, 0.2724, 0.1024, "Continue toward Headhunting",
                    "Continue toward Headhunting."),
                Point(MAP.STRANGLETHORN, 0.2656, 0.0831, "Continue toward Headhunting",
                    "Continue toward Headhunting."),
                Point(MAP.STRANGLETHORN, 0.2628, 0.0795, "Continue toward Headhunting",
                    "Continue toward Headhunting."),
                Point(MAP.STRANGLETHORN, 0.2475, 0.0803, "Bloodscalp Headhunter",
                    "Travel to Bloodscalp Headhunter."),
            },
        },
        {
            id = "objective-596-bloody-bone-necklaces",
            kind = "objective",
            priority = 500,
            text = "Kill Trolls in the Zuuldaia Ruins to collect 25 Bloody Bone Necklace.",
            dependsOn = { "accept-596-bloody-bone-necklaces" },
            complete = QuestState(596, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.1900, 0.1400, "Bloodscalp Axe Thrower",
                    "Travel to Bloodscalp Axe Thrower."),
            },
        },
        {
            id = "travel-201-nesingwary-s-expedition",
            kind = "travel",
            priority = 510,
            text = "Travel to Nesingwary's Expedition.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3526, 0.1112, "Nesingwary's Expedition",
                    "Travel to Nesingwary's Expedition."),
            },
        },
        {
            id = "objective-201-investigate-the-camp",
            kind = "objective",
            priority = 520,
            text = "In Nesingwary's Expedition.",
            dependsOn = { "accept-201-investigate-the-camp" },
            complete = QuestState(201, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3526, 0.1112, "Nesingwary's Expedition",
                    "Travel to Nesingwary's Expedition."),
            },
        },
        {
            id = "turnin-195-raptor-mastery",
            kind = "turnin",
            priority = 530,
            text = "Turn in Raptor Mastery to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "objective-195-raptor-mastery" },
            complete = QuestState(195, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3562, 0.1079, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-196-raptor-mastery",
            kind = "accept",
            priority = 540,
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(196, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3562, 0.1079, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-192-panther-mastery",
            kind = "accept",
            priority = 550,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(192, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3559, 0.1058, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "objective-605-singing-blue-shards-2",
            kind = "objective",
            priority = 560,
            text = "Find Crystal Spine Basilisk and collect some Singing Crystal Shard in The Savage Coast, if you can't find anymore crocs.",
            dependsOn = { "accept-605-singing-blue-shards" },
            complete = QuestState(605, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2422, 0.1765, "Crystal Spine Basilisk",
                    "Travel to Crystal Spine Basilisk."),
            },
        },
        {
            id = "objective-188-tiger-mastery",
            kind = "objective",
            priority = 570,
            text = "Kill Sin'Dall who is on top of a nearby hill and collect Paw of Sin'Dall.",
            dependsOn = { "accept-188-tiger-mastery" },
            complete = QuestState(188, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3186, 0.1732, "Sin'Dall",
                    "Travel to Sin'Dall."),
            },
        },
        {
            id = "turnin-188-tiger-mastery",
            kind = "turnin",
            priority = 580,
            text = "Turn in Tiger Mastery to Ajeck Rouack in Nesingwary's Expedition.",
            dependsOn = { "objective-188-tiger-mastery" },
            complete = QuestState(188, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3561, 0.1066, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "objective-575-supply-and-demand",
            kind = "objective",
            priority = 590,
            text = "Kill River Crocolisk and collect 2 Large River Crocolisk Skin in Nesingwary's Expedition.",
            dependsOn = { "accept-575-supply-and-demand" },
            complete = QuestState(575, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3482, 0.1040, "River Crocolisk",
                    "Travel to River Crocolisk."),
            },
        },
        {
            id = "travel-213-venture-co-operations-center",
            kind = "travel",
            priority = 600,
            text = "Travel to Venture Co. Operations Center.",
            route = {
                Point(MAP.STRANGLETHORN, 0.4248, 0.1847, "Venture Co. Operations Center",
                    "Travel to Venture Co. Operations Center."),
            },
        },
        {
            id = "objective-1182-foreman-cozzle",
            kind = "objective",
            priority = 610,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Kill Foreman Cozzle to collect Cozzle's Key in Venture Co. Operations Center.",
            dependsOn = { "accept-1182-goblin-sponsorship" },
            complete = QuestState(1182, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4248, 0.1847, "Foreman Cozzle",
                    "Travel to Foreman Cozzle."),
            },
        },
        {
            id = "objective-1182-goblin-sponsorship",
            kind = "objective",
            priority = 620,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Use Cozzle's Key to open Cozzle's Footlocker and get Fuel Regulator Blueprints.",
            dependsOn = { "accept-1182-goblin-sponsorship" },
            complete = QuestState(1182, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4300, 0.2000, "Foreman Cozzle",
                    "Travel to Foreman Cozzle."),
            },
        },
        {
            id = "travel-1182-venture-co-base-camp",
            kind = "travel",
            priority = 630,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Travel to Venture Co. Base Camp.",
            route = {
                Point(MAP.STRANGLETHORN, 0.4457, 0.2058, "Venture Co. Base Camp",
                    "Travel to Venture Co. Base Camp."),
            },
        },
        {
            id = "objective-213-hostile-takeover",
            kind = "objective",
            priority = 640,
            text = "Kill Venture Co. Geologist and collect 8 Tumbled Crystal from in Venture Co. Base Camp.",
            dependsOn = { "accept-213-hostile-takeover" },
            complete = QuestState(213, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4457, 0.2058, "Venture Co. Geologist",
                    "Travel to Venture Co. Geologist."),
            },
        },
        {
            id = "objective-570-mok-thardin-s-enchantment",
            kind = "objective",
            priority = 650,
            text = "Kill Shadowmaw Panther to collect 8 Shadowmaw Claw and kill Stranglethorn Tigress to collect a Pristine Tigress Fang.",
            dependsOn = { "accept-570-mok-thardin-s-enchantment" },
            complete = QuestState(570, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4800, 0.2100, "Shadowmaw Panther",
                    "Travel to Shadowmaw Panther."),
            },
        },
        {
            id = "travel-570-stranglethorn-vale",
            kind = "travel",
            priority = 660,
            text = "Travel to Stranglethorn Vale.",
            route = {
                Point(MAP.STRANGLETHORN, 0.4800, 0.2100, "Continue toward Stranglethorn Vale",
                    "Continue toward Stranglethorn Vale."),
                Point(MAP.STRANGLETHORN, 0.3800, 0.3700, "Stranglethorn Vale",
                    "Travel to Stranglethorn Vale."),
            },
        },
        {
            id = "objective-192-panther-mastery",
            kind = "objective",
            priority = 670,
            text = "Kill 10 Shadowmaw Panther in Stranglethorn Vale.",
            dependsOn = { "accept-192-panther-mastery" },
            complete = QuestState(192, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4800, 0.2100, "Continue toward Panther Mastery",
                    "Continue toward Panther Mastery."),
                Point(MAP.STRANGLETHORN, 0.3800, 0.3700, "Shadowmaw Panther",
                    "Travel to Shadowmaw Panther."),
            },
        },
        {
            id = "objective-605-singing-blue-shards-3",
            kind = "objective",
            priority = 680,
            text = "Find Crystal Spine Basilisk or Stone Maw Basilisk and collect 10 Singing Crystal Shard in The Savage Coast.",
            dependsOn = { "accept-605-singing-blue-shards" },
            complete = QuestState(605, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2422, 0.1765, "Continue toward Singing Blue Shards",
                    "Continue toward Singing Blue Shards."),
                Point(MAP.STRANGLETHORN, 0.3700, 0.0800, "Crystal Spine Basilisk",
                    "Travel to Crystal Spine Basilisk."),
            },
        },
        {
            id = "travel-569-mizjah-ruins",
            kind = "travel",
            priority = 690,
            text = "Travel to Mizjah Ruins.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3693, 0.3082, "Mizjah Ruins",
                    "Travel to Mizjah Ruins."),
            },
        },
        {
            id = "objective-569-the-defense-of-grom-gol",
            kind = "objective",
            priority = 700,
            text = "Kill 10 Mosh'Ogg Brute and 5 Mosh'Ogg Witch Doctor southeast of Grom'gol at the Mizjah Ruins.",
            dependsOn = { "accept-569-the-defense-of-grom-gol" },
            complete = QuestState(569, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3600, 0.3000, "Mosh'Ogg Brute",
                    "Travel to Mosh'Ogg Brute."),
            },
        },
        {
            id = "travel-193-nesingwary-s-expedition",
            kind = "travel",
            priority = 710,
            text = "Travel to Nesingwary's Expedition.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3553, 0.1056, "Nesingwary's Expedition",
                    "Travel to Nesingwary's Expedition."),
            },
        },
        {
            id = "turnin-192-panther-mastery",
            kind = "turnin",
            priority = 720,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin in Nesingwary's Expedition.",
            dependsOn = { "objective-192-panther-mastery" },
            complete = QuestState(192, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3553, 0.1056, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "accept-193-panther-mastery",
            kind = "accept",
            priority = 730,
            text = "Accept Panther Mastery from Sir S. J. Erlgadin in Nesingwary's Expedition.",
            complete = QuestState(193, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3553, 0.1056, "Sir S. J. Erlgadin",
                    "Travel to Sir S. J. Erlgadin."),
            },
        },
        {
            id = "travel-the-salty-sailor-tavern",
            kind = "travel",
            priority = 740,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 1183, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to The Salty Sailor Tavern.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7729, "The Salty Sailor Tavern",
                    "Travel to The Salty Sailor Tavern."),
            },
        },
        {
            id = "turnin-605-singing-blue-shards",
            kind = "turnin",
            priority = 750,
            text = "Turn in Singing Blue Shards to Crank Fizzlebub in The Salty Sailor Tavern.",
            dependsOn = { "objective-605-singing-blue-shards", "objective-605-singing-blue-shards-2", "objective-605-singing-blue-shards-3" },
            complete = QuestState(605, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2710, 0.7729, "Crank Fizzlebub",
                    "Travel to Crank Fizzlebub."),
            },
        },
        {
            id = "turnin-189-bloodscalp-ears",
            kind = "turnin",
            priority = 760,
            text = "Turn in Bloodscalp Ears to Kebok in The Salty Sailor Tavern.",
            dependsOn = { "objective-189-bloodscalp-ears" },
            complete = QuestState(189, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2701, 0.7718, "Kebok",
                    "Travel to Kebok."),
            },
        },
        {
            id = "turnin-213-hostile-takeover",
            kind = "turnin",
            priority = 770,
            text = "Turn in Hostile Takeover to Kebok in The Salty Sailor Tavern.",
            dependsOn = { "objective-213-hostile-takeover" },
            complete = QuestState(213, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2701, 0.7718, "Kebok",
                    "Travel to Kebok."),
            },
        },
        {
            id = "turnin-201-investigate-the-camp",
            kind = "turnin",
            priority = 780,
            text = "Turn in Investigate the Camp to Krazek in The Salty Sailor Tavern.",
            dependsOn = { "objective-201-investigate-the-camp" },
            complete = QuestState(201, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2699, 0.7723, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "turnin-575-supply-and-demand",
            kind = "turnin",
            priority = 790,
            text = "Turn in Supply and Demand to Drizzlik in Booty Bay.",
            dependsOn = { "objective-575-supply-and-demand" },
            complete = QuestState(575, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2827, 0.7755, "Drizzlik",
                    "Travel to Drizzlik."),
            },
        },
        {
            id = "turnin-1182-goblin-sponsorship",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Turn in Goblin Sponsorship.",
            dependsOn = { "objective-1182-foreman-cozzle", "objective-1182-goblin-sponsorship" },
            complete = QuestState(1182, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7690, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-1183-goblin-sponsorship",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { quest = { id = 1180, state = "completed" } },
                },
            },
            text = "Accept Goblin Sponsorship from Baron Revilgaz in Booty Bay.",
            complete = QuestState(1183, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2721, 0.7690, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "travel-nesingwary-s-expedition",
            kind = "travel",
            priority = 820,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 188, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Nesingwary's Expedition.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3561, 0.1066, "Nesingwary's Expedition",
                    "Travel to Nesingwary's Expedition."),
            },
        },
        {
            id = "turnin-187-tiger-mastery",
            kind = "turnin",
            priority = 830,
            text = "Turn in Tiger Mastery to Ajeck Rouack in Nesingwary's Expedition.",
            dependsOn = { "objective-187-tiger-mastery" },
            complete = QuestState(187, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3561, 0.1066, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "accept-188-tiger-mastery",
            kind = "accept",
            priority = 840,
            text = "Accept Tiger Mastery from Ajeck Rouack in Nesingwary's Expedition.",
            complete = QuestState(188, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3561, 0.1066, "Ajeck Rouack",
                    "Travel to Ajeck Rouack."),
            },
        },
        {
            id = "travel-grom-gol-base-camp-2",
            kind = "travel",
            priority = 850,
            text = "Travel to Grom'gol Base Camp.",
            route = {
                Point(MAP.STRANGLETHORN, 0.3218, 0.2882, "Grom'gol Base Camp",
                    "Travel to Grom'gol Base Camp."),
            },
        },
        {
            id = "turnin-569-the-defense-of-grom-gol",
            kind = "turnin",
            priority = 860,
            text = "Turn in The Defense of Grom'gol to Commander Aggro'gosh in Grom'gol Base Camp.",
            dependsOn = { "objective-569-the-defense-of-grom-gol" },
            complete = QuestState(569, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3218, 0.2882, "Commander Aggro'gosh",
                    "Travel to Commander Aggro'gosh."),
            },
        },
        {
            id = "turnin-570-mok-thardin-s-enchantment",
            kind = "turnin",
            priority = 870,
            text = "Turn in Mok'thardin's Enchantment to Far Seer Mok'thardin in Grom'gol Base Camp.",
            dependsOn = { "objective-570-mok-thardin-s-enchantment" },
            complete = QuestState(570, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3214, 0.2916, "Far Seer Mok'thardin",
                    "Travel to Far Seer Mok'thardin."),
            },
        },
        {
            id = "turnin-582-headhunting",
            kind = "turnin",
            priority = 880,
            text = "Turn in Headhunting to Nimboya in Grom'gol Base Camp.",
            dependsOn = { "objective-582-headhunting" },
            complete = QuestState(582, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3216, 0.2778, "Nimboya",
                    "Travel to Nimboya."),
            },
        },
        {
            id = "turnin-596-bloody-bone-necklaces",
            kind = "turnin",
            priority = 890,
            text = "Turn in Bloody Bone Necklaces to Kin'weelay in Grom'gol Base Camp.",
            dependsOn = { "objective-596-bloody-bone-necklaces" },
            complete = QuestState(596, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3223, 0.2777, "Kin'weelay",
                    "Travel to Kin'weelay."),
            },
        },
        {
            id = "accept-638-trollbane",
            kind = "accept",
            priority = 900,
            text = "Accept Trollbane from Nimboya in Grom'gol Base Camp.",
            complete = QuestState(638, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3217, 0.2771, "Nimboya",
                    "Travel to Nimboya."),
            },
        },
        {
            id = "travel-1164-undercity",
            kind = "travel",
            priority = 910,
            text = "Travel to Undercity.",
            route = {
                Point(MAP.UNDERCITY, 0.6363, 0.4878, "Undercity",
                    "Travel to Undercity."),
            },
        },
        {
            id = "accept-1164-to-steal-from-thieves",
            kind = "accept",
            priority = 920,
            text = "Accept To Steal From Thieves from Genavie Callow in Trade Quarter.",
            complete = QuestState(1164, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.6363, 0.4878, "Genavie Callow",
                    "Travel to Genavie Callow."),
            },
        },
    },
})
