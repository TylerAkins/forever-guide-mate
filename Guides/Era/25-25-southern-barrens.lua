local _, ns = ...

-- Horde Era leveling route for the Southern Barrens, levels 25-25.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    BARRENS = 1413,
    THOUSAND_NEEDLES = 1441,
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
    id = "leveling-era-25-25-southern-barrens",
    title = "25-25 Southern Barrens (Era)",
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
            id = "accept-868-egg-hunt",
            kind = "accept",
            priority = 20,
            text = "Accept Egg Hunt from Korran in The Crossroads.",
            complete = QuestState(868, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5110, 0.2962, "Korran",
                    "Travel to Korran."),
            },
        },
        {
            id = "accept-882-ishamuhale",
            kind = "accept",
            priority = 40,
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
            id = "note-893-camp-taurajo",
            kind = "note",
            priority = 50,
            text = "Set your hearth in Camp Taurajo with Byula.",
            route = {
                Point(MAP.BARRENS, 0.4560, 0.5900, "Byula",
                    "Travel to Byula."),
            },
        },
        {
            id = "accept-893-weapons-of-choice",
            kind = "accept",
            priority = 60,
            text = "Accept Weapons of Choice from Tatternack Steelforge in Camp Taurajo.",
            complete = QuestState(893, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4512, 0.5769, "Tatternack Steelforge",
                    "Travel to Tatternack Steelforge."),
            },
        },
        {
            id = "objective-owatanka",
            kind = "objective",
            priority = 70,
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
            id = "objective-silithid-harvester",
            kind = "objective",
            priority = 80,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 897, state = "activeOrCompleted" } } },
                },
            },
            text = "Kill Silithid Harvester and collect Harvester's Head in Field of Giants to accept a quest.",
            route = {
                Point(MAP.BARRENS, 0.4640, 0.7200, "Silithid Harvester",
                    "Travel to Silithid Harvester."),
            },
        },
        {
            id = "objective-868-egg-hunt",
            kind = "objective",
            priority = 90,
            text = "Use Digging Claw on the mounds and collect 12 Silithid Egg at the Field of Giants.",
            dependsOn = { "accept-868-egg-hunt" },
            complete = QuestState(868, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4500, 0.7200, "Field of Giants",
                    "Travel to Field of Giants."),
            },
        },
        {
            id = "objective-879-2-nak",
            kind = "objective",
            priority = 110,
            text = "Kill Nak and collect Nak's Skull in Blackthorn Ridge.",
            complete = QuestObjective(879, 2),
            route = {
                Point(MAP.BARRENS, 0.4387, 0.8300, "Nak",
                    "Travel to Nak."),
            },
        },
        {
            id = "objective-893-2-razormane-seer",
            kind = "objective",
            priority = 120,
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
            priority = 130,
            text = "Kill Kuz and collect Kuz's Skull in Blackthorn Ridge.",
            complete = QuestObjective(879, 1),
            route = {
                Point(MAP.BARRENS, 0.4351, 0.8066, "Kuz",
                    "Travel to Kuz."),
            },
        },
        {
            id = "objective-893-3-razormane-warfrenzy",
            kind = "objective",
            priority = 140,
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
            priority = 150,
            text = "Kill Lok Orcbane and collect Lok's Skull in Blackthorn Ridge.",
            complete = QuestObjective(879, 3),
            route = {
                Point(MAP.BARRENS, 0.4064, 0.8062, "Lok Orcbane",
                    "Travel to Lok Orcbane."),
            },
        },
        {
            id = "objective-893-1-weapons-of-choice",
            kind = "objective",
            priority = 160,
            text = "Kill Razormane Pathfinder or Razormane Stalker and collect Razormane Backstabber in Blackthorn Ridge.",
            dependsOn = { "accept-893-weapons-of-choice" },
            complete = QuestObjective(893, 1),
            route = {
                Point(MAP.BARRENS, 0.4390, 0.8413, "Razormane Pathfinder",
                    "Travel to Razormane Pathfinder."),
            },
        },
        {
            id = "accept-843-gann-s-reclamation",
            kind = "accept",
            priority = 180,
            text = "Accept Gann's Reclamation from Gann Stonespire in Southern Gold Road.",
            complete = QuestState(843, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4610, 0.8130, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "objective-843-3-prospector-khazgorm",
            kind = "objective",
            priority = 190,
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
            priority = 200,
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
            priority = 220,
            text = "Turn in Gann's Reclamation to Gann Stonespire in Southern Gold Road.",
            dependsOn = { "objective-843-3-prospector-khazgorm", "objective-843-gann-s-reclamation" },
            complete = QuestState(843, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4610, 0.8130, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "accept-846-revenge-of-gann",
            kind = "accept",
            priority = 230,
            text = "Accept Revenge of Gann from Gann Stonespire in Southern Gold Road.",
            complete = QuestState(846, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4610, 0.8130, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "turnin-893-weapons-of-choice",
            kind = "turnin",
            priority = 250,
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
            priority = 260,
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
            priority = 270,
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
            priority = 290,
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
            priority = 300,
            text = "Turn in Betrayal from Within to Thork in The Crossroads.",
            dependsOn = { "accept-906-betrayal-from-within" },
            complete = QuestState(906, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5149, 0.3083, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "objective-882-zhevra-runner",
            kind = "objective",
            priority = 310,
            conditions = {
                all = {
                    { quest = { id = 3261, state = "completed" } },
                },
            },
            text = "Kill Zhevra Runner until you find a Fresh Zhevra Carcass.",
            dependsOn = { "accept-882-ishamuhale" },
            complete = QuestState(882, "complete"),
            route = {
                Point(MAP.BARRENS, 0.6100, 0.3200, "Zhevra Runner",
                    "Travel to Zhevra Runner."),
            },
        },
        {
            id = "objective-882-ishamuhale",
            kind = "objective",
            priority = 320,
            conditions = {
                all = {
                    { quest = { id = 3261, state = "completed" } },
                },
            },
            text = "Use Fresh Zhevra Carcass at the tree northwest of Ratchet to summon Ishamuhale. Kill him and collect Ishamuhale's Fang.",
            dependsOn = { "accept-882-ishamuhale" },
            complete = QuestState(882, "complete"),
            route = {
                Point(MAP.BARRENS, 0.5900, 0.3000, "Ishamuhale",
                    "Travel to Ishamuhale."),
            },
        },
        {
            id = "accept-1095-further-instructions",
            kind = "accept",
            priority = 330,
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
            id = "accept-907-enraged-thunder-lizards",
            kind = "accept",
            priority = 350,
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
            id = "note-1153-camp-taurajo",
            kind = "note",
            priority = 360,
            text = "Set your hearth in Camp Taurajo with Byula.",
            route = {
                Point(MAP.BARRENS, 0.4560, 0.5900, "Byula",
                    "Travel to Byula."),
            },
        },
        {
            id = "accept-1153-a-new-ore-sample",
            kind = "accept",
            priority = 370,
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
            id = "objective-907-enraged-thunder-lizards",
            kind = "objective",
            priority = 380,
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
            priority = 400,
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
            priority = 410,
            conditions = {
                all = {
                    { quest = { id = 907, state = "completed" } },
                },
            },
            text = "Kill Thunderhawk Cloudscraper to collect Thunderhawk Wings.",
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
            priority = 420,
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
            id = "objective-846-revenge-of-gann",
            kind = "objective",
            priority = 440,
            text = "Kill Bael'dun Rifleman, Bael'dun Soldier and Bael'dun Officer at Bael Dun Keep to collect 6 vials of Nitroglycerin, 6 bundles of Wood Pulp and 6 samples of Sodium Nitrate in Bael'dun Keep.",
            dependsOn = { "accept-846-revenge-of-gann" },
            complete = QuestState(846, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4900, 0.8400, "Bael'dun Rifleman",
                    "Travel to Bael'dun Rifleman."),
            },
        },
        {
            id = "turnin-846-revenge-of-gann",
            kind = "turnin",
            priority = 460,
            text = "Turn in Revenge of Gann to Gann Stonespire in Southern Gold Road.",
            dependsOn = { "objective-846-revenge-of-gann" },
            complete = QuestState(846, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4600, 0.8100, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "accept-849-revenge-of-gann",
            kind = "accept",
            priority = 470,
            text = "Accept Revenge of Gann from Gann Stonespire in Southern Gold Road.",
            complete = QuestState(849, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4600, 0.8100, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "objective-849-revenge-of-gann",
            kind = "objective",
            priority = 490,
            text = "Use Explosive Stick of Gann to blow up the Bael Modan Flying Machine on top of the tower in Bael Modan.",
            dependsOn = { "accept-849-revenge-of-gann" },
            complete = QuestState(849, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4700, 0.8560, "Bael Modan",
                    "Travel to Bael Modan."),
            },
        },
        {
            id = "turnin-849-revenge-of-gann",
            kind = "turnin",
            priority = 500,
            text = "Turn in Revenge of Gann to Gann Stonespire in Southern Gold Road.",
            dependsOn = { "objective-849-revenge-of-gann" },
            complete = QuestState(849, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4600, 0.8100, "Gann Stonespire",
                    "Travel to Gann Stonespire."),
            },
        },
        {
            id = "objective-washte-pawne",
            kind = "objective",
            priority = 510,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 885, state = "activeOrCompleted" } } },
                },
            },
            text = "Kill Washte Pawne and collect Washte Pawne's Feather to start a new quest You can safely skip this if you can't find Washte Pawne.",
            route = {
                Point(MAP.BARRENS, 0.4760, 0.7940, "Washte Pawne",
                    "Travel to Washte Pawne."),
            },
        },
        {
            id = "turnin-5881-calling-in-the-reserves",
            kind = "turnin",
            priority = 530,
            text = "Turn in Calling in the Reserves to Grish Longrunner in The Great Lift.",
            complete = QuestState(5881, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3193, 0.2156, "Grish Longrunner",
                    "Travel to Grish Longrunner."),
            },
        },
        {
            id = "accept-4542-message-to-freewind-post",
            kind = "accept",
            priority = 540,
            text = "Accept Message to Freewind Post from Brave Moonhorn in The Great Lift.",
            complete = QuestState(4542, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.3225, 0.2210, "Brave Moonhorn",
                    "Travel to Brave Moonhorn."),
            },
        },
    },
})
