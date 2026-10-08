local _, ns = ...

-- Forever Casual spine: Western & Eastern Plaguelands (56-58)
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
    TIRISFAL_GLADES = 1420,
    WESTERN_PLAGUELANDS = 1422,
    EASTERN_PLAGUELANDS = 1423,
    AZSHARA = 1447,
    ORGRIMMAR = 1454,
    UNDERCITY = 1458,
}

ns:RegisterGuide({
    id = "leveling-era-horde-western-and-eastern-plaguelands",
    title = "Western & Eastern Plaguelands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 56 } },
        },
    },
    goals = {
        {
            id = "accept-5094-a-call-to-arms-the-plaguelands",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Call to Arms: The Plaguelands!.",
            complete = QuestState(5094, "activeOrCompleted"),
            route = {
                Point(1458, 0.6340, 0.4400, "A Call to Arms: The Plaguelands!",
                    "Travel to A Call to Arms: The Plaguelands!."),
            },
        },
        {
            id = "accept-5096-scarlet-diversions",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Scarlet Diversions.",
            complete = QuestState(5096, "activeOrCompleted"),
            route = {
                Point(1420, 0.8313, 0.6893, "Scarlet Diversions",
                    "Travel to Scarlet Diversions."),
            },
        },
        {
            id = "turnin-6029-the-everlook-report",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Everlook Report.",
            complete = QuestState(6029, "completed"),
            route = {
                Point(1420, 0.8319, 0.6845, "The Everlook Report",
                    "Travel to The Everlook Report."),
            },
        },
        {
            id = "accept-5405-argent-dawn-commission",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Argent Dawn Commission.",
            complete = QuestState(5405, "activeOrCompleted"),
            route = {
                Point(1420, 0.8319, 0.6845, "Argent Dawn Commission",
                    "Travel to Argent Dawn Commission."),
            },
        },
        {
            id = "objective-5096-1-scourge-banner",
            kind = "objective",
            priority = 50,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Use Scourge Banner.",
            complete = QuestObjective(5096, 1, "Scourge Banner"),
            dependsOn = { "accept-5096-scarlet-diversions" },
            route = {
                Point(1422, 0.4068, 0.5198, "Scourge Banner",
                    "Travel to Scourge Banner."),
            },
        },
        {
            id = "turnin-5096-scarlet-diversions",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Scarlet Diversions.",
            complete = QuestState(5096, "completed"),
            dependsOn = { "accept-5096-scarlet-diversions", "objective-5096-1-scourge-banner" },
            route = {
                Point(1420, 0.8313, 0.6893, "Scarlet Diversions",
                    "Travel to Scarlet Diversions."),
            },
        },
        {
            id = "accept-5098-all-along-the-watchtowers",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept All Along the Watchtowers.",
            complete = QuestState(5098, "activeOrCompleted"),
            route = {
                Point(1420, 0.8313, 0.6893, "All Along the Watchtowers",
                    "Travel to All Along the Watchtowers."),
            },
        },
        {
            id = "accept-5228-the-scourge-cauldrons",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept The Scourge Cauldrons.",
            complete = QuestState(5228, "activeOrCompleted"),
            route = {
                Point(1420, 0.8313, 0.6893, "The Scourge Cauldrons",
                    "Travel to The Scourge Cauldrons."),
            },
        },
        {
            id = "turnin-5228-the-scourge-cauldrons",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Scourge Cauldrons.",
            complete = QuestState(5228, "completed"),
            dependsOn = { "accept-5228-the-scourge-cauldrons" },
            route = {
                Point(1420, 0.8303, 0.7191, "The Scourge Cauldrons",
                    "Travel to The Scourge Cauldrons."),
            },
        },
        {
            id = "accept-5229-target-felstone-field",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Target: Felstone Field.",
            complete = QuestState(5229, "activeOrCompleted"),
            route = {
                Point(1420, 0.8303, 0.7191, "Target: Felstone Field",
                    "Travel to Target: Felstone Field."),
            },
        },
        {
            id = "objective-5229-1-cauldron-lord-bilemaw",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Kill Cauldron Lord Bilemaw.",
            complete = QuestObjective(5229, 1, "Cauldron Lord Bilemaw"),
            dependsOn = { "accept-5229-target-felstone-field" },
            route = {
                Point(1422, 0.3703, 0.5711, "Cauldron Lord Bilemaw",
                    "Travel to Cauldron Lord Bilemaw."),
            },
        },
        {
            id = "turnin-5229-target-felstone-field",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Target: Felstone Field.",
            complete = QuestState(5229, "completed"),
            dependsOn = { "accept-5229-target-felstone-field", "objective-5229-1-cauldron-lord-bilemaw" },
            route = {
                Point(1422, 0.3719, 0.5687, "Target: Felstone Field",
                    "Travel to Target: Felstone Field."),
            },
        },
        {
            id = "accept-5230-return-to-the-bulwark",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Return to the Bulwark.",
            complete = QuestState(5230, "activeOrCompleted"),
            route = {
                Point(1422, 0.3719, 0.5687, "Return to the Bulwark",
                    "Travel to the Bulwark."),
            },
        },
        {
            id = "accept-5021-better-late-than-never",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Better Late Than Never.",
            complete = QuestState(5021, "activeOrCompleted"),
            route = {
                Point(1422, 0.3840, 0.5405, "Better Late Than Never",
                    "Travel to Better Late Than Never."),
            },
        },
        {
            id = "turnin-5021-better-late-than-never",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Better Late Than Never.",
            complete = QuestState(5021, "completed"),
            dependsOn = { "accept-5021-better-late-than-never" },
            route = {
                Point(1422, 0.3873, 0.5524, "Better Late Than Never",
                    "Travel to Better Late Than Never."),
            },
        },
        {
            id = "accept-5023-better-late-than-never",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Better Late Than Never.",
            complete = QuestState(5023, "activeOrCompleted"),
            route = {
                Point(1422, 0.3873, 0.5524, "Better Late Than Never",
                    "Travel to Better Late Than Never."),
            },
        },
        {
            id = "turnin-5230-return-to-the-bulwark",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Return to the Bulwark.",
            complete = QuestState(5230, "completed"),
            dependsOn = { "accept-5230-return-to-the-bulwark" },
            route = {
                Point(1420, 0.8304, 0.7191, "Return to the Bulwark",
                    "Travel to the Bulwark."),
            },
        },
        {
            id = "accept-5231-target-dalson-s-tears",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Target: Dalson's Tears.",
            complete = QuestState(5231, "activeOrCompleted"),
            route = {
                Point(1420, 0.8304, 0.7191, "Target: Dalson's Tears",
                    "Travel to Target: Dalson's Tears."),
            },
        },
        {
            id = "objective-5231-1-cauldron-lord-malvinious",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Kill Cauldron Lord Malvinious.",
            complete = QuestObjective(5231, 1, "Cauldron Lord Malvinious"),
            dependsOn = { "accept-5231-target-dalson-s-tears" },
            route = {
                Point(1422, 0.4618, 0.5238, "Cauldron Lord Malvinious",
                    "Travel to Cauldron Lord Malvinious."),
            },
        },
        {
            id = "turnin-5231-target-dalson-s-tears",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Target: Dalson's Tears.",
            complete = QuestState(5231, "completed"),
            dependsOn = { "accept-5231-target-dalson-s-tears", "objective-5231-1-cauldron-lord-malvinious" },
            route = {
                Point(1422, 0.4618, 0.5202, "Target: Dalson's Tears",
                    "Travel to Target: Dalson's Tears."),
            },
        },
        {
            id = "accept-5232-return-to-the-bulwark",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Return to the Bulwark.",
            complete = QuestState(5232, "activeOrCompleted"),
            route = {
                Point(1422, 0.4618, 0.5202, "Return to the Bulwark",
                    "Travel to the Bulwark."),
            },
        },
        {
            id = "accept-5058-mrs-dalson-s-diary",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Mrs. Dalson's Diary.",
            complete = QuestState(5058, "activeOrCompleted"),
            route = {
                Point(1422, 0.4779, 0.5067, "Mrs. Dalson's Diary",
                    "Travel to Mrs. Dalson's Diary."),
            },
        },
        {
            id = "objective-5060-1-wandering-skeleton",
            kind = "objective",
            priority = 230,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill Wandering Skeleton.",
            complete = QuestObjective(5060, 1, "Wandering Skeleton"),
            route = {
                Point(1422, 0.4834, 0.4927, "Wandering Skeleton",
                    "Travel to Wandering Skeleton."),
            },
        },
        {
            id = "objective-5060-1-farmer-dalson",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill Farmer Dalson.",
            complete = QuestObjective(5060, 1, "Farmer Dalson"),
            route = {
                Point(1422, 0.4811, 0.4971, "Farmer Dalson",
                    "Travel to Farmer Dalson."),
            },
        },
        {
            id = "accept-5060-locked-away",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Locked Away.",
            complete = QuestState(5060, "activeOrCompleted"),
            route = {
                Point(1422, 0.4737, 0.4965, "Locked Away",
                    "Travel to Locked Away."),
            },
        },
        {
            id = "accept-4971-a-matter-of-time",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept A Matter of Time.",
            complete = QuestState(4971, "activeOrCompleted"),
            route = {
                Point(1422, 0.3945, 0.6676, "A Matter of Time",
                    "Travel to A Matter of Time."),
            },
        },
        {
            id = "objective-5098-1-beacon-torch",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Use Beacon Torch.",
            complete = QuestObjective(5098, 1, "Beacon Torch"),
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            route = {
                Point(1422, 0.4013, 0.7152, "Beacon Torch",
                    "Travel to Beacon Torch."),
            },
        },
        {
            id = "objective-5098-4-beacon-torch",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Use Beacon Torch.",
            complete = QuestObjective(5098, 4, "Beacon Torch"),
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            route = {
                Point(1422, 0.4670, 0.7110, "Beacon Torch",
                    "Travel to Beacon Torch."),
            },
        },
        {
            id = "objective-4971-1-temporal-displacer",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Use Temporal Displacer.",
            complete = QuestObjective(4971, 1, "Temporal Displacer"),
            dependsOn = { "accept-4971-a-matter-of-time" },
            route = {
                Point(1422, 0.4500, 0.6300, "Temporal Displacer",
                    "Travel to Temporal Displacer."),
            },
        },
        {
            id = "objective-5098-3-beacon-torch",
            kind = "objective",
            priority = 300,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Use Beacon Torch.",
            complete = QuestObjective(5098, 3, "Beacon Torch"),
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            route = {
                Point(1422, 0.4422, 0.6337, "Beacon Torch",
                    "Travel to Beacon Torch."),
            },
        },
        {
            id = "objective-5098-2-beacon-torch",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Use Beacon Torch.",
            complete = QuestObjective(5098, 2, "Beacon Torch"),
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            route = {
                Point(1422, 0.4244, 0.6627, "Beacon Torch",
                    "Travel to Beacon Torch."),
            },
        },
        {
            id = "turnin-4971-a-matter-of-time",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Matter of Time.",
            complete = QuestState(4971, "completed"),
            dependsOn = { "accept-4971-a-matter-of-time", "objective-4971-1-temporal-displacer" },
            route = {
                Point(1422, 0.3945, 0.6676, "A Matter of Time",
                    "Travel to A Matter of Time."),
            },
        },
        {
            id = "accept-4972-counting-out-time",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Counting Out Time.",
            complete = QuestState(4972, "activeOrCompleted"),
            route = {
                Point(1422, 0.3945, 0.6676, "Counting Out Time",
                    "Travel to Counting Out Time."),
            },
        },
        {
            id = "turnin-5098-all-along-the-watchtowers",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in All Along the Watchtowers.",
            complete = QuestState(5098, "completed"),
            dependsOn = { "accept-5098-all-along-the-watchtowers", "objective-5098-1-beacon-torch", "objective-5098-4-beacon-torch", "objective-5098-3-beacon-torch", "objective-5098-2-beacon-torch" },
            route = {
                Point(1420, 0.8313, 0.6893, "All Along the Watchtowers",
                    "Travel to All Along the Watchtowers."),
            },
        },
        {
            id = "accept-838-scholomance",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Scholomance.",
            complete = QuestState(838, "activeOrCompleted"),
            route = {
                Point(1420, 0.8313, 0.6893, "Scholomance",
                    "Travel to Scholomance."),
            },
        },
        {
            id = "turnin-838-scholomance",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Scholomance.",
            complete = QuestState(838, "completed"),
            dependsOn = { "accept-838-scholomance" },
            route = {
                Point(1420, 0.8328, 0.6923, "Scholomance",
                    "Travel to Scholomance."),
            },
        },
        {
            id = "accept-964-skeletal-fragments",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Skeletal Fragments.",
            complete = QuestState(964, "activeOrCompleted"),
            route = {
                Point(1420, 0.8328, 0.6923, "Skeletal Fragments",
                    "Travel to Skeletal Fragments."),
            },
        },
        {
            id = "turnin-5232-return-to-the-bulwark",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Return to the Bulwark.",
            complete = QuestState(5232, "completed"),
            dependsOn = { "accept-5232-return-to-the-bulwark" },
            route = {
                Point(1420, 0.8304, 0.7191, "Return to the Bulwark",
                    "Travel to the Bulwark."),
            },
        },
        {
            id = "accept-5233-target-writhing-haunt",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Target: Writhing Haunt.",
            complete = QuestState(5233, "activeOrCompleted"),
            route = {
                Point(1420, 0.8304, 0.7191, "Target: Writhing Haunt",
                    "Travel to Target: Writhing Haunt."),
            },
        },
        {
            id = "accept-5901-a-plague-upon-thee",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Plague Upon Thee.",
            complete = QuestState(5901, "activeOrCompleted"),
            route = {
                Point(1420, 0.8329, 0.7233, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "objective-964-1-skeletal-sorcerer",
            kind = "objective",
            priority = 410,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Kill Skeletal Sorcerer.",
            complete = QuestObjective(964, 1, "Skeletal Sorcerer"),
            dependsOn = { "accept-964-skeletal-fragments" },
            route = {
                Point(1422, 0.3620, 0.5860, "Skeletal Sorcerer",
                    "Travel to Skeletal Sorcerer."),
            },
        },
        {
            id = "objective-5233-1-cauldron-lord-razarch",
            kind = "objective",
            priority = 420,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Kill Cauldron Lord Razarch.",
            complete = QuestObjective(5233, 1, "Cauldron Lord Razarch"),
            dependsOn = { "accept-5233-target-writhing-haunt" },
            route = {
                Point(1422, 0.5302, 0.6606, "Cauldron Lord Razarch",
                    "Travel to Cauldron Lord Razarch."),
            },
        },
        {
            id = "turnin-5233-target-writhing-haunt",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Target: Writhing Haunt.",
            complete = QuestState(5233, "completed"),
            dependsOn = { "accept-5233-target-writhing-haunt", "objective-5233-1-cauldron-lord-razarch" },
            route = {
                Point(1422, 0.5302, 0.6572, "Target: Writhing Haunt",
                    "Travel to Target: Writhing Haunt."),
            },
        },
        {
            id = "accept-5234-return-to-the-bulwark",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Return to the Bulwark.",
            complete = QuestState(5234, "activeOrCompleted"),
            route = {
                Point(1422, 0.5302, 0.6572, "Return to the Bulwark",
                    "Travel to the Bulwark."),
            },
        },
        {
            id = "accept-4984-the-wildlife-suffers-too",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept The Wildlife Suffers Too.",
            complete = QuestState(4984, "activeOrCompleted"),
            route = {
                Point(1422, 0.5372, 0.6467, "The Wildlife Suffers Too",
                    "Travel to The Wildlife Suffers Too."),
            },
        },
        {
            id = "accept-6004-unfinished-business",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Unfinished Business.",
            complete = QuestState(6004, "activeOrCompleted"),
            route = {
                Point(1422, 0.5192, 0.2806, "Unfinished Business",
                    "Travel to Unfinished Business."),
            },
        },
        {
            id = "objective-6004-3-scarlet-mage",
            kind = "objective",
            priority = 470,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill 2 Scarlet Mage.",
            complete = QuestObjective(6004, 3, "Scarlet Mage"),
            dependsOn = { "accept-6004-unfinished-business" },
            route = {
                Point(1422, 0.5047, 0.4112, "Scarlet Mage",
                    "Travel to Scarlet Mage."),
            },
        },
        {
            id = "objective-6004-4-scarlet-knight",
            kind = "objective",
            priority = 480,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill 2 Scarlet Knight.",
            complete = QuestObjective(6004, 4, "Scarlet Knight"),
            dependsOn = { "accept-6004-unfinished-business" },
            route = {
                Point(1422, 0.5047, 0.4112, "Scarlet Knight",
                    "Travel to Scarlet Knight."),
            },
        },
        {
            id = "objective-6004-1-scarlet-medic",
            kind = "objective",
            priority = 490,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill 2 Scarlet Medic.",
            complete = QuestObjective(6004, 1, "Scarlet Medic"),
            dependsOn = { "accept-6004-unfinished-business" },
            route = {
                Point(1422, 0.5160, 0.4460, "Scarlet Medic",
                    "Travel to Scarlet Medic."),
            },
        },
        {
            id = "objective-6004-2-scarlet-hunter",
            kind = "objective",
            priority = 500,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill 2 Scarlet Hunter.",
            complete = QuestObjective(6004, 2, "Scarlet Hunter"),
            dependsOn = { "accept-6004-unfinished-business" },
            route = {
                Point(1422, 0.5160, 0.4460, "Scarlet Hunter",
                    "Travel to Scarlet Hunter."),
            },
        },
        {
            id = "turnin-6004-unfinished-business",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Unfinished Business.",
            complete = QuestState(6004, "completed"),
            dependsOn = { "accept-6004-unfinished-business", "objective-6004-3-scarlet-mage", "objective-6004-4-scarlet-knight", "objective-6004-1-scarlet-medic", "objective-6004-2-scarlet-hunter" },
            route = {
                Point(1422, 0.5192, 0.2806, "Unfinished Business",
                    "Travel to Unfinished Business."),
            },
        },
        {
            id = "accept-6023-unfinished-business",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Unfinished Business.",
            complete = QuestState(6023, "activeOrCompleted"),
            route = {
                Point(1422, 0.5192, 0.2806, "Unfinished Business",
                    "Travel to Unfinished Business."),
            },
        },
        {
            id = "objective-6023-1-huntsman-radley",
            kind = "objective",
            priority = 530,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill Huntsman Radley.",
            complete = QuestObjective(6023, 1, "Huntsman Radley"),
            dependsOn = { "accept-6023-unfinished-business" },
            route = {
                Point(1422, 0.5783, 0.3609, "Huntsman Radley",
                    "Travel to Huntsman Radley."),
            },
        },
        {
            id = "objective-6023-2-cavalier-durgen",
            kind = "objective",
            priority = 540,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill Cavalier Durgen.",
            complete = QuestObjective(6023, 2, "Cavalier Durgen"),
            dependsOn = { "accept-6023-unfinished-business" },
            route = {
                Point(1422, 0.5471, 0.2365, "Cavalier Durgen",
                    "Travel to Cavalier Durgen."),
            },
        },
        {
            id = "turnin-6023-unfinished-business",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Unfinished Business.",
            complete = QuestState(6023, "completed"),
            dependsOn = { "accept-6023-unfinished-business", "objective-6023-1-huntsman-radley", "objective-6023-2-cavalier-durgen" },
            route = {
                Point(1422, 0.5192, 0.2806, "Unfinished Business",
                    "Travel to Unfinished Business."),
            },
        },
        {
            id = "turnin-4984-the-wildlife-suffers-too",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Wildlife Suffers Too.",
            complete = QuestState(4984, "completed"),
            dependsOn = { "accept-4984-the-wildlife-suffers-too" },
            route = {
                Point(1422, 0.5372, 0.6467, "The Wildlife Suffers Too",
                    "Travel to The Wildlife Suffers Too."),
            },
        },
        {
            id = "accept-4985-the-wildlife-suffers-too",
            kind = "accept",
            priority = 570,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept The Wildlife Suffers Too.",
            complete = QuestState(4985, "activeOrCompleted"),
            route = {
                Point(1422, 0.5372, 0.6467, "The Wildlife Suffers Too",
                    "Travel to The Wildlife Suffers Too."),
            },
        },
        {
            id = "accept-5542-demon-dogs",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Demon Dogs.",
            complete = QuestState(5542, "activeOrCompleted"),
            route = {
                Point(1423, 0.0756, 0.4370, "Demon Dogs",
                    "Travel to Demon Dogs."),
            },
        },
        {
            id = "accept-5543-blood-tinged-skies",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Blood Tinged Skies.",
            complete = QuestState(5543, "activeOrCompleted"),
            route = {
                Point(1423, 0.0756, 0.4370, "Blood Tinged Skies",
                    "Travel to Blood Tinged Skies."),
            },
        },
        {
            id = "accept-5544-carrion-grubbage",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Carrion Grubbage.",
            complete = QuestState(5544, "activeOrCompleted"),
            route = {
                Point(1423, 0.0756, 0.4370, "Carrion Grubbage",
                    "Travel to Carrion Grubbage."),
            },
        },
        {
            id = "accept-6022-to-kill-with-purpose",
            kind = "accept",
            priority = 610,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept To Kill With Purpose.",
            complete = QuestState(6022, "activeOrCompleted"),
            route = {
                Point(1423, 0.2654, 0.7474, "To Kill With Purpose",
                    "Travel to To Kill With Purpose."),
            },
        },
        {
            id = "accept-6042-un-life-s-little-annoyances",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Un-Life's Little Annoyances.",
            complete = QuestState(6042, "activeOrCompleted"),
            route = {
                Point(1423, 0.2654, 0.7474, "Un-Life's Little Annoyances",
                    "Travel to Un-Life's Little Annoyances."),
            },
        },
        {
            id = "turnin-5601-sister-pamela",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Sister Pamela.",
            complete = QuestState(5601, "completed"),
            route = {
                Point(1423, 0.3645, 0.9080, "Sister Pamela",
                    "Travel to Sister Pamela."),
            },
        },
        {
            id = "accept-5149-pamela-s-doll",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Pamela's Doll.",
            complete = QuestState(5149, "activeOrCompleted"),
            route = {
                Point(1423, 0.3645, 0.9080, "Pamela's Doll",
                    "Travel to Pamela's Doll."),
            },
        },
        {
            id = "objective-5149-1-pamela-s-doll-s-head",
            kind = "objective",
            priority = 650,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Click Pamela's Doll's Head.",
            complete = QuestObjective(5149, 1, "Pamela's Doll's Head"),
            dependsOn = { "accept-5149-pamela-s-doll" },
            route = {
                Point(1423, 0.3810, 0.9230, "Pamela's Doll's Head",
                    "Travel to Pamela's Doll's Head."),
            },
        },
        {
            id = "objective-5149-1-pamela-s-doll-s-head-2",
            kind = "objective",
            priority = 660,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Use Pamela's Doll's Head.",
            complete = QuestObjective(5149, 1, "Pamela's Doll's Head"),
            dependsOn = { "accept-5149-pamela-s-doll" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-5149-pamela-s-doll",
            kind = "turnin",
            priority = 670,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Pamela's Doll.",
            complete = QuestState(5149, "completed"),
            dependsOn = { "accept-5149-pamela-s-doll", "objective-5149-1-pamela-s-doll-s-head", "objective-5149-1-pamela-s-doll-s-head-2" },
            route = {
                Point(1423, 0.3645, 0.9080, "Pamela's Doll",
                    "Travel to Pamela's Doll."),
            },
        },
        {
            id = "accept-5152-auntie-marlene",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Auntie Marlene.",
            complete = QuestState(5152, "activeOrCompleted"),
            route = {
                Point(1423, 0.3645, 0.9080, "Auntie Marlene",
                    "Travel to Auntie Marlene."),
            },
        },
        {
            id = "accept-5241-uncle-carlin",
            kind = "accept",
            priority = 690,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Uncle Carlin.",
            complete = QuestState(5241, "activeOrCompleted"),
            route = {
                Point(1423, 0.3645, 0.9080, "Uncle Carlin",
                    "Travel to Uncle Carlin."),
            },
        },
        {
            id = "objective-6022-1-hate-shrieker",
            kind = "objective",
            priority = 700,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Kill Hate Shrieker.",
            complete = QuestObjective(6022, 1, "Hate Shrieker"),
            dependsOn = { "accept-6022-to-kill-with-purpose" },
            route = {
                Point(1423, 0.5760, 0.7080, "Hate Shrieker",
                    "Travel to Hate Shrieker."),
            },
        },
        {
            id = "objective-5542-2-plaguehound",
            kind = "objective",
            priority = 710,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill 5 Plaguehound.",
            complete = QuestObjective(5542, 2, "Plaguehound"),
            dependsOn = { "accept-5542-demon-dogs" },
            route = {
                Point(1423, 0.6800, 0.7560, "Plaguehound",
                    "Travel to Plaguehound."),
            },
        },
        {
            id = "objective-6042-1-noxious-plaguebat",
            kind = "objective",
            priority = 720,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Kill 20 Noxious Plaguebat.",
            complete = QuestObjective(6042, 1, "Noxious Plaguebat"),
            dependsOn = { "accept-6042-un-life-s-little-annoyances" },
            route = {
                Point(1423, 0.6800, 0.7560, "Noxious Plaguebat",
                    "Travel to Noxious Plaguebat."),
            },
        },
        {
            id = "turnin-6030-duke-nicholas-zverenhoff",
            kind = "turnin",
            priority = 730,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Duke Nicholas Zverenhoff.",
            complete = QuestState(6030, "completed"),
            route = {
                Point(1423, 0.8143, 0.5982, "Duke Nicholas Zverenhoff",
                    "Travel to Duke Nicholas Zverenhoff."),
            },
        },
        {
            id = "turnin-5241-uncle-carlin",
            kind = "turnin",
            priority = 740,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Uncle Carlin.",
            complete = QuestState(5241, "completed"),
            dependsOn = { "accept-5241-uncle-carlin" },
            route = {
                Point(1423, 0.8152, 0.5977, "Uncle Carlin",
                    "Travel to Uncle Carlin."),
            },
        },
        {
            id = "accept-5211-defenders-of-darrowshire",
            kind = "accept",
            priority = 750,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Defenders of Darrowshire.",
            complete = QuestState(5211, "activeOrCompleted"),
            route = {
                Point(1423, 0.8152, 0.5977, "Defenders of Darrowshire",
                    "Travel to Defenders of Darrowshire."),
            },
        },
        {
            id = "accept-6021-zaeldarr-the-outcast",
            kind = "accept",
            priority = 760,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Zaeldarr the Outcast.",
            complete = QuestState(6021, "activeOrCompleted"),
            route = {
                Point(1423, 0.7954, 0.6377, "Zaeldarr the Outcast",
                    "Travel to Zaeldarr the Outcast."),
            },
        },
        {
            id = "accept-5281-the-restless-souls",
            kind = "accept",
            priority = 770,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept The Restless Souls.",
            complete = QuestState(5281, "activeOrCompleted"),
            route = {
                Point(1423, 0.7954, 0.6377, "The Restless Souls",
                    "Travel to The Restless Souls."),
            },
        },
        {
            id = "objective-5901-1-large-termite-mound",
            kind = "objective",
            priority = 780,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Click Large Termite Mound.",
            complete = QuestObjective(5901, 1, "Large Termite Mound"),
            dependsOn = { "accept-5901-a-plague-upon-thee" },
            route = {
                Point(1423, 0.4590, 0.3410, "Large Termite Mound",
                    "Travel to Large Termite Mound."),
            },
        },
        {
            id = "turnin-5281-the-restless-souls",
            kind = "turnin",
            priority = 790,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Restless Souls.",
            complete = QuestState(5281, "completed"),
            dependsOn = { "accept-5281-the-restless-souls" },
            route = {
                Point(1423, 0.1445, 0.3374, "The Restless Souls",
                    "Travel to The Restless Souls."),
            },
        },
        {
            id = "accept-6164-augustus-receipt-book",
            kind = "accept",
            priority = 800,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Augustus' Receipt Book.",
            complete = QuestState(6164, "activeOrCompleted"),
            route = {
                Point(1423, 0.1445, 0.3348, "Augustus' Receipt Book",
                    "Travel to Augustus' Receipt Book."),
            },
        },
        {
            id = "turnin-6164-augustus-receipt-book",
            kind = "turnin",
            priority = 810,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Augustus' Receipt Book.",
            complete = QuestState(6164, "completed"),
            dependsOn = { "accept-6164-augustus-receipt-book" },
            route = {
                Point(1423, 0.1445, 0.3348, "Augustus' Receipt Book",
                    "Travel to Augustus' Receipt Book."),
            },
        },
        {
            id = "objective-6021-1-zaeldarr-the-outcast",
            kind = "objective",
            priority = 820,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill Zaeldarr the Outcast.",
            complete = QuestObjective(6021, 1, "Zaeldarr the Outcast"),
            dependsOn = { "accept-6021-zaeldarr-the-outcast" },
            route = {
                Point(1423, 0.2786, 0.8548, "Zaeldarr the Outcast",
                    "Travel to Zaeldarr the Outcast."),
            },
        },
        {
            id = "turnin-6022-to-kill-with-purpose",
            kind = "turnin",
            priority = 830,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in To Kill With Purpose.",
            complete = QuestState(6022, "completed"),
            dependsOn = { "accept-6022-to-kill-with-purpose", "objective-6022-1-hate-shrieker" },
            route = {
                Point(1423, 0.2654, 0.7474, "To Kill With Purpose",
                    "Travel to To Kill With Purpose."),
            },
        },
        {
            id = "turnin-6042-un-life-s-little-annoyances",
            kind = "turnin",
            priority = 840,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Un-Life's Little Annoyances.",
            complete = QuestState(6042, "completed"),
            dependsOn = { "accept-6042-un-life-s-little-annoyances", "objective-6042-1-noxious-plaguebat" },
            route = {
                Point(1423, 0.2654, 0.7474, "Un-Life's Little Annoyances",
                    "Travel to Un-Life's Little Annoyances."),
            },
        },
        {
            id = "turnin-5542-demon-dogs",
            kind = "turnin",
            priority = 850,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Demon Dogs.",
            complete = QuestState(5542, "completed"),
            dependsOn = { "accept-5542-demon-dogs", "objective-5542-2-plaguehound" },
            route = {
                Point(1423, 0.0757, 0.4370, "Demon Dogs",
                    "Travel to Demon Dogs."),
            },
        },
        {
            id = "turnin-5543-blood-tinged-skies",
            kind = "turnin",
            priority = 860,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Blood Tinged Skies.",
            complete = QuestState(5543, "completed"),
            dependsOn = { "accept-5543-blood-tinged-skies" },
            route = {
                Point(1423, 0.0757, 0.4370, "Blood Tinged Skies",
                    "Travel to Blood Tinged Skies."),
            },
        },
        {
            id = "turnin-5544-carrion-grubbage",
            kind = "turnin",
            priority = 870,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Carrion Grubbage.",
            complete = QuestState(5544, "completed"),
            dependsOn = { "accept-5544-carrion-grubbage" },
            route = {
                Point(1423, 0.0757, 0.4370, "Carrion Grubbage",
                    "Travel to Carrion Grubbage."),
            },
        },
        {
            id = "accept-5742-redemption",
            kind = "accept",
            priority = 880,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Redemption.",
            complete = QuestState(5742, "activeOrCompleted"),
            route = {
                Point(1423, 0.0757, 0.4370, "Redemption",
                    "Travel to Redemption."),
            },
        },
        {
            id = "turnin-5742-redemption",
            kind = "turnin",
            priority = 890,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Redemption.",
            complete = QuestState(5742, "completed"),
            dependsOn = { "accept-5742-redemption" },
            route = {
                Point(1423, 0.0757, 0.4370, "Redemption",
                    "Travel to Redemption."),
            },
        },
        {
            id = "turnin-4985-the-wildlife-suffers-too",
            kind = "turnin",
            priority = 900,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Wildlife Suffers Too.",
            complete = QuestState(4985, "completed"),
            dependsOn = { "accept-4985-the-wildlife-suffers-too" },
            route = {
                Point(1422, 0.5372, 0.6467, "The Wildlife Suffers Too",
                    "Travel to The Wildlife Suffers Too."),
            },
        },
        {
            id = "accept-4987-glyphed-oaken-branch",
            kind = "accept",
            priority = 910,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Glyphed Oaken Branch.",
            complete = QuestState(4987, "activeOrCompleted"),
            route = {
                Point(1422, 0.5372, 0.6467, "Glyphed Oaken Branch",
                    "Travel to Glyphed Oaken Branch."),
            },
        },
        {
            id = "turnin-5152-auntie-marlene",
            kind = "turnin",
            priority = 920,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Auntie Marlene.",
            complete = QuestState(5152, "completed"),
            dependsOn = { "accept-5152-auntie-marlene" },
            route = {
                Point(1422, 0.4917, 0.7858, "Auntie Marlene",
                    "Travel to Auntie Marlene."),
            },
        },
        {
            id = "accept-5153-a-strange-historian",
            kind = "accept",
            priority = 930,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept A Strange Historian.",
            complete = QuestState(5153, "activeOrCompleted"),
            route = {
                Point(1422, 0.4917, 0.7858, "A Strange Historian",
                    "Travel to A Strange Historian."),
            },
        },
        {
            id = "turnin-4972-counting-out-time",
            kind = "turnin",
            priority = 940,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Counting Out Time.",
            complete = QuestState(4972, "completed"),
            dependsOn = { "accept-4972-counting-out-time" },
            route = {
                Point(1422, 0.3945, 0.6676, "Counting Out Time",
                    "Travel to Counting Out Time."),
            },
        },
        {
            id = "turnin-5153-a-strange-historian",
            kind = "turnin",
            priority = 950,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Strange Historian.",
            complete = QuestState(5153, "completed"),
            dependsOn = { "accept-5153-a-strange-historian" },
            route = {
                Point(1422, 0.3945, 0.6676, "A Strange Historian",
                    "Travel to A Strange Historian."),
            },
        },
        {
            id = "accept-5154-the-annals-of-darrowshire",
            kind = "accept",
            priority = 960,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept The Annals of Darrowshire.",
            complete = QuestState(5154, "activeOrCompleted"),
            route = {
                Point(1422, 0.3945, 0.6676, "The Annals of Darrowshire",
                    "Travel to The Annals of Darrowshire."),
            },
        },
        {
            id = "turnin-5154-the-annals-of-darrowshire",
            kind = "turnin",
            priority = 970,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Annals of Darrowshire.",
            complete = QuestState(5154, "completed"),
            dependsOn = { "accept-5154-the-annals-of-darrowshire" },
            route = {
                Point(1422, 0.3945, 0.6676, "The Annals of Darrowshire",
                    "Travel to The Annals of Darrowshire."),
            },
        },
        {
            id = "accept-5210-brother-carlin",
            kind = "accept",
            priority = 980,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Brother Carlin.",
            complete = QuestState(5210, "activeOrCompleted"),
            route = {
                Point(1422, 0.3945, 0.6676, "Brother Carlin",
                    "Travel to Brother Carlin."),
            },
        },
        {
            id = "turnin-964-skeletal-fragments",
            kind = "turnin",
            priority = 990,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Skeletal Fragments.",
            complete = QuestState(964, "completed"),
            dependsOn = { "accept-964-skeletal-fragments", "objective-964-1-skeletal-sorcerer" },
            route = {
                Point(1420, 0.8328, 0.6923, "Skeletal Fragments",
                    "Travel to Skeletal Fragments."),
            },
        },
        {
            id = "turnin-5234-return-to-the-bulwark",
            kind = "turnin",
            priority = 1000,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Return to the Bulwark.",
            complete = QuestState(5234, "completed"),
            dependsOn = { "accept-5234-return-to-the-bulwark" },
            route = {
                Point(1420, 0.8304, 0.7191, "Return to the Bulwark",
                    "Travel to the Bulwark."),
            },
        },
        {
            id = "accept-5235-target-gahrron-s-withering",
            kind = "accept",
            priority = 1010,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Target: Gahrron's Withering.",
            complete = QuestState(5235, "activeOrCompleted"),
            route = {
                Point(1420, 0.8304, 0.7191, "Target: Gahrron's Withering",
                    "Travel to Target: Gahrron's Withering."),
            },
        },
        {
            id = "turnin-5901-a-plague-upon-thee",
            kind = "turnin",
            priority = 1020,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Plague Upon Thee.",
            complete = QuestState(5901, "completed"),
            dependsOn = { "accept-5901-a-plague-upon-thee", "objective-5901-1-large-termite-mound" },
            route = {
                Point(1420, 0.8329, 0.7233, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "accept-5902-a-plague-upon-thee",
            kind = "accept",
            priority = 1030,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Plague Upon Thee.",
            complete = QuestState(5902, "activeOrCompleted"),
            route = {
                Point(1420, 0.8329, 0.7233, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "turnin-5023-better-late-than-never",
            kind = "turnin",
            priority = 1040,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Better Late Than Never.",
            complete = QuestState(5023, "completed"),
            dependsOn = { "accept-5023-better-late-than-never" },
            route = {
                Point(1458, 0.6978, 0.4315, "Better Late Than Never",
                    "Travel to Better Late Than Never."),
            },
        },
        {
            id = "accept-5049-the-jeremiah-blues",
            kind = "accept",
            priority = 1050,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept The Jeremiah Blues.",
            complete = QuestState(5049, "activeOrCompleted"),
            route = {
                Point(1458, 0.6978, 0.4315, "The Jeremiah Blues",
                    "Travel to The Jeremiah Blues."),
            },
        },
        {
            id = "turnin-5049-the-jeremiah-blues",
            kind = "turnin",
            priority = 1060,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Jeremiah Blues.",
            complete = QuestState(5049, "completed"),
            dependsOn = { "accept-5049-the-jeremiah-blues" },
            route = {
                Point(1458, 0.6760, 0.4416, "The Jeremiah Blues",
                    "Travel to The Jeremiah Blues."),
            },
        },
        {
            id = "accept-5050-good-luck-charm",
            kind = "accept",
            priority = 1070,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Good Luck Charm.",
            complete = QuestState(5050, "activeOrCompleted"),
            route = {
                Point(1458, 0.6760, 0.4416, "Good Luck Charm",
                    "Travel to Good Luck Charm."),
            },
        },
        {
            id = "objective-7813-1-wool-cloth",
            kind = "objective",
            priority = 1080,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Wool Cloth.",
            complete = QuestObjective(7813, 1, "Wool Cloth"),
            route = {
                Point(1458, 0.6764, 0.3590, "Wool Cloth",
                    "Travel to Wool Cloth."),
            },
        },
        {
            id = "objective-7814-1-silk-cloth",
            kind = "objective",
            priority = 1090,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Silk Cloth.",
            complete = QuestObjective(7814, 1, "Silk Cloth"),
            route = {
                Point(1458, 0.6764, 0.3590, "Silk Cloth",
                    "Travel to Silk Cloth."),
            },
        },
        {
            id = "objective-7817-1-mageweave-cloth",
            kind = "objective",
            priority = 1100,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Mageweave Cloth.",
            complete = QuestObjective(7817, 1, "Mageweave Cloth"),
            route = {
                Point(1458, 0.6764, 0.3590, "Mageweave Cloth",
                    "Travel to Mageweave Cloth."),
            },
        },
        {
            id = "objective-7818-1-runecloth",
            kind = "objective",
            priority = 1110,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Runecloth.",
            complete = QuestObjective(7818, 1, "Runecloth"),
            route = {
                Point(1458, 0.6764, 0.3590, "Runecloth",
                    "Travel to Runecloth."),
            },
        },
        {
            id = "accept-7813-a-donation-of-wool",
            kind = "accept",
            priority = 1120,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Wool.",
            complete = QuestState(7813, "activeOrCompleted"),
            route = {
                Point(1458, 0.7166, 0.2923, "A Donation of Wool",
                    "Travel to A Donation of Wool."),
            },
        },
        {
            id = "accept-7814-a-donation-of-silk",
            kind = "accept",
            priority = 1130,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Silk.",
            complete = QuestState(7814, "activeOrCompleted"),
            route = {
                Point(1458, 0.7166, 0.2923, "A Donation of Silk",
                    "Travel to A Donation of Silk."),
            },
        },
        {
            id = "accept-7817-a-donation-of-mageweave",
            kind = "accept",
            priority = 1140,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Mageweave.",
            complete = QuestState(7817, "activeOrCompleted"),
            route = {
                Point(1458, 0.7166, 0.2923, "A Donation of Mageweave",
                    "Travel to A Donation of Mageweave."),
            },
        },
        {
            id = "accept-7818-a-donation-of-runecloth",
            kind = "accept",
            priority = 1150,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Runecloth.",
            complete = QuestState(7818, "activeOrCompleted"),
            route = {
                Point(1458, 0.7166, 0.2923, "A Donation of Runecloth",
                    "Travel to A Donation of Runecloth."),
            },
        },
        {
            id = "turnin-6021-zaeldarr-the-outcast",
            kind = "turnin",
            priority = 1160,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Zaeldarr the Outcast.",
            complete = QuestState(6021, "completed"),
            dependsOn = { "accept-6021-zaeldarr-the-outcast", "objective-6021-1-zaeldarr-the-outcast" },
            route = {
                Point(1423, 0.7954, 0.6377, "Zaeldarr the Outcast",
                    "Travel to Zaeldarr the Outcast."),
            },
        },
        {
            id = "turnin-5210-brother-carlin",
            kind = "turnin",
            priority = 1170,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Brother Carlin.",
            complete = QuestState(5210, "completed"),
            dependsOn = { "accept-5210-brother-carlin" },
            route = {
                Point(1423, 0.8152, 0.5976, "Brother Carlin",
                    "Travel to Brother Carlin."),
            },
        },
        {
            id = "accept-5181-villains-of-darrowshire",
            kind = "accept",
            priority = 1180,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Villains of Darrowshire.",
            complete = QuestState(5181, "activeOrCompleted"),
            route = {
                Point(1423, 0.8152, 0.5976, "Villains of Darrowshire",
                    "Travel to Villains of Darrowshire."),
            },
        },
        {
            id = "turnin-5211-defenders-of-darrowshire",
            kind = "turnin",
            priority = 1190,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Defenders of Darrowshire.",
            complete = QuestState(5211, "completed"),
            dependsOn = { "accept-5211-defenders-of-darrowshire" },
            route = {
                Point(1423, 0.8152, 0.5976, "Defenders of Darrowshire",
                    "Travel to Defenders of Darrowshire."),
            },
        },
        {
            id = "objective-5181-1-horgus-skull",
            kind = "objective",
            priority = 1200,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Click Horgus' Skull.",
            complete = QuestObjective(5181, 1, "Horgus' Skull"),
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            route = {
                Point(1423, 0.5111, 0.4993, "Horgus' Skull",
                    "Travel to Horgus' Skull."),
            },
        },
        {
            id = "objective-5181-2-shattered-sword-of-marduk",
            kind = "objective",
            priority = 1210,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Click Shattered Sword of Marduk.",
            complete = QuestObjective(5181, 2, "Shattered Sword of Marduk"),
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            route = {
                Point(1423, 0.5391, 0.6576, "Shattered Sword of Marduk",
                    "Travel to Shattered Sword of Marduk."),
            },
        },
        {
            id = "objective-5225-1-cauldron-lord-soulwrath",
            kind = "objective",
            priority = 1220,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill Cauldron Lord Soulwrath.",
            complete = QuestObjective(5225, 1, "Cauldron Lord Soulwrath"),
            route = {
                Point(1422, 0.6278, 0.5875, "Cauldron Lord Soulwrath",
                    "Travel to Cauldron Lord Soulwrath."),
            },
        },
        {
            id = "turnin-5235-target-gahrron-s-withering",
            kind = "turnin",
            priority = 1230,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Target: Gahrron's Withering.",
            complete = QuestState(5235, "completed"),
            dependsOn = { "accept-5235-target-gahrron-s-withering" },
            route = {
                Point(1422, 0.6256, 0.5857, "Target: Gahrron's Withering",
                    "Travel to Target: Gahrron's Withering."),
            },
        },
        {
            id = "accept-5236-return-to-the-bulwark",
            kind = "accept",
            priority = 1240,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Return to the Bulwark.",
            complete = QuestState(5236, "activeOrCompleted"),
            route = {
                Point(1422, 0.6256, 0.5857, "Return to the Bulwark",
                    "Travel to the Bulwark."),
            },
        },
        {
            id = "turnin-5902-a-plague-upon-thee",
            kind = "turnin",
            priority = 1250,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Plague Upon Thee.",
            complete = QuestState(5902, "completed"),
            dependsOn = { "accept-5902-a-plague-upon-thee" },
            route = {
                Point(1422, 0.4835, 0.3200, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "accept-6390-a-plague-upon-thee",
            kind = "accept",
            priority = 1260,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Plague Upon Thee.",
            complete = QuestState(6390, "activeOrCompleted"),
            route = {
                Point(1422, 0.4835, 0.3200, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "turnin-5050-good-luck-charm",
            kind = "turnin",
            priority = 1270,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Good Luck Charm.",
            complete = QuestState(5050, "completed"),
            dependsOn = { "accept-5050-good-luck-charm" },
            route = {
                Point(1422, 0.3840, 0.5405, "Good Luck Charm",
                    "Travel to Good Luck Charm."),
            },
        },
        {
            id = "accept-5051-two-halves-become-one",
            kind = "accept",
            priority = 1280,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Accept Two Halves Become One.",
            complete = QuestState(5051, "activeOrCompleted"),
            route = {
                Point(1422, 0.3840, 0.5405, "Two Halves Become One",
                    "Travel to Two Halves Become One."),
            },
        },
        {
            id = "objective-5051-1-jabbering-ghoul",
            kind = "objective",
            priority = 1290,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Kill Jabbering Ghoul.",
            complete = QuestObjective(5051, 1, "Jabbering Ghoul"),
            dependsOn = { "accept-5051-two-halves-become-one" },
            route = {
                Point(1422, 0.3800, 0.5635, "Jabbering Ghoul",
                    "Travel to Jabbering Ghoul."),
            },
        },
        {
            id = "objective-5051-1-good-luck-other-half-charm",
            kind = "objective",
            priority = 1300,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Use Good Luck Other-Half-Charm.",
            complete = QuestObjective(5051, 1, "Good Luck Other-Half-Charm"),
            dependsOn = { "accept-5051-two-halves-become-one" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-5051-two-halves-become-one",
            kind = "turnin",
            priority = 1310,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Two Halves Become One.",
            complete = QuestState(5051, "completed"),
            dependsOn = { "accept-5051-two-halves-become-one", "objective-5051-1-jabbering-ghoul", "objective-5051-1-good-luck-other-half-charm" },
            route = {
                Point(1422, 0.3840, 0.5405, "Two Halves Become One",
                    "Travel to Two Halves Become One."),
            },
        },
        {
            id = "turnin-5236-return-to-the-bulwark",
            kind = "turnin",
            priority = 1320,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Return to the Bulwark.",
            complete = QuestState(5236, "completed"),
            dependsOn = { "accept-5236-return-to-the-bulwark" },
            route = {
                Point(1420, 0.8303, 0.7191, "Return to the Bulwark",
                    "Travel to the Bulwark."),
            },
        },
        {
            id = "turnin-6390-a-plague-upon-thee",
            kind = "turnin",
            priority = 1330,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Plague Upon Thee.",
            complete = QuestState(6390, "completed"),
            dependsOn = { "accept-6390-a-plague-upon-thee" },
            route = {
                Point(1420, 0.8329, 0.7233, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "accept-5238-mission-accomplished",
            kind = "accept",
            priority = 1340,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Mission Accomplished!.",
            complete = QuestState(5238, "activeOrCompleted"),
            route = {
                Point(1420, 0.8313, 0.6894, "Mission Accomplished!",
                    "Travel to Mission Accomplished!."),
            },
        },
        {
            id = "turnin-5181-villains-of-darrowshire",
            kind = "turnin",
            priority = 1350,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Horde" },
            } },
            text = "Turn in Villains of Darrowshire.",
            complete = QuestState(5181, "completed"),
            dependsOn = { "accept-5181-villains-of-darrowshire", "objective-5181-1-horgus-skull", "objective-5181-2-shattered-sword-of-marduk" },
            route = {
                Point(1423, 0.8152, 0.5976, "Villains of Darrowshire",
                    "Travel to Villains of Darrowshire."),
            },
        },
        {
            id = "objective-7826-1-wool-cloth",
            kind = "objective",
            priority = 1360,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Wool Cloth.",
            complete = QuestObjective(7826, 1, "Wool Cloth"),
            route = {
                Point(1454, 0.5568, 0.6283, "Wool Cloth",
                    "Travel to Wool Cloth."),
            },
        },
        {
            id = "objective-7827-1-silk-cloth",
            kind = "objective",
            priority = 1370,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Silk Cloth.",
            complete = QuestObjective(7827, 1, "Silk Cloth"),
            route = {
                Point(1454, 0.5568, 0.6283, "Silk Cloth",
                    "Travel to Silk Cloth."),
            },
        },
        {
            id = "objective-7831-1-mageweave-cloth",
            kind = "objective",
            priority = 1380,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Mageweave Cloth.",
            complete = QuestObjective(7831, 1, "Mageweave Cloth"),
            route = {
                Point(1454, 0.5568, 0.6283, "Mageweave Cloth",
                    "Travel to Mageweave Cloth."),
            },
        },
        {
            id = "objective-7824-1-runecloth",
            kind = "objective",
            priority = 1390,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Runecloth.",
            complete = QuestObjective(7824, 1, "Runecloth"),
            route = {
                Point(1454, 0.5568, 0.6283, "Runecloth",
                    "Travel to Runecloth."),
            },
        },
        {
            id = "accept-7826-a-donation-of-wool",
            kind = "accept",
            priority = 1400,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Wool.",
            complete = QuestState(7826, "activeOrCompleted"),
            route = {
                Point(1454, 0.6360, 0.5122, "A Donation of Wool",
                    "Travel to A Donation of Wool."),
            },
        },
        {
            id = "accept-7827-a-donation-of-silk",
            kind = "accept",
            priority = 1410,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Silk.",
            complete = QuestState(7827, "activeOrCompleted"),
            route = {
                Point(1454, 0.6360, 0.5122, "A Donation of Silk",
                    "Travel to A Donation of Silk."),
            },
        },
        {
            id = "accept-7831-a-donation-of-mageweave",
            kind = "accept",
            priority = 1420,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Mageweave.",
            complete = QuestState(7831, "activeOrCompleted"),
            route = {
                Point(1454, 0.6360, 0.5122, "A Donation of Mageweave",
                    "Travel to A Donation of Mageweave."),
            },
        },
        {
            id = "accept-7824-a-donation-of-runecloth",
            kind = "accept",
            priority = 1430,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Runecloth.",
            complete = QuestState(7824, "activeOrCompleted"),
            route = {
                Point(1454, 0.6360, 0.5122, "A Donation of Runecloth",
                    "Travel to A Donation of Runecloth."),
            },
        },
        {
            id = "objective-7833-1-wool-cloth",
            kind = "objective",
            priority = 1440,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Wool Cloth.",
            complete = QuestObjective(7833, 1, "Wool Cloth"),
            route = {
                Point(1454, 0.5568, 0.6283, "Wool Cloth",
                    "Travel to Wool Cloth."),
            },
        },
        {
            id = "objective-7834-1-silk-cloth",
            kind = "objective",
            priority = 1450,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Silk Cloth.",
            complete = QuestObjective(7834, 1, "Silk Cloth"),
            route = {
                Point(1454, 0.5568, 0.6283, "Silk Cloth",
                    "Travel to Silk Cloth."),
            },
        },
        {
            id = "objective-7835-1-mageweave-cloth",
            kind = "objective",
            priority = 1460,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Mageweave Cloth.",
            complete = QuestObjective(7835, 1, "Mageweave Cloth"),
            route = {
                Point(1454, 0.5568, 0.6283, "Mageweave Cloth",
                    "Travel to Mageweave Cloth."),
            },
        },
        {
            id = "objective-7836-1-runecloth",
            kind = "objective",
            priority = 1470,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Runecloth.",
            complete = QuestObjective(7836, 1, "Runecloth"),
            route = {
                Point(1454, 0.5568, 0.6283, "Runecloth",
                    "Travel to Runecloth."),
            },
        },
        {
            id = "accept-8276-taking-back-silithus",
            kind = "accept",
            priority = 1480,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept Taking Back Silithus.",
            complete = QuestState(8276, "activeOrCompleted"),
            route = {
                Point(1454, 0.4764, 0.6577, "Taking Back Silithus",
                    "Travel to Taking Back Silithus."),
            },
        },
        {
            id = "accept-7833-a-donation-of-wool",
            kind = "accept",
            priority = 1490,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Wool.",
            complete = QuestState(7833, "activeOrCompleted"),
            route = {
                Point(1454, 0.3769, 0.8790, "A Donation of Wool",
                    "Travel to A Donation of Wool."),
            },
        },
        {
            id = "accept-7834-a-donation-of-silk",
            kind = "accept",
            priority = 1500,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Silk.",
            complete = QuestState(7834, "activeOrCompleted"),
            route = {
                Point(1454, 0.3769, 0.8790, "A Donation of Silk",
                    "Travel to A Donation of Silk."),
            },
        },
        {
            id = "accept-7835-a-donation-of-mageweave",
            kind = "accept",
            priority = 1510,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Mageweave.",
            complete = QuestState(7835, "activeOrCompleted"),
            route = {
                Point(1454, 0.3769, 0.8790, "A Donation of Mageweave",
                    "Travel to A Donation of Mageweave."),
            },
        },
        {
            id = "accept-7836-a-donation-of-runecloth",
            kind = "accept",
            priority = 1520,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Runecloth.",
            complete = QuestState(7836, "activeOrCompleted"),
            route = {
                Point(1454, 0.3769, 0.8790, "A Donation of Runecloth",
                    "Travel to A Donation of Runecloth."),
            },
        },
        {
            id = "turnin-3564-andron-s-payment-to-jediga",
            kind = "turnin",
            priority = 1530,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Andron's Payment to Jediga.",
            complete = QuestState(3564, "completed"),
            route = {
                Point(1447, 0.2256, 0.5142, "Andron's Payment to Jediga",
                    "Travel to Andron's Payment to Jediga."),
            },
        },
    },
})
