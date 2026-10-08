local _, ns = ...

-- Forever Casual spine: Darkshore (15-18)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves ported from prior Leveling chapters (quest id >= 90000).
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
    DARKSHORE = 1439,
    MOONGLADE = 1450,
    DARNASSUS = 1457,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-darkshore",
    title = "Darkshore",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 15 } },
        },
    },
    goals = {
        {
            id = "accept-983-buzzbox-827",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Buzzbox 827.",
            complete = QuestState(983, "activeOrCompleted"),
            route = {
                Point(1439, 0.3698, 0.4414, "Buzzbox 827",
                    "Travel to Buzzbox 827."),
            },
        },
        {
            id = "accept-2118-plagued-lands",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Plagued Lands.",
            complete = QuestState(2118, "activeOrCompleted"),
            route = {
                Point(1439, 0.3884, 0.4342, "Plagued Lands",
                    "Travel to Plagued Lands."),
            },
        },
        {
            id = "accept-984-how-big-a-threat",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept How Big a Threat?.",
            complete = QuestState(984, "activeOrCompleted"),
            route = {
                Point(1439, 0.3937, 0.4348, "How Big a Threat?",
                    "Travel to How Big a Threat?."),
            },
        },
        {
            id = "accept-3524-washed-ashore",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Washed Ashore.",
            complete = QuestState(3524, "activeOrCompleted"),
            route = {
                Point(1439, 0.3662, 0.4559, "Washed Ashore",
                    "Travel to Washed Ashore."),
            },
        },
        {
            id = "accept-1141-the-family-and-the-fishing-pole",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Family and the Fishing Pole.",
            complete = QuestState(1141, "activeOrCompleted"),
            route = {
                Point(1439, 0.3610, 0.4493, "The Family and the Fishing Pole",
                    "Travel to The Family and the Fishing Pole."),
            },
        },
        {
            id = "turnin-1141-the-family-and-the-fishing-pole",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Family and the Fishing Pole.",
            complete = QuestState(1141, "completed"),
            dependsOn = { "accept-1141-the-family-and-the-fishing-pole" },
            route = {
                Point(1439, 0.3610, 0.4493, "The Family and the Fishing Pole",
                    "Travel to The Family and the Fishing Pole."),
            },
        },
        {
            id = "objective-2118-1-tharnariun-s-hope",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Use Tharnariun's Hope.",
            complete = QuestObjective(2118, 1, "Tharnariun's Hope"),
            dependsOn = { "accept-2118-plagued-lands" },
            route = {
                Point(1439, 0.3800, 0.5240, "Tharnariun's Hope",
                    "Travel to Tharnariun's Hope."),
            },
        },
        {
            id = "turnin-983-buzzbox-827",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Buzzbox 827.",
            complete = QuestState(983, "completed"),
            dependsOn = { "accept-983-buzzbox-827" },
            route = {
                Point(1439, 0.3666, 0.4626, "Buzzbox 827",
                    "Travel to Buzzbox 827."),
            },
        },
        {
            id = "accept-1001-buzzbox-411",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Buzzbox 411.",
            complete = QuestState(1001, "activeOrCompleted"),
            route = {
                Point(1439, 0.3666, 0.4626, "Buzzbox 411",
                    "Travel to Buzzbox 411."),
            },
        },
        {
            id = "turnin-3524-washed-ashore",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Washed Ashore.",
            complete = QuestState(3524, "completed"),
            dependsOn = { "accept-3524-washed-ashore" },
            route = {
                Point(1439, 0.3662, 0.4559, "Washed Ashore",
                    "Travel to Washed Ashore."),
            },
        },
        {
            id = "accept-4681-washed-ashore",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Washed Ashore.",
            complete = QuestState(4681, "activeOrCompleted"),
            route = {
                Point(1439, 0.3662, 0.4559, "Washed Ashore",
                    "Travel to Washed Ashore."),
            },
        },
        {
            id = "accept-963-for-love-eternal",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept For Love Eternal.",
            complete = QuestState(963, "activeOrCompleted"),
            route = {
                Point(1439, 0.3574, 0.4371, "For Love Eternal",
                    "Travel to For Love Eternal."),
            },
        },
        {
            id = "turnin-4681-washed-ashore",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Washed Ashore.",
            complete = QuestState(4681, "completed"),
            dependsOn = { "accept-4681-washed-ashore" },
            route = {
                Point(1439, 0.3662, 0.4559, "Washed Ashore",
                    "Travel to Washed Ashore."),
            },
        },
        {
            id = "turnin-2118-plagued-lands",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Plagued Lands.",
            complete = QuestState(2118, "completed"),
            dependsOn = { "accept-2118-plagued-lands", "objective-2118-1-tharnariun-s-hope" },
            route = {
                Point(1439, 0.3884, 0.4342, "Plagued Lands",
                    "Travel to Plagued Lands."),
            },
        },
        {
            id = "accept-2138-cleansing-of-the-infected",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Cleansing of the Infected.",
            complete = QuestState(2138, "activeOrCompleted"),
            route = {
                Point(1439, 0.3884, 0.4342, "Cleansing of the Infected",
                    "Travel to Cleansing of the Infected."),
            },
        },
        {
            id = "turnin-984-how-big-a-threat",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in How Big a Threat?.",
            complete = QuestState(984, "completed"),
            dependsOn = { "accept-984-how-big-a-threat" },
            route = {
                Point(1439, 0.3937, 0.4348, "How Big a Threat?",
                    "Travel to How Big a Threat?."),
            },
        },
        {
            id = "accept-985-how-big-a-threat",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept How Big a Threat?.",
            complete = QuestState(985, "activeOrCompleted"),
            route = {
                Point(1439, 0.3937, 0.4348, "How Big a Threat?",
                    "Travel to How Big a Threat?."),
            },
        },
        {
            id = "accept-4761-thundris-windweaver",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Thundris Windweaver.",
            complete = QuestState(4761, "activeOrCompleted"),
            route = {
                Point(1439, 0.3937, 0.4348, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "turnin-4761-thundris-windweaver",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Thundris Windweaver.",
            complete = QuestState(4761, "completed"),
            dependsOn = { "accept-4761-thundris-windweaver" },
            route = {
                Point(1439, 0.3740, 0.4013, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "accept-4762-the-cliffspring-river",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Cliffspring River.",
            complete = QuestState(4762, "activeOrCompleted"),
            route = {
                Point(1439, 0.3740, 0.4013, "The Cliffspring River",
                    "Travel to The Cliffspring River."),
            },
        },
        {
            id = "accept-954-bashal-aran",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bashal'Aran.",
            complete = QuestState(954, "activeOrCompleted"),
            route = {
                Point(1439, 0.3740, 0.4013, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "accept-958-tools-of-the-highborne",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Tools of the Highborne.",
            complete = QuestState(958, "activeOrCompleted"),
            route = {
                Point(1439, 0.3740, 0.4013, "Tools of the Highborne",
                    "Travel to Tools of the Highborne."),
            },
        },
        {
            id = "accept-4811-the-red-crystal",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Red Crystal.",
            complete = QuestState(4811, "activeOrCompleted"),
            route = {
                Point(1439, 0.3770, 0.4339, "The Red Crystal",
                    "Travel to The Red Crystal."),
            },
        },
        {
            id = "turnin-954-bashal-aran",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bashal'Aran.",
            complete = QuestState(954, "completed"),
            dependsOn = { "accept-954-bashal-aran" },
            route = {
                Point(1439, 0.4417, 0.3629, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "accept-955-bashal-aran",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bashal'Aran.",
            complete = QuestState(955, "activeOrCompleted"),
            route = {
                Point(1439, 0.4417, 0.3629, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "objective-955-1-wild-grell",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Kill Wild Grell.",
            complete = QuestObjective(955, 1, "Wild Grell"),
            dependsOn = { "accept-955-bashal-aran" },
            route = {
                Point(1439, 0.4580, 0.3680, "Wild Grell",
                    "Travel to Wild Grell."),
            },
        },
        {
            id = "turnin-955-bashal-aran",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bashal'Aran.",
            complete = QuestState(955, "completed"),
            dependsOn = { "accept-955-bashal-aran", "objective-955-1-wild-grell" },
            route = {
                Point(1439, 0.4417, 0.3629, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "accept-956-bashal-aran",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bashal'Aran.",
            complete = QuestState(956, "activeOrCompleted"),
            route = {
                Point(1439, 0.4417, 0.3629, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "objective-956-1-deth-ryll-satyr",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Kill Deth'ryll Satyr.",
            complete = QuestObjective(956, 1, "Deth'ryll Satyr"),
            dependsOn = { "accept-956-bashal-aran" },
            route = {
                Point(1439, 0.4580, 0.3780, "Deth'ryll Satyr",
                    "Travel to Deth'ryll Satyr."),
            },
        },
        {
            id = "turnin-956-bashal-aran",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bashal'Aran.",
            complete = QuestState(956, "completed"),
            dependsOn = { "accept-956-bashal-aran", "objective-956-1-deth-ryll-satyr" },
            route = {
                Point(1439, 0.4417, 0.3630, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "accept-957-bashal-aran",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bashal'Aran.",
            complete = QuestState(957, "activeOrCompleted"),
            route = {
                Point(1439, 0.4417, 0.3630, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "accept-4723-beached-sea-creature",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Beached Sea Creature.",
            complete = QuestState(4723, "activeOrCompleted"),
            route = {
                Point(1439, 0.4188, 0.3155, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "turnin-1001-buzzbox-411",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Buzzbox 411.",
            complete = QuestState(1001, "completed"),
            dependsOn = { "accept-1001-buzzbox-411" },
            route = {
                Point(1439, 0.4196, 0.2864, "Buzzbox 411",
                    "Travel to Buzzbox 411."),
            },
        },
        {
            id = "accept-1002-buzzbox-323",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Buzzbox 323.",
            complete = QuestState(1002, "activeOrCompleted"),
            route = {
                Point(1439, 0.4196, 0.2864, "Buzzbox 323",
                    "Travel to Buzzbox 323."),
            },
        },
        {
            id = "accept-4725-beached-sea-turtle",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Beached Sea Turtle.",
            complete = QuestState(4725, "activeOrCompleted"),
            route = {
                Point(1439, 0.4421, 0.2064, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "turnin-1002-buzzbox-323",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Buzzbox 323.",
            complete = QuestState(1002, "completed"),
            dependsOn = { "accept-1002-buzzbox-323" },
            route = {
                Point(1439, 0.5128, 0.2458, "Buzzbox 323",
                    "Travel to Buzzbox 323."),
            },
        },
        {
            id = "objective-4762-1-empty-sampling-tube",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Use Empty Sampling Tube.",
            complete = QuestObjective(4762, 1, "Empty Sampling Tube"),
            dependsOn = { "accept-4762-the-cliffspring-river" },
            route = {
                Point(1439, 0.5084, 0.2550, "Empty Sampling Tube",
                    "Travel to Empty Sampling Tube."),
            },
        },
        {
            id = "accept-4727-beached-sea-turtle",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Beached Sea Turtle.",
            complete = QuestState(4727, "activeOrCompleted"),
            route = {
                Point(1439, 0.5309, 0.1815, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "accept-26-a-lesson-to-learn",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Accept A Lesson to Learn.",
            complete = QuestState(26, "activeOrCompleted"),
            route = {
                Point(1457, 0.3537, 0.0839, "A Lesson to Learn",
                    "Travel to A Lesson to Learn."),
            },
        },
        {
            id = "accept-6121-lessons-anew",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Accept Lessons Anew.",
            complete = QuestState(6121, "activeOrCompleted"),
            route = {
                Point(1457, 0.3537, 0.0839, "Lessons Anew",
                    "Travel to Lessons Anew."),
            },
        },
        {
            id = "turnin-26-a-lesson-to-learn",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Turn in A Lesson to Learn.",
            complete = QuestState(26, "completed"),
            dependsOn = { "accept-26-a-lesson-to-learn" },
            route = {
                Point(1450, 0.5621, 0.3064, "A Lesson to Learn",
                    "Travel to A Lesson to Learn."),
            },
        },
        {
            id = "accept-29-trial-of-the-lake",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Accept Trial of the Lake.",
            complete = QuestState(29, "activeOrCompleted"),
            route = {
                Point(1450, 0.5621, 0.3064, "Trial of the Lake",
                    "Travel to Trial of the Lake."),
            },
        },
        {
            id = "turnin-6121-lessons-anew",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Turn in Lessons Anew.",
            complete = QuestState(6121, "completed"),
            dependsOn = { "accept-6121-lessons-anew" },
            route = {
                Point(1450, 0.5621, 0.3064, "Lessons Anew",
                    "Travel to Lessons Anew."),
            },
        },
        {
            id = "accept-6122-the-principal-source",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Accept The Principal Source.",
            complete = QuestState(6122, "activeOrCompleted"),
            route = {
                Point(1450, 0.5621, 0.3064, "The Principal Source",
                    "Travel to The Principal Source."),
            },
        },
        {
            id = "objective-29-1-shrine-bauble",
            kind = "objective",
            priority = 450,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Use Shrine Bauble.",
            complete = QuestObjective(29, 1, "Shrine Bauble"),
            dependsOn = { "accept-29-trial-of-the-lake" },
            route = {
                Point(1450, 0.3592, 0.4138, "Shrine Bauble",
                    "Travel to Shrine Bauble."),
            },
        },
        {
            id = "turnin-29-trial-of-the-lake",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Turn in Trial of the Lake.",
            complete = QuestState(29, "completed"),
            dependsOn = { "accept-29-trial-of-the-lake", "objective-29-1-shrine-bauble" },
            route = {
                Point(1450, 0.3651, 0.4011, "Trial of the Lake",
                    "Travel to Trial of the Lake."),
            },
        },
        {
            id = "accept-272-trial-of-the-sea-lion",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Accept Trial of the Sea Lion.",
            complete = QuestState(272, "activeOrCompleted"),
            route = {
                Point(1450, 0.3651, 0.4011, "Trial of the Sea Lion",
                    "Travel to Trial of the Sea Lion."),
            },
        },
        {
            id = "turnin-4723-beached-sea-creature",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Beached Sea Creature.",
            complete = QuestState(4723, "completed"),
            dependsOn = { "accept-4723-beached-sea-creature" },
            route = {
                Point(1439, 0.3662, 0.4560, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "turnin-4725-beached-sea-turtle",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Beached Sea Turtle.",
            complete = QuestState(4725, "completed"),
            dependsOn = { "accept-4725-beached-sea-turtle" },
            route = {
                Point(1439, 0.3662, 0.4560, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "turnin-4727-beached-sea-turtle",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Beached Sea Turtle.",
            complete = QuestState(4727, "completed"),
            dependsOn = { "accept-4727-beached-sea-turtle" },
            route = {
                Point(1439, 0.3662, 0.4560, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "turnin-4811-the-red-crystal",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Red Crystal.",
            complete = QuestState(4811, "completed"),
            dependsOn = { "accept-4811-the-red-crystal" },
            route = {
                Point(1439, 0.3771, 0.4339, "The Red Crystal",
                    "Travel to The Red Crystal."),
            },
        },
        {
            id = "accept-4812-as-water-cascades",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept As Water Cascades.",
            complete = QuestState(4812, "activeOrCompleted"),
            route = {
                Point(1439, 0.3771, 0.4339, "As Water Cascades",
                    "Travel to As Water Cascades."),
            },
        },
        {
            id = "objective-4812-1-empty-water-tube",
            kind = "objective",
            priority = 530,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Use Empty Water Tube.",
            complete = QuestObjective(4812, 1, "Empty Water Tube"),
            dependsOn = { "accept-4812-as-water-cascades" },
            route = {
                Point(1439, 0.3779, 0.4405, "Empty Water Tube",
                    "Travel to Empty Water Tube."),
            },
        },
        {
            id = "accept-2178-easy-strider-living",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Easy Strider Living.",
            complete = QuestState(2178, "activeOrCompleted"),
            route = {
                Point(1439, 0.3769, 0.4066, "Easy Strider Living",
                    "Travel to Easy Strider Living."),
            },
        },
        {
            id = "turnin-2178-easy-strider-living",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Easy Strider Living.",
            complete = QuestState(2178, "completed"),
            dependsOn = { "accept-2178-easy-strider-living" },
            route = {
                Point(1439, 0.3769, 0.4066, "Easy Strider Living",
                    "Travel to Easy Strider Living."),
            },
        },
        {
            id = "turnin-4762-the-cliffspring-river",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Cliffspring River.",
            complete = QuestState(4762, "completed"),
            dependsOn = { "accept-4762-the-cliffspring-river", "objective-4762-1-empty-sampling-tube" },
            route = {
                Point(1439, 0.3740, 0.4013, "The Cliffspring River",
                    "Travel to The Cliffspring River."),
            },
        },
        {
            id = "turnin-2138-cleansing-of-the-infected",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Cleansing of the Infected.",
            complete = QuestState(2138, "completed"),
            dependsOn = { "accept-2138-cleansing-of-the-infected" },
            route = {
                Point(1439, 0.3884, 0.4341, "Cleansing of the Infected",
                    "Travel to Cleansing of the Infected."),
            },
        },
        {
            id = "turnin-4812-as-water-cascades",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in As Water Cascades.",
            complete = QuestState(4812, "completed"),
            dependsOn = { "accept-4812-as-water-cascades", "objective-4812-1-empty-water-tube" },
            route = {
                Point(1439, 0.4732, 0.4866, "As Water Cascades",
                    "Travel to As Water Cascades."),
            },
        },
        {
            id = "accept-4813-the-fragments-within",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Fragments Within.",
            complete = QuestState(4813, "activeOrCompleted"),
            route = {
                Point(1439, 0.4732, 0.4866, "The Fragments Within",
                    "Travel to The Fragments Within."),
            },
        },
        {
            id = "accept-953-the-fall-of-ameth-aran",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Fall of Ameth'Aran.",
            complete = QuestState(953, "activeOrCompleted"),
            route = {
                Point(1439, 0.4030, 0.5973, "The Fall of Ameth'Aran",
                    "Travel to The Fall of Ameth'Aran."),
            },
        },
        {
            id = "turnin-953-the-fall-of-ameth-aran",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Fall of Ameth'Aran.",
            complete = QuestState(953, "completed"),
            dependsOn = { "accept-953-the-fall-of-ameth-aran" },
            route = {
                Point(1439, 0.4030, 0.5973, "The Fall of Ameth'Aran",
                    "Travel to The Fall of Ameth'Aran."),
            },
        },
        {
            id = "accept-4728-beached-sea-creature",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Beached Sea Creature.",
            complete = QuestState(4728, "activeOrCompleted"),
            route = {
                Point(1439, 0.3606, 0.7086, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "accept-4722-beached-sea-turtle",
            kind = "accept",
            priority = 630,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Beached Sea Turtle.",
            complete = QuestState(4722, "activeOrCompleted"),
            route = {
                Point(1439, 0.3714, 0.6216, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "objective-985-2-blackwood-windtalker",
            kind = "objective",
            priority = 640,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Kill 5 Blackwood Windtalker.",
            complete = QuestObjective(985, 2, "Blackwood Windtalker"),
            dependsOn = { "accept-985-how-big-a-threat" },
            route = {
                Point(1439, 0.3960, 0.5300, "Blackwood Windtalker",
                    "Travel to Blackwood Windtalker."),
            },
        },
        {
            id = "objective-985-1-blackwood-pathfinder",
            kind = "objective",
            priority = 650,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Kill 8 Blackwood Pathfinder.",
            complete = QuestObjective(985, 1, "Blackwood Pathfinder"),
            dependsOn = { "accept-985-how-big-a-threat" },
            route = {
                Point(1439, 0.3960, 0.5300, "Blackwood Pathfinder",
                    "Travel to Blackwood Pathfinder."),
            },
        },
        {
            id = "turnin-4728-beached-sea-creature",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Beached Sea Creature.",
            complete = QuestState(4728, "completed"),
            dependsOn = { "accept-4728-beached-sea-creature" },
            route = {
                Point(1439, 0.3662, 0.4560, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "turnin-4722-beached-sea-turtle",
            kind = "turnin",
            priority = 670,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Beached Sea Turtle.",
            complete = QuestState(4722, "completed"),
            dependsOn = { "accept-4722-beached-sea-turtle" },
            route = {
                Point(1439, 0.3662, 0.4560, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "accept-1138-fruit-of-the-sea",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Fruit of the Sea.",
            complete = QuestState(1138, "activeOrCompleted"),
            route = {
                Point(1439, 0.3609, 0.4493, "Fruit of the Sea",
                    "Travel to Fruit of the Sea."),
            },
        },
        {
            id = "turnin-963-for-love-eternal",
            kind = "turnin",
            priority = 690,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in For Love Eternal.",
            complete = QuestState(963, "completed"),
            dependsOn = { "accept-963-for-love-eternal" },
            route = {
                Point(1439, 0.3574, 0.4371, "For Love Eternal",
                    "Travel to For Love Eternal."),
            },
        },
        {
            id = "turnin-4813-the-fragments-within",
            kind = "turnin",
            priority = 700,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Fragments Within.",
            complete = QuestState(4813, "completed"),
            dependsOn = { "accept-4813-the-fragments-within" },
            route = {
                Point(1439, 0.3771, 0.4339, "The Fragments Within",
                    "Travel to The Fragments Within."),
            },
        },
        {
            id = "turnin-985-how-big-a-threat",
            kind = "turnin",
            priority = 710,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in How Big a Threat?.",
            complete = QuestState(985, "completed"),
            dependsOn = { "accept-985-how-big-a-threat", "objective-985-2-blackwood-windtalker", "objective-985-1-blackwood-pathfinder" },
            route = {
                Point(1439, 0.3937, 0.4348, "How Big a Threat?",
                    "Travel to How Big a Threat?."),
            },
        },
        {
            id = "accept-965-the-tower-of-althalaxx",
            kind = "accept",
            priority = 720,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Tower of Althalaxx.",
            complete = QuestState(965, "activeOrCompleted"),
            route = {
                Point(1439, 0.3905, 0.4355, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "accept-982-deep-ocean-vast-sea",
            kind = "accept",
            priority = 730,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Deep Ocean, Vast Sea.",
            complete = QuestState(982, "activeOrCompleted"),
            route = {
                Point(1439, 0.3811, 0.4117, "Deep Ocean, Vast Sea",
                    "Travel to Deep Ocean, Vast Sea."),
            },
        },
        {
            id = "turnin-958-tools-of-the-highborne",
            kind = "turnin",
            priority = 740,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Tools of the Highborne.",
            complete = QuestState(958, "completed"),
            dependsOn = { "accept-958-tools-of-the-highborne" },
            route = {
                Point(1439, 0.3740, 0.4013, "Tools of the Highborne",
                    "Travel to Tools of the Highborne."),
            },
        },
        {
            id = "turnin-957-bashal-aran",
            kind = "turnin",
            priority = 750,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bashal'Aran.",
            complete = QuestState(957, "completed"),
            dependsOn = { "accept-957-bashal-aran" },
            route = {
                Point(1439, 0.4417, 0.3630, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "turnin-965-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 760,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Tower of Althalaxx.",
            complete = QuestState(965, "completed"),
            dependsOn = { "accept-965-the-tower-of-althalaxx" },
            route = {
                Point(1439, 0.5497, 0.2489, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "accept-966-the-tower-of-althalaxx",
            kind = "accept",
            priority = 770,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Tower of Althalaxx.",
            complete = QuestState(966, "activeOrCompleted"),
            route = {
                Point(1439, 0.5497, 0.2489, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "objective-966-1-dark-strand-fanatic",
            kind = "objective",
            priority = 780,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Kill Dark Strand Fanatic.",
            complete = QuestObjective(966, 1, "Dark Strand Fanatic"),
            dependsOn = { "accept-966-the-tower-of-althalaxx" },
            route = {
                Point(1439, 0.5500, 0.2760, "Dark Strand Fanatic",
                    "Travel to Dark Strand Fanatic."),
            },
        },
        {
            id = "turnin-966-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 790,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Tower of Althalaxx.",
            complete = QuestState(966, "completed"),
            dependsOn = { "accept-966-the-tower-of-althalaxx", "objective-966-1-dark-strand-fanatic" },
            route = {
                Point(1439, 0.5497, 0.2489, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "accept-967-the-tower-of-althalaxx",
            kind = "accept",
            priority = 800,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Tower of Althalaxx.",
            complete = QuestState(967, "activeOrCompleted"),
            route = {
                Point(1439, 0.5497, 0.2489, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "turnin-1138-fruit-of-the-sea",
            kind = "turnin",
            priority = 810,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Fruit of the Sea.",
            complete = QuestState(1138, "completed"),
            dependsOn = { "accept-1138-fruit-of-the-sea" },
            route = {
                Point(1439, 0.3610, 0.4493, "Fruit of the Sea",
                    "Travel to Fruit of the Sea."),
            },
        },
        {
            id = "turnin-982-deep-ocean-vast-sea",
            kind = "turnin",
            priority = 820,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Deep Ocean, Vast Sea.",
            complete = QuestState(982, "completed"),
            dependsOn = { "accept-982-deep-ocean-vast-sea" },
            route = {
                Point(1439, 0.3811, 0.4117, "Deep Ocean, Vast Sea",
                    "Travel to Deep Ocean, Vast Sea."),
            },
        },
        {
            id = "woven-accept-98025-wanted-jaivhanel",
            kind = "accept",
            priority = 830,
            conditions = { level = { min = 13 } },
            text = "Accept WANTED: Jai'vhanel from the poster beside Sentinel Glynda Nal'Shea in Auberdine.",
            complete = QuestState(98025, "activeOrCompleted"),
            route = {
                Point(1439, 0.3720, 0.4420, "WANTED: Jai'vhanel",
                    "Travel to WANTED: Jai'vhanel."),
            },
        },
        {
            id = "woven-objective-98025-wanted-jaivhanel",
            kind = "objective",
            priority = 840,
            conditions = { level = { min = 13 } },
            text = "WANTED: Jai'vhanel: slay the owl north of Ameth'Aran and take a feather.",
            complete = QuestState(98025, "complete"),
            route = {
                Point(1439, 0.4500, 0.5820, "Jai'vhanel",
                    "Travel to Jai'vhanel."),
            },
        },
        {
            id = "woven-turnin-98025-wanted-jaivhanel",
            kind = "turnin",
            priority = 850,
            conditions = { level = { min = 13 } },
            text = "Turn in WANTED: Jai'vhanel to Sentinel Glynda Nal'Shea in Auberdine.",
            complete = QuestState(98025, "completed"),
            route = {
                Point(1439, 0.3760, 0.4340, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
    },
})
