local _, ns = ...

-- Horde Era leveling route for Thousand Needles, levels 27-29.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    THOUSAND_NEEDLES = 1441,
    BARRENS = 1413,
    THUNDER_BLUFF = 1456,
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
    id = "leveling-era-27-29-thousand-needles",
    title = "27-29 Thousand Needles (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 27 } },
        },
    },
    goals = {
        {
            id = "accept-1130-melor-sends-word",
            kind = "accept",
            priority = 20,
            text = "Accept Melor Sends Word from Jorn Skyseer in Camp Taurajo.",
            complete = QuestState(1130, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4484, 0.5909, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "accept-1153-a-new-ore-sample",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 893, state = "completed" } },
                },
            },
            text = "Accept A New Ore Sample from Tatternack Steelforge in Camp Taurajo.",
            complete = QuestState(1153, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4509, 0.5772, "Tatternack Steelforge",
                    "Travel to Tatternack Steelforge."),
            },
        },
        {
            id = "turnin-1130-melor-sends-word",
            kind = "turnin",
            priority = 50,
            text = "Turn in Melor Sends Word to Melor Stonehoof in Hunter Rise.",
            dependsOn = { "accept-1130-melor-sends-word" },
            complete = QuestState(1130, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6136, 0.8067, "Melor Stonehoof",
                    "Travel to Melor Stonehoof."),
            },
        },
        {
            id = "accept-1131-steelsnap",
            kind = "accept",
            priority = 60,
            text = "Accept Steelsnap from Melor Stonehoof in Hunter Rise.",
            complete = QuestState(1131, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6136, 0.8067, "Melor Stonehoof",
                    "Travel to Melor Stonehoof."),
            },
        },
        {
            id = "accept-1064-forsaken-aid",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 1063, state = "completed" } },
                },
            },
            text = "Accept Forsaken Aid from Magatha Grimtotem in Elder's Rise.",
            complete = QuestState(1064, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7010, 0.3080, "Magatha Grimtotem",
                    "Travel to Magatha Grimtotem."),
            },
        },
        {
            id = "turnin-1064-forsaken-aid",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { quest = { id = 1063, state = "completed" } },
                },
            },
            text = "Turn in Forsaken Aid to Apothecary Zamah in Pool of Vision.",
            dependsOn = { "accept-1064-forsaken-aid" },
            complete = QuestState(1064, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.2300, 0.2100, "Apothecary Zamah",
                    "Travel to Apothecary Zamah."),
            },
        },
        {
            id = "accept-1065-journey-to-tarren-mill",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { quest = { id = 1063, state = "completed" } },
                },
            },
            text = "Accept Journey to Tarren Mill from Apothecary Zamah in Pool of Vision.",
            complete = QuestState(1065, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.2300, 0.2100, "Apothecary Zamah",
                    "Travel to Apothecary Zamah."),
            },
        },
        {
            id = "objective-4881-galak-messenger",
            kind = "objective",
            priority = 110,
            text = "Find and kill the patroling Galak Messenger to start new quest in Darkcloud Pinnacle.",
            dependsOn = { "accept-4881-assassination-plot" },
            complete = QuestState(4881, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3860, 0.3150, "Continue toward Galak Messenger",
                    "Continue toward Galak Messenger."),
                Point(MAP.THOUSAND_NEEDLES, 0.2950, 0.3460, "Continue toward Galak Messenger",
                    "Continue toward Galak Messenger."),
                Point(MAP.THOUSAND_NEEDLES, 0.1890, 0.2710, "Galak Messenger",
                    "Travel to Galak Messenger."),
            },
        },
        {
            id = "accept-4881-assassination-plot",
            kind = "accept",
            priority = 120,
            text = "Use the Assassination Note to accept Assassination Plot.",
            complete = QuestState(4881, "activeOrCompleted"),
        },
        {
            id = "accept-4841-pacify-the-centaur",
            kind = "accept",
            priority = 130,
            text = "Accept Pacify the Centaur from Cliffwatcher Longhorn in Freewind Post.",
            complete = QuestState(4841, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4569, 0.5066, "Cliffwatcher Longhorn",
                    "Travel to Cliffwatcher Longhorn."),
            },
        },
        {
            id = "accept-5147-wanted-arnak-grimtotem",
            kind = "accept",
            priority = 140,
            text = "Accept Wanted - Arnak Grimtotem.",
            complete = QuestState(5147, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4600, 0.5080, "Wanted - Arnak Grimtotem",
                    "Travel to Wanted - Arnak Grimtotem."),
            },
        },
        {
            id = "accept-4821-alien-egg",
            kind = "accept",
            priority = 150,
            text = "Accept Alien Egg from Hagar Lightninghoof in Freewind Post.",
            complete = QuestState(4821, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4471, 0.5026, "Hagar Lightninghoof",
                    "Travel to Hagar Lightninghoof."),
            },
        },
        {
            id = "accept-4767-wind-rider",
            kind = "accept",
            priority = 160,
            text = "Accept Wind Rider from Elu in Freewind Post.",
            complete = QuestState(4767, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4485, 0.4904, "Elu",
                    "Travel to Elu."),
            },
        },
        {
            id = "objective-4841-pacify-the-centaur",
            kind = "objective",
            priority = 170,
            text = "Kill 12 Galak Scout, 10 Galak Wrangler and 6 Galak Windchaser just north of Freewind.",
            dependsOn = { "accept-4841-pacify-the-centaur" },
            complete = QuestState(4841, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4800, 0.4300, "Galak Scout",
                    "Travel to Galak Scout."),
            },
        },
        {
            id = "accept-1149-test-of-faith",
            kind = "accept",
            priority = 180,
            text = "Accept Test of Faith from Dorn Plainstalker in The Weathered Nook.",
            complete = QuestState(1149, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.5388, 0.4149, "Dorn Plainstalker",
                    "Travel to Dorn Plainstalker."),
            },
        },
        {
            id = "objective-1149-test-of-faith",
            kind = "objective",
            priority = 190,
            text = "Run off the platform, Make sure you only jump off of the wooden plank! If you jump off of anywhere else you will fall to your death.",
            dependsOn = { "accept-1149-test-of-faith" },
            complete = QuestState(1149, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2640, 0.3240, "Test of Faith",
                    "Travel to Test of Faith."),
            },
        },
        {
            id = "turnin-1149-test-of-faith",
            kind = "turnin",
            priority = 200,
            text = "Turn in Test of Faith to Dorn Plainstalker in The Weathered Nook.",
            dependsOn = { "objective-1149-test-of-faith" },
            complete = QuestState(1149, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.5388, 0.4149, "Dorn Plainstalker",
                    "Travel to Dorn Plainstalker."),
            },
        },
        {
            id = "objective-1153-a-new-ore-sample",
            kind = "objective",
            priority = 210,
            conditions = {
                all = {
                    { quest = { id = 893, state = "completed" } },
                },
            },
            text = "KIll Gravelsnout Digger or Gravelsnout Surveyor and collect Unrefined Ore Sample.",
            dependsOn = { "accept-1153-a-new-ore-sample" },
            complete = QuestState(1153, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.6200, 0.4500, "Gravelsnout Digger",
                    "Travel to Gravelsnout Digger."),
            },
        },
        {
            id = "objective-4821-alien-egg",
            kind = "objective",
            priority = 220,
            text = "The Alien Egg can spawn around 3 possible spots.",
            dependsOn = { "accept-4821-alien-egg" },
            complete = QuestState(4821, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.5630, 0.5040, "Continue toward Alien Egg",
                    "Continue toward Alien Egg."),
                Point(MAP.THOUSAND_NEEDLES, 0.5240, 0.5520, "Continue toward Alien Egg",
                    "Continue toward Alien Egg."),
                Point(MAP.THOUSAND_NEEDLES, 0.3770, 0.5620, "Alien Egg",
                    "Travel to Alien Egg."),
            },
        },
        {
            id = "turnin-4841-pacify-the-centaur",
            kind = "turnin",
            priority = 240,
            text = "Turn in Pacify the Centaur to Cliffwatcher Longhorn in Freewind Post.",
            dependsOn = { "objective-4841-pacify-the-centaur" },
            complete = QuestState(4841, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4569, 0.5066, "Cliffwatcher Longhorn",
                    "Travel to Cliffwatcher Longhorn."),
            },
        },
        {
            id = "accept-5064-grimtotem-spying",
            kind = "accept",
            priority = 250,
            text = "Accept Grimtotem Spying from Cliffwatcher Longhorn in Freewind Post.",
            complete = QuestState(5064, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4569, 0.5066, "Cliffwatcher Longhorn",
                    "Travel to Cliffwatcher Longhorn."),
            },
        },
        {
            id = "turnin-4821-alien-egg",
            kind = "turnin",
            priority = 260,
            text = "Turn in Alien Egg to Hagar Lightninghoof in Freewind Post.",
            dependsOn = { "objective-4821-alien-egg" },
            complete = QuestState(4821, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4471, 0.5026, "Hagar Lightninghoof",
                    "Travel to Hagar Lightninghoof."),
            },
        },
        {
            id = "accept-4865-serpent-wild",
            kind = "accept",
            priority = 270,
            text = "Accept Serpent Wild from Hagar Lightninghoof in Freewind Post.",
            complete = QuestState(4865, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4471, 0.5026, "Hagar Lightninghoof",
                    "Travel to Hagar Lightninghoof."),
            },
        },
        {
            id = "accept-913-cry-of-the-thunderhawk",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { quest = { id = 907, state = "completed" } },
                },
            },
            text = "Accept Cry of the Thunderhawk from Jorn Skyseer in Camp Taurajo.",
            complete = QuestState(913, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4486, 0.5913, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "turnin-1153-a-new-ore-sample",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 893, state = "completed" } },
                },
            },
            text = "Turn in A New Ore Sample to Tatternack Steelforge in Camp Taurajo.",
            dependsOn = { "objective-1153-a-new-ore-sample" },
            complete = QuestState(1153, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4511, 0.5773, "Tatternack Steelforge",
                    "Travel to Tatternack Steelforge."),
            },
        },
        {
            id = "objective-913-cry-of-the-thunderhawk",
            kind = "objective",
            priority = 300,
            conditions = {
                all = {
                    { quest = { id = 907, state = "completed" } },
                },
            },
            text = "Kill Thunderhawk Cloudscraper to collect Thunderhawk Wings.",
            dependsOn = { "accept-913-cry-of-the-thunderhawk" },
            complete = QuestState(913, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4700, 0.6000, "Thunderhawk Cloudscraper",
                    "Travel to Thunderhawk Cloudscraper."),
            },
        },
        {
            id = "turnin-913-cry-of-the-thunderhawk",
            kind = "turnin",
            priority = 310,
            conditions = {
                all = {
                    { quest = { id = 907, state = "completed" } },
                },
            },
            text = "Turn in Cry of the Thunderhawk to Jorn Skyseer in Camp Taurajo.",
            dependsOn = { "objective-913-cry-of-the-thunderhawk" },
            complete = QuestState(913, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4489, 0.5915, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "note-1197-freewind-post",
            kind = "note",
            priority = 330,
            text = "Set your hearth in Freewind Post with Innkeeper Abeqwa.",
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4610, 0.5150, "Innkeeper Abeqwa",
                    "Travel to Innkeeper Abeqwa."),
            },
        },
        {
            id = "accept-1197-the-sacred-flame",
            kind = "accept",
            priority = 340,
            conditions = {
                all = {
                    { quest = { id = 1197, state = "completed" } },
                },
            },
            text = "Accept The Sacred Flame from Rau Cliffrunner in Freewind Post.",
            complete = QuestState(1197, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4612, 0.5162, "Rau Cliffrunner",
                    "Travel to Rau Cliffrunner."),
            },
        },
        {
            id = "accept-4865-serpent-wild-2",
            kind = "accept",
            priority = 350,
            text = "Accept Serpent Wild from Hagar Lightninghoof in Freewind Post.",
            complete = QuestState(4865, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4471, 0.5026, "Hagar Lightninghoof",
                    "Travel to Hagar Lightninghoof."),
            },
        },
        {
            id = "objective-1197-the-sacred-flame",
            kind = "objective",
            priority = 370,
            conditions = {
                all = {
                    { quest = { id = 1197, state = "completed" } },
                },
            },
            text = "Go into the cave and click on the Ancient Brazier in Splithoof Hold.",
            dependsOn = { "accept-1197-the-sacred-flame" },
            complete = QuestState(1197, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4403, 0.3740, "Continue toward The Sacred Flame",
                    "Continue toward The Sacred Flame."),
                Point(MAP.THOUSAND_NEEDLES, 0.4179, 0.3346, "Continue toward The Sacred Flame",
                    "Continue toward The Sacred Flame."),
                Point(MAP.THOUSAND_NEEDLES, 0.4196, 0.3160, "Splithoof Hold",
                    "Travel to Splithoof Hold."),
            },
        },
        {
            id = "objective-4881-galak-messenger-2",
            kind = "objective",
            priority = 380,
            text = "Find and kill the patroling Galak Messenger to start new quest in Darkcloud Pinnacle.",
            dependsOn = { "accept-4881-assassination-plot" },
            complete = QuestState(4881, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3860, 0.3150, "Continue toward Galak Messenger",
                    "Continue toward Galak Messenger."),
                Point(MAP.THOUSAND_NEEDLES, 0.2950, 0.3460, "Continue toward Galak Messenger",
                    "Continue toward Galak Messenger."),
                Point(MAP.THOUSAND_NEEDLES, 0.1890, 0.2710, "Galak Messenger",
                    "Travel to Galak Messenger."),
            },
        },
        {
            id = "turnin-4865-serpent-wild",
            kind = "turnin",
            priority = 400,
            text = "Turn in Serpent Wild to Motega Firemane in Whitereach Post.",
            dependsOn = { "accept-4865-serpent-wild" },
            complete = QuestState(4865, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2160, 0.3232, "Motega Firemane",
                    "Travel to Motega Firemane."),
            },
        },
        {
            id = "accept-5062-sacred-fire",
            kind = "accept",
            priority = 410,
            text = "Accept Sacred Fire from Motega Firemane in Whitereach Post.",
            complete = QuestState(5062, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2160, 0.3232, "Motega Firemane",
                    "Travel to Motega Firemane."),
            },
        },
        {
            id = "accept-5151-hypercapacitor-gizmo",
            kind = "accept",
            priority = 420,
            text = "Accept Hypercapacitor Gizmo from Wizlo Bearingshiner in Whitereach Post.",
            complete = QuestState(5151, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2146, 0.3252, "Wizlo Bearingshiner",
                    "Travel to Wizlo Bearingshiner."),
            },
        },
        {
            id = "objective-5062-sacred-fire",
            kind = "objective",
            priority = 430,
            text = "Collect 10 Incendia Agave from Incendia Agave in Darkcloud Pinnacle.",
            dependsOn = { "accept-5062-sacred-fire" },
            complete = QuestState(5062, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3787, 0.3817, "Darkcloud Pinnacle",
                    "Travel to Darkcloud Pinnacle."),
            },
        },
        {
            id = "objective-4767-wind-rider",
            kind = "objective",
            priority = 450,
            text = "Gather 10 Highperch Wyvern Egg from Highperch Wyvern Egg in Highperch.",
            dependsOn = { "accept-4767-wind-rider" },
            complete = QuestState(4767, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.1462, 0.3260, "Continue toward Wind Rider",
                    "Continue toward Wind Rider."),
                Point(MAP.THOUSAND_NEEDLES, 0.1264, 0.3501, "Highperch",
                    "Travel to Highperch."),
            },
        },
        {
            id = "accept-4770-homeward-bound",
            kind = "accept",
            priority = 460,
            text = "Accept Homeward Bound from Pao'ka Swiftmountain in Highperch.",
            complete = QuestState(4770, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.1784, 0.4053, "Pao'ka Swiftmountain",
                    "Travel to Pao'ka Swiftmountain."),
            },
        },
        {
            id = "objective-4770-homeward-bound",
            kind = "objective",
            priority = 470,
            text = "Escort Pao'ka Swiftmountain from Highperch.",
            dependsOn = { "accept-4770-homeward-bound" },
            complete = QuestState(4770, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.1515, 0.3270, "Pao'ka Swiftmountain",
                    "Travel to Pao'ka Swiftmountain."),
            },
        },
        {
            id = "turnin-1131-steelsnap",
            kind = "turnin",
            priority = 490,
            text = "Turn in Steelsnap to Melor Stonehoof in Hunter Rise.",
            dependsOn = { "accept-1131-steelsnap" },
            complete = QuestState(1131, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6131, 0.8077, "Melor Stonehoof",
                    "Travel to Melor Stonehoof."),
            },
        },
        {
            id = "accept-1136-frostmaw",
            kind = "accept",
            priority = 500,
            text = "Accept Frostmaw from Melor Stonehoof in Hunter Rise.",
            complete = QuestState(1136, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6131, 0.8077, "Melor Stonehoof",
                    "Travel to Melor Stonehoof."),
            },
        },
        {
            id = "turnin-5062-sacred-fire",
            kind = "turnin",
            priority = 510,
            text = "Turn in Sacred Fire to Magatha Grimtotem in Elder Rise.",
            dependsOn = { "objective-5062-sacred-fire" },
            complete = QuestState(5062, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7013, 0.3121, "Magatha Grimtotem",
                    "Travel to Magatha Grimtotem."),
            },
        },
        {
            id = "accept-5088-arikara",
            kind = "accept",
            priority = 520,
            text = "Accept Arikara from Magatha Grimtotem in Elder Rise.",
            complete = QuestState(5088, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7013, 0.3121, "Magatha Grimtotem",
                    "Travel to Magatha Grimtotem."),
            },
        },
        {
            id = "turnin-4767-wind-rider",
            kind = "turnin",
            priority = 540,
            text = "Turn in Wind Rider to Elu in Freewind Post.",
            dependsOn = { "objective-4767-wind-rider" },
            complete = QuestState(4767, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4486, 0.4903, "Elu",
                    "Travel to Elu."),
            },
        },
        {
            id = "turnin-1197-the-sacred-flame",
            kind = "turnin",
            priority = 550,
            conditions = {
                all = {
                    { quest = { id = 1197, state = "completed" } },
                },
            },
            text = "Turn in The Sacred Flame to Rau Cliffrunner in Freewind Post.",
            dependsOn = { "objective-1197-the-sacred-flame" },
            complete = QuestState(1197, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4612, 0.5162, "Rau Cliffrunner",
                    "Travel to Rau Cliffrunner."),
            },
        },
        {
            id = "objective-5064-1-secret-note-1",
            kind = "objective",
            priority = 570,
            text = "Collect Secret Note #1 from the Document Chest in Darkcloud Pinnacle.",
            dependsOn = { "accept-5064-grimtotem-spying" },
            complete = QuestObjective(5064, 1),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3183, 0.3264, "Darkcloud Pinnacle",
                    "Travel to Darkcloud Pinnacle."),
            },
        },
        {
            id = "objective-5064-2-secret-note-2",
            kind = "objective",
            priority = 580,
            text = "Collect Secret Note #2 from the Document Chest in Darkcloud Pinnacle.",
            dependsOn = { "accept-5064-grimtotem-spying" },
            complete = QuestObjective(5064, 2),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3379, 0.3992, "Darkcloud Pinnacle",
                    "Travel to Darkcloud Pinnacle."),
            },
        },
        {
            id = "objective-5064-3-secret-note-3",
            kind = "objective",
            priority = 590,
            text = "Collect Secret Note #3 from the Document Chest in Darkcloud Pinnacle.",
            dependsOn = { "accept-5064-grimtotem-spying" },
            complete = QuestObjective(5064, 3),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3928, 0.4153, "Darkcloud Pinnacle",
                    "Travel to Darkcloud Pinnacle."),
            },
        },
        {
            id = "objective-5064-grimtotem-spying",
            kind = "objective",
            priority = 600,
            text = "Take the path up and collect Secret Note #1, Secret Note #2 and Secret Note #3 from the boxes.",
            dependsOn = { "accept-5064-grimtotem-spying" },
            complete = QuestState(5064, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3100, 0.3600, "Continue toward Grimtotem Spying",
                    "Continue toward Grimtotem Spying."),
                Point(MAP.THOUSAND_NEEDLES, 0.3100, 0.3200, "Continue toward Grimtotem Spying",
                    "Continue toward Grimtotem Spying."),
                Point(MAP.THOUSAND_NEEDLES, 0.3300, 0.3900, "Continue toward Grimtotem Spying",
                    "Continue toward Grimtotem Spying."),
                Point(MAP.THOUSAND_NEEDLES, 0.3900, 0.4100, "Grimtotem Spying",
                    "Travel to Grimtotem Spying."),
            },
        },
        {
            id = "objective-5088-2-light-the-sacred-fire-of-life",
            kind = "objective",
            priority = 610,
            text = "Click Item Sacred Fire of Life in Darkcloud Pinnacle.",
            dependsOn = { "accept-5088-arikara" },
            complete = QuestObjective(5088, 2),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3796, 0.3535, "Darkcloud Pinnacle",
                    "Travel to Darkcloud Pinnacle."),
            },
        },
        {
            id = "objective-5088-arikara",
            kind = "objective",
            priority = 620,
            text = "Kill Arikara and collect Arikara Serpent Skin in Darkcloud Pinnacle.",
            dependsOn = { "accept-5088-arikara" },
            complete = QuestState(5088, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3636, 0.3142, "Arikara",
                    "Travel to Arikara."),
            },
        },
        {
            id = "objective-5147-wanted-arnak-grimtotem",
            kind = "objective",
            priority = 640,
            text = "Kill Arnak Grimtotem to the north, on the edge of the zone and loot Arnak's Hoof.",
            dependsOn = { "accept-5147-wanted-arnak-grimtotem" },
            complete = QuestState(5147, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3913, 0.2937, "Continue toward Wanted - Arnak Grimtotem",
                    "Continue toward Wanted - Arnak Grimtotem."),
                Point(MAP.THOUSAND_NEEDLES, 0.3800, 0.2700, "Arnak Grimtotem",
                    "Travel to Arnak Grimtotem."),
            },
        },
        {
            id = "accept-4904-free-at-last",
            kind = "accept",
            priority = 650,
            text = "Accept Free at Last from Lakota Windsong in Darkcloud Pinnacle.",
            complete = QuestState(4904, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3798, 0.2646, "Lakota Windsong",
                    "Travel to Lakota Windsong."),
            },
        },
        {
            id = "objective-4904-free-at-last",
            kind = "objective",
            priority = 660,
            text = "Escort Lakota Windsong from Darkcloud Pinnacle.",
            dependsOn = { "accept-4904-free-at-last" },
            complete = QuestState(4904, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3091, 0.3704, "Lakota Windsong",
                    "Travel to Lakota Windsong."),
            },
        },
        {
            id = "turnin-5088-arikara",
            kind = "turnin",
            priority = 680,
            text = "Turn in Arikara to Motega Firemane in Whitereach Post.",
            dependsOn = { "objective-5088-2-light-the-sacred-fire-of-life", "objective-5088-arikara" },
            complete = QuestState(5088, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2160, 0.3232, "Motega Firemane",
                    "Travel to Motega Firemane."),
            },
        },
        {
            id = "turnin-4770-homeward-bound",
            kind = "turnin",
            priority = 690,
            text = "Turn in Homeward Bound to Motega Firemane in Whitereach Post.",
            dependsOn = { "objective-4770-homeward-bound" },
            complete = QuestState(4770, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2160, 0.3232, "Motega Firemane",
                    "Travel to Motega Firemane."),
            },
        },
        {
            id = "objective-5151-hypercapacitor-gizmo",
            kind = "objective",
            priority = 700,
            text = "Find the Panther Cage at the wrecked caravan north of Whitereach Post and use the Panther Cage Key to open it. Kill the Enraged Panther and take the Hypercapacitor Gizmo.",
            dependsOn = { "accept-5151-hypercapacitor-gizmo" },
            complete = QuestState(5151, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2257, 0.2323, "Enraged Panther",
                    "Travel to Enraged Panther."),
            },
        },
        {
            id = "turnin-5151-hypercapacitor-gizmo",
            kind = "turnin",
            priority = 720,
            text = "Turn in Hypercapacitor Gizmo to Wizlo Bearingshiner in Whitereach Post.",
            dependsOn = { "objective-5151-hypercapacitor-gizmo" },
            complete = QuestState(5151, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2146, 0.3252, "Wizlo Bearingshiner",
                    "Travel to Wizlo Bearingshiner."),
            },
        },
        {
            id = "accept-4966-protect-kanati-greycloud",
            kind = "accept",
            priority = 730,
            text = "Accept Protect Kanati Greycloud from Kanati Greycloud in Whitereach Post.",
            complete = QuestState(4966, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2134, 0.3205, "Kanati Greycloud",
                    "Travel to Kanati Greycloud."),
            },
        },
        {
            id = "objective-4966-protect-kanati-greycloud",
            kind = "objective",
            priority = 740,
            text = "Protect Kanati Greycloud from the centaur attack.",
            dependsOn = { "accept-4966-protect-kanati-greycloud" },
            complete = QuestState(4966, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2100, 0.3200, "Kanati Greycloud",
                    "Travel to Kanati Greycloud."),
            },
        },
        {
            id = "turnin-4966-protect-kanati-greycloud",
            kind = "turnin",
            priority = 750,
            text = "Turn in Protect Kanati Greycloud to Kanati Greycloud in Whitereach Post.",
            dependsOn = { "objective-4966-protect-kanati-greycloud" },
            complete = QuestState(4966, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.2134, 0.3205, "Kanati Greycloud",
                    "Travel to Kanati Greycloud."),
            },
        },
        {
            id = "turnin-4904-free-at-last",
            kind = "turnin",
            priority = 770,
            text = "Turn in Free at Last to Thalia Amberhide in Freewind Post.",
            dependsOn = { "objective-4904-free-at-last" },
            complete = QuestState(4904, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4600, 0.5153, "Thalia Amberhide",
                    "Travel to Thalia Amberhide."),
            },
        },
        {
            id = "turnin-5147-wanted-arnak-grimtotem",
            kind = "turnin",
            priority = 780,
            text = "Turn in Wanted - Arnak Grimtotem to Cliffwatcher Longhorn in Freewind Post.",
            dependsOn = { "objective-5147-wanted-arnak-grimtotem" },
            complete = QuestState(5147, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4569, 0.5082, "Cliffwatcher Longhorn",
                    "Travel to Cliffwatcher Longhorn."),
            },
        },
        {
            id = "turnin-5064-grimtotem-spying",
            kind = "turnin",
            priority = 790,
            text = "Turn in Grimtotem Spying to Cliffwatcher Longhorn in Freewind Post.",
            dependsOn = { "objective-5064-1-secret-note-1", "objective-5064-2-secret-note-2", "objective-5064-3-secret-note-3", "objective-5064-grimtotem-spying" },
            complete = QuestState(5064, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4569, 0.5082, "Cliffwatcher Longhorn",
                    "Travel to Cliffwatcher Longhorn."),
            },
        },
    },
})
