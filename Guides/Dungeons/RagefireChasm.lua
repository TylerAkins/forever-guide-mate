local _, ns = ...

-- Public Classic baseline:
-- https://www.wowhead.com/classic/guide/classic-wow-ragefire-chasm-dungeon-quests
-- https://classicdb.ch/?quests=2.2437
-- Coordinates remain intentionally isolated here until validated in Forever.

local MAP = {
    DUROTAR = 1411,
    MULGORE = 1412,
    BARRENS = 1413,
    TIRISFAL = 1420,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
    UNDERCITY = 1458,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function Point(mapID, x, y, label, offMapText, complete, flightTo)
    return {
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
        complete = complete,
        flightTo = flightTo,
    }
end

ns:RegisterGuide({
    id = "dungeons-ragefire-chasm-horde",
    title = "Ragefire Chasm",
    category = "Dungeon Quest Guides",
    revision = 2,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 9 } },
        },
    },
    goals = {
        {
            id = "accept-searching-satchel",
            kind = "accept",
            priority = 10,
            text = "Accept Searching for the Lost Satchel from Rahauro on Elder Rise.",
            taxiDestination = "Thunder Bluff",
            complete = QuestState(5722, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.515, 0.303, "Take the flight path to Thunder Bluff.",
                    "Take the flight path to Thunder Bluff.",
                    { map = { MAP.ORGRIMMAR, MAP.MULGORE, MAP.THUNDER_BLUFF } },
                    "Thunder Bluff"),
                Point(MAP.ORGRIMMAR, 0.451, 0.639, "Take the flight path to Thunder Bluff.",
                    "Take the flight path to Thunder Bluff.",
                    { map = { MAP.MULGORE, MAP.THUNDER_BLUFF } },
                    "Thunder Bluff"),
                -- Southwest elevator. Wowhead pins it at 32, 65 on the Thunder Bluff map.
                -- Classic zone transforms put that shaft at about 36.3, 30.1 in Mulgore.
                Point(MAP.MULGORE, 0.363, 0.301, "Ride the southwest elevator up to Thunder Bluff.",
                    "Travel through Mulgore and take the elevator up to Thunder Bluff.",
                    { map = MAP.THUNDER_BLUFF }),
                Point(MAP.THUNDER_BLUFF, 0.706, 0.314, "Rahauro on Elder Rise",
                    "Travel to Thunder Bluff and climb Elder Rise."),
            },
        },
        {
            id = "accept-testing-strength",
            kind = "accept",
            priority = 11,
            text = "Accept Testing an Enemy's Strength from Rahauro.",
            complete = QuestState(5723, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.706, 0.314, "Rahauro on Elder Rise",
                    "Travel to Thunder Bluff and climb Elder Rise."),
            },
        },
        {
            id = "accept-power-destroy",
            kind = "accept",
            priority = 20,
            text = "Accept The Power to Destroy... from Varimathras in the Undercity.",
            complete = QuestState(5725, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.508, 0.136, "Board the south zeppelin to Tirisfal Glades.",
                    "Use the south platform east of Orgrimmar. The north zeppelin goes to Stranglethorn.",
                    { map = { MAP.TIRISFAL, MAP.UNDERCITY } }),
                Point(MAP.TIRISFAL, 0.607, 0.586, "Leave the zeppelin and enter the Undercity.",
                    "Take the Orgrimmar zeppelin to Tirisfal Glades.",
                    { map = MAP.UNDERCITY }),
                Point(MAP.UNDERCITY, 0.562, 0.918, "Varimathras in the Royal Quarter",
                    "Enter the Undercity and go to the Royal Quarter."),
            },
        },
        {
            id = "accept-hidden-enemies-1",
            kind = "accept",
            priority = 30,
            text = "Accept Hidden Enemies from Thrall in Orgrimmar.",
            complete = QuestState(5726, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.320, 0.378, "Thrall in the Valley of Wisdom",
                    "Travel to Orgrimmar and enter the Valley of Wisdom."),
            },
        },
        {
            id = "recover-lieutenants-insignia",
            kind = "objective",
            priority = 31,
            text = "Recover a Lieutenant's Insignia from the Burning Blade in Skull Rock.",
            dependsOn = { "accept-hidden-enemies-1" },
            complete = QuestState(5726, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.549, 0.095, "Skull Rock east of Orgrimmar",
                    "Leave Orgrimmar and travel east to Skull Rock."),
            },
        },
        {
            id = "turnin-hidden-enemies-1",
            kind = "turnin",
            priority = 32,
            text = "Return the Lieutenant's Insignia to Thrall.",
            dependsOn = { "recover-lieutenants-insignia" },
            complete = QuestState(5726, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.320, 0.378, "Thrall in the Valley of Wisdom",
                    "Return to Thrall in Orgrimmar."),
            },
        },
        {
            id = "accept-hidden-enemies-2",
            kind = "accept",
            priority = 33,
            text = "Accept Hidden Enemies from Thrall.",
            dependsOn = { "turnin-hidden-enemies-1" },
            complete = QuestState(5727, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.320, 0.378, "Thrall in the Valley of Wisdom"),
            },
        },
        {
            id = "gauge-neeru",
            kind = "gossip",
            priority = 34,
            text = "Show the insignia to Neeru Fireblade and exhaust his dialogue.",
            dependsOn = { "accept-hidden-enemies-2" },
            complete = QuestState(5727, "complete"),
            route = {
                Point(MAP.ORGRIMMAR, 0.496, 0.506, "Neeru Fireblade in the Cleft of Shadow"),
            },
        },
        {
            id = "turnin-hidden-enemies-2",
            kind = "turnin",
            priority = 35,
            text = "Report Neeru's reaction to Thrall.",
            dependsOn = { "gauge-neeru" },
            complete = QuestState(5727, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.320, 0.378, "Thrall in the Valley of Wisdom"),
            },
        },
        {
            id = "accept-hidden-enemies-3",
            kind = "accept",
            priority = 36,
            text = "Accept the dungeon step of Hidden Enemies from Thrall.",
            dependsOn = { "turnin-hidden-enemies-2" },
            complete = QuestState(5728, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.320, 0.378, "Thrall in the Valley of Wisdom"),
            },
        },
        {
            id = "accept-slaying-beast",
            kind = "accept",
            priority = 37,
            text = "Accept Slaying the Beast from Neeru Fireblade.",
            dependsOn = { "turnin-hidden-enemies-2" },
            complete = QuestState(5761, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.496, 0.506, "Neeru Fireblade in the Cleft of Shadow"),
            },
        },
        {
            id = "enter-ragefire-chasm",
            kind = "travel",
            priority = 40,
            text = "Enter Ragefire Chasm from the Cleft of Shadow.",
            dependsOn = {
                "accept-searching-satchel",
                "accept-testing-strength",
                "accept-power-destroy",
                "accept-hidden-enemies-3",
                "accept-slaying-beast",
            },
            complete = { instance = 389 },
            persistCompletion = true,
            route = {
                Point(MAP.ORGRIMMAR, 0.523, 0.493, "Ragefire Chasm entrance in the Cleft of Shadow",
                    "Travel to Orgrimmar and enter the Cleft of Shadow."),
            },
        },
        {
            id = "complete-testing-strength",
            kind = "objective",
            priority = 41,
            text = "Defeat 8 Ragefire Troggs and 8 Ragefire Shamans.",
            dependsOn = { "enter-ragefire-chasm" },
            complete = QuestState(5723, "complete"),
        },
        {
            id = "find-maur-grimtotem",
            kind = "objective",
            priority = 42,
            text = "Find Maur Grimtotem in the side cave beyond the first trogg room.",
            dependsOn = { "enter-ragefire-chasm" },
            complete = QuestState(5722, "complete"),
        },
        {
            id = "turnin-searching-satchel",
            kind = "turnin",
            priority = 43,
            text = "Turn in Searching for the Lost Satchel to Maur Grimtotem inside RFC.",
            dependsOn = { "find-maur-grimtotem" },
            complete = QuestState(5722, "completed"),
        },
        {
            id = "accept-returning-satchel",
            kind = "accept",
            priority = 44,
            text = "Accept Returning the Lost Satchel from Maur Grimtotem.",
            dependsOn = { "turnin-searching-satchel" },
            complete = QuestState(5724, "activeOrCompleted"),
        },
        {
            id = "complete-slaying-beast",
            kind = "objective",
            priority = 45,
            text = "Slay Taragaman the Hungerer and loot his heart.",
            dependsOn = { "enter-ragefire-chasm" },
            complete = QuestState(5761, "complete"),
        },
        {
            id = "complete-power-destroy",
            kind = "objective",
            priority = 46,
            text = "Recover Spells of Shadow and Incantations from the Nether from Searing Blade cultists.",
            dependsOn = { "enter-ragefire-chasm" },
            complete = QuestState(5725, "complete"),
        },
        {
            id = "complete-hidden-enemies-3",
            kind = "objective",
            priority = 47,
            text = "Slay Bazzalan and Jergosh the Invoker.",
            dependsOn = { "enter-ragefire-chasm" },
            complete = QuestState(5728, "complete"),
        },
        {
            id = "turnin-slaying-beast",
            kind = "turnin",
            priority = 50,
            text = "Return Taragaman's heart to Neeru Fireblade.",
            dependsOn = { "complete-slaying-beast" },
            complete = QuestState(5761, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.496, 0.506, "Neeru Fireblade in the Cleft of Shadow"),
            },
        },
        {
            id = "turnin-hidden-enemies-3",
            kind = "turnin",
            priority = 51,
            text = "Report the defeat of Bazzalan and Jergosh to Thrall.",
            dependsOn = { "complete-hidden-enemies-3" },
            complete = QuestState(5728, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.320, 0.378, "Thrall in the Valley of Wisdom"),
            },
        },
        {
            id = "accept-hidden-enemies-4",
            kind = "accept",
            priority = 52,
            text = "Accept Hidden Enemies from Thrall.",
            dependsOn = { "turnin-hidden-enemies-3" },
            complete = QuestState(5729, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.320, 0.378, "Thrall in the Valley of Wisdom"),
            },
        },
        {
            id = "turnin-hidden-enemies-4",
            kind = "turnin",
            priority = 53,
            text = "Speak with Neeru Fireblade about the Searing Blade leaders.",
            dependsOn = { "accept-hidden-enemies-4" },
            complete = QuestState(5729, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.496, 0.506, "Neeru Fireblade in the Cleft of Shadow"),
            },
        },
        {
            id = "accept-hidden-enemies-5",
            kind = "accept",
            priority = 54,
            text = "Accept Hidden Enemies from Neeru Fireblade.",
            dependsOn = { "turnin-hidden-enemies-4" },
            complete = QuestState(5730, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.496, 0.506, "Neeru Fireblade in the Cleft of Shadow"),
            },
        },
        {
            id = "turnin-hidden-enemies-5",
            kind = "turnin",
            priority = 55,
            text = "Deliver Neeru's message to Thrall and finish Hidden Enemies.",
            dependsOn = { "accept-hidden-enemies-5" },
            complete = QuestState(5730, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.320, 0.378, "Thrall in the Valley of Wisdom"),
            },
        },
        {
            id = "turnin-testing-strength",
            kind = "turnin",
            priority = 60,
            text = "Return to Rahauro in Thunder Bluff to turn in Testing an Enemy's Strength.",
            dependsOn = { "complete-testing-strength" },
            complete = QuestState(5723, "completed"),
            route = {
                Point(MAP.MULGORE, 0.363, 0.301, "Ride the southwest elevator up to Thunder Bluff.",
                    "Travel through Mulgore and take the elevator up to Thunder Bluff.",
                    { map = MAP.THUNDER_BLUFF }),
                Point(MAP.THUNDER_BLUFF, 0.706, 0.314, "Rahauro on Elder Rise",
                    "Travel to Thunder Bluff and climb Elder Rise."),
            },
        },
        {
            id = "turnin-returning-satchel",
            kind = "turnin",
            priority = 61,
            text = "Return the Grimtotem Satchel to Rahauro in Thunder Bluff.",
            dependsOn = { "accept-returning-satchel" },
            complete = QuestState(5724, "completed"),
            route = {
                Point(MAP.MULGORE, 0.363, 0.301, "Ride the southwest elevator up to Thunder Bluff.",
                    "Travel through Mulgore and take the elevator up to Thunder Bluff.",
                    { map = MAP.THUNDER_BLUFF }),
                Point(MAP.THUNDER_BLUFF, 0.706, 0.314, "Rahauro on Elder Rise",
                    "Travel to Thunder Bluff and climb Elder Rise."),
            },
        },
        {
            id = "turnin-power-destroy",
            kind = "turnin",
            priority = 70,
            text = "Return both recovered books to Varimathras in the Undercity.",
            dependsOn = { "complete-power-destroy" },
            complete = QuestState(5725, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.508, 0.136, "Board the south zeppelin to Tirisfal Glades.",
                    "Use the south platform east of Orgrimmar. The north zeppelin goes to Stranglethorn.",
                    { map = { MAP.TIRISFAL, MAP.UNDERCITY } }),
                Point(MAP.TIRISFAL, 0.607, 0.586, "Enter the Undercity.",
                    "Take the Orgrimmar zeppelin to Tirisfal Glades.",
                    { map = MAP.UNDERCITY }),
                Point(MAP.UNDERCITY, 0.562, 0.918, "Varimathras in the Royal Quarter"),
            },
        },
    },
})
