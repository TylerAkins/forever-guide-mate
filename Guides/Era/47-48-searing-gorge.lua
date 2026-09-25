local _, ns = ...

-- Horde Era leveling route for Searing Gorge, levels 47-48.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    SEARING_GORGE = 1427,
    BURNING_STEPPES = 1428,
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
    id = "leveling-era-47-48-searing-gorge",
    title = "47-48 Searing Gorge (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 47 } },
        },
    },
    goals = {
        {
            id = "accept-4449-caught",
            kind = "accept",
            priority = 20,
            text = "Accept Caught! in Grimesilt Dig Site.",
            complete = QuestState(4449, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.6551, 0.6214, "Grimesilt Dig Site",
                    "Travel to Grimesilt Dig Site."),
            },
        },
        {
            id = "objective-4449-caught",
            kind = "objective",
            priority = 30,
            text = "Kill 8 Dark Iron Geologists and collect 15 Silk Cloth in the Grimesilt Dig Site.",
            dependsOn = { "accept-4449-caught" },
            complete = QuestState(4449, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.6303, 0.5888, "Dark Iron Geologist",
                    "Travel to Dark Iron Geologist."),
            },
        },
        {
            id = "turnin-4449-caught",
            kind = "turnin",
            priority = 40,
            text = "Turn in Caught! in Grimesilt Dig Site.",
            dependsOn = { "objective-4449-caught" },
            complete = QuestState(4449, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.6551, 0.6214, "Grimesilt Dig Site",
                    "Travel to Grimesilt Dig Site."),
            },
        },
        {
            id = "accept-4450-ledger-from-tanaris",
            kind = "accept",
            priority = 50,
            text = "Accept Ledger from Tanaris in Grimesilt Dig Site.",
            complete = QuestState(4450, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.6551, 0.6214, "Grimesilt Dig Site",
                    "Travel to Grimesilt Dig Site."),
            },
        },
        {
            id = "objective-4450-1-goodsteel-ledger",
            kind = "objective",
            priority = 60,
            text = "Collect Goodsteel Ledger on the ground next to the Wooden Outhouse in Grimesilt Dig Site.",
            dependsOn = { "accept-4450-ledger-from-tanaris" },
            complete = QuestObjective(4450, 1),
            route = {
                Point(MAP.SEARING_GORGE, 0.6551, 0.6217, "Grimesilt Dig Site",
                    "Travel to Grimesilt Dig Site."),
            },
        },
        {
            id = "objective-4450-2-glassweb-spider",
            kind = "objective",
            priority = 70,
            text = "Kill Glassweb Spider and collect 20 Solid Crystal Leg Shaft in The Sea of Cinders.",
            dependsOn = { "accept-4450-ledger-from-tanaris" },
            complete = QuestObjective(4450, 2),
            route = {
                Point(MAP.SEARING_GORGE, 0.6000, 0.7026, "Continue toward Glassweb Spider",
                    "Continue toward Glassweb Spider."),
                Point(MAP.SEARING_GORGE, 0.6195, 0.5154, "Glassweb Spider",
                    "Travel to Glassweb Spider."),
            },
        },
        {
            id = "accept-3441-divine-retribution",
            kind = "accept",
            priority = 90,
            text = "Accept Divine Retribution from Velarok Windblade in Thorium Point.",
            complete = QuestState(3441, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.6698, 0.4168, "Continue toward Divine Retribution",
                    "Continue toward Divine Retribution."),
                Point(MAP.SEARING_GORGE, 0.3905, 0.3895, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "objective-3441-divine-retribution",
            kind = "objective",
            priority = 100,
            text = "Speak with Velarok Windblade in Thorium Point.",
            dependsOn = { "accept-3441-divine-retribution" },
            complete = QuestState(3441, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3895, 0.3892, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "turnin-3441-divine-retribution",
            kind = "turnin",
            priority = 110,
            text = "Turn in Divine Retribution to Velarok Windblade in Thorium Point.",
            dependsOn = { "objective-3441-divine-retribution" },
            complete = QuestState(3441, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3907, 0.3899, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "accept-3442-the-flawless-flame",
            kind = "accept",
            priority = 120,
            text = "Accept The Flawless Flame from Velarok Windblade in Thorium Point.",
            complete = QuestState(3442, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3851, 0.3885, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "accept-7701-wanted-overseer-maltorius",
            kind = "accept",
            priority = 140,
            text = "Accept WANTED: Overseer Maltorius in Thorium Point.",
            complete = QuestState(7701, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3767, 0.2656, "Thorium Point",
                    "Travel to Thorium Point."),
            },
        },
        {
            id = "accept-7728-stolen-smithing-tuyere-and-lookout-s-spygl",
            kind = "accept",
            priority = 150,
            text = "Accept STOLEN: Smithing Tuyere and Lookout's Spyglass in Thorium Point.",
            complete = QuestState(7728, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3767, 0.2656, "Thorium Point",
                    "Travel to Thorium Point."),
            },
        },
        {
            id = "accept-7729-job-opportunity-culling-the-competition",
            kind = "accept",
            priority = 160,
            text = "Accept JOB OPPORTUNITY: Culling the Competition in Thorium Point.",
            complete = QuestState(7729, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3787, 0.2725, "Thorium Point",
                    "Travel to Thorium Point."),
            },
        },
        {
            id = "accept-7723-curse-these-fat-fingers",
            kind = "accept",
            priority = 170,
            text = "Accept Curse These Fat Fingers from Hansel Heavyhands in Thorium Point.",
            complete = QuestState(7723, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3855, 0.2780, "Hansel Heavyhands",
                    "Travel to Hansel Heavyhands."),
            },
        },
        {
            id = "accept-7724-fiery-menace",
            kind = "accept",
            priority = 180,
            text = "Accept Fiery Menace! from Hansel Heavyhands in Thorium Point.",
            complete = QuestState(7724, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3855, 0.2780, "Hansel Heavyhands",
                    "Travel to Hansel Heavyhands."),
            },
        },
        {
            id = "accept-7727-incendosaurs-whateverosaur-is-more-like-it",
            kind = "accept",
            priority = 190,
            text = "Accept Incendosaurs? Whateverosaur is More Like It from Master Smith Burninate in Thorium Point.",
            complete = QuestState(7727, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3873, 0.2844, "Master Smith Burninate",
                    "Travel to Master Smith Burninate."),
            },
        },
        {
            id = "accept-7722-what-the-flux",
            kind = "accept",
            priority = 200,
            text = "Accept What the Flux? from Master Smith Burninate in Thorium Point.",
            complete = QuestState(7722, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3846, 0.2829, "Master Smith Burninate",
                    "Travel to Master Smith Burninate."),
            },
        },
        {
            id = "objective-7728-1-dark-iron-steamsmith",
            kind = "objective",
            priority = 210,
            text = "Kill Dark Iron Steamsmith collect Smithing Tuyere in The Cauldron.",
            dependsOn = { "accept-7728-stolen-smithing-tuyere-and-lookout-s-spygl" },
            complete = QuestObjective(7728, 1),
            route = {
                Point(MAP.SEARING_GORGE, 0.4071, 0.4949, "Dark Iron Steamsmith",
                    "Travel to Dark Iron Steamsmith."),
            },
        },
        {
            id = "objective-7728-2-dark-iron-lookout",
            kind = "objective",
            priority = 220,
            text = "Kill Dark Iron Lookout and collect Lookout's Spyglass in The Sea of Cinders.",
            dependsOn = { "accept-7728-stolen-smithing-tuyere-and-lookout-s-spygl" },
            complete = QuestObjective(7728, 2),
            route = {
                Point(MAP.SEARING_GORGE, 0.5354, 0.5833, "Dark Iron Lookout",
                    "Travel to Dark Iron Lookout."),
            },
        },
        {
            id = "objective-3442-the-flawless-flame",
            kind = "objective",
            priority = 230,
            text = "Kill Blazing Elemental for 4 Heart of Flame and Magma Elemental for 4 Golem Oil near Thorium Point You will have to wait for respawn.",
            dependsOn = { "accept-3442-the-flawless-flame" },
            complete = QuestState(3442, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3909, 0.4174, "Continue toward The Flawless Flame",
                    "Continue toward The Flawless Flame."),
                Point(MAP.SEARING_GORGE, 0.3134, 0.4375, "Continue toward The Flawless Flame",
                    "Continue toward The Flawless Flame."),
                Point(MAP.SEARING_GORGE, 0.4268, 0.3859, "Blazing Elemental",
                    "Travel to Blazing Elemental."),
            },
        },
        {
            id = "objective-7724-fiery-menace",
            kind = "objective",
            priority = 240,
            text = "Kill 20 Greater Lava Spider in Firewatch Ridge.",
            dependsOn = { "accept-7724-fiery-menace" },
            complete = QuestState(7724, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.2807, 0.4591, "Greater Lava Spider",
                    "Travel to Greater Lava Spider."),
            },
        },
        {
            id = "objective-7723-curse-these-fat-fingers",
            kind = "objective",
            priority = 250,
            text = "Kill 20 Heavy War Golem in Firewatch Ridge.",
            dependsOn = { "accept-7723-curse-these-fat-fingers" },
            complete = QuestState(7723, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3547, 0.4692, "Heavy War Golem",
                    "Travel to Heavy War Golem."),
            },
        },
        {
            id = "turnin-3442-the-flawless-flame",
            kind = "turnin",
            priority = 260,
            text = "Turn in The Flawless Flame to Velarok Windblade in Thorium Point.",
            dependsOn = { "objective-3442-the-flawless-flame" },
            complete = QuestState(3442, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3904, 0.3914, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "accept-3443-forging-the-shaft",
            kind = "accept",
            priority = 270,
            text = "Accept Forging the Shaft from Velarok Windblade in Thorium Point.",
            complete = QuestState(3443, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3904, 0.3914, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "objective-7727-incendosaurs-whateverosaur-is-more-like-it",
            kind = "objective",
            priority = 280,
            text = "Kill 20 Incendosaur in The Slag Pit.",
            dependsOn = { "accept-7727-incendosaurs-whateverosaur-is-more-like-it" },
            complete = QuestState(7727, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.4767, 0.4739, "Continue toward Incendosaurs? Whateverosaur is More Like It",
                    "Continue toward Incendosaurs? Whateverosaur is More Like It."),
                Point(MAP.SEARING_GORGE, 0.4853, 0.2821, "Incendosaur",
                    "Travel to Incendosaur."),
            },
        },
        {
            id = "objective-7701-wanted-overseer-maltorius",
            kind = "objective",
            priority = 300,
            text = "Kill Dark Iron Taskmaster and collect Head of Overseer Maltorius in The Slag Pit This is a group quest, hard to solo and safe to skip.",
            dependsOn = { "accept-7701-wanted-overseer-maltorius" },
            complete = QuestState(7701, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.4084, 0.3582, "Dark Iron Taskmaster",
                    "Travel to Dark Iron Taskmaster."),
            },
        },
        {
            id = "objective-7722-what-the-flux",
            kind = "objective",
            priority = 310,
            text = "Collect Secret Plans: Fiery Flux in The Slag Pit If you can distract Dark Iron Taskmaster you can loot Secret Plans: Fiery Flux without killing him, safe to skip.",
            dependsOn = { "accept-7722-what-the-flux" },
            complete = QuestState(7722, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.4051, 0.3576, "Dark Iron Taskmaster",
                    "Travel to Dark Iron Taskmaster."),
            },
        },
        {
            id = "objective-3443-forging-the-shaft",
            kind = "objective",
            priority = 320,
            text = "Kill Dark Iron Slaver or Dark Iron Taskmaster and collect 8 Thorium Plated Dagger in The Slag Pit.",
            dependsOn = { "accept-3443-forging-the-shaft" },
            complete = QuestState(3443, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.4380, 0.3192, "Dark Iron Slaver",
                    "Travel to Dark Iron Slaver."),
            },
        },
        {
            id = "objective-7729-job-opportunity-culling-the-competition",
            kind = "objective",
            priority = 330,
            text = "Kill 15 Dark Iron Slaver and 15 Dark Iron Taskmaster in The Slag Pit.",
            dependsOn = { "accept-7729-job-opportunity-culling-the-competition" },
            complete = QuestState(7729, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.4423, 0.3172, "Dark Iron Slaver",
                    "Travel to Dark Iron Slaver."),
            },
        },
        {
            id = "turnin-3443-forging-the-shaft",
            kind = "turnin",
            priority = 350,
            text = "Turn in Forging the Shaft to Velarok Windblade in Thorium Point.",
            dependsOn = { "objective-3443-forging-the-shaft" },
            complete = QuestState(3443, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3902, 0.3901, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "accept-3452-the-flame-s-casing",
            kind = "accept",
            priority = 360,
            text = "Accept The Flame's Casing from Velarok Windblade in Thorium Point.",
            complete = QuestState(3452, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3848, 0.3799, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "turnin-7701-wanted-overseer-maltorius",
            kind = "turnin",
            priority = 380,
            text = "Turn in WANTED: Overseer Maltorius to Lookout Captain Lolo Longstriker in Thorium Point.",
            dependsOn = { "objective-7701-wanted-overseer-maltorius" },
            complete = QuestState(7701, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3771, 0.2654, "Lookout Captain Lolo Longstriker",
                    "Travel to Lookout Captain Lolo Longstriker."),
            },
        },
        {
            id = "turnin-7723-curse-these-fat-fingers",
            kind = "turnin",
            priority = 390,
            text = "Turn in Curse These Fat Fingers to Hansel Heavyhands in Thorium Point.",
            dependsOn = { "objective-7723-curse-these-fat-fingers" },
            complete = QuestState(7723, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3850, 0.2779, "Hansel Heavyhands",
                    "Travel to Hansel Heavyhands."),
            },
        },
        {
            id = "turnin-7724-fiery-menace",
            kind = "turnin",
            priority = 400,
            text = "Turn in Fiery Menace! to Hansel Heavyhands in Thorium Point.",
            dependsOn = { "objective-7724-fiery-menace" },
            complete = QuestState(7724, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3850, 0.2779, "Hansel Heavyhands",
                    "Travel to Hansel Heavyhands."),
            },
        },
        {
            id = "turnin-7727-incendosaurs-whateverosaur-is-more-like-it",
            kind = "turnin",
            priority = 410,
            text = "Turn in Incendosaurs? Whateverosaur is More Like It to Hansel Heavyhands in Thorium Point.",
            dependsOn = { "objective-7727-incendosaurs-whateverosaur-is-more-like-it" },
            complete = QuestState(7727, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3850, 0.2779, "Hansel Heavyhands",
                    "Travel to Hansel Heavyhands."),
            },
        },
        {
            id = "turnin-7722-what-the-flux",
            kind = "turnin",
            priority = 420,
            text = "Turn in What the Flux? to Master Smith Burninate in Thorium Point.",
            dependsOn = { "objective-7722-what-the-flux" },
            complete = QuestState(7722, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3877, 0.2847, "Master Smith Burninate",
                    "Travel to Master Smith Burninate."),
            },
        },
        {
            id = "turnin-7728-stolen-smithing-tuyere-and-lookout-s-spygl",
            kind = "turnin",
            priority = 430,
            text = "Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange in Thorium Point.",
            dependsOn = { "objective-7728-1-dark-iron-steamsmith", "objective-7728-2-dark-iron-lookout" },
            complete = QuestState(7728, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3896, 0.2754, "Taskmaster Scrange",
                    "Travel to Taskmaster Scrange."),
            },
        },
        {
            id = "turnin-7729-job-opportunity-culling-the-competition",
            kind = "turnin",
            priority = 440,
            text = "Turn in JOB OPPORTUNITY: Culling the Competition to Taskmaster Scrange in Thorium Point.",
            dependsOn = { "objective-7729-job-opportunity-culling-the-competition" },
            complete = QuestState(7729, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3896, 0.2754, "Taskmaster Scrange",
                    "Travel to Taskmaster Scrange."),
            },
        },
        {
            id = "objective-3452-the-flame-s-casing",
            kind = "objective",
            priority = 460,
            text = "Kill Twilight Fire Guard or Twilight Dark Shaman and collect Symbol of Ragnaros in Firewatch Ridge Easy to solo, you can pull the elite one at a time, don't recommend skipping.",
            dependsOn = { "accept-3452-the-flame-s-casing" },
            complete = QuestState(3452, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.2195, 0.3618, "Twilight Fire Guard",
                    "Travel to Twilight Fire Guard."),
            },
        },
        {
            id = "turnin-3452-the-flame-s-casing",
            kind = "turnin",
            priority = 480,
            text = "Turn in The Flame's Casing to Velarok Windblade in Thorium Point.",
            dependsOn = { "objective-3452-the-flame-s-casing" },
            complete = QuestState(3452, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3904, 0.3897, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "accept-3453-the-torch-of-retribution",
            kind = "accept",
            priority = 490,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Accept The Torch of Retribution from Velarok Windblade in Thorium Point.",
            complete = QuestState(3453, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3904, 0.3897, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "objective-3453-the-torch-of-retribution",
            kind = "objective",
            priority = 500,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Just for Velarok Windblade to finish.",
            dependsOn = { "accept-3453-the-torch-of-retribution" },
            complete = QuestState(3453, "complete"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3904, 0.3897, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "turnin-3453-the-torch-of-retribution",
            kind = "turnin",
            priority = 510,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Turn in The Torch of Retribution to Velarok Windblade in Thorium Point.",
            dependsOn = { "objective-3453-the-torch-of-retribution" },
            complete = QuestState(3453, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3904, 0.3897, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "accept-3454-the-torch-of-retribution",
            kind = "accept",
            priority = 520,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Accept The Torch of Retribution from Velarok Windblade in Thorium Point.",
            complete = QuestState(3454, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3904, 0.3897, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "turnin-3454-the-torch-of-retribution",
            kind = "turnin",
            priority = 530,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Turn in The Torch of Retribution.",
            dependsOn = { "accept-3454-the-torch-of-retribution" },
            complete = QuestState(3454, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3908, 0.3928, "The Torch of Retribution",
                    "Travel to The Torch of Retribution."),
            },
        },
        {
            id = "accept-3462-squire-maltrake",
            kind = "accept",
            priority = 540,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Accept Squire Maltrake from Velarok Windblade in Thorium Point.",
            complete = QuestState(3462, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3916, 0.3900, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "turnin-3462-squire-maltrake",
            kind = "turnin",
            priority = 550,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Turn in Squire Maltrake to Velarok Windblade in Thorium Point.",
            dependsOn = { "accept-3462-squire-maltrake" },
            complete = QuestState(3462, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3916, 0.3900, "Velarok Windblade",
                    "Travel to Velarok Windblade."),
            },
        },
        {
            id = "accept-3463-set-them-ablaze",
            kind = "accept",
            priority = 560,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Accept Set Them Ablaze! from Squire Maltrake in Thorium Point.",
            complete = QuestState(3463, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3916, 0.3900, "Squire Maltrake",
                    "Travel to Squire Maltrake."),
            },
        },
        {
            id = "objective-3463-4-northern-tower-ablaze",
            kind = "objective",
            priority = 570,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Equip Torch of Retribution and click on Sentry Brazier Northern Tower in The Cauldron.",
            dependsOn = { "accept-3463-set-them-ablaze" },
            complete = QuestObjective(3463, 4),
            route = {
                Point(MAP.SEARING_GORGE, 0.3331, 0.5444, "The Cauldron",
                    "Travel to The Cauldron."),
            },
        },
        {
            id = "objective-3463-1-western-tower-ablaze",
            kind = "objective",
            priority = 580,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Equip Torch of Retribution and click on Sentry Brazier Western Tower.",
            dependsOn = { "accept-3463-set-them-ablaze" },
            complete = QuestObjective(3463, 1),
            route = {
                Point(MAP.SEARING_GORGE, 0.3572, 0.6069, "Western Tower Ablaze",
                    "Travel to Western Tower Ablaze."),
            },
        },
        {
            id = "objective-3463-2-southern-tower-ablaze",
            kind = "objective",
            priority = 590,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Equip Torch of Retribution and click on Sentry Brazier Southern Tower in The Cauldron.",
            dependsOn = { "accept-3463-set-them-ablaze" },
            complete = QuestObjective(3463, 2),
            route = {
                Point(MAP.SEARING_GORGE, 0.4398, 0.6091, "The Cauldron",
                    "Travel to The Cauldron."),
            },
        },
        {
            id = "objective-3463-3-eastern-tower-ablaze",
            kind = "objective",
            priority = 600,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Equip Torch of Retribution and click on Sentry Brazier Eastern in The Cauldron.",
            dependsOn = { "accept-3463-set-them-ablaze" },
            complete = QuestObjective(3463, 3),
            route = {
                Point(MAP.SEARING_GORGE, 0.5271, 0.5769, "Continue toward Eastern Tower Ablaze",
                    "Continue toward Eastern Tower Ablaze."),
                Point(MAP.SEARING_GORGE, 0.5007, 0.5486, "The Cauldron",
                    "Travel to The Cauldron."),
            },
        },
        {
            id = "turnin-3463-set-them-ablaze",
            kind = "turnin",
            priority = 620,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Turn in Set Them Ablaze! to Squire Maltrake in Thorium Point.",
            dependsOn = { "objective-3463-4-northern-tower-ablaze", "objective-3463-1-western-tower-ablaze", "objective-3463-2-southern-tower-ablaze", "objective-3463-3-eastern-tower-ablaze" },
            complete = QuestState(3463, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3917, 0.3899, "Squire Maltrake",
                    "Travel to Squire Maltrake."),
            },
        },
        {
            id = "accept-3481-trinkets",
            kind = "accept",
            priority = 630,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Accept Trinkets... in Thorium Point.",
            complete = QuestState(3481, "activeOrCompleted"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3916, 0.3900, "Thorium Point",
                    "Travel to Thorium Point."),
            },
        },
        {
            id = "turnin-3481-trinkets",
            kind = "turnin",
            priority = 640,
            conditions = {
                all = {
                    { quest = { id = 3452, state = "completed" } },
                },
            },
            text = "Turn in Trinkets... in Thorium Point.",
            dependsOn = { "accept-3481-trinkets" },
            complete = QuestState(3481, "completed"),
            route = {
                Point(MAP.SEARING_GORGE, 0.3916, 0.3900, "Thorium Point",
                    "Travel to Thorium Point."),
            },
        },
    },
})
