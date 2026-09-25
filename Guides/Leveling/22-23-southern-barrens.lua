local _, ns = ...

-- Horde Era leveling route for the Southern Barrens, levels 22-23.
-- Forever quests from the Barrens list that sit on this pass are woven in.
-- Scout Support and Valuable Vantages are worked in Hillsbrad, past this southern loop.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    BARRENS = 1413,
    ORGRIMMAR = 1454,
    HILLSBRAD = 1424,
    SILVERPINE = 1421,
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
    id = "leveling-era-22-23-southern-barrens",
    title = "22-23 Southern Barrens",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 22 } },
        },
    },
    goals = {
        {
            id = "accept-2460-the-shattered-salute",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept The Shattered Salute from Shenthul in Cleft of Shadow.",
            complete = QuestState(2460, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4304, 0.5367, "Shenthul",
                    "Travel to Shenthul."),
            },
        },
        {
            id = "objective-2460-the-shattered-salute",
            kind = "objective",
            priority = 30,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Target Shenthul and type /salute in Cleft of Shadow.",
            dependsOn = { "accept-2460-the-shattered-salute" },
            complete = QuestState(2460, "complete"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4304, 0.5367, "Shenthul",
                    "Travel to Shenthul."),
            },
        },
        {
            id = "turnin-2460-the-shattered-salute",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in The Shattered Salute in Cleft of Shadow.",
            dependsOn = { "objective-2460-the-shattered-salute" },
            complete = QuestState(2460, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4304, 0.5367, "Cleft of Shadow",
                    "Travel to Cleft of Shadow."),
            },
        },
        {
            id = "accept-2458-deep-cover",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept Deep Cover from Shenthul in Cleft of Shadow.",
            complete = QuestState(2458, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4304, 0.5367, "Shenthul",
                    "Travel to Shenthul."),
            },
        },
        {
            id = "objective-flare-gun",
            kind = "objective",
            priority = 70,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Use the Flare Gun twice in this spot.",
            route = {
                Point(MAP.BARRENS, 0.5585, 0.0575, "Flare Gun",
                    "Travel to Flare Gun."),
            },
        },
        {
            id = "objective-flare-gun-2",
            kind = "objective",
            priority = 80,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Use the Flare Gun twice in this spot.",
            route = {
                Point(MAP.BARRENS, 0.5585, 0.0575, "Flare Gun",
                    "Travel to Flare Gun."),
            },
        },
        {
            id = "turnin-2458-deep-cover",
            kind = "turnin",
            priority = 90,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in Deep Cover to Taskmaster Fizzule in Sludge Fen.",
            dependsOn = { "accept-2458-deep-cover" },
            complete = QuestState(2458, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5547, 0.0559, "Taskmaster Fizzule",
                    "Travel to Taskmaster Fizzule."),
            },
        },
        {
            id = "accept-2478-mission-possible-but-not-probable",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept Mission: Possible But Not Probable from Taskmaster Fizzule in Sludge Fen.",
            complete = QuestState(2478, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5544, 0.0557, "Taskmaster Fizzule",
                    "Travel to Taskmaster Fizzule."),
            },
        },
        {
            id = "objective-2478-5-silixiz-s-tower-key",
            kind = "objective",
            priority = 110,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Use on Pick Pocket on Foreman Silixiz to get Silixiz's Tower Key in Sludge Fen.",
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            complete = QuestObjective(2478, 5),
            route = {
                Point(MAP.BARRENS, 0.5478, 0.0594, "Foreman Silixiz",
                    "Travel to Foreman Silixiz."),
            },
        },
        {
            id = "objective-2478-4-grand-foreman-puzik-gallywix",
            kind = "objective",
            priority = 120,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Kill Grand Foreman Puzik Gallywix at the top of the tower and collect Gallywix's Head and Cache of Zanzil's Altered Mixture in Sludge Fen.",
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            complete = QuestObjective(2478, 4),
            route = {
                Point(MAP.BARRENS, 0.5476, 0.0573, "Grand Foreman Puzik Gallywix",
                    "Travel to Grand Foreman Puzik Gallywix."),
            },
        },
        {
            id = "objective-2478-6-grand-foreman-puzik-gallywix",
            kind = "objective",
            priority = 130,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Kill Grand Foreman Puzik Gallywix at the top of the tower and collect Gallywix's Head and Cache of Zanzil's Altered Mixture in Sludge Fen.",
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            complete = QuestObjective(2478, 6),
            route = {
                Point(MAP.BARRENS, 0.5476, 0.0573, "Grand Foreman Puzik Gallywix",
                    "Travel to Grand Foreman Puzik Gallywix."),
            },
        },
        {
            id = "objective-2478-mission-possible-but-not-probable",
            kind = "objective",
            priority = 140,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Kill 2 Mutated Venture Co. Drone, Venture Co. Patroller and Venture Co. Lookout inside the tower.",
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            complete = QuestState(2478, "complete"),
            route = {
                Point(MAP.BARRENS, 0.5469, 0.0580, "Mutated Venture Co. Drone",
                    "Travel to Mutated Venture Co. Drone."),
            },
        },
        {
            id = "turnin-2478-mission-possible-but-not-probable",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in Mission: Possible But Not Probable to Shenthul in Cleft of Shadow.",
            dependsOn = { "objective-2478-5-silixiz-s-tower-key", "objective-2478-4-grand-foreman-puzik-gallywix", "objective-2478-6-grand-foreman-puzik-gallywix", "objective-2478-mission-possible-but-not-probable" },
            complete = QuestState(2478, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4306, 0.5370, "Shenthul",
                    "Travel to Shenthul."),
            },
        },
        {
            id = "accept-2479-hinott-s-assistance",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept Hinott's Assistance from Shenthul in Cleft of Shadow.",
            complete = QuestState(2479, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4306, 0.5370, "Shenthul",
                    "Travel to Shenthul."),
            },
        },
        {
            id = "turnin-2479-hinott-s-assistance",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in Hinott's Assistance to Serge Hinott in Tarren Mill.",
            dependsOn = { "accept-2479-hinott-s-assistance" },
            complete = QuestState(2479, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.1918, "Serge Hinott",
                    "Travel to Serge Hinott."),
            },
        },
        {
            id = "accept-2480-hinott-s-assistance",
            kind = "accept",
            priority = 200,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept Hinott's Assistance from Serge Hinott in Tarren Mill.",
            complete = QuestState(2480, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.1918, "Serge Hinott",
                    "Travel to Serge Hinott."),
            },
        },
        {
            id = "objective-2480-hinott-s-assistance",
            kind = "objective",
            priority = 210,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Wait for Serge Hinott to complete the cure in Tarren Mill.",
            dependsOn = { "accept-2480-hinott-s-assistance" },
            complete = QuestState(2480, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.1918, "Tarren Mill",
                    "Travel to Tarren Mill."),
            },
        },
        {
            id = "turnin-2480-hinott-s-assistance",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in Hinott's Assistance to Serge Hinott in Tarren Mill.",
            dependsOn = { "objective-2480-hinott-s-assistance" },
            complete = QuestState(2480, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.1899, "Serge Hinott",
                    "Travel to Serge Hinott."),
            },
        },
        {
            id = "accept-868-egg-hunt",
            kind = "accept",
            priority = 240,
            text = "Accept Egg Hunt from Korran in The Crossroads.",
            complete = QuestState(868, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5110, 0.2962, "Korran",
                    "Travel to Korran."),
            },
        },
        {
            id = "accept-893-weapons-of-choice",
            kind = "accept",
            priority = 260,
            text = "Accept Weapons of Choice from Tatternack Steelforge in Camp Taurajo.",
            complete = QuestState(893, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4510, 0.5774, "Tatternack Steelforge",
                    "Travel to Tatternack Steelforge."),
            },
        },
        {
            id = "accept-878-tribes-at-war",
            kind = "accept",
            priority = 270,
            text = "Accept Tribes at War from Mangletooth in Camp Taurajo.",
            complete = QuestState(878, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4456, 0.5922, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "objective-878-tribes-at-war",
            kind = "objective",
            priority = 290,
            text = "Kill 6 Bristleback Water Seeker, 12 Bristleback Thornweaver and 12 Bristleback Geomancer in Agama'gor.",
            dependsOn = { "accept-878-tribes-at-war" },
            complete = QuestState(878, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4330, 0.4855, "Bristleback Water Seeker",
                    "Travel to Bristleback Water Seeker."),
            },
        },
        {
            id = "objective-5052-blood-shard",
            kind = "objective",
            priority = 300,
            text = "Collect Blood Shard from Bristleback enemies in Agama'gor.",
            dependsOn = { "accept-5052-blood-shards-of-agamaggan" },
            complete = QuestState(5052, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4330, 0.4855, "Bristleback Water Seeker",
                    "Travel to Bristleback Water Seeker."),
            },
        },
        {
            id = "objective-899-consumed-by-hatred",
            kind = "objective",
            priority = 320,
            text = "Kill Bristleback Quilboars for 60 Quilboar Tusk in Bramblescar.",
            complete = QuestState(899, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4330, 0.4855, "Bristleback Geomancer",
                    "Travel to Bristleback Geomancer."),
            },
        },
        {
            id = "turnin-878-tribes-at-war",
            kind = "turnin",
            priority = 340,
            text = "Turn in Tribes at War to Mangletooth in Camp Taurajo.",
            dependsOn = { "objective-878-tribes-at-war" },
            complete = QuestState(878, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4456, 0.5923, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "accept-5052-blood-shards-of-agamaggan",
            kind = "accept",
            priority = 350,
            text = "Accept Blood Shards of Agamaggan from Mangletooth in Camp Taurajo.",
            complete = QuestState(5052, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4456, 0.5922, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "turnin-5052-blood-shards-of-agamaggan",
            kind = "turnin",
            priority = 360,
            text = "Turn in Blood Shards of Agamaggan to Mangletooth in Camp Taurajo.",
            dependsOn = { "objective-5052-blood-shard" },
            complete = QuestState(5052, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4456, 0.5922, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "accept-879-betrayal-from-within",
            kind = "accept",
            priority = 370,
            text = "Accept Betrayal from Within from Mangletooth in Camp Taurajo.",
            complete = QuestState(879, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4456, 0.5923, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "accept-882-ishamuhale",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { quest = { id = 3261, state = "completed" } },
                },
            },
            text = "Accept Ishamuhale from Jorn Skyseer in Camp Taurajo.",
            complete = QuestState(882, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4483, 0.5909, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "note-884-camp-taurajo",
            kind = "note",
            priority = 400,
            text = "Set your hearth in Camp Taurajo with Byula.",
            route = {
                Point(MAP.BARRENS, 0.4560, 0.5900, "Byula",
                    "Travel to Byula."),
            },
        },
        {
            id = "accept-893-weapons-of-choice-2",
            kind = "accept",
            priority = 410,
            text = "Accept Weapons of Choice from Tatternack Steelforge in Camp Taurajo.",
            complete = QuestState(893, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4512, 0.5769, "Tatternack Steelforge",
                    "Travel to Tatternack Steelforge."),
            },
        },
        {
            id = "accept-97250-wrongly-blamed",
            kind = "accept",
            priority = 415,
            conditions = { level = { min = 23 } },
            text = "Accept Wrongly Blamed, Justly Corrected from Grunt Logmar at Camp Taurajo. This is an elite. Bring a group.",
            complete = QuestState(97250, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4460, 0.5920, "Grunt Logmar",
                    "Travel to Grunt Logmar."),
            },
        },
        {
            id = "objective-owatanka",
            kind = "objective",
            priority = 420,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 884, state = "activeOrCompleted" } } },
                },
            },
            text = "Kill Owatanka and collect Owatanka's Tailspike in Southern Barrens to accept a quest.",
            route = {
                Point(MAP.BARRENS, 0.4891, 0.6097, "Owatanka",
                    "Travel to Owatanka."),
            },
        },
        {
            id = "objective-897-silithid-harvester",
            kind = "objective",
            priority = 430,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 897, state = "activeOrCompleted" } } },
                },
            },
            text = "Kill Silithid Harvester and collect Harvester's Head in Field of Giants to accept a quest Optional quest, skip if you're not able to find it.",
            complete = QuestState(897, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4520, 0.7100, "Silithid Harvester",
                    "Travel to Silithid Harvester."),
            },
        },
        {
            id = "objective-868-egg-hunt",
            kind = "objective",
            priority = 440,
            text = "Use Digging Claw on the mounds and collect 12 Silithid Egg at the Field of Giants.",
            dependsOn = { "accept-868-egg-hunt" },
            complete = QuestState(868, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4520, 0.7100, "Field of Giants",
                    "Travel to Field of Giants."),
            },
        },
        {
            id = "accept-98093-field-to-clear",
            kind = "accept",
            priority = 441,
            conditions = { level = { min = 23 } },
            text = "Accept Field to Clear from Sulhasa in the southern Barrens.",
            complete = QuestState(98093, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4780, 0.7760, "Sulhasa",
                    "Travel to Sulhasa."),
            },
        },
        {
            id = "objective-98093-field-to-clear",
            kind = "objective",
            priority = 442,
            conditions = { level = { min = 23 } },
            text = "Field to Clear: slay 7 Stormhide lizards and 7 Hecklefang Stalkers so Sulhasa can leave the tree.",
            dependsOn = { "accept-98093-field-to-clear" },
            complete = QuestState(98093, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4640, 0.7980, "Stormhide",
                    "Travel to Stormhide."),
                Point(MAP.BARRENS, 0.4580, 0.8280, "Hecklefang Stalker",
                    "Travel to Hecklefang Stalker."),
            },
        },
        {
            id = "turnin-98093-field-to-clear",
            kind = "turnin",
            priority = 443,
            conditions = { level = { min = 23 } },
            text = "Turn in Field to Clear to Sulhasa.",
            dependsOn = { "objective-98093-field-to-clear" },
            complete = QuestState(98093, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4780, 0.7760, "Sulhasa",
                    "Travel to Sulhasa."),
            },
        },
        {
            id = "objective-97250-wrongly-blamed",
            kind = "objective",
            priority = 444,
            conditions = { level = { min = 23 } },
            text = "Wrongly Blamed, Justly Corrected: slay the encroaching soldiers and the Outraged Pillager on the Dustwallow border. This is an elite. Bring a group.",
            dependsOn = { "accept-97250-wrongly-blamed" },
            complete = QuestState(97250, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4900, 0.7700, "Encroaching Soldier",
                    "Travel to Encroaching Soldier."),
                Point(MAP.BARRENS, 0.4900, 0.7720, "Outraged Pillager",
                    "Travel to Outraged Pillager."),
            },
        },
        {
            id = "accept-843-gann-s-reclamation",
            kind = "accept",
            priority = 460,
            text = "Accept Gann's Reclamation from Gann Stonespire in Southern Gold Road.",
            complete = QuestState(843, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4610, 0.8130, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "turnin-1534-call-of-water",
            kind = "turnin",
            priority = 480,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Water to Brine in Blackthorn Ridge.",
            complete = QuestState(1534, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4342, 0.7741, "Brine",
                    "Travel to Brine."),
            },
        },
        {
            id = "accept-220-call-of-water",
            kind = "accept",
            priority = 490,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Water from Brine in Blackthorn Ridge.",
            complete = QuestState(220, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4342, 0.7741, "Brine",
                    "Travel to Brine."),
            },
        },
        {
            id = "objective-879-2-nak",
            kind = "objective",
            priority = 500,
            text = "Kill Nak and collect Nak's Skull in Blackthorn Ridge.",
            dependsOn = { "accept-879-betrayal-from-within" },
            complete = QuestObjective(879, 2),
            route = {
                Point(MAP.BARRENS, 0.4387, 0.8300, "Nak",
                    "Travel to Nak."),
            },
        },
        {
            id = "objective-893-2-razormane-seer",
            kind = "objective",
            priority = 510,
            text = "Kill Razormane Seer and collect Charred Razormane Wand in Blackthorn Ridge.",
            dependsOn = { "accept-893-weapons-of-choice" },
            complete = QuestObjective(893, 2),
            route = {
                Point(MAP.BARRENS, 0.4345, 0.8301, "Razormane Seer",
                    "Travel to Razormane Seer."),
            },
        },
        {
            id = "objective-879-1-kuz",
            kind = "objective",
            priority = 520,
            text = "Kill Kuz and collect Kuz's Skull in Blackthorn Ridge.",
            dependsOn = { "accept-879-betrayal-from-within" },
            complete = QuestObjective(879, 1),
            route = {
                Point(MAP.BARRENS, 0.4351, 0.8066, "Kuz",
                    "Travel to Kuz."),
            },
        },
        {
            id = "objective-893-3-razormane-warfrenzy",
            kind = "objective",
            priority = 530,
            text = "Kill Razormane Warfrenzy and collect Razormane War Shield in Blackthorn Ridge.",
            dependsOn = { "accept-893-weapons-of-choice" },
            complete = QuestObjective(893, 3),
            route = {
                Point(MAP.BARRENS, 0.4191, 0.8065, "Razormane Warfrenzy",
                    "Travel to Razormane Warfrenzy."),
            },
        },
        {
            id = "objective-879-3-lok-orcbane",
            kind = "objective",
            priority = 540,
            text = "Kill Lok Orcbane and collect Lok's Skull in Blackthorn Ridge.",
            dependsOn = { "accept-879-betrayal-from-within" },
            complete = QuestObjective(879, 3),
            route = {
                Point(MAP.BARRENS, 0.4064, 0.8062, "Lok Orcbane",
                    "Travel to Lok Orcbane."),
            },
        },
        {
            id = "objective-893-1-weapons-of-choice",
            kind = "objective",
            priority = 550,
            text = "Kill Razormane Pathfinder or Razormane Stalker and collect Razormane Backstabber in Blackthorn Ridge.",
            dependsOn = { "accept-893-weapons-of-choice" },
            complete = QuestObjective(893, 1),
            route = {
                Point(MAP.BARRENS, 0.4390, 0.8413, "Razormane Pathfinder",
                    "Travel to Razormane Pathfinder."),
            },
        },
        {
            id = "objective-843-3-prospector-khazgorm",
            kind = "objective",
            priority = 570,
            text = "Kill Prospector Khazgorm collect Khazgorm's Journal in Bael Modan.",
            dependsOn = { "accept-843-gann-s-reclamation" },
            complete = QuestObjective(843, 3),
            route = {
                Point(MAP.BARRENS, 0.4758, 0.8615, "Prospector Khazgorm",
                    "Travel to Prospector Khazgorm."),
            },
        },
        {
            id = "objective-843-gann-s-reclamation",
            kind = "objective",
            priority = 580,
            text = "Kill 15 Bael'dun Excavator and 5 Bael'dun Foreman in Bael Modan.",
            dependsOn = { "accept-843-gann-s-reclamation" },
            complete = QuestState(843, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4600, 0.8500, "Bael'dun Excavator",
                    "Travel to Bael'dun Excavator."),
            },
        },
        {
            id = "turnin-843-gann-s-reclamation",
            kind = "turnin",
            priority = 600,
            text = "Turn in Gann's Reclamation to Gann Stonespire in Southern Gold Road.",
            dependsOn = { "objective-843-3-prospector-khazgorm", "objective-843-gann-s-reclamation" },
            complete = QuestState(843, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4615, 0.7540, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "accept-846-revenge-of-gann",
            kind = "accept",
            priority = 610,
            text = "Accept Revenge of Gann from Gann Stonespire in Southern Gold Road.",
            complete = QuestState(846, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4615, 0.7540, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "turnin-97250-wrongly-blamed",
            kind = "turnin",
            priority = 625,
            conditions = { level = { min = 23 } },
            text = "Turn in Wrongly Blamed, Justly Corrected to Grunt Logmar at Camp Taurajo.",
            dependsOn = { "objective-97250-wrongly-blamed" },
            complete = QuestState(97250, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4460, 0.5920, "Grunt Logmar",
                    "Travel to Grunt Logmar."),
            },
        },
        {
            id = "turnin-893-weapons-of-choice",
            kind = "turnin",
            priority = 630,
            text = "Turn in Weapons of Choice to Tatternack Steelforge in Camp Taurajo.",
            dependsOn = { "objective-893-2-razormane-seer", "objective-893-3-razormane-warfrenzy", "objective-893-1-weapons-of-choice" },
            complete = QuestState(893, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4511, 0.5772, "Tatternack Steelforge",
                    "Travel to Tatternack Steelforge."),
            },
        },
        {
            id = "turnin-879-betrayal-from-within",
            kind = "turnin",
            priority = 640,
            text = "Turn in Betrayal from Within to Mangletooth in Camp Taurajo.",
            dependsOn = { "objective-879-2-nak", "objective-879-1-kuz", "objective-879-3-lok-orcbane" },
            complete = QuestState(879, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4456, 0.5924, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "accept-906-betrayal-from-within",
            kind = "accept",
            priority = 650,
            text = "Accept Betrayal from Within from Mangletooth in Camp Taurajo.",
            complete = QuestState(906, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4456, 0.5924, "Mangletooth",
                    "Travel to Mangletooth."),
            },
        },
        {
            id = "turnin-868-egg-hunt",
            kind = "turnin",
            priority = 670,
            text = "Turn in Egg Hunt to Korran in The Crossroads.",
            dependsOn = { "objective-868-egg-hunt" },
            complete = QuestState(868, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5108, 0.2961, "Korran",
                    "Travel to Korran."),
            },
        },
        {
            id = "turnin-906-betrayal-from-within",
            kind = "turnin",
            priority = 680,
            text = "Turn in Betrayal from Within to Thork in The Crossroads.",
            dependsOn = { "accept-906-betrayal-from-within" },
            complete = QuestState(906, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5149, 0.3083, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "objective-882-zhevra-charger",
            kind = "objective",
            priority = 690,
            conditions = {
                all = {
                    { quest = { id = 3261, state = "completed" } },
                },
            },
            text = "Kill Zhevra Charger until you find a Fresh Zhevra Carcass.",
            dependsOn = { "accept-882-ishamuhale" },
            complete = QuestState(882, "complete"),
            route = {
                Point(MAP.BARRENS, 0.6010, 0.3170, "Zhevra Charger",
                    "Travel to Zhevra Charger."),
            },
        },
        {
            id = "objective-882-ishamuhale",
            kind = "objective",
            priority = 700,
            conditions = {
                all = {
                    { quest = { id = 3261, state = "completed" } },
                },
            },
            text = "Use Fresh Zhevra Carcass at the tree northwest of Ratchet to summon Ishamuhale. Kill him and collect Ishamuhale's Fang Note: The Fresh Zhevra Carcass will expire if you wait too long.",
            dependsOn = { "accept-882-ishamuhale" },
            complete = QuestState(882, "complete"),
            route = {
                Point(MAP.BARRENS, 0.5984, 0.2989, "Ishamuhale",
                    "Travel to Ishamuhale."),
            },
        },
        {
            id = "accept-1095-further-instructions",
            kind = "accept",
            priority = 710,
            conditions = {
                all = {
                    { quest = { id = 1094, state = "completed" } },
                },
            },
            text = "Accept Further Instructions from Sputtervalve in Ratchet.",
            complete = QuestState(1095, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6296, 0.3721, "Sputtervalve",
                    "Travel to Sputtervalve."),
            },
        },
        {
            id = "turnin-220-call-of-water",
            kind = "turnin",
            priority = 730,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Water to Islen Waterseer in The Tidus Stair.",
            dependsOn = { "accept-220-call-of-water" },
            complete = QuestState(220, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6584, 0.4378, "Islen Waterseer",
                    "Travel to Islen Waterseer."),
            },
        },
        {
            id = "accept-63-call-of-water",
            kind = "accept",
            priority = 740,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Water from Islen Waterseer in The Tidus Stair.",
            complete = QuestState(63, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6584, 0.4378, "Islen Waterseer",
                    "Travel to Islen Waterseer."),
            },
        },
        {
            id = "objective-63-call-of-water",
            kind = "objective",
            priority = 760,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Kill Corrupt Minor Manifestation of Water and collect Corrupt Manifestation's Bracers in North Tide's Run.",
            dependsOn = { "accept-63-call-of-water" },
            complete = QuestState(63, "complete"),
            route = {
                Point(MAP.SILVERPINE, 0.3869, 0.4432, "Corrupt Minor Manifestation of Water",
                    "Travel to Corrupt Minor Manifestation of Water."),
            },
        },
        {
            id = "turnin-63-call-of-water",
            kind = "turnin",
            priority = 770,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Water in North Tide's Run.",
            dependsOn = { "objective-63-call-of-water" },
            complete = QuestState(63, "completed"),
            route = {
                Point(MAP.SILVERPINE, 0.3828, 0.4458, "North Tide's Run",
                    "Travel to North Tide's Run."),
            },
        },
        {
            id = "accept-100-call-of-water",
            kind = "accept",
            priority = 780,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Water in North Tide's Run.",
            complete = QuestState(100, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINE, 0.3828, 0.4458, "North Tide's Run",
                    "Travel to North Tide's Run."),
            },
        },
        {
            id = "turnin-100-call-of-water",
            kind = "turnin",
            priority = 790,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Water to Minor Manifestation of Water in North Tide's Run.",
            dependsOn = { "accept-100-call-of-water" },
            complete = QuestState(100, "completed"),
            route = {
                Point(MAP.SILVERPINE, 0.3872, 0.4459, "Minor Manifestation of Water",
                    "Travel to Minor Manifestation of Water."),
            },
        },
        {
            id = "accept-96-call-of-water",
            kind = "accept",
            priority = 800,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Water from Minor Manifestation of Water in North Tide's Run.",
            complete = QuestState(96, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINE, 0.3872, 0.4459, "Minor Manifestation of Water",
                    "Travel to Minor Manifestation of Water."),
            },
        },
        {
            id = "turnin-96-call-of-water",
            kind = "turnin",
            priority = 820,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Water to Islen Waterseer in The Tidus Stair.",
            dependsOn = { "accept-96-call-of-water" },
            complete = QuestState(96, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6583, 0.4377, "Islen Waterseer",
                    "Travel to Islen Waterseer."),
            },
        },
        {
            id = "accept-907-enraged-thunder-lizards",
            kind = "accept",
            priority = 840,
            conditions = {
                all = {
                    { quest = { id = 882, state = "completed" } },
                },
            },
            text = "Accept Enraged Thunder Lizards from Jorn Skyseer in Camp Taurajo.",
            complete = QuestState(907, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4484, 0.5912, "Jorn Skyseer",
                    "Travel to Jorn Skyseer."),
            },
        },
        {
            id = "objective-907-enraged-thunder-lizards",
            kind = "objective",
            priority = 850,
            conditions = {
                all = {
                    { quest = { id = 882, state = "completed" } },
                },
            },
            text = "Kill Thunderhead and Stormsnout for 3 Thunder Lizard Blood in Southern Barrens.",
            dependsOn = { "accept-907-enraged-thunder-lizards" },
            complete = QuestState(907, "complete"),
            route = {
                Point(MAP.BARRENS, 0.5000, 0.6000, "Thunderhead",
                    "Travel to Thunderhead."),
            },
        },
        {
            id = "accept-913-cry-of-the-thunderhawk",
            kind = "accept",
            priority = 870,
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
            id = "objective-913-cry-of-the-thunderhawk",
            kind = "objective",
            priority = 880,
            conditions = {
                all = {
                    { quest = { id = 907, state = "completed" } },
                },
            },
            text = "Kill Thunderhawk Cloudscraper or Thunderhawk Hatchling to collect Thunderhawk Wings.",
            dependsOn = { "accept-913-cry-of-the-thunderhawk" },
            complete = QuestState(913, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4450, 0.6160, "Thunderhawk Cloudscraper",
                    "Travel to Thunderhawk Cloudscraper."),
            },
        },
        {
            id = "turnin-913-cry-of-the-thunderhawk",
            kind = "turnin",
            priority = 890,
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
