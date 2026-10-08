local _, ns = ...

local MAP = {
    WETLANDS = 1437,
    REDRIDGE_MOUNTAINS = 1433,
    DUSKWOOD = 1431,
    STORMWIND_CITY = 1453,
}

local ALLIANCE = { faction = "Alliance" }

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
    id = "dungeons-the-stockade",
    title = "The Stockade",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 25 } },
        },
    },
    goals = {
        {
            id = "accept-303-the-dark-iron-war",
            kind = "accept",
            priority = 10,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Accept The Dark Iron War from Motley Garmason.",
            complete = QuestState(303, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.497, 0.182, "Motley Garmason", "Travel to Wetlands."),
            },
        },
        {
            id = "objective-303-1-dark-iron-dwarf",
            kind = "objective",
            priority = 11,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill 15 Dark Iron Dwarf.",
            dependsOn = { "accept-303-the-dark-iron-war" },
            complete = QuestObjective(303, 1, "Dark Iron Dwarf"),
            route = {
                Point(MAP.WETLANDS, 0.486, 0.166, "Wetlands", "Travel to Wetlands."),
            },
        },
        {
            id = "objective-303-2-dark-iron-tunneler",
            kind = "objective",
            priority = 12,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill 5 Dark Iron Tunneler.",
            dependsOn = { "accept-303-the-dark-iron-war" },
            complete = QuestObjective(303, 2, "Dark Iron Tunneler"),
            route = {
                Point(MAP.WETLANDS, 0.481, 0.158, "Wetlands", "Travel to Wetlands."),
            },
        },
        {
            id = "objective-303-3-dark-iron-saboteur",
            kind = "objective",
            priority = 13,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill 5 Dark Iron Saboteur.",
            dependsOn = { "accept-303-the-dark-iron-war" },
            complete = QuestObjective(303, 3, "Dark Iron Saboteur"),
            route = {
                Point(MAP.WETLANDS, 0.486, 0.166, "Wetlands", "Travel to Wetlands."),
            },
        },
        {
            id = "objective-303-4-dark-iron-demolitionist",
            kind = "objective",
            priority = 14,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill 5 Dark Iron Demolitionist.",
            dependsOn = { "accept-303-the-dark-iron-war" },
            complete = QuestObjective(303, 4, "Dark Iron Demolitionist"),
            route = {
                Point(MAP.WETLANDS, 0.475, 0.154, "Wetlands", "Travel to Wetlands."),
            },
        },
        {
            id = "turnin-303-the-dark-iron-war",
            kind = "turnin",
            priority = 15,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Turn in The Dark Iron War to Motley Garmason.",
            dependsOn = { "objective-303-1-dark-iron-dwarf", "objective-303-2-dark-iron-tunneler", "objective-303-3-dark-iron-saboteur", "objective-303-4-dark-iron-demolitionist" },
            complete = QuestState(303, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.497, 0.182, "Motley Garmason", "Travel to Wetlands."),
            },
        },
        {
            id = "accept-378-the-fury-runs-deep",
            kind = "accept",
            priority = 16,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } } } },
            text = "Accept The Fury Runs Deep from Motley Garmason.",
            dependsOn = { "turnin-303-the-dark-iron-war" },
            complete = QuestState(378, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.497, 0.182, "Motley Garmason", "Travel to Wetlands."),
            },
        },
        {
            id = "accept-386-what-comes-around",
            kind = "accept",
            priority = 17,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Accept What Comes Around from Guard Berton.",
            complete = QuestState(386, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE_MOUNTAINS, 0.263, 0.466, "Guard Berton", "Travel to Redridge Mountains."),
            },
        },
        {
            id = "accept-377-crime-and-punishment",
            kind = "accept",
            priority = 18,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Accept Crime and Punishment from Councilman Millstipe.",
            complete = QuestState(377, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.719, 0.478, "Councilman Millstipe", "Travel to Duskwood."),
            },
        },
        {
            id = "accept-388-the-color-of-blood",
            kind = "accept",
            priority = 19,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Accept The Color of Blood from Nikova Raskol.",
            complete = QuestState(388, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.736, 0.466, "Nikova Raskol", "Travel to Stormwind City."),
            },
        },
        {
            id = "accept-373-the-unsent-letter",
            kind = "accept",
            priority = 21,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            text = "Inside The Stockade, loot An Unsent Letter from the inmates until one drops. " ..
                "Use the letter to accept The Unsent Letter.",
            complete = QuestState(373, "activeOrCompleted"),
            useClientPin = true,
        },
        {
            id = "turnin-373-the-unsent-letter",
            kind = "turnin",
            priority = 22,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            text = "Turn in The Unsent Letter to Baros Alexston.",
            dependsOn = { "accept-373-the-unsent-letter" },
            complete = QuestState(373, "completed"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.492, 0.303, "Baros Alexston", "Travel to Stormwind City."),
            },
        },
        {
            id = "accept-389-bazil-thredd",
            kind = "accept",
            priority = 23,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Accept Bazil Thredd from Baros Alexston.",
            dependsOn = { "turnin-373-the-unsent-letter" },
            complete = QuestState(389, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.492, 0.303, "Baros Alexston", "Travel to Stormwind City."),
            },
        },
        {
            id = "turnin-389-bazil-thredd",
            kind = "turnin",
            priority = 24,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Turn in Bazil Thredd to Warden Thelwater.",
            dependsOn = { "accept-389-bazil-thredd" },
            complete = QuestState(389, "completed"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.411, 0.581, "Warden Thelwater", "Travel to Stormwind City."),
            },
        },
        {
            id = "accept-391-the-stockade-riots",
            kind = "accept",
            priority = 25,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Accept The Stockade Riots from Warden Thelwater.",
            dependsOn = { "turnin-389-bazil-thredd" },
            complete = QuestState(391, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.411, 0.581, "Warden Thelwater", "Travel to Stormwind City."),
            },
        },
        {
            id = "accept-387-quell-the-uprising",
            kind = "accept",
            priority = 26,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Accept Quell The Uprising from Warden Thelwater.",
            complete = QuestState(387, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.411, 0.581, "Warden Thelwater", "Travel to Stormwind City."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 27,
            conditions = { level = { min = 25 } },
            text = "Enter Stockade with your group.",
            dependsOn = { "accept-303-the-dark-iron-war", "accept-378-the-fury-runs-deep", "accept-386-what-comes-around", "accept-377-crime-and-punishment", "accept-388-the-color-of-blood", "accept-373-the-unsent-letter", "accept-389-bazil-thredd", "accept-391-the-stockade-riots", "accept-387-quell-the-uprising" },
            persistCompletion = true,
            complete = { instance = 34 },
        },
        {
            id = "objective-386-1-head-of-targorr",
            kind = "objective",
            priority = 29,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill Targorr the Dormant and loot his head.",
            dependsOn = { "accept-386-what-comes-around" },
            complete = QuestState(386, "complete"),
            useClientPin = true,
        },
        {
            id = "objective-378-1-head-of-deepfury",
            kind = "objective",
            priority = 31,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } } } },
            text = "Kill Kam Deepfury and loot the Head of Deepfury.",
            dependsOn = { "accept-378-the-fury-runs-deep" },
            complete = QuestState(378, "complete"),
            useClientPin = true,
        },
        {
            id = "objective-391-1-head-of-bazil-thredd",
            kind = "objective",
            priority = 34,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill Bazil Thredd and loot his head.",
            dependsOn = { "accept-391-the-stockade-riots" },
            complete = QuestState(391, "complete"),
            useClientPin = true,
        },
        {
            id = "objective-377-1-hand-of-dextren-ward",
            kind = "objective",
            priority = 37,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill Dextren Ward and loot his hand.",
            dependsOn = { "accept-377-crime-and-punishment" },
            complete = QuestState(377, "complete"),
            useClientPin = true,
        },
        {
            id = "objective-387-1-defias-prisoner",
            kind = "objective",
            priority = 38,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill 10 Defias Prisoner.",
            dependsOn = { "accept-387-quell-the-uprising" },
            complete = QuestObjective(387, 1, "Defias Prisoner"),
            useClientPin = true,
        },
        {
            id = "objective-387-2-defias-convict",
            kind = "objective",
            priority = 39,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill 8 Defias Convict.",
            dependsOn = { "accept-387-quell-the-uprising" },
            complete = QuestObjective(387, 2, "Defias Convict"),
            useClientPin = true,
        },
        {
            id = "objective-387-3-defias-insurgent",
            kind = "objective",
            priority = 40,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill 8 Defias Insurgent.",
            dependsOn = { "accept-387-quell-the-uprising" },
            complete = QuestObjective(387, 3, "Defias Insurgent"),
            useClientPin = true,
        },
        {
            id = "objective-388-1-red-wool-bandana",
            kind = "objective",
            priority = 42,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Kill Defias prisoners in The Stockade until you loot 10 Red Wool Bandana.",
            dependsOn = { "accept-388-the-color-of-blood" },
            complete = QuestState(388, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-391-the-stockade-riots",
            kind = "turnin",
            priority = 43,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Turn in The Stockade Riots to Warden Thelwater.",
            dependsOn = { "objective-391-1-head-of-bazil-thredd" },
            complete = QuestState(391, "completed"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.411, 0.581, "Warden Thelwater", "Travel to Stormwind City."),
            },
        },
        {
            id = "turnin-387-quell-the-uprising",
            kind = "turnin",
            priority = 44,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Turn in Quell The Uprising to Warden Thelwater.",
            dependsOn = { "objective-387-1-defias-prisoner", "objective-387-2-defias-convict", "objective-387-3-defias-insurgent" },
            complete = QuestState(387, "completed"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.411, 0.581, "Warden Thelwater", "Travel to Stormwind City."),
            },
        },
        {
            id = "turnin-388-the-color-of-blood",
            kind = "turnin",
            priority = 45,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Turn in The Color of Blood to Nikova Raskol.",
            dependsOn = { "objective-388-1-red-wool-bandana" },
            complete = QuestState(388, "completed"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.734, 0.507, "Nikova Raskol", "Travel to Stormwind City."),
            },
        },
        {
            id = "turnin-377-crime-and-punishment",
            kind = "turnin",
            priority = 46,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Turn in Crime and Punishment to Councilman Millstipe.",
            dependsOn = { "objective-377-1-hand-of-dextren-ward" },
            complete = QuestState(377, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.719, 0.478, "Councilman Millstipe", "Travel to Duskwood."),
            },
        },
        {
            id = "turnin-386-what-comes-around",
            kind = "turnin",
            priority = 47,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            text = "Turn in What Comes Around to Guard Berton.",
            dependsOn = { "objective-386-1-head-of-targorr" },
            complete = QuestState(386, "completed"),
            route = {
                Point(MAP.REDRIDGE_MOUNTAINS, 0.263, 0.466, "Guard Berton", "Travel to Redridge Mountains."),
            },
        },
        {
            id = "turnin-378-the-fury-runs-deep",
            kind = "turnin",
            priority = 48,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } } } },
            text = "Turn in The Fury Runs Deep to Motley Garmason.",
            dependsOn = { "objective-378-1-head-of-deepfury" },
            complete = QuestState(378, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.497, 0.182, "Motley Garmason", "Travel to Wetlands."),
            },
        },
    },
})
