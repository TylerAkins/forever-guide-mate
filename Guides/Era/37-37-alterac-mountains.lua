local _, ns = ...

-- Alliance Era leveling route for Alterac Mountains, levels 37-37.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    ALTERAC = 1416,
    HILLSBRAD = 1424,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index)
    return { questObjective = { id = questID, index = index } }
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
    id = "leveling-era-37-37-alterac-mountains",
    title = "37-37 Alterac Mountains (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 37 } },
        },
    },
    goals = {
        {
            id = "accept-500-crushridge-bounty",
            kind = "accept",
            priority = 20,
            text = "Accept Crushridge Bounty from Marshal Redpath in Southshore.",
            complete = QuestState(500, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.4967, 0.5873, "Marshal Redpath",
                    "Travel to Marshal Redpath."),
            },
        },
        {
            id = "accept-537-dark-council",
            kind = "accept",
            priority = 30,
            text = "Accept Dark Council from Magistrate Henry Maleb in Southshore.",
            complete = QuestState(537, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.4817, 0.5917, "Magistrate Henry Maleb",
                    "Travel to Magistrate Henry Maleb."),
            },
        },
        {
            id = "accept-512-noble-deaths",
            kind = "accept",
            priority = 40,
            text = "Accept Noble Deaths from Magistrate Henry Maleb in Southshore.",
            complete = QuestState(512, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.4814, 0.5913, "Magistrate Henry Maleb",
                    "Travel to Magistrate Henry Maleb."),
            },
        },
        {
            id = "note-512-southshore",
            kind = "note",
            priority = 50,
            text = "Set your hearth in Southshore with Innkeeper Anderson.",
            route = {
                Point(MAP.HILLSBRAD, 0.5116, 0.5895, "Innkeeper Anderson",
                    "Travel to Innkeeper Anderson."),
            },
        },
        {
            id = "objective-500-crushridge-bounty",
            kind = "objective",
            priority = 70,
            text = "Kill Crushridge Ogre and collect 9 Dirty Knucklebones in Gallows' Corner.",
            dependsOn = { "accept-500-crushridge-bounty" },
            complete = QuestState(500, "complete"),
            route = {
                Point(MAP.ALTERAC, 0.4882, 0.5487, "Crushridge Ogre",
                    "Travel to Crushridge Ogre."),
            },
        },
        {
            id = "note-as-you-go",
            kind = "note",
            priority = 90,
            text = "Collect 7 Alterac Signet Ring from any Syndicate enemies.",
        },
        {
            id = "objective-537-1-argus-shadow-mage",
            kind = "objective",
            priority = 100,
            text = "Kill 4 Argus Shadow Mage in The Uplands, you will only find one in each camp in The Uplands.",
            dependsOn = { "accept-537-dark-council" },
            complete = QuestObjective(537, 1),
            route = {
                Point(MAP.ALTERAC, 0.4767, 0.1858, "Argus Shadow Mage",
                    "Travel to Argus Shadow Mage."),
            },
        },
        {
            id = "objective-537-2-nagaz",
            kind = "objective",
            priority = 110,
            text = "Kill Nagaz inside the house and collect Head of Nagaz in Dandred's Fold.",
            dependsOn = { "accept-537-dark-council" },
            complete = QuestObjective(537, 2),
            route = {
                Point(MAP.ALTERAC, 0.3934, 0.1501, "Nagaz",
                    "Travel to Nagaz."),
            },
        },
        {
            id = "objective-551-ensorcelled-parchment",
            kind = "objective",
            priority = 120,
            text = "Collect Ensorcelled Parchment from the chest in Dandred's Fold.",
            complete = QuestState(551, "complete"),
            route = {
                Point(MAP.ALTERAC, 0.3921, 0.1466, "Dandred's Fold",
                    "Travel to Dandred's Fold."),
            },
        },
        {
            id = "objective-512-noble-deaths",
            kind = "objective",
            priority = 130,
            text = "Collect 7 Alterac Signet Ring from any Syndicate enemies.",
            dependsOn = { "accept-512-noble-deaths" },
            complete = QuestState(512, "complete"),
            route = {
                Point(MAP.ALTERAC, 0.4767, 0.1858, "Syndicate Spy",
                    "Travel to Syndicate Spy."),
            },
        },
        {
            id = "turnin-551-the-ensorcelled-parchment",
            kind = "turnin",
            priority = 150,
            text = "Turn in The Ensorcelled Parchment to Loremaster Dibbs in Southshore.",
            dependsOn = { "objective-551-ensorcelled-parchment" },
            complete = QuestState(551, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5056, 0.5713, "Loremaster Dibbs",
                    "Travel to Loremaster Dibbs."),
            },
        },
        {
            id = "accept-554-stormpike-s-deciphering",
            kind = "accept",
            priority = 160,
            text = "Accept Stormpike's Deciphering from Loremaster Dibbs in Southshore.",
            complete = QuestState(554, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5056, 0.5713, "Loremaster Dibbs",
                    "Travel to Loremaster Dibbs."),
            },
        },
        {
            id = "turnin-500-crushridge-bounty",
            kind = "turnin",
            priority = 170,
            text = "Turn in Crushridge Bounty to Marshal Redpath in Southshore.",
            dependsOn = { "objective-500-crushridge-bounty" },
            complete = QuestState(500, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.4967, 0.5873, "Marshal Redpath",
                    "Travel to Marshal Redpath."),
            },
        },
        {
            id = "turnin-512-noble-deaths",
            kind = "turnin",
            priority = 180,
            text = "Turn in Noble Deaths to Magistrate Henry Maleb in Southshore.",
            dependsOn = { "objective-512-noble-deaths" },
            complete = QuestState(512, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.4815, 0.5912, "Magistrate Henry Maleb",
                    "Travel to Magistrate Henry Maleb."),
            },
        },
        {
            id = "turnin-537-dark-council",
            kind = "turnin",
            priority = 190,
            text = "Turn in Dark Council to Magistrate Henry Maleb in Southshore.",
            dependsOn = { "objective-537-1-argus-shadow-mage", "objective-537-2-nagaz" },
            complete = QuestState(537, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.4815, 0.5912, "Magistrate Henry Maleb",
                    "Travel to Magistrate Henry Maleb."),
            },
        },
    },
})
