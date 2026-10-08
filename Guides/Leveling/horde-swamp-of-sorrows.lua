local _, ns = ...

-- Forever Casual spine: Swamp of Sorrows (45-46)
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
    STRANGLETHORN_VALE = 1434,
    SWAMP_OF_SORROWS = 1435,
    FERALAS = 1444,
}

ns:RegisterGuide({
    id = "leveling-era-horde-swamp-of-sorrows",
    title = "Swamp of Sorrows",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 45 } },
        },
    },
    goals = {
        {
            id = "accept-2784-fall-from-grace",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Accept Fall From Grace.",
            complete = QuestState(2784, "activeOrCompleted"),
            route = {
                Point(1435, 0.3429, 0.6613, "Fall From Grace",
                    "Travel to Fall From Grace."),
            },
        },
        {
            id = "turnin-2784-fall-from-grace",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Turn in Fall From Grace.",
            complete = QuestState(2784, "completed"),
            dependsOn = { "accept-2784-fall-from-grace" },
            route = {
                Point(1435, 0.3429, 0.6613, "Fall From Grace",
                    "Travel to Fall From Grace."),
            },
        },
        {
            id = "accept-2621-the-disgraced-one",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Accept The Disgraced One.",
            complete = QuestState(2621, "activeOrCompleted"),
            route = {
                Point(1435, 0.3429, 0.6613, "The Disgraced One",
                    "Travel to The Disgraced One."),
            },
        },
        {
            id = "turnin-2621-the-disgraced-one",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Disgraced One.",
            complete = QuestState(2621, "completed"),
            dependsOn = { "accept-2621-the-disgraced-one" },
            route = {
                Point(1435, 0.4779, 0.5495, "The Disgraced One",
                    "Travel to The Disgraced One."),
            },
        },
        {
            id = "accept-2622-the-missing-orders",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Accept The Missing Orders.",
            complete = QuestState(2622, "activeOrCompleted"),
            route = {
                Point(1435, 0.4779, 0.5495, "The Missing Orders",
                    "Travel to The Missing Orders."),
            },
        },
        {
            id = "accept-1429-the-atal-ai-exile",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept The Atal'ai Exile.",
            complete = QuestState(1429, "activeOrCompleted"),
            route = {
                Point(1435, 0.4793, 0.5479, "The Atal'ai Exile",
                    "Travel to The Atal'ai Exile."),
            },
        },
        {
            id = "turnin-2622-the-missing-orders",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Missing Orders.",
            complete = QuestState(2622, "completed"),
            dependsOn = { "accept-2622-the-missing-orders" },
            route = {
                Point(1435, 0.4498, 0.5734, "The Missing Orders",
                    "Travel to The Missing Orders."),
            },
        },
        {
            id = "accept-699-lack-of-surplus",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Accept Lack of Surplus.",
            complete = QuestState(699, "activeOrCompleted"),
            route = {
                Point(1435, 0.8132, 0.8097, "Lack of Surplus",
                    "Travel to Lack of Surplus."),
            },
        },
        {
            id = "objective-699-1-sawtooth-snapper",
            kind = "objective",
            priority = 90,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Kill Sawtooth Snapper.",
            complete = QuestObjective(699, 1, "Sawtooth Snapper"),
            dependsOn = { "accept-699-lack-of-surplus" },
            route = {
                Point(1435, 0.8200, 0.7300, "Sawtooth Snapper",
                    "Travel to Sawtooth Snapper."),
            },
        },
        {
            id = "turnin-699-lack-of-surplus",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Turn in Lack of Surplus.",
            complete = QuestState(699, "completed"),
            dependsOn = { "accept-699-lack-of-surplus", "objective-699-1-sawtooth-snapper" },
            route = {
                Point(1435, 0.8132, 0.8097, "Lack of Surplus",
                    "Travel to Lack of Surplus."),
            },
        },
        {
            id = "accept-1422-threat-from-the-sea",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Accept Threat From the Sea.",
            complete = QuestState(1422, "activeOrCompleted"),
            route = {
                Point(1435, 0.8132, 0.8097, "Threat From the Sea",
                    "Travel to Threat From the Sea."),
            },
        },
        {
            id = "turnin-1422-threat-from-the-sea",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Turn in Threat From the Sea.",
            complete = QuestState(1422, "completed"),
            dependsOn = { "accept-1422-threat-from-the-sea" },
            route = {
                Point(1435, 0.8375, 0.8042, "Threat From the Sea",
                    "Travel to Threat From the Sea."),
            },
        },
        {
            id = "accept-1426-threat-from-the-sea",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Accept Threat From the Sea.",
            complete = QuestState(1426, "activeOrCompleted"),
            route = {
                Point(1435, 0.8375, 0.8042, "Threat From the Sea",
                    "Travel to Threat From the Sea."),
            },
        },
        {
            id = "objective-1426-1-marsh-murloc",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Marsh Murloc.",
            complete = QuestObjective(1426, 1, "Marsh Murloc"),
            dependsOn = { "accept-1426-threat-from-the-sea" },
            route = {
                Point(1435, 0.8520, 0.8220, "Marsh Murloc",
                    "Travel to Marsh Murloc."),
            },
        },
        {
            id = "turnin-1426-threat-from-the-sea",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Turn in Threat From the Sea.",
            complete = QuestState(1426, "completed"),
            dependsOn = { "accept-1426-threat-from-the-sea", "objective-1426-1-marsh-murloc" },
            route = {
                Point(1435, 0.8376, 0.8043, "Threat From the Sea",
                    "Travel to Threat From the Sea."),
            },
        },
        {
            id = "accept-1427-threat-from-the-sea",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Accept Threat From the Sea.",
            complete = QuestState(1427, "activeOrCompleted"),
            route = {
                Point(1435, 0.8376, 0.8043, "Threat From the Sea",
                    "Travel to Threat From the Sea."),
            },
        },
        {
            id = "turnin-1427-threat-from-the-sea",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Turn in Threat From the Sea.",
            complete = QuestState(1427, "completed"),
            dependsOn = { "accept-1427-threat-from-the-sea" },
            route = {
                Point(1435, 0.8131, 0.8097, "Threat From the Sea",
                    "Travel to Threat From the Sea."),
            },
        },
        {
            id = "accept-1428-continued-threat",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Accept Continued Threat.",
            complete = QuestState(1428, "activeOrCompleted"),
            route = {
                Point(1435, 0.8376, 0.8041, "Continued Threat",
                    "Travel to Continued Threat."),
            },
        },
        {
            id = "objective-1428-1-marsh-inkspewer",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Marsh Inkspewer.",
            complete = QuestObjective(1428, 1, "Marsh Inkspewer"),
            dependsOn = { "accept-1428-continued-threat" },
            route = {
                Point(1435, 0.6637, 0.7654, "Marsh Inkspewer",
                    "Travel to Marsh Inkspewer."),
            },
        },
        {
            id = "objective-1428-2-marsh-flesheater",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Marsh Flesheater.",
            complete = QuestObjective(1428, 2, "Marsh Flesheater"),
            dependsOn = { "accept-1428-continued-threat" },
            route = {
                Point(1435, 0.6637, 0.7654, "Marsh Flesheater",
                    "Travel to Marsh Flesheater."),
            },
        },
        {
            id = "objective-1428-3-marsh-oracle",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Marsh Oracle.",
            complete = QuestObjective(1428, 3, "Marsh Oracle"),
            dependsOn = { "accept-1428-continued-threat" },
            route = {
                Point(1435, 0.6637, 0.7654, "Marsh Oracle",
                    "Travel to Marsh Oracle."),
            },
        },
        {
            id = "turnin-1428-continued-threat",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Turn in Continued Threat.",
            complete = QuestState(1428, "completed"),
            dependsOn = { "accept-1428-continued-threat", "objective-1428-1-marsh-inkspewer", "objective-1428-2-marsh-flesheater", "objective-1428-3-marsh-oracle" },
            route = {
                Point(1435, 0.6637, 0.7654, "Continued Threat",
                    "Travel to Continued Threat."),
            },
        },
        {
            id = "accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Zanzil's Mixture and a Fool's Stout.",
            complete = QuestState(1119, "activeOrCompleted"),
            route = {
                Point(1434, 0.2712, 0.7721, "Zanzil's Mixture and a Fool's Stout",
                    "Travel to Zanzil's Mixture and a Fool's Stout."),
            },
        },
        {
            id = "turnin-3122-return-to-witch-doctor-uzer-i",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Turn in Return to Witch Doctor Uzer'i.",
            complete = QuestState(3122, "completed"),
            route = {
                Point(1444, 0.7442, 0.4336, "Return to Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "accept-3123-testing-the-vessel",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Testing the Vessel.",
            complete = QuestState(3123, "activeOrCompleted"),
            route = {
                Point(1444, 0.7442, 0.4336, "Testing the Vessel",
                    "Travel to Testing the Vessel."),
            },
        },
        {
            id = "accept-3380-the-sunken-temple",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept The Sunken Temple.",
            complete = QuestState(3380, "activeOrCompleted"),
            route = {
                Point(1444, 0.7442, 0.4336, "The Sunken Temple",
                    "Travel to The Sunken Temple."),
            },
        },
    },
})
