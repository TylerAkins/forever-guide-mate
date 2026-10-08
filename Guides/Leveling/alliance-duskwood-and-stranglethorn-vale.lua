local _, ns = ...

-- Forever Casual spine: Duskwood & Stranglethorn Vale (30-32)
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
    ELWYNN_FOREST = 1429,
    DUSKWOOD = 1431,
    STRANGLETHORN_VALE = 1434,
    WETLANDS = 1437,
    STORMWIND_CITY = 1453,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
    title = "Duskwood & Stranglethorn Vale",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 30 } },
        },
    },
    goals = {
        {
            id = "turnin-293-cleansing-the-eye",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Cleansing the Eye.",
            complete = QuestState(293, "completed"),
            route = {
                Point(1453, 0.4305, 0.3448, "Cleansing the Eye",
                    "Travel to Cleansing the Eye."),
            },
        },
        {
            id = "accept-1274-the-missing-diplomat",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1274, "activeOrCompleted"),
            route = {
                Point(1453, 0.4037, 0.2940, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "turnin-322-blessed-arm",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Blessed Arm.",
            complete = QuestState(322, "completed"),
            route = {
                Point(1453, 0.5176, 0.1206, "Blessed Arm",
                    "Travel to Blessed Arm."),
            },
        },
        {
            id = "accept-325-armed-and-ready",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Armed and Ready.",
            complete = QuestState(325, "activeOrCompleted"),
            route = {
                Point(1453, 0.5176, 0.1206, "Armed and Ready",
                    "Travel to Armed and Ready."),
            },
        },
        {
            id = "accept-337-an-old-history-book",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Use the An Old History Book to accept An Old History Book.",
            complete = QuestState(337, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-1274-the-missing-diplomat",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1274, "completed"),
            dependsOn = { "accept-1274-the-missing-diplomat" },
            route = {
                Point(1453, 0.6907, 0.2877, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1241-the-missing-diplomat",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1241, "activeOrCompleted"),
            route = {
                Point(1453, 0.6907, 0.2877, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "turnin-337-an-old-history-book",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in An Old History Book.",
            complete = QuestState(337, "completed"),
            dependsOn = { "accept-337-an-old-history-book" },
            route = {
                Point(1453, 0.7272, 0.2292, "An Old History Book",
                    "Travel to An Old History Book."),
            },
        },
        {
            id = "accept-538-southshore",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Southshore.",
            complete = QuestState(538, "activeOrCompleted"),
            route = {
                Point(1453, 0.7272, 0.2292, "Southshore",
                    "Travel to Southshore."),
            },
        },
        {
            id = "turnin-1241-the-missing-diplomat",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1241, "completed"),
            dependsOn = { "accept-1241-the-missing-diplomat" },
            route = {
                Point(1453, 0.7317, 0.7842, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1242-the-missing-diplomat",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1242, "activeOrCompleted"),
            route = {
                Point(1453, 0.7317, 0.7842, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "turnin-1242-the-missing-diplomat",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1242, "completed"),
            dependsOn = { "accept-1242-the-missing-diplomat" },
            route = {
                Point(1453, 0.5991, 0.6417, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1243-the-missing-diplomat",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1243, "activeOrCompleted"),
            route = {
                Point(1453, 0.5991, 0.6417, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-181-look-to-the-stars",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Look To The Stars.",
            complete = QuestState(181, "activeOrCompleted"),
            route = {
                Point(1431, 0.7980, 0.4802, "Look To The Stars",
                    "Travel to Look To The Stars."),
            },
        },
        {
            id = "accept-173-worgen-in-the-woods",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Worgen in the Woods.",
            complete = QuestState(173, "activeOrCompleted"),
            route = {
                Point(1431, 0.7530, 0.4805, "Worgen in the Woods",
                    "Travel to Worgen in the Woods."),
            },
        },
        {
            id = "accept-58-the-night-watch",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Night Watch.",
            complete = QuestState(58, "activeOrCompleted"),
            route = {
                Point(1431, 0.7360, 0.4690, "The Night Watch",
                    "Travel to The Night Watch."),
            },
        },
        {
            id = "turnin-1243-the-missing-diplomat",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1243, "completed"),
            dependsOn = { "accept-1243-the-missing-diplomat" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-1244-the-missing-diplomat",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat from Watcher Backus in Duskwood (Darkshire inn area).",
            complete = QuestState(1244, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "objective-173-1-nightbane-shadow-weaver",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Nightbane Shadow Weaver.",
            complete = QuestObjective(173, 1, "Nightbane Shadow Weaver"),
            dependsOn = { "accept-173-worgen-in-the-woods" },
            route = {
                Point(1431, 0.6240, 0.4240, "Nightbane Shadow Weaver",
                    "Travel to Nightbane Shadow Weaver."),
            },
        },
        {
            id = "turnin-173-worgen-in-the-woods",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Worgen in the Woods.",
            complete = QuestState(173, "completed"),
            dependsOn = { "accept-173-worgen-in-the-woods", "objective-173-1-nightbane-shadow-weaver" },
            route = {
                Point(1431, 0.7530, 0.4805, "Worgen in the Woods",
                    "Travel to Worgen in the Woods."),
            },
        },
        {
            id = "accept-221-worgen-in-the-woods",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Worgen in the Woods.",
            complete = QuestState(221, "activeOrCompleted"),
            route = {
                Point(1431, 0.7530, 0.4805, "Worgen in the Woods",
                    "Travel to Worgen in the Woods."),
            },
        },
        {
            id = "objective-337-1-nightbane-dark-runner",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Kill Nightbane Dark Runner.",
            complete = QuestObjective(337, 1, "Nightbane Dark Runner"),
            dependsOn = { "accept-337-an-old-history-book" },
            route = {
                Point(1431, 0.6700, 0.4320, "Nightbane Dark Runner",
                    "Travel to Nightbane Dark Runner."),
            },
        },
        {
            id = "turnin-74-the-legend-of-stalvan",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Legend of Stalvan.",
            complete = QuestState(74, "completed"),
            route = {
                Point(1429, 0.8461, 0.6938, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "accept-75-the-legend-of-stalvan",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Legend of Stalvan.",
            complete = QuestState(75, "activeOrCompleted"),
            route = {
                Point(1429, 0.8461, 0.6938, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "turnin-75-the-legend-of-stalvan",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Legend of Stalvan.",
            complete = QuestState(75, "completed"),
            dependsOn = { "accept-75-the-legend-of-stalvan" },
            route = {
                Point(1429, 0.8461, 0.6938, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "accept-78-the-legend-of-stalvan",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Legend of Stalvan.",
            complete = QuestState(78, "activeOrCompleted"),
            route = {
                Point(1429, 0.8461, 0.6938, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "turnin-159-juice-delivery",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Juice Delivery.",
            complete = QuestState(159, "completed"),
            route = {
                Point(1431, 0.2811, 0.3147, "Juice Delivery",
                    "Travel to Juice Delivery."),
            },
        },
        {
            id = "accept-133-ghoulish-effigy",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ghoulish Effigy.",
            complete = QuestState(133, "activeOrCompleted"),
            route = {
                Point(1431, 0.2811, 0.3147, "Ghoulish Effigy",
                    "Travel to Ghoulish Effigy."),
            },
        },
        {
            id = "objective-133-1-flesh-eater",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Kill Flesh Eater.",
            complete = QuestObjective(133, 1, "Flesh Eater"),
            dependsOn = { "accept-133-ghoulish-effigy" },
            route = {
                Point(1431, 0.2359, 0.3489, "Flesh Eater",
                    "Travel to Flesh Eater."),
            },
        },
        {
            id = "turnin-133-ghoulish-effigy",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ghoulish Effigy.",
            complete = QuestState(133, "completed"),
            dependsOn = { "accept-133-ghoulish-effigy", "objective-133-1-flesh-eater" },
            route = {
                Point(1431, 0.2363, 0.3492, "Ghoulish Effigy",
                    "Travel to Ghoulish Effigy."),
            },
        },
        {
            id = "accept-134-ogre-thieves",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ogre Thieves.",
            complete = QuestState(134, "activeOrCompleted"),
            route = {
                Point(1431, 0.2363, 0.3492, "Ogre Thieves",
                    "Travel to Ogre Thieves."),
            },
        },
        {
            id = "objective-181-1-zzarc-vul",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Kill Zzarc' Vul.",
            complete = QuestObjective(181, 1, "Zzarc' Vul"),
            dependsOn = { "accept-181-look-to-the-stars" },
            route = {
                Point(1431, 0.3408, 0.7702, "Zzarc' Vul",
                    "Travel to Zzarc' Vul."),
            },
        },
        {
            id = "turnin-134-ogre-thieves",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ogre Thieves.",
            complete = QuestState(134, "completed"),
            dependsOn = { "accept-134-ogre-thieves" },
            route = {
                Point(1431, 0.3408, 0.7702, "Ogre Thieves",
                    "Travel to Ogre Thieves."),
            },
        },
        {
            id = "accept-160-note-to-the-mayor",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Note to the Mayor.",
            complete = QuestState(160, "activeOrCompleted"),
            route = {
                Point(1431, 0.3408, 0.7702, "Note to the Mayor",
                    "Travel to Note to the Mayor."),
            },
        },
        {
            id = "accept-225-the-weathered-grave",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Weathered Grave.",
            complete = QuestState(225, "activeOrCompleted"),
            route = {
                Point(1431, 0.1772, 0.2908, "The Weathered Grave",
                    "Travel to The Weathered Grave."),
            },
        },
        {
            id = "turnin-325-armed-and-ready",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Armed and Ready.",
            complete = QuestState(325, "completed"),
            dependsOn = { "accept-325-armed-and-ready" },
            route = {
                Point(1431, 0.0778, 0.3407, "Armed and Ready",
                    "Travel to Armed and Ready."),
            },
        },
        {
            id = "turnin-78-the-legend-of-stalvan",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Legend of Stalvan.",
            complete = QuestState(78, "completed"),
            dependsOn = { "accept-78-the-legend-of-stalvan" },
            route = {
                Point(1431, 0.7378, 0.4448, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "accept-79-the-legend-of-stalvan",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Legend of Stalvan.",
            complete = QuestState(79, "activeOrCompleted"),
            route = {
                Point(1431, 0.7378, 0.4448, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "turnin-58-the-night-watch",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Night Watch.",
            complete = QuestState(58, "completed"),
            dependsOn = { "accept-58-the-night-watch" },
            route = {
                Point(1431, 0.7359, 0.4689, "The Night Watch",
                    "Travel to The Night Watch."),
            },
        },
        {
            id = "turnin-79-the-legend-of-stalvan",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Legend of Stalvan.",
            complete = QuestState(79, "completed"),
            dependsOn = { "accept-79-the-legend-of-stalvan" },
            route = {
                Point(1431, 0.7359, 0.4689, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "accept-80-the-legend-of-stalvan",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Legend of Stalvan.",
            complete = QuestState(80, "activeOrCompleted"),
            route = {
                Point(1431, 0.7359, 0.4689, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "turnin-80-the-legend-of-stalvan",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Legend of Stalvan.",
            complete = QuestState(80, "completed"),
            dependsOn = { "accept-80-the-legend-of-stalvan" },
            route = {
                Point(1431, 0.7252, 0.4685, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "accept-97-the-legend-of-stalvan",
            kind = "accept",
            priority = 430,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Legend of Stalvan.",
            complete = QuestState(97, "activeOrCompleted"),
            route = {
                Point(1431, 0.7252, 0.4685, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "turnin-225-the-weathered-grave",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Weathered Grave.",
            complete = QuestState(225, "completed"),
            dependsOn = { "accept-225-the-weathered-grave" },
            route = {
                Point(1431, 0.7264, 0.4762, "The Weathered Grave",
                    "Travel to The Weathered Grave."),
            },
        },
        {
            id = "accept-227-morgan-ladimore",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Morgan Ladimore.",
            complete = QuestState(227, "activeOrCompleted"),
            route = {
                Point(1431, 0.7264, 0.4762, "Morgan Ladimore",
                    "Travel to Morgan Ladimore."),
            },
        },
        {
            id = "turnin-160-note-to-the-mayor",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Note to the Mayor.",
            complete = QuestState(160, "completed"),
            dependsOn = { "accept-160-note-to-the-mayor" },
            route = {
                Point(1431, 0.7193, 0.4642, "Note to the Mayor",
                    "Travel to Note to the Mayor."),
            },
        },
        {
            id = "accept-251-translate-abercrombie-s-note",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Translate Abercrombie's Note.",
            complete = QuestState(251, "activeOrCompleted"),
            route = {
                Point(1431, 0.7193, 0.4642, "Translate Abercrombie's Note",
                    "Travel to Translate Abercrombie's Note."),
            },
        },
        {
            id = "turnin-251-translate-abercrombie-s-note",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Translate Abercrombie's Note.",
            complete = QuestState(251, "completed"),
            dependsOn = { "accept-251-translate-abercrombie-s-note" },
            route = {
                Point(1431, 0.7264, 0.4762, "Translate Abercrombie's Note",
                    "Travel to Translate Abercrombie's Note."),
            },
        },
        {
            id = "accept-401-wait-for-sirra-to-finish",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Wait for Sirra to Finish.",
            complete = QuestState(401, "activeOrCompleted"),
            route = {
                Point(1431, 0.7264, 0.4762, "Wait for Sirra to Finish",
                    "Travel to Wait for Sirra to Finish."),
            },
        },
        {
            id = "turnin-401-wait-for-sirra-to-finish",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Wait for Sirra to Finish.",
            complete = QuestState(401, "completed"),
            dependsOn = { "accept-401-wait-for-sirra-to-finish" },
            route = {
                Point(1431, 0.7264, 0.4762, "Wait for Sirra to Finish",
                    "Travel to Wait for Sirra to Finish."),
            },
        },
        {
            id = "accept-252-translation-to-ello",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Translation to Ello.",
            complete = QuestState(252, "activeOrCompleted"),
            route = {
                Point(1431, 0.7264, 0.4762, "Translation to Ello",
                    "Travel to Translation to Ello."),
            },
        },
        {
            id = "turnin-252-translation-to-ello",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Translation to Ello.",
            complete = QuestState(252, "completed"),
            dependsOn = { "accept-252-translation-to-ello" },
            route = {
                Point(1431, 0.7193, 0.4642, "Translation to Ello",
                    "Travel to Translation to Ello."),
            },
        },
        {
            id = "turnin-227-morgan-ladimore",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Morgan Ladimore.",
            complete = QuestState(227, "completed"),
            dependsOn = { "accept-227-morgan-ladimore" },
            route = {
                Point(1431, 0.7359, 0.4689, "Morgan Ladimore",
                    "Travel to Morgan Ladimore."),
            },
        },
        {
            id = "turnin-97-the-legend-of-stalvan",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Legend of Stalvan.",
            complete = QuestState(97, "completed"),
            dependsOn = { "accept-97-the-legend-of-stalvan" },
            route = {
                Point(1431, 0.7359, 0.4689, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "accept-98-the-legend-of-stalvan",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Legend of Stalvan.",
            complete = QuestState(98, "activeOrCompleted"),
            route = {
                Point(1431, 0.7359, 0.4689, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "turnin-221-worgen-in-the-woods",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Worgen in the Woods.",
            complete = QuestState(221, "completed"),
            dependsOn = { "accept-221-worgen-in-the-woods" },
            route = {
                Point(1431, 0.7530, 0.4805, "Worgen in the Woods",
                    "Travel to Worgen in the Woods."),
            },
        },
        {
            id = "accept-222-worgen-in-the-woods",
            kind = "accept",
            priority = 570,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Worgen in the Woods.",
            complete = QuestState(222, "activeOrCompleted"),
            route = {
                Point(1431, 0.7530, 0.4805, "Worgen in the Woods",
                    "Travel to Worgen in the Woods."),
            },
        },
        {
            id = "turnin-181-look-to-the-stars",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Look To The Stars.",
            complete = QuestState(181, "completed"),
            dependsOn = { "accept-181-look-to-the-stars", "objective-181-1-zzarc-vul" },
            route = {
                Point(1431, 0.7980, 0.4802, "Look To The Stars",
                    "Travel to Look To The Stars."),
            },
        },
        {
            id = "turnin-1244-the-missing-diplomat",
            kind = "turnin",
            priority = 590,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1244, "completed"),
            dependsOn = { "accept-1244-the-missing-diplomat" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-1245-the-missing-diplomat",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat from Jorgen in Stormwind.",
            complete = QuestState(1245, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-98-the-legend-of-stalvan",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Legend of Stalvan.",
            complete = QuestState(98, "completed"),
            dependsOn = { "accept-98-the-legend-of-stalvan" },
            route = {
                Point(1431, 0.7582, 0.4529, "The Legend of Stalvan",
                    "Travel to The Legend of Stalvan."),
            },
        },
        {
            id = "objective-222-2-nightbane-tainted-one",
            kind = "objective",
            priority = 620,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Kill 8 Nightbane Tainted One.",
            complete = QuestObjective(222, 2, "Nightbane Tainted One"),
            dependsOn = { "accept-222-worgen-in-the-woods" },
            route = {
                Point(1431, 0.7303, 0.7508, "Nightbane Tainted One",
                    "Travel to Nightbane Tainted One."),
            },
        },
        {
            id = "objective-222-1-nightbane-vile-fang",
            kind = "objective",
            priority = 630,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Kill 8 Nightbane Vile Fang.",
            complete = QuestObjective(222, 1, "Nightbane Vile Fang"),
            dependsOn = { "accept-222-worgen-in-the-woods" },
            route = {
                Point(1431, 0.7303, 0.7508, "Nightbane Vile Fang",
                    "Travel to Nightbane Vile Fang."),
            },
        },
        {
            id = "accept-215-jungle-secrets",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Jungle Secrets.",
            complete = QuestState(215, "activeOrCompleted"),
            route = {
                Point(1434, 0.3798, 0.0341, "Jungle Secrets",
                    "Travel to Jungle Secrets."),
            },
        },
        {
            id = "accept-583-welcome-to-the-jungle",
            kind = "accept",
            priority = 650,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Welcome to the Jungle.",
            complete = QuestState(583, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "Welcome to the Jungle",
                    "Travel to Welcome to the Jungle."),
            },
        },
        {
            id = "turnin-583-welcome-to-the-jungle",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Welcome to the Jungle.",
            complete = QuestState(583, "completed"),
            dependsOn = { "accept-583-welcome-to-the-jungle" },
            route = {
                Point(1434, 0.3566, 0.1081, "Welcome to the Jungle",
                    "Travel to Welcome to the Jungle."),
            },
        },
        {
            id = "accept-185-tiger-mastery",
            kind = "accept",
            priority = 670,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Tiger Mastery.",
            complete = QuestState(185, "activeOrCompleted"),
            route = {
                Point(1434, 0.3561, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "accept-190-panther-mastery",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Panther Mastery.",
            complete = QuestState(190, "activeOrCompleted"),
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "objective-185-1-young-stranglethorn-tiger",
            kind = "objective",
            priority = 690,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Young Stranglethorn Tiger.",
            complete = QuestObjective(185, 1, "Young Stranglethorn Tiger"),
            dependsOn = { "accept-185-tiger-mastery" },
            route = {
                Point(1434, 0.3380, 0.1300, "Young Stranglethorn Tiger",
                    "Travel to Young Stranglethorn Tiger."),
            },
        },
        {
            id = "turnin-185-tiger-mastery",
            kind = "turnin",
            priority = 700,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Tiger Mastery.",
            complete = QuestState(185, "completed"),
            dependsOn = { "accept-185-tiger-mastery", "objective-185-1-young-stranglethorn-tiger" },
            route = {
                Point(1434, 0.3561, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "turnin-190-panther-mastery",
            kind = "turnin",
            priority = 710,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Panther Mastery.",
            complete = QuestState(190, "completed"),
            dependsOn = { "accept-190-panther-mastery" },
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "turnin-215-jungle-secrets",
            kind = "turnin",
            priority = 720,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Jungle Secrets.",
            complete = QuestState(215, "completed"),
            dependsOn = { "accept-215-jungle-secrets" },
            route = {
                Point(1434, 0.3804, 0.0301, "Jungle Secrets",
                    "Travel to Jungle Secrets."),
            },
        },
        {
            id = "turnin-222-worgen-in-the-woods",
            kind = "turnin",
            priority = 730,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Worgen in the Woods.",
            complete = QuestState(222, "completed"),
            dependsOn = { "accept-222-worgen-in-the-woods", "objective-222-2-nightbane-tainted-one", "objective-222-1-nightbane-vile-fang" },
            route = {
                Point(1431, 0.7530, 0.4805, "Worgen in the Woods",
                    "Travel to Worgen in the Woods."),
            },
        },
        {
            id = "accept-223-worgen-in-the-woods",
            kind = "accept",
            priority = 740,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Worgen in the Woods.",
            complete = QuestState(223, "activeOrCompleted"),
            route = {
                Point(1431, 0.7530, 0.4805, "Worgen in the Woods",
                    "Travel to Worgen in the Woods."),
            },
        },
        {
            id = "turnin-223-worgen-in-the-woods",
            kind = "turnin",
            priority = 750,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Worgen in the Woods.",
            complete = QuestState(223, "completed"),
            dependsOn = { "accept-223-worgen-in-the-woods" },
            route = {
                Point(1431, 0.7532, 0.4902, "Worgen in the Woods",
                    "Travel to Worgen in the Woods."),
            },
        },
        {
            id = "accept-690-malin-s-request",
            kind = "accept",
            priority = 760,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
                { class = 8 },
            } },
            text = "Accept Malin's Request.",
            complete = QuestState(690, "activeOrCompleted"),
            route = {
                Point(1453, 0.3984, 0.8146, "Malin's Request",
                    "Travel to Malin's Request."),
            },
        },
        {
            id = "accept-1301-james-hyal",
            kind = "accept",
            priority = 770,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
                { class = 8 },
            } },
            text = "Accept James Hyal.",
            complete = QuestState(1301, "activeOrCompleted"),
            route = {
                Point(1453, 0.3985, 0.8525, "James Hyal",
                    "Travel to James Hyal."),
            },
        },
        {
            id = "turnin-335-a-noble-brew",
            kind = "turnin",
            priority = 780,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
                { class = 8 },
            } },
            text = "Turn in A Noble Brew.",
            complete = QuestState(335, "completed"),
            route = {
                Point(1453, 0.2919, 0.7412, "A Noble Brew",
                    "Travel to A Noble Brew."),
            },
        },
        {
            id = "accept-336-a-noble-brew",
            kind = "accept",
            priority = 790,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
                { class = 8 },
            } },
            text = "Accept A Noble Brew.",
            complete = QuestState(336, "activeOrCompleted"),
            route = {
                Point(1453, 0.2919, 0.7412, "A Noble Brew",
                    "Travel to A Noble Brew."),
            },
        },
        {
            id = "objective-555-1-turtle-meat",
            kind = "objective",
            priority = 800,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
                { class = 8 },
            } },
            text = "Collect 10 Turtle Meat.",
            complete = QuestObjective(555, 1, "Turtle Meat"),
            route = {
                Point(1453, 0.5766, 0.7278, "Turtle Meat",
                    "Travel to Turtle Meat."),
            },
        },
        {
            id = "turnin-1245-the-missing-diplomat",
            kind = "turnin",
            priority = 810,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1245, "completed"),
            dependsOn = { "accept-1245-the-missing-diplomat" },
            route = {
                Point(1453, 0.5991, 0.6417, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1246-the-missing-diplomat",
            kind = "accept",
            priority = 820,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1246, "activeOrCompleted"),
            route = {
                Point(1453, 0.5991, 0.6417, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1798-seeking-strahad",
            kind = "accept",
            priority = 830,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Accept Seeking Strahad.",
            complete = QuestState(1798, "activeOrCompleted"),
            route = {
                Point(1453, 0.2525, 0.7854, "Seeking Strahad",
                    "Travel to Seeking Strahad."),
            },
        },
        {
            id = "accept-1718-the-islander",
            kind = "accept",
            priority = 840,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Accept The Islander.",
            complete = QuestState(1718, "activeOrCompleted"),
            route = {
                Point(1453, 0.7868, 0.4579, "The Islander",
                    "Travel to The Islander."),
            },
        },
        {
            id = "turnin-1246-the-missing-diplomat",
            kind = "turnin",
            priority = 850,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1246, "completed"),
            dependsOn = { "accept-1246-the-missing-diplomat" },
            route = {
                Point(1453, 0.7053, 0.4488, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1447-the-missing-diplomat",
            kind = "accept",
            priority = 860,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1447, "activeOrCompleted"),
            route = {
                Point(1453, 0.7053, 0.4488, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "objective-1447-1-dashel-stonefist",
            kind = "objective",
            priority = 870,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Kill Dashel Stonefist.",
            complete = QuestObjective(1447, 1, "Dashel Stonefist"),
            dependsOn = { "accept-1447-the-missing-diplomat" },
            route = {
                Point(1453, 0.7053, 0.4488, "Dashel Stonefist",
                    "Travel to Dashel Stonefist."),
            },
        },
        {
            id = "turnin-1447-the-missing-diplomat",
            kind = "turnin",
            priority = 880,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1447, "completed"),
            dependsOn = { "accept-1447-the-missing-diplomat", "objective-1447-1-dashel-stonefist" },
            route = {
                Point(1453, 0.7053, 0.4488, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1247-the-missing-diplomat",
            kind = "accept",
            priority = 890,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1247, "activeOrCompleted"),
            route = {
                Point(1453, 0.7053, 0.4488, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "turnin-1247-the-missing-diplomat",
            kind = "turnin",
            priority = 900,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1247, "completed"),
            dependsOn = { "accept-1247-the-missing-diplomat" },
            route = {
                Point(1453, 0.5991, 0.6417, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1248-the-missing-diplomat",
            kind = "accept",
            priority = 910,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1248, "activeOrCompleted"),
            route = {
                Point(1453, 0.5991, 0.6417, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "turnin-336-a-noble-brew",
            kind = "turnin",
            priority = 920,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Noble Brew.",
            complete = QuestState(336, "completed"),
            dependsOn = { "accept-336-a-noble-brew" },
            route = {
                Point(1453, 0.6909, 0.2870, "A Noble Brew",
                    "Travel to A Noble Brew."),
            },
        },
        {
            id = "turnin-337-an-old-history-book-2",
            kind = "turnin",
            priority = 930,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in An Old History Book.",
            complete = QuestState(337, "completed"),
            dependsOn = { "accept-337-an-old-history-book", "objective-337-1-nightbane-dark-runner" },
            route = {
                Point(1453, 0.7417, 0.0749, "An Old History Book",
                    "Travel to An Old History Book."),
            },
        },
        {
            id = "turnin-1301-james-hyal",
            kind = "turnin",
            priority = 950,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in James Hyal.",
            complete = QuestState(1301, "completed"),
            dependsOn = { "accept-1301-james-hyal" },
            route = {
                Point(1437, 0.1083, 0.6040, "James Hyal",
                    "Travel to James Hyal."),
            },
        },
        {
            id = "accept-1302-james-hyal",
            kind = "accept",
            priority = 960,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept James Hyal.",
            complete = QuestState(1302, "activeOrCompleted"),
            route = {
                Point(1437, 0.1083, 0.6040, "James Hyal",
                    "Travel to James Hyal."),
            },
        },
        {
            id = "turnin-1248-the-missing-diplomat",
            kind = "turnin",
            priority = 970,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1248, "completed"),
            dependsOn = { "accept-1248-the-missing-diplomat" },
            route = {
                Point(1437, 0.1060, 0.6077, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1249-the-missing-diplomat",
            kind = "accept",
            priority = 980,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1249, "activeOrCompleted"),
            route = {
                Point(1437, 0.1060, 0.6077, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "objective-1249-1-tapoke-slim-jahn",
            kind = "objective",
            priority = 990,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Kill Tapoke \"Slim\" Jahn.",
            complete = QuestObjective(1249, 1, "Tapoke \"Slim\" Jahn"),
            dependsOn = { "accept-1249-the-missing-diplomat" },
            route = {
                Point(1437, 0.1079, 0.5960, "Tapoke \"Slim\" Jahn",
                    "Travel to Tapoke \"Slim\" Jahn."),
            },
        },
        {
            id = "turnin-1249-the-missing-diplomat",
            kind = "turnin",
            priority = 1000,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1249, "completed"),
            dependsOn = { "accept-1249-the-missing-diplomat", "objective-1249-1-tapoke-slim-jahn" },
            route = {
                Point(1437, 0.1060, 0.6077, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1250-the-missing-diplomat",
            kind = "accept",
            priority = 1010,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1250, "activeOrCompleted"),
            route = {
                Point(1437, 0.1054, 0.6026, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "turnin-1250-the-missing-diplomat",
            kind = "turnin",
            priority = 1020,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1250, "completed"),
            dependsOn = { "accept-1250-the-missing-diplomat" },
            route = {
                Point(1437, 0.1060, 0.6077, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1264-the-missing-diplomat",
            kind = "accept",
            priority = 1030,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1264, "activeOrCompleted"),
            route = {
                Point(1437, 0.1060, 0.6077, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
    },
})
