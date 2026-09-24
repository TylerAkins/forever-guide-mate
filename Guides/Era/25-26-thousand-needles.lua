local _, ns = ...

-- Horde Era leveling route for Thousand Needles, levels 25-26.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    THOUSAND_NEEDLES = 1441,
    BARRENS = 1413,
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
    id = "leveling-era-25-26-thousand-needles",
    title = "25-26 Thousand Needles (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 25 } },
        },
    },
    goals = {
        {
            id = "accept-1153-a-new-ore-sample",
            kind = "accept",
            priority = 10,
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
            id = "objective-4881-galak-messenger",
            kind = "objective",
            priority = 20,
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
            priority = 30,
            text = "Use the Assassination Note to accept Assassination Plot.",
            complete = QuestState(4881, "activeOrCompleted"),
        },
        {
            id = "travel-4841-freewind-post",
            kind = "travel",
            priority = 40,
            text = "Run to Freewind Post use the Elevator at.",
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4700, 0.4820, "Freewind Post",
                    "Travel to Freewind Post."),
            },
        },
        {
            id = "accept-4841-pacify-the-centaur",
            kind = "accept",
            priority = 50,
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
            priority = 60,
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
            priority = 70,
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
            priority = 80,
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
            priority = 90,
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
            priority = 100,
            text = "Accept Test of Faith from Dorn Plainstalker in The Weathered Nook.",
            complete = QuestState(1149, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.5460, 0.4450, "Continue toward Test of Faith",
                    "Continue toward Test of Faith."),
                Point(MAP.THOUSAND_NEEDLES, 0.5388, 0.4149, "Dorn Plainstalker",
                    "Travel to Dorn Plainstalker."),
            },
        },
        {
            id = "objective-1149-test-of-faith",
            kind = "objective",
            priority = 110,
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
            priority = 120,
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
            priority = 130,
            conditions = {
                all = {
                    { quest = { id = 893, state = "completed" } },
                },
            },
            text = "KIll Gravelsnout Digger or Gravelsnout Surveyor and collect Unrefined Ore Sample.",
            dependsOn = { "accept-1153-a-new-ore-sample" },
            complete = QuestState(1153, "complete"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.6380, 0.4640, "Continue toward A New Ore Sample",
                    "Continue toward A New Ore Sample."),
                Point(MAP.THOUSAND_NEEDLES, 0.6630, 0.4930, "Continue toward A New Ore Sample",
                    "Continue toward A New Ore Sample."),
                Point(MAP.THOUSAND_NEEDLES, 0.6740, 0.6030, "Continue toward A New Ore Sample",
                    "Continue toward A New Ore Sample."),
                Point(MAP.THOUSAND_NEEDLES, 0.6010, 0.5750, "Continue toward A New Ore Sample",
                    "Continue toward A New Ore Sample."),
                Point(MAP.THOUSAND_NEEDLES, 0.5520, 0.5030, "Gravelsnout Digger",
                    "Travel to Gravelsnout Digger."),
            },
        },
        {
            id = "objective-4821-alien-egg",
            kind = "objective",
            priority = 140,
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
            id = "travel-5064-freewind-post",
            kind = "travel",
            priority = 150,
            text = "Run to Freewind Post use the Elevator at.",
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4700, 0.4820, "Freewind Post",
                    "Travel to Freewind Post."),
            },
        },
        {
            id = "turnin-4841-pacify-the-centaur",
            kind = "turnin",
            priority = 160,
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
            priority = 170,
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
            priority = 180,
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
            priority = 190,
            text = "Accept Serpent Wild from Hagar Lightninghoof in Freewind Post.",
            complete = QuestState(4865, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.4471, 0.5026, "Hagar Lightninghoof",
                    "Travel to Hagar Lightninghoof."),
            },
        },
        {
            id = "travel-camp-taurajo",
            kind = "travel",
            priority = 200,
            conditions = {
                all = {
                    { quest = { id = 893, state = "completed" } },
                },
            },
            text = "Travel to Camp Taurajo.",
            route = {
                Point(MAP.BARRENS, 0.4486, 0.5913, "Camp Taurajo",
                    "Travel to Camp Taurajo."),
            },
        },
        {
            id = "accept-913-cry-of-the-thunderhawk",
            kind = "accept",
            priority = 210,
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
            priority = 220,
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
            priority = 230,
            conditions = {
                all = {
                    { quest = { id = 907, state = "completed" } },
                },
            },
            text = "Kill Thunderhawk Cloudscraper to collect Thunderhawk Wings.",
            dependsOn = { "accept-913-cry-of-the-thunderhawk" },
            complete = QuestState(913, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4400, 0.5500, "Continue toward Cry of the Thunderhawk",
                    "Continue toward Cry of the Thunderhawk."),
                Point(MAP.BARRENS, 0.4830, 0.5690, "Continue toward Cry of the Thunderhawk",
                    "Continue toward Cry of the Thunderhawk."),
                Point(MAP.BARRENS, 0.4810, 0.6000, "Continue toward Cry of the Thunderhawk",
                    "Continue toward Cry of the Thunderhawk."),
                Point(MAP.BARRENS, 0.4870, 0.6210, "Continue toward Cry of the Thunderhawk",
                    "Continue toward Cry of the Thunderhawk."),
                Point(MAP.BARRENS, 0.4490, 0.6300, "Continue toward Cry of the Thunderhawk",
                    "Continue toward Cry of the Thunderhawk."),
                Point(MAP.BARRENS, 0.4450, 0.6160, "Thunderhawk Cloudscraper",
                    "Travel to Thunderhawk Cloudscraper."),
            },
        },
        {
            id = "turnin-913-cry-of-the-thunderhawk",
            kind = "turnin",
            priority = 240,
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
    },
})
