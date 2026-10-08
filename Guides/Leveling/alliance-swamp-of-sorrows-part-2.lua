local _, ns = ...

-- Forever Casual spine: Swamp of Sorrows (43-43)
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
    BLASTED_LANDS = 1419,
    DUSKWOOD = 1431,
    STRANGLETHORN_VALE = 1434,
    SWAMP_OF_SORROWS = 1435,
    DUSTWALLOW_MARSH = 1445,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-swamp-of-sorrows-part-2",
    title = "Swamp of Sorrows",
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
            id = "turnin-1477-vital-supplies",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Vital Supplies.",
            complete = QuestState(1477, "completed"),
            route = {
                Point(1431, 0.7577, 0.4615, "Vital Supplies",
                    "Travel to Vital Supplies."),
            },
        },
        {
            id = "accept-1398-driftwood",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Driftwood.",
            complete = QuestState(1398, "activeOrCompleted"),
            route = {
                Point(1435, 0.2674, 0.5983, "Driftwood",
                    "Travel to Driftwood."),
            },
        },
        {
            id = "objective-1398-1-sundried-driftwood",
            kind = "objective",
            priority = 30,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Click Sundried Driftwood.",
            complete = QuestObjective(1398, 1, "Sundried Driftwood"),
            dependsOn = { "accept-1398-driftwood" },
            route = {
                Point(1435, 0.8730, 0.7810, "Sundried Driftwood",
                    "Travel to Sundried Driftwood."),
            },
        },
        {
            id = "turnin-1398-driftwood",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Driftwood.",
            complete = QuestState(1398, "completed"),
            dependsOn = { "accept-1398-driftwood", "objective-1398-1-sundried-driftwood" },
            route = {
                Point(1435, 0.2674, 0.5983, "Driftwood",
                    "Travel to Driftwood."),
            },
        },
        {
            id = "accept-1425-deliver-the-shipment",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Deliver the Shipment.",
            complete = QuestState(1425, "activeOrCompleted"),
            route = {
                Point(1435, 0.2674, 0.5983, "Deliver the Shipment",
                    "Travel to Deliver the Shipment."),
            },
        },
        {
            id = "turnin-1364-mazen-s-behest",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Mazen's Behest.",
            complete = QuestState(1364, "completed"),
            route = {
                Point(1419, 0.6765, 0.1916, "Mazen's Behest",
                    "Travel to Mazen's Behest."),
            },
        },
        {
            id = "turnin-1425-deliver-the-shipment",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Deliver the Shipment.",
            complete = QuestState(1425, "completed"),
            dependsOn = { "accept-1425-deliver-the-shipment" },
            route = {
                Point(1419, 0.6652, 0.2138, "Deliver the Shipment",
                    "Travel to Deliver the Shipment."),
            },
        },
        {
            id = "accept-1395-supplies-for-nethergarde",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Supplies for Nethergarde.",
            complete = QuestState(1395, "activeOrCompleted"),
            route = {
                Point(1431, 0.7577, 0.4615, "Supplies for Nethergarde",
                    "Travel to Supplies for Nethergarde."),
            },
        },
        {
            id = "turnin-1395-supplies-for-nethergarde",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Supplies for Nethergarde.",
            complete = QuestState(1395, "completed"),
            dependsOn = { "accept-1395-supplies-for-nethergarde" },
            route = {
                Point(1419, 0.6652, 0.2138, "Supplies for Nethergarde",
                    "Travel to Supplies for Nethergarde."),
            },
        },
        {
            id = "accept-580-whiskey-slim-s-lost-grog",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
            } },
            text = "Accept Whiskey Slim's Lost Grog.",
            complete = QuestState(580, "activeOrCompleted"),
            route = {
                Point(1434, 0.2713, 0.7745, "Whiskey Slim's Lost Grog",
                    "Travel to Whiskey Slim's Lost Grog."),
            },
        },
        {
            id = "accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept Zanzil's Mixture and a Fool's Stout.",
            complete = QuestState(1119, "activeOrCompleted"),
            route = {
                Point(1434, 0.2712, 0.7721, "Zanzil's Mixture and a Fool's Stout",
                    "Travel to Zanzil's Mixture and a Fool's Stout."),
            },
        },
        {
            id = "accept-2864-tran-rek",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Tran'rek.",
            complete = QuestState(2864, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Tran'rek",
                    "Travel to Tran'rek."),
            },
        },
        {
            id = "accept-2872-stoley-s-debt",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept Stoley's Debt.",
            complete = QuestState(2872, "activeOrCompleted"),
            route = {
                Point(1434, 0.2778, 0.7707, "Stoley's Debt",
                    "Travel to Stoley's Debt."),
            },
        },
        {
            id = "turnin-623-akiris-by-the-bundle",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Akiris by the Bundle.",
            complete = QuestState(623, "completed"),
            route = {
                Point(1445, 0.6884, 0.5322, "Akiris by the Bundle",
                    "Travel to Akiris by the Bundle."),
            },
        },
        {
            id = "turnin-1258-and-bugs",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Turn in ... and Bugs.",
            complete = QuestState(1258, "completed"),
            route = {
                Point(1445, 0.6634, 0.4547, "... and Bugs",
                    "Travel to ... and Bugs."),
            },
        },
    },
})
