local _, ns = ...

-- Alliance Era leveling route for Darkshore, levels 23-24.
-- Forever quests from the Darkshore list that sit on this pass are woven in.
-- Swelling Forces is finished here if it was picked up at the grove. Holy Diver and Baron Marinous turn in only after the item starts them.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DARKSHORE = 1439,
    DARNASSUS = 1457,
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
    id = "leveling-era-23-24-darkshore",
    title = "23-24 Darkshore",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 23 } },
        },
    },
    goals = {
        {
            id = "travel-741-auberdine",
            kind = "travel",
            priority = 10,
            text = "Travel to Auberdine.",
            route = {
                Point(MAP.DARKSHORE, 0.3721, 0.4427, "Auberdine",
                    "Travel to Auberdine."),
            },
        },
        {
            id = "note-741-auberdine",
            kind = "note",
            priority = 20,
            text = "Set your hearth in Auberdine with Innkeeper Shaussiy.",
            route = {
                Point(MAP.DARKSHORE, 0.3700, 0.4410, "Innkeeper Shaussiy",
                    "Travel to Innkeeper Shaussiy."),
            },
        },
        {
            id = "accept-741-the-absent-minded-prospector",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 731, state = "completed" } },
                },
            },
            text = "Accept The Absent Minded Prospector from Archaeologist Hollee in Auberdine.",
            complete = QuestState(741, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3746, 0.4188, "Archaeologist Hollee",
                    "Travel to Archaeologist Hollee."),
            },
        },
        {
            id = "accept-986-a-lost-master",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                },
            },
            text = "Accept A Lost Master from Terenthis in Auberdine.",
            complete = QuestState(986, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3932, 0.4345, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "objective-951-mathystra-relics",
            kind = "objective",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 950, state = "completed" } },
                },
            },
            text = "Collect 6 Mathystra Relic from the ground in Ruins of Mathystra. A Stormscale Beastmistress on the northern shore may drop a Rod of Deep Dominion. Use it if she does.",
            complete = QuestState(951, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5850, 0.2431, "Ruins of Mathystra",
                    "Travel to Ruins of Mathystra."),
            },
        },
        {
            id = "objective-98013-swelling-forces",
            kind = "objective",
            priority = 51,
            conditions = {
                all = {
                    { quest = { id = 98013, state = "activeOrCompleted" } },
                },
            },
            text = "Swelling Forces: slay 12 Stormscale Myrmidons, 8 Stormscale Sorceresses, and 6 Stormscale Warriors.",
            complete = QuestState(98013, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5840, 0.2120, "Stormscale Myrmidon",
                    "Travel to Stormscale Myrmidon."),
                Point(MAP.DARKSHORE, 0.5860, 0.2040, "Stormscale Sorceress",
                    "Travel to Stormscale Sorceress."),
                Point(MAP.DARKSHORE, 0.6120, 0.1980, "Stormscale Warrior",
                    "Travel to Stormscale Warrior."),
            },
        },
        {
            id = "turnin-87760-holy-diver",
            kind = "turnin",
            priority = 165,
            conditions = {
                all = {
                    { quest = { id = 87760, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Holy Diver to Gwennyth Bly'Leggonde in Auberdine if you took the Rod of Deep Dominion from a Stormscale Beastmistress.",
            complete = QuestState(87760, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3660, 0.4540, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "travel-2098-mist-s-edge",
            kind = "travel",
            priority = 60,
            text = "Travel to Mist's Edge.",
            route = {
                Point(MAP.DARKSHORE, 0.5668, 0.1353, "Mist's Edge",
                    "Travel to Mist's Edge."),
            },
        },
        {
            id = "accept-2098-gyromast-s-retrieval",
            kind = "accept",
            priority = 70,
            text = "Accept Gyromast's Retrieval from Gelkak Gyromast in Mist's Edge.",
            complete = QuestState(2098, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.5668, 0.1353, "Gelkak Gyromast",
                    "Travel to Gelkak Gyromast."),
            },
        },
        {
            id = "objective-2098-3-raging-reef-crawler",
            kind = "objective",
            priority = 80,
            text = "Kill Raging Reef Crawler until you collect Bottom of Gelkak's Key in Mist's Edge.",
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
            complete = QuestObjective(2098, 3),
            route = {
                Point(MAP.DARKSHORE, 0.5636, 0.1722, "Raging Reef Crawler",
                    "Travel to Raging Reef Crawler."),
            },
        },
        {
            id = "objective-2098-2-greymist-tidehunter",
            kind = "objective",
            priority = 90,
            text = "Kill Greymist Tidehunter until you collect Middle of Gelkak's Key in Mist's Edge.",
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
            complete = QuestObjective(2098, 2),
            route = {
                Point(MAP.DARKSHORE, 0.5541, 0.1233, "Greymist Tidehunter",
                    "Travel to Greymist Tidehunter."),
            },
        },
        {
            id = "objective-2098-1-giant-foreststrider",
            kind = "objective",
            priority = 100,
            text = "Kill Giant Foreststrider until you collect Top of Gelkak's Key in Mist's Edge.",
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
            complete = QuestObjective(2098, 1),
            route = {
                Point(MAP.DARKSHORE, 0.6171, 0.1154, "Giant Foreststrider",
                    "Travel to Giant Foreststrider."),
            },
        },
        {
            id = "objective-986-a-lost-master",
            kind = "objective",
            priority = 110,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                },
            },
            text = "Kill Moonstalker Sire and collect 5 Fine Moonstalker Pelt in Mist's Edge.",
            dependsOn = { "accept-986-a-lost-master" },
            complete = QuestState(986, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.6100, 0.1200, "Moonstalker Sire",
                    "Travel to Moonstalker Sire."),
            },
        },
        {
            id = "turnin-2098-gyromast-s-retrieval",
            kind = "turnin",
            priority = 120,
            text = "Turn in Gyromast's Retrieval to Gelkak Gyromast in Mist's Edge.",
            dependsOn = { "objective-2098-3-raging-reef-crawler", "objective-2098-2-greymist-tidehunter", "objective-2098-1-giant-foreststrider" },
            complete = QuestState(2098, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.5667, 0.1349, "Gelkak Gyromast",
                    "Travel to Gelkak Gyromast."),
            },
        },
        {
            id = "accept-2078-gyromast-s-revenge",
            kind = "accept",
            priority = 130,
            text = "Accept Gyromast's Revenge from Gelkak Gyromast in Mist's Edge.",
            complete = QuestState(2078, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.5667, 0.1349, "Gelkak Gyromast",
                    "Travel to Gelkak Gyromast."),
            },
        },
        {
            id = "objective-2078-gyromast-s-revenge",
            kind = "objective",
            priority = 140,
            text = "Speak to The Threshwackonator 4100 and bring it back to the quest giver in Mist's Edge The Threshwackonator 4100 will turn hostile as soon as you reach Gelkak Gyromast, be ready to use all your cooldowns as it can be difficult to solo.",
            dependsOn = { "accept-2078-gyromast-s-revenge" },
            complete = QuestState(2078, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5579, 0.1826, "The Threshwackonator 4100",
                    "Travel to The Threshwackonator 4100."),
            },
        },
        {
            id = "turnin-2078-gyromast-s-revenge",
            kind = "turnin",
            priority = 150,
            text = "Turn in Gyromast's Revenge to Gelkak Gyromast in Mist's Edge.",
            dependsOn = { "objective-2078-gyromast-s-revenge" },
            complete = QuestState(2078, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.5667, 0.1351, "Gelkak Gyromast",
                    "Travel to Gelkak Gyromast."),
            },
        },
        {
            id = "travel-auberdine",
            kind = "travel",
            priority = 160,
            text = "Travel to Auberdine.",
            route = {
                Point(MAP.DARKSHORE, 0.3721, 0.4427, "Auberdine",
                    "Travel to Auberdine."),
            },
        },
        {
            id = "turnin-986-a-lost-master",
            kind = "turnin",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                },
            },
            text = "Turn in A Lost Master to Terenthis in Auberdine.",
            dependsOn = { "objective-986-a-lost-master" },
            complete = QuestState(986, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3932, 0.4345, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "accept-993-a-lost-master",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                },
            },
            text = "Accept A Lost Master from Terenthis in Auberdine.",
            complete = QuestState(993, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3934, 0.4349, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "travel-951-grove-of-the-ancients",
            kind = "travel",
            priority = 190,
            text = "Travel to Grove of the Ancients.",
            route = {
                Point(MAP.DARKSHORE, 0.4357, 0.7634, "Grove of the Ancients",
                    "Travel to Grove of the Ancients."),
            },
        },
        {
            id = "turnin-951-mathystra-relics",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { quest = { id = 950, state = "completed" } },
                },
            },
            text = "Turn in Mathystra Relics to Onu in Grove of the Ancients.",
            dependsOn = { "objective-951-mathystra-relics" },
            complete = QuestState(951, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4357, 0.7634, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "turnin-98013-swelling-forces",
            kind = "turnin",
            priority = 201,
            conditions = {
                all = {
                    { quest = { id = 98013, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Swelling Forces to Arbal at the Grove of the Ancients.",
            complete = QuestState(98013, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4360, 0.7640, "Arbal",
                    "Travel to Arbal."),
            },
        },
        {
            id = "turnin-98028-baron-marinous",
            kind = "turnin",
            priority = 202,
            conditions = {
                all = {
                    { quest = { id = 98028, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Baron Marinous to Onu at the Grove of the Ancients if you have the Clouded Water Globe.",
            complete = QuestState(98028, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4360, 0.7640, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "travel-blackwood-den",
            kind = "travel",
            priority = 210,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                },
            },
            text = "Travel to Blackwood Den.",
            route = {
                Point(MAP.DARKSHORE, 0.4496, 0.8533, "Blackwood Den",
                    "Travel to Blackwood Den."),
            },
        },
        {
            id = "turnin-993-a-lost-master",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                },
            },
            text = "Turn in A Lost Master to Volcor in Blackwood Den.",
            dependsOn = { "accept-993-a-lost-master" },
            complete = QuestState(993, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4496, 0.8533, "Volcor",
                    "Travel to Volcor."),
            },
        },
        {
            id = "note-accept-quest",
            kind = "note",
            priority = 230,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                },
            },
            text = "Volcor in Blackwood Den Select either 'Escape Through Force' for Steadfast Cinch (hard) or 'Escape Through Stealth' for Scarab Trousers (easy).",
        },
        {
            id = "accept-994-escape-through-force",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 995, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept Escape Through Force from Volcor in Blackwood Den.",
            complete = QuestState(994, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4496, 0.8533, "Volcor",
                    "Travel to Volcor."),
            },
        },
        {
            id = "objective-994-escape-through-force",
            kind = "objective",
            priority = 250,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 995, state = "activeOrCompleted" } } },
                },
            },
            text = "Escort Volcor until he escape in Blackwood Den.",
            dependsOn = { "accept-994-escape-through-force" },
            complete = QuestState(994, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4200, 0.8100, "Volcor",
                    "Travel to Volcor."),
            },
        },
        {
            id = "accept-995-escape-through-stealth",
            kind = "accept",
            priority = 260,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 994, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept Escape Through Stealth from Volcor in Blackwood Den.",
            complete = QuestState(995, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4501, 0.8534, "Volcor",
                    "Travel to Volcor."),
            },
        },
        {
            id = "objective-995-escape-through-stealth",
            kind = "objective",
            priority = 270,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 994, state = "activeOrCompleted" } } },
                },
            },
            text = "Escape the Furbolg cave and meet Terenthis in Auberdine.",
            dependsOn = { "accept-995-escape-through-stealth" },
            complete = QuestState(995, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4475, 0.8521, "Escape Through Stealth",
                    "Travel to Escape Through Stealth."),
            },
        },
        {
            id = "travel-auberdine-2",
            kind = "travel",
            priority = 280,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                },
            },
            text = "Travel to Auberdine.",
            route = {
                Point(MAP.DARKSHORE, 0.3934, 0.4348, "Auberdine",
                    "Travel to Auberdine."),
            },
        },
        {
            id = "turnin-995-escape-through-stealth",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 994, state = "activeOrCompleted" } } },
                },
            },
            text = "Turn in Escape Through Stealth to Terenthis in Auberdine.",
            dependsOn = { "objective-995-escape-through-stealth" },
            complete = QuestState(995, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3934, 0.4348, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "turnin-994-escape-through-stealth",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 995, state = "activeOrCompleted" } } },
                },
            },
            text = "Turn in Escape Through Stealth to Terenthis in Auberdine.",
            dependsOn = { "objective-994-escape-through-force" },
            complete = QuestState(994, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3934, 0.4348, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "travel-darnassus",
            kind = "travel",
            priority = 310,
            conditions = {
                all = {
                    { quest = { id = 731, state = "completed" } },
                },
            },
            text = "Travel to Darnassus.",
            route = {
                Point(MAP.DARNASSUS, 0.3137, 0.8414, "Darnassus",
                    "Travel to Darnassus."),
            },
        },
        {
            id = "turnin-741-the-absent-minded-prospector",
            kind = "turnin",
            priority = 320,
            conditions = {
                all = {
                    { quest = { id = 731, state = "completed" } },
                },
            },
            text = "Turn in The Absent Minded Prospector to Chief Archaeologist Greywhisker in Darnassus.",
            dependsOn = { "accept-741-the-absent-minded-prospector" },
            complete = QuestState(741, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3137, 0.8414, "Chief Archaeologist Greywhisker",
                    "Travel to Chief Archaeologist Greywhisker."),
            },
        },
        {
            id = "accept-942-the-absent-minded-prospector",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { quest = { id = 731, state = "completed" } },
                },
            },
            text = "Accept The Absent Minded Prospector from Chief Archaeologist Greywhisker in Darnassus.",
            complete = QuestState(942, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3128, 0.8365, "Chief Archaeologist Greywhisker",
                    "Travel to Chief Archaeologist Greywhisker."),
            },
        },
    },
})
