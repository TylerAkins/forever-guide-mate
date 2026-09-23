local _, ns = ...

-- Forever dungeon quest list:
-- https://www.wowhead.com/forever/quests/dungeons/the-hall-of-thanes
-- The guide level is the highest required level among those quests (10).
-- Underground Map is the listed prerequisite for Old Ironforge Incursion.
-- The Treaty of Understanding is picked up inside the dungeon. Wowhead files
-- that quest under Dun Morogh, so it is absent from the dungeon list.
-- Afadra's pin is her Ironforge coordinate. A dungeon overview repeats
-- Earthseer Farsen's Dun Morogh pin for her.
-- The corridor pin is the cobwebbed door left of the High Seat. The portal
-- is at the bottom of Old Ironforge, past the lava bridge.
-- Wowhead's zone id 16919 is the area id. No client instance id is published,
-- so entering advances when an in-dungeon quest is accepted or finished.

local MAP = {
    DUN_MOROGH = 1426,
    IRONFORGE = 1455,
}

local ALLIANCE = { faction = "Alliance" }

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function Point(mapID, x, y, label, offMapText, complete)
    return {
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
        complete = complete,
    }
end

local function DunMorogh(x, y, label)
    return {
        Point(MAP.DUN_MOROGH, x, y, label, "Travel to Dun Morogh."),
    }
end

local function Ironforge(x, y, label)
    return {
        Point(MAP.IRONFORGE, x, y, label, "Travel to Ironforge."),
    }
end

ns:RegisterGuide({
    id = "dungeons-hall-of-thanes",
    title = "Hall of Thanes",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 10 } },
        },
    },
    goals = {
        {
            id = "accept-underground-map",
            kind = "accept",
            priority = 10,
            text = "Loot the Dark Iron Map from the Dark Iron spies in southeast Dun Morogh " ..
                "and accept Underground Map.",
            taxiDestination = "Ironforge",
            complete = QuestState(96391, "activeOrCompleted"),
            route = DunMorogh(0.766, 0.610, "Dark Iron spies in southeast Dun Morogh"),
        },
        {
            id = "turnin-underground-map",
            kind = "turnin",
            priority = 11,
            text = "Bring the Dark Iron Map to Earthseer Farsen above Gol'Bolar Quarry.",
            dependsOn = { "accept-underground-map" },
            taxiDestination = "Ironforge",
            complete = QuestState(96391, "completed"),
            route = DunMorogh(0.648, 0.584, "Earthseer Farsen above Gol'Bolar Quarry"),
        },
        {
            id = "accept-old-ironforge-incursion",
            kind = "accept",
            priority = 12,
            text = "Accept Old Ironforge Incursion from Earthseer Farsen. " ..
                "He offers it after Underground Map. The head goes to King Magni Bronzebeard.",
            dependsOn = { "turnin-underground-map" },
            taxiDestination = "Ironforge",
            complete = QuestState(96393, "activeOrCompleted"),
            route = DunMorogh(0.648, 0.584, "Earthseer Farsen above Gol'Bolar Quarry"),
        },
        {
            id = "accept-restless-dead",
            kind = "accept",
            priority = 13,
            conditions = ALLIANCE,
            text = "Accept The Restless Dead from Afadra Dunwall up the Old Ironforge stairs.",
            taxiDestination = "Ironforge",
            complete = QuestState(96394, "activeOrCompleted"),
            route = Ironforge(0.332, 0.476, "Afadra Dunwall in Old Ironforge"),
        },
        {
            id = "accept-important-heirlooms",
            kind = "accept",
            priority = 14,
            text = "Accept Important Heirlooms from Thom Filch by the bridge into the Hall of Thanes.",
            taxiDestination = "Ironforge",
            complete = QuestState(96403, "activeOrCompleted"),
            route = Ironforge(0.324, 0.448, "Thom Filch by the Hall of Thanes bridge"),
        },
        {
            id = "enter-hall-of-thanes",
            kind = "travel",
            priority = 40,
            text = "Enter the Hall of Thanes from the cobwebbed corridor left of the High Seat. " ..
                "Follow it down past the lava bridge. Mark this step complete after you zone in. " ..
                "It also advances when a Hall of Thanes quest is accepted inside or an objective is finished.",
            dependsOn = {
                "accept-old-ironforge-incursion",
                "accept-restless-dead",
                "accept-important-heirlooms",
            },
            persistCompletion = true,
            complete = {
                any = {
                    QuestState(96395, "activeOrCompleted"),
                    QuestState(98423, "activeOrCompleted"),
                    QuestState(96393, "complete"),
                    QuestState(96394, "complete"),
                    QuestState(96403, "complete"),
                },
            },
            route = Ironforge(0.435, 0.520, "Old Ironforge corridor beside the High Seat"),
        },
        {
            id = "accept-ancient-grudge",
            kind = "accept",
            priority = 41,
            text = "Accept An Ancient Grudge from the Ghostly Attendant in Anvilmar's Rest, after the first room.",
            dependsOn = { "enter-hall-of-thanes" },
            complete = QuestState(96395, "activeOrCompleted"),
        },
        {
            id = "complete-restless-dead",
            kind = "objective",
            priority = 42,
            conditions = ALLIANCE,
            text = "Slay 15 Enraged Apparitions and 10 Tormented Souls in the first rooms.",
            dependsOn = { "enter-hall-of-thanes" },
            complete = QuestState(96394, "complete"),
        },
        {
            id = "complete-important-heirlooms",
            kind = "objective",
            priority = 43,
            text = "Collect 8 Dwarven Heirlooms. The Reliquary of Kings has enough for the group.",
            dependsOn = { "enter-hall-of-thanes" },
            complete = QuestState(96403, "complete"),
        },
        {
            id = "complete-ancient-grudge",
            kind = "objective",
            priority = 44,
            text = "Put Faldrim Anvilmar to rest in Anvilmar's Rest.",
            dependsOn = { "accept-ancient-grudge" },
            complete = QuestState(96395, "complete"),
        },
        {
            id = "complete-old-ironforge-incursion",
            kind = "objective",
            priority = 45,
            text = "Take Durgen Dirgehammer's Head in the Reliquary of Kings. " ..
                "The Treaty of Understanding is in a vault in this room.",
            dependsOn = { "enter-hall-of-thanes" },
            complete = QuestState(96393, "complete"),
        },
        {
            id = "accept-treaty-of-understanding",
            kind = "accept",
            priority = 46,
            conditions = ALLIANCE,
            text = "Read the tablet in a Reliquary of Kings vault to accept The Treaty of Understanding.",
            dependsOn = { "complete-old-ironforge-incursion" },
            complete = QuestState(98423, "activeOrCompleted"),
        },
        {
            id = "turnin-ancient-grudge",
            kind = "turnin",
            priority = 50,
            text = "Finish An Ancient Grudge with the Ghostly Attendant.",
            dependsOn = { "complete-ancient-grudge" },
            complete = QuestState(96395, "completed"),
        },
        {
            id = "turnin-restless-dead",
            kind = "turnin",
            priority = 60,
            conditions = ALLIANCE,
            text = "Return to Afadra Dunwall.",
            dependsOn = { "complete-restless-dead" },
            taxiDestination = "Ironforge",
            complete = QuestState(96394, "completed"),
            route = Ironforge(0.332, 0.476, "Afadra Dunwall in Old Ironforge"),
        },
        {
            id = "turnin-important-heirlooms",
            kind = "turnin",
            priority = 61,
            text = "Bring the Dwarven Heirlooms back to Thom Filch.",
            dependsOn = { "complete-important-heirlooms" },
            taxiDestination = "Ironforge",
            complete = QuestState(96403, "completed"),
            route = Ironforge(0.324, 0.448, "Thom Filch by the Hall of Thanes bridge"),
        },
        {
            id = "turnin-old-ironforge-incursion",
            kind = "turnin",
            priority = 62,
            text = "Bring Durgen Dirgehammer's Head to King Magni Bronzebeard and give him Farsen's regards.",
            dependsOn = { "complete-old-ironforge-incursion" },
            taxiDestination = "Ironforge",
            complete = QuestState(96393, "completed"),
            route = Ironforge(0.394, 0.558, "King Magni Bronzebeard on the High Seat"),
        },
        {
            id = "turnin-treaty-of-understanding",
            kind = "turnin",
            priority = 63,
            conditions = ALLIANCE,
            text = "Deliver the Treaty of Understanding to King Magni Bronzebeard.",
            dependsOn = { "accept-treaty-of-understanding" },
            taxiDestination = "Ironforge",
            complete = QuestState(98423, "completed"),
            route = Ironforge(0.394, 0.558, "King Magni Bronzebeard on the High Seat"),
        },
    },
})
