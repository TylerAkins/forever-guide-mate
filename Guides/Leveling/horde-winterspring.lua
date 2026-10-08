local _, ns = ...

-- Forever Casual spine: Winterspring (58-59)
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
    FERALAS = 1444,
    TANARIS = 1446,
    FELWOOD = 1448,
    UN_GORO_CRATER = 1449,
    MOONGLADE = 1450,
    WINTERSPRING = 1452,
    THUNDER_BLUFF = 1456,
}

ns:RegisterGuide({
    id = "leveling-era-horde-winterspring",
    title = "Winterspring",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 58 } },
        },
    },
    goals = {
        {
            id = "accept-977-are-we-there-yeti",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Are We There, Yeti?.",
            complete = QuestState(977, "activeOrCompleted"),
            route = {
                Point(1452, 0.6088, 0.3762, "Are We There, Yeti?",
                    "Travel to Are We There, Yeti?."),
            },
        },
        {
            id = "accept-4809-chillwind-horns",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Chillwind Horns.",
            complete = QuestState(4809, "activeOrCompleted"),
            route = {
                Point(1452, 0.6163, 0.3861, "Chillwind Horns",
                    "Travel to Chillwind Horns."),
            },
        },
        {
            id = "objective-977-1-ice-thistle-matriarch",
            kind = "objective",
            priority = 30,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Kill Ice Thistle Matriarch.",
            complete = QuestObjective(977, 1, "Ice Thistle Matriarch"),
            dependsOn = { "accept-977-are-we-there-yeti" },
            route = {
                Point(1452, 0.6765, 0.4175, "Ice Thistle Matriarch",
                    "Travel to Ice Thistle Matriarch."),
            },
        },
        {
            id = "accept-8471-winterfall-ritual-totem",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Winterfall Ritual Totem.",
            complete = QuestState(8471, "activeOrCompleted"),
            route = {
                Point(1452, 0.6765, 0.4175, "Winterfall Ritual Totem",
                    "Travel to Winterfall Ritual Totem."),
            },
        },
        {
            id = "objective-4741-1-moontouched-owlbeast",
            kind = "objective",
            priority = 50,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Kill 13 Moontouched Owlbeast.",
            complete = QuestObjective(4741, 1, "Moontouched Owlbeast"),
            route = {
                Point(1452, 0.6340, 0.2340, "Moontouched Owlbeast",
                    "Travel to Moontouched Owlbeast."),
            },
        },
        {
            id = "turnin-977-are-we-there-yeti",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Are We There, Yeti?.",
            complete = QuestState(977, "completed"),
            dependsOn = { "accept-977-are-we-there-yeti", "objective-977-1-ice-thistle-matriarch" },
            route = {
                Point(1452, 0.6088, 0.3762, "Are We There, Yeti?",
                    "Travel to Are We There, Yeti?."),
            },
        },
        {
            id = "turnin-4809-chillwind-horns",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Chillwind Horns.",
            complete = QuestState(4809, "completed"),
            dependsOn = { "accept-4809-chillwind-horns" },
            route = {
                Point(1452, 0.6163, 0.3861, "Chillwind Horns",
                    "Travel to Chillwind Horns."),
            },
        },
        {
            id = "turnin-4741-wild-guardians",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Wild Guardians.",
            complete = QuestState(4741, "completed"),
            dependsOn = { "objective-4741-1-moontouched-owlbeast" },
            route = {
                Point(1448, 0.3473, 0.5279, "Wild Guardians",
                    "Travel to Wild Guardians."),
            },
        },
        {
            id = "accept-4721-wild-guardians",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Wild Guardians.",
            complete = QuestState(4721, "activeOrCompleted"),
            route = {
                Point(1448, 0.3473, 0.5279, "Wild Guardians",
                    "Travel to Wild Guardians."),
            },
        },
        {
            id = "accept-4882-guarding-secrets",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Guarding Secrets.",
            complete = QuestState(4882, "activeOrCompleted"),
            route = {
                Point(1452, 0.6340, 0.2340, "Guarding Secrets",
                    "Travel to Guarding Secrets."),
            },
        },
        {
            id = "accept-5163-are-we-there-yeti",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept Are We There, Yeti?.",
            complete = QuestState(5163, "activeOrCompleted"),
            route = {
                Point(1452, 0.6088, 0.3762, "Are We There, Yeti?",
                    "Travel to Are We There, Yeti?."),
            },
        },
        {
            id = "objective-5163-1-umi-s-mechanical-yeti",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Use Umi's Mechanical Yeti.",
            complete = QuestObjective(5163, 1, "Umi's Mechanical Yeti"),
            dependsOn = { "accept-5163-are-we-there-yeti" },
            route = {
                Point(1452, 0.6154, 0.3862, "Umi's Mechanical Yeti",
                    "Travel to Umi's Mechanical Yeti."),
            },
        },
        {
            id = "turnin-8464-winterfall-activity",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Winterfall Activity.",
            complete = QuestState(8464, "completed"),
            route = {
                Point(1452, 0.2774, 0.3450, "Winterfall Activity",
                    "Travel to Winterfall Activity."),
            },
        },
        {
            id = "turnin-8471-winterfall-ritual-totem",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Winterfall Ritual Totem.",
            complete = QuestState(8471, "completed"),
            dependsOn = { "accept-8471-winterfall-ritual-totem" },
            route = {
                Point(1448, 0.6549, 0.0348, "Winterfall Ritual Totem",
                    "Travel to Winterfall Ritual Totem."),
            },
        },
        {
            id = "turnin-1123-rabine-saturna",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rabine Saturna.",
            complete = QuestState(1123, "completed"),
            route = {
                Point(1450, 0.5168, 0.4509, "Rabine Saturna",
                    "Travel to Rabine Saturna."),
            },
        },
        {
            id = "accept-1124-wasteland",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept Wasteland.",
            complete = QuestState(1124, "activeOrCompleted"),
            route = {
                Point(1450, 0.5168, 0.4509, "Wasteland",
                    "Travel to Wasteland."),
            },
        },
        {
            id = "accept-5527-a-reliquary-of-purity",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept A Reliquary of Purity.",
            complete = QuestState(5527, "activeOrCompleted"),
            route = {
                Point(1450, 0.5168, 0.4509, "A Reliquary of Purity",
                    "Travel to A Reliquary of Purity."),
            },
        },
        {
            id = "accept-8467-feathers-for-nafien",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { quest = { id = 8467, state = "notCompleted" } },
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Feathers for Nafien.",
            complete = QuestState(8467, "activeOrCompleted"),
            route = {
                Point(1448, 0.6477, 0.0813, "Feathers for Nafien",
                    "Travel to Feathers for Nafien."),
            },
        },
        {
            id = "turnin-8470-deadwood-ritual-totem",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Deadwood Ritual Totem.",
            complete = QuestState(8470, "completed"),
            route = {
                Point(1448, 0.6549, 0.0348, "Deadwood Ritual Totem",
                    "Travel to Deadwood Ritual Totem."),
            },
        },
        {
            id = "objective-6031-1-deadwood-den-watcher",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Kill Deadwood Den Watcher.",
            complete = QuestObjective(6031, 1, "Deadwood Den Watcher"),
            route = {
                Point(1448, 0.6360, 0.0960, "Deadwood Den Watcher",
                    "Travel to Deadwood Den Watcher."),
            },
        },
        {
            id = "accept-6031-runecloth",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Runecloth.",
            complete = QuestState(6031, "activeOrCompleted"),
            route = {
                Point(1448, 0.6569, 0.0281, "Runecloth",
                    "Travel to Runecloth."),
            },
        },
        {
            id = "turnin-6031-runecloth",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Runecloth.",
            complete = QuestState(6031, "completed"),
            dependsOn = { "accept-6031-runecloth", "objective-6031-1-deadwood-den-watcher" },
            route = {
                Point(1448, 0.6569, 0.0281, "Runecloth",
                    "Travel to Runecloth."),
            },
        },
        {
            id = "turnin-4721-wild-guardians",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Wild Guardians.",
            complete = QuestState(4721, "completed"),
            dependsOn = { "accept-4721-wild-guardians" },
            route = {
                Point(1448, 0.3473, 0.5279, "Wild Guardians",
                    "Travel to Wild Guardians."),
            },
        },
        {
            id = "turnin-4882-guarding-secrets",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Guarding Secrets.",
            complete = QuestState(4882, "completed"),
            dependsOn = { "accept-4882-guarding-secrets" },
            route = {
                Point(1448, 0.3473, 0.5279, "Guarding Secrets",
                    "Travel to Guarding Secrets."),
            },
        },
        {
            id = "accept-4883-guarding-secrets",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Guarding Secrets.",
            complete = QuestState(4883, "activeOrCompleted"),
            route = {
                Point(1448, 0.3473, 0.5279, "Guarding Secrets",
                    "Travel to Guarding Secrets."),
            },
        },
        {
            id = "objective-7820-1-wool-cloth",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Wool Cloth.",
            complete = QuestObjective(7820, 1, "Wool Cloth"),
            route = {
                Point(1456, 0.4041, 0.5177, "Wool Cloth",
                    "Travel to Wool Cloth."),
            },
        },
        {
            id = "objective-7821-1-silk-cloth",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Silk Cloth.",
            complete = QuestObjective(7821, 1, "Silk Cloth"),
            route = {
                Point(1456, 0.4041, 0.5177, "Silk Cloth",
                    "Travel to Silk Cloth."),
            },
        },
        {
            id = "objective-7822-1-mageweave-cloth",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Mageweave Cloth.",
            complete = QuestObjective(7822, 1, "Mageweave Cloth"),
            route = {
                Point(1456, 0.4041, 0.5177, "Mageweave Cloth",
                    "Travel to Mageweave Cloth."),
            },
        },
        {
            id = "objective-7823-1-runecloth",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Collect 60 Runecloth.",
            complete = QuestObjective(7823, 1, "Runecloth"),
            route = {
                Point(1456, 0.4041, 0.5177, "Runecloth",
                    "Travel to Runecloth."),
            },
        },
        {
            id = "accept-7820-a-donation-of-wool",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Wool.",
            complete = QuestState(7820, "activeOrCompleted"),
            route = {
                Point(1456, 0.4305, 0.4272, "A Donation of Wool",
                    "Travel to A Donation of Wool."),
            },
        },
        {
            id = "accept-7821-a-donation-of-silk",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Silk.",
            complete = QuestState(7821, "activeOrCompleted"),
            route = {
                Point(1456, 0.4305, 0.4272, "A Donation of Silk",
                    "Travel to A Donation of Silk."),
            },
        },
        {
            id = "accept-7822-a-donation-of-mageweave",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Mageweave.",
            complete = QuestState(7822, "activeOrCompleted"),
            route = {
                Point(1456, 0.4305, 0.4272, "A Donation of Mageweave",
                    "Travel to A Donation of Mageweave."),
            },
        },
        {
            id = "accept-7823-a-donation-of-runecloth",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept A Donation of Runecloth.",
            complete = QuestState(7823, "activeOrCompleted"),
            route = {
                Point(1456, 0.4305, 0.4272, "A Donation of Runecloth",
                    "Travel to A Donation of Runecloth."),
            },
        },
        {
            id = "turnin-4883-guarding-secrets",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Guarding Secrets.",
            complete = QuestState(4883, "completed"),
            dependsOn = { "accept-4883-guarding-secrets" },
            route = {
                Point(1456, 0.7565, 0.3161, "Guarding Secrets",
                    "Travel to Guarding Secrets."),
            },
        },
        {
            id = "turnin-4987-glyphed-oaken-branch",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Glyphed Oaken Branch.",
            complete = QuestState(4987, "completed"),
            route = {
                Point(1456, 0.7565, 0.3161, "Glyphed Oaken Branch",
                    "Travel to Glyphed Oaken Branch."),
            },
        },
        {
            id = "accept-7492-camp-mojache",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Camp Mojache from Warcaller Gorlach in Orgrimmar.",
            complete = QuestState(7492, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-7492-camp-mojache",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Camp Mojache.",
            complete = QuestState(7492, "completed"),
            dependsOn = { "accept-7492-camp-mojache" },
            route = {
                Point(1444, 0.7618, 0.4383, "Camp Mojache",
                    "Travel to Camp Mojache."),
            },
        },
        {
            id = "objective-5163-2-umi-s-mechanical-yeti",
            kind = "objective",
            priority = 380,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Use Umi's Mechanical Yeti.",
            complete = QuestObjective(5163, 2, "Umi's Mechanical Yeti"),
            dependsOn = { "accept-5163-are-we-there-yeti" },
            route = {
                Point(1446, 0.5106, 0.2687, "Umi's Mechanical Yeti",
                    "Travel to Umi's Mechanical Yeti."),
            },
        },
        {
            id = "objective-4005-1-eridan-s-supplies",
            kind = "objective",
            priority = 390,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Use Eridan's Supplies.",
            complete = QuestObjective(4005, 1, "Eridan's Supplies"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-4005-1-book-of-aquor",
            kind = "objective",
            priority = 400,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Use Book of Aquor.",
            complete = QuestObjective(4005, 1, "Book of Aquor"),
            route = {
                Point(1446, 0.6862, 0.4146, "Book of Aquor",
                    "Travel to Book of Aquor."),
            },
        },
        {
            id = "turnin-4005-aquementas",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Aquementas.",
            complete = QuestState(4005, "completed"),
            dependsOn = { "objective-4005-1-eridan-s-supplies", "objective-4005-1-book-of-aquor" },
            route = {
                Point(1446, 0.6963, 0.4237, "Aquementas",
                    "Travel to Aquementas."),
            },
        },
        {
            id = "accept-3961-linken-s-adventure",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Linken's Adventure.",
            complete = QuestState(3961, "activeOrCompleted"),
            route = {
                Point(1446, 0.6963, 0.4237, "Linken's Adventure",
                    "Travel to Linken's Adventure."),
            },
        },
        {
            id = "turnin-3961-linken-s-adventure",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Linken's Adventure.",
            complete = QuestState(3961, "completed"),
            dependsOn = { "accept-3961-linken-s-adventure" },
            route = {
                Point(1449, 0.4347, 0.0679, "Linken's Adventure",
                    "Travel to Linken's Adventure."),
            },
        },
        {
            id = "objective-5163-3-umi-s-mechanical-yeti",
            kind = "objective",
            priority = 440,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Use Umi's Mechanical Yeti.",
            complete = QuestObjective(5163, 3, "Umi's Mechanical Yeti"),
            dependsOn = { "accept-5163-are-we-there-yeti" },
            route = {
                Point(1449, 0.4367, 0.0938, "Umi's Mechanical Yeti",
                    "Travel to Umi's Mechanical Yeti."),
            },
        },
    },
})
