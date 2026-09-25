local _, ns = ...

-- Horde Era leveling route for the Swamp of Sorrows, levels 48-49.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    SWAMP_OF_SORROWS = 1435,
    STRANGLETHORN = 1434,
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
    id = "leveling-era-48-49-swamp-of-sorrows",
    title = "48-49 Swamp of Sorrows (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 48 } },
        },
    },
    goals = {
        {
            id = "note-2784-stonard",
            kind = "note",
            priority = 20,
            text = "Set your hearth in Stonard with Innkeeper Karakul.",
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4513, 0.5664, "Innkeeper Karakul",
                    "Travel to Innkeeper Karakul."),
            },
        },
        {
            id = "accept-2784-fall-from-grace",
            kind = "accept",
            priority = 30,
            text = "Accept Fall From Grace from Fallen Hero of the Horde in Stonard.",
            complete = QuestState(2784, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3420, 0.6600, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde."),
            },
        },
        {
            id = "objective-2784-fall-from-grace",
            kind = "objective",
            priority = 40,
            text = "Speak to Fallen Hero of the Horde to complete the quest.",
            dependsOn = { "accept-2784-fall-from-grace" },
            complete = QuestState(2784, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3432, 0.6609, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde."),
            },
        },
        {
            id = "turnin-2784-fall-from-grace",
            kind = "turnin",
            priority = 50,
            text = "Turn in Fall From Grace to Fallen Hero of the Horde in Stonard.",
            dependsOn = { "objective-2784-fall-from-grace" },
            complete = QuestState(2784, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3420, 0.6600, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde."),
            },
        },
        {
            id = "accept-2621-the-disgraced-one",
            kind = "accept",
            priority = 60,
            text = "Accept The Disgraced One from Fallen Hero of the Horde.",
            complete = QuestState(2621, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3420, 0.6600, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde."),
            },
        },
        {
            id = "accept-625-cortello-s-riddle",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 624, state = "completed" } },
                },
            },
            text = "Accept Cortello's Riddle.",
            complete = QuestState(625, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2290, 0.4820, "Cortello's Riddle",
                    "Travel to Cortello's Riddle."),
            },
        },
        {
            id = "turnin-2621-the-disgraced-one",
            kind = "turnin",
            priority = 90,
            text = "Turn in The Disgraced One to Dispatch Commander Ruag in Stonard.",
            dependsOn = { "accept-2621-the-disgraced-one" },
            complete = QuestState(2621, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4785, 0.5497, "Dispatch Commander Ruag",
                    "Travel to Dispatch Commander Ruag."),
            },
        },
        {
            id = "accept-2622-the-missing-orders",
            kind = "accept",
            priority = 100,
            text = "Accept The Missing Orders from Dispatch Commander Ruag in Stonard.",
            complete = QuestState(2622, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4785, 0.5497, "Dispatch Commander Ruag",
                    "Travel to Dispatch Commander Ruag."),
            },
        },
        {
            id = "turnin-2622-the-missing-orders",
            kind = "turnin",
            priority = 110,
            text = "Turn in The Missing Orders to Bengor in Stonard.",
            dependsOn = { "accept-2622-the-missing-orders" },
            complete = QuestState(2622, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4496, 0.5731, "Bengor",
                    "Travel to Bengor."),
            },
        },
        {
            id = "accept-2623-the-swamp-talker",
            kind = "accept",
            priority = 120,
            text = "Accept The Swamp Talker from Bengor in Stonard.",
            complete = QuestState(2623, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4496, 0.5731, "Bengor",
                    "Travel to Bengor."),
            },
        },
        {
            id = "accept-1428-continued-threat",
            kind = "accept",
            priority = 140,
            text = "Accept Continued Threat from Katar in Misty Reed Strand.",
            complete = QuestState(1428, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8375, 0.8044, "Katar",
                    "Travel to Katar."),
            },
        },
        {
            id = "objective-2623-the-swamp-talker",
            kind = "objective",
            priority = 160,
            text = "Kill Swamp Talker at the back of the Murloc cave and loot the Warchief's Orders.",
            dependsOn = { "accept-2623-the-swamp-talker" },
            complete = QuestState(2623, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.6600, 0.7500, "Swamp Talker",
                    "Travel to Swamp Talker."),
            },
        },
        {
            id = "objective-1428-continued-threat",
            kind = "objective",
            priority = 170,
            text = "Kill the required Marsh murlocs in Stagalbog Cave.",
            dependsOn = { "accept-1428-continued-threat" },
            complete = QuestState(1428, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.6652, 0.7636, "Marsh Inkspewer",
                    "Travel to Marsh Inkspewer."),
            },
        },
        {
            id = "turnin-2623-the-swamp-talker",
            kind = "turnin",
            priority = 180,
            text = "Turn in The Swamp Talker to Fallen Hero of the Horde in Swamp of Sorrows.",
            dependsOn = { "objective-2623-the-swamp-talker" },
            complete = QuestState(2623, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3420, 0.6600, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde."),
            },
        },
        {
            id = "accept-2801-a-tale-of-sorrow",
            kind = "accept",
            priority = 190,
            text = "Accept A Tale of Sorrow from Thadius Grimshade in Swamp of Sorrows.",
            complete = QuestState(2801, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3424, 0.6611, "Thadius Grimshade",
                    "Travel to Thadius Grimshade."),
            },
        },
        {
            id = "objective-2801-a-tale-of-sorrow",
            kind = "objective",
            priority = 200,
            text = "Speak to Thadius Grimshade until the quest is complete.",
            dependsOn = { "accept-2801-a-tale-of-sorrow" },
            complete = QuestState(2801, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3424, 0.6611, "Thadius Grimshade",
                    "Travel to Thadius Grimshade."),
            },
        },
        {
            id = "turnin-2801-a-tale-of-sorrow",
            kind = "turnin",
            priority = 210,
            text = "Turn in A Tale of Sorrow to Thadius Grimshade in Swamp of Sorrows.",
            dependsOn = { "objective-2801-a-tale-of-sorrow" },
            complete = QuestState(2801, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.3424, 0.6611, "Thadius Grimshade",
                    "Travel to Thadius Grimshade."),
            },
        },
        {
            id = "accept-580-whiskey-slim-s-lost-grog",
            kind = "accept",
            priority = 230,
            text = "Accept Whiskey Slim's Lost Grog from Whiskey Slim in The Salty Sailor Tavern.",
            complete = QuestState(580, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2713, 0.7744, "Whiskey Slim",
                    "Travel to Whiskey Slim."),
            },
        },
    },
})
