local _, ns = ...

-- Horde-first Loremaster route for the Barrens.
-- This is a zone quest-completion guide, not a leveling route. It can be
-- followed while leveling, but the stops are there to finish the zone.
-- Quest list: https://www.wowhead.com/forever/quests/kalimdor/the-barrens
-- Chains stay in Wowhead series order. At the Crossroads, the quests offered
-- on that visit are accepted before the route leaves: Plainstrider Menace,
-- Raptor Thieves, Disrupt the Attacks, and Harpy Raiders, then the follow-ups
-- those turn-ins unlock. Each quest objective is its own step so a finished
-- pin cannot become active again.
-- Omitted from this run:
-- In Nightmares (3369, 3370) starts from the Wailing Caverns shard.
-- Sign Me Up! (95819) is turned in in Durotar.
-- <UNUSED> (859) has no quest text.
-- Rumors Abound, The Conjuring, Mysterious Traveler, and Raszel Ander
-- (78680, 78681, 78684, 78702) are the warlock elite chain.
-- Mangletooth's repeatable class buffs (5042, 5043, 5044, 5045, 5046, 889)
-- and Mending Old Wounds (9267) are repeatable and are not part of the route.
-- Blood Shards of Agamaggan unlocks those buffs. Buy the one for your class
-- if you want it, then leave the repeatable turn-ins.
-- Stepping Stones requires ...and that note you found when that quest is up.
-- Warsong Reports, the Hillsbrad vial sites, Deepmoss eggs, and a few
-- object spawns have no Wowhead pin. Those steps name the landmark.
-- Meats to Orgrimmar through Return to the Crossroads is orc and troll.
-- A Bundle of Hides through Return to Jahan, and Sergra Darkthorn, are tauren.
-- Other Horde races still reach 100%.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    BARRENS = 1413,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
    STONETALON = 1442,
    ASHENVALE = 1440,
    WESTFALL = 1436,
    SILVERPINE = 1421,
    DARNASSUS = 1457,
    HILLSBRAD = 1424,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index, text)
    return { questObjective = { id = questID, index = index, text = text } }
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

ns:RegisterGuide({
    id = "leveling-the-barrens",
    title = "The Barrens (Loremaster)",
    category = "Loremaster Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 9 } },
        },
    },
    goals = {
        {
            id = "accept-98024-journey-to-the-crossroads",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Accept Journey to the Crossroads from Thrall.",
            complete = QuestState(98024, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.320, 0.378, "Thrall",
                    "Travel to the next zone, then continue to Thrall."),
            },
        },
        {
            id = "turnin-98024-journey-to-the-crossroads",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                },
            },
            text = "Turn in Journey to the Crossroads to Thork.",
            dependsOn = { "accept-98024-journey-to-the-crossroads" },
            complete = QuestState(98024, "completed"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.308, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "accept-6365-meats-to-orgrimmar",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Meats to Orgrimmar from Zargh.",
            complete = QuestState(6365, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.526, 0.298, "Zargh",
                    "Travel to Zargh."),
            },
        },
        {
            id = "turnin-6365-meats-to-orgrimmar",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Meats to Orgrimmar to Devrak.",
            dependsOn = { "accept-6365-meats-to-orgrimmar" },
            complete = QuestState(6365, "completed"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.302, "Devrak",
                    "Travel to Devrak."),
            },
        },
        {
            id = "accept-6384-ride-to-orgrimmar",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Ride to Orgrimmar from Devrak.",
            dependsOn = { "turnin-6365-meats-to-orgrimmar" },
            complete = QuestState(6384, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.302, "Devrak",
                    "Travel to Devrak."),
            },
        },
        {
            id = "turnin-6384-ride-to-orgrimmar",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Ride to Orgrimmar to Innkeeper Gryshka.",
            dependsOn = { "accept-6384-ride-to-orgrimmar" },
            complete = QuestState(6384, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.542, 0.684, "Innkeeper Gryshka",
                    "Travel to the next zone, then continue to Innkeeper Gryshka."),
            },
        },
        {
            id = "accept-6385-doras-the-wind-rider-master",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Doras the Wind Rider Master from Innkeeper Gryshka.",
            dependsOn = { "turnin-6384-ride-to-orgrimmar" },
            complete = QuestState(6385, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.542, 0.684, "Innkeeper Gryshka",
                    "Travel to the next zone, then continue to Innkeeper Gryshka."),
            },
        },
        {
            id = "turnin-6385-doras-the-wind-rider-master",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Doras the Wind Rider Master to Doras.",
            dependsOn = { "accept-6385-doras-the-wind-rider-master" },
            complete = QuestState(6385, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.452, 0.638, "Doras",
                    "Travel to the next zone, then continue to Doras."),
            },
        },
        {
            id = "accept-6386-return-to-the-crossroads",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Return to the Crossroads. from Doras.",
            dependsOn = { "turnin-6385-doras-the-wind-rider-master" },
            complete = QuestState(6386, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.452, 0.638, "Doras",
                    "Travel to the next zone, then continue to Doras."),
            },
        },
        {
            id = "turnin-6386-return-to-the-crossroads",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Return to the Crossroads. to Zargh.",
            dependsOn = { "accept-6386-return-to-the-crossroads" },
            complete = QuestState(6386, "completed"),
            route = {
                Point(MAP.BARRENS, 0.526, 0.298, "Zargh",
                    "Travel to Zargh."),
            },
        },
        {
            id = "accept-6361-a-bundle-of-hides",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept A Bundle of Hides from Jahan Hawkwing.",
            complete = QuestState(6361, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.512, 0.290, "Jahan Hawkwing",
                    "Travel to Jahan Hawkwing."),
            },
        },
        {
            id = "turnin-6361-a-bundle-of-hides",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in A Bundle of Hides to Devrak.",
            dependsOn = { "accept-6361-a-bundle-of-hides" },
            complete = QuestState(6361, "completed"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.302, "Devrak",
                    "Travel to Devrak."),
            },
        },
        {
            id = "accept-6362-ride-to-thunder-bluff",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Ride to Thunder Bluff from Devrak.",
            dependsOn = { "turnin-6361-a-bundle-of-hides" },
            complete = QuestState(6362, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.302, "Devrak",
                    "Travel to Devrak."),
            },
        },
        {
            id = "turnin-6362-ride-to-thunder-bluff",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Ride to Thunder Bluff to Ahanu.",
            dependsOn = { "accept-6362-ride-to-thunder-bluff" },
            complete = QuestState(6362, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.454, 0.558, "Ahanu",
                    "Travel to the next zone, then continue to Ahanu."),
            },
        },
        {
            id = "accept-860-sergra-darkthorn",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Sergra Darkthorn from Melor Stonehoof.",
            complete = QuestState(860, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.614, 0.806, "Melor Stonehoof",
                    "Travel to the next zone, then continue to Melor Stonehoof."),
            },
        },
        {
            id = "accept-6363-tal-the-wind-rider-master",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Tal the Wind Rider Master from Ahanu.",
            dependsOn = { "turnin-6362-ride-to-thunder-bluff" },
            complete = QuestState(6363, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.454, 0.558, "Ahanu",
                    "Travel to the next zone, then continue to Ahanu."),
            },
        },
        {
            id = "turnin-6363-tal-the-wind-rider-master",
            kind = "turnin",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Tal the Wind Rider Master to Tal.",
            dependsOn = { "accept-6363-tal-the-wind-rider-master" },
            complete = QuestState(6363, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.468, 0.500, "Tal",
                    "Travel to the next zone, then continue to Tal."),
            },
        },
        {
            id = "accept-6364-return-to-jahan",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Return to Jahan from Tal.",
            dependsOn = { "turnin-6363-tal-the-wind-rider-master" },
            complete = QuestState(6364, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.468, 0.500, "Tal",
                    "Travel to the next zone, then continue to Tal."),
            },
        },
        {
            id = "turnin-6364-return-to-jahan",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Return to Jahan to Jahan Hawkwing.",
            dependsOn = { "accept-6364-return-to-jahan" },
            complete = QuestState(6364, "completed"),
            route = {
                Point(MAP.BARRENS, 0.512, 0.290, "Jahan Hawkwing",
                    "Travel to Jahan Hawkwing."),
            },
        },
        {
            id = "turnin-860-sergra-darkthorn",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Sergra Darkthorn to Sergra Darkthorn.",
            dependsOn = { "accept-860-sergra-darkthorn" },
            complete = QuestState(860, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "accept-844-plainstrider-menace",
            kind = "accept",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Plainstrider Menace from Sergra Darkthorn.",
            dependsOn = { "turnin-860-sergra-darkthorn" },
            complete = QuestState(844, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "objective-844-plainstrider-menace-1",
            kind = "objective",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Plainstrider Menace: Plainstrider Beak.",
            dependsOn = { "accept-844-plainstrider-menace" },
            complete = QuestObjective(844, 1, "Plainstrider Beak"),
            route = {
                Point(MAP.BARRENS, 0.518, 0.331, "Greater Plainstrider",
                    "Travel to Greater Plainstrider."),
            },
        },
        {
            id = "turnin-844-plainstrider-menace",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Plainstrider Menace to Sergra Darkthorn.",
            dependsOn = { "objective-844-plainstrider-menace-1" },
            complete = QuestState(844, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "accept-845-the-zhevra",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Zhevra from Sergra Darkthorn.",
            dependsOn = { "turnin-844-plainstrider-menace" },
            complete = QuestState(845, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "objective-845-the-zhevra-1",
            kind = "objective",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "The Zhevra: Zhevra Hooves.",
            dependsOn = { "accept-845-the-zhevra" },
            complete = QuestObjective(845, 1, "Zhevra Hooves"),
            route = {
                Point(MAP.BARRENS, 0.455, 0.430, "Zhevra Runner",
                    "Travel to Zhevra Runner."),
            },
        },
        {
            id = "turnin-845-the-zhevra",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Zhevra to Sergra Darkthorn.",
            dependsOn = { "objective-845-the-zhevra-1" },
            complete = QuestState(845, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "accept-903-prowlers-of-the-barrens",
            kind = "accept",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Prowlers of the Barrens from Sergra Darkthorn.",
            dependsOn = { "turnin-845-the-zhevra" },
            complete = QuestState(903, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "objective-903-prowlers-of-the-barrens-1",
            kind = "objective",
            priority = 280,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Prowlers of the Barrens: Prowler Claws.",
            dependsOn = { "accept-903-prowlers-of-the-barrens" },
            complete = QuestObjective(903, 1, "Prowler Claws"),
            route = {
                Point(MAP.BARRENS, 0.582, 0.408, "Savannah Prowler",
                    "Travel to Savannah Prowler."),
            },
        },
        {
            id = "turnin-903-prowlers-of-the-barrens",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Prowlers of the Barrens to Sergra Darkthorn.",
            dependsOn = { "objective-903-prowlers-of-the-barrens-1" },
            complete = QuestState(903, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "accept-869-raptor-thieves",
            kind = "accept",
            priority = 211,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Raptor Thieves from Gazrog.",
            complete = QuestState(869, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.518, 0.302, "Gazrog",
                    "Travel to Gazrog."),
            },
        },
        {
            id = "objective-869-raptor-thieves-1",
            kind = "objective",
            priority = 221,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Raptor Thieves: Raptor Head.",
            dependsOn = { "accept-869-raptor-thieves" },
            complete = QuestObjective(869, 1, "Raptor Head"),
            route = {
                Point(MAP.BARRENS, 0.579, 0.260, "Sunscale Lashtail",
                    "Travel to Sunscale Lashtail."),
            },
        },
        {
            id = "turnin-869-raptor-thieves",
            kind = "turnin",
            priority = 231,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in Raptor Thieves to Gazrog.",
            dependsOn = { "objective-869-raptor-thieves-1" },
            complete = QuestState(869, "completed"),
            route = {
                Point(MAP.BARRENS, 0.518, 0.302, "Gazrog",
                    "Travel to Gazrog."),
            },
        },
        {
            id = "accept-871-disrupt-the-attacks",
            kind = "accept",
            priority = 212,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Disrupt the Attacks from Thork.",
            complete = QuestState(871, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.308, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "objective-871-disrupt-the-attacks-1",
            kind = "objective",
            priority = 222,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Disrupt the Attacks: Razormane Water Seeker slain.",
            dependsOn = { "accept-871-disrupt-the-attacks" },
            complete = QuestObjective(871, 1, "Razormane Water Seeker slain"),
            route = {
                Point(MAP.BARRENS, 0.556, 0.272, "Razormane Water Seeker",
                    "Travel to Razormane Water Seeker."),
            },
        },
        {
            id = "objective-871-disrupt-the-attacks-2",
            kind = "objective",
            priority = 223,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Disrupt the Attacks: Razormane Thornweaver slain.",
            dependsOn = { "accept-871-disrupt-the-attacks" },
            complete = QuestObjective(871, 2, "Razormane Thornweaver slain"),
            route = {
                Point(MAP.BARRENS, 0.556, 0.272, "Razormane Thornweaver",
                    "Travel to Razormane Thornweaver."),
            },
        },
        {
            id = "objective-871-disrupt-the-attacks-3",
            kind = "objective",
            priority = 224,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Disrupt the Attacks: Razormane Hunter slain.",
            dependsOn = { "accept-871-disrupt-the-attacks" },
            complete = QuestObjective(871, 3, "Razormane Hunter slain"),
            route = {
                Point(MAP.BARRENS, 0.556, 0.270, "Razormane Hunter",
                    "Travel to Razormane Hunter."),
            },
        },
        {
            id = "turnin-871-disrupt-the-attacks",
            kind = "turnin",
            priority = 232,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in Disrupt the Attacks to Thork.",
            dependsOn = { "objective-871-disrupt-the-attacks-3" },
            complete = QuestState(871, "completed"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.308, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "accept-872-the-disruption-ends",
            kind = "accept",
            priority = 241,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept The Disruption Ends from Thork.",
            dependsOn = { "turnin-871-disrupt-the-attacks" },
            complete = QuestState(872, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.308, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "objective-872-the-disruption-ends-1",
            kind = "objective",
            priority = 244,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "The Disruption Ends: Razormane Geomancer slain.",
            dependsOn = { "accept-872-the-disruption-ends" },
            complete = QuestObjective(872, 1, "Razormane Geomancer slain"),
            route = {
                Point(MAP.BARRENS, 0.592, 0.246, "Razormane Geomancer",
                    "Travel to Razormane Geomancer."),
            },
        },
        {
            id = "objective-872-the-disruption-ends-2",
            kind = "objective",
            priority = 245,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "The Disruption Ends: Razormane Defender slain.",
            dependsOn = { "accept-872-the-disruption-ends" },
            complete = QuestObjective(872, 2, "Razormane Defender slain"),
            route = {
                Point(MAP.BARRENS, 0.592, 0.246, "Razormane Defender",
                    "Travel to Razormane Defender."),
            },
        },
        {
            id = "objective-872-the-disruption-ends-3",
            kind = "objective",
            priority = 246,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "The Disruption Ends: Kreenig Snarlsnout's Tusk. This is an elite. Bring a group.",
            dependsOn = { "accept-872-the-disruption-ends" },
            complete = QuestObjective(872, 3, "Kreenig Snarlsnout's Tusk"),
            route = {
                Point(MAP.BARRENS, 0.586, 0.272, "Kreenig Snarlsnout",
                    "Travel to Kreenig Snarlsnout."),
            },
        },
        {
            id = "turnin-872-the-disruption-ends",
            kind = "turnin",
            priority = 251,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in The Disruption Ends to Thork.",
            dependsOn = { "objective-872-the-disruption-ends-3" },
            complete = QuestState(872, "completed"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.308, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "accept-5041-supplies-for-the-crossroads",
            kind = "accept",
            priority = 242,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Supplies for the Crossroads from Thork.",
            dependsOn = { "turnin-871-disrupt-the-attacks" },
            complete = QuestState(5041, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.308, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "objective-5041-supplies-for-the-crossroads-1",
            kind = "objective",
            priority = 247,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Supplies for the Crossroads: Crossroads' Supply Crates.",
            dependsOn = { "accept-5041-supplies-for-the-crossroads" },
            complete = QuestObjective(5041, 1, "Crossroads' Supply Crates"),
            route = {
                Point(MAP.BARRENS, 0.534, 0.266, "Crossroads' Supply Crates in the Razormane camp",
                    "Travel to Crossroads' Supply Crates in the Razormane camp."),
            },
        },
        {
            id = "turnin-5041-supplies-for-the-crossroads",
            kind = "turnin",
            priority = 252,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in Supplies for the Crossroads to Thork.",
            dependsOn = { "objective-5041-supplies-for-the-crossroads-1" },
            complete = QuestState(5041, "completed"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.308, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "accept-886-the-barrens-oases",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Barrens Oases from Arch Druid Hamuul Runetotem.",
            complete = QuestState(886, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.784, 0.284, "Arch Druid Hamuul Runetotem",
                    "Travel to the next zone, then continue to Arch Druid Hamuul Runetotem."),
            },
        },
        {
            id = "turnin-886-the-barrens-oases",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Barrens Oases to Tonga Runetotem.",
            dependsOn = { "accept-886-the-barrens-oases" },
            complete = QuestState(886, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.318, "Tonga Runetotem",
                    "Travel to Tonga Runetotem."),
            },
        },
        {
            id = "accept-870-the-forgotten-pools",
            kind = "accept",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Forgotten Pools from Tonga Runetotem.",
            dependsOn = { "turnin-886-the-barrens-oases" },
            complete = QuestState(870, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.318, "Tonga Runetotem",
                    "Travel to Tonga Runetotem."),
            },
        },
        {
            id = "objective-870-the-forgotten-pools-1",
            kind = "objective",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "The Forgotten Pools: Explore Zone.",
            dependsOn = { "accept-870-the-forgotten-pools" },
            complete = QuestObjective(870, 1, "Explore Zone"),
            route = {
                Point(MAP.BARRENS, 0.450, 0.225, "Forgotten Pools",
                    "Travel to Forgotten Pools."),
            },
        },
        {
            id = "objective-870-the-forgotten-pools-2",
            kind = "objective",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "The Forgotten Pools: Explore the waters of the Forgotten Pools.",
            dependsOn = { "accept-870-the-forgotten-pools" },
            complete = QuestObjective(870, 2, "Explore the waters of the Forgotten Pool"),
            route = {
                Point(MAP.BARRENS, 0.450, 0.225, "Forgotten Pools",
                    "Travel to Forgotten Pools."),
            },
        },
        {
            id = "turnin-870-the-forgotten-pools",
            kind = "turnin",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Forgotten Pools to Tonga Runetotem.",
            dependsOn = { "objective-870-the-forgotten-pools-2" },
            complete = QuestState(870, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.318, "Tonga Runetotem",
                    "Travel to Tonga Runetotem."),
            },
        },
        {
            id = "accept-848-fungal-spores",
            kind = "accept",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Fungal Spores from Apothecary Helbrim.",
            complete = QuestState(848, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.302, "Apothecary Helbrim",
                    "Travel to Apothecary Helbrim."),
            },
        },
        {
            id = "objective-848-fungal-spores-1",
            kind = "objective",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Fungal Spores: Fungal Spores.",
            dependsOn = { "accept-848-fungal-spores" },
            complete = QuestObjective(848, 1, "Fungal Spores"),
            route = {
                Point(MAP.BARRENS, 0.456, 0.382, "Lushwater Oasis",
                    "Travel to Lushwater Oasis."),
            },
        },
        {
            id = "turnin-848-fungal-spores",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Fungal Spores to Apothecary Helbrim.",
            dependsOn = { "objective-848-fungal-spores-1" },
            complete = QuestState(848, "completed"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.302, "Apothecary Helbrim",
                    "Travel to Apothecary Helbrim."),
            },
        },
        {
            id = "accept-867-harpy-raiders",
            kind = "accept",
            priority = 213,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Harpy Raiders from Darsok Swiftdagger.",
            complete = QuestState(867, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.516, 0.308, "Darsok Swiftdagger",
                    "Travel to Darsok Swiftdagger."),
            },
        },
        {
            id = "objective-867-harpy-raiders-1",
            kind = "objective",
            priority = 225,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 12 } },
                },
            },
            text = "Harpy Raiders: Witchwing Talon.",
            dependsOn = { "accept-867-harpy-raiders" },
            complete = QuestObjective(867, 1, "Witchwing Talon"),
            route = {
                Point(MAP.BARRENS, 0.400, 0.154, "Witchwing Harpy",
                    "Travel to Witchwing Harpy."),
            },
        },
        {
            id = "turnin-867-harpy-raiders",
            kind = "turnin",
            priority = 233,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Harpy Raiders to Darsok Swiftdagger.",
            dependsOn = { "objective-867-harpy-raiders-1" },
            complete = QuestState(867, "completed"),
            route = {
                Point(MAP.BARRENS, 0.516, 0.308, "Darsok Swiftdagger",
                    "Travel to Darsok Swiftdagger."),
            },
        },
        {
            id = "accept-855-centaur-bracers",
            kind = "accept",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Centaur Bracers from Regthar Deathgate.",
            complete = QuestState(855, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.454, 0.284, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "objective-855-centaur-bracers-1",
            kind = "objective",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Centaur Bracers: Centaur Bracers.",
            dependsOn = { "accept-855-centaur-bracers" },
            complete = QuestObjective(855, 1, "Centaur Bracers"),
            route = {
                Point(MAP.BARRENS, 0.481, 0.339, "Kolkar Wrangler",
                    "Travel to Kolkar Wrangler."),
            },
        },
        {
            id = "turnin-855-centaur-bracers",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in Centaur Bracers to Regthar Deathgate.",
            dependsOn = { "objective-855-centaur-bracers-1" },
            complete = QuestState(855, "completed"),
            route = {
                Point(MAP.BARRENS, 0.454, 0.284, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "accept-850-kolkar-leaders",
            kind = "accept",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Accept Kolkar Leaders from Regthar Deathgate. This is an elite. Bring a group.",
            complete = QuestState(850, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.454, 0.284, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "objective-850-kolkar-leaders-1",
            kind = "objective",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Kolkar Leaders: Kodobane's Head. This is an elite. Bring a group.",
            dependsOn = { "accept-850-kolkar-leaders" },
            complete = QuestObjective(850, 1, "Kodobane's Head"),
            route = {
                Point(MAP.BARRENS, 0.428, 0.236, "Barak Kodobane",
                    "Travel to Barak Kodobane."),
            },
        },
        {
            id = "turnin-850-kolkar-leaders",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Turn in Kolkar Leaders to Regthar Deathgate.",
            dependsOn = { "objective-850-kolkar-leaders-1" },
            complete = QuestState(850, "completed"),
            route = {
                Point(MAP.BARRENS, 0.454, 0.284, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "accept-97003-cholaruk-the-ravener",
            kind = "accept",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Chol'aruk the Ravener from Gur'ak. This is an elite. Bring a group.",
            complete = QuestState(97003, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.526, 0.290, "Gur'ak",
                    "Travel to Gur'ak."),
            },
        },
        {
            id = "objective-97003-cholaruk-the-ravener-1",
            kind = "objective",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 15 } },
                },
            },
            text = "Chol'aruk the Ravener: Chol'aruk's Head. This is an elite. Bring a group.",
            dependsOn = { "accept-97003-cholaruk-the-ravener" },
            complete = QuestObjective(97003, 1, "Chol'aruk's Head"),
            route = {
                Point(MAP.BARRENS, 0.574, 0.272, "Chol'aruk",
                    "Travel to Chol'aruk."),
            },
        },
        {
            id = "turnin-97003-cholaruk-the-ravener",
            kind = "turnin",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Chol'aruk the Ravener to Gur'ak.",
            dependsOn = { "objective-97003-cholaruk-the-ravener-1" },
            complete = QuestState(97003, "completed"),
            route = {
                Point(MAP.BARRENS, 0.526, 0.290, "Gur'ak",
                    "Travel to Gur'ak."),
            },
        },
        {
            id = "accept-95507-vrangs-game",
            kind = "accept",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Vrang's Game from Vrang Wildgore.",
            complete = QuestState(95507, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.438, 0.122, "Vrang Wildgore",
                    "Travel to Vrang Wildgore."),
            },
        },
        {
            id = "objective-95507-vrangs-game-1",
            kind = "objective",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Vrang's Game: Trapped Game.",
            dependsOn = { "accept-95507-vrangs-game" },
            complete = QuestObjective(95507, 1, "Trapped Game"),
            route = {
                Point(MAP.BARRENS, 0.450, 0.140, "Trapped Game near Vrang Wildgore",
                    "Travel to Trapped Game near Vrang Wildgore."),
            },
        },
        {
            id = "turnin-95507-vrangs-game",
            kind = "turnin",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Vrang's Game to Vrang Wildgore.",
            dependsOn = { "objective-95507-vrangs-game-1" },
            complete = QuestState(95507, "completed"),
            route = {
                Point(MAP.BARRENS, 0.438, 0.122, "Vrang Wildgore",
                    "Travel to Vrang Wildgore."),
            },
        },
        {
            id = "accept-95494-bruised-pride-and-lion-hides",
            kind = "accept",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Bruised Pride and Lion Hides from Vrang Wildgore.",
            complete = QuestState(95494, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.438, 0.122, "Vrang Wildgore",
                    "Travel to Vrang Wildgore."),
            },
        },
        {
            id = "objective-95494-bruised-pride-and-lion-hides-1",
            kind = "objective",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Bruised Pride and Lion Hides: Savannah Lion Hide.",
            dependsOn = { "accept-95494-bruised-pride-and-lion-hides" },
            complete = QuestObjective(95494, 1, "Savannah Lion Hide"),
            route = {
                Point(MAP.BARRENS, 0.517, 0.243, "Savannah Patriarch",
                    "Travel to Savannah Patriarch."),
            },
        },
        {
            id = "turnin-95494-bruised-pride-and-lion-hides",
            kind = "turnin",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Bruised Pride and Lion Hides to Vrang Wildgore.",
            dependsOn = { "objective-95494-bruised-pride-and-lion-hides-1" },
            complete = QuestState(95494, "completed"),
            route = {
                Point(MAP.BARRENS, 0.438, 0.122, "Vrang Wildgore",
                    "Travel to Vrang Wildgore."),
            },
        },
        {
            id = "accept-95495-the-hermit-tanner",
            kind = "accept",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept The Hermit Tanner from Vrang Wildgore.",
            dependsOn = { "turnin-95494-bruised-pride-and-lion-hides" },
            complete = QuestState(95495, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.438, 0.122, "Vrang Wildgore",
                    "Travel to Vrang Wildgore."),
            },
        },
        {
            id = "turnin-95495-the-hermit-tanner",
            kind = "turnin",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in The Hermit Tanner to Walton.",
            dependsOn = { "accept-95495-the-hermit-tanner" },
            complete = QuestState(95495, "completed"),
            route = {
                Point(MAP.BARRENS, 0.420, 0.114, "Walton",
                    "Travel to Walton."),
            },
        },
        {
            id = "accept-95621-trouble-in-the-valley",
            kind = "accept",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Trouble in the Valley from Walton.",
            dependsOn = { "turnin-95495-the-hermit-tanner" },
            complete = QuestState(95621, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.420, 0.114, "Walton",
                    "Travel to Walton."),
            },
        },
        {
            id = "objective-95621-trouble-in-the-valley-1",
            kind = "objective",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Trouble in the Valley: Benedict's Orders.",
            dependsOn = { "accept-95621-trouble-in-the-valley" },
            complete = QuestObjective(95621, 1, "Benedict's Orders"),
            route = {
                Point(MAP.BARRENS, 0.424, 0.160, "Corporal Adamore",
                    "Travel to Corporal Adamore."),
            },
        },
        {
            id = "turnin-95621-trouble-in-the-valley",
            kind = "turnin",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Trouble in the Valley to Walton.",
            dependsOn = { "objective-95621-trouble-in-the-valley-1" },
            complete = QuestState(95621, "completed"),
            route = {
                Point(MAP.BARRENS, 0.420, 0.114, "Walton",
                    "Travel to Walton."),
            },
        },
        {
            id = "accept-95508-unwelcome-guests",
            kind = "accept",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Unwelcome Guests from Walton.",
            complete = QuestState(95508, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.420, 0.114, "Walton",
                    "Travel to Walton."),
            },
        },
        {
            id = "objective-95508-unwelcome-guests-1",
            kind = "objective",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Unwelcome Guests: Assist Walton.",
            dependsOn = { "accept-95508-unwelcome-guests" },
            complete = QuestObjective(95508, 1, "Assist Walton"),
            route = {
                Point(MAP.BARRENS, 0.420, 0.114, "Walton",
                    "Travel to Walton."),
            },
        },
        {
            id = "turnin-95508-unwelcome-guests",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Unwelcome Guests to Walton.",
            dependsOn = { "objective-95508-unwelcome-guests-1" },
            complete = QuestState(95508, "completed"),
            route = {
                Point(MAP.BARRENS, 0.420, 0.114, "Walton",
                    "Travel to Walton."),
            },
        },
        {
            id = "accept-875-harpy-lieutenants",
            kind = "accept",
            priority = 243,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Harpy Lieutenants from Darsok Swiftdagger. This is an elite. Bring a group.",
            dependsOn = { "turnin-867-harpy-raiders" },
            complete = QuestState(875, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.516, 0.308, "Darsok Swiftdagger",
                    "Travel to Darsok Swiftdagger."),
            },
        },
        {
            id = "objective-875-harpy-lieutenants-1",
            kind = "objective",
            priority = 248,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 12 } },
                },
            },
            text = "Harpy Lieutenants: Harpy Lieutenant Ring. This is an elite. Bring a group.",
            dependsOn = { "accept-875-harpy-lieutenants" },
            complete = QuestObjective(875, 1, "Harpy Lieutenant Ring"),
            route = {
                Point(MAP.BARRENS, 0.394, 0.124, "Witchwing Slayer",
                    "Travel to Witchwing Slayer."),
            },
        },
        {
            id = "turnin-875-harpy-lieutenants",
            kind = "turnin",
            priority = 253,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Harpy Lieutenants to Darsok Swiftdagger.",
            dependsOn = { "objective-875-harpy-lieutenants-1" },
            complete = QuestState(875, "completed"),
            route = {
                Point(MAP.BARRENS, 0.516, 0.308, "Darsok Swiftdagger",
                    "Travel to Darsok Swiftdagger."),
            },
        },
        {
            id = "accept-819-chens-empty-keg",
            kind = "accept",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Loot the item that starts Chen's Empty Keg.",
            complete = QuestState(819, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.384, "Brewmaster Drohn",
                    "Travel to Brewmaster Drohn."),
            },
        },
        {
            id = "turnin-819-chens-empty-keg",
            kind = "turnin",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Turn in Chen's Empty Keg to Brewmaster Drohn.",
            dependsOn = { "accept-819-chens-empty-keg" },
            complete = QuestState(819, "completed"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.384, "Brewmaster Drohn",
                    "Travel to Brewmaster Drohn."),
            },
        },
        {
            id = "accept-1492-wharfmaster-dizzywig",
            kind = "accept",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Wharfmaster Dizzywig from Apothecary Helbrim.",
            complete = QuestState(1492, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.302, "Apothecary Helbrim",
                    "Travel to Apothecary Helbrim."),
            },
        },
        {
            id = "turnin-1492-wharfmaster-dizzywig",
            kind = "turnin",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in Wharfmaster Dizzywig to Wharfmaster Dizzywig.",
            dependsOn = { "accept-1492-wharfmaster-dizzywig" },
            complete = QuestState(1492, "completed"),
            route = {
                Point(MAP.BARRENS, 0.632, 0.384, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
        {
            id = "accept-887-southsea-freebooters",
            kind = "accept",
            priority = 880,
            conditions = { level = { min = 9 } },
            text = "Accept Southsea Freebooters from Gazlowe.",
            complete = QuestState(887, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.362, "Gazlowe",
                    "Travel to Gazlowe."),
            },
        },
        {
            id = "objective-887-southsea-freebooters-1",
            kind = "objective",
            priority = 890,
            conditions = { level = { min = 9 } },
            text = "Southsea Freebooters: Southsea Brigand slain.",
            dependsOn = { "accept-887-southsea-freebooters" },
            complete = QuestObjective(887, 1, "Southsea Brigand slain"),
            route = {
                Point(MAP.BARRENS, 0.634, 0.432, "Southsea Brigand",
                    "Travel to Southsea Brigand."),
            },
        },
        {
            id = "objective-887-southsea-freebooters-2",
            kind = "objective",
            priority = 900,
            conditions = { level = { min = 9 } },
            text = "Southsea Freebooters: Southsea Cannoneer slain.",
            dependsOn = { "accept-887-southsea-freebooters" },
            complete = QuestObjective(887, 2, "Southsea Cannoneer slain"),
            route = {
                Point(MAP.BARRENS, 0.638, 0.438, "Southsea Cannoneer",
                    "Travel to Southsea Cannoneer."),
            },
        },
        {
            id = "turnin-887-southsea-freebooters",
            kind = "turnin",
            priority = 910,
            conditions = { level = { min = 9 } },
            text = "Turn in Southsea Freebooters to Gazlowe.",
            dependsOn = { "objective-887-southsea-freebooters-2" },
            complete = QuestState(887, "completed"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.362, "Gazlowe",
                    "Travel to Gazlowe."),
            },
        },
        {
            id = "turnin-890-the-missing-shipment",
            kind = "turnin",
            priority = 920,
            conditions = { level = { min = 9 } },
            text = "Accept The Missing Shipment from Gazlowe, then turn in The Missing Shipment to Wharfmaster Dizzywig.",
            dependsOn = { "turnin-887-southsea-freebooters" },
            complete = QuestState(890, "completed"),
            route = {
                Point(MAP.BARRENS, 0.632, 0.384, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
        {
            id = "turnin-892-the-missing-shipment",
            kind = "turnin",
            priority = 940,
            conditions = { level = { min = 9 } },
            text = "Accept The Missing Shipment from Wharfmaster Dizzywig, then turn in The Missing Shipment to Gazlowe.",
            dependsOn = { "turnin-890-the-missing-shipment" },
            complete = QuestState(892, "completed"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.362, "Gazlowe",
                    "Travel to Gazlowe."),
            },
        },
        {
            id = "accept-888-stolen-booty",
            kind = "accept",
            priority = 960,
            conditions = { level = { min = 9 } },
            text = "Accept Stolen Booty from Gazlowe.",
            dependsOn = { "turnin-892-the-missing-shipment" },
            complete = QuestState(888, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.362, "Gazlowe",
                    "Travel to Gazlowe."),
            },
        },
        {
            id = "objective-888-stolen-booty-1",
            kind = "objective",
            priority = 970,
            conditions = { level = { min = 9 } },
            text = "Stolen Booty: Shipment of Boots.",
            dependsOn = { "accept-888-stolen-booty" },
            complete = QuestObjective(888, 1, "Shipment of Boots"),
            route = {
                Point(MAP.BARRENS, 0.627, 0.496, "Shipment of Boots",
                    "Travel to Shipment of Boots."),
            },
        },
        {
            id = "objective-888-stolen-booty-2",
            kind = "objective",
            priority = 980,
            conditions = { level = { min = 9 } },
            text = "Stolen Booty: Telescopic Lens.",
            dependsOn = { "accept-888-stolen-booty" },
            complete = QuestObjective(888, 2, "Telescopic Lens"),
            route = {
                Point(MAP.BARRENS, 0.636, 0.492, "Telescopic Lens",
                    "Travel to Telescopic Lens."),
            },
        },
        {
            id = "turnin-888-stolen-booty",
            kind = "turnin",
            priority = 990,
            conditions = { level = { min = 9 } },
            text = "Turn in Stolen Booty to Gazlowe.",
            dependsOn = { "objective-888-stolen-booty-2" },
            complete = QuestState(888, "completed"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.362, "Gazlowe",
                    "Travel to Gazlowe."),
            },
        },
        {
            id = "accept-895-wanted-baron-longshore",
            kind = "accept",
            priority = 1000,
            conditions = { level = { min = 11 } },
            text = "Accept WANTED: Baron Longshore from the wanted poster. This is an elite. Bring a group.",
            complete = QuestState(895, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.375, "WANTED",
                    "Travel to WANTED."),
            },
        },
        {
            id = "objective-895-wanted-baron-longshore-1",
            kind = "objective",
            priority = 1010,
            conditions = { level = { min = 11 } },
            text = "WANTED: Baron Longshore: Baron Longshore's Head. This is an elite. Bring a group.",
            dependsOn = { "accept-895-wanted-baron-longshore" },
            complete = QuestObjective(895, 1, "Baron Longshore's Head"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.498, "Baron Longshore",
                    "Travel to Baron Longshore."),
            },
        },
        {
            id = "turnin-895-wanted-baron-longshore",
            kind = "turnin",
            priority = 1020,
            conditions = { level = { min = 11 } },
            text = "Turn in WANTED: Baron Longshore to Gazlowe.",
            dependsOn = { "objective-895-wanted-baron-longshore-1" },
            complete = QuestState(895, "completed"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.362, "Gazlowe",
                    "Travel to Gazlowe."),
            },
        },
        {
            id = "accept-92706-wanted-bruuz",
            kind = "accept",
            priority = 1030,
            conditions = { level = { min = 15 } },
            text = "Accept WANTED: Bruuz from the wanted poster. This is an elite. Bring a group.",
            complete = QuestState(92706, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.375, "WANTED",
                    "Travel to WANTED."),
            },
        },
        {
            id = "objective-92706-wanted-bruuz-1",
            kind = "objective",
            priority = 1040,
            conditions = { level = { min = 15 } },
            text = "WANTED: Bruuz: Bruuz's Dorsal Fin. This is an elite. Bring a group.",
            dependsOn = { "accept-92706-wanted-bruuz" },
            complete = QuestObjective(92706, 1, "Bruuz's Dorsal Fin"),
            route = {
                Point(MAP.BARRENS, 0.644, 0.390, "Bruuz",
                    "Travel to Bruuz."),
            },
        },
        {
            id = "turnin-92706-wanted-bruuz",
            kind = "turnin",
            priority = 1050,
            conditions = { level = { min = 15 } },
            text = "Turn in WANTED: Bruuz to Gazlowe.",
            dependsOn = { "objective-92706-wanted-bruuz-1" },
            complete = QuestState(92706, "completed"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.362, "Gazlowe",
                    "Travel to Gazlowe."),
            },
        },
        {
            id = "accept-97253-parts-and-pieces",
            kind = "accept",
            priority = 1060,
            conditions = { level = { min = 9 } },
            text = "Accept Parts and Pieces from Wrenix the Wretched.",
            complete = QuestState(97253, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.630, 0.364, "Wrenix the Wretched",
                    "Travel to Wrenix the Wretched."),
            },
        },
        {
            id = "objective-97253-parts-and-pieces-1",
            kind = "objective",
            priority = 1070,
            conditions = { level = { min = 9 } },
            text = "Parts and Pieces: Handful of Complicated Parts.",
            dependsOn = { "accept-97253-parts-and-pieces" },
            complete = QuestObjective(97253, 1, "Handful of Complicated Parts"),
            route = {
                Point(MAP.BARRENS, 0.626, 0.450, "Complicated Parts among the Southsea wreckage",
                    "Travel to Complicated Parts among the Southsea wreckage."),
            },
        },
        {
            id = "turnin-97253-parts-and-pieces",
            kind = "turnin",
            priority = 1080,
            conditions = { level = { min = 9 } },
            text = "Turn in Parts and Pieces to Wrenix the Wretched.",
            dependsOn = { "objective-97253-parts-and-pieces-1" },
            complete = QuestState(97253, "completed"),
            route = {
                Point(MAP.BARRENS, 0.630, 0.364, "Wrenix the Wretched",
                    "Travel to Wrenix the Wretched."),
            },
        },
        {
            id = "accept-821-chens-empty-keg",
            kind = "accept",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Accept Chen's Empty Keg from Brewmaster Drohn.",
            dependsOn = { "turnin-819-chens-empty-keg" },
            complete = QuestState(821, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.384, "Brewmaster Drohn",
                    "Travel to Brewmaster Drohn."),
            },
        },
        {
            id = "objective-821-chens-empty-keg-1",
            kind = "objective",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Chen's Empty Keg: Savannah Lion Tusk.",
            dependsOn = { "accept-821-chens-empty-keg" },
            complete = QuestObjective(821, 1, "Savannah Lion Tusk"),
            route = {
                Point(MAP.BARRENS, 0.533, 0.268, "Savannah Patriarch",
                    "Travel to Savannah Patriarch."),
            },
        },
        {
            id = "objective-821-chens-empty-keg-2",
            kind = "objective",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Chen's Empty Keg: Plainstrider Kidney.",
            dependsOn = { "accept-821-chens-empty-keg" },
            complete = QuestObjective(821, 2, "Plainstrider Kidney"),
            route = {
                Point(MAP.BARRENS, 0.518, 0.331, "Greater Plainstrider",
                    "Travel to Greater Plainstrider."),
            },
        },
        {
            id = "objective-821-chens-empty-keg-3",
            kind = "objective",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Chen's Empty Keg: Thunder Lizard Horn.",
            dependsOn = { "accept-821-chens-empty-keg" },
            complete = QuestObjective(821, 3, "Thunder Lizard Horn"),
            route = {
                Point(MAP.BARRENS, 0.481, 0.633, "Stormhide",
                    "Travel to Stormhide."),
            },
        },
        {
            id = "turnin-821-chens-empty-keg",
            kind = "turnin",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Turn in Chen's Empty Keg to Brewmaster Drohn.",
            dependsOn = { "objective-821-chens-empty-keg-3" },
            complete = QuestState(821, "completed"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.384, "Brewmaster Drohn",
                    "Travel to Brewmaster Drohn."),
            },
        },
        {
            id = "accept-822-chens-empty-keg",
            kind = "accept",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Accept Chen's Empty Keg from Brewmaster Drohn.",
            dependsOn = { "turnin-821-chens-empty-keg" },
            complete = QuestState(822, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.384, "Brewmaster Drohn",
                    "Travel to Brewmaster Drohn."),
            },
        },
        {
            id = "objective-822-chens-empty-keg-1",
            kind = "objective",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Chen's Empty Keg: Lightning Gland.",
            dependsOn = { "accept-822-chens-empty-keg" },
            complete = QuestObjective(822, 1, "Lightning Gland"),
            route = {
                Point(MAP.BARRENS, 0.464, 0.798, "Stormhide",
                    "Travel to Stormhide."),
            },
        },
        {
            id = "objective-822-chens-empty-keg-2",
            kind = "objective",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Chen's Empty Keg: Thunderhawk Saliva Gland.",
            dependsOn = { "accept-822-chens-empty-keg" },
            complete = QuestObjective(822, 2, "Thunderhawk Saliva Gland"),
            route = {
                Point(MAP.BARRENS, 0.450, 0.757, "Greater Thunderhawk",
                    "Travel to Greater Thunderhawk."),
            },
        },
        {
            id = "objective-822-chens-empty-keg-3",
            kind = "objective",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Chen's Empty Keg: Kodo Liver.",
            dependsOn = { "accept-822-chens-empty-keg" },
            complete = QuestObjective(822, 3, "Kodo Liver"),
            route = {
                Point(MAP.BARRENS, 0.494, 0.600, "Lost Barrens Kodo",
                    "Travel to Lost Barrens Kodo."),
            },
        },
        {
            id = "turnin-822-chens-empty-keg",
            kind = "turnin",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Turn in Chen's Empty Keg to Brewmaster Drohn.",
            dependsOn = { "objective-822-chens-empty-keg-3" },
            complete = QuestState(822, "completed"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.384, "Brewmaster Drohn",
                    "Travel to Brewmaster Drohn."),
            },
        },
        {
            id = "accept-894-samophlange",
            kind = "accept",
            priority = 1190,
            conditions = { level = { min = 10 } },
            text = "Accept Samophlange from Sputtervalve.",
            complete = QuestState(894, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.630, 0.372, "Sputtervalve",
                    "Travel to Sputtervalve."),
            },
        },
        {
            id = "objective-894-samophlange-1",
            kind = "objective",
            priority = 1200,
            conditions = { level = { min = 10 } },
            text = "Samophlange: Control Console Operating Manual.",
            dependsOn = { "accept-894-samophlange" },
            complete = QuestObjective(894, 1, "Control Console Operating Manual"),
            route = {
                Point(MAP.BARRENS, 0.524, 0.117, "Control Console",
                    "Travel to Control Console."),
            },
        },
        {
            id = "turnin-894-samophlange",
            kind = "turnin",
            priority = 1210,
            conditions = { level = { min = 10 } },
            text = "Turn in Samophlange to Control Console.",
            dependsOn = { "objective-894-samophlange-1" },
            complete = QuestState(894, "completed"),
            route = {
                Point(MAP.BARRENS, 0.524, 0.117, "Control Console",
                    "Travel to Control Console."),
            },
        },
        {
            id = "objective-900-samophlange-1",
            kind = "objective",
            priority = 1220,
            conditions = { level = { min = 10 } },
            text = "Accept Samophlange from Control Console, then shut off the Main Control Valve.",
            dependsOn = { "turnin-894-samophlange" },
            complete = QuestObjective(900, 1, "Shut off Main Control Valve"),
            route = {
                Point(MAP.BARRENS, 0.523, 0.116, "Main Control Valve",
                    "Travel to Main Control Valve."),
            },
        },
        {
            id = "objective-900-samophlange-2",
            kind = "objective",
            priority = 1240,
            conditions = { level = { min = 10 } },
            text = "Samophlange: Shut off Fuel Control Valve.",
            dependsOn = { "turnin-894-samophlange" },
            complete = QuestObjective(900, 2, "Shut off Fuel Control Valve"),
            route = {
                Point(MAP.BARRENS, 0.524, 0.114, "Fuel Control Valve",
                    "Travel to Fuel Control Valve."),
            },
        },
        {
            id = "objective-900-samophlange-3",
            kind = "objective",
            priority = 1250,
            conditions = { level = { min = 10 } },
            text = "Samophlange: Shut off Regulator Valve.",
            dependsOn = { "turnin-894-samophlange" },
            complete = QuestObjective(900, 3, "Shut off Regulator Valve"),
            route = {
                Point(MAP.BARRENS, 0.523, 0.114, "Regulator Valve",
                    "Travel to Regulator Valve."),
            },
        },
        {
            id = "turnin-900-samophlange",
            kind = "turnin",
            priority = 1260,
            conditions = { level = { min = 10 } },
            text = "Turn in Samophlange to Control Console.",
            dependsOn = { "objective-900-samophlange-3" },
            complete = QuestState(900, "completed"),
            route = {
                Point(MAP.BARRENS, 0.524, 0.117, "Control Console",
                    "Travel to Control Console."),
            },
        },
        {
            id = "objective-901-samophlange-1",
            kind = "objective",
            priority = 1270,
            conditions = { level = { min = 10 } },
            text = "Accept Samophlange from Control Console, then recover the Console Key.",
            dependsOn = { "turnin-900-samophlange" },
            complete = QuestObjective(901, 1, "Console Key"),
            route = {
                Point(MAP.BARRENS, 0.528, 0.104, "Tinkerer Sniggles",
                    "Travel to Tinkerer Sniggles."),
            },
        },
        {
            id = "turnin-901-samophlange",
            kind = "turnin",
            priority = 1290,
            conditions = { level = { min = 10 } },
            text = "Turn in Samophlange to Control Console.",
            dependsOn = { "objective-901-samophlange-1" },
            complete = QuestState(901, "completed"),
            route = {
                Point(MAP.BARRENS, 0.524, 0.117, "Control Console",
                    "Travel to Control Console."),
            },
        },
        {
            id = "turnin-902-samophlange",
            kind = "turnin",
            priority = 1300,
            conditions = { level = { min = 10 } },
            text = "Accept Samophlange from Control Console, then turn in Samophlange to Sputtervalve.",
            dependsOn = { "turnin-901-samophlange" },
            complete = QuestState(902, "completed"),
            route = {
                Point(MAP.BARRENS, 0.630, 0.372, "Sputtervalve",
                    "Travel to Sputtervalve."),
            },
        },
        {
            id = "accept-865-raptor-horns",
            kind = "accept",
            priority = 1320,
            conditions = { level = { min = 13 } },
            text = "Accept Raptor Horns from Mebok Mizzyrix.",
            complete = QuestState(865, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.376, "Mebok Mizzyrix",
                    "Travel to Mebok Mizzyrix."),
            },
        },
        {
            id = "objective-865-raptor-horns-1",
            kind = "objective",
            priority = 1330,
            conditions = { level = { min = 13 } },
            text = "Raptor Horns: Intact Raptor Horn.",
            dependsOn = { "accept-865-raptor-horns" },
            complete = QuestObjective(865, 1, "Intact Raptor Horn"),
            route = {
                Point(MAP.BARRENS, 0.591, 0.307, "Sunscale Scytheclaw",
                    "Travel to Sunscale Scytheclaw."),
            },
        },
        {
            id = "turnin-865-raptor-horns",
            kind = "turnin",
            priority = 1340,
            conditions = { level = { min = 13 } },
            text = "Turn in Raptor Horns to Mebok Mizzyrix.",
            dependsOn = { "objective-865-raptor-horns-1" },
            complete = QuestState(865, "completed"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.376, "Mebok Mizzyrix",
                    "Travel to Mebok Mizzyrix."),
            },
        },
        {
            id = "accept-858-ignition",
            kind = "accept",
            priority = 1350,
            conditions = { level = { min = 13 } },
            text = "Accept Ignition from Wizzlecrank's Shredder.",
            complete = QuestState(858, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.564, 0.074, "Wizzlecrank's Shredder",
                    "Travel to Wizzlecrank's Shredder."),
            },
        },
        {
            id = "objective-858-ignition-1",
            kind = "objective",
            priority = 1360,
            conditions = { level = { min = 13 } },
            text = "Ignition: Ignition Key.",
            dependsOn = { "accept-858-ignition" },
            complete = QuestObjective(858, 1, "Ignition Key"),
            route = {
                Point(MAP.BARRENS, 0.562, 0.086, "Supervisor Lugwizzle",
                    "Travel to Supervisor Lugwizzle."),
            },
        },
        {
            id = "turnin-858-ignition",
            kind = "turnin",
            priority = 1370,
            conditions = { level = { min = 13 } },
            text = "Turn in Ignition to Wizzlecrank's Shredder.",
            dependsOn = { "objective-858-ignition-1" },
            complete = QuestState(858, "completed"),
            route = {
                Point(MAP.BARRENS, 0.564, 0.074, "Wizzlecrank's Shredder",
                    "Travel to Wizzlecrank's Shredder."),
            },
        },
        {
            id = "accept-896-miners-fortune",
            kind = "accept",
            priority = 1380,
            conditions = { level = { min = 13 } },
            text = "Accept Miner's Fortune from Wharfmaster Dizzywig.",
            complete = QuestState(896, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.632, 0.384, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
        {
            id = "objective-896-miners-fortune-1",
            kind = "objective",
            priority = 1390,
            conditions = { level = { min = 13 } },
            text = "Miner's Fortune: Cats Eye Emerald.",
            dependsOn = { "accept-896-miners-fortune" },
            complete = QuestObjective(896, 1, "Cats Eye Emerald"),
            route = {
                Point(MAP.BARRENS, 0.603, 0.039, "Venture Co. Enforcer",
                    "Travel to Venture Co. Enforcer."),
            },
        },
        {
            id = "turnin-896-miners-fortune",
            kind = "turnin",
            priority = 1400,
            conditions = { level = { min = 13 } },
            text = "Turn in Miner's Fortune to Wharfmaster Dizzywig.",
            dependsOn = { "objective-896-miners-fortune-1" },
            complete = QuestState(896, "completed"),
            route = {
                Point(MAP.BARRENS, 0.632, 0.384, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
        {
            id = "accept-863-the-escape",
            kind = "accept",
            priority = 1410,
            conditions = { level = { min = 13 } },
            text = "Accept The Escape from Wizzlecrank's Shredder. The escort can be dangerous. Bring a group if you are attacked.",
            complete = QuestState(863, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.564, 0.074, "Wizzlecrank's Shredder",
                    "Travel to Wizzlecrank's Shredder."),
            },
        },
        {
            id = "objective-863-the-escape-1",
            kind = "objective",
            priority = 1420,
            conditions = { level = { min = 13 } },
            text = "The Escape: Escort Wizzlecrank out of the Venture Co. drill site. The escort can be dangerous. Bring a group if you are attacked.",
            dependsOn = { "accept-863-the-escape" },
            complete = QuestObjective(863, 1, "Escort Wizzlecrank out of the Venture Co"),
            route = {
                Point(MAP.BARRENS, 0.564, 0.074, "Wizzlecrank's Shredder",
                    "Travel to Wizzlecrank's Shredder."),
            },
        },
        {
            id = "turnin-863-the-escape",
            kind = "turnin",
            priority = 1430,
            conditions = { level = { min = 13 } },
            text = "Turn in The Escape to Sputtervalve.",
            dependsOn = { "objective-863-the-escape-1" },
            complete = QuestState(863, "completed"),
            route = {
                Point(MAP.BARRENS, 0.630, 0.372, "Sputtervalve",
                    "Travel to Sputtervalve."),
            },
        },
        {
            id = "accept-3921-wenikee-boltbucket",
            kind = "accept",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Wenikee Boltbucket from Sputtervalve.",
            complete = QuestState(3921, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.630, 0.372, "Sputtervalve",
                    "Travel to Sputtervalve."),
            },
        },
        {
            id = "turnin-3921-wenikee-boltbucket",
            kind = "turnin",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Wenikee Boltbucket to Wenikee Boltbucket.",
            dependsOn = { "accept-3921-wenikee-boltbucket" },
            complete = QuestState(3921, "completed"),
            route = {
                Point(MAP.BARRENS, 0.490, 0.112, "Wenikee Boltbucket",
                    "Travel to Wenikee Boltbucket."),
            },
        },
        {
            id = "accept-3922-nugget-slugs",
            kind = "accept",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Nugget Slugs from Wenikee Boltbucket.",
            dependsOn = { "turnin-3921-wenikee-boltbucket" },
            complete = QuestState(3922, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.490, 0.112, "Wenikee Boltbucket",
                    "Travel to Wenikee Boltbucket."),
            },
        },
        {
            id = "objective-3922-nugget-slugs-1",
            kind = "objective",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Nugget Slugs: Nugget Slug.",
            dependsOn = { "accept-3922-nugget-slugs" },
            complete = QuestObjective(3922, 1, "Nugget Slug"),
            route = {
                Point(MAP.BARRENS, 0.565, 0.085, "Nugget Slugs in the Sludge Fen",
                    "Travel to Nugget Slugs in the Sludge Fen."),
            },
        },
        {
            id = "turnin-3922-nugget-slugs",
            kind = "turnin",
            priority = 1480,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Nugget Slugs to Wenikee Boltbucket.",
            dependsOn = { "objective-3922-nugget-slugs-1" },
            complete = QuestState(3922, "completed"),
            route = {
                Point(MAP.BARRENS, 0.490, 0.112, "Wenikee Boltbucket",
                    "Travel to Wenikee Boltbucket."),
            },
        },
        {
            id = "accept-3281-stolen-silver",
            kind = "accept",
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Stolen Silver from Gazrog.",
            dependsOn = { "turnin-869-raptor-thieves" },
            complete = QuestState(3281, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.518, 0.302, "Gazrog",
                    "Travel to Gazrog."),
            },
        },
        {
            id = "objective-3281-stolen-silver-1",
            kind = "objective",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Stolen Silver: Stolen Silver.",
            dependsOn = { "accept-3281-stolen-silver" },
            complete = QuestObjective(3281, 1, "Stolen Silver"),
            route = {
                Point(MAP.BARRENS, 0.581, 0.539, "Stolen Silver in the raptor grounds",
                    "Travel to Stolen Silver in the raptor grounds."),
            },
        },
        {
            id = "turnin-3281-stolen-silver",
            kind = "turnin",
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in Stolen Silver to Gazrog.",
            dependsOn = { "objective-3281-stolen-silver-1" },
            complete = QuestState(3281, "completed"),
            route = {
                Point(MAP.BARRENS, 0.518, 0.302, "Gazrog",
                    "Travel to Gazrog."),
            },
        },
        {
            id = "accept-877-the-stagnant-oasis",
            kind = "accept",
            priority = 1520,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Stagnant Oasis from Tonga Runetotem.",
            dependsOn = { "turnin-870-the-forgotten-pools" },
            complete = QuestState(877, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.318, "Tonga Runetotem",
                    "Travel to Tonga Runetotem."),
            },
        },
        {
            id = "objective-877-the-stagnant-oasis-1",
            kind = "objective",
            priority = 1530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "The Stagnant Oasis: Test the Dried Seeds.",
            dependsOn = { "accept-877-the-stagnant-oasis" },
            complete = QuestObjective(877, 1, "Test the Dried Seeds"),
            route = {
                Point(MAP.BARRENS, 0.556, 0.427, "Bubbling Fissure",
                    "Travel to Bubbling Fissure."),
            },
        },
        {
            id = "turnin-877-the-stagnant-oasis",
            kind = "turnin",
            priority = 1540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Stagnant Oasis to Tonga Runetotem.",
            dependsOn = { "objective-877-the-stagnant-oasis-1" },
            complete = QuestState(877, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.318, "Tonga Runetotem",
                    "Travel to Tonga Runetotem."),
            },
        },
        {
            id = "accept-880-altered-beings",
            kind = "accept",
            priority = 1550,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Altered Beings from Tonga Runetotem.",
            dependsOn = { "turnin-877-the-stagnant-oasis" },
            complete = QuestState(880, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.318, "Tonga Runetotem",
                    "Travel to Tonga Runetotem."),
            },
        },
        {
            id = "objective-880-altered-beings-1",
            kind = "objective",
            priority = 1560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Altered Beings: Altered Snapjaw Shell.",
            dependsOn = { "accept-880-altered-beings" },
            complete = QuestObjective(880, 1, "Altered Snapjaw Shell"),
            route = {
                Point(MAP.BARRENS, 0.520, 0.418, "Oasis Snapjaw",
                    "Travel to Oasis Snapjaw."),
            },
        },
        {
            id = "turnin-880-altered-beings",
            kind = "turnin",
            priority = 1570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Altered Beings to Tonga Runetotem.",
            dependsOn = { "objective-880-altered-beings-1" },
            complete = QuestState(880, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.318, "Tonga Runetotem",
                    "Travel to Tonga Runetotem."),
            },
        },
        {
            id = "accept-3301-mura-runetotem",
            kind = "accept",
            priority = 1580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Mura Runetotem from Tonga Runetotem.",
            complete = QuestState(3301, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.318, "Tonga Runetotem",
                    "Travel to Tonga Runetotem."),
            },
        },
        {
            id = "turnin-3301-mura-runetotem",
            kind = "turnin",
            priority = 1590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Mura Runetotem to Mura Runetotem.",
            dependsOn = { "accept-3301-mura-runetotem" },
            complete = QuestState(3301, "completed"),
            route = {
                Point(MAP.SILVERPINE, 0.430, 0.420, "Mura Runetotem",
                    "Travel to the next zone, then continue to Mura Runetotem."),
            },
        },
        {
            id = "accept-881-echeyakee",
            kind = "accept",
            priority = 1600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Echeyakee from Sergra Darkthorn. This is an elite. Bring a group.",
            dependsOn = { "turnin-903-prowlers-of-the-barrens" },
            complete = QuestState(881, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "objective-881-echeyakee-1",
            kind = "objective",
            priority = 1610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Echeyakee: Echeyakee's Hide. This is an elite. Bring a group.",
            dependsOn = { "accept-881-echeyakee" },
            complete = QuestObjective(881, 1, "Echeyakee's Hide"),
            route = {
                Point(MAP.BARRENS, 0.558, 0.172, "Echeyakee",
                    "Travel to Echeyakee."),
            },
        },
        {
            id = "turnin-881-echeyakee",
            kind = "turnin",
            priority = 1620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Echeyakee to Sergra Darkthorn.",
            dependsOn = { "objective-881-echeyakee-1" },
            complete = QuestState(881, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "accept-905-the-angry-scytheclaws",
            kind = "accept",
            priority = 1630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Angry Scytheclaws from Sergra Darkthorn.",
            dependsOn = { "turnin-881-echeyakee" },
            complete = QuestState(905, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "objective-905-the-angry-scytheclaws-1",
            kind = "objective",
            priority = 1640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "The Angry Scytheclaws: Visit Blue Raptor Nest.",
            dependsOn = { "accept-905-the-angry-scytheclaws" },
            complete = QuestObjective(905, 1, "Visit Blue Raptor Nest"),
            route = {
                Point(MAP.BARRENS, 0.526, 0.461, "Blue Raptor Nest",
                    "Travel to Blue Raptor Nest."),
            },
        },
        {
            id = "objective-905-the-angry-scytheclaws-2",
            kind = "objective",
            priority = 1650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "The Angry Scytheclaws: Visit Yellow Raptor Nest.",
            dependsOn = { "accept-905-the-angry-scytheclaws" },
            complete = QuestObjective(905, 2, "Visit Yellow Raptor Nest"),
            route = {
                Point(MAP.BARRENS, 0.520, 0.465, "Yellow Raptor Nest",
                    "Travel to Yellow Raptor Nest."),
            },
        },
        {
            id = "objective-905-the-angry-scytheclaws-3",
            kind = "objective",
            priority = 1660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "The Angry Scytheclaws: Visit Red Raptor Nest.",
            dependsOn = { "accept-905-the-angry-scytheclaws" },
            complete = QuestObjective(905, 3, "Visit Red Raptor Nest"),
            route = {
                Point(MAP.BARRENS, 0.524, 0.466, "Red Raptor Nest",
                    "Travel to Red Raptor Nest."),
            },
        },
        {
            id = "objective-905-the-angry-scytheclaws-4",
            kind = "objective",
            priority = 1670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "The Angry Scytheclaws: Sunscale Feather.",
            dependsOn = { "accept-905-the-angry-scytheclaws" },
            complete = QuestObjective(905, 4, "Sunscale Feather"),
            route = {
                Point(MAP.BARRENS, 0.567, 0.305, "Sunscale Lashtail",
                    "Travel to Sunscale Lashtail."),
            },
        },
        {
            id = "turnin-905-the-angry-scytheclaws",
            kind = "turnin",
            priority = 1680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Angry Scytheclaws to Sergra Darkthorn.",
            dependsOn = { "objective-905-the-angry-scytheclaws-4" },
            complete = QuestState(905, "completed"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "accept-876-serena-bloodfeather",
            kind = "accept",
            priority = 1690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Serena Bloodfeather from Darsok Swiftdagger. This is an elite. Bring a group.",
            dependsOn = { "turnin-875-harpy-lieutenants" },
            complete = QuestState(876, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.516, 0.308, "Darsok Swiftdagger",
                    "Travel to Darsok Swiftdagger."),
            },
        },
        {
            id = "objective-876-serena-bloodfeather-1",
            kind = "objective",
            priority = 1700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 12 } },
                },
            },
            text = "Serena Bloodfeather: Serena's Head. This is an elite. Bring a group.",
            dependsOn = { "accept-876-serena-bloodfeather" },
            complete = QuestObjective(876, 1, "Serena's Head"),
            route = {
                Point(MAP.BARRENS, 0.394, 0.124, "Serena Bloodfeather",
                    "Travel to Serena Bloodfeather."),
            },
        },
        {
            id = "turnin-876-serena-bloodfeather",
            kind = "turnin",
            priority = 1710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Serena Bloodfeather to Darsok Swiftdagger.",
            dependsOn = { "objective-876-serena-bloodfeather-1" },
            complete = QuestState(876, "completed"),
            route = {
                Point(MAP.BARRENS, 0.516, 0.308, "Darsok Swiftdagger",
                    "Travel to Darsok Swiftdagger."),
            },
        },
        {
            id = "accept-851-verog-the-dervish",
            kind = "accept",
            priority = 1720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Accept Verog the Dervish from Regthar Deathgate. This is an elite. Bring a group.",
            complete = QuestState(851, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.454, 0.284, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "objective-851-verog-the-dervish-1",
            kind = "objective",
            priority = 1730,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Verog the Dervish: Verog's Head. This is an elite. Bring a group.",
            dependsOn = { "accept-851-verog-the-dervish" },
            complete = QuestObjective(851, 1, "Verog's Head"),
            route = {
                Point(MAP.BARRENS, 0.530, 0.416, "Verog the Dervish",
                    "Travel to Verog the Dervish."),
            },
        },
        {
            id = "turnin-851-verog-the-dervish",
            kind = "turnin",
            priority = 1740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Turn in Verog the Dervish to Regthar Deathgate.",
            dependsOn = { "objective-851-verog-the-dervish-1" },
            complete = QuestState(851, "completed"),
            route = {
                Point(MAP.BARRENS, 0.454, 0.284, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "accept-852-hezrul-bloodmark",
            kind = "accept",
            priority = 1750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Accept Hezrul Bloodmark from Regthar Deathgate. This is an elite. Bring a group.",
            dependsOn = { "turnin-851-verog-the-dervish" },
            complete = QuestState(852, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.454, 0.284, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "objective-852-hezrul-bloodmark-1",
            kind = "objective",
            priority = 1760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Hezrul Bloodmark: Hezrul's Head. This is an elite. Bring a group.",
            dependsOn = { "accept-852-hezrul-bloodmark" },
            complete = QuestObjective(852, 1, "Hezrul's Head"),
            route = {
                Point(MAP.BARRENS, 0.462, 0.368, "Hezrul Bloodmark",
                    "Travel to Hezrul Bloodmark."),
            },
        },
        {
            id = "turnin-852-hezrul-bloodmark",
            kind = "turnin",
            priority = 1770,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Turn in Hezrul Bloodmark to Regthar Deathgate.",
            dependsOn = { "objective-852-hezrul-bloodmark-1" },
            complete = QuestState(852, "completed"),
            route = {
                Point(MAP.BARRENS, 0.454, 0.284, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "accept-4021-counterattack",
            kind = "accept",
            priority = 1780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Accept Counterattack! from Regthar Deathgate. This is an elite. Bring a group.",
            complete = QuestState(4021, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.454, 0.284, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "objective-4021-counterattack-1",
            kind = "objective",
            priority = 1790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Counterattack!: Piece of Krom'zar's Banner. This is an elite. Bring a group.",
            dependsOn = { "accept-4021-counterattack" },
            complete = QuestObjective(4021, 1, "Piece of Krom'zar's Banner"),
            route = {
                Point(MAP.BARRENS, 0.446, 0.281, "Krom'zar's Banner",
                    "Travel to Krom'zar's Banner."),
            },
        },
        {
            id = "turnin-4021-counterattack",
            kind = "turnin",
            priority = 1800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 11 } },
                },
            },
            text = "Turn in Counterattack! to Regthar Deathgate.",
            dependsOn = { "objective-4021-counterattack-1" },
            complete = QuestState(4021, "completed"),
            route = {
                Point(MAP.BARRENS, 0.454, 0.284, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "accept-4921-lost-in-battle",
            kind = "accept",
            priority = 1810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Lost in Battle from Mankrik.",
            complete = QuestState(4921, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.520, 0.316, "Mankrik",
                    "Travel to Mankrik."),
            },
        },
        {
            id = "objective-4921-lost-in-battle-1",
            kind = "objective",
            priority = 1820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Lost in Battle: Find Mankrik's Wife.",
            dependsOn = { "accept-4921-lost-in-battle" },
            complete = QuestObjective(4921, 1, "Find Mankrik's Wife"),
            route = {
                Point(MAP.BARRENS, 0.492, 0.504, "Beaten Corpse",
                    "Travel to Beaten Corpse."),
            },
        },
        {
            id = "turnin-4921-lost-in-battle",
            kind = "turnin",
            priority = 1830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Lost in Battle to Mankrik.",
            dependsOn = { "objective-4921-lost-in-battle-1" },
            complete = QuestState(4921, "completed"),
            route = {
                Point(MAP.BARRENS, 0.520, 0.316, "Mankrik",
                    "Travel to Mankrik."),
            },
        },
        {
            id = "accept-899-consumed-by-hatred",
            kind = "accept",
            priority = 1840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Consumed by Hatred from Mankrik.",
            complete = QuestState(899, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.520, 0.316, "Mankrik",
                    "Travel to Mankrik."),
            },
        },
        {
            id = "objective-899-consumed-by-hatred-1",
            kind = "objective",
            priority = 1850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Consumed by Hatred: Bristleback Quilboar Tusk.",
            dependsOn = { "accept-899-consumed-by-hatred" },
            complete = QuestObjective(899, 1, "Bristleback Quilboar Tusk"),
            route = {
                Point(MAP.BARRENS, 0.499, 0.531, "Bristleback Hunter",
                    "Travel to Bristleback Hunter."),
            },
        },
        {
            id = "turnin-899-consumed-by-hatred",
            kind = "turnin",
            priority = 1860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Consumed by Hatred to Mankrik.",
            dependsOn = { "objective-899-consumed-by-hatred-1" },
            complete = QuestState(899, "completed"),
            route = {
                Point(MAP.BARRENS, 0.520, 0.316, "Mankrik",
                    "Travel to Mankrik."),
            },
        },
        {
            id = "accept-95774-her-name-is-olgra",
            kind = "accept",
            priority = 1870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Her Name Is Olgra from Mankrik.",
            dependsOn = { "turnin-4921-lost-in-battle" },
            complete = QuestState(95774, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.520, 0.316, "Mankrik",
                    "Travel to Mankrik."),
            },
        },
        {
            id = "objective-95774-her-name-is-olgra-1",
            kind = "objective",
            priority = 1880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Her Name Is Olgra: Olgra's Adornments.",
            dependsOn = { "accept-95774-her-name-is-olgra" },
            complete = QuestObjective(95774, 1, "Olgra's Adornments"),
            route = {
                Point(MAP.BARRENS, 0.492, 0.504, "Razormane Raider",
                    "Travel to Razormane Raider."),
            },
        },
        {
            id = "turnin-95774-her-name-is-olgra",
            kind = "turnin",
            priority = 1890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Her Name Is Olgra to Mankrik.",
            dependsOn = { "objective-95774-her-name-is-olgra-1" },
            complete = QuestState(95774, "completed"),
            route = {
                Point(MAP.BARRENS, 0.520, 0.316, "Mankrik",
                    "Travel to Mankrik."),
            },
        },
        {
            id = "accept-891-the-guns-of-northwatch",
            kind = "accept",
            priority = 1900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 13 } },
                },
            },
            text = "Accept The Guns of Northwatch from Captain Thalo'thas Brightsun.",
            complete = QuestState(891, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.390, "Captain Thalo'thas Brightsun",
                    "Travel to Captain Thalo'thas Brightsun."),
            },
        },
        {
            id = "objective-891-the-guns-of-northwatch-1",
            kind = "objective",
            priority = 1910,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 13 } },
                },
            },
            text = "The Guns of Northwatch: Captain Fairmount slain.",
            dependsOn = { "accept-891-the-guns-of-northwatch" },
            complete = QuestObjective(891, 1, "Captain Fairmount slain"),
            route = {
                Point(MAP.BARRENS, 0.618, 0.548, "Captain Fairmount",
                    "Travel to Captain Fairmount."),
            },
        },
        {
            id = "objective-891-the-guns-of-northwatch-2",
            kind = "objective",
            priority = 1920,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 13 } },
                },
            },
            text = "The Guns of Northwatch: Cannoneer Whessan slain.",
            dependsOn = { "accept-891-the-guns-of-northwatch" },
            complete = QuestObjective(891, 2, "Cannoneer Whessan slain"),
            route = {
                Point(MAP.BARRENS, 0.604, 0.548, "Cannoneer Whessan",
                    "Travel to Cannoneer Whessan."),
            },
        },
        {
            id = "objective-891-the-guns-of-northwatch-3",
            kind = "objective",
            priority = 1930,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 13 } },
                },
            },
            text = "The Guns of Northwatch: Cannoneer Smythe slain.",
            dependsOn = { "accept-891-the-guns-of-northwatch" },
            complete = QuestObjective(891, 3, "Cannoneer Smythe slain"),
            route = {
                Point(MAP.BARRENS, 0.630, 0.566, "Cannoneer Smythe",
                    "Travel to Cannoneer Smythe."),
            },
        },
        {
            id = "objective-891-the-guns-of-northwatch-4",
            kind = "objective",
            priority = 1940,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 13 } },
                },
            },
            text = "The Guns of Northwatch: Theramore Medal.",
            dependsOn = { "accept-891-the-guns-of-northwatch" },
            complete = QuestObjective(891, 4, "Theramore Medal"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.558, "Theramore Marine",
                    "Travel to Theramore Marine."),
            },
        },
        {
            id = "turnin-891-the-guns-of-northwatch",
            kind = "turnin",
            priority = 1950,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 13 } },
                },
            },
            text = "Turn in The Guns of Northwatch to Captain Thalo'thas Brightsun.",
            dependsOn = { "objective-891-the-guns-of-northwatch-4" },
            complete = QuestState(891, "completed"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.390, "Captain Thalo'thas Brightsun",
                    "Travel to Captain Thalo'thas Brightsun."),
            },
        },
        {
            id = "accept-898-free-from-the-hold",
            kind = "accept",
            priority = 1960,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 13 } },
                },
            },
            text = "Accept Free From the Hold from Gilthares Firebough. The escort can be dangerous. Bring a group if you are attacked.",
            complete = QuestState(898, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.618, 0.548, "Gilthares Firebough",
                    "Travel to Gilthares Firebough."),
            },
        },
        {
            id = "objective-898-free-from-the-hold-1",
            kind = "objective",
            priority = 1970,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 13 } },
                },
            },
            text = "Free From the Hold: Escort Gilthares Firebough back to Ratchet. The escort can be dangerous. Bring a group if you are attacked.",
            dependsOn = { "accept-898-free-from-the-hold" },
            complete = QuestObjective(898, 1, "Escort Gilthares Firebough back to Ratch"),
            route = {
                Point(MAP.BARRENS, 0.618, 0.548, "Gilthares Firebough",
                    "Travel to Gilthares Firebough."),
            },
        },
        {
            id = "turnin-898-free-from-the-hold",
            kind = "turnin",
            priority = 1980,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 13 } },
                },
            },
            text = "Turn in Free From the Hold to Captain Thalo'thas Brightsun.",
            dependsOn = { "objective-898-free-from-the-hold-1" },
            complete = QuestState(898, "completed"),
            route = {
                Point(MAP.BARRENS, 0.622, 0.390, "Captain Thalo'thas Brightsun",
                    "Travel to Captain Thalo'thas Brightsun."),
            },
        },
        {
            id = "accept-3261-jorn-skyseer",
            kind = "accept",
            priority = 1990,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Jorn Skyseer from Sergra Darkthorn.",
            dependsOn = { "turnin-905-the-angry-scytheclaws" },
            complete = QuestState(3261, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.522, 0.310, "Sergra Darkthorn",
                    "Travel to Sergra Darkthorn."),
            },
        },
        {
            id = "turnin-3261-jorn-skyseer",
            kind = "turnin",
            priority = 2000,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Jorn Skyseer to Jorn Skyseer.",
            dependsOn = { "accept-3261-jorn-skyseer" },
            complete = QuestState(3261, "completed"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "accept-882-ishamuhale",
            kind = "accept",
            priority = 2010,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Ishamuhale from Jorn Skyseer. This is an elite. Bring a group.",
            dependsOn = { "turnin-3261-jorn-skyseer" },
            complete = QuestState(882, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "objective-882-ishamuhale-1",
            kind = "objective",
            priority = 2020,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Ishamuhale: Ishamuhale's Fang. This is an elite. Bring a group.",
            dependsOn = { "accept-882-ishamuhale" },
            complete = QuestObjective(882, 1, "Ishamuhale's Fang"),
            route = {
                Point(MAP.BARRENS, 0.598, 0.304, "Ishamuhale",
                    "Travel to Ishamuhale."),
            },
        },
        {
            id = "objective-882-ishamuhale-2",
            kind = "objective",
            priority = 2030,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Ishamuhale: Fresh Zhevra Carcass. This is an elite. Bring a group.",
            dependsOn = { "accept-882-ishamuhale" },
            complete = QuestObjective(882, 2, "Fresh Zhevra Carcass"),
            route = {
                Point(MAP.BARRENS, 0.455, 0.430, "Zhevra Runner",
                    "Travel to Zhevra Runner."),
            },
        },
        {
            id = "turnin-882-ishamuhale",
            kind = "turnin",
            priority = 2040,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Ishamuhale to Jorn Skyseer.",
            dependsOn = { "objective-882-ishamuhale-2" },
            complete = QuestState(882, "completed"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "accept-907-enraged-thunder-lizards",
            kind = "accept",
            priority = 2050,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Enraged Thunder Lizards from Jorn Skyseer.",
            dependsOn = { "turnin-882-ishamuhale" },
            complete = QuestState(907, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "objective-907-enraged-thunder-lizards-1",
            kind = "objective",
            priority = 2060,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Enraged Thunder Lizards: Thunder Lizard Blood.",
            dependsOn = { "accept-907-enraged-thunder-lizards" },
            complete = QuestObjective(907, 1, "Thunder Lizard Blood"),
            route = {
                Point(MAP.BARRENS, 0.481, 0.633, "Stormhide",
                    "Travel to Stormhide."),
            },
        },
        {
            id = "turnin-907-enraged-thunder-lizards",
            kind = "turnin",
            priority = 2070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Enraged Thunder Lizards to Jorn Skyseer.",
            dependsOn = { "objective-907-enraged-thunder-lizards-1" },
            complete = QuestState(907, "completed"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "accept-913-cry-of-the-thunderhawk",
            kind = "accept",
            priority = 2080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Cry of the Thunderhawk from Jorn Skyseer.",
            dependsOn = { "turnin-907-enraged-thunder-lizards" },
            complete = QuestState(913, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "objective-913-cry-of-the-thunderhawk-1",
            kind = "objective",
            priority = 2090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Cry of the Thunderhawk: Thunderhawk Wings.",
            dependsOn = { "accept-913-cry-of-the-thunderhawk" },
            complete = QuestObjective(913, 1, "Thunderhawk Wings"),
            route = {
                Point(MAP.BARRENS, 0.455, 0.593, "Thunderhawk Hatchling",
                    "Travel to Thunderhawk Hatchling."),
            },
        },
        {
            id = "turnin-913-cry-of-the-thunderhawk",
            kind = "turnin",
            priority = 2100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Cry of the Thunderhawk to Jorn Skyseer.",
            dependsOn = { "objective-913-cry-of-the-thunderhawk-1" },
            complete = QuestState(913, "completed"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "accept-874-mahren-skyseer",
            kind = "accept",
            priority = 2110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Mahren Skyseer from Jorn Skyseer.",
            dependsOn = { "turnin-913-cry-of-the-thunderhawk" },
            complete = QuestState(874, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "turnin-874-mahren-skyseer",
            kind = "turnin",
            priority = 2120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in Mahren Skyseer to Mahren Skyseer.",
            dependsOn = { "accept-874-mahren-skyseer" },
            complete = QuestState(874, "completed"),
            route = {
                Point(MAP.BARRENS, 0.658, 0.438, "Mahren Skyseer",
                    "Travel to Mahren Skyseer."),
            },
        },
        {
            id = "accept-873-isha-awak",
            kind = "accept",
            priority = 2130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Isha Awak from Mahren Skyseer. This is an elite. Bring a group.",
            dependsOn = { "turnin-874-mahren-skyseer" },
            complete = QuestState(873, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.658, 0.438, "Mahren Skyseer",
                    "Travel to Mahren Skyseer."),
            },
        },
        {
            id = "objective-873-isha-awak-1",
            kind = "objective",
            priority = 2140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Isha Awak: Heart of Isha Awak. This is an elite. Bring a group.",
            dependsOn = { "accept-873-isha-awak" },
            complete = QuestObjective(873, 1, "Heart of Isha Awak"),
            route = {
                Point(MAP.BARRENS, 0.642, 0.506, "Isha Awak",
                    "Travel to Isha Awak."),
            },
        },
        {
            id = "turnin-873-isha-awak",
            kind = "turnin",
            priority = 2150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Isha Awak to Mahren Skyseer.",
            dependsOn = { "objective-873-isha-awak-1" },
            complete = QuestState(873, "completed"),
            route = {
                Point(MAP.BARRENS, 0.658, 0.438, "Mahren Skyseer",
                    "Travel to Mahren Skyseer."),
            },
        },
        {
            id = "accept-883-lakotamani",
            kind = "accept",
            priority = 2160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Loot the item that starts Lakota'mani. This is an elite. Bring a group.",
            complete = QuestState(883, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "turnin-883-lakotamani",
            kind = "turnin",
            priority = 2170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Lakota'mani to Jorn Skyseer. This is an elite. Bring a group.",
            dependsOn = { "accept-883-lakotamani" },
            complete = QuestState(883, "completed"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "accept-884-owatanka",
            kind = "accept",
            priority = 2180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Loot the item that starts Owatanka. This is an elite. Bring a group.",
            complete = QuestState(884, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "turnin-884-owatanka",
            kind = "turnin",
            priority = 2190,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Owatanka to Jorn Skyseer. This is an elite. Bring a group.",
            dependsOn = { "accept-884-owatanka" },
            complete = QuestState(884, "completed"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "accept-885-washte-pawne",
            kind = "accept",
            priority = 2200,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Loot the item that starts Washte Pawne. This is an elite. Bring a group.",
            complete = QuestState(885, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "turnin-885-washte-pawne",
            kind = "turnin",
            priority = 2210,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Washte Pawne to Jorn Skyseer. This is an elite. Bring a group.",
            dependsOn = { "accept-885-washte-pawne" },
            complete = QuestState(885, "completed"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "accept-897-the-harvester",
            kind = "accept",
            priority = 2220,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Loot the item that starts The Harvester. This is an elite. Bring a group.",
            complete = QuestState(897, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "turnin-897-the-harvester",
            kind = "turnin",
            priority = 2230,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Harvester to Jorn Skyseer. This is an elite. Bring a group.",
            dependsOn = { "accept-897-the-harvester" },
            complete = QuestState(897, "completed"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "accept-5052-blood-shards-of-agamaggan",
            kind = "accept",
            priority = 2240,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Blood Shards of Agamaggan from Mangletooth.",
            complete = QuestState(5052, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.446, 0.592, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "objective-5052-blood-shards-of-agamaggan-1",
            kind = "objective",
            priority = 2250,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Blood Shards of Agamaggan: Blood Shard.",
            dependsOn = { "accept-5052-blood-shards-of-agamaggan" },
            complete = QuestObjective(5052, 1, "Blood Shard"),
            route = {
                Point(MAP.BARRENS, 0.499, 0.531, "Bristleback Hunter",
                    "Travel to Bristleback Hunter."),
            },
        },
        {
            id = "turnin-5052-blood-shards-of-agamaggan",
            kind = "turnin",
            priority = 2260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Blood Shards of Agamaggan to Mangletooth.",
            dependsOn = { "objective-5052-blood-shards-of-agamaggan-1" },
            complete = QuestState(5052, "completed"),
            route = {
                Point(MAP.BARRENS, 0.446, 0.592, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "accept-878-tribes-at-war",
            kind = "accept",
            priority = 2270,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Tribes at War from Mangletooth.",
            complete = QuestState(878, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.446, 0.592, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "objective-878-tribes-at-war-1",
            kind = "objective",
            priority = 2280,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Tribes at War: Bristleback Water Seeker slain.",
            dependsOn = { "accept-878-tribes-at-war" },
            complete = QuestObjective(878, 1, "Bristleback Water Seeker slain"),
            route = {
                Point(MAP.BARRENS, 0.526, 0.526, "Bristleback Water Seeker",
                    "Travel to Bristleback Water Seeker."),
            },
        },
        {
            id = "objective-878-tribes-at-war-2",
            kind = "objective",
            priority = 2290,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Tribes at War: Bristleback Thornweaver slain.",
            dependsOn = { "accept-878-tribes-at-war" },
            complete = QuestObjective(878, 2, "Bristleback Thornweaver slain"),
            route = {
                Point(MAP.BARRENS, 0.432, 0.524, "Bristleback Thornweaver",
                    "Travel to Bristleback Thornweaver."),
            },
        },
        {
            id = "objective-878-tribes-at-war-3",
            kind = "objective",
            priority = 2300,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Tribes at War: Bristleback Geomancer slain.",
            dependsOn = { "accept-878-tribes-at-war" },
            complete = QuestObjective(878, 3, "Bristleback Geomancer slain"),
            route = {
                Point(MAP.BARRENS, 0.526, 0.532, "Bristleback Geomancer",
                    "Travel to Bristleback Geomancer."),
            },
        },
        {
            id = "turnin-878-tribes-at-war",
            kind = "turnin",
            priority = 2310,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Tribes at War to Mangletooth.",
            dependsOn = { "objective-878-tribes-at-war-3" },
            complete = QuestState(878, "completed"),
            route = {
                Point(MAP.BARRENS, 0.446, 0.592, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "accept-879-betrayal-from-within",
            kind = "accept",
            priority = 2320,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept Betrayal from Within from Mangletooth.",
            complete = QuestState(879, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.446, 0.592, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "objective-879-betrayal-from-within-1",
            kind = "objective",
            priority = 2330,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Betrayal from Within: Kuz's Skull.",
            dependsOn = { "accept-879-betrayal-from-within" },
            complete = QuestObjective(879, 1, "Kuz's Skull"),
            route = {
                Point(MAP.BARRENS, 0.438, 0.794, "Kuz",
                    "Travel to Kuz."),
            },
        },
        {
            id = "objective-879-betrayal-from-within-2",
            kind = "objective",
            priority = 2340,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Betrayal from Within: Nak's Skull.",
            dependsOn = { "accept-879-betrayal-from-within" },
            complete = QuestObjective(879, 2, "Nak's Skull"),
            route = {
                Point(MAP.BARRENS, 0.438, 0.832, "Nak",
                    "Travel to Nak."),
            },
        },
        {
            id = "objective-879-betrayal-from-within-3",
            kind = "objective",
            priority = 2350,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Betrayal from Within: Lok's Skull.",
            dependsOn = { "accept-879-betrayal-from-within" },
            complete = QuestObjective(879, 3, "Lok's Skull"),
            route = {
                Point(MAP.BARRENS, 0.402, 0.806, "Lok Orcbane",
                    "Travel to Lok Orcbane."),
            },
        },
        {
            id = "turnin-879-betrayal-from-within",
            kind = "turnin",
            priority = 2360,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in Betrayal from Within to Mangletooth.",
            dependsOn = { "objective-879-betrayal-from-within-3" },
            complete = QuestState(879, "completed"),
            route = {
                Point(MAP.BARRENS, 0.446, 0.592, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "accept-906-betrayal-from-within",
            kind = "accept",
            priority = 2370,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept Betrayal from Within from Mangletooth.",
            dependsOn = { "turnin-879-betrayal-from-within" },
            complete = QuestState(906, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.446, 0.592, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "turnin-906-betrayal-from-within",
            kind = "turnin",
            priority = 2380,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in Betrayal from Within to Thork.",
            dependsOn = { "accept-906-betrayal-from-within" },
            complete = QuestState(906, "completed"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.308, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "accept-893-weapons-of-choice",
            kind = "accept",
            priority = 2390,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept Weapons of Choice from Tatternack Steelforge.",
            complete = QuestState(893, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.450, 0.576, "Tatternack Steelforge",
                    "Travel to Tatternack Steelforge."),
            },
        },
        {
            id = "objective-893-weapons-of-choice-1",
            kind = "objective",
            priority = 2400,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Weapons of Choice: Razormane Backstabber.",
            dependsOn = { "accept-893-weapons-of-choice" },
            complete = QuestObjective(893, 1, "Razormane Backstabber"),
            route = {
                Point(MAP.BARRENS, 0.430, 0.800, "Razormane Backstabber",
                    "Travel to Razormane Backstabber."),
            },
        },
        {
            id = "objective-893-weapons-of-choice-2",
            kind = "objective",
            priority = 2410,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Weapons of Choice: Charred Razormane Wand.",
            dependsOn = { "accept-893-weapons-of-choice" },
            complete = QuestObjective(893, 2, "Charred Razormane Wand"),
            route = {
                Point(MAP.BARRENS, 0.420, 0.800, "Charred Razormane Wand",
                    "Travel to Charred Razormane Wand."),
            },
        },
        {
            id = "objective-893-weapons-of-choice-3",
            kind = "objective",
            priority = 2420,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Weapons of Choice: Razormane War Shield.",
            dependsOn = { "accept-893-weapons-of-choice" },
            complete = QuestObjective(893, 3, "Razormane War Shield"),
            route = {
                Point(MAP.BARRENS, 0.410, 0.808, "Razormane War Shield",
                    "Travel to Razormane War Shield."),
            },
        },
        {
            id = "turnin-893-weapons-of-choice",
            kind = "turnin",
            priority = 2430,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in Weapons of Choice to Tatternack Steelforge.",
            dependsOn = { "objective-893-weapons-of-choice-3" },
            complete = QuestState(893, "completed"),
            route = {
                Point(MAP.BARRENS, 0.450, 0.576, "Tatternack Steelforge",
                    "Travel to Tatternack Steelforge."),
            },
        },
        {
            id = "accept-1153-a-new-ore-sample",
            kind = "accept",
            priority = 2440,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 25 } },
                },
            },
            text = "Accept A New Ore Sample from Tatternack Steelforge.",
            complete = QuestState(1153, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.450, 0.576, "Tatternack Steelforge",
                    "Travel to Tatternack Steelforge."),
            },
        },
        {
            id = "objective-1153-a-new-ore-sample-1",
            kind = "objective",
            priority = 2450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 25 } },
                },
            },
            text = "A New Ore Sample: Unrefined Ore Sample.",
            dependsOn = { "accept-1153-a-new-ore-sample" },
            complete = QuestObjective(1153, 1, "Unrefined Ore Sample"),
            route = {
                Point(MAP.BARRENS, 0.478, 0.850, "Unrefined ore near Bael Modan",
                    "Travel to Unrefined ore near Bael Modan."),
            },
        },
        {
            id = "turnin-1153-a-new-ore-sample",
            kind = "turnin",
            priority = 2460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 25 } },
                },
            },
            text = "Turn in A New Ore Sample to Tatternack Steelforge.",
            dependsOn = { "objective-1153-a-new-ore-sample-1" },
            complete = QuestState(1153, "completed"),
            route = {
                Point(MAP.BARRENS, 0.450, 0.576, "Tatternack Steelforge",
                    "Travel to Tatternack Steelforge."),
            },
        },
        {
            id = "accept-97250-wrongly-blamed-justly-corrected",
            kind = "accept",
            priority = 2470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Accept Wrongly Blamed, Justly Corrected from Grunt Logmar. This is an elite. Bring a group.",
            complete = QuestState(97250, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.446, 0.592, "Grunt Logmar",
                    "Travel to Grunt Logmar."),
            },
        },
        {
            id = "objective-97250-wrongly-blamed-justly-corrected-1",
            kind = "objective",
            priority = 2480,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Wrongly Blamed, Justly Corrected: Encroaching Soldier slain. This is an elite. Bring a group.",
            dependsOn = { "accept-97250-wrongly-blamed-justly-corrected" },
            complete = QuestObjective(97250, 1, "Encroaching Soldier slain"),
            route = {
                Point(MAP.BARRENS, 0.490, 0.770, "Encroaching Soldier",
                    "Travel to Encroaching Soldier."),
            },
        },
        {
            id = "objective-97250-wrongly-blamed-justly-corrected-2",
            kind = "objective",
            priority = 2490,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Wrongly Blamed, Justly Corrected: Outraged Pillager slain. This is an elite. Bring a group.",
            dependsOn = { "accept-97250-wrongly-blamed-justly-corrected" },
            complete = QuestObjective(97250, 2, "Outraged Pillager slain"),
            route = {
                Point(MAP.BARRENS, 0.490, 0.772, "Outraged Pillager",
                    "Travel to Outraged Pillager."),
            },
        },
        {
            id = "turnin-97250-wrongly-blamed-justly-corrected",
            kind = "turnin",
            priority = 2500,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Wrongly Blamed, Justly Corrected to Grunt Logmar.",
            dependsOn = { "objective-97250-wrongly-blamed-justly-corrected-2" },
            complete = QuestState(97250, "completed"),
            route = {
                Point(MAP.BARRENS, 0.446, 0.592, "Grunt Logmar",
                    "Travel to Grunt Logmar."),
            },
        },
        {
            id = "accept-98093-field-to-clear",
            kind = "accept",
            priority = 2510,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Accept Field to Clear from [UNUSED] Sulhasa.",
            complete = QuestState(98093, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.478, 0.776, "[UNUSED] Sulhasa",
                    "Travel to [UNUSED] Sulhasa."),
            },
        },
        {
            id = "objective-98093-field-to-clear-1",
            kind = "objective",
            priority = 2520,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Field to Clear: Hecklefang Stalker slain.",
            dependsOn = { "accept-98093-field-to-clear" },
            complete = QuestObjective(98093, 1, "Hecklefang Stalker slain"),
            route = {
                Point(MAP.BARRENS, 0.458, 0.828, "Hecklefang Stalker",
                    "Travel to Hecklefang Stalker."),
            },
        },
        {
            id = "objective-98093-field-to-clear-2",
            kind = "objective",
            priority = 2530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Field to Clear: Stormhide slain.",
            dependsOn = { "accept-98093-field-to-clear" },
            complete = QuestObjective(98093, 2, "Stormhide slain"),
            route = {
                Point(MAP.BARRENS, 0.464, 0.798, "Stormhide",
                    "Travel to Stormhide."),
            },
        },
        {
            id = "turnin-98093-field-to-clear",
            kind = "turnin",
            priority = 2540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Field to Clear to [UNUSED] Sulhasa.",
            dependsOn = { "objective-98093-field-to-clear-2" },
            complete = QuestState(98093, "completed"),
            route = {
                Point(MAP.BARRENS, 0.478, 0.776, "[UNUSED] Sulhasa",
                    "Travel to [UNUSED] Sulhasa."),
            },
        },
        {
            id = "accept-843-ganns-reclamation",
            kind = "accept",
            priority = 2550,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept Gann's Reclamation from Gann Stonespire.",
            complete = QuestState(843, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.460, 0.754, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "objective-843-ganns-reclamation-1",
            kind = "objective",
            priority = 2560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Gann's Reclamation: Bael'dun Excavator slain.",
            dependsOn = { "accept-843-ganns-reclamation" },
            complete = QuestObjective(843, 1, "Bael'dun Excavator slain"),
            route = {
                Point(MAP.BARRENS, 0.480, 0.858, "Bael'dun Excavator",
                    "Travel to Bael'dun Excavator."),
            },
        },
        {
            id = "objective-843-ganns-reclamation-2",
            kind = "objective",
            priority = 2570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Gann's Reclamation: Bael'dun Foreman slain.",
            dependsOn = { "accept-843-ganns-reclamation" },
            complete = QuestObjective(843, 2, "Bael'dun Foreman slain"),
            route = {
                Point(MAP.BARRENS, 0.474, 0.850, "Bael'dun Foreman",
                    "Travel to Bael'dun Foreman."),
            },
        },
        {
            id = "objective-843-ganns-reclamation-3",
            kind = "objective",
            priority = 2580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Gann's Reclamation: Khazgorm's Journal.",
            dependsOn = { "accept-843-ganns-reclamation" },
            complete = QuestObjective(843, 3, "Khazgorm's Journal"),
            route = {
                Point(MAP.BARRENS, 0.478, 0.856, "Prospector Khazgorm",
                    "Travel to Prospector Khazgorm."),
            },
        },
        {
            id = "turnin-843-ganns-reclamation",
            kind = "turnin",
            priority = 2590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in Gann's Reclamation to Gann Stonespire.",
            dependsOn = { "objective-843-ganns-reclamation-3" },
            complete = QuestState(843, "completed"),
            route = {
                Point(MAP.BARRENS, 0.460, 0.754, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "accept-846-revenge-of-gann",
            kind = "accept",
            priority = 2600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept Revenge of Gann from Gann Stonespire.",
            dependsOn = { "turnin-843-ganns-reclamation" },
            complete = QuestState(846, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.460, 0.754, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "objective-846-revenge-of-gann-1",
            kind = "objective",
            priority = 2610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Revenge of Gann: Nitroglycerin.",
            dependsOn = { "accept-846-revenge-of-gann" },
            complete = QuestObjective(846, 1, "Nitroglycerin"),
            route = {
                Point(MAP.BARRENS, 0.486, 0.846, "Nitroglycerin at Bael Modan",
                    "Travel to Nitroglycerin at Bael Modan."),
            },
        },
        {
            id = "objective-846-revenge-of-gann-2",
            kind = "objective",
            priority = 2620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Revenge of Gann: Wood Pulp.",
            dependsOn = { "accept-846-revenge-of-gann" },
            complete = QuestObjective(846, 2, "Wood Pulp"),
            route = {
                Point(MAP.BARRENS, 0.486, 0.846, "Wood Pulp at Bael Modan",
                    "Travel to Wood Pulp at Bael Modan."),
            },
        },
        {
            id = "objective-846-revenge-of-gann-3",
            kind = "objective",
            priority = 2630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Revenge of Gann: Sodium Nitrate.",
            dependsOn = { "accept-846-revenge-of-gann" },
            complete = QuestObjective(846, 3, "Sodium Nitrate"),
            route = {
                Point(MAP.BARRENS, 0.470, 0.856, "Sodium Nitrate at Bael Modan",
                    "Travel to Sodium Nitrate at Bael Modan."),
            },
        },
        {
            id = "turnin-846-revenge-of-gann",
            kind = "turnin",
            priority = 2640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in Revenge of Gann to Gann Stonespire.",
            dependsOn = { "objective-846-revenge-of-gann-3" },
            complete = QuestState(846, "completed"),
            route = {
                Point(MAP.BARRENS, 0.460, 0.754, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "accept-849-revenge-of-gann",
            kind = "accept",
            priority = 2650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept Revenge of Gann from Gann Stonespire.",
            dependsOn = { "turnin-846-revenge-of-gann" },
            complete = QuestState(849, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.460, 0.754, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "objective-849-revenge-of-gann-1",
            kind = "objective",
            priority = 2660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Revenge of Gann: Bael Modan Flying Machine destroyed.",
            dependsOn = { "accept-849-revenge-of-gann" },
            complete = QuestObjective(849, 1, "Bael Modan Flying Machine destroyed"),
            route = {
                Point(MAP.BARRENS, 0.488, 0.858, "Bael Modan Flying Machine",
                    "Travel to Bael Modan Flying Machine."),
            },
        },
        {
            id = "turnin-849-revenge-of-gann",
            kind = "turnin",
            priority = 2670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in Revenge of Gann to Gann Stonespire.",
            dependsOn = { "objective-849-revenge-of-gann-1" },
            complete = QuestState(849, "completed"),
            route = {
                Point(MAP.BARRENS, 0.460, 0.754, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "accept-79192-stepping-stones",
            kind = "accept",
            priority = 2680,
            conditions = { level = { min = 14 } },
            text = "Accept Stepping Stones from Burned-Out Remains. If it is not offered, finish ...and that note you found first.",
            complete = QuestState(79192, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.464, 0.739, "Burned-Out Remains",
                    "Travel to Burned-Out Remains."),
            },
        },
        {
            id = "turnin-79192-stepping-stones",
            kind = "turnin",
            priority = 2690,
            conditions = { level = { min = 14 } },
            text = "Turn in Stepping Stones to Pocket Litter.",
            dependsOn = { "accept-79192-stepping-stones" },
            complete = QuestState(79192, "completed"),
            route = {
                Point(MAP.STONETALON, 0.408, 0.525, "Pocket Litter",
                    "Travel to the next zone, then continue to Pocket Litter."),
            },
        },
        {
            id = "accept-868-egg-hunt",
            kind = "accept",
            priority = 2700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept Egg Hunt from Korran.",
            complete = QuestState(868, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.510, 0.296, "Korran",
                    "Travel to Korran."),
            },
        },
        {
            id = "objective-868-egg-hunt-1",
            kind = "objective",
            priority = 2710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Egg Hunt: Silithid Egg.",
            dependsOn = { "accept-868-egg-hunt" },
            complete = QuestObjective(868, 1, "Silithid Egg"),
            route = {
                Point(MAP.BARRENS, 0.478, 0.702, "Silithid Harvester",
                    "Travel to Silithid Harvester."),
            },
        },
        {
            id = "turnin-868-egg-hunt",
            kind = "turnin",
            priority = 2720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in Egg Hunt to Korran.",
            dependsOn = { "objective-868-egg-hunt-1" },
            complete = QuestState(868, "completed"),
            route = {
                Point(MAP.BARRENS, 0.510, 0.296, "Korran",
                    "Travel to Korran."),
            },
        },
        {
            id = "accept-1069-deepmoss-spider-eggs",
            kind = "accept",
            priority = 2730,
            conditions = { level = { min = 15 } },
            text = "Accept Deepmoss Spider Eggs from Mebok Mizzyrix.",
            complete = QuestState(1069, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.376, "Mebok Mizzyrix",
                    "Travel to Mebok Mizzyrix."),
            },
        },
        {
            id = "objective-1069-deepmoss-spider-eggs-1",
            kind = "objective",
            priority = 2740,
            conditions = { level = { min = 15 } },
            text = "Deepmoss Spider Eggs: Deepmoss Egg.",
            dependsOn = { "accept-1069-deepmoss-spider-eggs" },
            complete = QuestObjective(1069, 1, "Deepmoss Egg"),
            route = {
                Point(MAP.STONETALON, 0.548, 0.762, "Deepmoss spiders in the Charred Vale",
                    "Travel to the next zone, then continue to Deepmoss spiders in the Charred Vale."),
            },
        },
        {
            id = "turnin-1069-deepmoss-spider-eggs",
            kind = "turnin",
            priority = 2750,
            conditions = { level = { min = 15 } },
            text = "Turn in Deepmoss Spider Eggs to Mebok Mizzyrix.",
            dependsOn = { "objective-1069-deepmoss-spider-eggs-1" },
            complete = QuestState(1069, "completed"),
            route = {
                Point(MAP.BARRENS, 0.624, 0.376, "Mebok Mizzyrix",
                    "Travel to Mebok Mizzyrix."),
            },
        },
        {
            id = "accept-1060-letter-to-jinzil",
            kind = "accept",
            priority = 2760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Letter to Jin'Zil from Darsok Swiftdagger.",
            complete = QuestState(1060, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.516, 0.308, "Darsok Swiftdagger",
                    "Travel to Darsok Swiftdagger."),
            },
        },
        {
            id = "turnin-1060-letter-to-jinzil",
            kind = "turnin",
            priority = 2770,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Letter to Jin'Zil to Witch Doctor Jin'Zil.",
            dependsOn = { "accept-1060-letter-to-jinzil" },
            complete = QuestState(1060, "completed"),
            route = {
                Point(MAP.STONETALON, 0.744, 0.978, "Witch Doctor Jin'Zil",
                    "Travel to the next zone, then continue to Witch Doctor Jin'Zil."),
            },
        },
        {
            id = "accept-1483-ziz-fizziks",
            kind = "accept",
            priority = 2780,
            conditions = { level = { min = 16 } },
            text = "Accept Ziz Fizziks from Sputtervalve.",
            complete = QuestState(1483, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.630, 0.372, "Sputtervalve",
                    "Travel to Sputtervalve."),
            },
        },
        {
            id = "turnin-1483-ziz-fizziks",
            kind = "turnin",
            priority = 2790,
            conditions = { level = { min = 16 } },
            text = "Turn in Ziz Fizziks to Ziz Fizziks.",
            dependsOn = { "accept-1483-ziz-fizziks" },
            complete = QuestState(1483, "completed"),
            route = {
                Point(MAP.STONETALON, 0.590, 0.624, "Ziz Fizziks",
                    "Travel to the next zone, then continue to Ziz Fizziks."),
            },
        },
        {
            id = "accept-1145-the-swarm-grows",
            kind = "accept",
            priority = 2800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 29 } },
                },
            },
            text = "Accept The Swarm Grows from Korran.",
            complete = QuestState(1145, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.510, 0.296, "Korran",
                    "Travel to Korran."),
            },
        },
        {
            id = "turnin-1145-the-swarm-grows",
            kind = "turnin",
            priority = 2810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 29 } },
                },
            },
            text = "Turn in The Swarm Grows to Belgrom Rockmaul.",
            dependsOn = { "accept-1145-the-swarm-grows" },
            complete = QuestState(1145, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.750, 0.342, "Belgrom Rockmaul",
                    "Travel to the next zone, then continue to Belgrom Rockmaul."),
            },
        },
        {
            id = "accept-6541-report-to-kadrak",
            kind = "accept",
            priority = 2820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept Report to Kadrak from Thork.",
            complete = QuestState(6541, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.308, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "turnin-6541-report-to-kadrak",
            kind = "turnin",
            priority = 2830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in Report to Kadrak to Kadrak.",
            dependsOn = { "accept-6541-report-to-kadrak" },
            complete = QuestState(6541, "completed"),
            route = {
                Point(MAP.BARRENS, 0.480, 0.054, "Kadrak",
                    "Travel to Kadrak."),
            },
        },
        {
            id = "accept-6543-the-warsong-reports",
            kind = "accept",
            priority = 2840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept The Warsong Reports from Kadrak.",
            dependsOn = { "turnin-6541-report-to-kadrak" },
            complete = QuestState(6543, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.480, 0.054, "Kadrak",
                    "Travel to Kadrak."),
            },
        },
        {
            id = "objective-6543-the-warsong-reports-1",
            kind = "objective",
            priority = 2850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "The Warsong Reports: Warsong Scout Update. Wowhead has no map pin. Find the named Warsong NPC.",
            dependsOn = { "accept-6543-the-warsong-reports" },
            complete = QuestObjective(6543, 1, "Warsong Scout Update"),
            route = {
                Point(MAP.ASHENVALE, 0.732, 0.615, "Warsong Scout at Splintertree Post",
                    "Travel to the next zone, then continue to Warsong Scout at Splintertree Post."),
            },
        },
        {
            id = "objective-6543-the-warsong-reports-2",
            kind = "objective",
            priority = 2860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "The Warsong Reports: Warsong Runner Update. Wowhead has no map pin. Find the named Warsong NPC.",
            dependsOn = { "accept-6543-the-warsong-reports" },
            complete = QuestObjective(6543, 2, "Warsong Runner Update"),
            route = {
                Point(MAP.ASHENVALE, 0.700, 0.760, "Warsong Runner on the road to Splintertree",
                    "Travel to the next zone, then continue to Warsong Runner on the road to Splintertree."),
            },
        },
        {
            id = "objective-6543-the-warsong-reports-3",
            kind = "objective",
            priority = 2870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "The Warsong Reports: Warsong Outrider Update. Wowhead has no map pin. Find the named Warsong NPC.",
            dependsOn = { "accept-6543-the-warsong-reports" },
            complete = QuestObjective(6543, 3, "Warsong Outrider Update"),
            route = {
                Point(MAP.ASHENVALE, 0.685, 0.860, "Warsong Outrider just north of Mor'shan Rampart",
                    "Travel to the next zone, then continue to Warsong Outrider just north of Mor'shan Rampart."),
            },
        },
        {
            id = "turnin-6543-the-warsong-reports",
            kind = "turnin",
            priority = 2880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in The Warsong Reports to Kadrak.",
            dependsOn = { "objective-6543-the-warsong-reports-3" },
            complete = QuestState(6543, "completed"),
            route = {
                Point(MAP.BARRENS, 0.480, 0.054, "Kadrak",
                    "Travel to Kadrak."),
            },
        },
        {
            id = "accept-3513-the-runed-scroll",
            kind = "accept",
            priority = 2890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 15 } },
                },
            },
            text = "Loot the item that starts The Runed Scroll.",
            complete = QuestState(3513, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.480, 0.054, "Kadrak",
                    "Travel to Kadrak."),
            },
        },
        {
            id = "turnin-3513-the-runed-scroll",
            kind = "turnin",
            priority = 2900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in The Runed Scroll to Kadrak.",
            dependsOn = { "accept-3513-the-runed-scroll" },
            complete = QuestState(3513, "completed"),
            route = {
                Point(MAP.BARRENS, 0.480, 0.054, "Kadrak",
                    "Travel to Kadrak."),
            },
        },
        {
            id = "accept-3514-horde-presence",
            kind = "accept",
            priority = 2910,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Horde Presence from Kadrak. This is an elite. Bring a group.",
            dependsOn = { "turnin-3513-the-runed-scroll" },
            complete = QuestState(3514, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.480, 0.054, "Kadrak",
                    "Travel to Kadrak."),
            },
        },
        {
            id = "objective-3514-horde-presence-1",
            kind = "objective",
            priority = 2920,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 15 } },
                },
            },
            text = "Horde Presence: Rynthariel the Keymaster slain. This is an elite. Bring a group.",
            dependsOn = { "accept-3514-horde-presence" },
            complete = QuestObjective(3514, 1, "Rynthariel the Keymaster slain"),
            route = {
                Point(MAP.STONETALON, 0.296, 0.172, "Rynthariel the Keymaster",
                    "Travel to the next zone, then continue to Rynthariel the Keymaster."),
            },
        },
        {
            id = "turnin-3514-horde-presence",
            kind = "turnin",
            priority = 2930,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Horde Presence to Kadrak.",
            dependsOn = { "objective-3514-horde-presence-1" },
            complete = QuestState(3514, "completed"),
            route = {
                Point(MAP.BARRENS, 0.480, 0.054, "Kadrak",
                    "Travel to Kadrak."),
            },
        },
        {
            id = "accept-6382-the-ashenvale-hunt",
            kind = "accept",
            priority = 2940,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Ashenvale Hunt from Jorn Skyseer.",
            complete = QuestState(6382, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.448, 0.590, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "turnin-6382-the-ashenvale-hunt",
            kind = "turnin",
            priority = 2950,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart.",
            dependsOn = { "accept-6382-the-ashenvale-hunt" },
            complete = QuestState(6382, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to the next zone, then continue to Senani Thunderheart."),
            },
        },
        {
            id = "accept-857-the-tear-of-the-moons",
            kind = "accept",
            priority = 2960,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 22 } },
                },
            },
            text = "Accept The Tear of the Moons from Feegly the Exiled.",
            complete = QuestState(857, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.490, 0.862, "Feegly the Exiled",
                    "Travel to Feegly the Exiled."),
            },
        },
        {
            id = "objective-857-the-tear-of-the-moons-1",
            kind = "objective",
            priority = 2970,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 22 } },
                },
            },
            text = "The Tear of the Moons: Tear of the Moons.",
            dependsOn = { "accept-857-the-tear-of-the-moons" },
            complete = QuestObjective(857, 1, "Tear of the Moons"),
            route = {
                Point(MAP.BARRENS, 0.492, 0.900, "Tear of the Moons",
                    "Travel to Tear of the Moons."),
            },
        },
        {
            id = "turnin-857-the-tear-of-the-moons",
            kind = "turnin",
            priority = 2980,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 22 } },
                },
            },
            text = "Turn in The Tear of the Moons to Feegly the Exiled.",
            dependsOn = { "objective-857-the-tear-of-the-moons-1" },
            complete = QuestState(857, "completed"),
            route = {
                Point(MAP.BARRENS, 0.490, 0.862, "Feegly the Exiled",
                    "Travel to Feegly the Exiled."),
            },
        },
        {
            id = "accept-853-apothecary-zamah",
            kind = "accept",
            priority = 2990,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Apothecary Zamah from Apothecary Helbrim. The rendered spores last 45 minutes, so take them to Thunder Bluff before other work.",
            timer = 45 * 60,
            complete = QuestState(853, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.514, 0.302, "Apothecary Helbrim",
                    "Travel to Apothecary Helbrim."),
            },
        },
        {
            id = "turnin-853-apothecary-zamah",
            kind = "turnin",
            priority = 3000,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Apothecary Zamah to Apothecary Zamah.",
            dependsOn = { "accept-853-apothecary-zamah" },
            complete = QuestState(853, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.230, 0.210, "Apothecary Zamah",
                    "Travel to the next zone, then continue to Apothecary Zamah."),
            },
        },
        {
            id = "accept-3923-rilli-greasygob",
            kind = "accept",
            priority = 3010,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Rilli Greasygob from Wenikee Boltbucket.",
            complete = QuestState(3923, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.490, 0.112, "Wenikee Boltbucket",
                    "Travel to Wenikee Boltbucket."),
            },
        },
        {
            id = "turnin-3923-rilli-greasygob",
            kind = "turnin",
            priority = 3020,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Rilli Greasygob to Rilli Greasygob.",
            dependsOn = { "accept-3923-rilli-greasygob" },
            complete = QuestState(3923, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.762, 0.246, "Rilli Greasygob",
                    "Travel to the next zone, then continue to Rilli Greasygob."),
            },
        },
        {
            id = "accept-3924-samophlange-manual",
            kind = "accept",
            priority = 3030,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Samophlange Manual from Rilli Greasygob.",
            dependsOn = { "turnin-3923-rilli-greasygob" },
            complete = QuestState(3924, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.762, 0.246, "Rilli Greasygob",
                    "Travel to the next zone, then continue to Rilli Greasygob."),
            },
        },
        {
            id = "objective-3924-samophlange-manual-1",
            kind = "objective",
            priority = 3040,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Samophlange Manual: Samophlange Manual.",
            dependsOn = { "accept-3924-samophlange-manual" },
            complete = QuestObjective(3924, 1, "Samophlange Manual"),
            route = {
                Point(MAP.BARRENS, 0.605, 0.042, "Samophlange Manual on Boss Copperplug",
                    "Travel to Samophlange Manual on Boss Copperplug."),
            },
        },
        {
            id = "objective-3924-samophlange-manual-2",
            kind = "objective",
            priority = 3050,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Samophlange Manual: Samophlange Manual Cover.",
            dependsOn = { "accept-3924-samophlange-manual" },
            complete = QuestObjective(3924, 2, "Samophlange Manual Cover"),
            route = {
                Point(MAP.BARRENS, 0.595, 0.055, "Samophlange Manual Cover in Boulder Lode Mine",
                    "Travel to Samophlange Manual Cover in Boulder Lode Mine."),
            },
        },
        {
            id = "objective-3924-samophlange-manual-3",
            kind = "objective",
            priority = 3060,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Samophlange Manual: Samophlange Manual Page.",
            dependsOn = { "accept-3924-samophlange-manual" },
            complete = QuestObjective(3924, 3, "Samophlange Manual Page"),
            route = {
                Point(MAP.BARRENS, 0.590, 0.070, "Samophlange Manual Pages in Boulder Lode Mine",
                    "Travel to Samophlange Manual Pages in Boulder Lode Mine."),
            },
        },
        {
            id = "turnin-3924-samophlange-manual",
            kind = "turnin",
            priority = 3070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Samophlange Manual to Rilli Greasygob.",
            dependsOn = { "objective-3924-samophlange-manual-3" },
            complete = QuestState(3924, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.762, 0.246, "Rilli Greasygob",
                    "Travel to the next zone, then continue to Rilli Greasygob."),
            },
        },
        {
            id = "accept-98094-scout-support",
            kind = "accept",
            priority = 3080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Accept Scout Support from the Horde officer north of Nethander Stead. Wowhead does not pin the giver.",
            complete = QuestState(98094, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.623, 0.205, "Tarren Mill, north of Nethander Stead",
                    "Travel to the next zone, then continue to Tarren Mill, north of Nethander Stead."),
            },
        },
        {
            id = "turnin-98094-scout-support",
            kind = "turnin",
            priority = 3090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Turn in Scout Support to Deathstalker Masoj, north of Nethander Stead.",
            dependsOn = { "accept-98094-scout-support" },
            complete = QuestState(98094, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.635, 0.545, "Deathstalker Masoj, north of Nethander Stead",
                    "Travel to the next zone, then continue to Deathstalker Masoj, north of Nethander Stead."),
            },
        },
        {
            id = "accept-98095-valuable-vantages",
            kind = "accept",
            priority = 3100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Loot the item that starts Valuable Vantages.",
            complete = QuestState(98095, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.660, 0.720, "Hills bordering Dun Garok",
                    "Travel to the next zone, then continue to Hills bordering Dun Garok."),
            },
        },
        {
            id = "objective-98095-valuable-vantages-1",
            kind = "objective",
            priority = 3110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Valuable Vantages: Western vial placed. Wowhead has no map pin. Use the landmark in the step.",
            dependsOn = { "accept-98095-valuable-vantages" },
            complete = QuestObjective(98095, 1, "Western vial placed"),
            route = {
                Point(MAP.HILLSBRAD, 0.660, 0.720, "Hills bordering Dun Garok",
                    "Travel to the next zone, then continue to Hills bordering Dun Garok."),
            },
        },
        {
            id = "objective-98095-valuable-vantages-2",
            kind = "objective",
            priority = 3120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Valuable Vantages: Northern vial placed. Wowhead has no map pin. Use the landmark in the step.",
            dependsOn = { "accept-98095-valuable-vantages" },
            complete = QuestObjective(98095, 2, "Northern vial placed"),
            route = {
                Point(MAP.HILLSBRAD, 0.760, 0.400, "Plateau overlooking Durnholde Keep",
                    "Travel to the next zone, then continue to Plateau overlooking Durnholde Keep."),
            },
        },
        {
            id = "objective-98095-valuable-vantages-3",
            kind = "objective",
            priority = 3130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Valuable Vantages: Southern vial placed. Wowhead has no map pin. Use the landmark in the step.",
            dependsOn = { "accept-98095-valuable-vantages" },
            complete = QuestObjective(98095, 3, "Southern vial placed"),
            route = {
                Point(MAP.HILLSBRAD, 0.350, 0.480, "Ridge of the Headland above the town of Hillsbrad",
                    "Travel to the next zone, then continue to Ridge of the Headland above the town of Hillsbrad."),
            },
        },
        {
            id = "turnin-98095-valuable-vantages",
            kind = "turnin",
            priority = 3140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Turn in Valuable Vantages to Deathstalker Masoj, north of Nethander Stead.",
            dependsOn = { "objective-98095-valuable-vantages-3" },
            complete = QuestState(98095, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.635, 0.545, "Deathstalker Masoj, north of Nethander Stead",
                    "Travel to the next zone, then continue to Deathstalker Masoj, north of Nethander Stead."),
            },
        },
        {
            id = "accept-97005-cholaruk-the-ravener",
            kind = "accept",
            priority = 3150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Chol'aruk the Ravener from Bainham. This is an elite. Bring a group.",
            complete = QuestState(97005, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.618, 0.394, "Bainham",
                    "Travel to Bainham."),
            },
        },
        {
            id = "objective-97005-cholaruk-the-ravener-1",
            kind = "objective",
            priority = 3160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Chol'aruk the Ravener: Chol'aruk's Head. This is an elite. Bring a group.",
            dependsOn = { "accept-97005-cholaruk-the-ravener" },
            complete = QuestObjective(97005, 1, "Chol'aruk's Head"),
            route = {
                Point(MAP.BARRENS, 0.574, 0.272, "Chol'aruk",
                    "Travel to Chol'aruk."),
            },
        },
        {
            id = "turnin-97005-cholaruk-the-ravener",
            kind = "turnin",
            priority = 3170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Chol'aruk the Ravener to Bainham.",
            dependsOn = { "objective-97005-cholaruk-the-ravener-1" },
            complete = QuestState(97005, "completed"),
            route = {
                Point(MAP.BARRENS, 0.618, 0.394, "Bainham",
                    "Travel to Bainham."),
            },
        },
    },
})
