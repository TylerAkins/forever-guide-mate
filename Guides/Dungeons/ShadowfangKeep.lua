local _, ns = ...

local MAP = {
    UNDERCITY = 1458,
    SILVERPINE_FOREST = 1421,
}

local HORDE = { faction = "Horde" }

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
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
    id = "dungeons-shadowfang-keep",
    title = "Shadowfang Keep",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 18 } },
        },
    },
    goals = {
        {
            id = "accept-1013-the-book-of-ur",
            kind = "accept",
            priority = 10,
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            text = "Accept The Book of Ur from Keeper Bel'dugur.",
            complete = QuestState(1013, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.537, 0.544, "Keeper Bel'dugur", "Travel to Undercity."),
            },
        },
        {
            id = "accept-1014-arugal-must-die",
            kind = "accept",
            priority = 11,
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            text = "Accept Arugal Must Die from Dalar Dawnweaver.",
            complete = QuestState(1014, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINE_FOREST, 0.442, 0.398, "Dalar Dawnweaver", "Travel to Silverpine Forest."),
            },
        },
        {
            id = "accept-1098-deathstalkers-in-shadowfang",
            kind = "accept",
            priority = 12,
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            text = "Accept Deathstalkers in Shadowfang from High Executor Hadrec.",
            complete = QuestState(1098, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINE_FOREST, 0.434, 0.409, "High Executor Hadrec", "Travel to Silverpine Forest."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 13,
            conditions = { level = { min = 18 } },
            text = "Enter Shadowfang Keep with your group.",
            dependsOn = { "accept-1013-the-book-of-ur", "accept-1014-arugal-must-die", "accept-1098-deathstalkers-in-shadowfang" },
            persistCompletion = true,
            complete = { instance = 33 },
        },
        {
            id = "boss-rethilgore",
            kind = "note",
            priority = 14,
            conditions = { level = { min = 18 } },
            text = "Kill Rethilgore. The first boss of the dungeon. Open the cell door and speak with Deathstalker Adamant. Follow him and once he opens the door, jump down to the right of the stairs. Watch for 'Soul Drain'. It will immobilize the target and gain health while casting it.",
            dependsOn = { "enter-dungeon" },
        },
        {
            id = "note-click-lever",
            kind = "note",
            priority = 15,
            conditions = { level = { min = 18 } },
            text = "Click Lever.",
        },
        {
            id = "turnin-1098-deathstalkers-in-shadowfang",
            kind = "turnin",
            priority = 16,
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            text = "Turn in Deathstalkers in Shadowfang to Deathstalker Vincent. 'Please unlock the courtyard door.'.",
            dependsOn = { "accept-1098-deathstalkers-in-shadowfang" },
            complete = QuestState(1098, "completed"),
            useClientPin = true,
        },
        {
            id = "boss-shadow-charger",
            kind = "note",
            priority = 17,
            conditions = { level = { min = 18 } },
            text = "Kill Shadow Charger. Pulling one of the 3 horses in the stable will pull all 3. Use CC on at least one of the horses if possible as they deal high damage. Focus them down one at a time.",
            dependsOn = { "boss-rethilgore" },
        },
        {
            id = "boss-razorclaw-the-butcher",
            kind = "note",
            priority = 18,
            conditions = { level = { min = 18 } },
            text = "Kill Razorclaw the Butcher. Clear the room before starting the encounter. Tank and spank.",
            dependsOn = { "boss-shadow-charger" },
        },
        {
            id = "boss-baron-silverlaine",
            kind = "note",
            priority = 19,
            conditions = { level = { min = 18 } },
            text = "Kill Baron Silverlaine. Healers will need to watch for the 'Veil of Shadow' ability when it is cast. If you have a hybrid class in your group, support the healer when this ability goes off. Veil of Shadows will reduce incoming healing by 75%.",
            dependsOn = { "boss-razorclaw-the-butcher" },
        },
        {
            id = "boss-commander-springvale",
            kind = "note",
            priority = 20,
            conditions = { level = { min = 18 } },
            text = "Kill Commander Springvale. This encounter starts with two adds. Start by focus DPSing the Haunted Servitor. You can either kill the Wailing Guardsman next, or have a Warlock or Hunter pet Off-tank it.",
            dependsOn = { "boss-baron-silverlaine" },
        },
        {
            id = "boss-odo-the-blindwatcher",
            kind = "note",
            priority = 21,
            conditions = { level = { min = 18 } },
            text = "Kill Odo the Blindwatcher. This encounter starts with two adds. They have the 'Disarm' and 'Cleave' abilities, so be sure to keep them away from the group as a tank. You can use CC or focus DPS them down quickly.",
            dependsOn = { "boss-commander-springvale" },
        },
        {
            id = "boss-deathsworn-captain",
            kind = "note",
            priority = 22,
            conditions = { level = { min = 18 } },
            text = "Kill Deathsworn Captain if the rare is up. This is a rare mob that may not be available. The tank should keep this boss 10 yards away from the group to avoid the AoE Silence it uses.",
            dependsOn = { "boss-odo-the-blindwatcher" },
        },
        {
            id = "boss-fenrus-the-devourer",
            kind = "note",
            priority = 23,
            conditions = { level = { min = 18 } },
            text = "Kill Fenrus the Devourer. Follow the path through the dungeon, defeat Baron Silverlaine, and then head upstairs. Continue following the path to defeat Commander Springvale then go downstairs and outside. Continue along the outside path to reenter the building and reach Odo the Blindwatcher and eventually Fenrus the Devourer. This boss has a dot ability and is otherwise simple.",
            dependsOn = { "boss-deathsworn-captain" },
        },
        {
            id = "note-click-the-book-of-ur",
            kind = "note",
            priority = 24,
            conditions = { level = { min = 18 } },
            text = "Click The Book of Ur.",
        },
        {
            id = "objective-1013-1-the-book-of-ur",
            kind = "objective",
            priority = 25,
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            text = "Collect The Book of Ur.",
            dependsOn = { "accept-1013-the-book-of-ur" },
            complete = QuestState(1013, "complete"),
            useClientPin = true,
        },
        {
            id = "boss-wolf-master-nados",
            kind = "note",
            priority = 26,
            conditions = { level = { min = 18 } },
            text = "Kill Wolf Master Nados. In the room where this encounter takes place, there are 4 adds that should be killed beforehand. During the fight, he will summon additional Worg that should be killed.",
            dependsOn = { "boss-fenrus-the-devourer" },
        },
        {
            id = "boss-archmage-arugal",
            kind = "note",
            priority = 27,
            conditions = { level = { min = 18 } },
            text = "Kill Archmage Arugal. He is the last boss of the dungeon. For this encounter, you will want to have ranged DPS and Healers stand at the platform you entered the room in. As the encounter progresses, Arugal will teleport around the room. His standard attack, 'Shadow Bolt' hits very hard.",
            dependsOn = { "boss-wolf-master-nados" },
        },
        {
            id = "objective-1014-1-head-of-arugal",
            kind = "objective",
            priority = 28,
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            text = "Collect Head of Arugal.",
            dependsOn = { "accept-1014-arugal-must-die" },
            complete = QuestState(1014, "complete"),
            useClientPin = true,
        },
        {
            id = "note-leave-the-dungeon",
            kind = "note",
            priority = 29,
            conditions = { level = { min = 18 } },
            text = "Leave the dungeon.",
        },
        {
            id = "note-click-here-to-continue",
            kind = "note",
            priority = 30,
            conditions = { level = { min = 18 } },
            text = "Click Here to Continue.",
        },
        {
            id = "turnin-1014-arugal-must-die",
            kind = "turnin",
            priority = 31,
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            text = "Turn in Arugal Must Die to Dalar Dawnweaver.",
            dependsOn = { "objective-1014-1-head-of-arugal" },
            complete = QuestState(1014, "completed"),
            route = {
                Point(MAP.SILVERPINE_FOREST, 0.442, 0.398, "Dalar Dawnweaver", "Travel to Silverpine Forest."),
            },
        },
        {
            id = "turnin-1013-the-book-of-ur",
            kind = "turnin",
            priority = 32,
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            text = "Turn in The Book of Ur to Keeper Bel'dugur.",
            dependsOn = { "objective-1013-1-the-book-of-ur" },
            complete = QuestState(1013, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.537, 0.544, "Keeper Bel'dugur", "Travel to Undercity."),
            },
        },
    },
})
