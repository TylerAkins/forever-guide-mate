local _, ns = ...

-- Horde City of Dalaran dungeon attunement (Dalaran Sewer Key).
-- Source: https://www.wowhead.com/forever/news/how-to-become-attuned-to-city-of-dalaran-dungeon-as-horde-in-wow-forever-383256
-- Dungeon pickups at Undercity and Tarren Mill are completed in CityOfDalaran.lua.
-- Dalaran Patrols offer level: wow-database export/forever quest 545 (requiredLevel 30).
-- Current objective counts: https://www.wowhead.com/forever/quest=545/dalaran-patrols
-- Required chain: Prison Break In (544) and Key to the City (93680), then
-- Dalaran Patrols (545), Blood in the Streets (92434), Heart of Disruption (96984).
-- Accepting Heart of Disruption grants the Dalaran Sewer Key. The Arcane Mote
-- objective inside the dungeon is not part of this attunement guide.
-- Keeper Bel'varil's Stone Tokens (556) and Bracers of Binding (557) share the
-- same camp and patrol kills but are not required for the key.
-- Alliance gets the key from Image of Archmage Modera without this chain.
-- The Lordamere camp pin uses the safe approach at 23.3, 55.1; the older
-- pins at 21, 83 and 21.8, 89.9 lead into dangerous areas. Image of
-- Archmage Modera is at Silverpine 68.6, 45.2 (ForeverChanges). The exact
-- Grimy Key object location is not published, so that step follows its quest pin.

local MAP = {
    HILLSBRAD = 1424,
    ALTERAC = 1416,
    SILVERPINE = 1421,
}

local HORDE = { faction = "Horde" }

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

local function TarrenMill(label)
    return {
        Point(MAP.HILLSBRAD, 0.6159, 0.2071, label, "Travel to Tarren Mill in Hillsbrad Foothills."),
    }
end

ns:RegisterGuide({
    id = "dungeons-city-of-dalaran-attunement",
    title = "City of Dalaran Attunement",
    category = "Dungeon Quest Guides",
    revision = 2,
    conditions = {
        all = {
            { level = { min = 30 } },
            HORDE,
        },
    },
    goals = {
        {
            id = "accept-96988-source-of-power",
            kind = "accept",
            priority = 5,
            conditions = { all = { HORDE, { level = { min = 24 } } } },
            text = "Accept Source of Power from Doctor Martin Felben in the Apothecarium in Undercity before heading to Tarren Mill. Its objectives are inside the dungeon.",
            complete = QuestState(96988, "activeOrCompleted"),
            route = { Point(1458, 0.466, 0.746, "Doctor Martin Felben", "Travel to Doctor Martin Felben in the Apothecarium in Undercity.") },
        },
        {
            id = "accept-544-prison-break-in",
            kind = "accept",
            priority = 10,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Accept Prison Break In from Magus Wordeen Voidglare in Tarren Mill.",
            taxiDestination = "Tarren Mill",
            complete = QuestState(544, "activeOrCompleted"),
            route = TarrenMill("Magus Wordeen Voidglare"),
        },
        {
            id = "accept-93680-key-to-the-city",
            kind = "accept",
            priority = 11,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Accept Key to the City from Magus Wordeen Voidglare in Tarren Mill.",
            taxiDestination = "Tarren Mill",
            complete = QuestState(93680, "activeOrCompleted"),
            route = TarrenMill("Magus Wordeen Voidglare"),
        },
        {
            id = "accept-96986-the-grave-knight",
            kind = "accept",
            priority = 12,
            conditions = { all = { HORDE, { level = { min = 24 } } } },
            text = "Accept The Grave Knight from Melisara in Tarren Mill before leaving for Lordamere Internment Camp. Its objectives are inside the dungeon.",
            complete = QuestState(96986, "activeOrCompleted"),
            route = TarrenMill("Tarren Mill"),
        },
        {
            id = "objective-544-prison-break-in",
            kind = "objective",
            priority = 20,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Recover the four Bloodstone artifacts from the Forsaken traitors in Lordamere Internment Camp.",
            dependsOn = { "accept-544-prison-break-in" },
            complete = QuestState(544, "complete"),
            route = {
                Point(MAP.ALTERAC, 0.2330, 0.5510, "Lordamere Internment Camp",
                    "Travel to Lordamere Internment Camp in Alterac Mountains."),
            },
        },
        {
            id = "objective-93680-grimy-key",
            kind = "objective",
            priority = 21,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Loot the Grimy Key in Lordamere Internment Camp. The guide follows the quest log pin.",
            dependsOn = { "accept-93680-key-to-the-city" },
            complete = QuestObjective(93680, 1, "Grimy Key"),
            useClientPin = true,
            route = {
                Point(MAP.ALTERAC, 0.2330, 0.5510, "Lordamere Internment Camp",
                    "Travel to Lordamere Internment Camp in Alterac Mountains."),
            },
        },
        {
            id = "turnin-544-prison-break-in",
            kind = "turnin",
            priority = 30,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Turn in Prison Break In to Magus Wordeen Voidglare.",
            dependsOn = { "objective-544-prison-break-in" },
            complete = QuestState(544, "completed"),
            route = TarrenMill("Magus Wordeen Voidglare"),
        },
        {
            id = "turnin-93680-key-to-the-city",
            kind = "turnin",
            priority = 31,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Turn in Key to the City to Magus Wordeen Voidglare.",
            dependsOn = { "objective-93680-grimy-key" },
            complete = QuestState(93680, "completed"),
            route = TarrenMill("Magus Wordeen Voidglare"),
        },
        {
            id = "accept-545-dalaran-patrols",
            kind = "accept",
            priority = 40,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Accept Dalaran Patrols from Magus Wordeen Voidglare in Tarren Mill.",
            dependsOn = { "turnin-544-prison-break-in" },
            complete = QuestState(545, "activeOrCompleted"),
            route = TarrenMill("Magus Wordeen Voidglare"),
        },
        {
            id = "objective-545-dalaran-patrols",
            kind = "objective",
            priority = 50,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Kill 6 Dalaran Summoners and 8 Elemental Slaves outside Dalaran.",
            dependsOn = { "accept-545-dalaran-patrols" },
            complete = QuestState(545, "complete"),
            route = {
                Point(MAP.ALTERAC, 0.1994, 0.7400, "Dalaran Summoner",
                    "Travel to the ruins outside Dalaran in Alterac Mountains."),
            },
        },
        {
            id = "turnin-545-dalaran-patrols",
            kind = "turnin",
            priority = 60,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Turn in Dalaran Patrols to Magus Wordeen Voidglare.",
            dependsOn = { "objective-545-dalaran-patrols" },
            complete = QuestState(545, "completed"),
            route = TarrenMill("Magus Wordeen Voidglare"),
        },
        {
            id = "accept-92434-blood-in-the-streets",
            kind = "accept",
            priority = 70,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Accept Blood in the Streets from Magus Wordeen Voidglare in Tarren Mill.",
            dependsOn = {
                "turnin-545-dalaran-patrols",
                "turnin-93680-key-to-the-city",
            },
            complete = QuestState(92434, "activeOrCompleted"),
            route = TarrenMill("Magus Wordeen Voidglare"),
        },
        {
            id = "objective-92434-blood-in-the-streets",
            kind = "objective",
            priority = 80,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Find a way into Dalaran along Lordamere Lake and meet Image of Archmage Modera.",
            dependsOn = { "accept-92434-blood-in-the-streets" },
            complete = QuestState(92434, "complete"),
            route = {
                Point(MAP.SILVERPINE, 0.6860, 0.4520, "Image of Archmage Modera",
                    "Travel to Image of Archmage Modera beside Lordamere Lake near Dalaran."),
            },
        },
        {
            id = "turnin-92434-blood-in-the-streets",
            kind = "turnin",
            priority = 90,
            conditions = { all = { HORDE, { level = { min = 30 } } } },
            text = "Turn in Blood in the Streets to Image of Archmage Modera.",
            dependsOn = { "objective-92434-blood-in-the-streets" },
            complete = QuestState(92434, "completed"),
            route = {
                Point(MAP.SILVERPINE, 0.6860, 0.4520, "Image of Archmage Modera",
                    "Travel to Image of Archmage Modera beside Lordamere Lake near Dalaran."),
            },
        },
        {
            id = "accept-96984-heart-of-disruption",
            kind = "accept",
            priority = 100,
            conditions = { all = { HORDE, { level = { min = 24 } } } },
            text = "Accept Heart of Disruption from Image of Archmage Modera. Accepting this quest grants the Dalaran Sewer Key.",
            dependsOn = { "turnin-92434-blood-in-the-streets" },
            complete = QuestState(96984, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINE, 0.6860, 0.4520, "Image of Archmage Modera",
                    "Travel to Image of Archmage Modera beside Lordamere Lake near Dalaran."),
            },
        },
        {
            id = "confirm-dalaran-sewer-key",
            kind = "confirm",
            priority = 110,
            conditions = { all = { HORDE, { level = { min = 24 } } } },
            text = "You now have the Dalaran Sewer Key. Enter the City of Dalaran dungeon through the sewer entrance. " ..
                "Alliance characters get the key from Image of Archmage Modera without this chain. " ..
                "Mark complete when you have the key and know the entrance. Arcane Mote work inside is not part of attunement.",
            dependsOn = { "accept-96984-heart-of-disruption" },
            route = {
                Point(MAP.SILVERPINE, 0.6860, 0.4520, "City of Dalaran sewer entrance",
                    "Travel to the Dalaran sewer entrance near Lordamere Lake."),
            },
        },
    },
})
