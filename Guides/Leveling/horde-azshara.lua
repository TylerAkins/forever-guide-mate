local _, ns = ...

-- Forever Casual spine: Azshara (54-54)
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
    AZSHARA = 1447,
}

ns:RegisterGuide({
    id = "leveling-era-horde-azshara",
    title = "Azshara",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 54 } },
        },
    },
    goals = {
        {
            id = "accept-3505-betrayed",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Betrayed.",
            complete = QuestState(3505, "activeOrCompleted"),
            route = {
                Point(1447, 0.2226, 0.5148, "Betrayed",
                    "Travel to Betrayed."),
            },
        },
        {
            id = "turnin-3562-magatha-s-payment-to-jediga",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Magatha's Payment to Jediga.",
            complete = QuestState(3562, "completed"),
            route = {
                Point(1447, 0.2256, 0.5142, "Magatha's Payment to Jediga",
                    "Travel to Magatha's Payment to Jediga."),
            },
        },
        {
            id = "turnin-3563-jes-rimon-s-payment-to-jediga",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Jes'rimon's Payment to Jediga.",
            complete = QuestState(3563, "completed"),
            route = {
                Point(1447, 0.2256, 0.5142, "Jes'rimon's Payment to Jediga",
                    "Travel to Jes'rimon's Payment to Jediga."),
            },
        },
        {
            id = "accept-3542-delivery-to-andron-gant",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Delivery to Andron Gant.",
            complete = QuestState(3542, "activeOrCompleted"),
            route = {
                Point(1447, 0.2256, 0.5142, "Delivery to Andron Gant",
                    "Travel to Delivery to Andron Gant."),
            },
        },
        {
            id = "accept-3601-kim-jael-indeed",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Kim'jael Indeed!.",
            complete = QuestState(3601, "activeOrCompleted"),
            route = {
                Point(1447, 0.5345, 0.2182, "Kim'jael Indeed!",
                    "Travel to Kim'jael Indeed!."),
            },
        },
        {
            id = "objective-3505-1-blood-elf-reclaimer",
            kind = "objective",
            priority = 60,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Blood Elf Reclaimer.",
            complete = QuestObjective(3505, 1, "Blood Elf Reclaimer"),
            dependsOn = { "accept-3505-betrayed" },
            route = {
                Point(1447, 0.5520, 0.2740, "Blood Elf Reclaimer",
                    "Travel to Blood Elf Reclaimer."),
            },
        },
        {
            id = "objective-3505-2-blood-elf-surveyor",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Blood Elf Surveyor.",
            complete = QuestObjective(3505, 2, "Blood Elf Surveyor"),
            dependsOn = { "accept-3505-betrayed" },
            route = {
                Point(1447, 0.5520, 0.2740, "Blood Elf Surveyor",
                    "Travel to Blood Elf Surveyor."),
            },
        },
        {
            id = "turnin-3505-betrayed",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Betrayed.",
            complete = QuestState(3505, "completed"),
            dependsOn = { "accept-3505-betrayed", "objective-3505-1-blood-elf-reclaimer", "objective-3505-2-blood-elf-surveyor" },
            route = {
                Point(1447, 0.5951, 0.3130, "Betrayed",
                    "Travel to Betrayed."),
            },
        },
        {
            id = "accept-3506-betrayed",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Betrayed.",
            complete = QuestState(3506, "activeOrCompleted"),
            route = {
                Point(1447, 0.5951, 0.3130, "Betrayed",
                    "Travel to Betrayed."),
            },
        },
        {
            id = "objective-3506-1-blood-elf-defender",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill Blood Elf Defender.",
            complete = QuestObjective(3506, 1, "Blood Elf Defender"),
            dependsOn = { "accept-3506-betrayed" },
            route = {
                Point(1447, 0.5955, 0.3152, "Blood Elf Defender",
                    "Travel to Blood Elf Defender."),
            },
        },
        {
            id = "turnin-3601-kim-jael-indeed",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Kim'jael Indeed!.",
            complete = QuestState(3601, "completed"),
            dependsOn = { "accept-3601-kim-jael-indeed" },
            route = {
                Point(1447, 0.5345, 0.2182, "Kim'jael Indeed!",
                    "Travel to Kim'jael Indeed!."),
            },
        },
        {
            id = "accept-5534-kim-jael-s-missing-equipment",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Kim'jael's \"Missing\" Equipment.",
            complete = QuestState(5534, "activeOrCompleted"),
            route = {
                Point(1447, 0.5345, 0.2182, "Kim'jael's \"Missing\" Equipment",
                    "Travel to Kim'jael's \"Missing\" Equipment."),
            },
        },
        {
            id = "objective-5534-1-spitelash-siren",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Kill Spitelash Siren.",
            complete = QuestObjective(5534, 1, "Spitelash Siren"),
            dependsOn = { "accept-5534-kim-jael-s-missing-equipment" },
            route = {
                Point(1447, 0.4800, 0.4220, "Spitelash Siren",
                    "Travel to Spitelash Siren."),
            },
        },
        {
            id = "turnin-5534-kim-jael-s-missing-equipment",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Kim'jael's \"Missing\" Equipment.",
            complete = QuestState(5534, "completed"),
            dependsOn = { "accept-5534-kim-jael-s-missing-equipment", "objective-5534-1-spitelash-siren" },
            route = {
                Point(1447, 0.4595, 0.3862, "Kim'jael's \"Missing\" Equipment",
                    "Travel to Kim'jael's \"Missing\" Equipment."),
            },
        },
        {
            id = "turnin-3506-betrayed",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Betrayed.",
            complete = QuestState(3506, "completed"),
            dependsOn = { "accept-3506-betrayed", "objective-3506-1-blood-elf-defender" },
            route = {
                Point(1447, 0.2226, 0.5148, "Betrayed",
                    "Travel to Betrayed."),
            },
        },
        {
            id = "accept-3507-betrayed",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Betrayed.",
            complete = QuestState(3507, "activeOrCompleted"),
            route = {
                Point(1447, 0.2226, 0.5148, "Betrayed",
                    "Travel to Betrayed."),
            },
        },
    },
})
