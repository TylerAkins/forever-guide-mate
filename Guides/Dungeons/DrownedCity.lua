local _, ns = ...

-- https://www.wowhead.com/forever/quest=96774/ancient-gurubashi-idol
-- This handoff covers the Skywatcher Plateau quest, not the full dungeon quest list.
ns:RegisterGuide({
    id = "dungeons-drowned-city",
    title = "Drowned City",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
    goals = {
        {
            id = "accept-96774-ancient-gurubashi-idol",
            kind = "accept",
            priority = 10,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Accept Ancient Gurubashi Idol from Mazu'kon at Skywatcher Plateau.",
            complete = { quest = { id = 96774, state = "activeOrCompleted" } },
            route = { { mapID = 1412, x = 0.324, y = 0.206, label = "Mazu'kon", offMapText = "Travel to Mazu'kon in Mulgore." } },
            useClientText = false,
        },
        {
            id = "objective-96774-ancient-gurubashi-idol",
            kind = "objective",
            priority = 20,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Recover the Ancient Gurubashi Idol from the priest in the Drowned City off the Stranglethorn coast. Follow the quest log pin.",
            dependsOn = { "accept-96774-ancient-gurubashi-idol" },
            complete = { quest = { id = 96774, state = "complete" } },
            useClientPin = true,
            useClientText = false,
        },
        {
            id = "turnin-96774-ancient-gurubashi-idol",
            kind = "turnin",
            priority = 30,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Return the Ancient Gurubashi Idol to Mazu'kon at Skywatcher Plateau. Follow the quest log pin.",
            dependsOn = { "objective-96774-ancient-gurubashi-idol" },
            complete = { quest = { id = 96774, state = "completed" } },
            route = { { mapID = 1412, x = 0.324, y = 0.206, label = "Mazu'kon", offMapText = "Travel to Mazu'kon in Mulgore." } },
            useClientPin = true,
            useClientText = false,
        },
    },
})
