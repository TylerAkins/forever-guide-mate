local _, ns = ...

-- Forever Casual spine: Western & Eastern Plaguelands (57-58)
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
    ALTERAC_MOUNTAINS = 1416,
    WESTERN_PLAGUELANDS = 1422,
    EASTERN_PLAGUELANDS = 1423,
    STORMWIND_CITY = 1453,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-western-and-eastern-plaguelands",
    title = "Western & Eastern Plaguelands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 57 } },
        },
    },
    goals = {
        {
            id = "accept-7261-the-sovereign-imperative",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Sovereign Imperative.",
            complete = QuestState(7261, "activeOrCompleted"),
            route = {
                Point(1455, 0.3221, 0.6325, "The Sovereign Imperative",
                    "Travel to The Sovereign Imperative."),
            },
        },
        {
            id = "turnin-3701-the-smoldering-ruins-of-thaurissan",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Smoldering Ruins of Thaurissan.",
            complete = QuestState(3701, "completed"),
            route = {
                Point(1455, 0.4451, 0.4957, "The Smoldering Ruins of Thaurissan",
                    "Travel to The Smoldering Ruins of Thaurissan."),
            },
        },
        {
            id = "turnin-7261-the-sovereign-imperative",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Sovereign Imperative.",
            complete = QuestState(7261, "completed"),
            dependsOn = { "accept-7261-the-sovereign-imperative" },
            route = {
                Point(1416, 0.3946, 0.8123, "The Sovereign Imperative",
                    "Travel to The Sovereign Imperative."),
            },
        },
        {
            id = "accept-5219-target-dalson-s-tears",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Target: Dalson's Tears.",
            complete = QuestState(5219, "activeOrCompleted"),
            route = {
                Point(1422, 0.4297, 0.8450, "Target: Dalson's Tears",
                    "Travel to Target: Dalson's Tears."),
            },
        },
        {
            id = "accept-5097-all-along-the-watchtowers",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept All Along the Watchtowers.",
            complete = QuestState(5097, "activeOrCompleted"),
            route = {
                Point(1422, 0.4270, 0.8403, "All Along the Watchtowers",
                    "Travel to All Along the Watchtowers."),
            },
        },
        {
            id = "turnin-6028-the-everlook-report",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Everlook Report.",
            complete = QuestState(6028, "completed"),
            route = {
                Point(1422, 0.4297, 0.8355, "The Everlook Report",
                    "Travel to The Everlook Report."),
            },
        },
        {
            id = "turnin-6184-flint-shadowmore",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Flint Shadowmore.",
            complete = QuestState(6184, "completed"),
            route = {
                Point(1422, 0.4361, 0.8451, "Flint Shadowmore",
                    "Travel to Flint Shadowmore."),
            },
        },
        {
            id = "accept-5142-little-pamela",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Little Pamela.",
            complete = QuestState(5142, "activeOrCompleted"),
            route = {
                Point(1422, 0.4913, 0.7852, "Little Pamela",
                    "Travel to Little Pamela."),
            },
        },
        {
            id = "objective-5097-4-beacon-torch",
            kind = "objective",
            priority = 90,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Use Beacon Torch.",
            complete = QuestObjective(5097, 4, "Beacon Torch"),
            dependsOn = { "accept-5097-all-along-the-watchtowers" },
            route = {
                Point(1422, 0.4670, 0.7110, "Beacon Torch",
                    "Travel to Beacon Torch."),
            },
        },
        {
            id = "accept-4984-the-wildlife-suffers-too",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Wildlife Suffers Too.",
            complete = QuestState(4984, "activeOrCompleted"),
            route = {
                Point(1422, 0.5372, 0.6467, "The Wildlife Suffers Too",
                    "Travel to The Wildlife Suffers Too."),
            },
        },
        {
            id = "objective-5097-3-beacon-torch",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Use Beacon Torch.",
            complete = QuestObjective(5097, 3, "Beacon Torch"),
            dependsOn = { "accept-5097-all-along-the-watchtowers" },
            route = {
                Point(1422, 0.4422, 0.6337, "Beacon Torch",
                    "Travel to Beacon Torch."),
            },
        },
        {
            id = "accept-5058-mrs-dalson-s-diary",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 130,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 140,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 150,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Locked Away.",
            complete = QuestState(5060, "activeOrCompleted"),
            route = {
                Point(1422, 0.4737, 0.4965, "Locked Away",
                    "Travel to Locked Away."),
            },
        },
        {
            id = "objective-5219-1-cauldron-lord-malvinious",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Kill Cauldron Lord Malvinious.",
            complete = QuestObjective(5219, 1, "Cauldron Lord Malvinious"),
            dependsOn = { "accept-5219-target-dalson-s-tears" },
            route = {
                Point(1422, 0.4618, 0.5238, "Cauldron Lord Malvinious",
                    "Travel to Cauldron Lord Malvinious."),
            },
        },
        {
            id = "turnin-5219-target-dalson-s-tears",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Target: Dalson's Tears.",
            complete = QuestState(5219, "completed"),
            dependsOn = { "accept-5219-target-dalson-s-tears", "objective-5219-1-cauldron-lord-malvinious" },
            route = {
                Point(1422, 0.4618, 0.5202, "Target: Dalson's Tears",
                    "Travel to Target: Dalson's Tears."),
            },
        },
        {
            id = "accept-5220-return-to-chillwind-camp",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Chillwind Camp.",
            complete = QuestState(5220, "activeOrCompleted"),
            route = {
                Point(1422, 0.4618, 0.5202, "Return to Chillwind Camp",
                    "Travel to Chillwind Camp."),
            },
        },
        {
            id = "turnin-5050-good-luck-charm",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Good Luck Charm.",
            complete = QuestState(5050, "completed"),
            route = {
                Point(1422, 0.3840, 0.5405, "Good Luck Charm",
                    "Travel to Good Luck Charm."),
            },
        },
        {
            id = "accept-5051-two-halves-become-one",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 210,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Kill Jabbering Ghoul.",
            complete = QuestObjective(5051, 1, "Jabbering Ghoul"),
            dependsOn = { "accept-5051-two-halves-become-one" },
            route = {
                Point(1422, 0.3780, 0.5760, "Jabbering Ghoul",
                    "Travel to Jabbering Ghoul."),
            },
        },
        {
            id = "turnin-5051-two-halves-become-one",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Two Halves Become One.",
            complete = QuestState(5051, "completed"),
            dependsOn = { "accept-5051-two-halves-become-one", "objective-5051-1-jabbering-ghoul" },
            route = {
                Point(1422, 0.3840, 0.5405, "Two Halves Become One",
                    "Travel to Two Halves Become One."),
            },
        },
        {
            id = "objective-5097-2-beacon-torch",
            kind = "objective",
            priority = 230,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Use Beacon Torch.",
            complete = QuestObjective(5097, 2, "Beacon Torch"),
            dependsOn = { "accept-5097-all-along-the-watchtowers" },
            route = {
                Point(1422, 0.4244, 0.6627, "Beacon Torch",
                    "Travel to Beacon Torch."),
            },
        },
        {
            id = "objective-5097-1-beacon-torch",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Use Beacon Torch.",
            complete = QuestObjective(5097, 1, "Beacon Torch"),
            dependsOn = { "accept-5097-all-along-the-watchtowers" },
            route = {
                Point(1422, 0.4013, 0.7152, "Beacon Torch",
                    "Travel to Beacon Torch."),
            },
        },
        {
            id = "turnin-5097-all-along-the-watchtowers",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in All Along the Watchtowers.",
            complete = QuestState(5097, "completed"),
            dependsOn = { "accept-5097-all-along-the-watchtowers", "objective-5097-4-beacon-torch", "objective-5097-3-beacon-torch", "objective-5097-2-beacon-torch", "objective-5097-1-beacon-torch" },
            route = {
                Point(1422, 0.4270, 0.8403, "All Along the Watchtowers",
                    "Travel to All Along the Watchtowers."),
            },
        },
        {
            id = "accept-5533-scholomance",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Scholomance.",
            complete = QuestState(5533, "activeOrCompleted"),
            route = {
                Point(1422, 0.4270, 0.8403, "Scholomance",
                    "Travel to Scholomance."),
            },
        },
        {
            id = "turnin-5533-scholomance",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Scholomance.",
            complete = QuestState(5533, "completed"),
            dependsOn = { "accept-5533-scholomance" },
            route = {
                Point(1422, 0.4266, 0.8377, "Scholomance",
                    "Travel to Scholomance."),
            },
        },
        {
            id = "turnin-5220-return-to-chillwind-camp",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Chillwind Camp.",
            complete = QuestState(5220, "completed"),
            dependsOn = { "accept-5220-return-to-chillwind-camp" },
            route = {
                Point(1422, 0.4297, 0.8450, "Return to Chillwind Camp",
                    "Travel to Chillwind Camp."),
            },
        },
        {
            id = "accept-5222-target-writhing-haunt",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Target: Writhing Haunt.",
            complete = QuestState(5222, "activeOrCompleted"),
            route = {
                Point(1422, 0.4297, 0.8450, "Target: Writhing Haunt",
                    "Travel to Target: Writhing Haunt."),
            },
        },
        {
            id = "accept-5903-a-plague-upon-thee",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Plague Upon Thee.",
            complete = QuestState(5903, "activeOrCompleted"),
            route = {
                Point(1422, 0.4342, 0.8484, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "accept-6185-the-eastern-plagues",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Eastern Plagues.",
            complete = QuestState(6185, "activeOrCompleted"),
            route = {
                Point(1422, 0.4361, 0.8451, "The Eastern Plagues",
                    "Travel to The Eastern Plagues."),
            },
        },
        {
            id = "objective-5222-1-cauldron-lord-razarch",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Kill Cauldron Lord Razarch.",
            complete = QuestObjective(5222, 1, "Cauldron Lord Razarch"),
            dependsOn = { "accept-5222-target-writhing-haunt" },
            route = {
                Point(1422, 0.5302, 0.6606, "Cauldron Lord Razarch",
                    "Travel to Cauldron Lord Razarch."),
            },
        },
        {
            id = "turnin-5222-target-writhing-haunt",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Target: Writhing Haunt.",
            complete = QuestState(5222, "completed"),
            dependsOn = { "accept-5222-target-writhing-haunt", "objective-5222-1-cauldron-lord-razarch" },
            route = {
                Point(1422, 0.5302, 0.6572, "Target: Writhing Haunt",
                    "Travel to Target: Writhing Haunt."),
            },
        },
        {
            id = "accept-5223-return-to-chillwind-camp",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Chillwind Camp.",
            complete = QuestState(5223, "activeOrCompleted"),
            route = {
                Point(1422, 0.5302, 0.6572, "Return to Chillwind Camp",
                    "Travel to Chillwind Camp."),
            },
        },
        {
            id = "turnin-4984-the-wildlife-suffers-too",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 360,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 370,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 380,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 390,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Carrion Grubbage.",
            complete = QuestState(5544, "activeOrCompleted"),
            route = {
                Point(1423, 0.0756, 0.4370, "Carrion Grubbage",
                    "Travel to Carrion Grubbage."),
            },
        },
        {
            id = "turnin-5142-little-pamela",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Little Pamela.",
            complete = QuestState(5142, "completed"),
            dependsOn = { "accept-5142-little-pamela" },
            route = {
                Point(1423, 0.3645, 0.9080, "Little Pamela",
                    "Travel to Little Pamela."),
            },
        },
        {
            id = "accept-5149-pamela-s-doll",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 420,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 430,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 440,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 450,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 460,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Uncle Carlin.",
            complete = QuestState(5241, "activeOrCompleted"),
            route = {
                Point(1423, 0.3645, 0.9080, "Uncle Carlin",
                    "Travel to Uncle Carlin."),
            },
        },
        {
            id = "objective-5542-2-plaguehound",
            kind = "objective",
            priority = 470,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            id = "accept-6021-zaeldarr-the-outcast",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 490,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Restless Souls.",
            complete = QuestState(5281, "activeOrCompleted"),
            route = {
                Point(1423, 0.7954, 0.6377, "The Restless Souls",
                    "Travel to The Restless Souls."),
            },
        },
        {
            id = "turnin-6030-duke-nicholas-zverenhoff",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 510,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 520,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Defenders of Darrowshire.",
            complete = QuestState(5211, "activeOrCompleted"),
            route = {
                Point(1423, 0.8152, 0.5977, "Defenders of Darrowshire",
                    "Travel to Defenders of Darrowshire."),
            },
        },
        {
            id = "turnin-5245-troubled-spirits-of-kel-theril",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Troubled Spirits of Kel'Theril.",
            complete = QuestState(5245, "completed"),
            route = {
                Point(1423, 0.5351, 0.2200, "Troubled Spirits of Kel'Theril",
                    "Travel to Troubled Spirits of Kel'Theril."),
            },
        },
        {
            id = "objective-5903-1-large-termite-mound",
            kind = "objective",
            priority = 540,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Click Large Termite Mound.",
            complete = QuestObjective(5903, 1, "Large Termite Mound"),
            dependsOn = { "accept-5903-a-plague-upon-thee" },
            route = {
                Point(1423, 0.4590, 0.3410, "Large Termite Mound",
                    "Travel to Large Termite Mound."),
            },
        },
        {
            id = "turnin-5281-the-restless-souls",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 560,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 570,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 580,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            id = "turnin-5542-demon-dogs",
            kind = "turnin",
            priority = 590,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 600,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 610,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 620,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 630,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            id = "turnin-5223-return-to-chillwind-camp",
            kind = "turnin",
            priority = 640,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Chillwind Camp.",
            complete = QuestState(5223, "completed"),
            dependsOn = { "accept-5223-return-to-chillwind-camp" },
            route = {
                Point(1422, 0.4297, 0.8450, "Return to Chillwind Camp",
                    "Travel to Chillwind Camp."),
            },
        },
        {
            id = "accept-5225-target-gahrron-s-withering",
            kind = "accept",
            priority = 650,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Target: Gahrron's Withering.",
            complete = QuestState(5225, "activeOrCompleted"),
            route = {
                Point(1422, 0.4297, 0.8450, "Target: Gahrron's Withering",
                    "Travel to Target: Gahrron's Withering."),
            },
        },
        {
            id = "accept-5537-skeletal-fragments",
            kind = "accept",
            priority = 660,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Skeletal Fragments.",
            complete = QuestState(5537, "activeOrCompleted"),
            route = {
                Point(1422, 0.4266, 0.8377, "Skeletal Fragments",
                    "Travel to Skeletal Fragments."),
            },
        },
        {
            id = "turnin-6185-the-eastern-plagues",
            kind = "turnin",
            priority = 670,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Eastern Plagues.",
            complete = QuestState(6185, "completed"),
            dependsOn = { "accept-6185-the-eastern-plagues" },
            route = {
                Point(1422, 0.4361, 0.8451, "The Eastern Plagues",
                    "Travel to The Eastern Plagues."),
            },
        },
        {
            id = "accept-6186-the-blightcaller-cometh",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Blightcaller Cometh.",
            complete = QuestState(6186, "activeOrCompleted"),
            route = {
                Point(1422, 0.4361, 0.8451, "The Blightcaller Cometh",
                    "Travel to The Blightcaller Cometh."),
            },
        },
        {
            id = "turnin-5903-a-plague-upon-thee",
            kind = "turnin",
            priority = 690,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Plague Upon Thee.",
            complete = QuestState(5903, "completed"),
            dependsOn = { "accept-5903-a-plague-upon-thee", "objective-5903-1-large-termite-mound" },
            route = {
                Point(1422, 0.4342, 0.8484, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "accept-5904-a-plague-upon-thee",
            kind = "accept",
            priority = 700,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Plague Upon Thee.",
            complete = QuestState(5904, "activeOrCompleted"),
            route = {
                Point(1422, 0.4342, 0.8484, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "turnin-5152-auntie-marlene",
            kind = "turnin",
            priority = 710,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Auntie Marlene.",
            complete = QuestState(5152, "completed"),
            dependsOn = { "accept-5152-auntie-marlene" },
            route = {
                Point(1422, 0.4913, 0.7852, "Auntie Marlene",
                    "Travel to Auntie Marlene."),
            },
        },
        {
            id = "accept-5153-a-strange-historian",
            kind = "accept",
            priority = 720,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Strange Historian.",
            complete = QuestState(5153, "activeOrCompleted"),
            route = {
                Point(1422, 0.4913, 0.7852, "A Strange Historian",
                    "Travel to A Strange Historian."),
            },
        },
        {
            id = "turnin-5153-a-strange-historian",
            kind = "turnin",
            priority = 730,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 740,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Annals of Darrowshire.",
            complete = QuestState(5154, "activeOrCompleted"),
            route = {
                Point(1422, 0.3945, 0.6676, "The Annals of Darrowshire",
                    "Travel to The Annals of Darrowshire."),
            },
        },
        {
            id = "accept-4971-a-matter-of-time",
            kind = "accept",
            priority = 750,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Matter of Time.",
            complete = QuestState(4971, "activeOrCompleted"),
            route = {
                Point(1422, 0.3945, 0.6676, "A Matter of Time",
                    "Travel to A Matter of Time."),
            },
        },
        {
            id = "objective-4971-1-temporal-displacer",
            kind = "objective",
            priority = 760,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            id = "turnin-5154-the-annals-of-darrowshire",
            kind = "turnin",
            priority = 770,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 780,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Brother Carlin.",
            complete = QuestState(5210, "activeOrCompleted"),
            route = {
                Point(1422, 0.3945, 0.6676, "Brother Carlin",
                    "Travel to Brother Carlin."),
            },
        },
        {
            id = "turnin-4971-a-matter-of-time",
            kind = "turnin",
            priority = 790,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 800,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Counting Out Time.",
            complete = QuestState(4972, "activeOrCompleted"),
            route = {
                Point(1422, 0.3945, 0.6676, "Counting Out Time",
                    "Travel to Counting Out Time."),
            },
        },
        {
            id = "turnin-4972-counting-out-time",
            kind = "turnin",
            priority = 810,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            id = "turnin-5537-skeletal-fragments",
            kind = "turnin",
            priority = 820,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Skeletal Fragments.",
            complete = QuestState(5537, "completed"),
            dependsOn = { "accept-5537-skeletal-fragments" },
            route = {
                Point(1422, 0.4266, 0.8377, "Skeletal Fragments",
                    "Travel to Skeletal Fragments."),
            },
        },
        {
            id = "turnin-5210-brother-carlin",
            kind = "turnin",
            priority = 830,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 840,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 850,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            id = "turnin-6021-zaeldarr-the-outcast",
            kind = "turnin",
            priority = 860,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            id = "objective-5181-1-horgus-skull",
            kind = "objective",
            priority = 870,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 880,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 890,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Kill Cauldron Lord Soulwrath.",
            complete = QuestObjective(5225, 1, "Cauldron Lord Soulwrath"),
            dependsOn = { "accept-5225-target-gahrron-s-withering" },
            route = {
                Point(1422, 0.6278, 0.5875, "Cauldron Lord Soulwrath",
                    "Travel to Cauldron Lord Soulwrath."),
            },
        },
        {
            id = "turnin-5225-target-gahrron-s-withering",
            kind = "turnin",
            priority = 900,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Target: Gahrron's Withering.",
            complete = QuestState(5225, "completed"),
            dependsOn = { "accept-5225-target-gahrron-s-withering", "objective-5225-1-cauldron-lord-soulwrath" },
            route = {
                Point(1422, 0.6256, 0.5857, "Target: Gahrron's Withering",
                    "Travel to Target: Gahrron's Withering."),
            },
        },
        {
            id = "accept-5226-return-to-chillwind-point",
            kind = "accept",
            priority = 910,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Chillwind Point.",
            complete = QuestState(5226, "activeOrCompleted"),
            route = {
                Point(1422, 0.6256, 0.5857, "Return to Chillwind Point",
                    "Travel to Chillwind Point."),
            },
        },
        {
            id = "turnin-4985-the-wildlife-suffers-too",
            kind = "turnin",
            priority = 920,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            id = "accept-4986-glyphed-oaken-branch",
            kind = "accept",
            priority = 930,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Accept Glyphed Oaken Branch.",
            complete = QuestState(4986, "activeOrCompleted"),
            route = {
                Point(1422, 0.5372, 0.6467, "Glyphed Oaken Branch",
                    "Travel to Glyphed Oaken Branch."),
            },
        },
        {
            id = "turnin-5904-a-plague-upon-thee",
            kind = "turnin",
            priority = 940,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Plague Upon Thee.",
            complete = QuestState(5904, "completed"),
            dependsOn = { "accept-5904-a-plague-upon-thee" },
            route = {
                Point(1422, 0.4835, 0.3200, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "accept-6389-a-plague-upon-thee",
            kind = "accept",
            priority = 950,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Plague Upon Thee.",
            complete = QuestState(6389, "activeOrCompleted"),
            route = {
                Point(1422, 0.4835, 0.3200, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "accept-6004-unfinished-business",
            kind = "accept",
            priority = 960,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 970,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 980,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 990,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 1000,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 1010,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 1020,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 1030,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 1040,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            priority = 1050,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            id = "turnin-5181-villains-of-darrowshire",
            kind = "turnin",
            priority = 1060,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
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
            id = "turnin-6389-a-plague-upon-thee",
            kind = "turnin",
            priority = 1070,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Plague Upon Thee.",
            complete = QuestState(6389, "completed"),
            dependsOn = { "accept-6389-a-plague-upon-thee" },
            route = {
                Point(1422, 0.4342, 0.8483, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "turnin-5226-return-to-chillwind-camp",
            kind = "turnin",
            priority = 1080,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Chillwind Camp.",
            complete = QuestState(5226, "completed"),
            dependsOn = { "accept-5226-return-to-chillwind-point" },
            route = {
                Point(1422, 0.4297, 0.8450, "Return to Chillwind Camp",
                    "Travel to Chillwind Camp."),
            },
        },
        {
            id = "accept-5237-mission-accomplished",
            kind = "accept",
            priority = 1090,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Accept Mission Accomplished!.",
            complete = QuestState(5237, "activeOrCompleted"),
            route = {
                Point(1422, 0.4270, 0.8403, "Mission Accomplished!",
                    "Travel to Mission Accomplished!."),
            },
        },
        {
            id = "accept-8275-taking-back-silithus",
            kind = "accept",
            priority = 1100,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Alliance" },
            } },
            text = "Accept Taking Back Silithus.",
            complete = QuestState(8275, "activeOrCompleted"),
            route = {
                Point(1455, 0.5854, 0.4732, "Taking Back Silithus",
                    "Travel to Taking Back Silithus."),
            },
        },
        {
            id = "turnin-6186-the-blightcaller-cometh",
            kind = "turnin",
            priority = 1110,
            conditions = { all = {
                { level = { min = 57 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Blightcaller Cometh.",
            complete = QuestState(6186, "completed"),
            dependsOn = { "accept-6186-the-blightcaller-cometh" },
            route = {
                Point(1453, 0.6906, 0.2879, "The Blightcaller Cometh",
                    "Travel to The Blightcaller Cometh."),
            },
        },
    },
})
