local _, ns = ...

-- Alliance Era leveling route for Feralas, levels 48-49.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    FERALAS = 1444,
    SWAMP_OF_SORROWS = 1435,
    IRONFORGE = 1455,
    TELDRASSIL = 1438,
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
    id = "leveling-era-48-49-feralas",
    title = "48-49 Feralas (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 48 } },
        },
    },
    goals = {
        {
            id = "accept-625-cortello-s-riddle",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { quest = { id = 624, state = "completed" } },
                },
            },
            text = "Accept Cortello's Riddle.",
            complete = QuestState(625, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2290, 0.4820, "Cortello's Riddle",
                    "Travel to Cortello's Riddle."),
            },
        },
        {
            id = "travel-3763-ironforge",
            kind = "travel",
            priority = 20,
            text = "Travel to Ironforge.",
            route = {
                Point(MAP.IRONFORGE, 0.1841, 0.5149, "Ironforge",
                    "Travel to Ironforge."),
            },
        },
        {
            id = "accept-3763-assisting-arch-druid-staghelm",
            kind = "accept",
            priority = 30,
            text = "Accept Assisting Arch Druid Staghelm from Innkeeper Firebrew in Ironforge.",
            complete = QuestState(3763, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.1841, 0.5149, "Innkeeper Firebrew",
                    "Travel to Innkeeper Firebrew."),
            },
        },
        {
            id = "accept-4512-a-little-slime-goes-a-long-way",
            kind = "accept",
            priority = 40,
            text = "Accept A Little Slime Goes a Long Way from Laris Geardawdle in The Library.",
            complete = QuestState(4512, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7564, 0.2312, "Laris Geardawdle",
                    "Travel to Laris Geardawdle."),
            },
        },
        {
            id = "travel-rut-theran-village",
            kind = "travel",
            priority = 50,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 2943, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Rut'theran Village in Teldrassil.",
            route = {
                Point(MAP.TELDRASSIL, 0.5550, 0.9206, "Rut'theran Village",
                    "Travel to Rut'theran Village."),
            },
        },
        {
            id = "accept-2943-return-to-troyas",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { quest = { id = 2944, state = "completed" } },
                },
            },
            text = "Accept Return to Troyas from Daryn Lightwind in Rut'theran Village.",
            complete = QuestState(2943, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5542, 0.9226, "Daryn Lightwind",
                    "Travel to Daryn Lightwind."),
            },
        },
        {
            id = "travel-2821-feathermoon-stronghold",
            kind = "travel",
            priority = 70,
            text = "Travel to Feathermoon Stronghold.",
            route = {
                Point(MAP.FERALAS, 0.3058, 0.4274, "Feathermoon Stronghold",
                    "Travel to Feathermoon Stronghold."),
            },
        },
        {
            id = "accept-2821-the-mark-of-quality",
            kind = "accept",
            priority = 80,
            text = "Accept The Mark of Quality from Pratt McGrubben in Feathermoon Stronghold.",
            complete = QuestState(2821, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.3063, 0.4272, "Pratt McGrubben",
                    "Travel to Pratt McGrubben."),
            },
        },
        {
            id = "travel-2821-feral-scar-vale",
            kind = "travel",
            priority = 90,
            text = "Travel to Feral Scar Vale.",
            route = {
                Point(MAP.FERALAS, 0.4721, 0.4463, "Continue toward Feral Scar Vale",
                    "Continue toward Feral Scar Vale."),
                Point(MAP.FERALAS, 0.4882, 0.4562, "Continue toward Feral Scar Vale",
                    "Continue toward Feral Scar Vale."),
                Point(MAP.FERALAS, 0.5471, 0.5276, "Continue toward Feral Scar Vale",
                    "Continue toward Feral Scar Vale."),
                Point(MAP.FERALAS, 0.5554, 0.5712, "Feral Scar Vale",
                    "Travel to Feral Scar Vale."),
            },
        },
        {
            id = "objective-2821-the-mark-of-quality",
            kind = "objective",
            priority = 100,
            text = "Kill Feral Scar Yeti and collect 10 Thick Yeti Hide in Feral Scar Vale.",
            dependsOn = { "accept-2821-the-mark-of-quality" },
            complete = QuestState(2821, "complete"),
            route = {
                Point(MAP.FERALAS, 0.5540, 0.5636, "Feral Scar Yeti",
                    "Travel to Feral Scar Yeti."),
            },
        },
        {
            id = "travel-7733-feathermoon-stronghold",
            kind = "travel",
            priority = 110,
            text = "Travel to Feathermoon Stronghold.",
            route = {
                Point(MAP.FERALAS, 0.3058, 0.4274, "Feathermoon Stronghold",
                    "Travel to Feathermoon Stronghold."),
            },
        },
        {
            id = "turnin-2821-the-mark-of-quality",
            kind = "turnin",
            priority = 120,
            text = "Turn in The Mark of Quality to Pratt McGrubben in Feathermoon Stronghold.",
            dependsOn = { "objective-2821-the-mark-of-quality" },
            complete = QuestState(2821, "completed"),
            route = {
                Point(MAP.FERALAS, 0.3063, 0.4272, "Pratt McGrubben",
                    "Travel to Pratt McGrubben."),
            },
        },
        {
            id = "accept-7733-improved-quality",
            kind = "accept",
            priority = 130,
            text = "Accept Improved Quality from Pratt McGrubben in Feathermoon Stronghold.",
            complete = QuestState(7733, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.3058, 0.4274, "Pratt McGrubben",
                    "Travel to Pratt McGrubben."),
            },
        },
        {
            id = "turnin-2943-return-to-troyas",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 2944, state = "completed" } },
                },
            },
            text = "Turn in Return to Troyas to Troyas Moonbreeze in Feathermoon Stronghold.",
            dependsOn = { "accept-2943-return-to-troyas" },
            complete = QuestState(2943, "completed"),
            route = {
                Point(MAP.FERALAS, 0.3180, 0.4547, "Troyas Moonbreeze",
                    "Travel to Troyas Moonbreeze."),
            },
        },
        {
            id = "accept-2879-the-stave-of-equinex",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { quest = { id = 2944, state = "completed" } },
                },
            },
            text = "Accept The Stave of Equinex from Troyas Moonbreeze in Feathermoon Stronghold.",
            complete = QuestState(2879, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.3180, 0.4547, "Troyas Moonbreeze",
                    "Travel to Troyas Moonbreeze."),
            },
        },
        {
            id = "accept-3445-the-sunken-temple",
            kind = "accept",
            priority = 160,
            text = "Accept The Sunken Temple from Angelas Moonbreeze in Feathermoon Stronghold.",
            complete = QuestState(3445, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.3185, 0.4561, "Angelas Moonbreeze",
                    "Travel to Angelas Moonbreeze."),
            },
        },
        {
            id = "travel-7003-the-forgotten-coast",
            kind = "travel",
            priority = 170,
            text = "Travel to The Forgotten Coast.",
            route = {
                Point(MAP.FERALAS, 0.4480, 0.4345, "The Forgotten Coast",
                    "Travel to The Forgotten Coast."),
            },
        },
        {
            id = "accept-7003-zapped-giants",
            kind = "accept",
            priority = 180,
            text = "Accept Zapped Giants from Zorbin Fandazzle in The Forgotten Coast.",
            complete = QuestState(7003, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.4480, 0.4345, "Zorbin Fandazzle",
                    "Travel to Zorbin Fandazzle."),
            },
        },
        {
            id = "accept-7721-fuel-for-the-zapping",
            kind = "accept",
            priority = 190,
            text = "Accept Fuel for the Zapping from Zorbin Fandazzle in The Forgotten Coast.",
            complete = QuestState(7721, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.4480, 0.4345, "Zorbin Fandazzle",
                    "Travel to Zorbin Fandazzle."),
            },
        },
        {
            id = "objective-7721-fuel-for-the-zapping",
            kind = "objective",
            priority = 200,
            text = "Kill Sea Elemental and collect 10 Water Elemental Core in The Forgotten Coast.",
            dependsOn = { "accept-7721-fuel-for-the-zapping" },
            complete = QuestState(7721, "complete"),
            route = {
                Point(MAP.FERALAS, 0.3994, 0.3742, "Sea Elemental",
                    "Travel to Sea Elemental."),
            },
        },
        {
            id = "turnin-7721-fuel-for-the-zapping",
            kind = "turnin",
            priority = 210,
            text = "Turn in Fuel for the Zapping to Zorbin Fandazzle in The Forgotten Coast.",
            dependsOn = { "objective-7721-fuel-for-the-zapping" },
            complete = QuestState(7721, "completed"),
            route = {
                Point(MAP.FERALAS, 0.4482, 0.4342, "Zorbin Fandazzle",
                    "Travel to Zorbin Fandazzle."),
            },
        },
        {
            id = "travel-7733-rage-scar-hold",
            kind = "travel",
            priority = 220,
            text = "Travel to Rage Scar Hold.",
            route = {
                Point(MAP.FERALAS, 0.4829, 0.4462, "Continue toward Rage Scar Hold",
                    "Continue toward Rage Scar Hold."),
                Point(MAP.FERALAS, 0.4843, 0.3773, "Continue toward Rage Scar Hold",
                    "Continue toward Rage Scar Hold."),
                Point(MAP.FERALAS, 0.5146, 0.3234, "Continue toward Rage Scar Hold",
                    "Continue toward Rage Scar Hold."),
                Point(MAP.FERALAS, 0.5324, 0.3183, "Rage Scar Hold",
                    "Travel to Rage Scar Hold."),
            },
        },
        {
            id = "objective-7733-improved-quality",
            kind = "objective",
            priority = 230,
            text = "Kill Rage Scar Yeti and collect 10 Feral Scar Yeti Hide in Rage Scar Hold.",
            dependsOn = { "accept-7733-improved-quality" },
            complete = QuestState(7733, "complete"),
            route = {
                Point(MAP.FERALAS, 0.5241, 0.3176, "Rage Scar Yeti",
                    "Travel to Rage Scar Yeti."),
            },
        },
        {
            id = "objective-7735-rage-scar-yeti",
            kind = "objective",
            priority = 240,
            text = "Kill Rage Scar Yeti until you collect Pristine Yeti Hide to start a new quest.",
            dependsOn = { "accept-7735-pristine-yeti-hide" },
            complete = QuestState(7735, "complete"),
            route = {
                Point(MAP.FERALAS, 0.5241, 0.3176, "Rage Scar Yeti",
                    "Travel to Rage Scar Yeti."),
            },
        },
        {
            id = "accept-7735-pristine-yeti-hide",
            kind = "accept",
            priority = 250,
            text = "Use the Pristine Yeti Hide to accept Pristine Yeti Hide.",
            complete = QuestState(7735, "activeOrCompleted"),
        },
        {
            id = "accept-2844-the-giant-guardian",
            kind = "accept",
            priority = 260,
            text = "Accept The Giant Guardian from Rockbiter in The Twin Colossals.",
            complete = QuestState(2844, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.4238, 0.2204, "Rockbiter",
                    "Travel to Rockbiter."),
            },
        },
        {
            id = "objective-7003-zapped-giants",
            kind = "objective",
            priority = 270,
            text = "Use Zorbin's Ultra-Shrinker on Land Walker or Cliff Giant to turn them into non elites, kill them and collect 15 Miniaturization Residue in The Twin Colossals.",
            dependsOn = { "accept-7003-zapped-giants" },
            complete = QuestState(7003, "complete"),
            route = {
                Point(MAP.FERALAS, 0.3842, 0.2151, "Land Walker",
                    "Travel to Land Walker."),
            },
        },
        {
            id = "travel-2879-ruins-of-ravenwind",
            kind = "travel",
            priority = 280,
            text = "Travel to Ruins of Ravenwind.",
            route = {
                Point(MAP.FERALAS, 0.3853, 0.1575, "Ruins of Ravenwind",
                    "Travel to Ruins of Ravenwind."),
            },
        },
        {
            id = "objective-2879-the-stave-of-equinex",
            kind = "objective",
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 2944, state = "completed" } },
                },
            },
            text = "Use Troyas' Stave to create Stave of Equinex i in Ruins of Ravenwind.",
            dependsOn = { "accept-2879-the-stave-of-equinex" },
            complete = QuestState(2879, "complete"),
            route = {
                Point(MAP.FERALAS, 0.3888, 0.1322, "Ruins of Ravenwind",
                    "Travel to Ruins of Ravenwind."),
            },
        },
        {
            id = "turnin-2879-the-stave-of-equinex",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { quest = { id = 2944, state = "completed" } },
                },
            },
            text = "Turn in The Stave of Equinex in Ruins of Ravenwind.",
            dependsOn = { "objective-2879-the-stave-of-equinex" },
            complete = QuestState(2879, "completed"),
            route = {
                Point(MAP.FERALAS, 0.3888, 0.1322, "Ruins of Ravenwind",
                    "Travel to Ruins of Ravenwind."),
            },
        },
        {
            id = "accept-2942-the-morrow-stone",
            kind = "accept",
            priority = 310,
            conditions = {
                all = {
                    { quest = { id = 2944, state = "completed" } },
                },
            },
            text = "Accept The Morrow Stone in Ruins of Ravenwind.",
            complete = QuestState(2942, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.3888, 0.1322, "Ruins of Ravenwind",
                    "Travel to Ruins of Ravenwind."),
            },
        },
        {
            id = "turnin-2844-the-giant-guardian",
            kind = "turnin",
            priority = 320,
            text = "Turn in The Giant Guardian to Shay Leafrunner in Ruins of Ravenwind.",
            dependsOn = { "accept-2844-the-giant-guardian" },
            complete = QuestState(2844, "completed"),
            route = {
                Point(MAP.FERALAS, 0.3824, 0.1028, "Shay Leafrunner",
                    "Travel to Shay Leafrunner."),
            },
        },
        {
            id = "accept-2845-wandering-shay",
            kind = "accept",
            priority = 330,
            text = "Accept Wandering Shay from Shay Leafrunner in Ruins of Ravenwind.",
            complete = QuestState(2845, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.3824, 0.1028, "Shay Leafrunner",
                    "Travel to Shay Leafrunner."),
            },
        },
        {
            id = "objective-2845-wandering-shay",
            kind = "objective",
            priority = 340,
            text = "Take Shay Leafrunner to Rockbiter's camp, use the Shay's Bell to get her to follow you.",
            dependsOn = { "accept-2845-wandering-shay" },
            complete = QuestState(2845, "complete"),
            route = {
                Point(MAP.FERALAS, 0.4242, 0.2200, "Shay Leafrunner",
                    "Travel to Shay Leafrunner."),
            },
        },
        {
            id = "turnin-2845-wandering-shay",
            kind = "turnin",
            priority = 350,
            text = "Turn in Wandering Shay to Rockbiter in The Twin Colossals.",
            dependsOn = { "objective-2845-wandering-shay" },
            complete = QuestState(2845, "completed"),
            route = {
                Point(MAP.FERALAS, 0.4242, 0.2200, "Rockbiter",
                    "Travel to Rockbiter."),
            },
        },
        {
            id = "travel-the-forgotten-coast",
            kind = "travel",
            priority = 360,
            text = "Travel to The Forgotten Coast.",
            route = {
                Point(MAP.FERALAS, 0.4841, 0.3322, "Continue toward The Forgotten Coast",
                    "Continue toward The Forgotten Coast."),
                Point(MAP.FERALAS, 0.4482, 0.4343, "The Forgotten Coast",
                    "Travel to The Forgotten Coast."),
            },
        },
        {
            id = "turnin-7003-zapped-giants",
            kind = "turnin",
            priority = 370,
            text = "Turn in Zapped Giants to Zorbin Fandazzle in The Forgotten Coast.",
            dependsOn = { "objective-7003-zapped-giants" },
            complete = QuestState(7003, "completed"),
            route = {
                Point(MAP.FERALAS, 0.4482, 0.4343, "Zorbin Fandazzle",
                    "Travel to Zorbin Fandazzle."),
            },
        },
        {
            id = "travel-verdantis-river",
            kind = "travel",
            priority = 380,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 3841, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Verdantis River.",
            route = {
                Point(MAP.FERALAS, 0.4883, 0.4563, "Continue toward Verdantis River",
                    "Continue toward Verdantis River."),
                Point(MAP.FERALAS, 0.5070, 0.4991, "Continue toward Verdantis River",
                    "Continue toward Verdantis River."),
                Point(MAP.FERALAS, 0.6340, 0.5243, "Verdantis River",
                    "Travel to Verdantis River."),
            },
        },
        {
            id = "accept-3841-an-orphan-looking-for-a-home",
            kind = "accept",
            priority = 390,
            text = "Accept An Orphan Looking For a Home from Kindal Moonweaver.",
            complete = QuestState(3841, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.6560, 0.4683, "Continue toward An Orphan Looking For a Home",
                    "Continue toward An Orphan Looking For a Home."),
                Point(MAP.FERALAS, 0.6595, 0.4565, "Kindal Moonweaver",
                    "Travel to Kindal Moonweaver."),
            },
        },
        {
            id = "travel-2741-ruins-of-isildien",
            kind = "travel",
            priority = 400,
            text = "Travel to Ruins of Isildien.",
            route = {
                Point(MAP.FERALAS, 0.5489, 0.6890, "Continue toward Ruins of Isildien",
                    "Continue toward Ruins of Isildien."),
                Point(MAP.FERALAS, 0.5859, 0.7555, "Ruins of Isildien",
                    "Travel to Ruins of Isildien."),
            },
        },
        {
            id = "objective-2741-hippogryph-egg",
            kind = "objective",
            priority = 410,
            text = "Collect Hippogryph Egg in Ruins of Isildien.",
            complete = QuestState(2741, "complete"),
            route = {
                Point(MAP.FERALAS, 0.5859, 0.7555, "Ruins of Isildien",
                    "Travel to Ruins of Isildien."),
            },
        },
        {
            id = "accept-2767-rescue-oox-22-fe",
            kind = "accept",
            priority = 420,
            conditions = {
                all = {
                    { quest = { id = 2766, state = "completed" } },
                },
            },
            text = "Accept Rescue OOX-22/FE! from Homing Robot OOX-22/FE in Feral Scar Vale.",
            complete = QuestState(2767, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.5342, 0.5565, "Homing Robot OOX-22/FE",
                    "Travel to Homing Robot OOX-22/FE."),
            },
        },
        {
            id = "objective-2767-rescue-oox-22-fe",
            kind = "objective",
            priority = 430,
            conditions = {
                all = {
                    { quest = { id = 2766, state = "completed" } },
                },
            },
            text = "Escort Homing Robot OOX-22/FE to the dock along the Forgotten Coast.",
            dependsOn = { "accept-2767-rescue-oox-22-fe" },
            complete = QuestState(2767, "complete"),
            route = {
                Point(MAP.FERALAS, 0.5541, 0.5538, "Continue toward Rescue OOX-22/FE!",
                    "Continue toward Rescue OOX-22/FE!."),
                Point(MAP.FERALAS, 0.4859, 0.4504, "Continue toward Rescue OOX-22/FE!",
                    "Continue toward Rescue OOX-22/FE!."),
                Point(MAP.FERALAS, 0.4553, 0.4334, "Homing Robot OOX-22/FE",
                    "Travel to Homing Robot OOX-22/FE."),
            },
        },
        {
            id = "travel-2942-feathermoon-stronghold",
            kind = "travel",
            priority = 440,
            text = "Travel to Feathermoon Stronghold.",
            route = {
                Point(MAP.FERALAS, 0.3178, 0.4553, "Feathermoon Stronghold",
                    "Travel to Feathermoon Stronghold."),
            },
        },
        {
            id = "turnin-2942-the-morrow-stone",
            kind = "turnin",
            priority = 450,
            conditions = {
                all = {
                    { quest = { id = 2944, state = "completed" } },
                },
            },
            text = "Turn in The Morrow Stone to Troyas Moonbreeze in Feathermoon Stronghold.",
            dependsOn = { "accept-2942-the-morrow-stone" },
            complete = QuestState(2942, "completed"),
            route = {
                Point(MAP.FERALAS, 0.3178, 0.4553, "Troyas Moonbreeze",
                    "Travel to Troyas Moonbreeze."),
            },
        },
        {
            id = "turnin-7733-improved-quality",
            kind = "turnin",
            priority = 460,
            text = "Turn in Improved Quality to Pratt McGrubben in Feathermoon Stronghold.",
            dependsOn = { "objective-7733-improved-quality" },
            complete = QuestState(7733, "completed"),
            route = {
                Point(MAP.FERALAS, 0.3061, 0.4273, "Pratt McGrubben",
                    "Travel to Pratt McGrubben."),
            },
        },
        {
            id = "turnin-7735-pristine-yeti-hide",
            kind = "turnin",
            priority = 470,
            text = "Turn in Pristine Yeti Hide to Pratt McGrubben in Feathermoon Stronghold.",
            dependsOn = { "objective-7735-rage-scar-yeti" },
            complete = QuestState(7735, "completed"),
            route = {
                Point(MAP.FERALAS, 0.3061, 0.4273, "Pratt McGrubben",
                    "Travel to Pratt McGrubben."),
            },
        },
    },
})
