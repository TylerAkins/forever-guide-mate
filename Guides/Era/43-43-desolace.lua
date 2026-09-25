local _, ns = ...

-- Alliance Era leveling route for Desolace, levels 43-43.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DESOLACE = 1443,
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
    id = "leveling-era-43-43-desolace",
    title = "43-43 Desolace (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 43 } },
        },
    },
    goals = {
        {
            id = "accept-1466-reagents-for-reclaimers-inc",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 1459, state = "completed" } },
                },
            },
            text = "Accept Reagents for Reclaimers Inc. from Kreldig Ungor in Nijel's Point.",
            complete = QuestState(1466, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.6640, 0.0974, "Kreldig Ungor",
                    "Travel to Kreldig Ungor."),
            },
        },
        {
            id = "accept-261-down-the-scarlet-path",
            kind = "accept",
            priority = 30,
            text = "Accept Down the Scarlet Path from Brother Anton in Nijel's Point.",
            complete = QuestState(261, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.6651, 0.0789, "Brother Anton",
                    "Travel to Brother Anton."),
            },
        },
        {
            id = "note-6134-nijel-s-point",
            kind = "note",
            priority = 40,
            text = "Set your hearth in Nijel's Point with Innkeeper Lyshaerya.",
            route = {
                Point(MAP.DESOLACE, 0.6630, 0.0660, "Innkeeper Lyshaerya",
                    "Travel to Innkeeper Lyshaerya."),
            },
        },
        {
            id = "accept-6134-ghost-o-plasm-round-up",
            kind = "accept",
            priority = 60,
            text = "Accept Ghost-o-plasm Round Up from Hornizz Brimbuzzle in Kodo Graveyard.",
            complete = QuestState(6134, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.4786, 0.6179, "Hornizz Brimbuzzle",
                    "Travel to Hornizz Brimbuzzle."),
            },
        },
        {
            id = "accept-1374-khan-jehn",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 1374, state = "completed" } },
                },
            },
            text = "Accept Khan Jehn from Uthek the Wise in Gelkis Village.",
            complete = QuestState(1374, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.3621, 0.7927, "Uthek the Wise",
                    "Travel to Uthek the Wise."),
            },
        },
        {
            id = "objective-1374-khan-jehn",
            kind = "objective",
            priority = 90,
            conditions = {
                all = {
                    { quest = { id = 1374, state = "completed" } },
                },
            },
            text = "Kill Khan Jehn and collect Khan Jehn's Head in Magram Village.",
            dependsOn = { "accept-1374-khan-jehn" },
            complete = QuestState(1374, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.6643, 0.7993, "Khan Jehn",
                    "Travel to Khan Jehn."),
            },
        },
        {
            id = "objective-6134-ghost-o-plasm-round-up",
            kind = "objective",
            priority = 110,
            text = "Clear the area and use Crate of Ghost Magnets, kill the Magrami Spectre that appear and collect 8 Ghost-o-Plasm.",
            dependsOn = { "accept-6134-ghost-o-plasm-round-up" },
            complete = QuestState(6134, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.6387, 0.9171, "Magrami Spectre",
                    "Travel to Magrami Spectre."),
            },
        },
        {
            id = "objective-261-down-the-scarlet-path",
            kind = "objective",
            priority = 120,
            text = "Kill 30 Undead Ravager in Valley of Bones.",
            dependsOn = { "accept-261-down-the-scarlet-path" },
            complete = QuestState(261, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.6391, 0.9074, "Undead Ravager",
                    "Travel to Undead Ravager."),
            },
        },
        {
            id = "objective-1466-reagents-for-reclaimers-inc",
            kind = "objective",
            priority = 130,
            conditions = {
                all = {
                    { quest = { id = 1459, state = "completed" } },
                },
            },
            text = "Kill Ley Hunter, Nether Sister and Doomwarder Captain to collect the materials required in Mannoroc Coven.",
            dependsOn = { "accept-1466-reagents-for-reclaimers-inc" },
            complete = QuestState(1466, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.5100, 0.8200, "Ley Hunter",
                    "Travel to Ley Hunter."),
            },
        },
        {
            id = "turnin-6134-ghost-o-plasm-round-up",
            kind = "turnin",
            priority = 150,
            text = "Turn in Ghost-o-plasm Round Up to Hornizz Brimbuzzle in Kodo Graveyard.",
            dependsOn = { "objective-6134-ghost-o-plasm-round-up" },
            complete = QuestState(6134, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.4783, 0.6183, "Hornizz Brimbuzzle",
                    "Travel to Hornizz Brimbuzzle."),
            },
        },
        {
            id = "turnin-1374-khan-jehn",
            kind = "turnin",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 1374, state = "completed" } },
                },
            },
            text = "Turn in Khan Jehn to Uthek the Wise in Gelkis Village.",
            dependsOn = { "objective-1374-khan-jehn" },
            complete = QuestState(1374, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.3625, 0.7927, "Uthek the Wise",
                    "Travel to Uthek the Wise."),
            },
        },
        {
            id = "turnin-1466-reagents-for-reclaimers-inc",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { quest = { id = 1459, state = "completed" } },
                },
            },
            text = "Turn in Reagents for Reclaimers Inc. to Kreldig Ungor in Nijel's Point.",
            dependsOn = { "objective-1466-reagents-for-reclaimers-inc" },
            complete = QuestState(1466, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.6620, 0.0964, "Kreldig Ungor",
                    "Travel to Kreldig Ungor."),
            },
        },
        {
            id = "accept-1467-reagents-for-reclaimers-inc",
            kind = "accept",
            priority = 200,
            conditions = {
                all = {
                    { quest = { id = 1459, state = "completed" } },
                },
            },
            text = "Accept Reagents for Reclaimers Inc. from Kreldig Ungor in Nijel's Point.",
            complete = QuestState(1467, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.6620, 0.0964, "Kreldig Ungor",
                    "Travel to Kreldig Ungor."),
            },
        },
        {
            id = "turnin-261-down-the-scarlet-path",
            kind = "turnin",
            priority = 210,
            text = "Turn in Down the Scarlet Path to Brother Anton in Nijel's Point.",
            dependsOn = { "objective-261-down-the-scarlet-path" },
            complete = QuestState(261, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.6651, 0.0795, "Brother Anton",
                    "Travel to Brother Anton."),
            },
        },
        {
            id = "accept-1052-down-the-scarlet-path",
            kind = "accept",
            priority = 220,
            text = "Accept Down the Scarlet Path from Brother Anton in Nijel's Point.",
            complete = QuestState(1052, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.6651, 0.0795, "Brother Anton",
                    "Travel to Brother Anton."),
            },
        },
    },
})
