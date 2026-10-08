local _, ns = ...

-- Forever Casual spine: Searing Gorge (51-51)
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
    BADLANDS = 1418,
    SEARING_GORGE = 1427,
}

ns:RegisterGuide({
    id = "leveling-era-horde-searing-gorge",
    title = "Searing Gorge",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 51 } },
        },
    },
    goals = {
        {
            id = "accept-3821-dreadmaul-rock",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Dreadmaul Rock.",
            complete = QuestState(3821, "activeOrCompleted"),
            route = {
                Point(1418, 0.0336, 0.4807, "Dreadmaul Rock",
                    "Travel to Dreadmaul Rock."),
            },
        },
        {
            id = "accept-4449-caught",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Caught!.",
            complete = QuestState(4449, "activeOrCompleted"),
            route = {
                Point(1427, 0.6554, 0.6224, "Caught!",
                    "Travel to Caught!."),
            },
        },
        {
            id = "objective-4449-1-dark-iron-geologist",
            kind = "objective",
            priority = 30,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Kill 8 Dark Iron Geologist.",
            complete = QuestObjective(4449, 1, "Dark Iron Geologist"),
            dependsOn = { "accept-4449-caught" },
            route = {
                Point(1427, 0.6340, 0.6140, "Dark Iron Geologist",
                    "Travel to Dark Iron Geologist."),
            },
        },
        {
            id = "turnin-4449-caught",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Caught!.",
            complete = QuestState(4449, "completed"),
            dependsOn = { "accept-4449-caught", "objective-4449-1-dark-iron-geologist" },
            route = {
                Point(1427, 0.6554, 0.6224, "Caught!",
                    "Travel to Caught!."),
            },
        },
        {
            id = "accept-3441-divine-retribution",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Divine Retribution.",
            complete = QuestState(3441, "activeOrCompleted"),
            route = {
                Point(1427, 0.6679, 0.3456, "Divine Retribution",
                    "Travel to Divine Retribution."),
            },
        },
        {
            id = "turnin-3441-divine-retribution",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Divine Retribution.",
            complete = QuestState(3441, "completed"),
            dependsOn = { "accept-3441-divine-retribution" },
            route = {
                Point(1427, 0.3905, 0.3899, "Divine Retribution",
                    "Travel to Divine Retribution."),
            },
        },
        {
            id = "accept-3442-the-flawless-flame",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept The Flawless Flame.",
            complete = QuestState(3442, "activeOrCompleted"),
            route = {
                Point(1427, 0.3905, 0.3899, "The Flawless Flame",
                    "Travel to The Flawless Flame."),
            },
        },
        {
            id = "accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept STOLEN: Smithing Tuyere and Lookout's Spyglass.",
            complete = QuestState(7728, "activeOrCompleted"),
            route = {
                Point(1427, 0.3763, 0.2653, "STOLEN: Smithing Tuyere and Lookout's Spyglass",
                    "Travel to STOLEN: Smithing Tuyere and Lookout's Spyglass."),
            },
        },
        {
            id = "accept-7729-job-opportunity-culling-the-competition",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept JOB OPPORTUNITY: Culling the Competition.",
            complete = QuestState(7729, "activeOrCompleted"),
            route = {
                Point(1427, 0.3763, 0.2653, "JOB OPPORTUNITY: Culling the Competition",
                    "Travel to JOB OPPORTUNITY: Culling the Competition."),
            },
        },
        {
            id = "accept-7723-curse-these-fat-fingers",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Curse These Fat Fingers.",
            complete = QuestState(7723, "activeOrCompleted"),
            route = {
                Point(1427, 0.3857, 0.2780, "Curse These Fat Fingers",
                    "Travel to Curse These Fat Fingers."),
            },
        },
        {
            id = "accept-7724-fiery-menace",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Fiery Menace!.",
            complete = QuestState(7724, "activeOrCompleted"),
            route = {
                Point(1427, 0.3857, 0.2780, "Fiery Menace!",
                    "Travel to Fiery Menace!."),
            },
        },
        {
            id = "accept-7727-incendosaurs-whateverosaur-is-more-like-",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Incendosaurs? Whateverosaur is More Like It.",
            complete = QuestState(7727, "activeOrCompleted"),
            route = {
                Point(1427, 0.3857, 0.2780, "Incendosaurs? Whateverosaur is More Like It",
                    "Travel to Incendosaurs? Whateverosaur is More Like It."),
            },
        },
        {
            id = "objective-7728-1-dark-iron-steamsmith",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Kill Dark Iron Steamsmith.",
            complete = QuestObjective(7728, 1, "Dark Iron Steamsmith"),
            dependsOn = { "accept-7728-stolen-smithing-tuyere-and-lookout-s-spy" },
            route = {
                Point(1427, 0.3920, 0.4940, "Dark Iron Steamsmith",
                    "Travel to Dark Iron Steamsmith."),
            },
        },
        {
            id = "turnin-3442-the-flawless-flame",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Flawless Flame.",
            complete = QuestState(3442, "completed"),
            dependsOn = { "accept-3442-the-flawless-flame" },
            route = {
                Point(1427, 0.3905, 0.3899, "The Flawless Flame",
                    "Travel to The Flawless Flame."),
            },
        },
        {
            id = "accept-3443-forging-the-shaft",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Forging the Shaft.",
            complete = QuestState(3443, "activeOrCompleted"),
            route = {
                Point(1427, 0.3905, 0.3899, "Forging the Shaft",
                    "Travel to Forging the Shaft."),
            },
        },
        {
            id = "objective-7727-1-incendosaur",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Kill 20 Incendosaur.",
            complete = QuestObjective(7727, 1, "Incendosaur"),
            dependsOn = { "accept-7727-incendosaurs-whateverosaur-is-more-like-" },
            route = {
                Point(1427, 0.4773, 0.4192, "Incendosaur",
                    "Travel to Incendosaur."),
            },
        },
        {
            id = "accept-4451-the-key-to-freedom",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Use the Grim Guzzler Key to accept The Key to Freedom.",
            complete = QuestState(4451, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-3443-forging-the-shaft",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Forging the Shaft.",
            complete = QuestState(3443, "completed"),
            dependsOn = { "accept-3443-forging-the-shaft" },
            route = {
                Point(1427, 0.4960, 0.4550, "Forging the Shaft",
                    "Travel to Forging the Shaft."),
            },
        },
        {
            id = "accept-3452-the-flame-s-casing",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept The Flame's Casing.",
            complete = QuestState(3452, "activeOrCompleted"),
            route = {
                Point(1427, 0.4960, 0.4550, "The Flame's Casing",
                    "Travel to The Flame's Casing."),
            },
        },
        {
            id = "objective-3452-1-twilight-dark-shaman",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Kill Twilight Dark Shaman.",
            complete = QuestObjective(3452, 1, "Twilight Dark Shaman"),
            dependsOn = { "accept-3452-the-flame-s-casing" },
            route = {
                Point(1427, 0.2500, 0.3640, "Twilight Dark Shaman",
                    "Travel to Twilight Dark Shaman."),
            },
        },
        {
            id = "turnin-3452-the-flame-s-casing",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Flame's Casing.",
            complete = QuestState(3452, "completed"),
            dependsOn = { "accept-3452-the-flame-s-casing", "objective-3452-1-twilight-dark-shaman" },
            route = {
                Point(1427, 0.2116, 0.3591, "The Flame's Casing",
                    "Travel to The Flame's Casing."),
            },
        },
        {
            id = "accept-3453-the-torch-of-retribution",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept The Torch of Retribution.",
            complete = QuestState(3453, "activeOrCompleted"),
            route = {
                Point(1427, 0.2116, 0.3591, "The Torch of Retribution",
                    "Travel to The Torch of Retribution."),
            },
        },
        {
            id = "turnin-3453-the-torch-of-retribution",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Torch of Retribution.",
            complete = QuestState(3453, "completed"),
            dependsOn = { "accept-3453-the-torch-of-retribution" },
            route = {
                Point(1427, 0.3905, 0.3899, "The Torch of Retribution",
                    "Travel to The Torch of Retribution."),
            },
        },
        {
            id = "accept-3454-the-torch-of-retribution",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept The Torch of Retribution.",
            complete = QuestState(3454, "activeOrCompleted"),
            route = {
                Point(1427, 0.3905, 0.3899, "The Torch of Retribution",
                    "Travel to The Torch of Retribution."),
            },
        },
        {
            id = "turnin-3454-the-torch-of-retribution",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Torch of Retribution.",
            complete = QuestState(3454, "completed"),
            dependsOn = { "accept-3454-the-torch-of-retribution" },
            route = {
                Point(1427, 0.3906, 0.3906, "The Torch of Retribution",
                    "Travel to The Torch of Retribution."),
            },
        },
        {
            id = "accept-3462-squire-maltrake",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Squire Maltrake.",
            complete = QuestState(3462, "activeOrCompleted"),
            route = {
                Point(1427, 0.3905, 0.3900, "Squire Maltrake",
                    "Travel to Squire Maltrake."),
            },
        },
        {
            id = "turnin-3462-squire-maltrake",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Squire Maltrake.",
            complete = QuestState(3462, "completed"),
            dependsOn = { "accept-3462-squire-maltrake" },
            route = {
                Point(1427, 0.3916, 0.3899, "Squire Maltrake",
                    "Travel to Squire Maltrake."),
            },
        },
        {
            id = "accept-3463-set-them-ablaze",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Set Them Ablaze!.",
            complete = QuestState(3463, "activeOrCompleted"),
            route = {
                Point(1427, 0.3916, 0.3899, "Set Them Ablaze!",
                    "Travel to Set Them Ablaze!."),
            },
        },
        {
            id = "turnin-4451-the-key-to-freedom",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Key to Freedom.",
            complete = QuestState(4451, "completed"),
            dependsOn = { "accept-4451-the-key-to-freedom" },
            route = {
                Point(1427, 0.6553, 0.6223, "The Key to Freedom",
                    "Travel to The Key to Freedom."),
            },
        },
        {
            id = "turnin-3463-set-them-ablaze",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Set Them Ablaze!.",
            complete = QuestState(3463, "completed"),
            dependsOn = { "accept-3463-set-them-ablaze" },
            route = {
                Point(1427, 0.6679, 0.3456, "Set Them Ablaze!",
                    "Travel to Set Them Ablaze!."),
            },
        },
        {
            id = "accept-3481-trinkets",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Trinkets...",
            complete = QuestState(3481, "activeOrCompleted"),
            route = {
                Point(1427, 0.3886, 0.3899, "Trinkets..",
                    "Travel to Trinkets...."),
            },
        },
        {
            id = "turnin-3481-trinkets",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Trinkets...",
            complete = QuestState(3481, "completed"),
            dependsOn = { "accept-3481-trinkets" },
            route = {
                Point(1427, 0.3886, 0.3899, "Trinkets..",
                    "Travel to Trinkets...."),
            },
        },
        {
            id = "objective-4022-1-hoard-of-the-black-dragonflight",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Use Hoard of the Black Dragonflight.",
            complete = QuestObjective(4022, 1, "Hoard of the Black Dragonflight"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-7723-curse-these-fat-fingers",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Curse These Fat Fingers.",
            complete = QuestState(7723, "completed"),
            dependsOn = { "accept-7723-curse-these-fat-fingers" },
            route = {
                Point(1427, 0.3152, 0.3354, "Curse These Fat Fingers",
                    "Travel to Curse These Fat Fingers."),
            },
        },
        {
            id = "turnin-7724-fiery-menace",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Fiery Menace!.",
            complete = QuestState(7724, "completed"),
            dependsOn = { "accept-7724-fiery-menace" },
            route = {
                Point(1427, 0.3152, 0.3354, "Fiery Menace!",
                    "Travel to Fiery Menace!."),
            },
        },
        {
            id = "turnin-7727-incendosaurs-whateverosaur-is-more-like-",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Incendosaurs? Whateverosaur is More Like It.",
            complete = QuestState(7727, "completed"),
            dependsOn = { "accept-7727-incendosaurs-whateverosaur-is-more-like-", "objective-7727-1-incendosaur" },
            route = {
                Point(1427, 0.3152, 0.3354, "Incendosaurs? Whateverosaur is More Like It",
                    "Travel to Incendosaurs? Whateverosaur is More Like It."),
            },
        },
        {
            id = "turnin-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass.",
            complete = QuestState(7728, "completed"),
            dependsOn = { "accept-7728-stolen-smithing-tuyere-and-lookout-s-spy", "objective-7728-1-dark-iron-steamsmith" },
            route = {
                Point(1427, 0.3898, 0.2751, "STOLEN: Smithing Tuyere and Lookout's Spyglass",
                    "Travel to STOLEN: Smithing Tuyere and Lookout's Spyglass."),
            },
        },
        {
            id = "turnin-7729-job-opportunity-culling-the-competition",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in JOB OPPORTUNITY: Culling the Competition.",
            complete = QuestState(7729, "completed"),
            dependsOn = { "accept-7729-job-opportunity-culling-the-competition" },
            route = {
                Point(1427, 0.3898, 0.2751, "JOB OPPORTUNITY: Culling the Competition",
                    "Travel to JOB OPPORTUNITY: Culling the Competition."),
            },
        },
    },
})
