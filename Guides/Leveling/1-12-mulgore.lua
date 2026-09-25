local _, ns = ...

-- Horde Era leveling route for Mulgore, levels 1-12.
-- Forever quests from the Mulgore and Thunder Bluff lists are woven into this route.
-- Left out: A Donation of Wool is a level 60 cloth turn-in. Never Coming Back and A Void Path are level 22.
-- Stalk With The Earthmother was already a class trial and is not a new quest.
-- Thunderhorn's Report stays on tauren, with the well chain. Fizsprocket's Notes appear only if the pages drop.
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
    title = "1-12 Mulgore",
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
            id = "accept-95805-grace-of-anshe-and-musha",
            kind = "accept",
            priority = 211,
            conditions = { level = { min = 4 } },
            text = "Accept Grace of An'she and Mu'sha from Seer Graytongue.",
            complete = QuestState(95805, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4260, 0.9200, "Seer Graytongue",
                    "Travel to Seer Graytongue."),
            },
        },
        {
            id = "objective-95805-grace-of-anshe-and-musha",
            kind = "objective",
            priority = 212,
            conditions = { level = { min = 4 } },
            useClientPin = true,
            text = "Carry the Smoldering Incense to the shrine of An'she and Mu'sha in the southeastern hills before it burns out. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "accept-95805-grace-of-anshe-and-musha" },
            complete = QuestState(95805, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5000, 0.8100, "Southeastern hills",
                    "Travel to Southeastern hills."),
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
            id = "accept-98430-the-longwalkers",
            kind = "accept",
            priority = 641,
            conditions = { level = { min = 8 } },
            text = "Accept The Longwalkers from Perith Stormhoof inside Palemane Rock.",
            complete = QuestState(98430, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.3300, 0.6580, "Perith Stormhoof",
                    "Travel to Perith Stormhoof."),
            },
        },
        {
            id = "objective-98430-the-longwalkers",
            kind = "objective",
            priority = 642,
            conditions = { level = { min = 8 } },
            text = "Escort Perith Stormhoof out of Palemane Rock.",
            dependsOn = { "accept-98430-the-longwalkers" },
            complete = QuestState(98430, "complete"),
            route = {
                Point(MAP.MULGORE, 0.3300, 0.6580, "Perith Stormhoof",
                    "Travel to Perith Stormhoof."),
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
                Point(MAP.MULGORE, 0.5416, 0.7243, "Palemane Tanner",
                    "Travel to Palemane Tanner."),
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
            id = "accept-99079-longwalker-malah",
            kind = "accept",
            priority = 1041,
            conditions = { level = { min = 9 } },
            text = "Accept Longwalker Malah from Brave Wildrunner in Bloodhoof Village.",
            complete = QuestState(99079, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4720, 0.5960, "Brave Wildrunner",
                    "Travel to Brave Wildrunner."),
            },
        },
        {
            id = "accept-99108-sparring-match",
            kind = "accept",
            priority = 1042,
            conditions = { level = { min = 6 } },
            text = "Accept Sparring Match from Krang Stonehoof in Bloodhoof Village.",
            complete = QuestState(99108, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4940, 0.6040, "Krang Stonehoof",
                    "Travel to Krang Stonehoof."),
            },
        },
        {
            id = "objective-99108-sparring-match",
            kind = "objective",
            priority = 1043,
            conditions = { level = { min = 6 } },
            text = "Win 3 duels, or defeat Novice Warriors, for Krang Stonehoof.",
            dependsOn = { "accept-99108-sparring-match" },
            complete = QuestState(99108, "complete"),
            route = {
                Point(MAP.MULGORE, 0.4940, 0.6040, "Krang Stonehoof",
                    "Travel to Krang Stonehoof."),
            },
        },
        {
            id = "turnin-99108-sparring-match",
            kind = "turnin",
            priority = 1044,
            conditions = { level = { min = 6 } },
            text = "Turn in Sparring Match to Krang Stonehoof in Bloodhoof Village.",
            dependsOn = { "objective-99108-sparring-match" },
            complete = QuestState(99108, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4940, 0.6040, "Krang Stonehoof",
                    "Travel to Krang Stonehoof."),
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
            id = "accept-96130-chakuyak",
            kind = "accept",
            priority = 1091,
            conditions = { level = { min = 8 } },
            text = "Accept Chakuyak from Yaw Sharpmane in Bloodhoof Village.",
            complete = QuestState(96130, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "objective-96130-chakuyak",
            kind = "objective",
            priority = 1092,
            conditions = { level = { min = 8 } },
            text = "Kill Chakuyak.",
            dependsOn = { "accept-96130-chakuyak" },
            complete = QuestState(96130, "complete"),
            route = {
                Point(MAP.MULGORE, 0.3940, 0.6520, "Chakuyak",
                    "Travel to Chakuyak."),
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
            id = "turnin-96130-chakuyak",
            kind = "turnin",
            priority = 1101,
            conditions = { level = { min = 8 } },
            text = "Turn in Chakuyak to Yaw Sharpmane in Bloodhoof Village.",
            dependsOn = { "objective-96130-chakuyak" },
            complete = QuestState(96130, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
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
                Point(MAP.THUNDER_BLUFF, 0.5991, 0.5178, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "turnin-98430-the-longwalkers",
            kind = "turnin",
            priority = 1251,
            conditions = { level = { min = 8 } },
            text = "Turn in The Longwalkers to Cairne Bloodhoof in Thunder Bluff.",
            dependsOn = { "objective-98430-the-longwalkers" },
            complete = QuestState(98430, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5980, 0.5160, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "accept-97485-traditions-of-the-bluff",
            kind = "accept",
            priority = 1252,
            text = "Accept Traditions of the Bluff from Eylah Sunhorn in Thunder Bluff.",
            complete = QuestState(97485, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.3820, 0.5620, "Eylah Sunhorn",
                    "Travel to Eylah Sunhorn."),
            },
        },
        {
            id = "objective-97485-traditions-of-the-bluff",
            kind = "objective",
            priority = 1253,
            text = "Buy a Bundle of Herbs from Nida, a Bundle of Cedar Twigs from Nata, Sinew Thread from Mahu, and Ceremonial Flint and Tinder from Naal. Combine them for Eylah Sunhorn.",
            dependsOn = { "accept-97485-traditions-of-the-bluff" },
            complete = QuestState(97485, "complete"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.3820, 0.5620, "Eylah Sunhorn",
                    "Travel to Eylah Sunhorn."),
            },
        },
        {
            id = "turnin-97485-traditions-of-the-bluff",
            kind = "turnin",
            priority = 1254,
            text = "Turn in Traditions of the Bluff to Eylah Sunhorn in Thunder Bluff.",
            dependsOn = { "objective-97485-traditions-of-the-bluff" },
            complete = QuestState(97485, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.3820, 0.5620, "Eylah Sunhorn",
                    "Travel to Eylah Sunhorn."),
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
            id = "objective-765-supervisor-fizsprocket",
            kind = "objective",
            priority = 1410,
            text = "Kill Supervisor Fizsprocket inside The Venture Co. Mine. If he drops Fizsprocket's Notes, use them.",
            dependsOn = { "accept-765-supervisor-fizsprocket" },
            complete = QuestState(765, "complete"),
            route = {
                Point(MAP.MULGORE, 0.6437, 0.4423, "Supervisor Fizsprocket",
                    "Travel to Supervisor Fizsprocket."),
            },
        },
        {
            id = "accept-98424-fizsprockets-notes",
            kind = "accept",
            priority = 1411,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            text = "Use Fizsprocket's Notes if Supervisor Fizsprocket drops them, then search the Venture Co. Mine for the operation pages.",
            complete = QuestState(98424, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.6440, 0.4360, "Venture Co. Mine",
                    "Travel to Venture Co. Mine."),
            },
        },
        {
            id = "objective-98424-fizsprockets-notes",
            kind = "objective",
            priority = 1412,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            useClientPin = true,
            text = "Collect the Venture Co. pages in the mine. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "accept-98424-fizsprockets-notes" },
            complete = QuestState(98424, "complete"),
            route = {
                Point(MAP.MULGORE, 0.6440, 0.4360, "Venture Co. Mine",
                    "Travel to Venture Co. Mine."),
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
                Point(MAP.MULGORE, 0.5400, 0.3500, "Arra'chea",
                    "Travel to Arra'chea."),
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
            id = "turnin-99079-longwalker-malah",
            kind = "turnin",
            priority = 1471,
            conditions = { level = { min = 9 } },
            text = "Turn in Longwalker Malah to Malah Longwind, east of Bloodhoof Village.",
            dependsOn = { "accept-99079-longwalker-malah" },
            complete = QuestState(99079, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5760, 0.6320, "Malah Longwind",
                    "Travel to Malah Longwind."),
            },
        },
        {
            id = "accept-99081-grim-tidings",
            kind = "accept",
            priority = 1472,
            conditions = { level = { min = 9 } },
            text = "Accept Grim Tidings from Malah Longwind.",
            dependsOn = { "turnin-99079-longwalker-malah" },
            complete = QuestState(99081, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.5760, 0.6320, "Malah Longwind",
                    "Travel to Malah Longwind."),
            },
        },
        {
            id = "turnin-99081-grim-tidings",
            kind = "turnin",
            priority = 1473,
            conditions = { level = { min = 9 } },
            text = "Turn in Grim Tidings to Brave Wildrunner in Bloodhoof Village.",
            dependsOn = { "accept-99081-grim-tidings" },
            complete = QuestState(99081, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4720, 0.5960, "Brave Wildrunner",
                    "Travel to Brave Wildrunner."),
            },
        },
        {
            id = "accept-99101-our-ancient-enemy",
            kind = "accept",
            priority = 1474,
            conditions = { level = { min = 9 } },
            text = "Accept Our Ancient Enemy from Brave Wildrunner in Bloodhoof Village.",
            dependsOn = { "turnin-99081-grim-tidings" },
            complete = QuestState(99101, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4720, 0.5960, "Brave Wildrunner",
                    "Travel to Brave Wildrunner."),
            },
        },
        {
            id = "turnin-99101-our-ancient-enemy",
            kind = "turnin",
            priority = 1475,
            conditions = { level = { min = 9 } },
            text = "Turn in Our Ancient Enemy to Baine Bloodhoof in Bloodhoof Village.",
            dependsOn = { "accept-99101-our-ancient-enemy" },
            complete = QuestState(99101, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4740, 0.6020, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-99080-drive-them-out",
            kind = "accept",
            priority = 1476,
            conditions = { level = { min = 9 } },
            text = "Accept Drive Them Out from Baine Bloodhoof in Bloodhoof Village.",
            dependsOn = { "turnin-99101-our-ancient-enemy" },
            complete = QuestState(99080, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4740, 0.6020, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
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
            id = "turnin-98424-fizsprockets-notes",
            kind = "turnin",
            priority = 1501,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Fizsprocket's Notes to Morin Cloudstalker.",
            dependsOn = { "objective-98424-fizsprockets-notes" },
            complete = QuestState(98424, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5300, 0.6020, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "accept-98427-ceasing-operations",
            kind = "accept",
            priority = 1502,
            conditions = {
                all = {
                    { level = { min = 12 } },
                    { quest = { id = 98424, state = "completed" } },
                },
            },
            text = "Accept Ceasing Operations from Morin Cloudstalker. This is an elite. Bring a group.",
            dependsOn = { "turnin-98424-fizsprockets-notes" },
            complete = QuestState(98427, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.5300, 0.6020, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "objective-98427-ceasing-operations",
            kind = "objective",
            priority = 1503,
            conditions = {
                all = {
                    { level = { min = 12 } },
                    { quest = { id = 98424, state = "completed" } },
                },
            },
            text = "Take the Clearcutter Key from the Venture Co. Clearclutter. This is an elite. Bring a group.",
            dependsOn = { "accept-98427-ceasing-operations" },
            complete = QuestState(98427, "complete"),
            route = {
                Point(MAP.MULGORE, 0.5700, 0.4300, "Venture Co. Clearclutter",
                    "Travel to Venture Co. Clearclutter."),
            },
        },
        {
            id = "turnin-98427-ceasing-operations",
            kind = "turnin",
            priority = 1504,
            conditions = {
                all = {
                    { level = { min = 12 } },
                    { quest = { id = 98424, state = "completed" } },
                },
            },
            text = "Turn in Ceasing Operations to Morin Cloudstalker.",
            dependsOn = { "objective-98427-ceasing-operations" },
            complete = QuestState(98427, "completed"),
            route = {
                Point(MAP.MULGORE, 0.5300, 0.6020, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "objective-99080-drive-them-out-1",
            kind = "objective",
            priority = 1505,
            conditions = { level = { min = 9 } },
            text = "Drive Them Out: kill 6 Galak Centaurs.",
            dependsOn = { "accept-99080-drive-them-out" },
            complete = QuestObjective(99080, 1),
            route = {
                Point(MAP.MULGORE, 0.6720, 0.5940, "Galak Centaur",
                    "Travel to Galak Centaur."),
            },
        },
        {
            id = "objective-99080-drive-them-out-2",
            kind = "objective",
            priority = 1506,
            conditions = { level = { min = 9 } },
            text = "Drive Them Out: kill 4 Galak Outrunners.",
            dependsOn = { "accept-99080-drive-them-out" },
            complete = QuestObjective(99080, 2),
            route = {
                Point(MAP.MULGORE, 0.6020, 0.6060, "Galak Outrunner",
                    "Travel to Galak Outrunner."),
            },
        },
        {
            id = "objective-99080-drive-them-out-3",
            kind = "objective",
            priority = 1507,
            conditions = { level = { min = 9 } },
            text = "Drive Them Out: bring Herak the Pillager's head.",
            dependsOn = { "accept-99080-drive-them-out" },
            complete = QuestObjective(99080, 3),
            route = {
                Point(MAP.MULGORE, 0.6040, 0.5980, "Herak the Pillager",
                    "Travel to Herak the Pillager."),
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
            id = "turnin-99080-drive-them-out",
            kind = "turnin",
            priority = 1531,
            conditions = { level = { min = 9 } },
            text = "Turn in Drive Them Out to Baine Bloodhoof in Bloodhoof Village.",
            dependsOn = { "objective-99080-drive-them-out-1", "objective-99080-drive-them-out-2", "objective-99080-drive-them-out-3" },
            complete = QuestState(99080, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4740, 0.6020, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-99082-the-high-chieftain",
            kind = "accept",
            priority = 1532,
            conditions = { level = { min = 9 } },
            text = "Accept The High Chieftain from Baine Bloodhoof.",
            dependsOn = { "turnin-99080-drive-them-out" },
            complete = QuestState(99082, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4740, 0.6020, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
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
            id = "turnin-99082-the-high-chieftain",
            kind = "turnin",
            priority = 1565,
            conditions = { level = { min = 9 } },
            text = "Turn in The High Chieftain to Cairne Bloodhoof.",
            dependsOn = { "accept-99082-the-high-chieftain" },
            complete = QuestState(99082, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5980, 0.5160, "Cairne Bloodhoof",
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
        {
            id = "accept-98435-thunderhorns-report",
            kind = "accept",
            priority = 1671,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { race = 6 },
                },
            },
            text = "Accept Thunderhorn's Report from Mull Thunderhorn. This step is for tauren.",
            dependsOn = { "turnin-760-wildmane-cleansing" },
            complete = QuestState(98435, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4840, 0.6040, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "turnin-98435-thunderhorns-report",
            kind = "turnin",
            priority = 1672,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { race = 6 },
                },
            },
            text = "Turn in Thunderhorn's Report to Arch Druid Hamuul Runetotem in Elder Rise. This step is for tauren.",
            dependsOn = { "accept-98435-thunderhorns-report" },
            complete = QuestState(98435, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7840, 0.2840, "Arch Druid Hamuul Runetotem",
                    "Travel to Arch Druid Hamuul Runetotem."),
            },
        },
    },
})
