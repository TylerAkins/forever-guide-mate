local _, ns = ...

local MAP = {
    THE_BARRENS = 1413,
    THOUSAND_NEEDLES = 1441,
    FERALAS = 1444,
    DARNASSUS = 1457,
    UNDERCITY = 1458,
    THUNDER_BLUFF = 1456,
}

local ALLIANCE = { faction = "Alliance" }
local HORDE = { faction = "Horde" }
local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }

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

ns:RegisterGuide({
    id = "dungeons-razorfen-kraul",
    title = "Razorfen Kraul",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 29 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "accept-1221-blueleaf-tubers",
            kind = "accept",
            priority = 10,
            conditions = { level = { min = 20 } },
            text = "Accept Blueleaf Tubers from Mebok Mizzyrix.",
            complete = QuestState(1221, "activeOrCompleted"),
            route = {
                Point(MAP.THE_BARRENS, 0.624, 0.376, "Mebok Mizzyrix", "Travel to The Barrens."),
            },
        },
        {
            id = "objective-1221-4-snufflenose-command-stic",
            kind = "objective",
            priority = 12,
            conditions = { level = { min = 20 } },
            text = "Get a Snufflenose Command Stick from Mebok Mizzyrix in Ratchet.",
            dependsOn = { "accept-1221-blueleaf-tubers" },
            complete = QuestObjective(1221, 4, "Snufflenose Command Stick"),
            useClientPin = true,
        },
        {
            id = "objective-1221-3-snufflenose-owner-s-manu",
            kind = "objective",
            priority = 14,
            conditions = { level = { min = 20 } },
            text = "Get a Snufflenose Owner's Manual from Mebok Mizzyrix in Ratchet.",
            dependsOn = { "accept-1221-blueleaf-tubers" },
            complete = QuestObjective(1221, 3, "Snufflenose Owner's Manual"),
            route = {
                Point(MAP.THE_BARRENS, 0.623, 0.376, "The Barrens", "Travel to The Barrens."),
            },
        },
        {
            id = "objective-1221-2-crate-with-holes",
            kind = "objective",
            priority = 16,
            conditions = { level = { min = 20 } },
            text = "Get a Crate With Holes from Mebok Mizzyrix in Ratchet.",
            dependsOn = { "accept-1221-blueleaf-tubers" },
            complete = QuestObjective(1221, 2, "Crate With Holes"),
            route = {
                Point(MAP.THE_BARRENS, 0.623, 0.376, "The Barrens", "Travel to The Barrens."),
            },
        },
        {
            id = "accept-1100-longbrow-s-jounral",
            kind = "accept",
            priority = 18,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 33 } } } },
            text = "Loot Longbrow's Journal in Thousand Needles and use it to accept Longbrow's Journal.",
            complete = QuestState(1100, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.307, 0.244, "Thousand Needles", "Travel to Thousand Needles."),
            },
        },
        {
            id = "turnin-1100-longbrow-s-jounral",
            kind = "turnin",
            priority = 19,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 33 } } } },
            text = "Turn in Longbrow's Jounral to Falfindel Waywarder.",
            dependsOn = { "accept-1100-longbrow-s-jounral" },
            complete = QuestState(1100, "completed"),
            route = {
                Point(MAP.FERALAS, 0.896, 0.466, "Falfindel Waywarder", "Travel to Feralas."),
            },
        },
        {
            id = "accept-1101-the-crone-of-the-kraul",
            kind = "accept",
            priority = 20,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            text = "Accept The Crone of the Kraul from Falfindel Waywarder.",
            dependsOn = { "turnin-1100-longbrow-s-jounral" },
            complete = QuestState(1101, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.896, 0.466, "Falfindel Waywarder", "Travel to Feralas."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 21,
            conditions = { level = { min = 29 } },
            text = "Enter Razorfen Kraul with your group.",
            dependsOn = { "accept-1221-blueleaf-tubers", "accept-1100-longbrow-s-jounral", "accept-1101-the-crone-of-the-kraul" },
            persistCompletion = true,
            complete = { instance = 47 },
        },
        {
            id = "objective-1221-1-blueleaf-tuber",
            kind = "objective",
            priority = 22,
            conditions = { level = { min = 20 } },
            text = "Inside Razorfen Kraul, use the Snufflenose Gopher on tuber mounds until you collect 6 Blueleaf Tuber.",
            dependsOn = { "accept-1221-blueleaf-tubers" },
            complete = QuestObjective(1221, 1, "Blueleaf Tuber"),
            useClientPin = true,
        },
        {
            id = "objective-1101-1-razorflank-s-medallion",
            kind = "objective",
            priority = 24,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            text = "Kill Charlga Razorflank and loot Razorflank's Medallion.",
            dependsOn = { "accept-1101-the-crone-of-the-kraul" },
            complete = QuestState(1101, "complete"),
            useClientPin = true,
        },
        {
            id = "accept-1142-mortality-wanes",
            kind = "accept",
            priority = 25,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Accept Mortality Wanes from Heralath Fallowbrook.",
            complete = QuestState(1142, "activeOrCompleted"),
        },
        {
            id = "accept-1144-willix-the-importer",
            kind = "accept",
            priority = 26,
            conditions = { level = { min = 22 } },
            text = "Accept Willix the Importer from Willix the Importer.",
            complete = QuestState(1144, "activeOrCompleted"),
        },
        {
            id = "objective-1144-1-escort-willix-the-import",
            kind = "objective",
            priority = 27,
            conditions = { level = { min = 22 } },
            text = "Escort Willix the Importer out of Razorfen Kraul.",
            dependsOn = { "accept-1144-willix-the-importer" },
            complete = QuestState(1144, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-1144-willix-the-importer",
            kind = "turnin",
            priority = 28,
            conditions = { level = { min = 22 } },
            text = "Turn in Willix the Importer to Willix the Importer.",
            dependsOn = { "objective-1144-1-escort-willix-the-import" },
            complete = QuestState(1144, "completed"),
            useClientPin = true,
        },
        {
            id = "objective-1142-1-treshala-s-pendant",
            kind = "objective",
            priority = 30,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill Roogrosh and loot Treshala's Pendant for Mortality Wanes.",
            dependsOn = { "accept-1142-mortality-wanes" },
            complete = QuestState(1142, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-1221-blueleaf-tubers",
            kind = "turnin",
            priority = 31,
            conditions = { level = { min = 20 } },
            text = "Turn in Blueleaf Tubers to Mebok Mizzyrix.",
            dependsOn = { "objective-1221-4-snufflenose-command-stic", "objective-1221-3-snufflenose-owner-s-manu", "objective-1221-2-crate-with-holes", "objective-1221-1-blueleaf-tuber" },
            complete = QuestState(1221, "completed"),
            route = {
                Point(MAP.THE_BARRENS, 0.624, 0.376, "Mebok Mizzyrix", "Travel to The Barrens."),
            },
        },
        {
            id = "turnin-1101-the-crone-of-the-kraul",
            kind = "turnin",
            priority = 32,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            text = "Turn in The Crone of the Kraul to Falfindel Waywarder.",
            dependsOn = { "objective-1101-1-razorflank-s-medallion" },
            complete = QuestState(1101, "completed"),
            route = {
                Point(MAP.FERALAS, 0.896, 0.466, "Falfindel Waywarder", "Travel to Feralas."),
            },
        },
        {
            id = "turnin-1142-mortality-wanes",
            kind = "turnin",
            priority = 33,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Turn in Mortality Wanes to Treshala Fallowbrook.",
            dependsOn = { "objective-1142-1-treshala-s-pendant" },
            complete = QuestState(1142, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.696, 0.678, "Treshala Fallowbrook", "Travel to Darnassus."),
            },
        },
        {
            id = "accept-1109-going-going-guano",
            kind = "accept",
            priority = 35,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Accept Going, Going, Guano! from Master Apothecary Faranell.",
            complete = QuestState(1109, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.488, 0.693, "Master Apothecary Faranell", "Travel to Undercity."),
            },
        },
        {
            id = "accept-1102-a-vengeful-fate",
            kind = "accept",
            priority = 37,
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            text = "Accept A Vengeful Fate from Auld Stonespire.",
            complete = QuestState(1102, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.360, 0.599, "Auld Stonespire", "Travel to Thunder Bluff."),
            },
        },
        {
            id = "objective-1109-1-kraul-guano",
            kind = "objective",
            priority = 39,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Loot a pile of Kraul Guano from the bat roosts in Razorfen Kraul.",
            dependsOn = { "accept-1109-going-going-guano" },
            complete = QuestState(1109, "complete"),
            useClientPin = true,
        },
        {
            id = "objective-1102-1-razorflank-s-heart",
            kind = "objective",
            priority = 40,
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            text = "Kill Charlga Razorflank and loot Razorflank's Heart.",
            dependsOn = { "accept-1102-a-vengeful-fate" },
            complete = QuestState(1102, "complete"),
            useClientPin = true,
        },
        {
            id = "accept-6522-an-unholy-alliance",
            kind = "accept",
            priority = 48,
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            text = "Accept An Unholy Alliance.",
            complete = QuestState(6522, "activeOrCompleted"),
        },
        {
            id = "turnin-1102-a-vengeful-fate",
            kind = "turnin",
            priority = 51,
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            text = "Turn in A Vengeful Fate to Auld Stonespire.",
            dependsOn = { "objective-1102-1-razorflank-s-heart" },
            complete = QuestState(1102, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.360, 0.599, "Auld Stonespire", "Travel to Thunder Bluff."),
            },
        },
        {
            id = "turnin-1109-going-going-guano",
            kind = "turnin",
            priority = 52,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Turn in Going, Going, Guano! to Master Apothecary Faranell.",
            dependsOn = { "objective-1109-1-kraul-guano" },
            complete = QuestState(1109, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.488, 0.693, "Master Apothecary Faranell", "Travel to Undercity."),
            },
        },
        {
            id = "turnin-6522-an-unholy-alliance",
            kind = "turnin",
            priority = 53,
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            text = "Turn in An Unholy Alliance to Varimathras.",
            dependsOn = { "accept-6522-an-unholy-alliance" },
            complete = QuestState(6522, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.562, 0.922, "Varimathras", "Travel to Undercity."),
            },
        },
    },
})
