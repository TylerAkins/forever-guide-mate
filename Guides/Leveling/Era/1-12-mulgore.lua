local _, ns = ...

-- Horde Era leveling route for Mulgore, levels 1-12.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    MULGORE = 1412,
    THUNDER_BLUFF = 1456,
    MOONGLADE = 1450,
    BARRENS = 1413,
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
    id = "leveling-era-1-12-mulgore",
    title = "1-12 Mulgore (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-747-the-hunt-begins",
            kind = "accept",
            priority = 10,
            text = "Accept The Hunt Begins from Grull Hawkwind in Camp Narache.",
            complete = QuestState(747, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "objective-747-the-hunt-begins",
            kind = "objective",
            priority = 20,
            text = "Kill Plainstrider and collect 7 Plainstrider Meat and 7 Plainstrider Feather in Red Cloud Mesa.",
            dependsOn = { "accept-747-the-hunt-begins" },
            complete = QuestState(747, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4754, 0.8116, "Plainstrider",
                    "Travel to Plainstrider."),
            },
        },
        {
            id = "turnin-747-the-hunt-begins",
            kind = "turnin",
            priority = 30,
            text = "Turn in The Hunt Begins to Grull Hawkwind in Camp Narache.",
            dependsOn = { "objective-747-the-hunt-begins" },
            complete = QuestState(747, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-3092-etched-note",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Accept Etched Note from Grull Hawkwind in Camp Narache.",
            complete = QuestState(3092, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-3091-simple-note",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { class = 1 },
                    { race = 6 },
                },
            },
            text = "Accept Simple Note from Grull Hawkwind in Camp Narache.",
            complete = QuestState(3091, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-3093-rune-inscribed-note",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Accept Rune-Inscribed Note from Grull Hawkwind in Camp Narache.",
            complete = QuestState(3093, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-3094-verdant-note",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Accept Verdant Note from Grull Hawkwind in Camp Narache.",
            complete = QuestState(3094, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-750-the-hunt-continues",
            kind = "accept",
            priority = 80,
            text = "Accept The Hunt Continues from Grull Hawkwind in Camp Narache.",
            complete = QuestState(750, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-752-a-humble-task",
            kind = "accept",
            priority = 90,
            text = "Accept A Humble Task from Chief Hawkwind in Camp Narache.",
            complete = QuestState(752, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4423, 0.7604, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "turnin-3092-etched-note",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Turn in Etched Note to Lanka Farshot in Camp Narache.",
            dependsOn = { "accept-3092-etched-note" },
            complete = QuestState(3092, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4426, 0.7580, "Lanka Farshot",
                    "Travel to Lanka Farshot."),
            },
        },
        {
            id = "turnin-3091-simple-note",
            kind = "turnin",
            priority = 110,
            conditions = {
                all = {
                    { class = 1 },
                    { race = 6 },
                },
            },
            text = "Turn in Simple Note to Harutt Thunderhorn in Camp Narache.",
            dependsOn = { "accept-3091-simple-note" },
            complete = QuestState(3091, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4410, 0.7610, "Harutt Thunderhorn",
                    "Travel to Harutt Thunderhorn."),
            },
        },
        {
            id = "turnin-3093-rune-inscribed-note",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Turn in Rune-Inscribed Note to Meela Dawnstrider in Camp Narache.",
            dependsOn = { "accept-3093-rune-inscribed-note" },
            complete = QuestState(3093, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4500, 0.7600, "Meela Dawnstrider",
                    "Travel to Meela Dawnstrider."),
            },
        },
        {
            id = "turnin-3094-verdant-note",
            kind = "turnin",
            priority = 130,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Turn in Verdant Note to Gart Mistrunner in Camp Narache.",
            dependsOn = { "accept-3094-verdant-note" },
            complete = QuestState(3094, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4510, 0.7600, "Gart Mistrunner",
                    "Travel to Gart Mistrunner."),
            },
        },
        {
            id = "turnin-752-a-humble-task",
            kind = "turnin",
            priority = 140,
            text = "Turn in A Humble Task to Greatmother Hawkwind in Camp Narache.",
            dependsOn = { "accept-752-a-humble-task" },
            complete = QuestState(752, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5001, 0.8114, "Greatmother Hawkwind",
                    "Travel to Greatmother Hawkwind."),
            },
        },
        {
            id = "accept-753-a-humble-task",
            kind = "accept",
            priority = 150,
            text = "Accept A Humble Task from Greatmother Hawkwind in Camp Narache.",
            complete = QuestState(753, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.5001, 0.8114, "Greatmother Hawkwind",
                    "Travel to Greatmother Hawkwind."),
            },
        },
        {
            id = "objective-753-a-humble-task",
            kind = "objective",
            priority = 160,
            text = "Collect Water Pitcher from the well.",
            dependsOn = { "accept-753-a-humble-task" },
            complete = QuestState(753, "complete"),
            route = {
                Point(MAP.MULGORE, 0.5014, 0.8143, "A Humble Task",
                    "Travel to A Humble Task."),
            },
        },
        {
            id = "turnin-753-a-humble-task",
            kind = "turnin",
            priority = 170,
            text = "Turn in A Humble Task to Chief Hawkwind in Camp Narache.",
            dependsOn = { "objective-753-a-humble-task" },
            complete = QuestState(753, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4423, 0.7604, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "accept-755-rites-of-the-earthmother",
            kind = "accept",
            priority = 180,
            text = "Accept Rites of the Earthmother from Chief Hawkwind in Camp Narache.",
            complete = QuestState(755, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4423, 0.7604, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "objective-750-the-hunt-continues",
            kind = "objective",
            priority = 190,
            text = "Kill Mountain Cougar and collect 10 Mountain Cougar Pelt in Red Cloud Mesa.",
            dependsOn = { "accept-750-the-hunt-continues" },
            complete = QuestState(750, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4252, 0.8928, "Mountain Cougar",
                    "Travel to Mountain Cougar."),
            },
        },
        {
            id = "turnin-755-rites-of-the-earthmother",
            kind = "turnin",
            priority = 200,
            text = "Turn in Rites of the Earthmother to Seer Graytongue in Red Cloud Mesa.",
            dependsOn = { "accept-755-rites-of-the-earthmother" },
            complete = QuestState(755, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4253, 0.9208, "Seer Graytongue",
                    "Travel to Seer Graytongue."),
            },
        },
        {
            id = "accept-757-rite-of-strength",
            kind = "accept",
            priority = 210,
            text = "Accept Rite of Strength from Seer Graytongue in Red Cloud Mesa.",
            complete = QuestState(757, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4253, 0.9208, "Seer Graytongue",
                    "Travel to Seer Graytongue."),
            },
        },
        {
            id = "turnin-750-the-hunt-continues",
            kind = "turnin",
            priority = 220,
            text = "Turn in The Hunt Continues to Grull Hawkwind in Camp Narache.",
            dependsOn = { "objective-750-the-hunt-continues" },
            complete = QuestState(750, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-780-the-battleboars",
            kind = "accept",
            priority = 230,
            text = "Accept The Battleboars from Grull Hawkwind in Camp Narache.",
            complete = QuestState(780, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-3376-break-sharptusk",
            kind = "accept",
            priority = 240,
            text = "Accept Break Sharptusk! from Brave Windfeather in Camp Narache.",
            complete = QuestState(3376, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4450, 0.7646, "Brave Windfeather",
                    "Travel to Brave Windfeather."),
            },
        },
        {
            id = "accept-1519-call-of-earth",
            kind = "accept",
            priority = 250,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Accept Call of Earth from Seer Ravenfeather in Camp Narache.",
            complete = QuestState(1519, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4473, 0.7624, "Seer Ravenfeather",
                    "Travel to Seer Ravenfeather."),
            },
        },
        {
            id = "objective-780-the-battleboars",
            kind = "objective",
            priority = 260,
            text = "Kill Young Battleboar and collect 8 Battleboar Snout and 8 Battleboar Flank in Red Cloud Mesa.",
            dependsOn = { "accept-780-the-battleboars" },
            complete = QuestState(780, "complete"),
            route = {
                Point(MAP.MULGORE, 0.5500, 0.8400, "Young Battleboar",
                    "Travel to Young Battleboar."),
            },
        },
        {
            id = "travel-757-brambleblade-ravine",
            kind = "travel",
            priority = 270,
            text = "Travel to Brambleblade Ravine.",
            route = {
                Point(MAP.MULGORE, 0.5819, 0.8497, "Brambleblade Ravine",
                    "Travel to Brambleblade Ravine."),
            },
        },
        {
            id = "objective-3376-break-sharptusk",
            kind = "objective",
            priority = 280,
            text = "Kill Chief Sharptusk Thornmantle in Brambleblade Ravine and collect Chief Sharptusk Thornmantle's Head.",
            dependsOn = { "accept-3376-break-sharptusk" },
            complete = QuestState(3376, "complete"),
            route = {
                Point(MAP.MULGORE, 0.6460, 0.7780, "Chief Sharptusk Thornmantle",
                    "Travel to Chief Sharptusk Thornmantle."),
            },
        },
        {
            id = "objective-781-dirt-stained-map",
            kind = "objective",
            priority = 290,
            text = "Collect Dirt-Stained Map from Dirt-Stained Map on the ground.",
            dependsOn = { "accept-781-attack-on-camp-narache" },
            complete = QuestState(781, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.6326, 0.8263, "Dirt-Stained Map",
                    "Travel to Dirt-Stained Map."),
            },
        },
        {
            id = "accept-781-attack-on-camp-narache",
            kind = "accept",
            priority = 300,
            text = "Use the Dirt-Stained Map to accept Attack on Camp Narache.",
            complete = QuestState(781, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.6330, 0.8260, "Attack on Camp Narache",
                    "Travel to Attack on Camp Narache."),
            },
        },
        {
            id = "objective-1519-call-of-earth",
            kind = "objective",
            priority = 310,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Kill Bristleback Shaman and collect 2 Ritual Salve in Brambleblade Ravine.",
            dependsOn = { "accept-1519-call-of-earth" },
            complete = QuestState(1519, "complete"),
            route = {
                Point(MAP.MULGORE, 0.6377, 0.7779, "Bristleback Shaman",
                    "Travel to Bristleback Shaman."),
            },
        },
        {
            id = "objective-757-rite-of-strength",
            kind = "objective",
            priority = 320,
            text = "Kill Bristleback Invaders, Bristleback Shaman and collect 12 Bristleback Belt in Brambleblade Ravine.",
            dependsOn = { "accept-757-rite-of-strength" },
            complete = QuestState(757, "complete"),
            route = {
                Point(MAP.MULGORE, 0.5800, 0.8100, "Bristleback Invaders",
                    "Travel to Bristleback Invaders."),
            },
        },
        {
            id = "travel-763-camp-narache",
            kind = "travel",
            priority = 330,
            text = "Hearth to Camp Narache.",
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Camp Narache",
                    "Travel to Camp Narache."),
            },
        },
        {
            id = "turnin-780-the-battleboars",
            kind = "turnin",
            priority = 340,
            text = "Turn in The Battleboars to Grull Hawkwind in Camp Narache.",
            dependsOn = { "objective-780-the-battleboars" },
            complete = QuestState(780, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4491, 0.7715, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "turnin-3376-break-sharptusk",
            kind = "turnin",
            priority = 350,
            text = "Turn in Break Sharptusk! to Brave Windfeather in Camp Narache.",
            dependsOn = { "objective-3376-break-sharptusk" },
            complete = QuestState(3376, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4450, 0.7646, "Brave Windfeather",
                    "Travel to Brave Windfeather."),
            },
        },
        {
            id = "turnin-757-rite-of-strength",
            kind = "turnin",
            priority = 360,
            text = "Turn in Rite of Strength to Chief Hawkwind in Camp Narache.",
            dependsOn = { "objective-757-rite-of-strength" },
            complete = QuestState(757, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4423, 0.7604, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "turnin-781-attack-on-camp-narache",
            kind = "turnin",
            priority = 370,
            text = "Turn in Attack on Camp Narache to Chief Hawkwind in Camp Narache.",
            dependsOn = { "objective-781-dirt-stained-map" },
            complete = QuestState(781, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4423, 0.7604, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "accept-763-rites-of-the-earthmother",
            kind = "accept",
            priority = 380,
            text = "Accept Rites of the Earthmother from Chief Hawkwind in Camp Narache.",
            complete = QuestState(763, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4423, 0.7604, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "turnin-1519-call-of-earth",
            kind = "turnin",
            priority = 390,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Turn in Call of Earth to Seer Ravenfeather in Camp Narache.",
            dependsOn = { "objective-1519-call-of-earth" },
            complete = QuestState(1519, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4475, 0.7620, "Seer Ravenfeather",
                    "Travel to Seer Ravenfeather."),
            },
        },
        {
            id = "accept-1520-call-of-earth",
            kind = "accept",
            priority = 400,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Accept Call of Earth from Seer Ravenfeather in Camp Narache.",
            complete = QuestState(1520, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4475, 0.7620, "Seer Ravenfeather",
                    "Travel to Seer Ravenfeather."),
            },
        },
        {
            id = "note-earth-sapta",
            kind = "note",
            priority = 410,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Get Earth Sapta from Seer Ravenfeather.",
        },
        {
            id = "travel-kodo-rock",
            kind = "travel",
            priority = 420,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Travel to Kodo Rock.",
            route = {
                Point(MAP.MULGORE, 0.5387, 0.8064, "Kodo Rock",
                    "Travel to Kodo Rock."),
            },
        },
        {
            id = "note-earth-sapta-2",
            kind = "note",
            priority = 430,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Use Earth Sapta to gain the Sapta Sight buff.",
        },
        {
            id = "turnin-1520-call-of-earth",
            kind = "turnin",
            priority = 440,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Turn in Call of Earth to Minor Manifestation of Earth in Kodo Rock.",
            dependsOn = { "accept-1520-call-of-earth" },
            complete = QuestState(1520, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5387, 0.8064, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth."),
            },
        },
        {
            id = "accept-1521-call-of-earth",
            kind = "accept",
            priority = 450,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Accept Call of Earth from Minor Manifestation of Earth in Kodo Rock.",
            complete = QuestState(1521, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.5387, 0.8064, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth."),
            },
        },
        {
            id = "turnin-1521-call-of-earth",
            kind = "turnin",
            priority = 460,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Turn in Call of Earth to Seer Ravenfeather in Camp Narache.",
            dependsOn = { "accept-1521-call-of-earth" },
            complete = QuestState(1521, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4474, 0.7619, "Seer Ravenfeather",
                    "Travel to Seer Ravenfeather."),
            },
        },
        {
            id = "accept-1656-a-task-unfinished",
            kind = "accept",
            priority = 470,
            text = "Accept A Task Unfinished from Antur Fallow in Red Cloud Mesa.",
            complete = QuestState(1656, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.3858, 0.8169, "Antur Fallow",
                    "Travel to Antur Fallow."),
            },
        },
        {
            id = "travel-bloodhoof-village",
            kind = "travel",
            priority = 480,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 766, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Bloodhoof Village.",
            route = {
                Point(MAP.MULGORE, 0.4750, 0.6020, "Bloodhoof Village",
                    "Travel to Bloodhoof Village."),
            },
        },
        {
            id = "accept-743-dangers-of-the-windfury",
            kind = "accept",
            priority = 490,
            text = "Accept Dangers of the Windfury from Ruul Eagletalon in Bloodhoof Village.",
            complete = QuestState(743, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4733, 0.6194, "Ruul Eagletalon",
                    "Travel to Ruul Eagletalon."),
            },
        },
        {
            id = "turnin-763-rites-of-the-earthmother",
            kind = "turnin",
            priority = 500,
            text = "Turn in Rites of the Earthmother to Baine Bloodhoof in Bloodhoof Village.",
            dependsOn = { "accept-763-rites-of-the-earthmother" },
            complete = QuestState(763, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4747, 0.6026, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-767-rite-of-vision",
            kind = "accept",
            priority = 510,
            text = "Accept Rite of Vision from Baine Bloodhoof in Bloodhoof Village.",
            complete = QuestState(767, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4747, 0.6026, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-745-sharing-the-land",
            kind = "accept",
            priority = 520,
            text = "Accept Sharing the Land from Baine Bloodhoof in Bloodhoof Village.",
            complete = QuestState(745, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4747, 0.6026, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "turnin-1656-a-task-unfinished",
            kind = "turnin",
            priority = 530,
            text = "Turn in A Task Unfinished to Innkeeper Kauth in Bloodhoof Village.",
            dependsOn = { "accept-1656-a-task-unfinished" },
            complete = QuestState(1656, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4665, 0.6102, "Innkeeper Kauth",
                    "Travel to Innkeeper Kauth."),
            },
        },
        {
            id = "note-bloodhoof-village",
            kind = "note",
            priority = 540,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 766, state = "activeOrCompleted" } } },
                },
            },
            text = "Set your hearth in Bloodhoof Village with Innkeeper Kauth.",
            route = {
                Point(MAP.MULGORE, 0.4665, 0.6102, "Innkeeper Kauth",
                    "Travel to Innkeeper Kauth."),
            },
        },
        {
            id = "accept-748-poison-water",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Accept Poison Water from Mull Thunderhorn in Bloodhoof Village.",
            complete = QuestState(748, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-761-swoop-hunting",
            kind = "accept",
            priority = 560,
            text = "Accept Swoop Hunting from Harken Windtotem in Bloodhoof Village.",
            complete = QuestState(761, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4869, 0.5940, "Harken Windtotem",
                    "Travel to Harken Windtotem."),
            },
        },
        {
            id = "turnin-767-rite-of-vision",
            kind = "turnin",
            priority = 570,
            text = "Turn in Rite of Vision to Zarlman Two-Moons in Bloodhoof Village.",
            dependsOn = { "accept-767-rite-of-vision" },
            complete = QuestState(767, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4777, 0.5758, "Zarlman Two-Moons",
                    "Travel to Zarlman Two-Moons."),
            },
        },
        {
            id = "accept-771-rite-of-vision",
            kind = "accept",
            priority = 580,
            text = "Accept Rite of Vision from Zarlman Two-Moons in Bloodhoof Village.",
            complete = QuestState(771, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4777, 0.5758, "Zarlman Two-Moons",
                    "Travel to Zarlman Two-Moons."),
            },
        },
        {
            id = "accept-766-mazzranache",
            kind = "accept",
            priority = 590,
            text = "Accept Mazzranache from Maur Raincaller in Bloodhoof Village.",
            complete = QuestState(766, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4705, 0.5707, "Maur Raincaller",
                    "Travel to Maur Raincaller."),
            },
        },
        {
            id = "objective-771-2-ambercorn",
            kind = "objective",
            priority = 600,
            text = "Collect 2 Ambercorn from the ground near the base of the trees.",
            dependsOn = { "accept-771-rite-of-vision" },
            complete = QuestObjective(771, 2),
            route = {
                Point(MAP.MULGORE, 0.5027, 0.6653, "Ambercorn",
                    "Travel to Ambercorn."),
            },
        },
        {
            id = "objective-771-1-well-stone",
            kind = "objective",
            priority = 610,
            text = "Collect 2 Well Stone from Winterhoof Water Well Collect 2 Ambercorn from the ground.",
            dependsOn = { "accept-771-rite-of-vision" },
            complete = QuestObjective(771, 1),
            route = {
                Point(MAP.MULGORE, 0.5348, 0.6626, "Winterhoof Water Well",
                    "Travel to Winterhoof Water Well."),
            },
        },
        {
            id = "objective-748-poison-water",
            kind = "objective",
            priority = 620,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Kill Prairie Wolf for 6 Prairie Wolf Paw and Adult Plainstrider for 6 Plainstrider Talon which can be found any where in Mulgore.",
            dependsOn = { "accept-748-poison-water" },
            complete = QuestState(748, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4506, 0.6987, "Continue toward Poison Water",
                    "Continue toward Poison Water."),
                Point(MAP.MULGORE, 0.4736, 0.7128, "Continue toward Poison Water",
                    "Continue toward Poison Water."),
                Point(MAP.MULGORE, 0.5255, 0.7051, "Continue toward Poison Water",
                    "Continue toward Poison Water."),
                Point(MAP.MULGORE, 0.5639, 0.7179, "Continue toward Poison Water",
                    "Continue toward Poison Water."),
                Point(MAP.MULGORE, 0.5611, 0.6412, "Prairie Wolf",
                    "Travel to Prairie Wolf."),
            },
        },
        {
            id = "objective-766-1-flatland-cougar-femur",
            kind = "objective",
            priority = 630,
            text = "Kill Flatland Cougar for Flatland Cougar Femur.",
            dependsOn = { "accept-766-mazzranache" },
            complete = QuestObjective(766, 1),
            route = {
                Point(MAP.MULGORE, 0.5180, 0.6922, "Flatland Cougar",
                    "Travel to Flatland Cougar."),
            },
        },
        {
            id = "travel-745-mulgore",
            kind = "travel",
            priority = 640,
            text = "Travel to Mulgore.",
            route = {
                Point(MAP.MULGORE, 0.5337, 0.7168, "Mulgore",
                    "Travel to Mulgore."),
            },
        },
        {
            id = "objective-745-sharing-the-land",
            kind = "objective",
            priority = 650,
            text = "Kill 10 Palemane Tanner, 8 Palemane Skinner, and 5 Palemane Poacher at the cave to the west.",
            dependsOn = { "accept-745-sharing-the-land" },
            complete = QuestState(745, "complete"),
            route = {
                Point(MAP.MULGORE, 0.5337, 0.7168, "Continue toward Sharing the Land",
                    "Continue toward Sharing the Land."),
                Point(MAP.MULGORE, 0.5416, 0.7243, "Palemane Tanner",
                    "Travel to Palemane Tanner."),
            },
        },
        {
            id = "travel-761-the-rolling-plains",
            kind = "travel",
            priority = 660,
            text = "Travel to The Rolling Plains.",
            route = {
                Point(MAP.MULGORE, 0.6001, 0.7062, "The Rolling Plains",
                    "Travel to The Rolling Plains."),
            },
        },
        {
            id = "objective-761-swoop-hunting",
            kind = "objective",
            priority = 670,
            text = "Kill any Swoop for 8 Trophy Swoop Quill in The Rolling Plains.",
            dependsOn = { "accept-761-swoop-hunting" },
            complete = QuestState(761, "complete"),
            route = {
                Point(MAP.MULGORE, 0.5000, 0.6940, "Continue toward Swoop Hunting",
                    "Continue toward Swoop Hunting."),
                Point(MAP.MULGORE, 0.5540, 0.7080, "Continue toward Swoop Hunting",
                    "Continue toward Swoop Hunting."),
                Point(MAP.MULGORE, 0.5660, 0.6240, "Continue toward Swoop Hunting",
                    "Continue toward Swoop Hunting."),
                Point(MAP.MULGORE, 0.5420, 0.5860, "Continue toward Swoop Hunting",
                    "Continue toward Swoop Hunting."),
                Point(MAP.MULGORE, 0.5040, 0.6600, "Wiry Swoop",
                    "Travel to Wiry Swoop."),
            },
        },
        {
            id = "objective-766-4-swoop-gizzard",
            kind = "objective",
            priority = 680,
            text = "Kill any Wiry Swoop until you find Swoop Gizzard.",
            dependsOn = { "accept-766-mazzranache" },
            complete = QuestObjective(766, 4),
            route = {
                Point(MAP.MULGORE, 0.5000, 0.6940, "Continue toward Swoop Gizzard",
                    "Continue toward Swoop Gizzard."),
                Point(MAP.MULGORE, 0.5540, 0.7080, "Continue toward Swoop Gizzard",
                    "Continue toward Swoop Gizzard."),
                Point(MAP.MULGORE, 0.5660, 0.6240, "Continue toward Swoop Gizzard",
                    "Continue toward Swoop Gizzard."),
                Point(MAP.MULGORE, 0.5420, 0.5860, "Continue toward Swoop Gizzard",
                    "Continue toward Swoop Gizzard."),
                Point(MAP.MULGORE, 0.5040, 0.6600, "Wiry Swoop",
                    "Travel to Wiry Swoop."),
            },
        },
        {
            id = "objective-743-dangers-of-the-windfury",
            kind = "objective",
            priority = 690,
            text = "Kill Windfury Harpy and collect 8 Windfury Talon in The Rolling Plains.",
            dependsOn = { "accept-743-dangers-of-the-windfury" },
            complete = QuestState(743, "complete"),
            route = {
                Point(MAP.MULGORE, 0.6620, 0.6813, "Windfury Harpy",
                    "Travel to Windfury Harpy."),
            },
        },
        {
            id = "objective-766-2-flatland-cougar-femur",
            kind = "objective",
            priority = 700,
            text = "Kill any Flatland Cougar until you find Flatland Cougar Femur in The Rolling Plains.",
            dependsOn = { "accept-766-mazzranache" },
            complete = QuestObjective(766, 2),
            route = {
                Point(MAP.MULGORE, 0.5911, 0.7151, "Flatland Cougar",
                    "Travel to Flatland Cougar."),
            },
        },
        {
            id = "objective-766-3-plainstrider-scale",
            kind = "objective",
            priority = 710,
            text = "Kill Adult Plainstrider until you find Plainstrider Scale in The Rolling Plains.",
            dependsOn = { "accept-766-mazzranache" },
            complete = QuestObjective(766, 3),
            route = {
                Point(MAP.MULGORE, 0.5440, 0.6480, "Adult Plainstrider",
                    "Travel to Adult Plainstrider."),
            },
        },
        {
            id = "accept-749-the-ravaged-caravan",
            kind = "accept",
            priority = 720,
            text = "Accept The Ravaged Caravan from Morin Cloudstalker in Ravaged Caravan.",
            complete = QuestState(749, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.5435, 0.6047, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "turnin-749-the-ravaged-caravan",
            kind = "turnin",
            priority = 730,
            text = "Turn in The Ravaged Caravan in Ravaged Caravan.",
            dependsOn = { "accept-749-the-ravaged-caravan" },
            complete = QuestState(749, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5376, 0.4828, "Ravaged Caravan",
                    "Travel to Ravaged Caravan."),
            },
        },
        {
            id = "accept-751-the-ravaged-caravan",
            kind = "accept",
            priority = 740,
            text = "Accept The Ravaged Caravan from Grawl in Ravaged Caravan.",
            complete = QuestState(751, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.5376, 0.4828, "Grawl",
                    "Travel to Grawl."),
            },
        },
        {
            id = "travel-754-bloodhoof-village",
            kind = "travel",
            priority = 750,
            text = "Travel to Bloodhoof Village.",
            route = {
                Point(MAP.MULGORE, 0.4747, 0.6026, "Bloodhoof Village",
                    "Travel to Bloodhoof Village."),
            },
        },
        {
            id = "turnin-743-dangers-of-the-windfury",
            kind = "turnin",
            priority = 760,
            text = "Turn in Dangers of the Windfury to Ruul Eagletalon in Bloodhoof Village.",
            dependsOn = { "objective-743-dangers-of-the-windfury" },
            complete = QuestState(743, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4733, 0.6194, "Ruul Eagletalon",
                    "Travel to Ruul Eagletalon."),
            },
        },
        {
            id = "turnin-748-poison-water",
            kind = "turnin",
            priority = 770,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Turn in Poison Water to Mull Thunderhorn in Bloodhoof Village.",
            dependsOn = { "objective-748-poison-water" },
            complete = QuestState(748, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-754-winterhoof-cleansing",
            kind = "accept",
            priority = 780,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Accept Winterhoof Cleansing from Mull Thunderhorn in Bloodhoof Village.",
            complete = QuestState(754, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "turnin-761-swoop-hunting",
            kind = "turnin",
            priority = 790,
            text = "Turn in Swoop Hunting to Harken Windtotem in Bloodhoof Village.",
            dependsOn = { "objective-761-swoop-hunting" },
            complete = QuestState(761, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4869, 0.5940, "Harken Windtotem",
                    "Travel to Harken Windtotem."),
            },
        },
        {
            id = "turnin-771-rite-of-vision",
            kind = "turnin",
            priority = 800,
            text = "Turn in Rite of Vision to Zarlman Two-Moons in Bloodhoof Village.",
            dependsOn = { "objective-771-2-ambercorn", "objective-771-1-well-stone" },
            complete = QuestState(771, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4777, 0.5758, "Zarlman Two-Moons",
                    "Travel to Zarlman Two-Moons."),
            },
        },
        {
            id = "accept-772-rite-of-vision",
            kind = "accept",
            priority = 810,
            text = "Accept Rite of Vision from Zarlman Two-Moons in Bloodhoof Village.",
            complete = QuestState(772, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4777, 0.5758, "Zarlman Two-Moons",
                    "Travel to Zarlman Two-Moons."),
            },
        },
        {
            id = "turnin-766-mazzranache",
            kind = "turnin",
            priority = 820,
            text = "Turn in Mazzranache to Maur Raincaller in Bloodhoof Village.",
            dependsOn = { "objective-766-1-flatland-cougar-femur", "objective-766-4-swoop-gizzard", "objective-766-2-flatland-cougar-femur", "objective-766-3-plainstrider-scale" },
            complete = QuestState(766, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4705, 0.5707, "Maur Raincaller",
                    "Travel to Maur Raincaller."),
            },
        },
        {
            id = "turnin-745-sharing-the-land",
            kind = "turnin",
            priority = 830,
            text = "Turn in Sharing the Land to Baine Bloodhoof in Bloodhoof Village.",
            dependsOn = { "objective-745-sharing-the-land" },
            complete = QuestState(745, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4747, 0.6026, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-746-dwarven-digging",
            kind = "accept",
            priority = 840,
            text = "Accept Dwarven Digging from Baine Bloodhoof in Bloodhoof Village.",
            complete = QuestState(746, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4747, 0.6026, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "turnin-751-the-ravaged-caravan",
            kind = "turnin",
            priority = 850,
            text = "Turn in The Ravaged Caravan to Morin Cloudstalker in Mulgore.",
            dependsOn = { "accept-751-the-ravaged-caravan" },
            complete = QuestState(751, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5641, 0.6124, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "accept-764-the-venture-co",
            kind = "accept",
            priority = 860,
            text = "Accept The Venture Co. from Morin Cloudstalker in Mulgore.",
            complete = QuestState(764, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.5641, 0.6124, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "accept-765-supervisor-fizsprocket",
            kind = "accept",
            priority = 870,
            text = "Accept Supervisor Fizsprocket from Morin Cloudstalker in Mulgore.",
            complete = QuestState(765, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.5641, 0.6124, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "objective-754-winterhoof-cleansing",
            kind = "objective",
            priority = 880,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Use the Winterhoof Cleansing Totem at the well south of town in Winterhoof Water Well.",
            dependsOn = { "accept-754-winterhoof-cleansing" },
            complete = QuestState(754, "complete"),
            route = {
                Point(MAP.MULGORE, 0.5379, 0.6610, "Winterhoof Water Well",
                    "Travel to Winterhoof Water Well."),
            },
        },
        {
            id = "travel-756-bloodhoof-village",
            kind = "travel",
            priority = 890,
            text = "Travel to Bloodhoof Village.",
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Bloodhoof Village",
                    "Travel to Bloodhoof Village."),
            },
        },
        {
            id = "turnin-754-winterhoof-cleansing",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Turn in Winterhoof Cleansing to Mull Thunderhorn in Bloodhoof Village.",
            dependsOn = { "objective-754-winterhoof-cleansing" },
            complete = QuestState(754, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-756-thunderhorn-totem",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Accept Thunderhorn Totem from Mull Thunderhorn in Bloodhoof Village.",
            complete = QuestState(756, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "objective-773-water-of-the-seers",
            kind = "objective",
            priority = 920,
            text = "Use Water of the Seers.",
            dependsOn = { "accept-773-rite-of-wisdom" },
            complete = QuestState(773, "complete"),
        },
        {
            id = "objective-746-dwarven-digging",
            kind = "objective",
            priority = 930,
            text = "Kill Bael'dun Digger for 5 Prospector's Pick, then break them using Prospector's Pick next to the forge in Bael'dun Digsite.",
            dependsOn = { "accept-746-dwarven-digging" },
            complete = QuestState(746, "complete"),
            route = {
                Point(MAP.MULGORE, 0.3121, 0.4987, "Bael'dun Digger",
                    "Travel to Bael'dun Digger."),
            },
        },
        {
            id = "turnin-772-rite-of-vision",
            kind = "turnin",
            priority = 940,
            text = "Turn in Rite of Vision.",
            dependsOn = { "accept-772-rite-of-vision" },
            complete = QuestState(772, "completed"),
            route = {
                Point(MAP.MULGORE, 0.3270, 0.3600, "Rite of Vision",
                    "Travel to Rite of Vision."),
            },
        },
        {
            id = "accept-773-rite-of-wisdom",
            kind = "accept",
            priority = 950,
            text = "Accept Rite of Wisdom from Seer Wiserunner in Mulgore.",
            complete = QuestState(773, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.3277, 0.3613, "Seer Wiserunner",
                    "Travel to Seer Wiserunner."),
            },
        },
        {
            id = "travel-833-red-rocks",
            kind = "travel",
            priority = 960,
            text = "Travel to Red Rocks.",
            route = {
                Point(MAP.MULGORE, 0.5990, 0.2556, "Red Rocks",
                    "Travel to Red Rocks."),
            },
        },
        {
            id = "accept-833-a-sacred-burial",
            kind = "accept",
            priority = 970,
            text = "Accept A Sacred Burial from Lorekeeper Raintotem in Red Rocks.",
            complete = QuestState(833, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.5990, 0.2556, "Lorekeeper Raintotem",
                    "Travel to Lorekeeper Raintotem."),
            },
        },
        {
            id = "objective-833-a-sacred-burial",
            kind = "objective",
            priority = 980,
            text = "Kill 8 Bristleback Interlopers at Red Rocks.",
            dependsOn = { "accept-833-a-sacred-burial" },
            complete = QuestState(833, "complete"),
            route = {
                Point(MAP.MULGORE, 0.6000, 0.2600, "A Sacred Burial",
                    "Travel to A Sacred Burial."),
            },
        },
        {
            id = "turnin-773-rite-of-wisdom",
            kind = "turnin",
            priority = 990,
            text = "Turn in Rite of Wisdom to Ancestral Spirit in Red Rocks.",
            dependsOn = { "objective-773-water-of-the-seers" },
            complete = QuestState(773, "completed"),
            route = {
                Point(MAP.MULGORE, 0.6154, 0.2100, "Ancestral Spirit",
                    "Travel to Ancestral Spirit."),
            },
        },
        {
            id = "accept-775-journey-into-thunder-bluff",
            kind = "accept",
            priority = 1000,
            text = "Accept Journey into Thunder Bluff from Ancestral Spirit in Red Rocks.",
            complete = QuestState(775, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.6154, 0.2100, "Ancestral Spirit",
                    "Travel to Ancestral Spirit."),
            },
        },
        {
            id = "turnin-833-a-sacred-burial",
            kind = "turnin",
            priority = 1010,
            text = "Turn in A Sacred Burial to Lorekeeper Raintotem in Red Rocks.",
            dependsOn = { "objective-833-a-sacred-burial" },
            complete = QuestState(833, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5990, 0.2553, "Lorekeeper Raintotem",
                    "Travel to Lorekeeper Raintotem."),
            },
        },
        {
            id = "objective-756-thunderhorn-totem",
            kind = "objective",
            priority = 1020,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Kill Prairie Stalker for Stalker Claws and Flatland Cougar for their Cougar Claws all over the plains south of Thunder Bluff.",
            dependsOn = { "accept-756-thunderhorn-totem" },
            complete = QuestState(756, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4328, 0.4081, "Prairie Stalker",
                    "Travel to Prairie Stalker."),
            },
        },
        {
            id = "travel-861-bloodhoof-village",
            kind = "travel",
            priority = 1030,
            text = "Travel to Bloodhoof Village.",
            route = {
                Point(MAP.MULGORE, 0.4678, 0.6017, "Bloodhoof Village",
                    "Travel to Bloodhoof Village."),
            },
        },
        {
            id = "accept-861-the-hunter-s-way",
            kind = "accept",
            priority = 1040,
            text = "Accept The Hunter's Way from Skorn Whitecloud in Bloodhoof Village.",
            complete = QuestState(861, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4678, 0.6017, "Skorn Whitecloud",
                    "Travel to Skorn Whitecloud."),
            },
        },
        {
            id = "turnin-756-thunderhorn-totem",
            kind = "turnin",
            priority = 1050,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Turn in Thunderhorn Totem to Mull Thunderhorn in Bloodhoof Village.",
            dependsOn = { "objective-756-thunderhorn-totem" },
            complete = QuestState(756, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "turnin-746-dwarven-digging",
            kind = "turnin",
            priority = 1060,
            text = "Turn in Dwarven Digging to Baine Bloodhoof in Bloodhoof Village.",
            dependsOn = { "objective-746-dwarven-digging" },
            complete = QuestState(746, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4747, 0.6026, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-758-thunderhorn-cleansing",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Accept Thunderhorn Cleansing from Mull Thunderhorn in Bloodhoof Village.",
            complete = QuestState(758, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-2984-call-of-fire",
            kind = "accept",
            priority = 1080,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Accept Call of Fire from Narm Skychaser in Bloodhoof Village.",
            complete = QuestState(2984, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4839, 0.5915, "Narm Skychaser",
                    "Travel to Narm Skychaser."),
            },
        },
        {
            id = "accept-6061-taming-the-beast",
            kind = "accept",
            priority = 1090,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Accept Taming the Beast from Yaw Sharpmane in Bloodhoof Village.",
            complete = QuestState(6061, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4776, 0.5564, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "objective-6061-taming-the-beast",
            kind = "objective",
            priority = 1100,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Use the Taming Rod to tame an Adult Plainstrider in Thunderhorn Water Well.",
            dependsOn = { "accept-6061-taming-the-beast" },
            complete = QuestState(6061, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4595, 0.4431, "Adult Plainstrider",
                    "Travel to Adult Plainstrider."),
            },
        },
        {
            id = "turnin-6061-taming-the-beast",
            kind = "turnin",
            priority = 1110,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Turn in Taming the Beast to Yaw Sharpmane in Bloodhoof Village.",
            dependsOn = { "objective-6061-taming-the-beast" },
            complete = QuestState(6061, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4772, 0.5564, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "accept-6087-taming-the-beast",
            kind = "accept",
            priority = 1120,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Accept Taming the Beast from Yaw Sharpmane in Bloodhoof Village.",
            complete = QuestState(6087, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4772, 0.5564, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "objective-6087-taming-the-beast",
            kind = "objective",
            priority = 1130,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Use the Taming Rod to tame an Prairie Stalker in Mulgore.",
            dependsOn = { "accept-6087-taming-the-beast" },
            complete = QuestState(6087, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4439, 0.5374, "Prairie Stalker",
                    "Travel to Prairie Stalker."),
            },
        },
        {
            id = "turnin-6087-taming-the-beast",
            kind = "turnin",
            priority = 1140,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Turn in Taming the Beast to Yaw Sharpmane in Bloodhoof Village.",
            dependsOn = { "objective-6087-taming-the-beast" },
            complete = QuestState(6087, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4779, 0.5567, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "accept-6088-taming-the-beast",
            kind = "accept",
            priority = 1150,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Accept Taming the Beast from Yaw Sharpmane in Bloodhoof Village.",
            complete = QuestState(6088, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4779, 0.5567, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "objective-6088-taming-the-beast",
            kind = "objective",
            priority = 1160,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Use the Taming Rod to tame an Swoop in Mulgore.",
            dependsOn = { "accept-6088-taming-the-beast" },
            complete = QuestState(6088, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4319, 0.5222, "Swoop",
                    "Travel to Swoop."),
            },
        },
        {
            id = "turnin-6088-taming-the-beast",
            kind = "turnin",
            priority = 1170,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Turn in Taming the Beast to Yaw Sharpmane in Bloodhoof Village.",
            dependsOn = { "objective-6088-taming-the-beast" },
            complete = QuestState(6088, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4782, 0.5564, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "accept-6089-training-the-beast",
            kind = "accept",
            priority = 1180,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Accept Training the Beast from Yaw Sharpmane in Bloodhoof Village.",
            complete = QuestState(6089, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4782, 0.5564, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "accept-5927-heeding-the-call",
            kind = "accept",
            priority = 1190,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Accept Heeding the Call from Gennia Runetotem in Bloodhoof Village.",
            complete = QuestState(5927, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4840, 0.5960, "Gennia Runetotem",
                    "Travel to Gennia Runetotem."),
            },
        },
        {
            id = "travel-758-thunderhorn-water-well",
            kind = "travel",
            priority = 1200,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Travel to Thunderhorn Water Well.",
            route = {
                Point(MAP.MULGORE, 0.4446, 0.4559, "Thunderhorn Water Well",
                    "Travel to Thunderhorn Water Well."),
            },
        },
        {
            id = "objective-758-thunderhorn-cleansing",
            kind = "objective",
            priority = 1210,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Use the Thunderhorn Cleansing Totem at the Thunderhorn Water Well.",
            dependsOn = { "accept-758-thunderhorn-cleansing" },
            complete = QuestState(758, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4446, 0.4559, "Thunderhorn Water Well",
                    "Travel to Thunderhorn Water Well."),
            },
        },
        {
            id = "travel-744-thunder-bluff",
            kind = "travel",
            priority = 1220,
            text = "Travel to Thunder Bluff.",
            route = {
                Point(MAP.THUNDER_BLUFF, 0.3760, 0.6010, "Thunder Bluff",
                    "Travel to Thunder Bluff."),
            },
        },
        {
            id = "accept-744-preparation-for-ceremony",
            kind = "accept",
            priority = 1230,
            text = "Accept Preparation for Ceremony from Eyahn Eagletalon in Thunder Bluff.",
            complete = QuestState(744, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.3779, 0.5990, "Eyahn Eagletalon",
                    "Travel to Eyahn Eagletalon."),
            },
        },
        {
            id = "turnin-6089-training-the-beast",
            kind = "turnin",
            priority = 1240,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 6 },
                },
            },
            text = "Turn in Training the Beast to Holt Thunderhorn in Hunter Rise.",
            dependsOn = { "accept-6089-training-the-beast" },
            complete = QuestState(6089, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5743, 0.8936, "Holt Thunderhorn",
                    "Travel to Holt Thunderhorn."),
            },
        },
        {
            id = "turnin-775-journey-into-thunder-bluff",
            kind = "turnin",
            priority = 1250,
            text = "Turn in Journey into Thunder Bluff to Cairne Bloodhoof in Thunder Bluff.",
            dependsOn = { "accept-775-journey-into-thunder-bluff" },
            complete = QuestState(775, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5021, 0.6194, "Continue toward Journey into Thunder Bluff",
                    "Continue toward Journey into Thunder Bluff."),
                Point(MAP.THUNDER_BLUFF, 0.5691, 0.5467, "Continue toward Journey into Thunder Bluff",
                    "Continue toward Journey into Thunder Bluff."),
                Point(MAP.THUNDER_BLUFF, 0.5991, 0.5178, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "accept-776-rites-of-the-earthmother",
            kind = "accept",
            priority = 1260,
            text = "Accept Rites of the Earthmother from Cairne Bloodhoof in Thunder Bluff.",
            complete = QuestState(776, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5991, 0.5178, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "turnin-5927-heeding-the-call",
            kind = "turnin",
            priority = 1270,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Turn in Heeding the Call to Turak Runetotem in Elder Rise.",
            dependsOn = { "accept-5927-heeding-the-call" },
            complete = QuestState(5927, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7660, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem."),
            },
        },
        {
            id = "accept-5922-moonglade",
            kind = "accept",
            priority = 1280,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Accept Moonglade from Turak Runetotem in Elder Rise.",
            complete = QuestState(5922, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7660, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem."),
            },
        },
        {
            id = "travel-5930-nighthaven",
            kind = "travel",
            priority = 1290,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Use Teleport: Moonglade to get to Nighthaven in Moonglade.",
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5623, 0.3060, "Nighthaven",
                    "Travel to Nighthaven."),
            },
        },
        {
            id = "turnin-5922-moonglade",
            kind = "turnin",
            priority = 1300,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Turn in Moonglade to Dendrite Starblaze in Nighthaven.",
            dependsOn = { "accept-5922-moonglade" },
            complete = QuestState(5922, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5623, 0.3060, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "accept-5930-great-bear-spirit",
            kind = "accept",
            priority = 1310,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Accept Great Bear Spirit from Dendrite Starblaze in Nighthaven.",
            complete = QuestState(5930, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5623, 0.3060, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "objective-5930-1-great-bear-spirit",
            kind = "objective",
            priority = 1320,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Speak to Great Bear Spirit in Moonglade.",
            dependsOn = { "accept-5930-great-bear-spirit" },
            complete = QuestObjective(5930, 1),
            route = {
                Point(MAP.MOONGLADE, 0.3909, 0.2754, "Great Bear Spirit",
                    "Travel to Great Bear Spirit."),
            },
        },
        {
            id = "turnin-5930-great-bear-spirit",
            kind = "turnin",
            priority = 1330,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Turn in Great Bear Spirit to Dendrite Starblaze in Nighthaven.",
            dependsOn = { "objective-5930-1-great-bear-spirit" },
            complete = QuestState(5930, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5623, 0.3060, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "accept-5932-back-to-thunder-bluff",
            kind = "accept",
            priority = 1340,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Accept Back to Thunder Bluff from Dendrite Starblaze in Nighthaven.",
            complete = QuestState(5932, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5623, 0.3061, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "travel-thunder-bluff",
            kind = "travel",
            priority = 1350,
            text = "Fly to Thunder Bluff.",
            route = {
                Point(MAP.MOONGLADE, 0.4434, 0.4578, "Bunthen Plainswind",
                    "Travel to Bunthen Plainswind."),
            },
        },
        {
            id = "turnin-5932-back-to-thunder-bluff",
            kind = "turnin",
            priority = 1360,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Turn in Back to Thunder Bluff to Turak Runetotem in Elder Rise.",
            dependsOn = { "accept-5932-back-to-thunder-bluff" },
            complete = QuestState(5932, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7660, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem."),
            },
        },
        {
            id = "accept-6002-body-and-heart",
            kind = "accept",
            priority = 1370,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Accept Body and Heart from Turak Runetotem in Elder Rise.",
            complete = QuestState(6002, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7660, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem."),
            },
        },
        {
            id = "travel-861-the-golden-plains",
            kind = "travel",
            priority = 1380,
            text = "Travel to The Golden Plains.",
            route = {
                Point(MAP.MULGORE, 0.5411, 0.3375, "The Golden Plains",
                    "Travel to The Golden Plains."),
            },
        },
        {
            id = "objective-861-the-hunter-s-way",
            kind = "objective",
            priority = 1390,
            text = "Kill Flatland Prowler and collect 4 Flatland Prowler Claw in The Golden Plains.",
            dependsOn = { "accept-861-the-hunter-s-way" },
            complete = QuestState(861, "complete"),
            route = {
                Point(MAP.MULGORE, 0.5411, 0.3375, "Flatland Prowler",
                    "Travel to Flatland Prowler."),
            },
        },
        {
            id = "travel-765-the-venture-co-mine",
            kind = "travel",
            priority = 1400,
            text = "Travel to The Venture Co. Mine.",
            route = {
                Point(MAP.MULGORE, 0.6143, 0.4728, "The Venture Co. Mine",
                    "Travel to The Venture Co. Mine."),
            },
        },
        {
            id = "objective-765-supervisor-fizsprocket",
            kind = "objective",
            priority = 1410,
            text = "Kill Supervisor Fizsprocket inside The Venture Co. Mine.",
            dependsOn = { "accept-765-supervisor-fizsprocket" },
            complete = QuestState(765, "complete"),
            route = {
                Point(MAP.MULGORE, 0.6143, 0.4728, "Continue toward Supervisor Fizsprocket",
                    "Continue toward Supervisor Fizsprocket."),
                Point(MAP.MULGORE, 0.6437, 0.4423, "Supervisor Fizsprocket",
                    "Travel to Supervisor Fizsprocket."),
            },
        },
        {
            id = "objective-764-the-venture-co",
            kind = "objective",
            priority = 1420,
            text = "Kill 14 Venture Co. Worker and 6 Venture Co. Supervisor around and in The Venture Co. Mine.",
            dependsOn = { "accept-764-the-venture-co" },
            complete = QuestState(764, "complete"),
            route = {
                Point(MAP.MULGORE, 0.6000, 0.4500, "Venture Co. Worker",
                    "Travel to Venture Co. Worker."),
            },
        },
        {
            id = "objective-776-rites-of-the-earthmother",
            kind = "objective",
            priority = 1430,
            text = "Find and kill a kodo Arra'chea east of Thunder Bluff in The Golden Plains.",
            dependsOn = { "accept-776-rites-of-the-earthmother" },
            complete = QuestState(776, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4900, 0.1900, "Continue toward Rites of the Earthmother",
                    "Continue toward Rites of the Earthmother."),
                Point(MAP.MULGORE, 0.5200, 0.1000, "Continue toward Rites of the Earthmother",
                    "Continue toward Rites of the Earthmother."),
                Point(MAP.MULGORE, 0.5400, 0.3500, "Arra'chea",
                    "Travel to Arra'chea."),
            },
        },
        {
            id = "travel-6002-southern-barrens",
            kind = "travel",
            priority = 1440,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Travel to Southern Barrens.",
            route = {
                Point(MAP.BARRENS, 0.4200, 0.6084, "Southern Barrens",
                    "Travel to Southern Barrens."),
            },
        },
        {
            id = "objective-6002-body-and-heart",
            kind = "objective",
            priority = 1450,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Use the Cenarion Lunardust on the Moonkin Stone between Mulgore and the Barrens to summon Turak Runetotem in Southern Barrens.",
            dependsOn = { "accept-6002-body-and-heart" },
            complete = QuestState(6002, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4200, 0.6084, "Turak Runetotem",
                    "Travel to Turak Runetotem."),
            },
        },
        {
            id = "travel-759-bloodhoof-village",
            kind = "travel",
            priority = 1460,
            text = "Travel to Bloodhoof Village.",
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Bloodhoof Village",
                    "Travel to Bloodhoof Village."),
            },
        },
        {
            id = "turnin-758-thunderhorn-cleansing",
            kind = "turnin",
            priority = 1470,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Turn in Thunderhorn Cleansing to Mull Thunderhorn in Bloodhoof Village.",
            dependsOn = { "objective-758-thunderhorn-cleansing" },
            complete = QuestState(758, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-759-wildmane-totem",
            kind = "accept",
            priority = 1480,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Accept Wildmane Totem from Mull Thunderhorn in Bloodhoof Village.",
            complete = QuestState(759, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4850, 0.6046, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "turnin-764-the-venture-co",
            kind = "turnin",
            priority = 1490,
            text = "Turn in The Venture Co. to Morin Cloudstalker in Mulgore.",
            dependsOn = { "objective-764-the-venture-co" },
            complete = QuestState(764, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5641, 0.6124, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "turnin-765-supervisor-fizsprocket",
            kind = "turnin",
            priority = 1500,
            text = "Turn in Supervisor Fizsprocket to Morin Cloudstalker in Mulgore.",
            dependsOn = { "objective-765-supervisor-fizsprocket" },
            complete = QuestState(765, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5641, 0.6124, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "travel-759-windfury-ridge",
            kind = "travel",
            priority = 1510,
            text = "Travel to Windfury Ridge.",
            route = {
                Point(MAP.MULGORE, 0.5176, 0.0546, "Windfury Ridge",
                    "Travel to Windfury Ridge."),
            },
        },
        {
            id = "objective-759-wildmane-totem",
            kind = "objective",
            priority = 1520,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Kill Prairie Wolf Alpha around for 8 Prairie Alpha Tooth.",
            dependsOn = { "accept-759-wildmane-totem" },
            complete = QuestState(759, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4170, 0.0807, "Continue toward Wildmane Totem",
                    "Continue toward Wildmane Totem."),
                Point(MAP.MULGORE, 0.5081, 0.1466, "Continue toward Wildmane Totem",
                    "Continue toward Wildmane Totem."),
                Point(MAP.MULGORE, 0.5055, 0.0943, "Prairie Wolf Alpha",
                    "Travel to Prairie Wolf Alpha."),
            },
        },
        {
            id = "objective-744-preparation-for-ceremony",
            kind = "objective",
            priority = 1530,
            text = "Kill Windfury Sorceress for 6 Azure Feather and Windfury Matriarch for 6 Bronze Feather.",
            dependsOn = { "accept-744-preparation-for-ceremony" },
            complete = QuestState(744, "complete"),
            route = {
                Point(MAP.MULGORE, 0.3766, 0.0993, "Windfury Sorceress",
                    "Travel to Windfury Sorceress."),
            },
        },
        {
            id = "travel-886-elder-rise",
            kind = "travel",
            priority = 1540,
            text = "Travel to Elder Rise in Thunder Bluff.",
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7844, 0.2891, "Elder Rise",
                    "Travel to Elder Rise."),
            },
        },
        {
            id = "turnin-6002-body-and-heart",
            kind = "turnin",
            priority = 1550,
            conditions = {
                all = {
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Turn in Body and Heart to Turak Runetotem in Elder Rise.",
            dependsOn = { "objective-6002-body-and-heart" },
            complete = QuestState(6002, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7660, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem."),
            },
        },
        {
            id = "accept-886-the-barrens-oases",
            kind = "accept",
            priority = 1560,
            text = "Accept The Barrens Oases from Archdruid Hamuul Runetotem in Elder Rise.",
            complete = QuestState(886, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7844, 0.2891, "Archdruid Hamuul Runetotem",
                    "Travel to Archdruid Hamuul Runetotem."),
            },
        },
        {
            id = "turnin-776-rites-of-the-earthmother",
            kind = "turnin",
            priority = 1570,
            text = "Turn in Rites of the Earthmother to Cairne Bloodhoof in Mulgore.",
            dependsOn = { "objective-776-rites-of-the-earthmother" },
            complete = QuestState(776, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5991, 0.5178, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "turnin-861-the-hunter-s-way",
            kind = "turnin",
            priority = 1580,
            text = "Turn in The Hunter's Way to Melor Stonehoof in Hunter Rise.",
            dependsOn = { "objective-861-the-hunter-s-way" },
            complete = QuestState(861, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6133, 0.8049, "Melor Stonehoof",
                    "Travel to Melor Stonehoof."),
            },
        },
        {
            id = "accept-860-sergra-darkthorn",
            kind = "accept",
            priority = 1590,
            text = "Accept Sergra Darkthorn from Melor Stonehoof in Hunter Rise.",
            complete = QuestState(860, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6133, 0.8049, "Melor Stonehoof",
                    "Travel to Melor Stonehoof."),
            },
        },
        {
            id = "turnin-744-preparation-for-ceremony",
            kind = "turnin",
            priority = 1600,
            text = "Turn in Preparation for Ceremony to Eyahn Eagletalon in Thunder Bluff.",
            dependsOn = { "objective-744-preparation-for-ceremony" },
            complete = QuestState(744, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.3794, 0.5981, "Eyahn Eagletalon",
                    "Travel to Eyahn Eagletalon."),
            },
        },
        {
            id = "travel-760-bloodhoof-village",
            kind = "travel",
            priority = 1610,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Travel to Bloodhoof Village.",
            route = {
                Point(MAP.MULGORE, 0.4848, 0.6048, "Bloodhoof Village",
                    "Travel to Bloodhoof Village."),
            },
        },
        {
            id = "turnin-759-wildmane-totem",
            kind = "turnin",
            priority = 1620,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Turn in Wildmane Totem to Mull Thunderhorn in Bloodhoof Village.",
            dependsOn = { "objective-759-wildmane-totem" },
            complete = QuestState(759, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4848, 0.6048, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-760-wildmane-cleansing",
            kind = "accept",
            priority = 1630,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Accept Wildmane Cleansing from Mull Thunderhorn in Bloodhoof Village.",
            complete = QuestState(760, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4848, 0.6048, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "travel-760-wildmane-water-well",
            kind = "travel",
            priority = 1640,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Travel to Wildmane Water Well.",
            route = {
                Point(MAP.MULGORE, 0.4267, 0.1442, "Wildmane Water Well",
                    "Travel to Wildmane Water Well."),
            },
        },
        {
            id = "objective-760-wildmane-cleansing",
            kind = "objective",
            priority = 1650,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Use the Wildmane Cleansing Totem in Wildmane Water Well.",
            dependsOn = { "accept-760-wildmane-cleansing" },
            complete = QuestState(760, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4267, 0.1442, "Wildmane Water Well",
                    "Travel to Wildmane Water Well."),
            },
        },
        {
            id = "travel-bloodhoof-village-2",
            kind = "travel",
            priority = 1660,
            text = "Travel to Bloodhoof Village.",
            route = {
                Point(MAP.MULGORE, 0.4848, 0.6048, "Bloodhoof Village",
                    "Travel to Bloodhoof Village."),
            },
        },
        {
            id = "turnin-760-wildmane-cleansing",
            kind = "turnin",
            priority = 1670,
            conditions = {
                all = {
                    { race = 6 },
                },
            },
            text = "Turn in Wildmane Cleansing to Mull Thunderhorn in Bloodhoof Village.",
            dependsOn = { "objective-760-wildmane-cleansing" },
            complete = QuestState(760, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4846, 0.6046, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
    },
})
