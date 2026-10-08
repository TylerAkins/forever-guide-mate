local _, ns = ...

-- Forever Casual spine: Dustwallow Marsh (40-40)
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
    THE_BARRENS = 1413,
    DUSTWALLOW_MARSH = 1445,
    STORMWIND_CITY = 1453,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-dustwallow-marsh",
    title = "Dustwallow Marsh",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 40 } },
        },
    },
    goals = {
        {
            id = "accept-1661-the-tome-of-nobility",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
                { class = 2 },
            } },
            text = "Accept The Tome of Nobility.",
            complete = QuestState(1661, "activeOrCompleted"),
            route = {
                Point(1453, 0.4305, 0.3448, "The Tome of Nobility",
                    "Travel to The Tome of Nobility."),
            },
        },
        {
            id = "turnin-1661-the-tome-of-nobility",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
                { class = 2 },
            } },
            text = "Turn in The Tome of Nobility.",
            complete = QuestState(1661, "completed"),
            dependsOn = { "accept-1661-the-tome-of-nobility" },
            route = {
                Point(1453, 0.3981, 0.2980, "The Tome of Nobility",
                    "Travel to The Tome of Nobility."),
            },
        },
        {
            id = "turnin-700-a-king-s-tribute",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A King's Tribute.",
            complete = QuestState(700, "completed"),
            route = {
                Point(1455, 0.4456, 0.4958, "A King's Tribute",
                    "Travel to A King's Tribute."),
            },
        },
        {
            id = "accept-1050-mythology-of-the-titans",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Mythology of the Titans.",
            complete = QuestState(1050, "activeOrCompleted"),
            route = {
                Point(1455, 0.7497, 0.1248, "Mythology of the Titans",
                    "Travel to Mythology of the Titans."),
            },
        },
        {
            id = "turnin-4487-summon-felsteed",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Turn in Summon Felsteed.",
            complete = QuestState(4487, "completed"),
            route = {
                Point(1413, 0.6263, 0.3550, "Summon Felsteed",
                    "Travel to Summon Felsteed."),
            },
        },
        {
            id = "turnin-4488-summon-felsteed",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Turn in Summon Felsteed.",
            complete = QuestState(4488, "completed"),
            route = {
                Point(1413, 0.6263, 0.3550, "Summon Felsteed",
                    "Travel to Summon Felsteed."),
            },
        },
        {
            id = "accept-4490-summon-felsteed",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Accept Summon Felsteed.",
            complete = QuestState(4490, "activeOrCompleted"),
            route = {
                Point(1413, 0.6263, 0.3550, "Summon Felsteed",
                    "Travel to Summon Felsteed."),
            },
        },
        {
            id = "turnin-4490-summon-felsteed",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Turn in Summon Felsteed.",
            complete = QuestState(4490, "completed"),
            dependsOn = { "accept-4490-summon-felsteed" },
            route = {
                Point(1413, 0.6263, 0.3550, "Summon Felsteed",
                    "Travel to Summon Felsteed."),
            },
        },
        {
            id = "accept-1286-the-deserters",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Deserters.",
            complete = QuestState(1286, "activeOrCompleted"),
            route = {
                Point(1445, 0.6821, 0.4862, "The Deserters",
                    "Travel to The Deserters."),
            },
        },
        {
            id = "turnin-1260-morgan-stern",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Morgan Stern.",
            complete = QuestState(1260, "completed"),
            route = {
                Point(1445, 0.6633, 0.4547, "Morgan Stern",
                    "Travel to Morgan Stern."),
            },
        },
        {
            id = "accept-1204-mudrock-soup-and-bugs",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Mudrock Soup and Bugs.",
            complete = QuestState(1204, "activeOrCompleted"),
            route = {
                Point(1445, 0.6633, 0.4547, "Mudrock Soup and Bugs",
                    "Travel to Mudrock Soup and Bugs."),
            },
        },
        {
            id = "objective-1204-1-mudrock-spikeshell",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Mudrock Spikeshell.",
            complete = QuestObjective(1204, 1, "Mudrock Spikeshell"),
            dependsOn = { "accept-1204-mudrock-soup-and-bugs" },
            route = {
                Point(1445, 0.6460, 0.4260, "Mudrock Spikeshell",
                    "Travel to Mudrock Spikeshell."),
            },
        },
        {
            id = "objective-1177-1-mirefin-coastrunner",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Mirefin Coastrunner.",
            complete = QuestObjective(1177, 1, "Mirefin Coastrunner"),
            route = {
                Point(1445, 0.5860, 0.1760, "Mirefin Coastrunner",
                    "Travel to Mirefin Coastrunner."),
            },
        },
        {
            id = "accept-1206-jarl-needs-eyes",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Jarl Needs Eyes.",
            complete = QuestState(1206, "activeOrCompleted"),
            route = {
                Point(1445, 0.5544, 0.2627, "Jarl Needs Eyes",
                    "Travel to Jarl Needs Eyes."),
            },
        },
        {
            id = "accept-1222-stinky-s-escape",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Stinky's Escape.",
            complete = QuestState(1222, "activeOrCompleted"),
            route = {
                Point(1445, 0.4689, 0.1752, "Stinky's Escape",
                    "Travel to Stinky's Escape."),
            },
        },
        {
            id = "accept-1324-the-missing-diplomat",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { quest = { id = 1324, state = "notCompleted" } },
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1324, "activeOrCompleted"),
            route = {
                Point(1445, 0.4522, 0.2464, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "objective-1324-1-private-hendel",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Private Hendel.",
            complete = QuestObjective(1324, 1, "Private Hendel"),
            dependsOn = { "accept-1324-the-missing-diplomat" },
            route = {
                Point(1445, 0.4522, 0.2464, "Private Hendel",
                    "Travel to Private Hendel."),
            },
        },
        {
            id = "turnin-1324-the-missing-diplomat",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Missing Diplomat.",
            complete = QuestState(1324, "completed"),
            dependsOn = { "accept-1324-the-missing-diplomat", "objective-1324-1-private-hendel" },
            route = {
                Point(1445, 0.4519, 0.2430, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "accept-1267-the-missing-diplomat",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { quest = { id = 1267, state = "notCompleted" } },
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Missing Diplomat.",
            complete = QuestState(1267, "activeOrCompleted"),
            route = {
                Point(1445, 0.4522, 0.2424, "The Missing Diplomat",
                    "Travel to The Missing Diplomat."),
            },
        },
        {
            id = "objective-1206-1-darkmist-silkspinner",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Darkmist Silkspinner.",
            complete = QuestObjective(1206, 1, "Darkmist Silkspinner"),
            dependsOn = { "accept-1206-jarl-needs-eyes" },
            route = {
                Point(1445, 0.3322, 0.2276, "Darkmist Silkspinner",
                    "Travel to Darkmist Silkspinner."),
            },
        },
        {
            id = "turnin-1206-jarl-needs-eyes",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Jarl Needs Eyes.",
            complete = QuestState(1206, "completed"),
            dependsOn = { "accept-1206-jarl-needs-eyes", "objective-1206-1-darkmist-silkspinner" },
            route = {
                Point(1445, 0.3322, 0.2275, "Jarl Needs Eyes",
                    "Travel to Jarl Needs Eyes."),
            },
        },
        {
            id = "accept-1203-jarl-needs-a-blade",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Jarl Needs a Blade.",
            complete = QuestState(1203, "activeOrCompleted"),
            route = {
                Point(1445, 0.3322, 0.2275, "Jarl Needs a Blade",
                    "Travel to Jarl Needs a Blade."),
            },
        },
        {
            id = "turnin-1203-jarl-needs-a-blade",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Jarl Needs a Blade.",
            complete = QuestState(1203, "completed"),
            dependsOn = { "accept-1203-jarl-needs-a-blade" },
            route = {
                Point(1445, 0.5544, 0.2627, "Jarl Needs a Blade",
                    "Travel to Jarl Needs a Blade."),
            },
        },
        {
            id = "turnin-1177-hungry",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Hungry!.",
            complete = QuestState(1177, "completed"),
            dependsOn = { "objective-1177-1-mirefin-coastrunner" },
            route = {
                Point(1445, 0.3515, 0.3826, "Hungry!",
                    "Travel to Hungry!."),
            },
        },
        {
            id = "turnin-1286-the-deserters",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Deserters.",
            complete = QuestState(1286, "completed"),
            dependsOn = { "accept-1286-the-deserters" },
            route = {
                Point(1445, 0.3609, 0.5430, "The Deserters",
                    "Travel to The Deserters."),
            },
        },
        {
            id = "accept-1287-the-deserters",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Deserters.",
            complete = QuestState(1287, "activeOrCompleted"),
            route = {
                Point(1445, 0.3609, 0.5430, "The Deserters",
                    "Travel to The Deserters."),
            },
        },
        {
            id = "turnin-1204-mudrock-soup-and-bugs",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Mudrock Soup and Bugs.",
            complete = QuestState(1204, "completed"),
            dependsOn = { "accept-1204-mudrock-soup-and-bugs", "objective-1204-1-mudrock-spikeshell" },
            route = {
                Point(1445, 0.6634, 0.4547, "Mudrock Soup and Bugs",
                    "Travel to Mudrock Soup and Bugs."),
            },
        },
        {
            id = "accept-1258-and-bugs",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
            } },
            text = "Accept ... and Bugs.",
            complete = QuestState(1258, "activeOrCompleted"),
            route = {
                Point(1445, 0.6634, 0.4547, "... and Bugs",
                    "Travel to ... and Bugs."),
            },
        },
        {
            id = "turnin-1222-stinky-s-escape",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Stinky's Escape.",
            complete = QuestState(1222, "completed"),
            dependsOn = { "accept-1222-stinky-s-escape" },
            route = {
                Point(1445, 0.6634, 0.4547, "Stinky's Escape",
                    "Travel to Stinky's Escape."),
            },
        },
        {
            id = "turnin-1287-the-deserters",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Deserters.",
            complete = QuestState(1287, "completed"),
            dependsOn = { "accept-1287-the-deserters" },
            route = {
                Point(1445, 0.6821, 0.4862, "The Deserters",
                    "Travel to The Deserters."),
            },
        },
    },
})
