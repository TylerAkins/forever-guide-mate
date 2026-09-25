local _, ns = ...

-- Horde Era leveling route for the Swamp of Sorrows, levels 41-42.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    SWAMP_OF_SORROWS = 1435,
    STRANGLETHORN = 1434,
    DUSKWOOD = 1431,
    DEADWIND_PASS = 1430,
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
    id = "leveling-era-41-42-swamp-of-sorrows",
    title = "41-42 Swamp of Sorrows (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 41 } },
        },
    },
    goals = {
        {
            id = "accept-1116-dream-dust-in-the-swamp",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { quest = { id = 1116, state = "completed" } },
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
            id = "accept-1372-nothing-but-the-truth",
            kind = "accept",
            priority = 30,
            text = "Accept Nothing But The Truth from Deathstalker Zraedus in Beggar's Haunt.",
            complete = QuestState(1372, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.8770, 0.3570, "Deathstalker Zraedus",
                    "Travel to Deathstalker Zraedus."),
            },
        },
        {
            id = "turnin-1372-nothing-but-the-truth",
            kind = "turnin",
            priority = 40,
            text = "Turn in Nothing But The Truth to Apothecary Faustin in Beggar's Haunt.",
            dependsOn = { "accept-1372-nothing-but-the-truth" },
            complete = QuestState(1372, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.8750, 0.3540, "Apothecary Faustin",
                    "Travel to Apothecary Faustin."),
            },
        },
        {
            id = "accept-1389-draenethyst-crystals",
            kind = "accept",
            priority = 70,
            text = "Accept Draenethyst Crystals from Magtoor in The Harborage.",
            complete = QuestState(1389, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2599, 0.3144, "Magtoor",
                    "Travel to Magtoor."),
            },
        },
        {
            id = "note-698-stonard",
            kind = "note",
            priority = 90,
            text = "Set your hearth in Stonard with Innkeeper Karakul.",
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4510, 0.5650, "Innkeeper Karakul",
                    "Travel to Innkeeper Karakul."),
            },
        },
        {
            id = "accept-698-lack-of-surplus",
            kind = "accept",
            priority = 100,
            text = "Accept Lack of Surplus from Dar in Stonard.",
            complete = QuestState(698, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4480, 0.5700, "Dar",
                    "Travel to Dar."),
            },
        },
        {
            id = "turnin-1420-report-to-helgrum",
            kind = "turnin",
            priority = 110,
            text = "Turn in Report to Helgrum to Helgrum the Swift in Stonard.",
            complete = QuestState(1420, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4790, 0.5510, "Helgrum the Swift",
                    "Travel to Helgrum the Swift."),
            },
        },
        {
            id = "accept-1424-pool-of-tears",
            kind = "accept",
            priority = 120,
            text = "Accept Pool of Tears from Fel'zerul in Stonard.",
            complete = QuestState(1424, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4790, 0.5490, "Fel'zerul",
                    "Travel to Fel'zerul."),
            },
        },
        {
            id = "objective-698-lack-of-surplus",
            kind = "objective",
            priority = 130,
            text = "Kill Sawtooth Crocolisk for 8 Unprepared Sawtooth Flank.",
            dependsOn = { "accept-698-lack-of-surplus" },
            complete = QuestState(698, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.5142, 0.5824, "Continue toward Lack of Surplus",
                    "Continue toward Lack of Surplus."),
                Point(MAP.SWAMP_OF_SORROWS, 0.5770, 0.5435, "Continue toward Lack of Surplus",
                    "Continue toward Lack of Surplus."),
                Point(MAP.SWAMP_OF_SORROWS, 0.5732, 0.4645, "Continue toward Lack of Surplus",
                    "Continue toward Lack of Surplus."),
                Point(MAP.SWAMP_OF_SORROWS, 0.5354, 0.4179, "Continue toward Lack of Surplus",
                    "Continue toward Lack of Surplus."),
                Point(MAP.SWAMP_OF_SORROWS, 0.4771, 0.3545, "Sawtooth Crocolisk",
                    "Travel to Sawtooth Crocolisk."),
            },
        },
        {
            id = "objective-1424-pool-of-tears",
            kind = "objective",
            priority = 150,
            text = "Collect 10 Atal'ai Artifact in and around Pool of Tears, quite hard to spot look for objects like plate, urn, sack in each waypoint.",
            dependsOn = { "accept-1424-pool-of-tears" },
            complete = QuestState(1424, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.6647, 0.5914, "Continue toward Pool of Tears",
                    "Continue toward Pool of Tears."),
                Point(MAP.SWAMP_OF_SORROWS, 0.6540, 0.5541, "Continue toward Pool of Tears",
                    "Continue toward Pool of Tears."),
                Point(MAP.SWAMP_OF_SORROWS, 0.6589, 0.4704, "Continue toward Pool of Tears",
                    "Continue toward Pool of Tears."),
                Point(MAP.SWAMP_OF_SORROWS, 0.6827, 0.4312, "Continue toward Pool of Tears",
                    "Continue toward Pool of Tears."),
                Point(MAP.SWAMP_OF_SORROWS, 0.7376, 0.4229, "Continue toward Pool of Tears",
                    "Continue toward Pool of Tears."),
                Point(MAP.SWAMP_OF_SORROWS, 0.7551, 0.6015, "Continue toward Pool of Tears",
                    "Continue toward Pool of Tears."),
                Point(MAP.SWAMP_OF_SORROWS, 0.7421, 0.6162, "Continue toward Pool of Tears",
                    "Continue toward Pool of Tears."),
                Point(MAP.SWAMP_OF_SORROWS, 0.7358, 0.6466, "Continue toward Pool of Tears",
                    "Continue toward Pool of Tears."),
                Point(MAP.SWAMP_OF_SORROWS, 0.7152, 0.5942, "Pool of Tears",
                    "Travel to Pool of Tears."),
            },
        },
        {
            id = "turnin-698-lack-of-surplus",
            kind = "turnin",
            priority = 170,
            text = "Turn in Lack of Surplus to Tok'Kar in Misty Reed Post.",
            dependsOn = { "objective-698-lack-of-surplus" },
            complete = QuestState(698, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8140, 0.8090, "Tok'Kar",
                    "Travel to Tok'Kar."),
            },
        },
        {
            id = "accept-699-lack-of-surplus",
            kind = "accept",
            priority = 180,
            text = "Accept Lack of Surplus from Tok'Kar in Misty Reed Post.",
            complete = QuestState(699, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8140, 0.8090, "Tok'Kar",
                    "Travel to Tok'Kar."),
            },
        },
        {
            id = "objective-699-lack-of-surplus",
            kind = "objective",
            priority = 190,
            text = "Kill Sawtooth Snapper and collect 6 Sawtooth Snapper Claw in The Forbidding Sea.",
            dependsOn = { "accept-699-lack-of-surplus" },
            complete = QuestState(699, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8221, 0.9930, "Sawtooth Snapper",
                    "Travel to Sawtooth Snapper."),
            },
        },
        {
            id = "turnin-699-lack-of-surplus",
            kind = "turnin",
            priority = 200,
            text = "Turn in Lack of Surplus to Tok'Kar in Misty Reed Post.",
            dependsOn = { "objective-699-lack-of-surplus" },
            complete = QuestState(699, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8140, 0.8090, "Tok'Kar",
                    "Travel to Tok'Kar."),
            },
        },
        {
            id = "accept-1422-threat-from-the-sea",
            kind = "accept",
            priority = 210,
            text = "Accept Threat From the Sea from Tok'Kar in Misty Reed Post.",
            complete = QuestState(1422, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8140, 0.8090, "Tok'Kar",
                    "Travel to Tok'Kar."),
            },
        },
        {
            id = "turnin-1422-threat-from-the-sea",
            kind = "turnin",
            priority = 220,
            text = "Turn in Threat From the Sea to Katar in Misty Reed Post.",
            dependsOn = { "accept-1422-threat-from-the-sea" },
            complete = QuestState(1422, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8370, 0.8050, "Katar",
                    "Travel to Katar."),
            },
        },
        {
            id = "accept-1426-threat-from-the-sea",
            kind = "accept",
            priority = 230,
            text = "Accept Threat From the Sea from Katar in Misty Reed Post.",
            complete = QuestState(1426, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8370, 0.8050, "Katar",
                    "Travel to Katar."),
            },
        },
        {
            id = "objective-1426-threat-from-the-sea",
            kind = "objective",
            priority = 240,
            text = "Kill 10 Marsh Murloc, 10 Marsh Inkspewer and 10 Marsh Flesheater found along the East coast.",
            dependsOn = { "accept-1426-threat-from-the-sea" },
            complete = QuestState(1426, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8400, 0.8730, "Continue toward Threat From the Sea",
                    "Continue toward Threat From the Sea."),
                Point(MAP.SWAMP_OF_SORROWS, 0.9000, 0.7300, "Continue toward Threat From the Sea",
                    "Continue toward Threat From the Sea."),
                Point(MAP.SWAMP_OF_SORROWS, 0.9400, 0.5700, "Marsh Murloc",
                    "Travel to Marsh Murloc."),
            },
        },
        {
            id = "turnin-1426-threat-from-the-sea",
            kind = "turnin",
            priority = 250,
            text = "Turn in Threat From the Sea to Katar in Misty Reed Post.",
            dependsOn = { "objective-1426-threat-from-the-sea" },
            complete = QuestState(1426, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8370, 0.8050, "Katar",
                    "Travel to Katar."),
            },
        },
        {
            id = "accept-1427-threat-from-the-sea",
            kind = "accept",
            priority = 260,
            text = "Accept Threat From the Sea from Katar in Misty Reed Post.",
            complete = QuestState(1427, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8370, 0.8050, "Katar",
                    "Travel to Katar."),
            },
        },
        {
            id = "turnin-1427-threat-from-the-sea",
            kind = "turnin",
            priority = 270,
            text = "Turn in Threat From the Sea to Tok'Kar in Misty Reed Post.",
            dependsOn = { "accept-1427-threat-from-the-sea" },
            complete = QuestState(1427, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.8140, 0.8090, "Tok'Kar",
                    "Travel to Tok'Kar."),
            },
        },
        {
            id = "accept-1393-galen-s-escape",
            kind = "accept",
            priority = 290,
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
            priority = 300,
            text = "Escort Galen Goodward until quest is complete.",
            dependsOn = { "accept-1393-galen-s-escape" },
            complete = QuestState(1393, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.6469, 0.2517, "Continue toward Galen's Escape",
                    "Continue toward Galen's Escape."),
                Point(MAP.SWAMP_OF_SORROWS, 0.5262, 0.2983, "Galen Goodward",
                    "Travel to Galen Goodward."),
            },
        },
        {
            id = "objective-1389-draenethyst-crystals",
            kind = "objective",
            priority = 320,
            text = "Loot 6 Draenethyst Crystal which are scattered around the Fallow Sanctuary.",
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
            priority = 330,
            text = "Turn in Galen's Escape in The Shifting Mire.",
            dependsOn = { "objective-1393-galen-s-escape" },
            complete = QuestState(1393, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4786, 0.3979, "The Shifting Mire",
                    "Travel to The Shifting Mire."),
            },
        },
        {
            id = "objective-1392-noboru-the-cudgel",
            kind = "objective",
            priority = 340,
            text = "Kill Noboru the Cudgel and collect Noboru's Cudgel, he patrols around in The Shifting Mire.",
            complete = QuestState(1392, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4676, 0.3863, "Noboru the Cudgel",
                    "Travel to Noboru the Cudgel."),
            },
        },
        {
            id = "turnin-1389-draenethyst-crystals",
            kind = "turnin",
            priority = 360,
            text = "Turn in Draenethyst Crystals to Magtoor in The Harborage.",
            dependsOn = { "objective-1389-draenethyst-crystals" },
            complete = QuestState(1389, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.2599, 0.3144, "Magtoor",
                    "Travel to Magtoor."),
            },
        },
        {
            id = "objective-1116-dream-dust-in-the-swamp",
            kind = "objective",
            priority = 370,
            conditions = {
                all = {
                    { quest = { id = 1116, state = "completed" } },
                },
            },
            text = "Kill Dreaming Whelp and Adolescent Whelp and collect 10 Speck of Dream Dust near Itharius's Cave.",
            dependsOn = { "accept-1116-dream-dust-in-the-swamp" },
            complete = QuestState(1116, "complete"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.1267, 0.6710, "Dreaming Whelp",
                    "Travel to Dreaming Whelp."),
            },
        },
        {
            id = "turnin-1424-pool-of-tears",
            kind = "turnin",
            priority = 390,
            text = "Turn in Pool of Tears to Fel'zerul in Stonard.",
            dependsOn = { "objective-1424-pool-of-tears" },
            complete = QuestState(1424, "completed"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4790, 0.5490, "Fel'zerul",
                    "Travel to Fel'zerul."),
            },
        },
        {
            id = "accept-1429-the-atal-ai-exile",
            kind = "accept",
            priority = 400,
            text = "Accept The Atal'ai Exile from Fel'zerul in Stonard.",
            complete = QuestState(1429, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMP_OF_SORROWS, 0.4790, 0.5490, "Fel'zerul",
                    "Travel to Fel'zerul."),
            },
        },
    },
})
