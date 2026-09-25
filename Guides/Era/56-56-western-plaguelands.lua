local _, ns = ...

-- Horde Era leveling route for the Western Plaguelands, levels 56-56.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    WESTERN_PLAGUELANDS = 1422,
    UNDERCITY = 1458,
    TIRISFAL = 1420,
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
    id = "leveling-era-56-56-western-plaguelands",
    title = "56-56 Western Plaguelands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 56 } },
        },
    },
    goals = {
        {
            id = "travel-1004-undercity",
            kind = "travel",
            priority = 10,
            text = "Travel to Undercity.",
            route = {
                Point(MAP.UNDERCITY, 0.6774, 0.3791, "Undercity",
                    "Travel to Undercity."),
            },
        },
        {
            id = "note-1004-undercity",
            kind = "note",
            priority = 20,
            text = "Set your hearth in Undercity with Innkeeper Norman.",
            route = {
                Point(MAP.UNDERCITY, 0.6774, 0.3791, "Innkeeper Norman",
                    "Travel to Innkeeper Norman."),
            },
        },
        {
            id = "accept-1004-the-new-frontier",
            kind = "accept",
            priority = 30,
            text = "Accept The New Frontier from Harbinger Balthazad in Trade Quarter.",
            complete = QuestState(1004, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.6390, 0.4376, "Harbinger Balthazad",
                    "Travel to Harbinger Balthazad."),
            },
        },
        {
            id = "accept-5094-a-call-to-arms-the-plaguelands",
            kind = "accept",
            priority = 40,
            text = "Accept A Call to Arms: The Plaguelands! from Harbinger Balthazad in Trade Quarter.",
            complete = QuestState(5094, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.6390, 0.4376, "Harbinger Balthazad",
                    "Travel to Harbinger Balthazad."),
            },
        },
        {
            id = "accept-4642-melding-of-influences",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 4293, state = "completed" } },
                },
            },
            text = "Accept Melding of Influences from Chemist Fuely in The Apothecarium.",
            complete = QuestState(4642, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4784, 0.7316, "Chemist Fuely",
                    "Travel to Chemist Fuely."),
            },
        },
        {
            id = "travel-5096-the-bulwark",
            kind = "travel",
            priority = 60,
            text = "Travel to The Bulwark.",
            route = {
                Point(MAP.TIRISFAL, 0.8314, 0.6892, "The Bulwark",
                    "Travel to The Bulwark."),
            },
        },
        {
            id = "accept-5096-scarlet-diversions",
            kind = "accept",
            priority = 70,
            text = "Accept Scarlet Diversions from High Executor Derrington in The Bulwark.",
            complete = QuestState(5096, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8314, 0.6892, "High Executor Derrington",
                    "Travel to High Executor Derrington."),
            },
        },
        {
            id = "turnin-6029-the-everlook-report",
            kind = "turnin",
            priority = 80,
            text = "Turn in The Everlook Report to Argent Officer Garush in The Bulwark.",
            complete = QuestState(6029, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8319, 0.6843, "Argent Officer Garush",
                    "Travel to Argent Officer Garush."),
            },
        },
        {
            id = "turnin-5405-argent-dawn-commission",
            kind = "turnin",
            priority = 90,
            text = "Turn in Argent Dawn Commission to Argent Officer Garush in The Bulwark. This is an elite. Bring a group.",
            complete = QuestState(5405, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8319, 0.6843, "Argent Officer Garush",
                    "Travel to Argent Officer Garush."),
            },
        },
        {
            id = "accept-5901-a-plague-upon-thee",
            kind = "accept",
            priority = 100,
            text = "Accept A Plague Upon Thee from Mickey Levine in The Bulwark.",
            complete = QuestState(5901, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8328, 0.7236, "Mickey Levine",
                    "Travel to Mickey Levine."),
            },
        },
        {
            id = "travel-5021-felstone-field",
            kind = "travel",
            priority = 110,
            text = "Travel to Felstone Field.",
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3841, 0.5406, "Felstone Field",
                    "Travel to Felstone Field."),
            },
        },
        {
            id = "accept-5021-better-late-than-never",
            kind = "accept",
            priority = 120,
            text = "Accept Better Late Than Never from Janice Felstone in Felstone Field.",
            complete = QuestState(5021, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3841, 0.5406, "Janice Felstone",
                    "Travel to Janice Felstone."),
            },
        },
        {
            id = "turnin-5021-better-late-than-never",
            kind = "turnin",
            priority = 130,
            text = "Turn in Better Late Than Never in Felstone Field.",
            dependsOn = { "accept-5021-better-late-than-never" },
            complete = QuestState(5021, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3872, 0.5525, "Felstone Field",
                    "Travel to Felstone Field."),
            },
        },
        {
            id = "accept-5023-better-late-than-never",
            kind = "accept",
            priority = 140,
            text = "Accept Better Late Than Never in Felstone Field.",
            complete = QuestState(5023, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3872, 0.5525, "Felstone Field",
                    "Travel to Felstone Field."),
            },
        },
        {
            id = "objective-5096-scarlet-diversions",
            kind = "objective",
            priority = 150,
            text = "Click on the command tent to set it on fire and use the Scourge Banner next to it in Felstone Field.",
            dependsOn = { "accept-5096-scarlet-diversions" },
            complete = QuestState(5096, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4055, 0.5195, "Felstone Field",
                    "Travel to Felstone Field."),
            },
        },
        {
            id = "turnin-5096-scarlet-diversions",
            kind = "turnin",
            priority = 160,
            text = "Turn in Scarlet Diversions to Argent Officer Garush in The Bulwark.",
            dependsOn = { "objective-5096-scarlet-diversions" },
            complete = QuestState(5096, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8314, 0.6897, "Argent Officer Garush",
                    "Travel to Argent Officer Garush."),
            },
        },
        {
            id = "accept-5228-the-scourge-cauldrons",
            kind = "accept",
            priority = 170,
            text = "Accept The Scourge Cauldrons from High Executor Derrington in The Bulwark.",
            complete = QuestState(5228, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8314, 0.6897, "High Executor Derrington",
                    "Travel to High Executor Derrington."),
            },
        },
        {
            id = "turnin-5228-the-scourge-cauldrons",
            kind = "turnin",
            priority = 180,
            text = "Turn in The Scourge Cauldrons to Shadow Priestess Vandis in The Bulwark.",
            dependsOn = { "accept-5228-the-scourge-cauldrons" },
            complete = QuestState(5228, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8304, 0.7193, "Shadow Priestess Vandis",
                    "Travel to Shadow Priestess Vandis."),
            },
        },
        {
            id = "accept-5229-target-felstone-field",
            kind = "accept",
            priority = 190,
            text = "Accept Target: Felstone Field from Shadow Priestess Vandis in The Bulwark.",
            complete = QuestState(5229, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8304, 0.7193, "Shadow Priestess Vandis",
                    "Travel to Shadow Priestess Vandis."),
            },
        },
        {
            id = "objective-5229-target-felstone-field",
            kind = "objective",
            priority = 200,
            text = "Kill Cauldron Lord Bilemaw and collect Felstone Field Cauldron Key in Felstone Field.",
            dependsOn = { "accept-5229-target-felstone-field" },
            complete = QuestState(5229, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3713, 0.5713, "Cauldron Lord Bilemaw",
                    "Travel to Cauldron Lord Bilemaw."),
            },
        },
        {
            id = "turnin-5229-target-felstone-field",
            kind = "turnin",
            priority = 210,
            text = "Turn in Target: Felstone Field in Felstone Field.",
            dependsOn = { "objective-5229-target-felstone-field" },
            complete = QuestState(5229, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3719, 0.5692, "Felstone Field",
                    "Travel to Felstone Field."),
            },
        },
        {
            id = "accept-5230-return-to-the-bulwark",
            kind = "accept",
            priority = 220,
            text = "Accept Return to the Bulwark in Felstone Field.",
            complete = QuestState(5230, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3717, 0.5699, "Felstone Field",
                    "Travel to Felstone Field."),
            },
        },
        {
            id = "travel-5231-the-bulwark",
            kind = "travel",
            priority = 230,
            text = "Travel to The Bulwark.",
            route = {
                Point(MAP.TIRISFAL, 0.8303, 0.7192, "The Bulwark",
                    "Travel to The Bulwark."),
            },
        },
        {
            id = "turnin-5230-return-to-the-bulwark",
            kind = "turnin",
            priority = 240,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis in The Bulwark.",
            dependsOn = { "accept-5230-return-to-the-bulwark" },
            complete = QuestState(5230, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8304, 0.7191, "Shadow Priestess Vandis",
                    "Travel to Shadow Priestess Vandis."),
            },
        },
        {
            id = "accept-5231-target-dalson-s-tears",
            kind = "accept",
            priority = 250,
            text = "Accept Target: Dalson's Tears from Shadow Priestess Vandis in The Bulwark.",
            complete = QuestState(5231, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8296, 0.7182, "Shadow Priestess Vandis",
                    "Travel to Shadow Priestess Vandis."),
            },
        },
        {
            id = "travel-5231-dalson-s-tears",
            kind = "travel",
            priority = 260,
            text = "Travel to Dalson's Tears.",
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4780, 0.5070, "Dalson's Tears",
                    "Travel to Dalson's Tears."),
            },
        },
        {
            id = "turnin-5058-mrs-dalson-s-diary",
            kind = "turnin",
            priority = 270,
            text = "Turn in Mrs. Dalson's Diary in Dalson's Tears. This is an elite. Bring a group.",
            complete = QuestState(5058, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4780, 0.5070, "Dalson's Tears",
                    "Travel to Dalson's Tears."),
            },
        },
        {
            id = "objective-5060-wandering-skeleton",
            kind = "objective",
            priority = 280,
            text = "Kill Wandering Skeleton, it should spawn outside the barn after you turn in 'Mrs. Dalson's Diary' and collect the Dalson Outhouse Key.",
            complete = QuestState(5060, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4766, 0.5008, "Wandering Skeleton",
                    "Travel to Wandering Skeleton."),
            },
        },
        {
            id = "turnin-5059-locked-away",
            kind = "turnin",
            priority = 290,
            text = "Turn in Locked Away in Dalson's Tears. This is an elite. Bring a group.",
            complete = QuestState(5059, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4811, 0.4966, "Dalson's Tears",
                    "Travel to Dalson's Tears."),
            },
        },
        {
            id = "objective-5060-farmer-dalson",
            kind = "objective",
            priority = 300,
            text = "Kill Farmer Dalson, he should spawn after turn in 'Locked Away' from the outhouse and. This is an elite. Bring a group.",
            complete = QuestState(5060, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4811, 0.4966, "Farmer Dalson",
                    "Travel to Farmer Dalson."),
            },
        },
        {
            id = "turnin-5060-locked-away",
            kind = "turnin",
            priority = 310,
            text = "Turn in Locked Away in Dalson's Tears. This is an elite. Bring a group.",
            dependsOn = { "objective-5060-wandering-skeleton", "objective-5060-farmer-dalson" },
            complete = QuestState(5060, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4739, 0.4962, "Dalson's Tears",
                    "Travel to Dalson's Tears."),
            },
        },
        {
            id = "objective-5231-target-dalson-s-tears",
            kind = "objective",
            priority = 320,
            text = "Kill Cauldron Lord Malvinious and collect Dalson's Tears Cauldron Key in Dalson's Tears.",
            dependsOn = { "accept-5231-target-dalson-s-tears" },
            complete = QuestState(5231, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4597, 0.5246, "Cauldron Lord Malvinious",
                    "Travel to Cauldron Lord Malvinious."),
            },
        },
        {
            id = "turnin-5231-target-dalson-s-tears",
            kind = "turnin",
            priority = 330,
            text = "Turn in Target: Dalson's Tears in Dalson's Tears.",
            dependsOn = { "objective-5231-target-dalson-s-tears" },
            complete = QuestState(5231, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4615, 0.5206, "Dalson's Tears",
                    "Travel to Dalson's Tears."),
            },
        },
        {
            id = "accept-5232-return-to-the-bulwark",
            kind = "accept",
            priority = 340,
            text = "Accept Return to the Bulwark in Dalson's Tears.",
            complete = QuestState(5232, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4615, 0.5206, "Dalson's Tears",
                    "Travel to Dalson's Tears."),
            },
        },
        {
            id = "travel-5233-the-bulwark",
            kind = "travel",
            priority = 350,
            text = "Travel to The Bulwark.",
            route = {
                Point(MAP.TIRISFAL, 0.8303, 0.7192, "The Bulwark",
                    "Travel to The Bulwark."),
            },
        },
        {
            id = "turnin-5232-return-to-the-bulwark",
            kind = "turnin",
            priority = 360,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis in The Bulwark.",
            dependsOn = { "accept-5232-return-to-the-bulwark" },
            complete = QuestState(5232, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8303, 0.7192, "Shadow Priestess Vandis",
                    "Travel to Shadow Priestess Vandis."),
            },
        },
        {
            id = "accept-5233-target-writhing-haunt",
            kind = "accept",
            priority = 370,
            text = "Accept Target: Writhing Haunt from Shadow Priestess Vandis in The Bulwark.",
            complete = QuestState(5233, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8303, 0.7192, "Shadow Priestess Vandis",
                    "Travel to Shadow Priestess Vandis."),
            },
        },
        {
            id = "travel-5233-the-writhing-haunt",
            kind = "travel",
            priority = 380,
            text = "Travel to The Writhing Haunt.",
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5301, 0.6603, "The Writhing Haunt",
                    "Travel to The Writhing Haunt."),
            },
        },
        {
            id = "accept-4984-the-wildlife-suffers-too",
            kind = "accept",
            priority = 390,
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver in The Writhing Haunt.",
            complete = QuestState(4984, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5367, 0.6476, "Mulgris Deepriver",
                    "Travel to Mulgris Deepriver."),
            },
        },
        {
            id = "objective-5233-target-writhing-haunt",
            kind = "objective",
            priority = 400,
            text = "Kill Cauldron Lord Razarch and collect Writhing Haunt Cauldron Key in The Writhing Haunt.",
            dependsOn = { "accept-5233-target-writhing-haunt" },
            complete = QuestState(5233, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5301, 0.6603, "Cauldron Lord Razarch",
                    "Travel to Cauldron Lord Razarch."),
            },
        },
        {
            id = "turnin-5233-target-writhing-haunt",
            kind = "turnin",
            priority = 410,
            text = "Turn in Target: Writhing Haunt in The Writhing Haunt.",
            dependsOn = { "objective-5233-target-writhing-haunt" },
            complete = QuestState(5233, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5302, 0.6582, "The Writhing Haunt",
                    "Travel to The Writhing Haunt."),
            },
        },
        {
            id = "accept-5234-return-to-the-bulwark",
            kind = "accept",
            priority = 420,
            text = "Accept Return to the Bulwark in The Writhing Haunt.",
            complete = QuestState(5234, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5302, 0.6582, "The Writhing Haunt",
                    "Travel to The Writhing Haunt."),
            },
        },
        {
            id = "travel-5235-the-bulwark",
            kind = "travel",
            priority = 430,
            text = "Travel to The Bulwark.",
            route = {
                Point(MAP.TIRISFAL, 0.8303, 0.7192, "The Bulwark",
                    "Travel to The Bulwark."),
            },
        },
        {
            id = "turnin-5234-return-to-the-bulwark",
            kind = "turnin",
            priority = 440,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis in The Bulwark.",
            dependsOn = { "accept-5234-return-to-the-bulwark" },
            complete = QuestState(5234, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8303, 0.7190, "Shadow Priestess Vandis",
                    "Travel to Shadow Priestess Vandis."),
            },
        },
        {
            id = "accept-5235-target-gahrron-s-withering",
            kind = "accept",
            priority = 450,
            text = "Accept Target: Gahrron's Withering from Shadow Priestess Vandis in The Bulwark.",
            complete = QuestState(5235, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8303, 0.7190, "Shadow Priestess Vandis",
                    "Travel to Shadow Priestess Vandis."),
            },
        },
        {
            id = "travel-5235-gahrron-s-withering",
            kind = "travel",
            priority = 460,
            text = "Travel to Gahrron's Withering.",
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.6266, 0.5878, "Gahrron's Withering",
                    "Travel to Gahrron's Withering."),
            },
        },
        {
            id = "objective-5235-target-gahrron-s-withering",
            kind = "objective",
            priority = 470,
            text = "Kill Cauldron Lord Soulwrath and collect Gahrron's Withering Cauldron Key in Gahrron's Withering.",
            dependsOn = { "accept-5235-target-gahrron-s-withering" },
            complete = QuestState(5235, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.6266, 0.5878, "Cauldron Lord Soulwrath",
                    "Travel to Cauldron Lord Soulwrath."),
            },
        },
        {
            id = "turnin-5235-target-gahrron-s-withering",
            kind = "turnin",
            priority = 480,
            text = "Turn in Target: Gahrron's Withering in Gahrron's Withering.",
            dependsOn = { "objective-5235-target-gahrron-s-withering" },
            complete = QuestState(5235, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.6257, 0.5865, "Gahrron's Withering",
                    "Travel to Gahrron's Withering."),
            },
        },
        {
            id = "accept-5236-return-to-the-bulwark",
            kind = "accept",
            priority = 490,
            text = "Accept Return to the Bulwark in Gahrron's Withering.",
            complete = QuestState(5236, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.6257, 0.5865, "Gahrron's Withering",
                    "Travel to Gahrron's Withering."),
            },
        },
        {
            id = "travel-thondroril-river",
            kind = "travel",
            priority = 500,
            text = "Travel to Thondroril River.",
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.6658, 0.3976, "Continue toward Thondroril River",
                    "Continue toward Thondroril River."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.6712, 0.3767, "Thondroril River",
                    "Travel to Thondroril River."),
            },
        },
    },
})
