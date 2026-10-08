local _, ns = ...

-- Forever Casual spine: Tanaris (43-44)
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
    THOUSAND_NEEDLES = 1441,
    TANARIS = 1446,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-tanaris",
    title = "Tanaris",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 43 } },
        },
    },
    goals = {
        {
            id = "turnin-2864-tran-rek",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Tran'rek.",
            complete = QuestState(2864, "completed"),
            route = {
                Point(1446, 0.5157, 0.2676, "Tran'rek",
                    "Travel to Tran'rek."),
            },
        },
        {
            id = "turnin-1188-safety-first",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Safety First.",
            complete = QuestState(1188, "completed"),
            route = {
                Point(1446, 0.5096, 0.2724, "Safety First",
                    "Travel to Safety First."),
            },
        },
        {
            id = "accept-1189-safety-first",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Safety First.",
            complete = QuestState(1189, "activeOrCompleted"),
            route = {
                Point(1446, 0.5096, 0.2724, "Safety First",
                    "Travel to Safety First."),
            },
        },
        {
            id = "turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Zanzil's Mixture and a Fool's Stout.",
            complete = QuestState(1119, "completed"),
            route = {
                Point(1441, 0.7779, 0.7727, "Zanzil's Mixture and a Fool's Stout",
                    "Travel to Zanzil's Mixture and a Fool's Stout."),
            },
        },
        {
            id = "accept-1120-get-the-gnomes-drunk",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept Get the Gnomes Drunk.",
            complete = QuestState(1120, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Get the Gnomes Drunk",
                    "Travel to Get the Gnomes Drunk."),
            },
        },
        {
            id = "turnin-1120-get-the-gnomes-drunk",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Get the Gnomes Drunk.",
            complete = QuestState(1120, "completed"),
            dependsOn = { "accept-1120-get-the-gnomes-drunk" },
            route = {
                Point(1441, 0.7756, 0.7694, "Get the Gnomes Drunk",
                    "Travel to Get the Gnomes Drunk."),
            },
        },
        {
            id = "accept-1122-report-back-to-fizzlebub",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
            } },
            text = "Accept Report Back to Fizzlebub.",
            complete = QuestState(1122, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Report Back to Fizzlebub",
                    "Travel to Report Back to Fizzlebub."),
            },
        },
        {
            id = "turnin-1137-news-for-fizzle",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in News for Fizzle.",
            complete = QuestState(1137, "completed"),
            route = {
                Point(1441, 0.7806, 0.7713, "News for Fizzle",
                    "Travel to News for Fizzle."),
            },
        },
        {
            id = "accept-1190-keeping-pace",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Keeping Pace.",
            complete = QuestState(1190, "activeOrCompleted"),
            route = {
                Point(1441, 0.8018, 0.7588, "Keeping Pace",
                    "Travel to Keeping Pace."),
            },
        },
        {
            id = "turnin-1189-safety-first",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Safety First.",
            complete = QuestState(1189, "completed"),
            dependsOn = { "accept-1189-safety-first" },
            route = {
                Point(1441, 0.8033, 0.7610, "Safety First",
                    "Travel to Safety First."),
            },
        },
        {
            id = "accept-1191-zamek-s-distraction",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Zamek's Distraction.",
            complete = QuestState(1191, "activeOrCompleted"),
            route = {
                Point(1441, 0.7981, 0.7702, "Zamek's Distraction",
                    "Travel to Zamek's Distraction."),
            },
        },
        {
            id = "turnin-1190-keeping-pace",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Keeping Pace.",
            complete = QuestState(1190, "completed"),
            dependsOn = { "accept-1190-keeping-pace" },
            route = {
                Point(1441, 0.7721, 0.7738, "Keeping Pace",
                    "Travel to Keeping Pace."),
            },
        },
        {
            id = "accept-1194-rizzle-s-schematics",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Rizzle's Schematics.",
            complete = QuestState(1194, "activeOrCompleted"),
            route = {
                Point(1441, 0.7721, 0.7738, "Rizzle's Schematics",
                    "Travel to Rizzle's Schematics."),
            },
        },
        {
            id = "turnin-1194-rizzle-s-schematics",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Rizzle's Schematics.",
            complete = QuestState(1194, "completed"),
            dependsOn = { "accept-1194-rizzle-s-schematics" },
            route = {
                Point(1441, 0.8018, 0.7588, "Rizzle's Schematics",
                    "Travel to Rizzle's Schematics."),
            },
        },
        {
            id = "accept-1707-water-pouch-bounty",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Water Pouch Bounty.",
            complete = QuestState(1707, "activeOrCompleted"),
            route = {
                Point(1446, 0.5248, 0.2844, "Water Pouch Bounty",
                    "Travel to Water Pouch Bounty."),
            },
        },
        {
            id = "accept-1690-wastewander-justice",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Wastewander Justice.",
            complete = QuestState(1690, "activeOrCompleted"),
            route = {
                Point(1446, 0.5246, 0.2851, "Wastewander Justice",
                    "Travel to Wastewander Justice."),
            },
        },
        {
            id = "accept-8365-pirate-hats-ahoy",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Pirate Hats Ahoy!.",
            complete = QuestState(8365, "activeOrCompleted"),
            route = {
                Point(1446, 0.6656, 0.2227, "Pirate Hats Ahoy!",
                    "Travel to Pirate Hats Ahoy!."),
            },
        },
        {
            id = "accept-3520-screecher-spirits",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Screecher Spirits.",
            complete = QuestState(3520, "activeOrCompleted"),
            route = {
                Point(1446, 0.6699, 0.2236, "Screecher Spirits",
                    "Travel to Screecher Spirits."),
            },
        },
        {
            id = "accept-8366-southsea-shakedown",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Southsea Shakedown.",
            complete = QuestState(8366, "activeOrCompleted"),
            route = {
                Point(1446, 0.6706, 0.2389, "Southsea Shakedown",
                    "Travel to Southsea Shakedown."),
            },
        },
        {
            id = "turnin-2872-stoley-s-debt",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Stoley's Debt.",
            complete = QuestState(2872, "completed"),
            route = {
                Point(1446, 0.6711, 0.2398, "Stoley's Debt",
                    "Travel to Stoley's Debt."),
            },
        },
        {
            id = "accept-2873-stoley-s-shipment",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Stoley's Shipment.",
            complete = QuestState(2873, "activeOrCompleted"),
            route = {
                Point(1446, 0.6711, 0.2398, "Stoley's Shipment",
                    "Travel to Stoley's Shipment."),
            },
        },
        {
            id = "turnin-1690-wastewander-justice",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Wastewander Justice.",
            complete = QuestState(1690, "completed"),
            dependsOn = { "accept-1690-wastewander-justice" },
            route = {
                Point(1446, 0.5246, 0.2851, "Wastewander Justice",
                    "Travel to Wastewander Justice."),
            },
        },
        {
            id = "turnin-1707-water-pouch-bounty",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Water Pouch Bounty.",
            complete = QuestState(1707, "completed"),
            dependsOn = { "accept-1707-water-pouch-bounty" },
            route = {
                Point(1446, 0.5248, 0.2844, "Water Pouch Bounty",
                    "Travel to Water Pouch Bounty."),
            },
        },
        {
            id = "objective-1452-1-fire-roc",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Alliance" },
            } },
            text = "Kill Fire Roc.",
            complete = QuestObjective(1452, 1, "Fire Roc"),
            route = {
                Point(1446, 0.4991, 0.3516, "Fire Roc",
                    "Travel to Fire Roc."),
            },
        },
    },
})
