local _, ns = ...

-- Alliance Era leveling route for the Wetlands, levels 30-31.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    WETLANDS = 1437,
    IRONFORGE = 1455,
    BARRENS = 1413,
    HILLSBRAD = 1424,
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
    id = "leveling-era-30-31-wetlands",
    title = "30-31 Wetlands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 30 } },
        },
    },
    goals = {
        {
            id = "accept-1798-seeking-strahad",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Seeking Strahad from Lago Blackwrench in Ironforge.",
            complete = QuestState(1798, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.4720, 0.1090, "Lago Blackwrench",
                    "Travel to Lago Blackwrench."),
            },
        },
        {
            id = "accept-1718-the-islander",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept The Islander from Kelv Sternhammer in Ironforge.",
            complete = QuestState(1718, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7150, 0.9120, "Kelv Sternhammer",
                    "Travel to Kelv Sternhammer."),
            },
        },
        {
            id = "travel-1719-fray-island",
            kind = "travel",
            priority = 30,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Travel to Fray Island.",
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4910, "Fray Island",
                    "Travel to Fray Island."),
            },
        },
        {
            id = "turnin-1718-the-islander",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in The Islander to Klannoc Macleod in Fray Island.",
            dependsOn = { "accept-1718-the-islander" },
            complete = QuestState(1718, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4910, "Klannoc Macleod",
                    "Travel to Klannoc Macleod."),
            },
        },
        {
            id = "accept-1719-the-affray",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept The Affray from Klannoc Macleod in Fray Island.",
            complete = QuestState(1719, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4910, "Klannoc Macleod",
                    "Travel to Klannoc Macleod."),
            },
        },
        {
            id = "objective-1719-the-affray",
            kind = "objective",
            priority = 60,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Kill the series of Mobs, bandage and eat in between Mobs. As for Big Will, you're given the privilege to attack him first because he's neutral, so just run back and Charge then use your Retaliation for Big Will.",
            dependsOn = { "accept-1719-the-affray" },
            complete = QuestState(1719, "complete"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4870, "Big Will",
                    "Travel to Big Will."),
            },
        },
        {
            id = "turnin-1719-the-affray",
            kind = "turnin",
            priority = 70,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in The Affray to Klannoc Macleod in Fray Island.",
            dependsOn = { "objective-1719-the-affray" },
            complete = QuestState(1719, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4910, "Klannoc Macleod",
                    "Travel to Klannoc Macleod."),
            },
        },
        {
            id = "turnin-1798-seeking-strahad",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Seeking Strahad to Strahad Farsan in Ratchet.",
            dependsOn = { "accept-1798-seeking-strahad" },
            complete = QuestState(1798, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Strahad Farsan",
                    "Travel to Strahad Farsan."),
            },
        },
        {
            id = "accept-1758-tome-of-the-cabal",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Tome of the Cabal from Strahad Farsan in Ratchet.",
            complete = QuestState(1758, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Strahad Farsan",
                    "Travel to Strahad Farsan."),
            },
        },
        {
            id = "turnin-1758-tome-of-the-cabal",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Tome of the Cabal to Krom Stoutarm in Ironforge.",
            dependsOn = { "accept-1758-tome-of-the-cabal" },
            complete = QuestState(1758, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7430, 0.0940, "Krom Stoutarm",
                    "Travel to Krom Stoutarm."),
            },
        },
        {
            id = "accept-1802-tome-of-the-cabal",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Tome of the Cabal from Krom Stoutarm in Ironforge.",
            complete = QuestState(1802, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7430, 0.0940, "Krom Stoutarm",
                    "Travel to Krom Stoutarm."),
            },
        },
        {
            id = "objective-1802-tome-of-the-cabal",
            kind = "objective",
            priority = 120,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Collect the Moldy Tome.",
            dependsOn = { "accept-1802-tome-of-the-cabal" },
            complete = QuestState(1802, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.2770, 0.7280, "Tome of the Cabal",
                    "Travel to Tome of the Cabal."),
            },
        },
        {
            id = "turnin-1802-tome-of-the-cabal",
            kind = "turnin",
            priority = 130,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Tome of the Cabal to Krom Stoutarm in Ironforge.",
            dependsOn = { "objective-1802-tome-of-the-cabal" },
            complete = QuestState(1802, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7430, 0.0980, "Krom Stoutarm",
                    "Travel to Krom Stoutarm."),
            },
        },
        {
            id = "accept-1804-tome-of-the-cabal",
            kind = "accept",
            priority = 140,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Tome of the Cabal from Krom Stoutarm in Ironforge.",
            complete = QuestState(1804, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7430, 0.0980, "Krom Stoutarm",
                    "Travel to Krom Stoutarm."),
            },
        },
        {
            id = "objective-1804-tome-of-the-cabal",
            kind = "objective",
            priority = 150,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Kill Dragonmaw Bonewarder and Dragonmaw Shadowwarder to collect 3 Rod of Channeling.",
            dependsOn = { "accept-1804-tome-of-the-cabal" },
            complete = QuestState(1804, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.4900, 0.4600, "Dragonmaw Bonewarder",
                    "Travel to Dragonmaw Bonewarder."),
            },
        },
        {
            id = "turnin-1804-tome-of-the-cabal",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Tome of the Cabal to Strahad Farsan in Ratchet.",
            dependsOn = { "objective-1804-tome-of-the-cabal" },
            complete = QuestState(1804, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Strahad Farsan",
                    "Travel to Strahad Farsan."),
            },
        },
        {
            id = "accept-1795-the-binding",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept The Binding from Strahad Farsan in Ratchet.",
            complete = QuestState(1795, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Strahad Farsan",
                    "Travel to Strahad Farsan."),
            },
        },
        {
            id = "objective-1795-the-binding",
            kind = "objective",
            priority = 180,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Using the Tome of the Cabal, summon and subdue a Summoned Felhunter.",
            dependsOn = { "accept-1795-the-binding" },
            complete = QuestState(1795, "complete"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3530, "Summoned Felhunter",
                    "Travel to Summoned Felhunter."),
            },
        },
        {
            id = "turnin-1795-the-binding",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in The Binding to Strahad Farsan in Ratchet.",
            dependsOn = { "objective-1795-the-binding" },
            complete = QuestState(1795, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3550, "Strahad Farsan",
                    "Travel to Strahad Farsan."),
            },
        },
        {
            id = "travel-288-deepwater-tavern",
            kind = "travel",
            priority = 200,
            text = "Travel to Deepwater Tavern.",
            route = {
                Point(MAP.WETLANDS, 0.1068, 0.6092, "Deepwater Tavern",
                    "Travel to Deepwater Tavern."),
            },
        },
        {
            id = "note-288-deepwater-tavern",
            kind = "note",
            priority = 210,
            text = "Set your hearth in Deepwater Tavern with Innkeeper Helbrek.",
            route = {
                Point(MAP.WETLANDS, 0.1070, 0.6090, "Innkeeper Helbrek",
                    "Travel to Innkeeper Helbrek."),
            },
        },
        {
            id = "accept-288-the-third-fleet",
            kind = "accept",
            priority = 220,
            text = "Accept The Third Fleet from First Mate Fitzsimmons in Menethil Harbor.",
            complete = QuestState(288, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1088, 0.5964, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "objective-288-flagon-of-dwarven-mead",
            kind = "objective",
            priority = 230,
            text = "Buy Flagon of Dwarven Mead from Innkeeper Helbrek in Deepwater Tavern.",
            dependsOn = { "accept-288-the-third-fleet" },
            complete = QuestState(288, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.1069, 0.6089, "Innkeeper Helbrek",
                    "Travel to Innkeeper Helbrek."),
            },
        },
        {
            id = "turnin-288-the-third-fleet",
            kind = "turnin",
            priority = 240,
            text = "Turn in The Third Fleet to First Mate Fitzsimmons in Menethil Harbor.",
            dependsOn = { "objective-288-flagon-of-dwarven-mead" },
            complete = QuestState(288, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1088, 0.5964, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "accept-289-the-cursed-crew",
            kind = "accept",
            priority = 250,
            text = "Accept The Cursed Crew from First Mate Fitzsimmons in Menethil Harbor.",
            complete = QuestState(289, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1091, 0.5953, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "travel-289-the-lost-fleet",
            kind = "travel",
            priority = 260,
            text = "Travel to The Lost Fleet.",
            route = {
                Point(MAP.WETLANDS, 0.1391, 0.3103, "The Lost Fleet",
                    "Travel to The Lost Fleet."),
            },
        },
        {
            id = "objective-289-3-first-mate-snellig",
            kind = "objective",
            priority = 270,
            text = "Collect Snellig's Snuffbox in The Lost Fleet.",
            dependsOn = { "accept-289-the-cursed-crew" },
            complete = QuestObjective(289, 3),
            route = {
                Point(MAP.WETLANDS, 0.1391, 0.3103, "First Mate Snellig",
                    "Travel to First Mate Snellig."),
            },
        },
        {
            id = "objective-289-the-cursed-crew",
            kind = "objective",
            priority = 280,
            text = "Kill 13 Cursed Sailor and 5 Cursed Marine which are found around the shipwreck.",
            dependsOn = { "accept-289-the-cursed-crew" },
            complete = QuestState(289, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.1300, 0.2700, "Continue toward The Cursed Crew",
                    "Continue toward The Cursed Crew."),
                Point(MAP.WETLANDS, 0.1400, 0.3000, "Cursed Sailor",
                    "Travel to Cursed Sailor."),
            },
        },
        {
            id = "turnin-289-the-cursed-crew",
            kind = "turnin",
            priority = 290,
            text = "Turn in The Cursed Crew to First Mate Fitzsimmons in Menethil Harbor.",
            dependsOn = { "objective-289-3-first-mate-snellig", "objective-289-the-cursed-crew" },
            complete = QuestState(289, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1091, 0.5953, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "accept-290-lifting-the-curse",
            kind = "accept",
            priority = 300,
            text = "Accept Lifting the Curse from First Mate Fitzsimmons in Menethil Harbor.",
            complete = QuestState(290, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1091, 0.5953, "First Mate Fitzsimmons",
                    "Travel to First Mate Fitzsimmons."),
            },
        },
        {
            id = "travel-290-the-lost-fleet",
            kind = "travel",
            priority = 310,
            text = "Travel to The Lost Fleet.",
            route = {
                Point(MAP.WETLANDS, 0.1520, 0.2363, "The Lost Fleet",
                    "Travel to The Lost Fleet."),
            },
        },
        {
            id = "objective-290-lifting-the-curse",
            kind = "objective",
            priority = 320,
            text = "Kill Captain Halyndor for the Intrepid Strongbox Key. Walk up the rudder on the top floor to reach him.",
            dependsOn = { "accept-290-lifting-the-curse" },
            complete = QuestState(290, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.1550, 0.2350, "Captain Halyndor",
                    "Travel to Captain Halyndor."),
            },
        },
        {
            id = "turnin-290-lifting-the-curse",
            kind = "turnin",
            priority = 330,
            text = "Turn in Lifting the Curse.",
            dependsOn = { "objective-290-lifting-the-curse" },
            complete = QuestState(290, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1450, 0.2410, "Lifting the Curse",
                    "Travel to Lifting the Curse."),
            },
        },
        {
            id = "accept-292-the-eye-of-paleth",
            kind = "accept",
            priority = 340,
            text = "Accept The Eye of Paleth.",
            complete = QuestState(292, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1450, 0.2410, "The Eye of Paleth",
                    "Travel to The Eye of Paleth."),
            },
        },
        {
            id = "accept-474-defeat-nek-rosh",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { quest = { id = 465, state = "completed" } },
                },
            },
            text = "Accept Defeat Nek'rosh in Angerfang Encampment.",
            complete = QuestState(474, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.4740, 0.4690, "Angerfang Encampment",
                    "Travel to Angerfang Encampment."),
            },
        },
        {
            id = "objective-474-defeat-nek-rosh",
            kind = "objective",
            priority = 360,
            conditions = {
                all = {
                    { quest = { id = 465, state = "completed" } },
                },
            },
            text = "Kill Chieftain Nek'rosh in Angerfang Encampment Chieftain Nek'rosh is a level 32 elite npc and difficult to solo, you can give it a try if you're good, the graveyard is nearby otherwise safe to skip.",
            dependsOn = { "accept-474-defeat-nek-rosh" },
            complete = QuestState(474, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.5350, 0.5467, "Chieftain Nek'rosh",
                    "Travel to Chieftain Nek'rosh."),
            },
        },
        {
            id = "travel-deepwater-tavern",
            kind = "travel",
            priority = 370,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 293, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel or Hearthstone to Deepwater Tavern.",
            route = {
                Point(MAP.WETLANDS, 0.1060, 0.6061, "Deepwater Tavern",
                    "Travel to Deepwater Tavern."),
            },
        },
        {
            id = "turnin-292-the-eye-of-paleth",
            kind = "turnin",
            priority = 380,
            text = "Turn in The Eye of Paleth to Glorin Steelbrow in Deepwater Tavern.",
            dependsOn = { "accept-292-the-eye-of-paleth" },
            complete = QuestState(292, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1060, 0.6061, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow."),
            },
        },
        {
            id = "accept-293-cleansing-the-eye",
            kind = "accept",
            priority = 390,
            text = "Accept Cleansing the Eye from Glorin Steelbrow in Deepwater Tavern.",
            complete = QuestState(293, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1060, 0.6061, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow."),
            },
        },
        {
            id = "travel-menethil-keep",
            kind = "travel",
            priority = 400,
            text = "Travel to Menethil Keep.",
            route = {
                Point(MAP.WETLANDS, 0.0990, 0.5745, "Menethil Keep",
                    "Travel to Menethil Keep."),
            },
        },
        {
            id = "turnin-474-defeat-nek-rosh",
            kind = "turnin",
            priority = 410,
            conditions = {
                all = {
                    { quest = { id = 465, state = "completed" } },
                },
            },
            text = "Turn in Defeat Nek'rosh to Captain Stoutfist in Menethil Keep.",
            dependsOn = { "objective-474-defeat-nek-rosh" },
            complete = QuestState(474, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.0990, 0.5745, "Captain Stoutfist",
                    "Travel to Captain Stoutfist."),
            },
        },
    },
})
