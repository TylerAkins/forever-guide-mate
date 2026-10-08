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
    TANARIS = 1446,
    FELWOOD = 1448,
    UN_GORO_CRATER = 1449,
    MOONGLADE = 1450,
    WINTERSPRING = 1452,
    DARNASSUS = 1457,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-winterspring",
    title = "Winterspring",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 58 } },
        },
    },
    goals = {
        {
            id = "turnin-4808-felnok-steelspring",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Felnok Steelspring.",
            complete = QuestState(4808, "completed"),
            route = {
                Point(1452, 0.6163, 0.3861, "Felnok Steelspring",
                    "Travel to Felnok Steelspring."),
            },
        },
        {
            id = "accept-4809-chillwind-horns",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Accept Chillwind Horns.",
            complete = QuestState(4809, "activeOrCompleted"),
            route = {
                Point(1452, 0.6163, 0.3861, "Chillwind Horns",
                    "Travel to Chillwind Horns."),
            },
        },
        {
            id = "accept-3783-are-we-there-yeti",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Accept Are We There, Yeti?.",
            complete = QuestState(3783, "activeOrCompleted"),
            route = {
                Point(1452, 0.6088, 0.3762, "Are We There, Yeti?",
                    "Travel to Are We There, Yeti?."),
            },
        },
        {
            id = "objective-3783-1-ice-thistle-yeti",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Kill Ice Thistle Yeti.",
            complete = QuestObjective(3783, 1, "Ice Thistle Yeti"),
            dependsOn = { "accept-3783-are-we-there-yeti" },
            route = {
                Point(1452, 0.6765, 0.4175, "Ice Thistle Yeti",
                    "Travel to Ice Thistle Yeti."),
            },
        },
        {
            id = "turnin-3783-are-we-there-yeti",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Are We There, Yeti?.",
            complete = QuestState(3783, "completed"),
            dependsOn = { "accept-3783-are-we-there-yeti", "objective-3783-1-ice-thistle-yeti" },
            route = {
                Point(1452, 0.6765, 0.4175, "Are We There, Yeti?",
                    "Travel to Are We There, Yeti?."),
            },
        },
        {
            id = "accept-977-are-we-there-yeti",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Accept Are We There, Yeti?.",
            complete = QuestState(977, "activeOrCompleted"),
            route = {
                Point(1452, 0.6765, 0.4175, "Are We There, Yeti?",
                    "Travel to Are We There, Yeti?."),
            },
        },
        {
            id = "objective-977-1-ice-thistle-matriarch",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
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
            id = "objective-8464-1-winterfall-shaman",
            kind = "objective",
            priority = 80,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Kill 8 Winterfall Shaman.",
            complete = QuestObjective(8464, 1, "Winterfall Shaman"),
            route = {
                Point(1452, 0.6765, 0.4175, "Winterfall Shaman",
                    "Travel to Winterfall Shaman."),
            },
        },
        {
            id = "objective-8464-2-winterfall-den-watcher",
            kind = "objective",
            priority = 90,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Kill 8 Winterfall Den Watcher.",
            complete = QuestObjective(8464, 2, "Winterfall Den Watcher"),
            route = {
                Point(1452, 0.6765, 0.4175, "Winterfall Den Watcher",
                    "Travel to Winterfall Den Watcher."),
            },
        },
        {
            id = "objective-8464-3-winterfall-ursa",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Kill 8 Winterfall Ursa.",
            complete = QuestObjective(8464, 3, "Winterfall Ursa"),
            route = {
                Point(1452, 0.6765, 0.4175, "Winterfall Ursa",
                    "Travel to Winterfall Ursa."),
            },
        },
        {
            id = "turnin-977-are-we-there-yeti",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
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
            id = "accept-5163-are-we-there-yeti",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Alliance" },
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
            priority = 130,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Alliance" },
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
            id = "turnin-4809-chillwind-horns",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
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
            id = "objective-4084-1-silvery-claws",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Collect 11 Silvery Claws.",
            complete = QuestObjective(4084, 1, "Silvery Claws"),
            route = {
                Point(1452, 0.6146, 0.3697, "Silvery Claws",
                    "Travel to Silvery Claws."),
            },
        },
        {
            id = "turnin-8464-winterfall-activity",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Winterfall Activity.",
            complete = QuestState(8464, "completed"),
            dependsOn = { "objective-8464-1-winterfall-shaman", "objective-8464-2-winterfall-den-watcher", "objective-8464-3-winterfall-ursa" },
            route = {
                Point(1452, 0.2774, 0.3450, "Winterfall Activity",
                    "Travel to Winterfall Activity."),
            },
        },
        {
            id = "turnin-7066-seed-of-life",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Seed of Life.",
            complete = QuestState(7066, "completed"),
            route = {
                Point(1450, 0.3618, 0.4179, "Seed of Life",
                    "Travel to Seed of Life."),
            },
        },
        {
            id = "turnin-6762-rabine-saturna",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Rabine Saturna.",
            complete = QuestState(6762, "completed"),
            route = {
                Point(1450, 0.5168, 0.4509, "Rabine Saturna",
                    "Travel to Rabine Saturna."),
            },
        },
        {
            id = "accept-1124-wasteland",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Alliance" },
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
            priority = 200,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Reliquary of Purity.",
            complete = QuestState(5527, "activeOrCompleted"),
            route = {
                Point(1450, 0.5168, 0.4509, "A Reliquary of Purity",
                    "Travel to A Reliquary of Purity."),
            },
        },
        {
            id = "turnin-4084-silver-heart",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Silver Heart.",
            complete = QuestState(4084, "completed"),
            dependsOn = { "objective-4084-1-silvery-claws" },
            route = {
                Point(1448, 0.5135, 0.8151, "Silver Heart",
                    "Travel to Silver Heart."),
            },
        },
        {
            id = "accept-4005-aquementas",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Accept Aquementas.",
            complete = QuestState(4005, "activeOrCompleted"),
            route = {
                Point(1448, 0.5135, 0.8151, "Aquementas",
                    "Travel to Aquementas."),
            },
        },
        {
            id = "turnin-4986-glyphed-oaken-branch",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Glyphed Oaken Branch.",
            complete = QuestState(4986, "completed"),
            route = {
                Point(1457, 0.3538, 0.0843, "Glyphed Oaken Branch",
                    "Travel to Glyphed Oaken Branch."),
            },
        },
        {
            id = "objective-5163-2-umi-s-mechanical-yeti",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Alliance" },
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
            priority = 250,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Use Eridan's Supplies.",
            complete = QuestObjective(4005, 1, "Eridan's Supplies"),
            dependsOn = { "accept-4005-aquementas" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-4005-1-book-of-aquor",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Use Book of Aquor.",
            complete = QuestObjective(4005, 1, "Book of Aquor"),
            dependsOn = { "accept-4005-aquementas" },
            route = {
                Point(1446, 0.6862, 0.4146, "Book of Aquor",
                    "Travel to Book of Aquor."),
            },
        },
        {
            id = "turnin-4005-aquementas",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Aquementas.",
            complete = QuestState(4005, "completed"),
            dependsOn = { "accept-4005-aquementas", "objective-4005-1-eridan-s-supplies", "objective-4005-1-book-of-aquor" },
            route = {
                Point(1446, 0.6963, 0.4237, "Aquementas",
                    "Travel to Aquementas."),
            },
        },
        {
            id = "accept-3961-linken-s-adventure",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
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
            priority = 290,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
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
            priority = 300,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Alliance" },
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
