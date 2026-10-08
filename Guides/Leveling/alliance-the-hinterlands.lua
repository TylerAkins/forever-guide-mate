local _, ns = ...

-- Forever Casual spine: The Hinterlands (48-49)
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
    THE_HINTERLANDS = 1425,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-the-hinterlands",
    title = "The Hinterlands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 48 } },
        },
    },
    goals = {
        {
            id = "accept-2988-witherbark-cages",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Alliance" },
            } },
            text = "Accept Witherbark Cages.",
            complete = QuestState(2988, "activeOrCompleted"),
            route = {
                Point(1425, 0.0976, 0.4448, "Witherbark Cages",
                    "Travel to Witherbark Cages."),
            },
        },
        {
            id = "turnin-1452-rhapsody-s-kalimdor-kocktail",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Rhapsody's Kalimdor Kocktail.",
            complete = QuestState(1452, "completed"),
            route = {
                Point(1425, 0.2081, 0.4782, "Rhapsody's Kalimdor Kocktail",
                    "Travel to Rhapsody's Kalimdor Kocktail."),
            },
        },
        {
            id = "accept-1469-rhapsody-s-tale",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
            } },
            text = "Accept Rhapsody's Tale.",
            complete = QuestState(1469, "activeOrCompleted"),
            route = {
                Point(1425, 0.2694, 0.4859, "Rhapsody's Tale",
                    "Travel to Rhapsody's Tale."),
            },
        },
        {
            id = "accept-2880-troll-necklace-bounty",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Alliance" },
            } },
            text = "Accept Troll Necklace Bounty.",
            complete = QuestState(2880, "activeOrCompleted"),
            route = {
                Point(1425, 0.1483, 0.4456, "Troll Necklace Bounty",
                    "Travel to Troll Necklace Bounty."),
            },
        },
        {
            id = "turnin-2880-troll-necklace-bounty",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Troll Necklace Bounty.",
            complete = QuestState(2880, "completed"),
            dependsOn = { "accept-2880-troll-necklace-bounty" },
            route = {
                Point(1425, 0.1483, 0.4456, "Troll Necklace Bounty",
                    "Travel to Troll Necklace Bounty."),
            },
        },
        {
            id = "accept-2877-skulk-rock-clean-up",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Skulk Rock Clean-up.",
            complete = QuestState(2877, "activeOrCompleted"),
            route = {
                Point(1425, 0.1483, 0.4456, "Skulk Rock Clean-up",
                    "Travel to Skulk Rock Clean-up."),
            },
        },
        {
            id = "turnin-2988-witherbark-cages",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Witherbark Cages.",
            complete = QuestState(2988, "completed"),
            dependsOn = { "accept-2988-witherbark-cages" },
            route = {
                Point(1425, 0.0976, 0.4448, "Witherbark Cages",
                    "Travel to Witherbark Cages."),
            },
        },
        {
            id = "accept-2989-the-altar-of-zul",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Altar of Zul.",
            complete = QuestState(2989, "activeOrCompleted"),
            route = {
                Point(1425, 0.0976, 0.4448, "The Altar of Zul",
                    "Travel to The Altar of Zul."),
            },
        },
        {
            id = "objective-2877-1-green-sludge",
            kind = "objective",
            priority = 90,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Green Sludge.",
            complete = QuestObjective(2877, 1, "Green Sludge"),
            dependsOn = { "accept-2877-skulk-rock-clean-up" },
            route = {
                Point(1425, 0.4860, 0.4260, "Green Sludge",
                    "Travel to Green Sludge."),
            },
        },
        {
            id = "objective-2877-2-jade-ooze",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Jade Ooze.",
            complete = QuestObjective(2877, 2, "Jade Ooze"),
            dependsOn = { "accept-2877-skulk-rock-clean-up" },
            route = {
                Point(1425, 0.4860, 0.4260, "Jade Ooze",
                    "Travel to Jade Ooze."),
            },
        },
        {
            id = "accept-485-find-oox-09-hl",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Alliance" },
            } },
            text = "Accept Find OOX-09/HL!.",
            complete = QuestState(485, "activeOrCompleted"),
            route = {
                Point(1425, 0.5740, 0.5040, "Find OOX-09/HL!",
                    "Travel to Find OOX-09/HL!."),
            },
        },
        {
            id = "turnin-485-find-oox-09-hl",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Find OOX-09/HL!.",
            complete = QuestState(485, "completed"),
            dependsOn = { "accept-485-find-oox-09-hl" },
            route = {
                Point(1425, 0.4935, 0.3766, "Find OOX-09/HL!",
                    "Travel to Find OOX-09/HL!."),
            },
        },
    },
})
