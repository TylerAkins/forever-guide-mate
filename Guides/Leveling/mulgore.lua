local _, ns = ...

-- Forever Casual spine: Tauren Starter (1-13)
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
    DUROTAR = 1411,
    MULGORE = 1412,
    THE_BARRENS = 1413,
    TIRISFAL_GLADES = 1420,
    MOONGLADE = 1450,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
}

ns:RegisterGuide({
    id = "leveling-era-mulgore",
    title = "Tauren Starter",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "objective-747-1-plainstrider",
            kind = "objective",
            priority = 10,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { any = { { class = 1 }, { class = 7 } } }
            } },
            text = "Kill Plainstrider.",
            complete = QuestObjective(747, 1, "Plainstrider"),
            route = {
                Point(1412, 0.4540, 0.8120, "Plainstrider",
                    "Travel to Plainstrider.")
            }
            },
        {
            id = "accept-747-the-hunt-begins",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Hunt Begins.",
            complete = QuestState(747, "activeOrCompleted"),
            route = {
                Point(1412, 0.4488, 0.7707, "The Hunt Begins",
                    "Travel to The Hunt Begins.")
            }
            },
        {
            id = "accept-752-a-humble-task",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A Humble Task.",
            complete = QuestState(752, "activeOrCompleted"),
            route = {
                Point(1412, 0.4418, 0.7606, "A Humble Task",
                    "Travel to A Humble Task.")
            }
            },
        {
            id = "turnin-752-a-humble-task",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A Humble Task.",
            complete = QuestState(752, "completed"),
            dependsOn = { "accept-752-a-humble-task" },
            route = {
                Point(1412, 0.5003, 0.8116, "A Humble Task",
                    "Travel to A Humble Task.")
            }
            },
        {
            id = "accept-753-a-humble-task",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A Humble Task.",
            complete = QuestState(753, "activeOrCompleted"),
            route = {
                Point(1412, 0.5003, 0.8116, "A Humble Task",
                    "Travel to A Humble Task.")
            }
            },
        {
            id = "turnin-747-the-hunt-begins",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Hunt Begins.",
            complete = QuestState(747, "completed"),
            dependsOn = { "accept-747-the-hunt-begins", "objective-747-1-plainstrider" },
            route = {
                Point(1412, 0.4488, 0.7707, "The Hunt Begins",
                    "Travel to The Hunt Begins.")
            }
            },
        {
            id = "accept-3091-simple-note",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 },
                { class = 1 }
            } },
            text = "Accept Simple Note.",
            complete = QuestState(3091, "activeOrCompleted"),
            route = {
                Point(1412, 0.4488, 0.7707, "Simple Note",
                    "Travel to Simple Note.")
            }
            },
        {
            id = "accept-3093-rune-inscribed-note",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 },
                { class = 7 }
            } },
            text = "Accept Rune-Inscribed Note.",
            complete = QuestState(3093, "activeOrCompleted"),
            route = {
                Point(1412, 0.4488, 0.7707, "Rune-Inscribed Note",
                    "Travel to Rune-Inscribed Note.")
            }
            },
        {
            id = "accept-3092-etched-note",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 }
            } },
            text = "Accept Etched Note.",
            complete = QuestState(3092, "activeOrCompleted"),
            route = {
                Point(1412, 0.4488, 0.7707, "Etched Note",
                    "Travel to Etched Note.")
            }
            },
        {
            id = "accept-3094-verdant-note",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 }
            } },
            text = "Accept Verdant Note.",
            complete = QuestState(3094, "activeOrCompleted"),
            route = {
                Point(1412, 0.4488, 0.7707, "Verdant Note",
                    "Travel to Verdant Note.")
            }
            },
        {
            id = "accept-750-the-hunt-continues",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Hunt Continues.",
            complete = QuestState(750, "activeOrCompleted"),
            route = {
                Point(1412, 0.4488, 0.7707, "The Hunt Continues",
                    "Travel to The Hunt Continues.")
            }
            },
        {
            id = "turnin-3093-rune-inscribed-note",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 },
                { class = 7 }
            } },
            text = "Turn in Rune-Inscribed Note.",
            complete = QuestState(3093, "completed"),
            dependsOn = { "accept-3093-rune-inscribed-note" },
            route = {
                Point(1412, 0.4501, 0.7594, "Rune-Inscribed Note",
                    "Travel to Rune-Inscribed Note.")
            }
            },
        {
            id = "turnin-3094-verdant-note",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 }
            } },
            text = "Turn in Verdant Note.",
            complete = QuestState(3094, "completed"),
            dependsOn = { "accept-3094-verdant-note" },
            route = {
                Point(1412, 0.4509, 0.7593, "Verdant Note",
                    "Travel to Verdant Note.")
            }
            },
        {
            id = "turnin-753-a-humble-task",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A Humble Task.",
            complete = QuestState(753, "completed"),
            dependsOn = { "accept-753-a-humble-task" },
            route = {
                Point(1412, 0.4418, 0.7606, "A Humble Task",
                    "Travel to A Humble Task.")
            }
            },
        {
            id = "accept-755-rites-of-the-earthmother",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Rites of the Earthmother.",
            complete = QuestState(755, "activeOrCompleted"),
            route = {
                Point(1412, 0.4418, 0.7606, "Rites of the Earthmother",
                    "Travel to Rites of the Earthmother.")
            }
            },
        {
            id = "turnin-3091-simple-note",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 },
                { class = 1 }
            } },
            text = "Turn in Simple Note.",
            complete = QuestState(3091, "completed"),
            dependsOn = { "accept-3091-simple-note" },
            route = {
                Point(1412, 0.4401, 0.7613, "Simple Note",
                    "Travel to Simple Note.")
            }
            },
        {
            id = "turnin-3092-etched-note",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 }
            } },
            text = "Turn in Etched Note.",
            complete = QuestState(3092, "completed"),
            dependsOn = { "accept-3092-etched-note" },
            route = {
                Point(1412, 0.4426, 0.7569, "Etched Note",
                    "Travel to Etched Note.")
            }
            },
        {
            id = "turnin-755-rites-of-the-earthmother",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Rites of the Earthmother.",
            complete = QuestState(755, "completed"),
            dependsOn = { "accept-755-rites-of-the-earthmother" },
            route = {
                Point(1412, 0.4258, 0.9218, "Rites of the Earthmother",
                    "Travel to Rites of the Earthmother.")
            }
            },
        {
            id = "accept-757-rite-of-strength",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Rite of Strength.",
            complete = QuestState(757, "activeOrCompleted"),
            route = {
                Point(1412, 0.4258, 0.9218, "Rite of Strength",
                    "Travel to Rite of Strength.")
            }
            },
        {
            id = "turnin-750-the-hunt-continues",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Hunt Continues.",
            complete = QuestState(750, "completed"),
            dependsOn = { "accept-750-the-hunt-continues" },
            route = {
                Point(1412, 0.4488, 0.7707, "The Hunt Continues",
                    "Travel to The Hunt Continues.")
            }
            },
        {
            id = "accept-780-the-battleboars",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Battleboars.",
            complete = QuestState(780, "activeOrCompleted"),
            route = {
                Point(1412, 0.4488, 0.7707, "The Battleboars",
                    "Travel to The Battleboars.")
            }
            },
        {
            id = "accept-3376-break-sharptusk",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Break Sharptusk!.",
            complete = QuestState(3376, "activeOrCompleted"),
            route = {
                Point(1412, 0.4494, 0.7704, "Break Sharptusk!",
                    "Travel to Break Sharptusk!."),
            },
        },
        {
            id = "accept-1519-call-of-earth",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Earth.",
            complete = QuestState(1519, "activeOrCompleted"),
            route = {
                Point(1412, 0.4473, 0.7618, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "objective-780-1-battleboar",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Battleboar.",
            complete = QuestObjective(780, 1, "Battleboar"),
            dependsOn = { "accept-780-the-battleboars" },
            route = {
                Point(1412, 0.5240, 0.7900, "Battleboar",
                    "Travel to Battleboar.")
            }
            },
        {
            id = "objective-780-2-battleboar-flank",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Collect 8 Battleboar Flank.",
            complete = QuestObjective(780, 2, "Battleboar Flank"),
            dependsOn = { "accept-780-the-battleboars" },
            route = {
                Point(1412, 0.5240, 0.7900, "Battleboar Flank",
                    "Travel to Battleboar Flank.")
            }
            },
        {
            id = "objective-3376-1-chief-sharptusk-thornmantle",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Kill Chief Sharptusk Thornmantle.",
            complete = QuestObjective(3376, 1, "Chief Sharptusk Thornmantle"),
            dependsOn = { "accept-3376-break-sharptusk" },
            route = {
                Point(1412, 0.5815, 0.8502, "Chief Sharptusk Thornmantle",
                    "Travel to Chief Sharptusk Thornmantle."),
            },
        },
        {
            id = "accept-781-attack-on-camp-narache",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Attack on Camp Narache.",
            complete = QuestState(781, "activeOrCompleted"),
            route = {
                Point(1412, 0.6324, 0.8270, "Attack on Camp Narache",
                    "Travel to Attack on Camp Narache.")
            }
            },
        {
            id = "turnin-780-the-battleboars",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Battleboars.",
            complete = QuestState(780, "completed"),
            dependsOn = { "accept-780-the-battleboars", "objective-780-1-battleboar", "objective-780-2-battleboar-flank" },
            route = {
                Point(1412, 0.4487, 0.7708, "The Battleboars",
                    "Travel to The Battleboars.")
            }
            },
        {
            id = "turnin-3376-break-sharptusk",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Break Sharptusk!.",
            complete = QuestState(3376, "completed"),
            dependsOn = { "accept-3376-break-sharptusk", "objective-3376-1-chief-sharptusk-thornmantle" },
            route = {
                Point(1412, 0.4494, 0.7704, "Break Sharptusk!",
                    "Travel to Break Sharptusk!."),
            },
        },
        {
            id = "turnin-781-attack-on-camp-narache",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Attack on Camp Narache.",
            complete = QuestState(781, "completed"),
            dependsOn = { "accept-781-attack-on-camp-narache" },
            route = {
                Point(1412, 0.4418, 0.7606, "Attack on Camp Narache",
                    "Travel to Attack on Camp Narache.")
            }
            },
        {
            id = "turnin-757-rite-of-strength",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Rite of Strength.",
            complete = QuestState(757, "completed"),
            dependsOn = { "accept-757-rite-of-strength" },
            route = {
                Point(1412, 0.4418, 0.7606, "Rite of Strength",
                    "Travel to Rite of Strength.")
            }
            },
        {
            id = "accept-763-rites-of-the-earthmother",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Rites of the Earthmother.",
            complete = QuestState(763, "activeOrCompleted"),
            route = {
                Point(1412, 0.4418, 0.7606, "Rites of the Earthmother",
                    "Travel to Rites of the Earthmother.")
            }
            },
        {
            id = "turnin-1519-call-of-earth",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Earth.",
            complete = QuestState(1519, "completed"),
            dependsOn = { "accept-1519-call-of-earth" },
            route = {
                Point(1412, 0.4473, 0.7619, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "accept-1520-call-of-earth",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Earth.",
            complete = QuestState(1520, "activeOrCompleted"),
            route = {
                Point(1412, 0.4473, 0.7619, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "turnin-1520-call-of-earth",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Earth.",
            complete = QuestState(1520, "completed"),
            dependsOn = { "accept-1520-call-of-earth" },
            route = {
                Point(1412, 0.5383, 0.8058, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "accept-1521-call-of-earth",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Earth.",
            complete = QuestState(1521, "activeOrCompleted"),
            route = {
                Point(1412, 0.5383, 0.8058, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "turnin-1521-call-of-earth",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Earth.",
            complete = QuestState(1521, "completed"),
            dependsOn = { "accept-1521-call-of-earth" },
            route = {
                Point(1412, 0.4473, 0.7619, "Call of Earth",
                    "Travel to Call of Earth."),
            },
        },
        {
            id = "accept-1656-a-task-unfinished",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A Task Unfinished.",
            complete = QuestState(1656, "activeOrCompleted"),
            route = {
                Point(1412, 0.3852, 0.8156, "A Task Unfinished",
                    "Travel to A Task Unfinished.")
            }
            },
        {
            id = "accept-766-mazzranache",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept Mazzranache.",
            complete = QuestState(766, "activeOrCompleted"),
            route = {
                Point(1412, 0.4699, 0.5707, "Mazzranache",
                    "Travel to Mazzranache."),
            },
        },
        {
            id = "accept-761-swoop-hunting",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Swoop Hunting.",
            complete = QuestState(761, "activeOrCompleted"),
            route = {
                Point(1412, 0.4871, 0.5933, "Swoop Hunting",
                    "Travel to Swoop Hunting."),
            },
        },
        {
            id = "accept-748-poison-water",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Accept Poison Water.",
            complete = QuestState(748, "activeOrCompleted"),
            route = {
                Point(1412, 0.4853, 0.6040, "Poison Water",
                    "Travel to Poison Water."),
            },
        },
        {
            id = "accept-743-dangers-of-the-windfury",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept Dangers of the Windfury.",
            complete = QuestState(743, "activeOrCompleted"),
            route = {
                Point(1412, 0.4736, 0.6202, "Dangers of the Windfury",
                    "Travel to Dangers of the Windfury."),
            },
        },
        {
            id = "turnin-763-rites-of-the-earthmother",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Rites of the Earthmother.",
            complete = QuestState(763, "completed"),
            dependsOn = { "accept-763-rites-of-the-earthmother" },
            route = {
                Point(1412, 0.4752, 0.6017, "Rites of the Earthmother",
                    "Travel to Rites of the Earthmother.")
            }
            },
        {
            id = "accept-745-sharing-the-land",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Sharing the Land.",
            complete = QuestState(745, "activeOrCompleted"),
            route = {
                Point(1412, 0.4752, 0.6017, "Sharing the Land",
                    "Travel to Sharing the Land.")
            }
            },
        {
            id = "accept-767-rite-of-vision",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Rite of Vision.",
            complete = QuestState(767, "activeOrCompleted"),
            route = {
                Point(1412, 0.4752, 0.6017, "Rite of Vision",
                    "Travel to Rite of Vision."),
            },
        },
        {
            id = "accept-746-dwarven-digging",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Accept Dwarven Digging.",
            complete = QuestState(746, "activeOrCompleted"),
            route = {
                Point(1412, 0.4752, 0.6017, "Dwarven Digging",
                    "Travel to Dwarven Digging."),
            },
        },
        {
            id = "turnin-1656-a-task-unfinished",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A Task Unfinished.",
            complete = QuestState(1656, "completed"),
            dependsOn = { "accept-1656-a-task-unfinished" },
            route = {
                Point(1412, 0.4662, 0.6109, "A Task Unfinished",
                    "Travel to A Task Unfinished.")
            }
            },
        {
            id = "turnin-767-rite-of-vision",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rite of Vision.",
            complete = QuestState(767, "completed"),
            dependsOn = { "accept-767-rite-of-vision" },
            route = {
                Point(1412, 0.4776, 0.5754, "Rite of Vision",
                    "Travel to Rite of Vision."),
            },
        },
        {
            id = "accept-771-rite-of-vision",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Rite of Vision.",
            complete = QuestState(771, "activeOrCompleted"),
            route = {
                Point(1412, 0.4776, 0.5754, "Rite of Vision",
                    "Travel to Rite of Vision."),
            },
        },
        {
            id = "objective-771-2-ambercorn",
            kind = "objective",
            priority = 500,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Collect 2 Ambercorn.",
            complete = QuestObjective(771, 2, "Ambercorn"),
            dependsOn = { "accept-771-rite-of-vision" },
            route = {
                Point(1412, 0.3890, 0.5980, "Ambercorn",
                    "Travel to Ambercorn."),
            },
        },
        {
            id = "turnin-748-poison-water",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Turn in Poison Water.",
            complete = QuestState(748, "completed"),
            dependsOn = { "accept-748-poison-water" },
            route = {
                Point(1412, 0.4853, 0.6039, "Poison Water",
                    "Travel to Poison Water."),
            },
        },
        {
            id = "accept-754-winterhoof-cleansing",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Accept Winterhoof Cleansing.",
            complete = QuestState(754, "activeOrCompleted"),
            route = {
                Point(1412, 0.4853, 0.6039, "Winterhoof Cleansing",
                    "Travel to Winterhoof Cleansing."),
            },
        },
        {
            id = "turnin-761-swoop-hunting",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Swoop Hunting.",
            complete = QuestState(761, "completed"),
            dependsOn = { "accept-761-swoop-hunting" },
            route = {
                Point(1412, 0.4871, 0.5933, "Swoop Hunting",
                    "Travel to Swoop Hunting."),
            },
        },
        {
            id = "objective-771-1-well-stone",
            kind = "objective",
            priority = 540,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Collect 2 Well Stone.",
            complete = QuestObjective(771, 1, "Well Stone"),
            dependsOn = { "accept-771-rite-of-vision" },
            route = {
                Point(1412, 0.5350, 0.6620, "Well Stone",
                    "Travel to Well Stone."),
            },
        },
        {
            id = "objective-754-1-winterhoof-cleansing-totem",
            kind = "objective",
            priority = 550,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Use Winterhoof Cleansing Totem.",
            complete = QuestObjective(754, 1, "Winterhoof Cleansing Totem"),
            dependsOn = { "accept-754-winterhoof-cleansing" },
            route = {
                Point(1412, 0.5364, 0.6615, "Winterhoof Cleansing Totem",
                    "Travel to Winterhoof Cleansing Totem."),
            },
        },
        {
            id = "objective-745-3-palemane-poacher",
            kind = "objective",
            priority = 560,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill 5 Palemane Poacher.",
            complete = QuestObjective(745, 3, "Palemane Poacher"),
            dependsOn = { "accept-745-sharing-the-land" },
            route = {
                Point(1412, 0.5240, 0.7180, "Palemane Poacher",
                    "Travel to Palemane Poacher.")
            }
            },
        {
            id = "turnin-754-winterhoof-cleansing",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Turn in Winterhoof Cleansing.",
            complete = QuestState(754, "completed"),
            dependsOn = { "accept-754-winterhoof-cleansing", "objective-754-1-winterhoof-cleansing-totem" },
            route = {
                Point(1412, 0.4853, 0.6039, "Winterhoof Cleansing",
                    "Travel to Winterhoof Cleansing."),
            },
        },
        {
            id = "accept-756-thunderhorn-totem",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Accept Thunderhorn Totem.",
            complete = QuestState(756, "activeOrCompleted"),
            route = {
                Point(1412, 0.4853, 0.6039, "Thunderhorn Totem",
                    "Travel to Thunderhorn Totem."),
            },
        },
        {
            id = "turnin-745-sharing-the-land",
            kind = "turnin",
            priority = 590,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Sharing the Land.",
            complete = QuestState(745, "completed"),
            dependsOn = { "accept-745-sharing-the-land", "objective-745-3-palemane-poacher" },
            route = {
                Point(1412, 0.4751, 0.6016, "Sharing the Land",
                    "Travel to Sharing the Land.")
            }
            },
        {
            id = "turnin-771-rite-of-vision",
            kind = "turnin",
            priority = 600,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rite of Vision.",
            complete = QuestState(771, "completed"),
            dependsOn = { "accept-771-rite-of-vision", "objective-771-2-ambercorn", "objective-771-1-well-stone" },
            route = {
                Point(1412, 0.4776, 0.5754, "Rite of Vision",
                    "Travel to Rite of Vision."),
            },
        },
        {
            id = "accept-772-rite-of-vision",
            kind = "accept",
            priority = 610,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Rite of Vision.",
            complete = QuestState(772, "activeOrCompleted"),
            route = {
                Point(1412, 0.4776, 0.5754, "Rite of Vision",
                    "Travel to Rite of Vision."),
            },
        },
        {
            id = "accept-749-the-ravaged-caravan",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept The Ravaged Caravan from Morin Cloudstalker east of Bloodhoof Village.",
            complete = QuestState(749, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-749-the-ravaged-caravan",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Ravaged Caravan.",
            complete = QuestState(749, "completed"),
            dependsOn = { "accept-749-the-ravaged-caravan" },
            route = {
                Point(1412, 0.5374, 0.4818, "The Ravaged Caravan",
                    "Travel to The Ravaged Caravan."),
            },
        },
        {
            id = "accept-751-the-ravaged-caravan",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept The Ravaged Caravan.",
            complete = QuestState(751, "activeOrCompleted"),
            route = {
                Point(1412, 0.5374, 0.4818, "The Ravaged Caravan",
                    "Travel to The Ravaged Caravan."),
            },
        },
        {
            id = "turnin-766-mazzranache",
            kind = "turnin",
            priority = 650,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in Mazzranache.",
            complete = QuestState(766, "completed"),
            dependsOn = { "accept-766-mazzranache" },
            route = {
                Point(1412, 0.4698, 0.5707, "Mazzranache",
                    "Travel to Mazzranache."),
            },
        },
        {
            id = "turnin-756-thunderhorn-totem",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Turn in Thunderhorn Totem.",
            complete = QuestState(756, "completed"),
            dependsOn = { "accept-756-thunderhorn-totem" },
            route = {
                Point(1412, 0.4853, 0.6040, "Thunderhorn Totem",
                    "Travel to Thunderhorn Totem."),
            },
        },
        {
            id = "accept-758-thunderhorn-cleansing",
            kind = "accept",
            priority = 670,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Accept Thunderhorn Cleansing.",
            complete = QuestState(758, "activeOrCompleted"),
            route = {
                Point(1412, 0.4853, 0.6040, "Thunderhorn Cleansing",
                    "Travel to Thunderhorn Cleansing."),
            },
        },
        {
            id = "objective-758-1-thunderhorn-cleansing-totem",
            kind = "objective",
            priority = 680,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Use Thunderhorn Cleansing Totem.",
            complete = QuestObjective(758, 1, "Thunderhorn Cleansing Totem"),
            dependsOn = { "accept-758-thunderhorn-cleansing" },
            route = {
                Point(1412, 0.4459, 0.4543, "Thunderhorn Cleansing Totem",
                    "Travel to Thunderhorn Cleansing Totem."),
            },
        },
        {
            id = "objective-746-1-bael-dun-digger",
            kind = "objective",
            priority = 690,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill Bael'dun Digger.",
            complete = QuestObjective(746, 1, "Bael'dun Digger"),
            dependsOn = { "accept-746-dwarven-digging" },
            route = {
                Point(1412, 0.3440, 0.4720, "Bael'dun Digger",
                    "Travel to Bael'dun Digger."),
            },
        },
        {
            id = "objective-743-1-windfury-harpy",
            kind = "objective",
            priority = 700,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Kill Windfury Harpy.",
            complete = QuestObjective(743, 1, "Windfury Harpy"),
            dependsOn = { "accept-743-dangers-of-the-windfury" },
            route = {
                Point(1412, 0.3460, 0.4140, "Windfury Harpy",
                    "Travel to Windfury Harpy."),
            },
        },
        {
            id = "turnin-772-rite-of-vision",
            kind = "turnin",
            priority = 710,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rite of Vision.",
            complete = QuestState(772, "completed"),
            dependsOn = { "accept-772-rite-of-vision" },
            route = {
                Point(1412, 0.3272, 0.3609, "Rite of Vision",
                    "Travel to Rite of Vision."),
            },
        },
        {
            id = "accept-773-rite-of-wisdom",
            kind = "accept",
            priority = 720,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Rite of Wisdom.",
            complete = QuestState(773, "activeOrCompleted"),
            route = {
                Point(1412, 0.3272, 0.3609, "Rite of Wisdom",
                    "Travel to Rite of Wisdom."),
            },
        },
        {
            id = "objective-746-1-prospector-s-pick",
            kind = "objective",
            priority = 730,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Use Prospector's Pick.",
            complete = QuestObjective(746, 1, "Prospector's Pick"),
            dependsOn = { "accept-746-dwarven-digging" },
            route = {
                Point(1456, 0.3210, 0.6713, "Prospector's Pick",
                    "Travel to Prospector's Pick."),
            },
        },
        {
            id = "accept-833-a-sacred-burial",
            kind = "accept",
            priority = 740,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Accept A Sacred Burial.",
            complete = QuestState(833, "activeOrCompleted"),
            route = {
                Point(1456, 0.5120, 0.3151, "A Sacred Burial",
                    "Travel to A Sacred Burial."),
            },
        },
        {
            id = "turnin-773-rite-of-wisdom",
            kind = "turnin",
            priority = 750,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rite of Wisdom.",
            complete = QuestState(773, "completed"),
            dependsOn = { "accept-773-rite-of-wisdom" },
            route = {
                Point(1412, 0.6145, 0.2102, "Rite of Wisdom",
                    "Travel to Rite of Wisdom."),
            },
        },
        {
            id = "accept-775-journey-into-thunder-bluff",
            kind = "accept",
            priority = 760,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Journey into Thunder Bluff.",
            complete = QuestState(775, "activeOrCompleted"),
            route = {
                Point(1412, 0.6145, 0.2102, "Journey into Thunder Bluff",
                    "Travel to Journey into Thunder Bluff."),
            },
        },
        {
            id = "turnin-833-a-sacred-burial",
            kind = "turnin",
            priority = 770,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Sacred Burial.",
            complete = QuestState(833, "completed"),
            dependsOn = { "accept-833-a-sacred-burial" },
            route = {
                Point(1412, 0.5986, 0.2563, "A Sacred Burial",
                    "Travel to A Sacred Burial."),
            },
        },
        {
            id = "turnin-743-dangers-of-the-windfury",
            kind = "turnin",
            priority = 780,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in Dangers of the Windfury.",
            complete = QuestState(743, "completed"),
            dependsOn = { "accept-743-dangers-of-the-windfury", "objective-743-1-windfury-harpy" },
            route = {
                Point(1412, 0.4735, 0.6202, "Dangers of the Windfury",
                    "Travel to Dangers of the Windfury."),
            },
        },
        {
            id = "turnin-746-dwarven-digging",
            kind = "turnin",
            priority = 790,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Turn in Dwarven Digging.",
            complete = QuestState(746, "completed"),
            dependsOn = { "accept-746-dwarven-digging", "objective-746-1-bael-dun-digger", "objective-746-1-prospector-s-pick" },
            route = {
                Point(1412, 0.4751, 0.6017, "Dwarven Digging",
                    "Travel to Dwarven Digging."),
            },
        },
        {
            id = "turnin-758-thunderhorn-cleansing",
            kind = "turnin",
            priority = 800,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Turn in Thunderhorn Cleansing.",
            complete = QuestState(758, "completed"),
            dependsOn = { "accept-758-thunderhorn-cleansing", "objective-758-1-thunderhorn-cleansing-totem" },
            route = {
                Point(1412, 0.4853, 0.6040, "Thunderhorn Cleansing",
                    "Travel to Thunderhorn Cleansing."),
            },
        },
        {
            id = "accept-6061-taming-the-beast",
            kind = "accept",
            priority = 810,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6061, "activeOrCompleted"),
            route = {
                Point(1412, 0.4782, 0.5569, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "objective-6061-1-taming-rod",
            kind = "objective",
            priority = 820,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6061, 1, "Taming Rod"),
            dependsOn = { "accept-6061-taming-the-beast" },
            route = {
                Point(1412, 0.4180, 0.5440, "Taming Rod",
                    "Travel to Taming Rod."),
            },
        },
        {
            id = "turnin-6061-taming-the-beast",
            kind = "turnin",
            priority = 830,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6061, "completed"),
            dependsOn = { "accept-6061-taming-the-beast", "objective-6061-1-taming-rod" },
            route = {
                Point(1412, 0.4782, 0.5569, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "accept-6087-taming-the-beast",
            kind = "accept",
            priority = 840,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6087, "activeOrCompleted"),
            route = {
                Point(1412, 0.4782, 0.5569, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "objective-6087-1-taming-rod",
            kind = "objective",
            priority = 850,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6087, 1, "Taming Rod"),
            dependsOn = { "accept-6087-taming-the-beast" },
            route = {
                Point(1412, 0.4780, 0.5060, "Taming Rod",
                    "Travel to Taming Rod."),
            },
        },
        {
            id = "turnin-6087-taming-the-beast",
            kind = "turnin",
            priority = 860,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6087, "completed"),
            dependsOn = { "accept-6087-taming-the-beast", "objective-6087-1-taming-rod" },
            route = {
                Point(1412, 0.4782, 0.5569, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "accept-6088-taming-the-beast",
            kind = "accept",
            priority = 870,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6088, "activeOrCompleted"),
            route = {
                Point(1412, 0.4782, 0.5569, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "objective-6088-1-taming-rod",
            kind = "objective",
            priority = 880,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6088, 1, "Taming Rod"),
            dependsOn = { "accept-6088-taming-the-beast" },
            route = {
                Point(1412, 0.4520, 0.5000, "Taming Rod",
                    "Travel to Taming Rod."),
            },
        },
        {
            id = "turnin-6088-taming-the-beast",
            kind = "turnin",
            priority = 890,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6088, "completed"),
            dependsOn = { "accept-6088-taming-the-beast", "objective-6088-1-taming-rod" },
            route = {
                Point(1412, 0.4782, 0.5569, "Taming the Beast",
                    "Travel to Taming the Beast."),
            },
        },
        {
            id = "accept-6089-training-the-beast",
            kind = "accept",
            priority = 900,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Accept Training the Beast.",
            complete = QuestState(6089, "activeOrCompleted"),
            route = {
                Point(1412, 0.4782, 0.5569, "Training the Beast",
                    "Travel to Training the Beast."),
            },
        },
        {
            id = "accept-2984-call-of-fire",
            kind = "accept",
            priority = 910,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Fire.",
            complete = QuestState(2984, "activeOrCompleted"),
            route = {
                Point(1412, 0.4839, 0.5916, "Call of Fire",
                    "Travel to Call of Fire."),
            },
        },
        {
            id = "accept-5928-heeding-the-call",
            kind = "accept",
            priority = 920,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 }
            } },
            text = "Accept Heeding the Call.",
            complete = QuestState(5928, "activeOrCompleted"),
            route = {
                Point(1412, 0.4848, 0.5964, "Heeding the Call",
                    "Travel to Heeding the Call.")
            }
            },
        {
            id = "turnin-751-the-ravaged-caravan",
            kind = "turnin",
            priority = 930,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Ravaged Caravan.",
            complete = QuestState(751, "completed"),
            dependsOn = { "accept-751-the-ravaged-caravan" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-854-journey-to-the-crossroads",
            kind = "accept",
            priority = 940,
            conditions = { all = {
                { level = { min = 9 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Accept Journey to the Crossroads.",
            complete = QuestState(854, "activeOrCompleted"),
            route = {
                Point(1413, 0.4488, 0.5861, "Journey to the Crossroads",
                    "Travel to Journey to the Crossroads."),
            },
        },
        {
            id = "turnin-854-journey-to-the-crossroads",
            kind = "turnin",
            priority = 950,
            conditions = { all = {
                { level = { min = 9 } },
                { faction = "Horde" },
                { race = 6 },
            } },
            text = "Turn in Journey to the Crossroads.",
            complete = QuestState(854, "completed"),
            dependsOn = { "accept-854-journey-to-the-crossroads" },
            route = {
                Point(1413, 0.5150, 0.3087, "Journey to the Crossroads",
                    "Travel to Journey to the Crossroads."),
            },
        },
        {
            id = "accept-6361-a-bundle-of-hides",
            kind = "accept",
            priority = 960,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 }
            } },
            text = "Accept A Bundle of Hides.",
            complete = QuestState(6361, "activeOrCompleted"),
            route = {
                Point(1413, 0.5121, 0.2905, "A Bundle of Hides",
                    "Travel to A Bundle of Hides.")
            }
            },
        {
            id = "turnin-6361-a-bundle-of-hides",
            kind = "turnin",
            priority = 970,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 }
            } },
            text = "Turn in A Bundle of Hides.",
            complete = QuestState(6361, "completed"),
            dependsOn = { "accept-6361-a-bundle-of-hides" },
            route = {
                Point(1413, 0.5150, 0.3034, "A Bundle of Hides",
                    "Travel to A Bundle of Hides.")
            }
            },
        {
            id = "accept-6362-ride-to-thunder-bluff",
            kind = "accept",
            priority = 980,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 }
            } },
            text = "Accept Ride to Thunder Bluff.",
            complete = QuestState(6362, "activeOrCompleted"),
            route = {
                Point(1413, 0.5150, 0.3034, "Ride to Thunder Bluff",
                    "Travel to Ride to Thunder Bluff.")
            }
            },
        {
            id = "turnin-6362-ride-to-thunder-bluff",
            kind = "turnin",
            priority = 990,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 }
            } },
            text = "Turn in Ride to Thunder Bluff.",
            complete = QuestState(6362, "completed"),
            dependsOn = { "accept-6362-ride-to-thunder-bluff" },
            route = {
                Point(1456, 0.4577, 0.5584, "Ride to Thunder Bluff",
                    "Travel to Ride to Thunder Bluff.")
            }
            },
        {
            id = "accept-6363-tal-the-wind-rider-master",
            kind = "accept",
            priority = 1000,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 }
            } },
            text = "Accept Tal the Wind Rider Master.",
            complete = QuestState(6363, "activeOrCompleted"),
            route = {
                Point(1456, 0.4577, 0.5584, "Tal the Wind Rider Master",
                    "Travel to Tal the Wind Rider Master.")
            }
            },
        {
            id = "turnin-6089-training-the-beast",
            kind = "turnin",
            priority = 1010,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 3 },
            } },
            text = "Turn in Training the Beast.",
            complete = QuestState(6089, "completed"),
            dependsOn = { "accept-6089-training-the-beast" },
            route = {
                Point(1456, 0.5731, 0.8976, "Training the Beast",
                    "Travel to Training the Beast."),
            },
        },
        {
            id = "turnin-775-journey-into-thunder-bluff",
            kind = "turnin",
            priority = 1020,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Journey into Thunder Bluff.",
            complete = QuestState(775, "completed"),
            dependsOn = { "accept-775-journey-into-thunder-bluff" },
            route = {
                Point(1456, 0.6030, 0.5168, "Journey into Thunder Bluff",
                    "Travel to Journey into Thunder Bluff."),
            },
        },
        {
            id = "turnin-5928-heeding-the-call",
            kind = "turnin",
            priority = 1030,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 }
            } },
            text = "Turn in Heeding the Call.",
            complete = QuestState(5928, "completed"),
            dependsOn = { "accept-5928-heeding-the-call" },
            route = {
                Point(1456, 0.7646, 0.2723, "Heeding the Call",
                    "Travel to Heeding the Call.")
            }
            },
        {
            id = "accept-5922-moonglade",
            kind = "accept",
            priority = 1040,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 },
            } },
            text = "Accept Moonglade.",
            complete = QuestState(5922, "activeOrCompleted"),
            route = {
                Point(1456, 0.7646, 0.2723, "Moonglade",
                    "Travel to Moonglade."),
            },
        },
        {
            id = "accept-886-the-barrens-oases",
            kind = "accept",
            priority = 1050,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { class = 11 },
            } },
            text = "Accept The Barrens Oases.",
            complete = QuestState(886, "activeOrCompleted"),
            route = {
                Point(1456, 0.7862, 0.2856, "The Barrens Oases",
                    "Travel to The Barrens Oases."),
            },
        },
        {
            id = "turnin-5922-moonglade",
            kind = "turnin",
            priority = 1060,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 },
            } },
            text = "Turn in Moonglade.",
            complete = QuestState(5922, "completed"),
            dependsOn = { "accept-5922-moonglade" },
            route = {
                Point(1450, 0.5621, 0.3064, "Moonglade",
                    "Travel to Moonglade."),
            },
        },
        {
            id = "accept-5930-great-bear-spirit",
            kind = "accept",
            priority = 1070,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 },
            } },
            text = "Accept Great Bear Spirit.",
            complete = QuestState(5930, "activeOrCompleted"),
            route = {
                Point(1450, 0.5621, 0.3064, "Great Bear Spirit",
                    "Travel to Great Bear Spirit."),
            },
        },
        {
            id = "turnin-5930-great-bear-spirit",
            kind = "turnin",
            priority = 1080,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 },
            } },
            text = "Turn in Great Bear Spirit.",
            complete = QuestState(5930, "completed"),
            dependsOn = { "accept-5930-great-bear-spirit" },
            route = {
                Point(1450, 0.5621, 0.3064, "Great Bear Spirit",
                    "Travel to Great Bear Spirit."),
            },
        },
        {
            id = "accept-5932-back-to-thunder-bluff",
            kind = "accept",
            priority = 1090,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 },
            } },
            text = "Accept Back to Thunder Bluff.",
            complete = QuestState(5932, "activeOrCompleted"),
            route = {
                Point(1450, 0.5621, 0.3064, "Back to Thunder Bluff",
                    "Travel to Back to Thunder Bluff."),
            },
        },
        {
            id = "turnin-5932-back-to-thunder-bluff",
            kind = "turnin",
            priority = 1100,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 },
            } },
            text = "Turn in Back to Thunder Bluff.",
            complete = QuestState(5932, "completed"),
            dependsOn = { "accept-5932-back-to-thunder-bluff" },
            route = {
                Point(1456, 0.7646, 0.2723, "Back to Thunder Bluff",
                    "Travel to Back to Thunder Bluff."),
            },
        },
        {
            id = "accept-6002-body-and-heart",
            kind = "accept",
            priority = 1110,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 },
            } },
            text = "Accept Body and Heart.",
            complete = QuestState(6002, "activeOrCompleted"),
            route = {
                Point(1456, 0.7646, 0.2723, "Body and Heart",
                    "Travel to Body and Heart."),
            },
        },
        {
            id = "turnin-6363-tal-the-wind-rider-master",
            kind = "turnin",
            priority = 1120,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 }
            } },
            text = "Turn in Tal the Wind Rider Master.",
            complete = QuestState(6363, "completed"),
            dependsOn = { "accept-6363-tal-the-wind-rider-master" },
            route = {
                Point(1456, 0.4700, 0.4983, "Tal the Wind Rider Master",
                    "Travel to Tal the Wind Rider Master.")
            }
            },
        {
            id = "accept-6364-return-to-jahan",
            kind = "accept",
            priority = 1130,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 }
            } },
            text = "Accept Return to Jahan.",
            complete = QuestState(6364, "activeOrCompleted"),
            route = {
                Point(1456, 0.4700, 0.4983, "Return to Jahan",
                    "Travel to Jahan.")
            }
            },
        {
            id = "objective-6002-1-cenarion-lunardust",
            kind = "objective",
            priority = 1140,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 },
            } },
            text = "Use Cenarion Lunardust.",
            complete = QuestObjective(6002, 1, "Cenarion Lunardust"),
            dependsOn = { "accept-6002-body-and-heart" },
            route = {
                Point(1413, 0.4200, 0.6086, "Cenarion Lunardust",
                    "Travel to Cenarion Lunardust."),
            },
        },
        {
            id = "turnin-6002-body-and-heart",
            kind = "turnin",
            priority = 1150,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { race = 6 },
                { class = 11 },
            } },
            text = "Turn in Body and Heart.",
            complete = QuestState(6002, "completed"),
            dependsOn = { "accept-6002-body-and-heart", "objective-6002-1-cenarion-lunardust" },
            route = {
                Point(1456, 0.7646, 0.2723, "Body and Heart",
                    "Travel to Body and Heart."),
            },
        },
        {
            id = "turnin-886-the-barrens-oases",
            kind = "turnin",
            priority = 1160,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { class = 11 },
            } },
            text = "Turn in The Barrens Oases.",
            complete = QuestState(886, "completed"),
            dependsOn = { "accept-886-the-barrens-oases" },
            route = {
                Point(1413, 0.5226, 0.3193, "The Barrens Oases",
                    "Travel to The Barrens Oases."),
            },
        },
        {
            id = "turnin-6364-return-to-jahan",
            kind = "turnin",
            priority = 1170,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { race = 6 }
            } },
            text = "Turn in Return to Jahan.",
            complete = QuestState(6364, "completed"),
            dependsOn = { "accept-6364-return-to-jahan" },
            route = {
                Point(1413, 0.5121, 0.2905, "Return to Jahan",
                    "Travel to Jahan.")
            }
            },
        {
            id = "turnin-2984-call-of-fire",
            kind = "turnin",
            priority = 1180,
            conditions = { all = {
                { level = { min = 10 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Fire.",
            complete = QuestState(2984, "completed"),
            dependsOn = { "accept-2984-call-of-fire" },
            route = {
                Point(1413, 0.5603, 0.1989, "Call of Fire",
                    "Travel to Call of Fire."),
            },
        },
        {
            id = "accept-1524-call-of-fire",
            kind = "accept",
            priority = 1190,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Accept Call of Fire.",
            complete = QuestState(1524, "activeOrCompleted"),
            route = {
                Point(1413, 0.5603, 0.1989, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "turnin-1524-call-of-fire",
            kind = "turnin",
            priority = 1200,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Turn in Call of Fire.",
            complete = QuestState(1524, "completed"),
            dependsOn = { "accept-1524-call-of-fire" },
            route = {
                Point(1411, 0.3659, 0.5707, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "accept-1525-call-of-fire",
            kind = "accept",
            priority = 1210,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Accept Call of Fire.",
            complete = QuestState(1525, "activeOrCompleted"),
            route = {
                Point(1411, 0.3659, 0.5707, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "objective-1525-1-razormane-thornweaver",
            kind = "objective",
            priority = 1220,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Kill Razormane Thornweaver.",
            complete = QuestObjective(1525, 1, "Razormane Thornweaver"),
            dependsOn = { "accept-1525-call-of-fire" },
            route = {
                Point(1413, 0.5560, 0.2540, "Razormane Thornweaver",
                    "Travel to Razormane Thornweaver.")
            }
            },
        {
            id = "accept-791-carry-your-weight",
            kind = "accept",
            priority = 1230,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Carry Your Weight.",
            complete = QuestState(791, "activeOrCompleted"),
            route = {
                Point(1411, 0.4989, 0.4038, "Carry Your Weight",
                    "Travel to Carry Your Weight."),
            },
        },
        {
            id = "accept-815-break-a-few-eggs",
            kind = "accept",
            priority = 1240,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Accept Break a Few Eggs.",
            complete = QuestState(815, "activeOrCompleted"),
            route = {
                Point(1411, 0.5111, 0.4245, "Break a Few Eggs",
                    "Travel to Break a Few Eggs."),
            },
        },
        {
            id = "accept-784-vanquish-the-betrayers",
            kind = "accept",
            priority = 1250,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Vanquish the Betrayers.",
            complete = QuestState(784, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "Vanquish the Betrayers",
                    "Travel to Vanquish the Betrayers."),
            },
        },
        {
            id = "accept-837-encroachment",
            kind = "accept",
            priority = 1260,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Accept Encroachment.",
            complete = QuestState(837, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "Encroachment",
                    "Travel to Encroachment."),
            },
        },
        {
            id = "objective-784-3-lieutenant-benedict",
            kind = "objective",
            priority = 1270,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Kill Lieutenant Benedict.",
            complete = QuestObjective(784, 3, "Lieutenant Benedict"),
            dependsOn = { "accept-784-vanquish-the-betrayers" },
            route = {
                Point(1411, 0.5280, 0.2860, "Lieutenant Benedict",
                    "Travel to Lieutenant Benedict."),
            },
        },
        {
            id = "accept-830-the-admiral-s-orders",
            kind = "accept",
            priority = 1280,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Use the Admiral's Orders to accept The Admiral's Orders.",
            complete = QuestState(830, "activeOrCompleted"),
            route = nil
            },
        {
            id = "accept-2161-a-peon-s-burden",
            kind = "accept",
            priority = 1290,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A Peon's Burden.",
            complete = QuestState(2161, "activeOrCompleted"),
            route = {
                Point(1411, 0.5206, 0.6831, "A Peon's Burden",
                    "Travel to A Peon's Burden.")
            }
            },
        {
            id = "accept-817-practical-prey",
            kind = "accept",
            priority = 1300,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept Practical Prey.",
            complete = QuestState(817, "activeOrCompleted"),
            route = {
                Point(1411, 0.5596, 0.7392, "Practical Prey",
                    "Travel to Practical Prey."),
            },
        },
        {
            id = "accept-818-a-solvent-spirit",
            kind = "accept",
            priority = 1310,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept A Solvent Spirit.",
            complete = QuestState(818, "activeOrCompleted"),
            route = {
                Point(1411, 0.5594, 0.7439, "A Solvent Spirit",
                    "Travel to A Solvent Spirit."),
            },
        },
        {
            id = "accept-808-minshina-s-skull",
            kind = "accept",
            priority = 1320,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Minshina's Skull.",
            complete = QuestState(808, "activeOrCompleted"),
            route = {
                Point(1411, 0.5595, 0.7472, "Minshina's Skull",
                    "Travel to Minshina's Skull."),
            },
        },
        {
            id = "accept-826-zalazane",
            kind = "accept",
            priority = 1330,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Zalazane.",
            complete = QuestState(826, "activeOrCompleted"),
            route = {
                Point(1411, 0.5595, 0.7472, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "accept-823-report-to-orgnil",
            kind = "accept",
            priority = 1340,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Report to Orgnil.",
            complete = QuestState(823, "activeOrCompleted"),
            route = {
                Point(1411, 0.5595, 0.7472, "Report to Orgnil",
                    "Travel to Report to Orgnil."),
            },
        },
        {
            id = "objective-826-3-zalazane",
            kind = "objective",
            priority = 1350,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Kill Zalazane.",
            complete = QuestObjective(826, 3, "Zalazane"),
            dependsOn = { "accept-826-zalazane" },
            route = {
                Point(1411, 0.6740, 0.8640, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "turnin-808-minshina-s-skull",
            kind = "turnin",
            priority = 1360,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Minshina's Skull.",
            complete = QuestState(808, "completed"),
            dependsOn = { "accept-808-minshina-s-skull" },
            route = {
                Point(1411, 0.5595, 0.7472, "Minshina's Skull",
                    "Travel to Minshina's Skull."),
            },
        },
        {
            id = "turnin-826-zalazane",
            kind = "turnin",
            priority = 1370,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Zalazane.",
            complete = QuestState(826, "completed"),
            dependsOn = { "accept-826-zalazane", "objective-826-3-zalazane" },
            route = {
                Point(1411, 0.5595, 0.7472, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "turnin-818-a-solvent-spirit",
            kind = "turnin",
            priority = 1380,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Solvent Spirit.",
            complete = QuestState(818, "completed"),
            dependsOn = { "accept-818-a-solvent-spirit" },
            route = {
                Point(1411, 0.5594, 0.7439, "A Solvent Spirit",
                    "Travel to A Solvent Spirit."),
            },
        },
        {
            id = "turnin-817-practical-prey",
            kind = "turnin",
            priority = 1390,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in Practical Prey.",
            complete = QuestState(817, "completed"),
            dependsOn = { "accept-817-practical-prey" },
            route = {
                Point(1411, 0.5595, 0.7393, "Practical Prey",
                    "Travel to Practical Prey."),
            },
        },
        {
            id = "objective-837-1-razormane-quilboar",
            kind = "objective",
            priority = 1400,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Quilboar.",
            complete = QuestObjective(837, 1, "Razormane Quilboar"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.5000, 0.4960, "Razormane Quilboar",
                    "Travel to Razormane Quilboar."),
            },
        },
        {
            id = "objective-837-2-razormane-scout",
            kind = "objective",
            priority = 1410,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Scout.",
            complete = QuestObjective(837, 2, "Razormane Scout"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.5000, 0.4960, "Razormane Scout",
                    "Travel to Razormane Scout."),
            },
        },
        {
            id = "objective-837-3-razormane-dustrunner",
            kind = "objective",
            priority = 1420,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Dustrunner.",
            complete = QuestObjective(837, 3, "Razormane Dustrunner"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.4240, 0.4060, "Razormane Dustrunner",
                    "Travel to Razormane Dustrunner."),
            },
        },
        {
            id = "objective-837-4-razormane-battleguard",
            kind = "objective",
            priority = 1430,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Battleguard.",
            complete = QuestObjective(837, 4, "Razormane Battleguard"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.4240, 0.4060, "Razormane Battleguard",
                    "Travel to Razormane Battleguard."),
            },
        },
        {
            id = "accept-816-lost-but-not-forgotten",
            kind = "accept",
            priority = 1440,
            conditions = { all = {
                { level = { min = 8 } },
                { faction = "Horde" },
            } },
            text = "Accept Lost But Not Forgotten.",
            complete = QuestState(816, "activeOrCompleted"),
            route = {
                Point(1411, 0.4311, 0.3024, "Lost But Not Forgotten",
                    "Travel to Lost But Not Forgotten."),
            },
        },
        {
            id = "objective-816-1-dreadmaw-crocolisk",
            kind = "objective",
            priority = 1450,
            conditions = { all = {
                { level = { min = 8 } },
                { faction = "Horde" },
            } },
            text = "Kill Dreadmaw Crocolisk.",
            complete = QuestObjective(816, 1, "Dreadmaw Crocolisk"),
            dependsOn = { "accept-816-lost-but-not-forgotten" },
            route = {
                Point(1411, 0.3480, 0.3640, "Dreadmaw Crocolisk",
                    "Travel to Dreadmaw Crocolisk."),
            },
        },
        {
            id = "turnin-1525-call-of-fire",
            kind = "turnin",
            priority = 1460,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Turn in Call of Fire.",
            complete = QuestState(1525, "completed"),
            dependsOn = { "accept-1525-call-of-fire", "objective-1525-1-razormane-thornweaver" },
            route = {
                Point(1411, 0.3659, 0.5707, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "accept-1526-call-of-fire",
            kind = "accept",
            priority = 1470,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Accept Call of Fire.",
            complete = QuestState(1526, "activeOrCompleted"),
            route = {
                Point(1411, 0.3659, 0.5707, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "objective-1526-1-fire-sapta",
            kind = "objective",
            priority = 1480,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Use Fire Sapta.",
            complete = QuestObjective(1526, 1, "Fire Sapta"),
            dependsOn = { "accept-1526-call-of-fire" },
            route = {
                Point(1411, 0.3816, 0.5854, "Fire Sapta",
                    "Travel to Fire Sapta.")
            }
            },
        {
            id = "objective-1526-1-minor-manifestation-of-fire",
            kind = "objective",
            priority = 1490,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Kill Minor Manifestation of Fire.",
            complete = QuestObjective(1526, 1, "Minor Manifestation of Fire"),
            dependsOn = { "accept-1526-call-of-fire" },
            route = {
                Point(1411, 0.3872, 0.5829, "Minor Manifestation of Fire",
                    "Travel to Minor Manifestation of Fire.")
            }
            },
        {
            id = "turnin-1526-call-of-fire",
            kind = "turnin",
            priority = 1500,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Turn in Call of Fire.",
            complete = QuestState(1526, "completed"),
            dependsOn = { "accept-1526-call-of-fire", "objective-1526-1-fire-sapta", "objective-1526-1-minor-manifestation-of-fire" },
            route = {
                Point(1411, 0.3895, 0.5822, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "accept-1527-call-of-fire",
            kind = "accept",
            priority = 1510,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Accept Call of Fire.",
            complete = QuestState(1527, "activeOrCompleted"),
            route = {
                Point(1411, 0.3895, 0.5822, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "turnin-1527-call-of-fire",
            kind = "turnin",
            priority = 1520,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 7 }
            } },
            text = "Turn in Call of Fire.",
            complete = QuestState(1527, "completed"),
            dependsOn = { "accept-1527-call-of-fire" },
            route = {
                Point(1413, 0.5604, 0.1989, "Call of Fire",
                    "Travel to Call of Fire.")
            }
            },
        {
            id = "turnin-816-lost-but-not-forgotten",
            kind = "turnin",
            priority = 1530,
            conditions = { all = {
                { level = { min = 8 } },
                { faction = "Horde" },
            } },
            text = "Turn in Lost But Not Forgotten.",
            complete = QuestState(816, "completed"),
            dependsOn = { "accept-816-lost-but-not-forgotten", "objective-816-1-dreadmaw-crocolisk" },
            route = {
                Point(1411, 0.4311, 0.3024, "Lost But Not Forgotten",
                    "Travel to Lost But Not Forgotten."),
            },
        },
        {
            id = "turnin-791-carry-your-weight",
            kind = "turnin",
            priority = 1540,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Carry Your Weight.",
            complete = QuestState(791, "completed"),
            dependsOn = { "accept-791-carry-your-weight" },
            route = {
                Point(1411, 0.4989, 0.4038, "Carry Your Weight",
                    "Travel to Carry Your Weight."),
            },
        },
        {
            id = "turnin-815-break-a-few-eggs",
            kind = "turnin",
            priority = 1550,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Turn in Break a Few Eggs.",
            complete = QuestState(815, "completed"),
            dependsOn = { "accept-815-break-a-few-eggs" },
            route = {
                Point(1411, 0.5111, 0.4245, "Break a Few Eggs",
                    "Travel to Break a Few Eggs."),
            },
        },
        {
            id = "turnin-2161-a-peon-s-burden",
            kind = "turnin",
            priority = 1560,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A Peon's Burden.",
            complete = QuestState(2161, "completed"),
            dependsOn = { "accept-2161-a-peon-s-burden" },
            route = {
                Point(1411, 0.5152, 0.4165, "A Peon's Burden",
                    "Travel to A Peon's Burden.")
            }
            },
        {
            id = "turnin-784-vanquish-the-betrayers",
            kind = "turnin",
            priority = 1570,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Vanquish the Betrayers.",
            complete = QuestState(784, "completed"),
            dependsOn = { "accept-784-vanquish-the-betrayers", "objective-784-3-lieutenant-benedict" },
            route = {
                Point(1411, 0.5195, 0.4350, "Vanquish the Betrayers",
                    "Travel to Vanquish the Betrayers."),
            },
        },
        {
            id = "turnin-837-encroachment",
            kind = "turnin",
            priority = 1580,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Turn in Encroachment.",
            complete = QuestState(837, "completed"),
            dependsOn = { "accept-837-encroachment", "objective-837-1-razormane-quilboar", "objective-837-2-razormane-scout", "objective-837-3-razormane-dustrunner", "objective-837-4-razormane-battleguard" },
            route = {
                Point(1411, 0.5195, 0.4350, "Encroachment",
                    "Travel to Encroachment."),
            },
        },
        {
            id = "turnin-830-the-admiral-s-orders",
            kind = "turnin",
            priority = 1590,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Admiral's Orders.",
            complete = QuestState(830, "completed"),
            dependsOn = { "accept-830-the-admiral-s-orders" },
            route = {
                Point(1411, 0.5195, 0.4350, "The Admiral's Orders",
                    "Travel to The Admiral's Orders.")
            }
            },
        {
            id = "accept-831-the-admiral-s-orders",
            kind = "accept",
            priority = 1600,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Admiral's Orders.",
            complete = QuestState(831, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "The Admiral's Orders",
                    "Travel to The Admiral's Orders.")
            }
            },
        {
            id = "turnin-823-report-to-orgnil",
            kind = "turnin",
            priority = 1610,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Report to Orgnil.",
            complete = QuestState(823, "completed"),
            dependsOn = { "accept-823-report-to-orgnil" },
            route = {
                Point(1411, 0.5225, 0.4315, "Report to Orgnil",
                    "Travel to Report to Orgnil."),
            },
        },
        {
            id = "accept-834-winds-in-the-desert",
            kind = "accept",
            priority = 1620,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Accept Winds in the Desert.",
            complete = QuestState(834, "activeOrCompleted"),
            route = {
                Point(1411, 0.4637, 0.2294, "Winds in the Desert",
                    "Travel to Winds in the Desert."),
            },
        },
        {
            id = "objective-834-1-sack-of-supplies",
            kind = "objective",
            priority = 1630,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Collect 5 Sack of Supplies.",
            complete = QuestObjective(834, 1, "Sack of Supplies"),
            dependsOn = { "accept-834-winds-in-the-desert" },
            route = {
                Point(1411, 0.4910, 0.2250, "Sack of Supplies",
                    "Travel to Sack of Supplies."),
            },
        },
        {
            id = "turnin-834-winds-in-the-desert",
            kind = "turnin",
            priority = 1640,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in Winds in the Desert.",
            complete = QuestState(834, "completed"),
            dependsOn = { "accept-834-winds-in-the-desert", "objective-834-1-sack-of-supplies" },
            route = {
                Point(1411, 0.4637, 0.2294, "Winds in the Desert",
                    "Travel to Winds in the Desert."),
            },
        },
        {
            id = "accept-835-securing-the-lines",
            kind = "accept",
            priority = 1650,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Accept Securing the Lines.",
            complete = QuestState(835, "activeOrCompleted"),
            route = {
                Point(1411, 0.4637, 0.2294, "Securing the Lines",
                    "Travel to Securing the Lines."),
            },
        },
        {
            id = "turnin-835-securing-the-lines",
            kind = "turnin",
            priority = 1660,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in Securing the Lines.",
            complete = QuestState(835, "completed"),
            dependsOn = { "accept-835-securing-the-lines" },
            route = {
                Point(1411, 0.5351, 0.2779, "Securing the Lines",
                    "Travel to Securing the Lines."),
            },
        },
        {
            id = "accept-812-need-for-a-cure",
            kind = "accept",
            priority = 1670,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Accept Need for a Cure.",
            complete = QuestState(812, "activeOrCompleted"),
            route = {
                Point(1411, 0.4155, 0.1861, "Need for a Cure",
                    "Travel to Need for a Cure."),
            },
        },
        {
            id = "turnin-831-the-admiral-s-orders",
            kind = "turnin",
            priority = 1680,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Admiral's Orders.",
            complete = QuestState(831, "completed"),
            dependsOn = { "accept-831-the-admiral-s-orders" },
            route = {
                Point(1454, 0.3227, 0.3580, "The Admiral's Orders",
                    "Travel to The Admiral's Orders.")
            }
            },
        {
            id = "accept-813-finding-the-antidote",
            kind = "accept",
            priority = 1690,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Accept Finding the Antidote.",
            complete = QuestState(813, "activeOrCompleted"),
            route = {
                Point(1454, 0.4724, 0.5358, "Finding the Antidote",
                    "Travel to Finding the Antidote."),
            },
        },
        {
            id = "objective-813-1-venomtail-scorpid",
            kind = "objective",
            priority = 1700,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Kill Venomtail Scorpid.",
            complete = QuestObjective(813, 1, "Venomtail Scorpid"),
            dependsOn = { "accept-813-finding-the-antidote" },
            route = {
                Point(1411, 0.4340, 0.1660, "Venomtail Scorpid",
                    "Travel to Venomtail Scorpid."),
            },
        },
        {
            id = "turnin-813-finding-the-antidote",
            kind = "turnin",
            priority = 1710,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in Finding the Antidote.",
            complete = QuestState(813, "completed"),
            dependsOn = { "accept-813-finding-the-antidote", "objective-813-1-venomtail-scorpid" },
            route = {
                Point(1454, 0.4724, 0.5359, "Finding the Antidote",
                    "Travel to Finding the Antidote."),
            },
        },
        {
            id = "turnin-812-need-for-a-cure",
            kind = "turnin",
            priority = 1720,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in Need for a Cure.",
            complete = QuestState(812, "completed"),
            dependsOn = { "accept-812-need-for-a-cure" },
            route = {
                Point(1411, 0.4155, 0.1861, "Need for a Cure",
                    "Travel to Need for a Cure."),
            },
        },
        {
            id = "accept-1818-speak-with-dillinger",
            kind = "accept",
            priority = 1730,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Accept Speak with Dillinger.",
            complete = QuestState(1818, "activeOrCompleted"),
            route = {
                Point(1420, 0.6185, 0.5254, "Speak with Dillinger",
                    "Travel to Speak with Dillinger.")
            }
            },
        {
            id = "turnin-1818-speak-with-dillinger",
            kind = "turnin",
            priority = 1740,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Turn in Speak with Dillinger.",
            complete = QuestState(1818, "completed"),
            dependsOn = { "accept-1818-speak-with-dillinger" },
            route = {
                Point(1420, 0.5820, 0.5145, "Speak with Dillinger",
                    "Travel to Speak with Dillinger.")
            }
            },
        {
            id = "accept-1819-ulag-the-cleaver",
            kind = "accept",
            priority = 1750,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Accept Ulag the Cleaver.",
            complete = QuestState(1819, "activeOrCompleted"),
            route = {
                Point(1420, 0.5820, 0.5145, "Ulag the Cleaver",
                    "Travel to Ulag the Cleaver.")
            }
            },
        {
            id = "objective-1819-1-mausoleum-trigger",
            kind = "objective",
            priority = 1760,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Click Mausoleum Trigger.",
            complete = QuestObjective(1819, 1, "Mausoleum Trigger"),
            dependsOn = { "accept-1819-ulag-the-cleaver" },
            route = {
                Point(1420, 0.5916, 0.4851, "Mausoleum Trigger",
                    "Travel to Mausoleum Trigger.")
            }
            },
        {
            id = "turnin-1819-ulag-the-cleaver",
            kind = "turnin",
            priority = 1770,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Turn in Ulag the Cleaver.",
            complete = QuestState(1819, "completed"),
            dependsOn = { "accept-1819-ulag-the-cleaver", "objective-1819-1-mausoleum-trigger" },
            route = {
                Point(1420, 0.5820, 0.5145, "Ulag the Cleaver",
                    "Travel to Ulag the Cleaver.")
            }
            },
        {
            id = "accept-1820-speak-with-coleman",
            kind = "accept",
            priority = 1780,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Accept Speak with Coleman.",
            complete = QuestState(1820, "activeOrCompleted"),
            route = {
                Point(1420, 0.5820, 0.5145, "Speak with Coleman",
                    "Travel to Speak with Coleman.")
            }
            },
        {
            id = "turnin-1820-speak-with-coleman",
            kind = "turnin",
            priority = 1790,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Turn in Speak with Coleman.",
            complete = QuestState(1820, "completed"),
            dependsOn = { "accept-1820-speak-with-coleman" },
            route = {
                Point(1420, 0.6172, 0.5229, "Speak with Coleman",
                    "Travel to Speak with Coleman.")
            }
            },
        {
            id = "accept-445-delivery-to-silverpine-forest",
            kind = "accept",
            priority = 1800,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Horde" },
            } },
            text = "Accept Delivery to Silverpine Forest.",
            complete = QuestState(445, "activeOrCompleted"),
            route = {
                Point(1420, 0.5945, 0.5240, "Delivery to Silverpine Forest",
                    "Travel to Delivery to Silverpine Forest."),
            },
        },
        {
            id = "woven-accept-95805-grace-of-anshe-and-musha",
            kind = "accept",
            priority = 1810,
            conditions = { level = { min = 4 } },
            text = "Accept Grace of An'she and Mu'sha from Seer Graytongue.",
            complete = QuestState(95805, "activeOrCompleted"),
            route = {
                Point(1412, 0.4260, 0.9200, "Seer Graytongue",
                    "Travel to Seer Graytongue."),
            },
        },
        {
            id = "woven-objective-95805-grace-of-anshe-and-musha",
            kind = "objective",
            priority = 1820,
            useClientPin = true,
            conditions = { level = { min = 4 } },
            text = "Carry the Smoldering Incense to the shrine of An'she and Mu'sha in the southeastern hills before it burns out. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(95805, "completed"),
            route = {
                Point(1412, 0.5000, 0.8100, "Southeastern hills",
                    "Travel to Southeastern hills."),
            },
        },
        {
            id = "woven-accept-96659-the-adventurer",
            kind = "accept",
            priority = 1830,
            conditions = { level = { min = 6 } },
            text = "Accept The Adventurer from Chief Hawkwind in Camp Narache.",
            complete = QuestState(96659, "activeOrCompleted"),
            route = {
                Point(1412, 0.4420, 0.7600, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "woven-turnin-96659-the-adventurer",
            kind = "turnin",
            priority = 1840,
            conditions = { level = { min = 6 } },
            text = "Turn in The Adventurer to Kaga Wildhoof on the road to Bloodhoof Village.",
            complete = QuestState(96659, "completed"),
            route = {
                Point(1412, 0.4620, 0.6720, "Kaga Wildhoof",
                    "Travel to Kaga Wildhoof."),
            },
        },
        {
            id = "woven-accept-96101-the-great-outdoors",
            kind = "accept",
            priority = 1850,
            conditions = { level = { min = 6 } },
            text = "Accept The Great Outdoors from Kaga Wildhoof.",
            complete = QuestState(96101, "activeOrCompleted"),
            route = {
                Point(1412, 0.4620, 0.6720, "Kaga Wildhoof",
                    "Travel to Kaga Wildhoof."),
            },
        },
        {
            id = "woven-objective-96101-the-great-outdoors",
            kind = "objective",
            priority = 1860,
            conditions = { level = { min = 6 } },
            text = "Type /sit at Kaga Wildhoof's campfire and wait until you gain the Boosted Rest buff.",
            complete = QuestState(96101, "complete"),
        },
        {
            id = "woven-turnin-96101-the-great-outdoors",
            kind = "turnin",
            priority = 1870,
            conditions = { level = { min = 6 } },
            text = "Turn in The Great Outdoors to Kaga Wildhoof.",
            complete = QuestState(96101, "completed"),
            route = {
                Point(1412, 0.4620, 0.6720, "Kaga Wildhoof",
                    "Travel to Kaga Wildhoof."),
            },
        },
        {
            id = "woven-accept-98430-the-longwalkers",
            kind = "accept",
            priority = 1880,
            conditions = { level = { min = 8 } },
            text = "Accept The Longwalkers from Perith Stormhoof inside Palemane Rock.",
            complete = QuestState(98430, "activeOrCompleted"),
            route = {
                Point(1412, 0.3300, 0.6580, "Perith Stormhoof",
                    "Travel to Perith Stormhoof."),
            },
        },
        {
            id = "woven-objective-98430-the-longwalkers",
            kind = "objective",
            priority = 1890,
            conditions = { level = { min = 8 } },
            text = "Escort Perith Stormhoof out of Palemane Rock.",
            complete = QuestState(98430, "complete"),
            route = {
                Point(1412, 0.3300, 0.6580, "Perith Stormhoof",
                    "Travel to Perith Stormhoof."),
            },
        },
        {
            id = "woven-accept-99079-longwalker-malah",
            kind = "accept",
            priority = 1900,
            conditions = { level = { min = 9 } },
            text = "Accept Longwalker Malah from Brave Wildrunner in Bloodhoof Village.",
            complete = QuestState(99079, "activeOrCompleted"),
            route = {
                Point(1412, 0.4720, 0.5960, "Brave Wildrunner",
                    "Travel to Brave Wildrunner."),
            },
        },
        {
            id = "woven-accept-99108-sparring-match",
            kind = "accept",
            priority = 1910,
            conditions = { level = { min = 6 } },
            text = "Accept Sparring Match from Krang Stonehoof in Bloodhoof Village.",
            complete = QuestState(99108, "activeOrCompleted"),
            route = {
                Point(1412, 0.4940, 0.6040, "Krang Stonehoof",
                    "Travel to Krang Stonehoof."),
            },
        },
        {
            id = "woven-objective-99108-sparring-match",
            kind = "objective",
            priority = 1920,
            conditions = { level = { min = 6 } },
            text = "Win 3 duels, or defeat Novice Warriors, for Krang Stonehoof.",
            complete = QuestState(99108, "complete"),
            route = {
                Point(1412, 0.4940, 0.6040, "Krang Stonehoof",
                    "Travel to Krang Stonehoof."),
            },
        },
        {
            id = "woven-turnin-99108-sparring-match",
            kind = "turnin",
            priority = 1930,
            conditions = { level = { min = 6 } },
            text = "Turn in Sparring Match to Krang Stonehoof in Bloodhoof Village.",
            complete = QuestState(99108, "completed"),
            route = {
                Point(1412, 0.4940, 0.6040, "Krang Stonehoof",
                    "Travel to Krang Stonehoof."),
            },
        },
        {
            id = "woven-accept-96130-chakuyak",
            kind = "accept",
            priority = 1940,
            conditions = { level = { min = 5 } },
            text = "Accept Chakuyak from Yaw Sharpmane in Bloodhoof Village.",
            complete = QuestState(96130, "activeOrCompleted"),
            route = {
                Point(1412, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "woven-objective-96130-chakuyak",
            kind = "objective",
            priority = 1950,
            conditions = { level = { min = 5 } },
            text = "Kill Chakuyak.",
            complete = QuestState(96130, "complete"),
            route = {
                Point(1412, 0.3940, 0.6520, "Chakuyak",
                    "Travel to Chakuyak."),
            },
        },
        {
            id = "woven-turnin-96130-chakuyak",
            kind = "turnin",
            priority = 1960,
            conditions = { level = { min = 5 } },
            text = "Turn in Chakuyak to Yaw Sharpmane in Bloodhoof Village.",
            complete = QuestState(96130, "completed"),
            route = {
                Point(1412, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "woven-turnin-98430-the-longwalkers",
            kind = "turnin",
            priority = 1970,
            conditions = { level = { min = 8 } },
            text = "Turn in The Longwalkers to Cairne Bloodhoof in Thunder Bluff.",
            complete = QuestState(98430, "completed"),
            route = {
                Point(1456, 0.5980, 0.5160, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "woven-accept-97485-traditions-of-the-bluff",
            kind = "accept",
            priority = 1980,
            conditions = { level = { min = 10 } },
            text = "Accept Traditions of the Bluff from Eylah Sunhorn in Thunder Bluff.",
            complete = QuestState(97485, "activeOrCompleted"),
            route = {
                Point(1456, 0.3820, 0.5620, "Eylah Sunhorn",
                    "Travel to Eylah Sunhorn."),
            },
        },
        {
            id = "woven-objective-97485-traditions-of-the-bluff",
            kind = "objective",
            priority = 1990,
            conditions = { level = { min = 10 } },
            text = "Buy a Bundle of Herbs from Nida, a Bundle of Cedar Twigs from Nata, Sinew Thread from Mahu, and Ceremonial Flint and Tinder from Naal. Combine them for Eylah Sunhorn.",
            complete = QuestState(97485, "complete"),
            route = {
                Point(1456, 0.3820, 0.5620, "Eylah Sunhorn",
                    "Travel to Eylah Sunhorn."),
            },
        },
        {
            id = "woven-turnin-97485-traditions-of-the-bluff",
            kind = "turnin",
            priority = 2000,
            conditions = { level = { min = 10 } },
            text = "Turn in Traditions of the Bluff to Eylah Sunhorn in Thunder Bluff.",
            complete = QuestState(97485, "completed"),
            route = {
                Point(1456, 0.3820, 0.5620, "Eylah Sunhorn",
                    "Travel to Eylah Sunhorn."),
            },
        },
        {
            id = "woven-accept-94911-child-of-nature",
            kind = "accept",
            priority = 2010,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Child of Nature from Muln Earthfury in Mulgore.",
            complete = QuestState(94911, "activeOrCompleted"),
            route = {
                Point(1412, 0.3340, 0.2240, "Muln Earthfury", "Travel to Muln Earthfury."),
            },
        },
        {
            id = "woven-turnin-94911-child-of-nature",
            kind = "turnin",
            priority = 2020,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Child of Nature to Turak Runetotem in Elder Rise.",
            complete = QuestState(94911, "completed"),
            route = {
                Point(1456, 0.7640, 0.2760, "Turak Runetotem", "Travel to Turak Runetotem."),
            },
        },
        {
            id = "woven-accept-94913-moonglade-skyborne",
            kind = "accept",
            priority = 2030,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Moonglade from Turak Runetotem in Elder Rise.",
            complete = QuestState(94913, "activeOrCompleted"),
            route = {
                Point(1456, 0.7640, 0.2760, "Turak Runetotem", "Travel to Turak Runetotem."),
            },
        },
        {
            id = "woven-accept-98424-fizsprockets-notes",
            kind = "accept",
            priority = 2040,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            text = "Use Fizsprocket's Notes if Supervisor Fizsprocket drops them.",
            complete = QuestState(98424, "activeOrCompleted"),
            route = {
                Point(1412, 0.6440, 0.4360, "Venture Co. Mine",
                    "Travel to Venture Co. Mine."),
            },
        },
        {
            id = "woven-objective-98424-fizsprockets-notes",
            kind = "objective",
            priority = 2050,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            useClientPin = true,
            text = "Collect the Venture Co. pages in the mine. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(98424, "complete"),
            route = {
                Point(1412, 0.6440, 0.4360, "Venture Co. Mine",
                    "Travel to Venture Co. Mine."),
            },
        },
        {
            id = "woven-turnin-99079-longwalker-malah",
            kind = "turnin",
            priority = 2060,
            conditions = { level = { min = 9 } },
            text = "Turn in Longwalker Malah to Malah Longwind, east of Bloodhoof Village.",
            complete = QuestState(99079, "completed"),
            route = {
                Point(1412, 0.5760, 0.6320, "Malah Longwind",
                    "Travel to Malah Longwind."),
            },
        },
        {
            id = "woven-accept-99081-grim-tidings",
            kind = "accept",
            priority = 2070,
            conditions = { level = { min = 9 } },
            text = "Accept Grim Tidings from Malah Longwind.",
            complete = QuestState(99081, "activeOrCompleted"),
            route = {
                Point(1412, 0.5760, 0.6320, "Malah Longwind",
                    "Travel to Malah Longwind."),
            },
        },
        {
            id = "woven-turnin-99081-grim-tidings",
            kind = "turnin",
            priority = 2080,
            conditions = { level = { min = 9 } },
            text = "Turn in Grim Tidings to Brave Wildrunner in Bloodhoof Village.",
            complete = QuestState(99081, "completed"),
            route = {
                Point(1412, 0.4720, 0.5960, "Brave Wildrunner",
                    "Travel to Brave Wildrunner."),
            },
        },
        {
            id = "woven-accept-99101-our-ancient-enemy",
            kind = "accept",
            priority = 2090,
            conditions = { level = { min = 9 } },
            text = "Accept Our Ancient Enemy from Brave Wildrunner in Bloodhoof Village.",
            complete = QuestState(99101, "activeOrCompleted"),
            route = {
                Point(1412, 0.4720, 0.5960, "Brave Wildrunner",
                    "Travel to Brave Wildrunner."),
            },
        },
        {
            id = "woven-turnin-99101-our-ancient-enemy",
            kind = "turnin",
            priority = 2100,
            conditions = { level = { min = 9 } },
            text = "Turn in Our Ancient Enemy to Baine Bloodhoof in Bloodhoof Village.",
            complete = QuestState(99101, "completed"),
            route = {
                Point(1412, 0.4740, 0.6020, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "woven-accept-99080-drive-them-out",
            kind = "accept",
            priority = 2110,
            conditions = { level = { min = 9 } },
            text = "Accept Drive Them Out from Baine Bloodhoof in Bloodhoof Village.",
            complete = QuestState(99080, "activeOrCompleted"),
            route = {
                Point(1412, 0.4740, 0.6020, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "woven-turnin-98424-fizsprockets-notes",
            kind = "turnin",
            priority = 2120,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Fizsprocket's Notes to Morin Cloudstalker.",
            complete = QuestState(98424, "completed"),
            route = {
                Point(1412, 0.5300, 0.6020, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "woven-accept-98427-ceasing-operations",
            kind = "accept",
            priority = 2130,
            conditions = {
                all = {
                    { level = { min = 12 } },
                    { quest = { id = 98424, state = "completed" } },
                },
            },
            text = "Accept Ceasing Operations from Morin Cloudstalker. This is an elite. Bring a group.",
            complete = QuestState(98427, "activeOrCompleted"),
            route = {
                Point(1412, 0.5300, 0.6020, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "woven-objective-98427-ceasing-operations",
            kind = "objective",
            priority = 2140,
            conditions = {
                all = {
                    { level = { min = 12 } },
                    { quest = { id = 98424, state = "completed" } },
                },
            },
            text = "Take the Clearcutter Key from the Venture Co. Clearclutter. This is an elite. Bring a group.",
            complete = QuestState(98427, "complete"),
            route = {
                Point(1412, 0.5700, 0.4300, "Venture Co. Clearclutter",
                    "Travel to Venture Co. Clearclutter."),
            },
        },
        {
            id = "woven-turnin-98427-ceasing-operations",
            kind = "turnin",
            priority = 2150,
            conditions = {
                all = {
                    { level = { min = 12 } },
                    { quest = { id = 98424, state = "completed" } },
                },
            },
            text = "Turn in Ceasing Operations to Morin Cloudstalker.",
            complete = QuestState(98427, "completed"),
            route = {
                Point(1412, 0.5300, 0.6020, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "woven-objective-99080-drive-them-out-1",
            kind = "objective",
            priority = 2160,
            conditions = { level = { min = 9 } },
            text = "Drive Them Out: kill 6 Galak Centaurs.",
            complete = QuestObjective(99080, 1),
            route = {
                Point(1412, 0.6720, 0.5940, "Galak Centaur",
                    "Travel to Galak Centaur."),
            },
        },
        {
            id = "woven-objective-99080-drive-them-out-2",
            kind = "objective",
            priority = 2170,
            conditions = { level = { min = 9 } },
            text = "Drive Them Out: kill 4 Galak Outrunners.",
            complete = QuestObjective(99080, 2),
            route = {
                Point(1412, 0.6020, 0.6060, "Galak Outrunner",
                    "Travel to Galak Outrunner."),
            },
        },
        {
            id = "woven-objective-99080-drive-them-out-3",
            kind = "objective",
            priority = 2180,
            conditions = { level = { min = 9 } },
            text = "Drive Them Out: bring Herak the Pillager's head.",
            complete = QuestObjective(99080, 3),
            route = {
                Point(1412, 0.6040, 0.5980, "Herak the Pillager",
                    "Travel to Herak the Pillager."),
            },
        },
        {
            id = "woven-turnin-99080-drive-them-out",
            kind = "turnin",
            priority = 2190,
            conditions = { level = { min = 9 } },
            text = "Turn in Drive Them Out to Baine Bloodhoof in Bloodhoof Village.",
            complete = QuestState(99080, "completed"),
            route = {
                Point(1412, 0.4740, 0.6020, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "woven-accept-99082-the-high-chieftain",
            kind = "accept",
            priority = 2200,
            conditions = { level = { min = 9 } },
            text = "Accept The High Chieftain from Baine Bloodhoof.",
            complete = QuestState(99082, "activeOrCompleted"),
            route = {
                Point(1412, 0.4740, 0.6020, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "woven-turnin-99082-the-high-chieftain",
            kind = "turnin",
            priority = 2210,
            conditions = { level = { min = 9 } },
            text = "Turn in The High Chieftain to Cairne Bloodhoof.",
            complete = QuestState(99082, "completed"),
            route = {
                Point(1456, 0.5980, 0.5160, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "woven-accept-98435-thunderhorns-report",
            kind = "accept",
            priority = 2220,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { race = 6 },
                },
            },
            text = "Accept Thunderhorn's Report from Mull Thunderhorn. This step is for tauren.",
            complete = QuestState(98435, "activeOrCompleted"),
            route = {
                Point(1412, 0.4840, 0.6040, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "woven-turnin-98435-thunderhorns-report",
            kind = "turnin",
            priority = 2230,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { race = 6 },
                },
            },
            text = "Turn in Thunderhorn's Report to Arch Druid Hamuul Runetotem in Elder Rise. This step is for tauren.",
            complete = QuestState(98435, "completed"),
            route = {
                Point(1456, 0.7840, 0.2840, "Arch Druid Hamuul Runetotem",
                    "Travel to Arch Druid Hamuul Runetotem."),
            },
        },
    },
})
