local _, ns = ...

-- Forever Casual spine: Searing Gorge (50-51)
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
    SEARING_GORGE = 1427,
    LOCH_MODAN = 1432,
    STORMWIND_CITY = 1453,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-searing-gorge",
    title = "Searing Gorge",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 50 } },
        },
    },
    goals = {
        {
            id = "accept-7723-curse-these-fat-fingers",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 20,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 30,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Incendosaurs? Whateverosaur is More Like It.",
            complete = QuestState(7727, "activeOrCompleted"),
            route = {
                Point(1427, 0.3857, 0.2780, "Incendosaurs? Whateverosaur is More Like It",
                    "Travel to Incendosaurs? Whateverosaur is More Like It."),
            },
        },
        {
            id = "accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 50,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept JOB OPPORTUNITY: Culling the Competition.",
            complete = QuestState(7729, "activeOrCompleted"),
            route = {
                Point(1427, 0.3763, 0.2653, "JOB OPPORTUNITY: Culling the Competition",
                    "Travel to JOB OPPORTUNITY: Culling the Competition."),
            },
        },
        {
            id = "accept-3441-divine-retribution",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Divine Retribution.",
            complete = QuestState(3441, "activeOrCompleted"),
            route = {
                Point(1427, 0.3905, 0.3899, "Divine Retribution",
                    "Travel to Divine Retribution."),
            },
        },
        {
            id = "turnin-3441-divine-retribution",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 80,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Flawless Flame.",
            complete = QuestState(3442, "activeOrCompleted"),
            route = {
                Point(1427, 0.3905, 0.3899, "The Flawless Flame",
                    "Travel to The Flawless Flame."),
            },
        },
        {
            id = "objective-7728-1-dark-iron-steamsmith",
            kind = "objective",
            priority = 90,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 100,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 110,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 120,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 130,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Use the Grim Guzzler Key to accept The Key to Freedom.",
            complete = QuestState(4451, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-3443-forging-the-shaft",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 150,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 160,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 170,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 180,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 190,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 200,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 210,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 220,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 230,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 240,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 250,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            id = "accept-4449-caught",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Caught!.",
            complete = QuestState(4449, "activeOrCompleted"),
            route = {
                Point(1427, 0.6553, 0.6223, "Caught!",
                    "Travel to Caught!."),
            },
        },
        {
            id = "objective-4449-1-dark-iron-geologist",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            id = "note-3181-margol-loot",
            kind = "note",
            priority = 285,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
            } },
            text = "Kill Margol the Rager and loot Margol's Horn.",
            complete = { any = {
                { quest = { id = 3181, state = "activeOrCompleted" } },
                { item = "Margol's Horn" },
            } },
            route = {
                Point(1427, 0.3700, 0.7200, "Margol the Rager",
                    "Travel to Margol the Rager."),
            },
        },
        {
            id = "accept-3181-the-horn-of-the-beast",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
            } },
            text = "Use the Margol's Horn to accept The Horn of the Beast.",
            complete = QuestState(3181, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-4449-caught",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            id = "accept-3367-suntara-stones",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
            } },
            text = "Accept Suntara Stones.",
            complete = QuestState(3367, "activeOrCompleted"),
            route = {
                Point(1427, 0.6392, 0.6098, "Suntara Stones",
                    "Travel to Suntara Stones."),
            },
        },
        {
            id = "turnin-3367-suntara-stones",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Suntara Stones.",
            complete = QuestState(3367, "completed"),
            dependsOn = { "accept-3367-suntara-stones" },
            route = {
                Point(1427, 0.7445, 0.1929, "Suntara Stones",
                    "Travel to Suntara Stones."),
            },
        },
        {
            id = "accept-3368-suntara-stones",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Suntara Stones.",
            complete = QuestState(3368, "activeOrCompleted"),
            route = {
                Point(1427, 0.7445, 0.1929, "Suntara Stones",
                    "Travel to Suntara Stones."),
            },
        },
        {
            id = "turnin-3463-set-them-ablaze",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Set Them Ablaze!.",
            complete = QuestState(3463, "completed"),
            dependsOn = { "accept-3463-set-them-ablaze" },
            route = {
                Point(1427, 0.3917, 0.3900, "Set Them Ablaze!",
                    "Travel to Set Them Ablaze!."),
            },
        },
        {
            id = "accept-3481-trinkets",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 360,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 370,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Use Hoard of the Black Dragonflight.",
            complete = QuestObjective(4022, 1, "Hoard of the Black Dragonflight"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-7723-curse-these-fat-fingers",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 390,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 400,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 410,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
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
            priority = 420,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in JOB OPPORTUNITY: Culling the Competition.",
            complete = QuestState(7729, "completed"),
            dependsOn = { "accept-7729-job-opportunity-culling-the-competition" },
            route = {
                Point(1427, 0.3898, 0.2751, "JOB OPPORTUNITY: Culling the Competition",
                    "Travel to JOB OPPORTUNITY: Culling the Competition."),
            },
        },
        {
            id = "turnin-3181-the-horn-of-the-beast",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Horn of the Beast.",
            complete = QuestState(3181, "completed"),
            dependsOn = { "accept-3181-the-horn-of-the-beast" },
            route = {
                Point(1432, 0.1819, 0.8400, "The Horn of the Beast",
                    "Travel to The Horn of the Beast."),
            },
        },
        {
            id = "accept-3182-proof-of-deed",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Proof of Deed.",
            complete = QuestState(3182, "activeOrCompleted"),
            route = {
                Point(1432, 0.1819, 0.8400, "Proof of Deed",
                    "Travel to Proof of Deed."),
            },
        },
        {
            id = "objective-7791-1-wool-cloth",
            kind = "objective",
            priority = 450,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Collect 60 Wool Cloth.",
            complete = QuestObjective(7791, 1, "Wool Cloth"),
            route = {
                Point(1453, 0.5362, 0.5976, "Wool Cloth",
                    "Travel to Wool Cloth."),
            },
        },
        {
            id = "objective-7793-1-silk-cloth",
            kind = "objective",
            priority = 460,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Collect 60 Silk Cloth.",
            complete = QuestObjective(7793, 1, "Silk Cloth"),
            route = {
                Point(1453, 0.5362, 0.5976, "Silk Cloth",
                    "Travel to Silk Cloth."),
            },
        },
        {
            id = "objective-7794-1-mageweave-cloth",
            kind = "objective",
            priority = 470,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Collect 60 Mageweave Cloth.",
            complete = QuestObjective(7794, 1, "Mageweave Cloth"),
            route = {
                Point(1453, 0.5362, 0.5976, "Mageweave Cloth",
                    "Travel to Mageweave Cloth."),
            },
        },
        {
            id = "objective-7795-1-runecloth",
            kind = "objective",
            priority = 480,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Collect 60 Runecloth.",
            complete = QuestObjective(7795, 1, "Runecloth"),
            route = {
                Point(1453, 0.5362, 0.5976, "Runecloth",
                    "Travel to Runecloth."),
            },
        },
        {
            id = "accept-7791-a-donation-of-wool",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Wool.",
            complete = QuestState(7791, "activeOrCompleted"),
            route = {
                Point(1453, 0.4428, 0.7398, "A Donation of Wool",
                    "Travel to A Donation of Wool."),
            },
        },
        {
            id = "accept-7793-a-donation-of-silk",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Silk.",
            complete = QuestState(7793, "activeOrCompleted"),
            route = {
                Point(1453, 0.4428, 0.7398, "A Donation of Silk",
                    "Travel to A Donation of Silk."),
            },
        },
        {
            id = "accept-7794-a-donation-of-mageweave",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Mageweave.",
            complete = QuestState(7794, "activeOrCompleted"),
            route = {
                Point(1453, 0.4428, 0.7398, "A Donation of Mageweave",
                    "Travel to A Donation of Mageweave."),
            },
        },
        {
            id = "accept-7795-a-donation-of-runecloth",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Runecloth.",
            complete = QuestState(7795, "activeOrCompleted"),
            route = {
                Point(1453, 0.4428, 0.7398, "A Donation of Runecloth",
                    "Travel to A Donation of Runecloth."),
            },
        },
    },
})
