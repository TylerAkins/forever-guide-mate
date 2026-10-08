local _, ns = ...

-- Forever Casual spine: Stonetalon Mountains (25-26)
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
    STONETALON_MOUNTAINS = 1442,
}

ns:RegisterGuide({
    id = "leveling-era-horde-stonetalon-mountains",
    title = "Stonetalon Mountains",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 25 } },
        },
    },
    goals = {
        {
            id = "accept-1087-cenarius-legacy",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Accept Cenarius' Legacy.",
            complete = QuestState(1087, "activeOrCompleted"),
            route = {
                Point(1442, 0.4594, 0.6042, "Cenarius' Legacy",
                    "Travel to Cenarius' Legacy."),
            },
        },
        {
            id = "accept-6301-cycle-of-rebirth",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Accept Cycle of Rebirth.",
            complete = QuestState(6301, "activeOrCompleted"),
            route = {
                Point(1442, 0.4746, 0.5838, "Cycle of Rebirth",
                    "Travel to Cycle of Rebirth."),
            },
        },
        {
            id = "accept-5881-calling-in-the-reserves",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Calling in the Reserves.",
            complete = QuestState(5881, "activeOrCompleted"),
            route = {
                Point(1442, 0.4720, 0.6115, "Calling in the Reserves",
                    "Travel to Calling in the Reserves."),
            },
        },
        {
            id = "accept-6282-harpies-threaten",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Accept Harpies Threaten.",
            complete = QuestState(6282, "activeOrCompleted"),
            route = {
                Point(1442, 0.4720, 0.6115, "Harpies Threaten",
                    "Travel to Harpies Threaten."),
            },
        },
        {
            id = "accept-6393-elemental-war",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Accept Elemental War.",
            complete = QuestState(6393, "activeOrCompleted"),
            route = {
                Point(1442, 0.4920, 0.6191, "Elemental War",
                    "Travel to Elemental War."),
            },
        },
        {
            id = "accept-1096-gerenzo-wrenchwhistle",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Accept Gerenzo Wrenchwhistle.",
            complete = QuestState(1096, "activeOrCompleted"),
            route = {
                Point(1442, 0.5899, 0.6260, "Gerenzo Wrenchwhistle",
                    "Travel to Gerenzo Wrenchwhistle."),
            },
        },
        {
            id = "objective-1086-1-toxic-fogger",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Use Toxic Fogger.",
            complete = QuestObjective(1086, 1, "Toxic Fogger"),
            route = {
                Point(1442, 0.6652, 0.4548, "Toxic Fogger",
                    "Travel to Toxic Fogger."),
            },
        },
        {
            id = "turnin-1096-gerenzo-wrenchwhistle",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gerenzo Wrenchwhistle.",
            complete = QuestState(1096, "completed"),
            dependsOn = { "accept-1096-gerenzo-wrenchwhistle" },
            route = {
                Point(1442, 0.5899, 0.6260, "Gerenzo Wrenchwhistle",
                    "Travel to Gerenzo Wrenchwhistle."),
            },
        },
        {
            id = "objective-6393-1-burning-ravager",
            kind = "objective",
            priority = 90,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Kill Burning Ravager.",
            complete = QuestObjective(6393, 1, "Burning Ravager"),
            dependsOn = { "accept-6393-elemental-war" },
            route = {
                Point(1442, 0.6047, 0.7013, "Burning Ravager",
                    "Travel to Burning Ravager."),
            },
        },
        {
            id = "objective-1058-3-antlered-courser",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Kill Antlered Courser.",
            complete = QuestObjective(1058, 3, "Antlered Courser"),
            route = {
                Point(1442, 0.4640, 0.3820, "Antlered Courser",
                    "Travel to Antlered Courser."),
            },
        },
        {
            id = "objective-6393-1-burning-ravager-2",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Kill Burning Ravager.",
            complete = QuestObjective(6393, 1, "Burning Ravager"),
            dependsOn = { "accept-6393-elemental-war" },
            route = {
                Point(1442, 0.4480, 0.4340, "Burning Ravager",
                    "Travel to Burning Ravager."),
            },
        },
        {
            id = "turnin-6393-elemental-war",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Turn in Elemental War.",
            complete = QuestState(6393, "completed"),
            dependsOn = { "accept-6393-elemental-war", "objective-6393-1-burning-ravager", "objective-6393-1-burning-ravager-2" },
            route = {
                Point(1442, 0.3793, 0.6796, "Elemental War",
                    "Travel to Elemental War."),
            },
        },
        {
            id = "turnin-6282-harpies-threaten",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Turn in Harpies Threaten.",
            complete = QuestState(6282, "completed"),
            dependsOn = { "accept-6282-harpies-threaten" },
            route = {
                Point(1442, 0.4719, 0.6114, "Harpies Threaten",
                    "Travel to Harpies Threaten."),
            },
        },
        {
            id = "turnin-6301-cycle-of-rebirth",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Turn in Cycle of Rebirth.",
            complete = QuestState(6301, "completed"),
            dependsOn = { "accept-6301-cycle-of-rebirth" },
            route = {
                Point(1442, 0.4746, 0.5838, "Cycle of Rebirth",
                    "Travel to Cycle of Rebirth."),
            },
        },
        {
            id = "accept-6381-new-life",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Accept New Life.",
            complete = QuestState(6381, "activeOrCompleted"),
            route = {
                Point(1442, 0.4746, 0.5838, "New Life",
                    "Travel to New Life."),
            },
        },
        {
            id = "turnin-1087-cenarius-legacy",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Turn in Cenarius' Legacy.",
            complete = QuestState(1087, "completed"),
            dependsOn = { "accept-1087-cenarius-legacy" },
            route = {
                Point(1442, 0.4594, 0.6042, "Cenarius' Legacy",
                    "Travel to Cenarius' Legacy."),
            },
        },
        {
            id = "turnin-6381-new-life",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Turn in New Life.",
            complete = QuestState(6381, "completed"),
            dependsOn = { "accept-6381-new-life" },
            route = {
                Point(1442, 0.3793, 0.6796, "New Life",
                    "Travel to New Life."),
            },
        },
        {
            id = "turnin-1058-jin-zil-s-forest-magic",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Turn in Jin'Zil's Forest Magic.",
            complete = QuestState(1058, "completed"),
            dependsOn = { "objective-1058-3-antlered-courser" },
            route = {
                Point(1442, 0.7454, 0.9794, "Jin'Zil's Forest Magic",
                    "Travel to Jin'Zil's Forest Magic."),
            },
        },
        {
            id = "turnin-1068-shredding-machines",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 25 } },
                { faction = "Horde" },
            } },
            text = "Turn in Shredding Machines.",
            complete = QuestState(1068, "completed"),
            route = {
                Point(1442, 0.7292, 0.9372, "Shredding Machines",
                    "Travel to Shredding Machines."),
            },
        },
        {
            id = "woven-objective-97538-pigments-for-paints",
            kind = "objective",
            priority = 200,
            conditions = {
                all = {
                    { level = { min = 26 } },
                    { quest = { id = 97538, state = "active" } },
                },
            },
            useClientPin = true,
            text = "Collect 30 Mirkweed Pods in Mirkfallon Lake. No saved spot for the pods, so the guide follows the pin in your quest log.",
            complete = QuestState(97538, "complete"),
            route = {
                Point(1442, 0.4800, 0.4100, "Mirkfallon Lake",
                    "Travel to Mirkfallon Lake."),
            },
        },
        {
            id = "woven-turnin-97538-pigments-for-paints",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { level = { min = 26 } },
                    { quest = { id = 97538, state = "active" } },
                },
            },
            text = "Turn in Pigments for Paints to Tah Winterhoof in Thunder Bluff.",
            complete = QuestState(97538, "completed"),
            route = {
                Point(1456, 0.5400, 0.4740, "Tah Winterhoof",
                    "Travel to Tah Winterhoof."),
            },
        },
    },
})
