local _, ns = ...

-- Horde Loremaster route for Mulgore.
-- This is a zone quest-completion guide, not a leveling route. It can be
-- followed while leveling, but the stops are there to finish the zone.
-- Quest list: https://www.wowhead.com/forever/quests/kalimdor/mulgore
-- Rules for the next zone: docs/zone-loremaster-guides.md
-- A camp's quests are picked up together. Chains still wait on the real turn-in.
-- Each objective is its own step and depends only on its accept.
-- Omitted from this run:
-- <UNUSED> (774) has no quest text.
-- Welcome! (5844) is the Collector's Edition gift voucher.
-- A Donation of Wool (99196) is a level 60 cloth donation with no giver pin.
-- The Thunderhorn well chain (748, 754, 756, 758, 759, 760, 98435),
-- The Hunter's Way (861), and Journey to the Crossroads (854) are tauren.
-- Other races still reach 100%.
-- Stalk With The Earthmother is a warrior or shaman trial (76156) and two shaman
-- follow-ups (76160, 76240). Other classes still reach 100%.
-- Attack on Camp Narache (781), The Demon Scarred Cloak (770), and Fizsprocket's
-- Notes (98424) appear only after the quest is in the log. Ceasing Operations
-- waits until those notes are turned in.
-- The water wells, Arra'chea, the An'she shrine, well stones, ambercorn, the
-- forge, the mine pages, and the blasting carts have no Wowhead pin.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    MULGORE = 1412,
    THUNDER_BLUFF = 1456,
    BARRENS = 1413,
}

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

ns:RegisterGuide({
    id = "leveling-mulgore",
    title = "Mulgore (Loremaster)",
    category = "Loremaster Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-752-a-humble-task",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept A Humble Task from Chief Hawkwind.",
            complete = QuestState(752, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.442, 0.760, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "accept-747-the-hunt-begins",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept The Hunt Begins from Grull Hawkwind.",
            complete = QuestState(747, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.448, 0.772, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-3376-break-sharptusk",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Break Sharptusk! from Brave Windfeather.",
            complete = QuestState(3376, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.448, 0.766, "Brave Windfeather",
                    "Travel to Brave Windfeather."),
            },
        },
        {
            id = "objective-747-the-hunt-begins-1",
            kind = "objective",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "The Hunt Begins: Plainstrider Meat.",
            dependsOn = { "accept-747-the-hunt-begins" },
            complete = QuestObjective(747, 1, "Plainstrider Meat"),
            route = {
                Point(MAP.MULGORE, 0.464, 0.780, "Plainstrider",
                    "Travel to Plainstrider."),
            },
        },
        {
            id = "objective-747-the-hunt-begins-2",
            kind = "objective",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "The Hunt Begins: Plainstrider Feather.",
            dependsOn = { "accept-747-the-hunt-begins" },
            complete = QuestObjective(747, 2, "Plainstrider Feather"),
            route = {
                Point(MAP.MULGORE, 0.464, 0.780, "Plainstrider",
                    "Travel to Plainstrider."),
            },
        },
        {
            id = "turnin-752-a-humble-task",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in A Humble Task to Greatmother Hawkwind.",
            dependsOn = { "accept-752-a-humble-task" },
            complete = QuestState(752, "completed"),
            route = {
                Point(MAP.MULGORE, 0.500, 0.810, "Greatmother Hawkwind",
                    "Travel to Greatmother Hawkwind."),
            },
        },
        {
            id = "accept-753-a-humble-task",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept A Humble Task from Greatmother Hawkwind.",
            dependsOn = { "turnin-752-a-humble-task" },
            complete = QuestState(753, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.500, 0.810, "Greatmother Hawkwind",
                    "Travel to Greatmother Hawkwind."),
            },
        },
        {
            id = "objective-753-a-humble-task-1",
            kind = "objective",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "A Humble Task: Water Pitcher. The pitcher is in the well beside Greatmother Hawkwind. Wowhead has no pitcher pin.",
            dependsOn = { "accept-753-a-humble-task" },
            complete = QuestObjective(753, 1, "Water Pitcher"),
            route = {
                Point(MAP.MULGORE, 0.500, 0.810, "Water well",
                    "Travel to Water well."),
            },
        },
        {
            id = "turnin-747-the-hunt-begins",
            kind = "turnin",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in The Hunt Begins to Grull Hawkwind.",
            dependsOn = { "objective-747-the-hunt-begins-1", "objective-747-the-hunt-begins-2" },
            complete = QuestState(747, "completed"),
            route = {
                Point(MAP.MULGORE, 0.448, 0.772, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "turnin-753-a-humble-task",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in A Humble Task to Chief Hawkwind.",
            dependsOn = { "objective-753-a-humble-task-1" },
            complete = QuestState(753, "completed"),
            route = {
                Point(MAP.MULGORE, 0.442, 0.760, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "accept-750-the-hunt-continues",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept The Hunt Continues from Grull Hawkwind.",
            dependsOn = { "turnin-747-the-hunt-begins" },
            complete = QuestState(750, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.448, 0.772, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-755-rites-of-the-earthmother",
            kind = "accept",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Rites of the Earthmother from Chief Hawkwind.",
            dependsOn = { "turnin-753-a-humble-task" },
            complete = QuestState(755, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.442, 0.760, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "objective-750-the-hunt-continues-1",
            kind = "objective",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "The Hunt Continues: Mountain Cougar Pelt.",
            dependsOn = { "accept-750-the-hunt-continues" },
            complete = QuestObjective(750, 1, "Mountain Cougar Pelt"),
            route = {
                Point(MAP.MULGORE, 0.436, 0.904, "Mountain Cougar",
                    "Travel to Mountain Cougar."),
            },
        },
        {
            id = "turnin-755-rites-of-the-earthmother",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Rites of the Earthmother to Seer Graytongue.",
            dependsOn = { "accept-755-rites-of-the-earthmother" },
            complete = QuestState(755, "completed"),
            route = {
                Point(MAP.MULGORE, 0.426, 0.920, "Seer Graytongue",
                    "Travel to Seer Graytongue."),
            },
        },
        {
            id = "accept-757-rite-of-strength",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Rite of Strength from Seer Graytongue.",
            dependsOn = { "turnin-755-rites-of-the-earthmother" },
            complete = QuestState(757, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.426, 0.920, "Seer Graytongue",
                    "Travel to Seer Graytongue."),
            },
        },
        {
            id = "accept-95805-grace-of-anshe-and-musha",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Grace of An'she and Mu'sha from Seer Graytongue.",
            complete = QuestState(95805, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.426, 0.920, "Seer Graytongue",
                    "Travel to Seer Graytongue."),
            },
        },
        {
            id = "objective-95805-grace-of-anshe-and-musha-1",
            kind = "objective",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Carry the Smoldering Incense to the shrine of An'she and Mu'sha before it burns out. The shrine is in the southeastern hills. Wowhead has no shrine pin, so this marks the well southeast of Camp Narache.",
            dependsOn = { "accept-95805-grace-of-anshe-and-musha" },
            complete = QuestState(95805, "completed"),
            route = {
                Point(MAP.MULGORE, 0.500, 0.810, "Southeastern hills",
                    "Travel to Southeastern hills."),
            },
        },
        {
            id = "turnin-750-the-hunt-continues",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in The Hunt Continues to Grull Hawkwind.",
            dependsOn = { "objective-750-the-hunt-continues-1" },
            complete = QuestState(750, "completed"),
            route = {
                Point(MAP.MULGORE, 0.448, 0.772, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "accept-780-the-battleboars",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept The Battleboars from Grull Hawkwind.",
            dependsOn = { "turnin-750-the-hunt-continues" },
            complete = QuestState(780, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.448, 0.772, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "objective-757-rite-of-strength-1",
            kind = "objective",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Rite of Strength: Bristleback Belt.",
            dependsOn = { "accept-757-rite-of-strength" },
            complete = QuestObjective(757, 1, "Bristleback Belt"),
            route = {
                Point(MAP.MULGORE, 0.642, 0.780, "Bristleback Quilboar",
                    "Travel to Bristleback Quilboar."),
            },
        },
        {
            id = "objective-780-the-battleboars-1",
            kind = "objective",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "The Battleboars: Battleboar Snout. Bristleback Battleboars in the ravine drop these too.",
            dependsOn = { "accept-780-the-battleboars" },
            complete = QuestObjective(780, 1, "Battleboar Snout"),
            route = {
                Point(MAP.MULGORE, 0.576, 0.852, "Battleboar",
                    "Travel to Battleboar."),
            },
        },
        {
            id = "objective-780-the-battleboars-2",
            kind = "objective",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "The Battleboars: Battleboar Flank.",
            dependsOn = { "accept-780-the-battleboars" },
            complete = QuestObjective(780, 2, "Battleboar Flank"),
            route = {
                Point(MAP.MULGORE, 0.634, 0.782, "Bristleback Battleboar",
                    "Travel to Bristleback Battleboar."),
            },
        },
        {
            id = "objective-3376-break-sharptusk-1",
            kind = "objective",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Break Sharptusk!: Chief Sharptusk Thornmantle's Head.",
            dependsOn = { "accept-3376-break-sharptusk" },
            complete = QuestObjective(3376, 1, "Chief Sharptusk Thornmantle's Head"),
            route = {
                Point(MAP.MULGORE, 0.642, 0.780, "Chief Sharptusk Thornmantle",
                    "Travel to Chief Sharptusk Thornmantle."),
            },
        },
        {
            id = "turnin-781-attack-on-camp-narache",
            kind = "turnin",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                    { quest = { id = 781, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Attack on Camp Narache to Chief Hawkwind if the bristlebacks dropped their plans.",
            complete = QuestState(781, "completed"),
            route = {
                Point(MAP.MULGORE, 0.442, 0.760, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "turnin-757-rite-of-strength",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Rite of Strength to Chief Hawkwind.",
            dependsOn = { "objective-757-rite-of-strength-1" },
            complete = QuestState(757, "completed"),
            route = {
                Point(MAP.MULGORE, 0.442, 0.760, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "turnin-780-the-battleboars",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in The Battleboars to Grull Hawkwind.",
            dependsOn = { "objective-780-the-battleboars-1", "objective-780-the-battleboars-2" },
            complete = QuestState(780, "completed"),
            route = {
                Point(MAP.MULGORE, 0.448, 0.772, "Grull Hawkwind",
                    "Travel to Grull Hawkwind."),
            },
        },
        {
            id = "turnin-3376-break-sharptusk",
            kind = "turnin",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Break Sharptusk! to Brave Windfeather.",
            dependsOn = { "objective-3376-break-sharptusk-1" },
            complete = QuestState(3376, "completed"),
            route = {
                Point(MAP.MULGORE, 0.448, 0.766, "Brave Windfeather",
                    "Travel to Brave Windfeather."),
            },
        },
        {
            id = "accept-763-rites-of-the-earthmother",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Rites of the Earthmother from Chief Hawkwind.",
            dependsOn = { "turnin-757-rite-of-strength" },
            complete = QuestState(763, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.442, 0.760, "Chief Hawkwind",
                    "Travel to Chief Hawkwind."),
            },
        },
        {
            id = "accept-1656-a-task-unfinished",
            kind = "accept",
            priority = 290,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept A Task Unfinished from Antur Fallow.",
            complete = QuestState(1656, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.386, 0.816, "Antur Fallow",
                    "Travel to Antur Fallow."),
            },
        },
        {
            id = "turnin-763-rites-of-the-earthmother",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Rites of the Earthmother to Baine Bloodhoof.",
            dependsOn = { "accept-763-rites-of-the-earthmother" },
            complete = QuestState(763, "completed"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "turnin-1656-a-task-unfinished",
            kind = "turnin",
            priority = 310,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in A Task Unfinished to Innkeeper Kauth.",
            dependsOn = { "accept-1656-a-task-unfinished" },
            complete = QuestState(1656, "completed"),
            route = {
                Point(MAP.MULGORE, 0.466, 0.610, "Innkeeper Kauth",
                    "Travel to Innkeeper Kauth."),
            },
        },
        {
            id = "accept-745-sharing-the-land",
            kind = "accept",
            priority = 320,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept Sharing the Land from Baine Bloodhoof.",
            complete = QuestState(745, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-767-rite-of-vision",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Rite of Vision from Baine Bloodhoof.",
            dependsOn = { "turnin-763-rites-of-the-earthmother" },
            complete = QuestState(767, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-748-poison-water",
            kind = "accept",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Accept Poison Water from Mull Thunderhorn.",
            complete = QuestState(748, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-761-swoop-hunting",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Swoop Hunting from Harken Windtotem.",
            complete = QuestState(761, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.486, 0.594, "Harken Windtotem",
                    "Travel to Harken Windtotem."),
            },
        },
        {
            id = "accept-766-mazzranache",
            kind = "accept",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Mazzranache from Maur Raincaller.",
            complete = QuestState(766, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.470, 0.570, "Maur Raincaller",
                    "Travel to Maur Raincaller."),
            },
        },
        {
            id = "accept-749-the-ravaged-caravan",
            kind = "accept",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept The Ravaged Caravan from Morin Cloudstalker.",
            complete = QuestState(749, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.530, 0.602, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "accept-743-dangers-of-the-windfury",
            kind = "accept",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Dangers of the Windfury from Ruul Eagletalon.",
            complete = QuestState(743, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.618, "Ruul Eagletalon",
                    "Travel to Ruul Eagletalon."),
            },
        },
        {
            id = "accept-746-dwarven-digging",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Accept Dwarven Digging from Baine Bloodhoof.",
            complete = QuestState(746, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-99108-sparring-match",
            kind = "accept",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Sparring Match from Krang Stonehoof.",
            complete = QuestState(99108, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.494, 0.604, "Krang Stonehoof",
                    "Travel to Krang Stonehoof."),
            },
        },
        {
            id = "accept-96130-chakuyak",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Chakuyak from Yaw Sharpmane.",
            complete = QuestState(96130, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.478, 0.556, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "accept-861-the-hunters-way",
            kind = "accept",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Way from Skorn Whitecloud.",
            complete = QuestState(861, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.468, 0.602, "Skorn Whitecloud",
                    "Travel to Skorn Whitecloud."),
            },
        },
        {
            id = "accept-99079-longwalker-malah",
            kind = "accept",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Longwalker Malah from Brave Wildrunner.",
            complete = QuestState(99079, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.472, 0.596, "Brave Wildrunner",
                    "Travel to Brave Wildrunner."),
            },
        },
        {
            id = "turnin-767-rite-of-vision",
            kind = "turnin",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Rite of Vision to Zarlman Two-Moons.",
            dependsOn = { "accept-767-rite-of-vision" },
            complete = QuestState(767, "completed"),
            route = {
                Point(MAP.MULGORE, 0.478, 0.576, "Zarlman Two-Moons",
                    "Travel to Zarlman Two-Moons."),
            },
        },
        {
            id = "accept-771-rite-of-vision",
            kind = "accept",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Rite of Vision from Zarlman Two-Moons.",
            dependsOn = { "turnin-767-rite-of-vision" },
            complete = QuestState(771, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.478, 0.576, "Zarlman Two-Moons",
                    "Travel to Zarlman Two-Moons."),
            },
        },
        {
            id = "objective-771-rite-of-vision-2",
            kind = "objective",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Rite of Vision: Ambercorn. Ambercorn is under the trees in Bloodhoof Village. Wowhead has no pin.",
            dependsOn = { "accept-771-rite-of-vision" },
            complete = QuestObjective(771, 2, "Ambercorn"),
            route = {
                Point(MAP.MULGORE, 0.478, 0.576, "Bloodhoof Village",
                    "Travel to Bloodhoof Village."),
            },
        },
        {
            id = "objective-99108-sparring-match-1",
            kind = "objective",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Defeat 3 duelists or Novice Warriors in the Bloodhoof arena, then return to Krang Stonehoof. Wowhead has no warrior pin.",
            dependsOn = { "accept-99108-sparring-match" },
            complete = QuestState(99108, "completed"),
            route = {
                Point(MAP.MULGORE, 0.494, 0.604, "Krang Stonehoof",
                    "Travel to Krang Stonehoof."),
            },
        },
        {
            id = "objective-748-poison-water-1",
            kind = "objective",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Poison Water: Prairie Wolf Paw. Ghost Howl's cloak starts The Demon Scarred Cloak. Wowhead has no spawn pin for him.",
            dependsOn = { "accept-748-poison-water" },
            complete = QuestObjective(748, 1, "Prairie Wolf Paw"),
            route = {
                Point(MAP.MULGORE, 0.498, 0.652, "Prairie Wolf",
                    "Travel to Prairie Wolf."),
            },
        },
        {
            id = "objective-748-poison-water-2",
            kind = "objective",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Poison Water: Plainstrider Talon.",
            dependsOn = { "accept-748-poison-water" },
            complete = QuestObjective(748, 2, "Plainstrider Talon"),
            route = {
                Point(MAP.MULGORE, 0.524, 0.654, "Adult Plainstrider",
                    "Travel to Adult Plainstrider."),
            },
        },
        {
            id = "objective-745-sharing-the-land-1",
            kind = "objective",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Sharing the Land: Palemane Tanner.",
            dependsOn = { "accept-745-sharing-the-land" },
            complete = QuestObjective(745, 1, "Palemane Tanner"),
            route = {
                Point(MAP.MULGORE, 0.526, 0.722, "Palemane Tanner",
                    "Travel to Palemane Tanner."),
            },
        },
        {
            id = "objective-745-sharing-the-land-2",
            kind = "objective",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Sharing the Land: Palemane Skinner.",
            dependsOn = { "accept-745-sharing-the-land" },
            complete = QuestObjective(745, 2, "Palemane Skinner"),
            route = {
                Point(MAP.MULGORE, 0.532, 0.718, "Palemane Skinner",
                    "Travel to Palemane Skinner."),
            },
        },
        {
            id = "objective-761-swoop-hunting-1",
            kind = "objective",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Swoop Hunting: Trophy Swoop Quill.",
            dependsOn = { "accept-761-swoop-hunting" },
            complete = QuestObjective(761, 1, "Trophy Swoop Quill"),
            route = {
                Point(MAP.MULGORE, 0.532, 0.636, "Wiry Swoop",
                    "Travel to Wiry Swoop."),
            },
        },
        {
            id = "objective-766-mazzranache-1",
            kind = "objective",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Mazzranache: Prairie Wolf Heart.",
            dependsOn = { "accept-766-mazzranache" },
            complete = QuestObjective(766, 1, "Prairie Wolf Heart"),
            route = {
                Point(MAP.MULGORE, 0.498, 0.652, "Prairie Wolf",
                    "Travel to Prairie Wolf."),
            },
        },
        {
            id = "objective-766-mazzranache-3",
            kind = "objective",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Mazzranache: Plainstrider Scale.",
            dependsOn = { "accept-766-mazzranache" },
            complete = QuestObjective(766, 3, "Plainstrider Scale"),
            route = {
                Point(MAP.MULGORE, 0.524, 0.654, "Adult Plainstrider",
                    "Travel to Adult Plainstrider."),
            },
        },
        {
            id = "objective-766-mazzranache-4",
            kind = "objective",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Mazzranache: Swoop Gizzard.",
            dependsOn = { "accept-766-mazzranache" },
            complete = QuestObjective(766, 4, "Swoop Gizzard"),
            route = {
                Point(MAP.MULGORE, 0.532, 0.636, "Wiry Swoop",
                    "Travel to Wiry Swoop."),
            },
        },
        {
            id = "turnin-99079-longwalker-malah",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Longwalker Malah to Malah Longwind.",
            dependsOn = { "accept-99079-longwalker-malah" },
            complete = QuestState(99079, "completed"),
            route = {
                Point(MAP.MULGORE, 0.576, 0.632, "Malah Longwind",
                    "Travel to Malah Longwind."),
            },
        },
        {
            id = "accept-99081-grim-tidings",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Grim Tidings from Malah Longwind.",
            dependsOn = { "turnin-99079-longwalker-malah" },
            complete = QuestState(99081, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.576, 0.632, "Malah Longwind",
                    "Travel to Malah Longwind."),
            },
        },
        {
            id = "turnin-748-poison-water",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Turn in Poison Water to Mull Thunderhorn.",
            dependsOn = { "objective-748-poison-water-1", "objective-748-poison-water-2" },
            complete = QuestState(748, "completed"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-754-winterhoof-cleansing",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Accept Winterhoof Cleansing from Mull Thunderhorn.",
            dependsOn = { "turnin-748-poison-water" },
            complete = QuestState(754, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "objective-754-winterhoof-cleansing-1",
            kind = "objective",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Winterhoof Cleansing: Cleanse the Winterhoof Water Well. Use the Winterhoof Cleansing Totem. The well is southeast of Bloodhoof among the palemane. Wowhead has no well pin.",
            dependsOn = { "accept-754-winterhoof-cleansing" },
            complete = QuestObjective(754, 1, "Cleanse the Winterhoof Water Well"),
            route = {
                Point(MAP.MULGORE, 0.526, 0.722, "Winterhoof Water Well",
                    "Travel to Winterhoof Water Well."),
            },
        },
        {
            id = "objective-771-rite-of-vision-1",
            kind = "objective",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Rite of Vision: Well Stone. Well stones sit around the water wells. Wowhead has no stone pin.",
            dependsOn = { "accept-771-rite-of-vision" },
            complete = QuestObjective(771, 1, "Well Stone"),
            route = {
                Point(MAP.MULGORE, 0.526, 0.722, "Winterhoof Water Well",
                    "Travel to Winterhoof Water Well."),
            },
        },
        {
            id = "turnin-754-winterhoof-cleansing",
            kind = "turnin",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Turn in Winterhoof Cleansing to Mull Thunderhorn.",
            dependsOn = { "objective-754-winterhoof-cleansing-1" },
            complete = QuestState(754, "completed"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "turnin-761-swoop-hunting",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Swoop Hunting to Harken Windtotem.",
            dependsOn = { "objective-761-swoop-hunting-1" },
            complete = QuestState(761, "completed"),
            route = {
                Point(MAP.MULGORE, 0.486, 0.594, "Harken Windtotem",
                    "Travel to Harken Windtotem."),
            },
        },
        {
            id = "turnin-99081-grim-tidings",
            kind = "turnin",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Grim Tidings to Brave Wildrunner.",
            dependsOn = { "accept-99081-grim-tidings" },
            complete = QuestState(99081, "completed"),
            route = {
                Point(MAP.MULGORE, 0.472, 0.596, "Brave Wildrunner",
                    "Travel to Brave Wildrunner."),
            },
        },
        {
            id = "accept-99101-our-ancient-enemy",
            kind = "accept",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Our Ancient Enemy from Brave Wildrunner.",
            dependsOn = { "turnin-99081-grim-tidings" },
            complete = QuestState(99101, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.472, 0.596, "Brave Wildrunner",
                    "Travel to Brave Wildrunner."),
            },
        },
        {
            id = "turnin-99101-our-ancient-enemy",
            kind = "turnin",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Our Ancient Enemy to Baine Bloodhoof.",
            dependsOn = { "accept-99101-our-ancient-enemy" },
            complete = QuestState(99101, "completed"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-756-thunderhorn-totem",
            kind = "accept",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Accept Thunderhorn Totem from Mull Thunderhorn.",
            dependsOn = { "turnin-754-winterhoof-cleansing" },
            complete = QuestState(756, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "objective-749-the-ravaged-caravan-1",
            kind = "objective",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Examine the Sealed Supply Crate at the ravaged caravan north of Bloodhoof.",
            dependsOn = { "accept-749-the-ravaged-caravan" },
            complete = QuestState(749, "completed"),
            route = {
                Point(MAP.MULGORE, 0.538, 0.483, "Sealed Supply Crate",
                    "Travel to Sealed Supply Crate."),
            },
        },
        {
            id = "objective-756-thunderhorn-totem-1",
            kind = "objective",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Thunderhorn Totem: Stalker Claws.",
            dependsOn = { "accept-756-thunderhorn-totem" },
            complete = QuestObjective(756, 1, "Stalker Claws"),
            route = {
                Point(MAP.MULGORE, 0.388, 0.372, "Prairie Stalker",
                    "Travel to Prairie Stalker."),
            },
        },
        {
            id = "objective-756-thunderhorn-totem-2",
            kind = "objective",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Thunderhorn Totem: Cougar Claws.",
            dependsOn = { "accept-756-thunderhorn-totem" },
            complete = QuestObjective(756, 2, "Cougar Claws"),
            route = {
                Point(MAP.MULGORE, 0.408, 0.440, "Flatland Cougar",
                    "Travel to Flatland Cougar."),
            },
        },
        {
            id = "objective-766-mazzranache-2",
            kind = "objective",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Mazzranache: Flatland Cougar Femur.",
            dependsOn = { "accept-766-mazzranache" },
            complete = QuestObjective(766, 2, "Flatland Cougar Femur"),
            route = {
                Point(MAP.MULGORE, 0.408, 0.440, "Flatland Cougar",
                    "Travel to Flatland Cougar."),
            },
        },
        {
            id = "turnin-751-the-ravaged-caravan",
            kind = "turnin",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in The Ravaged Caravan to Morin Cloudstalker.",
            dependsOn = { "objective-749-the-ravaged-caravan-1" },
            complete = QuestState(751, "completed"),
            route = {
                Point(MAP.MULGORE, 0.530, 0.602, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "turnin-756-thunderhorn-totem",
            kind = "turnin",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Turn in Thunderhorn Totem to Mull Thunderhorn.",
            dependsOn = { "objective-756-thunderhorn-totem-1", "objective-756-thunderhorn-totem-2" },
            complete = QuestState(756, "completed"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-758-thunderhorn-cleansing",
            kind = "accept",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Accept Thunderhorn Cleansing from Mull Thunderhorn.",
            dependsOn = { "turnin-756-thunderhorn-totem" },
            complete = QuestState(758, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "objective-758-thunderhorn-cleansing-1",
            kind = "objective",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Thunderhorn Cleansing: Cleanse the Thunderhorn Water Well. Use the Thunderhorn Cleansing Totem. The well is north of Bloodhoof. Wowhead has no well pin, so this marks the swoops there.",
            dependsOn = { "accept-758-thunderhorn-cleansing" },
            complete = QuestObjective(758, 1, "Cleanse the Thunderhorn Water Well"),
            route = {
                Point(MAP.MULGORE, 0.432, 0.492, "Thunderhorn Water Well",
                    "Travel to Thunderhorn Water Well."),
            },
        },
        {
            id = "turnin-758-thunderhorn-cleansing",
            kind = "turnin",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Turn in Thunderhorn Cleansing to Mull Thunderhorn.",
            dependsOn = { "objective-758-thunderhorn-cleansing-1" },
            complete = QuestState(758, "completed"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "turnin-771-rite-of-vision",
            kind = "turnin",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Rite of Vision to Zarlman Two-Moons.",
            dependsOn = { "objective-771-rite-of-vision-1", "objective-771-rite-of-vision-2" },
            complete = QuestState(771, "completed"),
            route = {
                Point(MAP.MULGORE, 0.478, 0.576, "Zarlman Two-Moons",
                    "Travel to Zarlman Two-Moons."),
            },
        },
        {
            id = "accept-772-rite-of-vision",
            kind = "accept",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Rite of Vision from Zarlman Two-Moons.",
            dependsOn = { "turnin-771-rite-of-vision" },
            complete = QuestState(772, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.478, 0.576, "Zarlman Two-Moons",
                    "Travel to Zarlman Two-Moons."),
            },
        },
        {
            id = "accept-76156-stalk-with-the-earthmother",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = { 2, 6, 8 } },
                    { class = { 1, 7 } },
                },
            },
            text = "Accept Stalk With The Earthmother from Boarton Shadetotem in Thunder Bluff.",
            complete = QuestState(76156, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.396, 0.656, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem."),
            },
        },
        {
            id = "accept-76160-stalk-with-the-earthmother",
            kind = "accept",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { class = 7 },
                },
            },
            text = "Accept Stalk With The Earthmother from Boarton Shadetotem in Thunder Bluff. Gather the cones with the harpies.",
            complete = QuestState(76160, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.396, 0.656, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem."),
            },
        },
        {
            id = "accept-76240-stalk-with-the-earthmother",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { class = 7 },
                },
            },
            text = "Accept Stalk With The Earthmother from Boarton Shadetotem in Thunder Bluff.",
            complete = QuestState(76240, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.396, 0.656, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem."),
            },
        },
        {
            id = "objective-76240-stalk-with-the-earthmother-1",
            kind = "objective",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { class = 7 },
                },
            },
            text = "Stalk With The Earthmother: Fish Chunks. Buy or catch a Raw Brilliant Smallfish and fillet it in front of Boarton Shadetotem.",
            dependsOn = { "accept-76240-stalk-with-the-earthmother" },
            complete = QuestObjective(76240, 1, "Fish Chunks"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.396, 0.656, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem."),
            },
        },
        {
            id = "turnin-76240-stalk-with-the-earthmother",
            kind = "turnin",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { class = 7 },
                },
            },
            text = "Turn in Stalk With The Earthmother to Boarton Shadetotem.",
            dependsOn = { "objective-76240-stalk-with-the-earthmother-1" },
            complete = QuestState(76240, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.396, 0.656, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem."),
            },
        },
        {
            id = "turnin-772-rite-of-vision",
            kind = "turnin",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Drink the Water of the Seers at the tribal fire in Bloodhoof, follow the vision, and turn in Rite of Vision to Seer Wiserunner.",
            dependsOn = { "accept-772-rite-of-vision" },
            complete = QuestState(772, "completed"),
            route = {
                Point(MAP.MULGORE, 0.328, 0.360, "Seer Wiserunner",
                    "Travel to Seer Wiserunner."),
            },
        },
        {
            id = "accept-773-rite-of-wisdom",
            kind = "accept",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Rite of Wisdom from Seer Wiserunner.",
            dependsOn = { "turnin-772-rite-of-vision" },
            complete = QuestState(773, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.328, 0.360, "Seer Wiserunner",
                    "Travel to Seer Wiserunner."),
            },
        },
        {
            id = "objective-743-dangers-of-the-windfury-1",
            kind = "objective",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Dangers of the Windfury: Windfury Talon. Windfury Wind Witches southeast of Bloodhoof drop these too.",
            dependsOn = { "accept-743-dangers-of-the-windfury" },
            complete = QuestObjective(743, 1, "Windfury Talon"),
            route = {
                Point(MAP.MULGORE, 0.324, 0.412, "Windfury Harpy",
                    "Travel to Windfury Harpy."),
            },
        },
        {
            id = "objective-76160-stalk-with-the-earthmother-1",
            kind = "objective",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { class = 7 },
                },
            },
            text = "Stalk With The Earthmother: Pine Salve. Gather Windfury Cones in the harpy area and use the Mortar and Pestle. Wowhead has no cone pin.",
            dependsOn = { "accept-76160-stalk-with-the-earthmother" },
            complete = QuestObjective(76160, 1, "Pine Salve"),
            route = {
                Point(MAP.MULGORE, 0.324, 0.276, "Windfury Matriarch",
                    "Travel to Windfury Matriarch."),
            },
        },
        {
            id = "objective-746-dwarven-digging-2",
            kind = "objective",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Dwarven Digging: Prospector's Pick. The picks come from the Bael'dun diggers and appraisers northwest of Bloodhoof.",
            dependsOn = { "accept-746-dwarven-digging" },
            complete = QuestObjective(746, 2, "Prospector's Pick"),
            route = {
                Point(MAP.MULGORE, 0.322, 0.488, "Bael'dun Digger",
                    "Travel to Bael'dun Digger."),
            },
        },
        {
            id = "objective-745-sharing-the-land-3",
            kind = "objective",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Sharing the Land: Palemane Poacher.",
            dependsOn = { "accept-745-sharing-the-land" },
            complete = QuestObjective(745, 3, "Palemane Poacher"),
            route = {
                Point(MAP.MULGORE, 0.308, 0.604, "Palemane Poacher",
                    "Travel to Palemane Poacher."),
            },
        },
        {
            id = "objective-96130-chakuyak-1",
            kind = "objective",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Chakuyak: Chakuyak's Pelt.",
            dependsOn = { "accept-96130-chakuyak" },
            complete = QuestObjective(96130, 1, "Chakuyak's Pelt"),
            route = {
                Point(MAP.MULGORE, 0.394, 0.652, "Chakuyak",
                    "Travel to Chakuyak."),
            },
        },
        {
            id = "accept-98430-the-longwalkers",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Accept The Longwalkers from Perith Stormhoof.",
            complete = QuestState(98430, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.330, 0.658, "Perith Stormhoof",
                    "Travel to Perith Stormhoof."),
            },
        },
        {
            id = "objective-98430-the-longwalkers-1",
            kind = "objective",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "The Longwalkers: Escort Perith Stormhoof. Perith starts inside Palemane Rock.",
            dependsOn = { "accept-98430-the-longwalkers" },
            complete = QuestObjective(98430, 1, "Escort Perith Stormhoof"),
            route = {
                Point(MAP.MULGORE, 0.330, 0.658, "Perith Stormhoof",
                    "Travel to Perith Stormhoof."),
            },
        },
        {
            id = "turnin-743-dangers-of-the-windfury",
            kind = "turnin",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Dangers of the Windfury to Ruul Eagletalon.",
            dependsOn = { "objective-743-dangers-of-the-windfury-1" },
            complete = QuestState(743, "completed"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.618, "Ruul Eagletalon",
                    "Travel to Ruul Eagletalon."),
            },
        },
        {
            id = "turnin-745-sharing-the-land",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in Sharing the Land to Baine Bloodhoof.",
            dependsOn = { "objective-745-sharing-the-land-1", "objective-745-sharing-the-land-2", "objective-745-sharing-the-land-3" },
            complete = QuestState(745, "completed"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "turnin-96130-chakuyak",
            kind = "turnin",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Chakuyak to Yaw Sharpmane.",
            dependsOn = { "objective-96130-chakuyak-1" },
            complete = QuestState(96130, "completed"),
            route = {
                Point(MAP.MULGORE, 0.478, 0.556, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane."),
            },
        },
        {
            id = "objective-746-dwarven-digging-1",
            kind = "objective",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Dwarven Digging: Broken Tools. Smash the Prospector's Picks at a forge. Wowhead has no forge pin, so this marks Bloodhoof Village.",
            dependsOn = { "accept-746-dwarven-digging" },
            complete = QuestObjective(746, 1, "Broken Tools"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Bloodhoof forge",
                    "Travel to Bloodhoof forge."),
            },
        },
        {
            id = "turnin-746-dwarven-digging",
            kind = "turnin",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                },
            },
            text = "Turn in Dwarven Digging to Baine Bloodhoof.",
            dependsOn = { "objective-746-dwarven-digging-1", "objective-746-dwarven-digging-2" },
            complete = QuestState(746, "completed"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "turnin-766-mazzranache",
            kind = "turnin",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Mazzranache to Maur Raincaller.",
            dependsOn = { "objective-766-mazzranache-1", "objective-766-mazzranache-2", "objective-766-mazzranache-3", "objective-766-mazzranache-4" },
            complete = QuestState(766, "completed"),
            route = {
                Point(MAP.MULGORE, 0.470, 0.570, "Maur Raincaller",
                    "Travel to Maur Raincaller."),
            },
        },
        {
            id = "turnin-770-the-demon-scarred-cloak",
            kind = "turnin",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 6 } },
                    { quest = { id = 770, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in The Demon Scarred Cloak to Skorn Whitecloud if you found Ghost Howl's cloak.",
            complete = QuestState(770, "completed"),
            route = {
                Point(MAP.MULGORE, 0.468, 0.602, "Skorn Whitecloud",
                    "Travel to Skorn Whitecloud."),
            },
        },
        {
            id = "turnin-76160-stalk-with-the-earthmother",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { class = 7 },
                },
            },
            text = "Turn in Stalk With The Earthmother to Boarton Shadetotem in Thunder Bluff.",
            dependsOn = { "objective-76160-stalk-with-the-earthmother-1" },
            complete = QuestState(76160, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.396, 0.656, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem."),
            },
        },
        {
            id = "accept-759-wildmane-totem",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Accept Wildmane Totem from Mull Thunderhorn.",
            dependsOn = { "turnin-758-thunderhorn-cleansing" },
            complete = QuestState(759, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-99080-drive-them-out",
            kind = "accept",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Drive Them Out from Baine Bloodhoof.",
            dependsOn = { "turnin-99101-our-ancient-enemy" },
            complete = QuestState(99080, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "objective-759-wildmane-totem-1",
            kind = "objective",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Wildmane Totem: Prairie Alpha Tooth.",
            dependsOn = { "accept-759-wildmane-totem" },
            complete = QuestObjective(759, 1, "Prairie Alpha Tooth"),
            route = {
                Point(MAP.MULGORE, 0.618, 0.612, "Prairie Wolf Alpha",
                    "Travel to Prairie Wolf Alpha."),
            },
        },
        {
            id = "objective-99080-drive-them-out-1",
            kind = "objective",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Drive Them Out: Galak Centaur.",
            dependsOn = { "accept-99080-drive-them-out" },
            complete = QuestObjective(99080, 1, "Galak Centaur"),
            route = {
                Point(MAP.MULGORE, 0.672, 0.594, "Galak Centaur",
                    "Travel to Galak Centaur."),
            },
        },
        {
            id = "objective-99080-drive-them-out-2",
            kind = "objective",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Drive Them Out: Galak Outrunner.",
            dependsOn = { "accept-99080-drive-them-out" },
            complete = QuestObjective(99080, 2, "Galak Outrunner"),
            route = {
                Point(MAP.MULGORE, 0.602, 0.606, "Galak Outrunner",
                    "Travel to Galak Outrunner."),
            },
        },
        {
            id = "objective-99080-drive-them-out-3",
            kind = "objective",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Drive Them Out: Herak's Head.",
            dependsOn = { "accept-99080-drive-them-out" },
            complete = QuestObjective(99080, 3, "Herak's Head"),
            route = {
                Point(MAP.MULGORE, 0.604, 0.598, "Herak the Pillager",
                    "Travel to Herak the Pillager."),
            },
        },
        {
            id = "turnin-759-wildmane-totem",
            kind = "turnin",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Turn in Wildmane Totem to Mull Thunderhorn.",
            dependsOn = { "objective-759-wildmane-totem-1" },
            complete = QuestState(759, "completed"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "turnin-99080-drive-them-out",
            kind = "turnin",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Drive Them Out to Baine Bloodhoof.",
            dependsOn = { "objective-99080-drive-them-out-1", "objective-99080-drive-them-out-2", "objective-99080-drive-them-out-3" },
            complete = QuestState(99080, "completed"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-99082-the-high-chieftain",
            kind = "accept",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Accept The High Chieftain from Baine Bloodhoof.",
            dependsOn = { "turnin-99080-drive-them-out" },
            complete = QuestState(99082, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.474, 0.602, "Baine Bloodhoof",
                    "Travel to Baine Bloodhoof."),
            },
        },
        {
            id = "accept-760-wildmane-cleansing",
            kind = "accept",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Accept Wildmane Cleansing from Mull Thunderhorn.",
            dependsOn = { "turnin-759-wildmane-totem" },
            complete = QuestState(760, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "objective-760-wildmane-cleansing-1",
            kind = "objective",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Wildmane Cleansing: Cleanse the Wildmane Well. Use the Wildmane Cleansing Totem. The well is north of Thunder Bluff. Wowhead has no well pin, so this marks the taloned swoops on the northern plains.",
            dependsOn = { "accept-760-wildmane-cleansing" },
            complete = QuestObjective(760, 1, "Cleanse the Wildmane Well"),
            route = {
                Point(MAP.MULGORE, 0.452, 0.168, "Wildmane Water Well",
                    "Travel to Wildmane Water Well."),
            },
        },
        {
            id = "accept-833-a-sacred-burial",
            kind = "accept",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Accept A Sacred Burial from Lorekeeper Raintotem.",
            complete = QuestState(833, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.598, 0.256, "Lorekeeper Raintotem",
                    "Travel to Lorekeeper Raintotem."),
            },
        },
        {
            id = "objective-833-a-sacred-burial-1",
            kind = "objective",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "A Sacred Burial: Bristleback Interloper.",
            dependsOn = { "accept-833-a-sacred-burial" },
            complete = QuestObjective(833, 1, "Bristleback Interloper"),
            route = {
                Point(MAP.MULGORE, 0.616, 0.226, "Bristleback Interloper",
                    "Travel to Bristleback Interloper."),
            },
        },
        {
            id = "turnin-833-a-sacred-burial",
            kind = "turnin",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Turn in A Sacred Burial to Lorekeeper Raintotem.",
            dependsOn = { "objective-833-a-sacred-burial-1" },
            complete = QuestState(833, "completed"),
            route = {
                Point(MAP.MULGORE, 0.598, 0.256, "Lorekeeper Raintotem",
                    "Travel to Lorekeeper Raintotem."),
            },
        },
        {
            id = "turnin-773-rite-of-wisdom",
            kind = "turnin",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Rite of Wisdom to Ancestral Spirit.",
            dependsOn = { "accept-773-rite-of-wisdom" },
            complete = QuestState(773, "completed"),
            route = {
                Point(MAP.MULGORE, 0.614, 0.210, "Ancestral Spirit",
                    "Travel to Ancestral Spirit."),
            },
        },
        {
            id = "accept-775-journey-into-thunder-bluff",
            kind = "accept",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Journey into Thunder Bluff from Ancestral Spirit.",
            dependsOn = { "turnin-773-rite-of-wisdom" },
            complete = QuestState(775, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.614, 0.210, "Ancestral Spirit",
                    "Travel to Ancestral Spirit."),
            },
        },
        {
            id = "objective-861-the-hunters-way-1",
            kind = "objective",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "The Hunter's Way: Flatland Prowler Claw.",
            dependsOn = { "accept-861-the-hunters-way" },
            complete = QuestObjective(861, 1, "Flatland Prowler Claw"),
            route = {
                Point(MAP.MULGORE, 0.526, 0.128, "Flatland Prowler",
                    "Travel to Flatland Prowler."),
            },
        },
        {
            id = "turnin-760-wildmane-cleansing",
            kind = "turnin",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Turn in Wildmane Cleansing to Mull Thunderhorn.",
            dependsOn = { "objective-760-wildmane-cleansing-1" },
            complete = QuestState(760, "completed"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-98435-thunderhorns-report",
            kind = "accept",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Accept Thunderhorn's Report from Mull Thunderhorn.",
            dependsOn = { "turnin-760-wildmane-cleansing" },
            complete = QuestState(98435, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.484, 0.604, "Mull Thunderhorn",
                    "Travel to Mull Thunderhorn."),
            },
        },
        {
            id = "accept-764-the-venture-co",
            kind = "accept",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept The Venture Co. from Morin Cloudstalker.",
            dependsOn = { "turnin-751-the-ravaged-caravan" },
            complete = QuestState(764, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.530, 0.602, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "accept-765-supervisor-fizsprocket",
            kind = "accept",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Supervisor Fizsprocket from Morin Cloudstalker.",
            dependsOn = { "turnin-751-the-ravaged-caravan" },
            complete = QuestState(765, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.530, 0.602, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "turnin-775-journey-into-thunder-bluff",
            kind = "turnin",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Journey into Thunder Bluff to Cairne Bloodhoof.",
            dependsOn = { "accept-775-journey-into-thunder-bluff" },
            complete = QuestState(775, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.598, 0.516, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "turnin-98430-the-longwalkers",
            kind = "turnin",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 1 } },
                },
            },
            text = "Turn in The Longwalkers to Cairne Bloodhoof in Thunder Bluff.",
            dependsOn = { "objective-98430-the-longwalkers-1" },
            complete = QuestState(98430, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.598, 0.516, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "turnin-99082-the-high-chieftain",
            kind = "turnin",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in The High Chieftain to Cairne Bloodhoof in Thunder Bluff.",
            dependsOn = { "accept-99082-the-high-chieftain" },
            complete = QuestState(99082, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.598, 0.516, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "turnin-861-the-hunters-way",
            kind = "turnin",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Way to Melor Stonehoof in Thunder Bluff.",
            dependsOn = { "objective-861-the-hunters-way-1" },
            complete = QuestState(861, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.614, 0.806, "Melor Stonehoof",
                    "Travel to Melor Stonehoof."),
            },
        },
        {
            id = "turnin-98435-thunderhorns-report",
            kind = "turnin",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = 6 },
                },
            },
            text = "Turn in Thunderhorn's Report to Arch Druid Hamuul Runetotem in Thunder Bluff.",
            dependsOn = { "accept-98435-thunderhorns-report" },
            complete = QuestState(98435, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.784, 0.284, "Arch Druid Hamuul Runetotem",
                    "Travel to Arch Druid Hamuul Runetotem."),
            },
        },
        {
            id = "accept-776-rites-of-the-earthmother",
            kind = "accept",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Accept Rites of the Earthmother from Cairne Bloodhoof in Thunder Bluff.",
            dependsOn = { "turnin-775-journey-into-thunder-bluff" },
            complete = QuestState(776, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.598, 0.516, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "objective-776-rites-of-the-earthmother-1",
            kind = "objective",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Rites of the Earthmother: Horn of Arra'chea. Arra'chea roams the northern plains. Wowhead has no pin, so this marks Red Rocks.",
            dependsOn = { "accept-776-rites-of-the-earthmother" },
            complete = QuestObjective(776, 1, "Horn of Arra'chea"),
            route = {
                Point(MAP.MULGORE, 0.614, 0.210, "Northern plains",
                    "Travel to Northern plains."),
            },
        },
        {
            id = "objective-764-the-venture-co-1",
            kind = "objective",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "The Venture Co.: Venture Co. Worker.",
            dependsOn = { "accept-764-the-venture-co" },
            complete = QuestObjective(764, 1, "Venture Co. Worker"),
            route = {
                Point(MAP.MULGORE, 0.616, 0.466, "Venture Co. Worker",
                    "Travel to Venture Co. Worker."),
            },
        },
        {
            id = "objective-764-the-venture-co-2",
            kind = "objective",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "The Venture Co.: Venture Co. Supervisor.",
            dependsOn = { "accept-764-the-venture-co" },
            complete = QuestObjective(764, 2, "Venture Co. Supervisor"),
            route = {
                Point(MAP.MULGORE, 0.614, 0.472, "Venture Co. Supervisor",
                    "Travel to Venture Co. Supervisor."),
            },
        },
        {
            id = "objective-765-supervisor-fizsprocket-1",
            kind = "objective",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Supervisor Fizsprocket: Fizsprocket's Clipboard. The pages for Fizsprocket's Notes are inside this mine too.",
            dependsOn = { "accept-765-supervisor-fizsprocket" },
            complete = QuestObjective(765, 1, "Fizsprocket's Clipboard"),
            route = {
                Point(MAP.MULGORE, 0.644, 0.436, "Supervisor Fizsprocket",
                    "Travel to Supervisor Fizsprocket."),
            },
        },
        {
            id = "accept-98424-fizsprockets-notes",
            kind = "accept",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            text = "Fizsprocket's Notes is in your log. The remaining pages are inside the Venture Co. mine.",
            complete = QuestState(98424, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.644, 0.436, "Supervisor Fizsprocket",
                    "Travel to Supervisor Fizsprocket."),
            },
        },
        {
            id = "objective-98424-fizsprockets-notes-1",
            kind = "objective",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            text = "Fizsprocket's Notes: Shredder Operation Instructions. Wowhead has no page pin. Search the mine.",
            dependsOn = { "accept-98424-fizsprockets-notes" },
            complete = QuestObjective(98424, 1, "Shredder Operation Instructions"),
            route = {
                Point(MAP.MULGORE, 0.644, 0.436, "Venture Co. Mine",
                    "Travel to Venture Co. Mine."),
            },
        },
        {
            id = "objective-98424-fizsprockets-notes-2",
            kind = "objective",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            text = "Fizsprocket's Notes: Barrens Operations Best Practices. Wowhead has no page pin. Search the mine.",
            dependsOn = { "accept-98424-fizsprockets-notes" },
            complete = QuestObjective(98424, 2, "Barrens Operations Best Practices"),
            route = {
                Point(MAP.MULGORE, 0.644, 0.436, "Venture Co. Mine",
                    "Travel to Venture Co. Mine."),
            },
        },
        {
            id = "objective-98424-fizsprockets-notes-3",
            kind = "objective",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            text = "Fizsprocket's Notes: One \"Gerenzo\", of Stonetalon. Wowhead has no page pin. Search the mine.",
            dependsOn = { "accept-98424-fizsprockets-notes" },
            complete = QuestObjective(98424, 3, "One \"Gerenzo\", of Stonetalon"),
            route = {
                Point(MAP.MULGORE, 0.644, 0.436, "Venture Co. Mine",
                    "Travel to Venture Co. Mine."),
            },
        },
        {
            id = "objective-98424-fizsprockets-notes-4",
            kind = "objective",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            text = "Fizsprocket's Notes: Mulgore Expansion Plans. Wowhead has no page pin. Search the mine.",
            dependsOn = { "accept-98424-fizsprockets-notes" },
            complete = QuestObjective(98424, 4, "Mulgore Expansion Plans"),
            route = {
                Point(MAP.MULGORE, 0.644, 0.436, "Venture Co. Mine",
                    "Travel to Venture Co. Mine."),
            },
        },
        {
            id = "objective-76156-stalk-with-the-earthmother-1",
            kind = "objective",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = { 2, 6, 8 } },
                    { class = { 1, 7 } },
                },
            },
            text = "Stalk With The Earthmother: Seaforium Mining Charge. The blasting carts are in the mine southeast of Thunder Bluff. Wowhead has no cart pin.",
            dependsOn = { "accept-76156-stalk-with-the-earthmother" },
            complete = QuestObjective(76156, 1, "Seaforium Mining Charge"),
            route = {
                Point(MAP.MULGORE, 0.644, 0.436, "Venture Co. Mine",
                    "Travel to Venture Co. Mine."),
            },
        },
        {
            id = "turnin-98424-fizsprockets-notes",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 98424, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Fizsprocket's Notes to Morin Cloudstalker.",
            dependsOn = { "objective-98424-fizsprockets-notes-1", "objective-98424-fizsprockets-notes-2", "objective-98424-fizsprockets-notes-3", "objective-98424-fizsprockets-notes-4" },
            complete = QuestState(98424, "completed"),
            route = {
                Point(MAP.MULGORE, 0.530, 0.602, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "turnin-764-the-venture-co",
            kind = "turnin",
            priority = 1390,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in The Venture Co. to Morin Cloudstalker.",
            dependsOn = { "objective-764-the-venture-co-1", "objective-764-the-venture-co-2" },
            complete = QuestState(764, "completed"),
            route = {
                Point(MAP.MULGORE, 0.530, 0.602, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "turnin-765-supervisor-fizsprocket",
            kind = "turnin",
            priority = 1400,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Supervisor Fizsprocket to Morin Cloudstalker.",
            dependsOn = { "objective-765-supervisor-fizsprocket-1" },
            complete = QuestState(765, "completed"),
            route = {
                Point(MAP.MULGORE, 0.530, 0.602, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "accept-98427-ceasing-operations",
            kind = "accept",
            priority = 1410,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 98424, state = "completed" } },
                },
            },
            text = "Accept Ceasing Operations from Morin Cloudstalker. This is an elite. Bring a group.",
            dependsOn = { "turnin-98424-fizsprockets-notes" },
            complete = QuestState(98427, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.530, 0.602, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "objective-98427-ceasing-operations-1",
            kind = "objective",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 98424, state = "completed" } },
                },
            },
            text = "Ceasing Operations: Clearcutter Key. This is an elite. Bring a group.",
            dependsOn = { "accept-98427-ceasing-operations" },
            complete = QuestObjective(98427, 1, "Clearcutter Key"),
            route = {
                Point(MAP.MULGORE, 0.570, 0.430, "Venture Co. Clearclutter",
                    "Travel to Venture Co. Clearclutter."),
            },
        },
        {
            id = "turnin-98427-ceasing-operations",
            kind = "turnin",
            priority = 1430,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 5 } },
                    { quest = { id = 98424, state = "completed" } },
                },
            },
            text = "Turn in Ceasing Operations to Morin Cloudstalker.",
            dependsOn = { "objective-98427-ceasing-operations-1" },
            complete = QuestState(98427, "completed"),
            route = {
                Point(MAP.MULGORE, 0.530, 0.602, "Morin Cloudstalker",
                    "Travel to Morin Cloudstalker."),
            },
        },
        {
            id = "turnin-776-rites-of-the-earthmother",
            kind = "turnin",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 3 } },
                },
            },
            text = "Turn in Rites of the Earthmother to Cairne Bloodhoof in Thunder Bluff.",
            dependsOn = { "objective-776-rites-of-the-earthmother-1" },
            complete = QuestState(776, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.598, 0.516, "Cairne Bloodhoof",
                    "Travel to Cairne Bloodhoof."),
            },
        },
        {
            id = "turnin-76156-stalk-with-the-earthmother",
            kind = "turnin",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 4 } },
                    { race = { 2, 6, 8 } },
                    { class = { 1, 7 } },
                },
            },
            text = "Turn in Stalk With The Earthmother to Boarton Shadetotem in Thunder Bluff.",
            dependsOn = { "objective-76156-stalk-with-the-earthmother-1" },
            complete = QuestState(76156, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.396, 0.656, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem."),
            },
        },
        {
            id = "accept-854-journey-to-the-crossroads",
            kind = "accept",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                    { race = 6 },
                },
            },
            text = "Accept Journey to the Crossroads from Kirge Sternhorn. Wowhead files him under the Barrens area, and these coordinates are Bloodhoof Village.",
            complete = QuestState(854, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.448, 0.586, "Kirge Sternhorn",
                    "Travel to Kirge Sternhorn."),
            },
        },
        {
            id = "turnin-854-journey-to-the-crossroads",
            kind = "turnin",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                    { race = 6 },
                },
            },
            text = "Turn in Journey to the Crossroads to Thork at the Crossroads.",
            dependsOn = { "accept-854-journey-to-the-crossroads" },
            complete = QuestState(854, "completed"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.308, "Thork",
                    "Travel to Thork."),
            },
        },
    },
})
