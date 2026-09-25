local _, ns = ...

-- Alliance Era leveling route for the Swamp of Sorrows, levels 41-42.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    SWAMP_OF_SORROWS = 1435,
    IRONFORGE = 1455,
    STORMWIND = 1453,
    DUSKWOOD = 1431,
    STRANGLETHORN = 1434,
    BLASTED_LANDS = 1419,
    DUSTWALLOW = 1445,
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
    id = "leveling-era-41-42-swamp-of-sorrows-alliance",
    title = "41-42 Swamp of Sorrows (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 41 } },
        },
    },
    goals = {
        {
            id = "accept-4486-the-tome-of-nobility",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept The Tome of Nobility from Brandur Ironhammer in Hall of Mysteries.",
            complete = QuestState(4486, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2332, 0.0633, "Brandur Ironhammer",
                    "Travel to Brandur Ironhammer."),
            },
        },
        {
            id = "turnin-4486-the-tome-of-nobility",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Nobility to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-4486-the-tome-of-nobility" },
            complete = QuestState(4486, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3983, 0.2983, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-4485-the-tome-of-nobility",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept The Tome of Nobility from Arthur the Faithful in Cathedral of Light.",
            complete = QuestState(4485, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3867, 0.3291, "Arthur the Faithful",
                    "Travel to Arthur the Faithful."),
            },
        },
        {
            id = "turnin-4485-the-tome-of-nobility",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Nobility to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-4485-the-tome-of-nobility" },
            complete = QuestState(4485, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3986, 0.2978, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "note-summon-warhorse",
            kind = "note",
            priority = 50,
            conditions = {
                all = {
                    { class = 2 },
                },
            },
            text = "Speak to Arthur the Faithful and train Summon Warhorse.",
            route = {
                Point(MAP.STORMWIND, 0.3867, 0.3291, "Arthur the Faithful",
                    "Travel to Arthur the Faithful."),
            },
        },
        {
            id = "accept-1477-vital-supplies",
            kind = "accept",
            priority = 70,
            text = "Accept Vital Supplies from High Sorcerer Andromath in Wizard's Sanctum.",
            complete = QuestState(1477, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3748, 0.8172, "High Sorcerer Andromath",
                    "Travel to High Sorcerer Andromath."),
            },
        },
        {
            id = "accept-1395-supplies-for-nethergarde",
            kind = "accept",
            priority = 80,
            text = "Accept Supplies for Nethergarde from Watchmaster Sorigal in Darkshire.",
            complete = QuestState(1395, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7575, 0.4619, "Watchmaster Sorigal",
                    "Travel to Watchmaster Sorigal."),
            },
        },
        {
            id = "accept-1448-in-search-of-the-temple",
            kind = "accept",
            priority = 90,
            text = "Accept In Search of The Temple from Brohann Caskbelly in Dwarven District.",
            complete = QuestState(1448, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.6427, 0.2074, "Brohann Caskbelly",
                    "Travel to Brohann Caskbelly."),
            },
        },
        {
            id = "accept-1116-dream-dust-in-the-swamp",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { quest = { id = 1115, state = "completed" } },
                },
            },
            text = "Accept Dream Dust in the Swamp from Krazek in The Salty Sailor Tavern.",
            complete = QuestState(1116, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2695, 0.7722, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "turnin-1477-vital-supplies",
            kind = "turnin",
            priority = 120,
            text = "Turn in Vital Supplies to Watchmaster Sorigal in Darkshire.",
            dependsOn = { "accept-1477-vital-supplies" },
            complete = QuestState(1477, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7575, 0.4619, "Watchmaster Sorigal",
                    "Travel to Watchmaster Sorigal."),
            },
        },
        {
            id = "note-1396-darkshire",
            kind = "note",
            priority = 130,
            text = "Set your hearth in Darkshire with Innkeeper Trelayne.",
            route = {
                Point(MAP.DUSKWOOD, 0.7390, 0.4440, "Innkeeper Trelayne",
                    "Travel to Innkeeper Trelayne."),
            },
        },
        {
            id = "objective-1116-dream-dust-in-the-swamp",
            kind = "objective",
            priority = 150,
            conditions = {
                all = {
                    { quest = { id = 1115, state = "completed" } },
                },
            },
            text = "Kill Dreaming Whelp and collect 10 Speck of Dream Dust in Itharius's Cave.",
            dependsOn = { "accept-1116-dream-dust-in-the-swamp" },
            complete = QuestState(1116, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.1664, 0.5629, "Dreaming Whelp",
                    "Travel to Dreaming Whelp."),
            },
        },
        {
            id = "accept-1396-encroaching-wildlife",
            kind = "accept",
            priority = 160,
            text = "Accept Encroaching Wildlife from Watcher Biggs in Swamp of Sorrows.",
            complete = QuestState(1396, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2676, 0.5975, "Watcher Biggs",
                    "Travel to Watcher Biggs."),
            },
        },
        {
            id = "objective-1392-noboru-the-cudgel",
            kind = "objective",
            priority = 170,
            text = "Kill Noboru the Cudgel and collect Noboru's Cudgel, he patrols around in The Shifting Mire.",
            complete = QuestState(1392, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4676, 0.3863, "Noboru the Cudgel",
                    "Travel to Noboru the Cudgel."),
            },
        },
        {
            id = "objective-1396-encroaching-wildlife",
            kind = "objective",
            priority = 180,
            text = "Kill 10 Sorrow Spinner, 8 Young Sawtooth Crocolisk and 10 Swamp Jaguar in Swamp of Sorrows.",
            dependsOn = { "accept-1396-encroaching-wildlife" },
            complete = QuestState(1396, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2243, 0.5215, "Sorrow Spinner",
                    "Travel to Sorrow Spinner."),
            },
        },
        {
            id = "turnin-1396-encroaching-wildlife",
            kind = "turnin",
            priority = 190,
            text = "Turn in Encroaching Wildlife to Watcher Biggs in Swamp of Sorrows.",
            dependsOn = { "objective-1396-encroaching-wildlife" },
            complete = QuestState(1396, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2676, 0.5975, "Watcher Biggs",
                    "Travel to Watcher Biggs."),
            },
        },
        {
            id = "accept-1421-the-lost-caravan",
            kind = "accept",
            priority = 200,
            text = "Accept The Lost Caravan from Watcher Biggs in Swamp of Sorrows.",
            complete = QuestState(1421, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2676, 0.5975, "Watcher Biggs",
                    "Travel to Watcher Biggs."),
            },
        },
        {
            id = "accept-1389-draenethyst-crystals",
            kind = "accept",
            priority = 220,
            text = "Accept Draenethyst Crystals from Magtoor in The Harborage.",
            complete = QuestState(1389, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2599, 0.3144, "Magtoor",
                    "Travel to Magtoor."),
            },
        },
        {
            id = "objective-1421-the-lost-caravan",
            kind = "objective",
            priority = 240,
            text = "Collect Wizards' Reagents from the Caravan Chest in Fallow Sanctuary.",
            dependsOn = { "accept-1421-the-lost-caravan" },
            complete = QuestState(1421, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.6447, 0.1836, "Fallow Sanctuary",
                    "Travel to Fallow Sanctuary."),
            },
        },
        {
            id = "accept-1393-galen-s-escape",
            kind = "accept",
            priority = 250,
            text = "Accept Galen's Escape from Galen Goodward in Fallow Sanctuary.",
            complete = QuestState(1393, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.6540, 0.1829, "Galen Goodward",
                    "Travel to Galen Goodward."),
            },
        },
        {
            id = "objective-1393-galen-s-escape",
            kind = "objective",
            priority = 260,
            text = "Escort Galen Goodward until quest is complete.",
            dependsOn = { "accept-1393-galen-s-escape" },
            complete = QuestState(1393, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.5262, 0.2983, "Galen Goodward",
                    "Travel to Galen Goodward."),
            },
        },
        {
            id = "objective-1389-draenethyst-crystals",
            kind = "objective",
            priority = 280,
            text = "Collect 6 Draenethyst Crystal which are scattered around the Fallow Sanctuary.",
            dependsOn = { "accept-1389-draenethyst-crystals" },
            complete = QuestState(1389, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.6200, 0.2400, "Draenethyst Crystals",
                    "Travel to Draenethyst Crystals."),
            },
        },
        {
            id = "turnin-1393-galen-s-escape",
            kind = "turnin",
            priority = 290,
            text = "Turn in Galen's Escape in The Shifting Mire.",
            dependsOn = { "objective-1393-galen-s-escape" },
            complete = QuestState(1393, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4786, 0.3979, "The Shifting Mire",
                    "Travel to The Shifting Mire."),
            },
        },
        {
            id = "turnin-1389-draenethyst-crystals",
            kind = "turnin",
            priority = 300,
            text = "Turn in Draenethyst Crystals to Magtoor in The Harborage.",
            dependsOn = { "objective-1389-draenethyst-crystals" },
            complete = QuestState(1389, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2600, 0.3154, "Magtoor",
                    "Travel to Magtoor."),
            },
        },
        {
            id = "turnin-1421-the-lost-caravan",
            kind = "turnin",
            priority = 310,
            text = "Turn in The Lost Caravan to Watcher Biggs in Swamp of Sorrows.",
            dependsOn = { "objective-1421-the-lost-caravan" },
            complete = QuestState(1421, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2676, 0.5975, "Watcher Biggs",
                    "Travel to Watcher Biggs."),
            },
        },
        {
            id = "accept-1398-driftwood",
            kind = "accept",
            priority = 320,
            text = "Accept Driftwood from Watcher Biggs in Swamp of Sorrows.",
            complete = QuestState(1398, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2676, 0.5975, "Watcher Biggs",
                    "Travel to Watcher Biggs."),
            },
        },
        {
            id = "turnin-1395-supplies-for-nethergarde",
            kind = "turnin",
            priority = 340,
            text = "Turn in Supplies for Nethergarde to Quartermaster Lungertz in Nethergarde Keep.",
            dependsOn = { "accept-1395-supplies-for-nethergarde" },
            complete = QuestState(1395, "completed"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.6653, 0.2141, "Quartermaster Lungertz",
                    "Travel to Quartermaster Lungertz."),
            },
        },
        {
            id = "objective-1448-in-search-of-the-temple",
            kind = "objective",
            priority = 350,
            text = "Search for the Temple of Atal'Hakkar in Pool of Tears, just run towards the waypoint to complete the quest.",
            dependsOn = { "accept-1448-in-search-of-the-temple" },
            complete = QuestState(1448, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.6780, 0.4440, "Pool of Tears",
                    "Travel to Pool of Tears."),
            },
        },
        {
            id = "objective-1258-and-bugs",
            kind = "objective",
            priority = 370,
            text = "Kill Silt Crawler and collect 12 Pristine Crawler Leg in Misty Reed Strand.",
            complete = QuestState(1258, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.7598, 0.0496, "Silt Crawler",
                    "Travel to Silt Crawler."),
            },
        },
        {
            id = "objective-1398-1-driftwood",
            kind = "objective",
            priority = 380,
            text = "Collect 8 Sundried Driftwood in Misty Reed Strand It spawns in each waypoint and you will need to through the murloc village to get some unless you're willing to wait for respawn.",
            dependsOn = { "accept-1398-driftwood" },
            complete = QuestObjective(1398, 1),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.9346, 0.6623, "Misty Reed Strand",
                    "Travel to Misty Reed Strand."),
            },
        },
        {
            id = "turnin-1398-driftwood",
            kind = "turnin",
            priority = 390,
            text = "Turn in Driftwood to Watcher Biggs in Swamp of Sorrows.",
            dependsOn = { "objective-1398-1-driftwood" },
            complete = QuestState(1398, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2676, 0.5975, "Watcher Biggs",
                    "Travel to Watcher Biggs."),
            },
        },
        {
            id = "accept-1425-deliver-the-shipment",
            kind = "accept",
            priority = 400,
            text = "Accept Deliver the Shipment from Watcher Biggs in Swamp of Sorrows.",
            complete = QuestState(1425, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2676, 0.5975, "Watcher Biggs",
                    "Travel to Watcher Biggs."),
            },
        },
        {
            id = "turnin-1425-deliver-the-shipment",
            kind = "turnin",
            priority = 420,
            text = "Turn in Deliver the Shipment to Quartermaster Lungertz in Nethergarde Keep.",
            dependsOn = { "accept-1425-deliver-the-shipment" },
            complete = QuestState(1425, "completed"),
            route = {
                Point(MAP.BLASTED_LANDS, 0.6648, 0.2136, "Quartermaster Lungertz",
                    "Travel to Quartermaster Lungertz."),
            },
        },
        {
            id = "turnin-1448-in-search-of-the-temple",
            kind = "turnin",
            priority = 440,
            text = "Turn in In Search of The Temple to Brohann Caskbelly in Dwarven District.",
            dependsOn = { "objective-1448-in-search-of-the-temple" },
            complete = QuestState(1448, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.6427, 0.2074, "Brohann Caskbelly",
                    "Travel to Brohann Caskbelly."),
            },
        },
        {
            id = "accept-1449-to-the-hinterlands",
            kind = "accept",
            priority = 450,
            text = "Accept To The Hinterlands from Brohann Caskbelly in Dwarven District.",
            complete = QuestState(1449, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.6427, 0.2074, "Brohann Caskbelly",
                    "Travel to Brohann Caskbelly."),
            },
        },
        {
            id = "turnin-1116-dream-dust-in-the-swamp",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { quest = { id = 1115, state = "completed" } },
                },
            },
            text = "Turn in Dream Dust in the Swamp to Krazek in The Salty Sailor Tavern.",
            dependsOn = { "objective-1116-dream-dust-in-the-swamp" },
            complete = QuestState(1116, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2695, 0.7721, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "accept-1117-rumors-for-kravel",
            kind = "accept",
            priority = 480,
            conditions = {
                all = {
                    { quest = { id = 1115, state = "completed" } },
                },
            },
            text = "Accept Rumors for Kravel from Krazek in The Salty Sailor Tavern.",
            complete = QuestState(1117, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2695, 0.7721, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "turnin-1258-and-bugs",
            kind = "turnin",
            priority = 500,
            text = "Turn in ... and Bugs to Morgan Stern in Theramore Isle.",
            dependsOn = { "objective-1258-and-bugs" },
            complete = QuestState(1258, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6635, 0.4548, "Morgan Stern",
                    "Travel to Morgan Stern."),
            },
        },
    },
})
