local _, ns = ...

-- Alliance Era leveling route for the Burning Steppes, levels 55-56.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    BURNING_STEPPES = 1428,
    IRONFORGE = 1455,
    REDRIDGE = 1433,
    STORMWIND = 1453,
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
    id = "leveling-era-55-56-burning-steppes",
    title = "55-56 Burning Steppes (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 55 } },
        },
    },
    goals = {
        {
            id = "accept-3702-the-smoldering-ruins-of-thaurissan",
            kind = "accept",
            priority = 30,
            text = "Accept The Smoldering Ruins of Thaurissan from Royal Historian Archesonus in The High Seat.",
            complete = QuestState(3702, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.3843, 0.5522, "Royal Historian Archesonus",
                    "Travel to Royal Historian Archesonus."),
            },
        },
        {
            id = "objective-3702-the-smoldering-ruins-of-thaurissan",
            kind = "objective",
            priority = 40,
            text = "Speak to Royal Historian Archesonus to complete the quest in The High Seat.",
            dependsOn = { "accept-3702-the-smoldering-ruins-of-thaurissan" },
            complete = QuestState(3702, "complete"),
            route = {
                Point(MAP.IRONFORGE, 0.3837, 0.5520, "Royal Historian Archesonus",
                    "Travel to Royal Historian Archesonus."),
            },
        },
        {
            id = "turnin-3702-the-smoldering-ruins-of-thaurissan",
            kind = "turnin",
            priority = 50,
            text = "Turn in The Smoldering Ruins of Thaurissan to Royal Historian Archesonus in The High Seat.",
            dependsOn = { "objective-3702-the-smoldering-ruins-of-thaurissan" },
            complete = QuestState(3702, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.3837, 0.5520, "Royal Historian Archesonus",
                    "Travel to Royal Historian Archesonus."),
            },
        },
        {
            id = "accept-3701-the-smoldering-ruins-of-thaurissan",
            kind = "accept",
            priority = 60,
            text = "Accept The Smoldering Ruins of Thaurissan from Royal Historian Archesonus in The High Seat.",
            complete = QuestState(3701, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.3837, 0.5520, "Royal Historian Archesonus",
                    "Travel to Royal Historian Archesonus."),
            },
        },
        {
            id = "accept-4513-a-little-slime-goes-a-long-way",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 4512, state = "completed" } },
                },
            },
            text = "Accept A Little Slime Goes a Long Way from Laris Geardawdle in The Library.",
            complete = QuestState(4513, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7583, 0.2338, "Laris Geardawdle",
                    "Travel to Laris Geardawdle."),
            },
        },
        {
            id = "accept-4283-fifty-yep",
            kind = "accept",
            priority = 90,
            text = "Accept FIFTY! YEP! from Oralius in Morgan's Vigil.",
            complete = QuestState(4283, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8455, 0.6870, "Oralius",
                    "Travel to Oralius."),
            },
        },
        {
            id = "accept-3823-extinguish-the-firegut",
            kind = "accept",
            priority = 100,
            text = "Accept Extinguish the Firegut from Oralius in Morgan's Vigil.",
            complete = QuestState(3823, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8457, 0.6866, "Oralius",
                    "Travel to Oralius."),
            },
        },
        {
            id = "accept-4182-dragonkin-menace",
            kind = "accept",
            priority = 110,
            text = "Accept Dragonkin Menace from Helendis Riverhorn in Morgan's Vigil.",
            complete = QuestState(4182, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8582, 0.6895, "Helendis Riverhorn",
                    "Travel to Helendis Riverhorn."),
            },
        },
        {
            id = "accept-4726-broodling-essence",
            kind = "accept",
            priority = 120,
            text = "Accept Broodling Essence from Tinkee Steamboil in Flame Crest.",
            complete = QuestState(4726, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6514, 0.2383, "Tinkee Steamboil",
                    "Travel to Tinkee Steamboil."),
            },
        },
        {
            id = "accept-4296-tablet-of-the-seven",
            kind = "accept",
            priority = 130,
            text = "Accept Tablet of the Seven from Maxwort Uberglint in Flame Crest.",
            complete = QuestState(4296, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6517, 0.2392, "Maxwort Uberglint",
                    "Travel to Maxwort Uberglint."),
            },
        },
        {
            id = "objective-4726-broodling-essence",
            kind = "objective",
            priority = 140,
            text = "Use Unloaded Zapper on 8 Scalding Broodling before you kill them in Dreadmaul Rock.",
            dependsOn = { "accept-4726-broodling-essence" },
            complete = QuestState(4726, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.7849, 0.2751, "Scalding Broodling",
                    "Travel to Scalding Broodling."),
            },
        },
        {
            id = "accept-4023-a-taste-of-flame",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 4022, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept A Taste of Flame from Cyrus Therepentous in Slither Rock.",
            complete = QuestState(4023, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.9366, 0.3210, "Continue toward A Taste of Flame",
                    "Continue toward A Taste of Flame."),
                Point(MAP.BURNING_STEPPES, 0.9505, 0.3157, "Cyrus Therepentous",
                    "Travel to Cyrus Therepentous."),
            },
        },
        {
            id = "objective-4023-a-taste-of-flame",
            kind = "objective",
            priority = 170,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 4022, state = "activeOrCompleted" } } },
                },
            },
            text = "Speak to Cyrus Therepentous with Black Dragonflight Molt in Slither Rock.",
            dependsOn = { "accept-4023-a-taste-of-flame" },
            complete = QuestState(4023, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.9505, 0.3157, "Cyrus Therepentous",
                    "Travel to Cyrus Therepentous."),
            },
        },
        {
            id = "turnin-4023-a-taste-of-flame",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 4022, state = "activeOrCompleted" } } },
                },
            },
            text = "Turn in A Taste of Flame to Cyrus Therepentous in Slither Rock.",
            dependsOn = { "objective-4023-a-taste-of-flame" },
            complete = QuestState(4023, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.9505, 0.3157, "Cyrus Therepentous",
                    "Travel to Cyrus Therepentous."),
            },
        },
        {
            id = "objective-4182-dragonkin-menace",
            kind = "objective",
            priority = 190,
            text = "Kill the required Black Dragonkin in Terror Wing Path, you can complete this later if there's not enough to kill.",
            dependsOn = { "accept-4182-dragonkin-menace" },
            complete = QuestState(4182, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.7943, 0.2866, "Continue toward Dragonkin Menace",
                    "Continue toward Dragonkin Menace."),
                Point(MAP.BURNING_STEPPES, 0.9060, 0.3280, "Continue toward Dragonkin Menace",
                    "Continue toward Dragonkin Menace."),
                Point(MAP.BURNING_STEPPES, 0.9018, 0.4425, "Continue toward Dragonkin Menace",
                    "Continue toward Dragonkin Menace."),
                Point(MAP.BURNING_STEPPES, 0.9150, 0.5336, "Black Drake",
                    "Travel to Black Drake."),
            },
        },
        {
            id = "objective-3823-extinguish-the-firegut",
            kind = "objective",
            priority = 210,
            text = "Kill the required Firegut ogres in Dreadmaul Rock.",
            dependsOn = { "accept-3823-extinguish-the-firegut" },
            complete = QuestState(3823, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8520, 0.4389, "Continue toward Extinguish the Firegut",
                    "Continue toward Extinguish the Firegut."),
                Point(MAP.BURNING_STEPPES, 0.8230, 0.5346, "Continue toward Extinguish the Firegut",
                    "Continue toward Extinguish the Firegut."),
                Point(MAP.BURNING_STEPPES, 0.7661, 0.4841, "Continue toward Extinguish the Firegut",
                    "Continue toward Extinguish the Firegut."),
                Point(MAP.BURNING_STEPPES, 0.7572, 0.3823, "Continue toward Extinguish the Firegut",
                    "Continue toward Extinguish the Firegut."),
                Point(MAP.BURNING_STEPPES, 0.7835, 0.3898, "Continue toward Extinguish the Firegut",
                    "Continue toward Extinguish the Firegut."),
                Point(MAP.BURNING_STEPPES, 0.7999, 0.4334, "Firegut Brute",
                    "Travel to Firegut Brute."),
            },
        },
        {
            id = "objective-3701-the-smoldering-ruins-of-thaurissan",
            kind = "objective",
            priority = 230,
            text = "Collect 12 information from Thaurissan Relic in Ruins of Thaurissan.",
            dependsOn = { "accept-3701-the-smoldering-ruins-of-thaurissan" },
            complete = QuestState(3701, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6603, 0.4075, "Ruins of Thaurissan",
                    "Travel to Ruins of Thaurissan."),
            },
        },
        {
            id = "objective-4296-tablet-of-the-seven",
            kind = "objective",
            priority = 240,
            text = "Collect Tablet Transcript from the tablet in Ruins of Thaurissan.",
            dependsOn = { "accept-4296-tablet-of-the-seven" },
            complete = QuestState(4296, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.5403, 0.4069, "Ruins of Thaurissan",
                    "Travel to Ruins of Thaurissan."),
            },
        },
        {
            id = "turnin-4726-broodling-essence",
            kind = "turnin",
            priority = 260,
            text = "Turn in Broodling Essence to Tinkee Steamboil in Flame Crest.",
            dependsOn = { "objective-4726-broodling-essence" },
            complete = QuestState(4726, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6525, 0.2401, "Tinkee Steamboil",
                    "Travel to Tinkee Steamboil."),
            },
        },
        {
            id = "accept-4808-felnok-steelspring",
            kind = "accept",
            priority = 270,
            text = "Accept Felnok Steelspring from Tinkee Steamboil in Flame Crest.",
            complete = QuestState(4808, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6525, 0.2401, "Tinkee Steamboil",
                    "Travel to Tinkee Steamboil."),
            },
        },
        {
            id = "turnin-4296-tablet-of-the-seven",
            kind = "turnin",
            priority = 280,
            text = "Turn in Tablet of the Seven to Maxwort Uberglint in Flame Crest.",
            dependsOn = { "objective-4296-tablet-of-the-seven" },
            complete = QuestState(4296, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6515, 0.2391, "Maxwort Uberglint",
                    "Travel to Maxwort Uberglint."),
            },
        },
        {
            id = "turnin-3823-extinguish-the-firegut",
            kind = "turnin",
            priority = 300,
            text = "Turn in Extinguish the Firegut to Oralius in Morgan's Vigil.",
            dependsOn = { "objective-3823-extinguish-the-firegut" },
            complete = QuestState(3823, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8457, 0.6866, "Oralius",
                    "Travel to Oralius."),
            },
        },
        {
            id = "accept-3824-gor-tesh-the-brute-lord",
            kind = "accept",
            priority = 310,
            text = "Accept Gor'tesh the Brute Lord from Oralius in Morgan's Vigil.",
            complete = QuestState(3824, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8457, 0.6866, "Oralius",
                    "Travel to Oralius."),
            },
        },
        {
            id = "objective-3824-gor-tesh-the-brute-lord",
            kind = "objective",
            priority = 320,
            text = "Kill Gorlop and collect Gor'tesh's Lopped Off Head in Pillar of Ash.",
            dependsOn = { "accept-3824-gor-tesh-the-brute-lord" },
            complete = QuestState(3824, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.3935, 0.5536, "Gorlop",
                    "Travel to Gorlop."),
            },
        },
        {
            id = "objective-4283-fifty-yep",
            kind = "objective",
            priority = 330,
            text = "Kill Blackrock orc in the area and collect 50 Blackrock Medallion.",
            dependsOn = { "accept-4283-fifty-yep" },
            complete = QuestState(4283, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.4487, 0.5677, "Blackrock Soldier",
                    "Travel to Blackrock Soldier."),
            },
        },
        {
            id = "turnin-3824-gor-tesh-the-brute-lord",
            kind = "turnin",
            priority = 350,
            text = "Turn in Gor'tesh the Brute Lord to Oralius in Morgan's Vigil.",
            dependsOn = { "objective-3824-gor-tesh-the-brute-lord" },
            complete = QuestState(3824, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8454, 0.6869, "Oralius",
                    "Travel to Oralius."),
            },
        },
        {
            id = "accept-3825-ogre-head-on-a-stick-party",
            kind = "accept",
            priority = 360,
            text = "Accept Ogre Head On A Stick = Party from Oralius in Morgan's Vigil.",
            complete = QuestState(3825, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8454, 0.6869, "Oralius",
                    "Travel to Oralius."),
            },
        },
        {
            id = "turnin-4283-fifty-yep",
            kind = "turnin",
            priority = 370,
            text = "Turn in FIFTY! YEP! to Oralius in Morgan's Vigil.",
            dependsOn = { "objective-4283-fifty-yep" },
            complete = QuestState(4283, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8454, 0.6869, "Oralius",
                    "Travel to Oralius."),
            },
        },
        {
            id = "objective-3825-ogre-head-on-a-stick-party",
            kind = "objective",
            priority = 390,
            text = "Click on Soft Dirt Mound in Dreadmaul Rock.",
            dependsOn = { "accept-3825-ogre-head-on-a-stick-party" },
            complete = QuestState(3825, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.7534, 0.3861, "Continue toward Ogre Head On A Stick = Party",
                    "Continue toward Ogre Head On A Stick = Party."),
                Point(MAP.BURNING_STEPPES, 0.7769, 0.3825, "Continue toward Ogre Head On A Stick = Party",
                    "Continue toward Ogre Head On A Stick = Party."),
                Point(MAP.BURNING_STEPPES, 0.7960, 0.4084, "Continue toward Ogre Head On A Stick = Party",
                    "Continue toward Ogre Head On A Stick = Party."),
                Point(MAP.BURNING_STEPPES, 0.8098, 0.4672, "Dreadmaul Rock",
                    "Travel to Dreadmaul Rock."),
            },
        },
        {
            id = "objective-4182-dragonkin-menace-2",
            kind = "objective",
            priority = 400,
            text = "Kill the required Black Dragonkin in Terror Wing Path, you can complete this later if there's not enough to kill.",
            dependsOn = { "accept-4182-dragonkin-menace" },
            complete = QuestState(4182, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.9116, 0.3450, "Continue toward Dragonkin Menace",
                    "Continue toward Dragonkin Menace."),
                Point(MAP.BURNING_STEPPES, 0.9030, 0.4643, "Continue toward Dragonkin Menace",
                    "Continue toward Dragonkin Menace."),
                Point(MAP.BURNING_STEPPES, 0.9147, 0.5508, "Black Drake",
                    "Travel to Black Drake."),
            },
        },
        {
            id = "turnin-3825-ogre-head-on-a-stick-party",
            kind = "turnin",
            priority = 420,
            text = "Turn in Ogre Head On A Stick = Party to Oralius in Morgan's Vigil.",
            dependsOn = { "objective-3825-ogre-head-on-a-stick-party" },
            complete = QuestState(3825, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8455, 0.6870, "Oralius",
                    "Travel to Oralius."),
            },
        },
        {
            id = "turnin-4182-dragonkin-menace",
            kind = "turnin",
            priority = 430,
            text = "Turn in Dragonkin Menace to Helendis Riverhorn in Morgan's Vigil.",
            dependsOn = { "objective-4182-dragonkin-menace", "objective-4182-dragonkin-menace-2" },
            complete = QuestState(4182, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8581, 0.6894, "Helendis Riverhorn",
                    "Travel to Helendis Riverhorn."),
            },
        },
        {
            id = "accept-4183-the-true-masters",
            kind = "accept",
            priority = 440,
            text = "Accept The True Masters from Helendis Riverhorn in Morgan's Vigil.",
            complete = QuestState(4183, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8581, 0.6894, "Helendis Riverhorn",
                    "Travel to Helendis Riverhorn."),
            },
        },
        {
            id = "turnin-4183-the-true-masters",
            kind = "turnin",
            priority = 460,
            text = "Turn in The True Masters to Magistrate Solomon in Lakeshire.",
            dependsOn = { "accept-4183-the-true-masters" },
            complete = QuestState(4183, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2999, 0.4442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "accept-4184-the-true-masters",
            kind = "accept",
            priority = 470,
            text = "Accept The True Masters from Magistrate Solomon in Lakeshire.",
            complete = QuestState(4184, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2999, 0.4442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "turnin-4184-the-true-masters",
            kind = "turnin",
            priority = 490,
            text = "Turn in The True Masters to Highlord Bolvar Fordragon in Stormwind Keep.",
            dependsOn = { "accept-4184-the-true-masters" },
            complete = QuestState(4184, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7815, 0.1807, "Highlord Bolvar Fordragon",
                    "Travel to Highlord Bolvar Fordragon."),
            },
        },
        {
            id = "accept-4185-the-true-masters",
            kind = "accept",
            priority = 500,
            text = "Accept The True Masters from Highlord Bolvar Fordragon in Stormwind Keep.",
            complete = QuestState(4185, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7815, 0.1807, "Highlord Bolvar Fordragon",
                    "Travel to Highlord Bolvar Fordragon."),
            },
        },
        {
            id = "objective-4185-the-true-masters",
            kind = "objective",
            priority = 510,
            text = "Speak to Lady Katrana Prestor to complete the quest in Stormwind Keep.",
            dependsOn = { "accept-4185-the-true-masters" },
            complete = QuestState(4185, "complete"),
            route = {
                Point(MAP.STORMWIND, 0.7803, 0.1779, "Lady Katrana Prestor",
                    "Travel to Lady Katrana Prestor."),
            },
        },
        {
            id = "turnin-4185-the-true-masters",
            kind = "turnin",
            priority = 520,
            text = "Turn in The True Masters to Highlord Bolvar Fordragon in Stormwind Keep.",
            dependsOn = { "objective-4185-the-true-masters" },
            complete = QuestState(4185, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7818, 0.1813, "Highlord Bolvar Fordragon",
                    "Travel to Highlord Bolvar Fordragon."),
            },
        },
        {
            id = "accept-4186-the-true-masters",
            kind = "accept",
            priority = 530,
            text = "Accept The True Masters from Highlord Bolvar Fordragon in Stormwind Keep.",
            complete = QuestState(4186, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7818, 0.1813, "Highlord Bolvar Fordragon",
                    "Travel to Highlord Bolvar Fordragon."),
            },
        },
        {
            id = "turnin-4186-the-true-masters",
            kind = "turnin",
            priority = 550,
            text = "Turn in The True Masters to Magistrate Solomon in Lakeshire.",
            dependsOn = { "accept-4186-the-true-masters" },
            complete = QuestState(4186, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2998, 0.4442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "accept-4223-the-true-masters",
            kind = "accept",
            priority = 560,
            text = "Accept The True Masters from Magistrate Solomon in Lakeshire.",
            complete = QuestState(4223, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2998, 0.4442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "turnin-4223-the-true-masters",
            kind = "turnin",
            priority = 580,
            text = "Turn in The True Masters to Magistrate Solomon in Morgan's Vigil.",
            dependsOn = { "accept-4223-the-true-masters" },
            complete = QuestState(4223, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8475, 0.6901, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "accept-4224-the-true-masters",
            kind = "accept",
            priority = 590,
            text = "Accept The True Masters from Marshal Maxwell in Morgan's Vigil.",
            complete = QuestState(4224, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8475, 0.6901, "Marshal Maxwell",
                    "Travel to Marshal Maxwell."),
            },
        },
        {
            id = "objective-4224-the-true-masters",
            kind = "objective",
            priority = 610,
            text = "Speak to Ragged John to complete the quest in Flame Crest.",
            dependsOn = { "accept-4224-the-true-masters" },
            complete = QuestState(4224, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6502, 0.2373, "Ragged John",
                    "Travel to Ragged John."),
            },
        },
        {
            id = "turnin-4224-the-true-masters",
            kind = "turnin",
            priority = 630,
            text = "Turn in The True Masters to Marshal Maxwell in Morgan's Vigil.",
            dependsOn = { "objective-4224-the-true-masters" },
            complete = QuestState(4224, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.8473, 0.6903, "Marshal Maxwell",
                    "Travel to Marshal Maxwell."),
            },
        },
        {
            id = "turnin-3701-the-smoldering-ruins-of-thaurissan",
            kind = "turnin",
            priority = 650,
            text = "Turn in The Smoldering Ruins of Thaurissan to Royal Historian Archesonus in The High Seat.",
            dependsOn = { "objective-3701-the-smoldering-ruins-of-thaurissan" },
            complete = QuestState(3701, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.3834, 0.5533, "Royal Historian Archesonus",
                    "Travel to Royal Historian Archesonus."),
            },
        },
        {
            id = "accept-1019-the-new-frontier",
            kind = "accept",
            priority = 660,
            text = "Accept The New Frontier from Courier Hammerfall in Ironforge.",
            complete = QuestState(1019, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.4671, 0.6525, "Courier Hammerfall",
                    "Travel to Courier Hammerfall."),
            },
        },
        {
            id = "accept-5090-a-call-to-arms-the-plaguelands",
            kind = "accept",
            priority = 670,
            text = "Accept A Call to Arms: The Plaguelands! from Courier Hammerfall in Ironforge.",
            complete = QuestState(5090, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.4671, 0.6525, "Courier Hammerfall",
                    "Travel to Courier Hammerfall."),
            },
        },
    },
})
