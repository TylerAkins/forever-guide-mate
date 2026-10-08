local _, ns = ...

-- Forever Casual spine: Darkshore (20-21)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves ported from prior Leveling chapters (quest id >= 90000).
-- Coordinates not yet validated in Forever.

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

local MAP = {
    DARKSHORE = 1439,
    ASHENVALE = 1440,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-darkshore-part-2",
    title = "Darkshore",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 20 } },
        },
    },
    goals = {
        {
            id = "accept-947-cave-mushrooms",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept Cave Mushrooms.",
            complete = QuestState(947, "activeOrCompleted"),
            route = {
                Point(1439, 0.3732, 0.4364, "Cave Mushrooms",
                    "Travel to Cave Mushrooms."),
            },
        },
        {
            id = "turnin-3765-the-corruption-abroad",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Corruption Abroad.",
            complete = QuestState(3765, "completed"),
            route = {
                Point(1439, 0.3833, 0.4304, "The Corruption Abroad",
                    "Travel to The Corruption Abroad."),
            },
        },
        {
            id = "accept-2139-tharnariun-s-hope",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept Tharnariun's Hope.",
            complete = QuestState(2139, "activeOrCompleted"),
            route = {
                Point(1439, 0.3884, 0.4342, "Tharnariun's Hope",
                    "Travel to Tharnariun's Hope."),
            },
        },
        {
            id = "accept-986-a-lost-master",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Lost Master.",
            complete = QuestState(986, "activeOrCompleted"),
            route = {
                Point(1439, 0.3937, 0.4348, "A Lost Master",
                    "Travel to A Lost Master."),
            },
        },
        {
            id = "accept-4763-the-blackwood-corrupted",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Blackwood Corrupted.",
            complete = QuestState(4763, "activeOrCompleted"),
            route = {
                Point(1439, 0.3740, 0.4013, "The Blackwood Corrupted",
                    "Travel to The Blackwood Corrupted."),
            },
        },
        {
            id = "accept-729-the-absent-minded-prospector",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Absent Minded Prospector.",
            complete = QuestState(729, "activeOrCompleted"),
            route = {
                Point(1439, 0.3744, 0.4184, "The Absent Minded Prospector",
                    "Travel to The Absent Minded Prospector."),
            },
        },
        {
            id = "objective-4763-1-empty-cleansing-bowl",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Use Empty Cleansing Bowl.",
            complete = QuestObjective(4763, 1, "Empty Cleansing Bowl"),
            dependsOn = { "accept-4763-the-blackwood-corrupted" },
            route = {
                Point(1439, 0.3778, 0.4402, "Empty Cleansing Bowl",
                    "Travel to Empty Cleansing Bowl."),
            },
        },
        {
            id = "accept-1003-buzzbox-525",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept Buzzbox 525.",
            complete = QuestState(1003, "activeOrCompleted"),
            route = {
                Point(1439, 0.5128, 0.2458, "Buzzbox 525",
                    "Travel to Buzzbox 525."),
            },
        },
        {
            id = "accept-2098-gyromast-s-retrieval",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept Gyromast's Retrieval.",
            complete = QuestState(2098, "activeOrCompleted"),
            route = {
                Point(1439, 0.5665, 0.1348, "Gyromast's Retrieval",
                    "Travel to Gyromast's Retrieval."),
            },
        },
        {
            id = "objective-2098-2-greymist-tidehunter",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Kill Greymist Tidehunter.",
            complete = QuestObjective(2098, 2, "Greymist Tidehunter"),
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
            route = {
                Point(1439, 0.5495, 0.1216, "Greymist Tidehunter",
                    "Travel to Greymist Tidehunter."),
            },
        },
        {
            id = "objective-2098-1-giant-foreststrider",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Kill Giant Foreststrider.",
            complete = QuestObjective(2098, 1, "Giant Foreststrider"),
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
            route = {
                Point(1439, 0.5840, 0.1460, "Giant Foreststrider",
                    "Travel to Giant Foreststrider."),
            },
        },
        {
            id = "turnin-2098-gyromast-s-retrieval",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Gyromast's Retrieval.",
            complete = QuestState(2098, "completed"),
            dependsOn = { "accept-2098-gyromast-s-retrieval", "objective-2098-2-greymist-tidehunter", "objective-2098-1-giant-foreststrider" },
            route = {
                Point(1439, 0.5665, 0.1348, "Gyromast's Retrieval",
                    "Travel to Gyromast's Retrieval."),
            },
        },
        {
            id = "objective-6122-1-empty-cliffspring-falls-sampler",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Use Empty Cliffspring Falls Sampler.",
            complete = QuestObjective(6122, 1, "Empty Cliffspring Falls Sampler"),
            route = {
                Point(1439, 0.5493, 0.3332, "Empty Cliffspring Falls Sampler",
                    "Travel to Empty Cliffspring Falls Sampler."),
            },
        },
        {
            id = "objective-4763-1-filled-cleansing-bowl",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Use Filled Cleansing Bowl.",
            complete = QuestObjective(4763, 1, "Filled Cleansing Bowl"),
            dependsOn = { "accept-4763-the-blackwood-corrupted" },
            route = {
                Point(1439, 0.5241, 0.3344, "Filled Cleansing Bowl",
                    "Travel to Filled Cleansing Bowl."),
            },
        },
        {
            id = "turnin-6122-the-principal-source",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
                { class = 11 },
            } },
            text = "Turn in The Principal Source.",
            complete = QuestState(6122, "completed"),
            dependsOn = { "objective-6122-1-empty-cliffspring-falls-sampler" },
            route = {
                Point(1439, 0.3769, 0.4066, "The Principal Source",
                    "Travel to The Principal Source."),
            },
        },
        {
            id = "turnin-4763-the-blackwood-corrupted",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Blackwood Corrupted.",
            complete = QuestState(4763, "completed"),
            dependsOn = { "accept-4763-the-blackwood-corrupted", "objective-4763-1-empty-cleansing-bowl", "objective-4763-1-filled-cleansing-bowl" },
            route = {
                Point(1439, 0.3740, 0.4013, "The Blackwood Corrupted",
                    "Travel to The Blackwood Corrupted."),
            },
        },
        {
            id = "turnin-947-cave-mushrooms",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Cave Mushrooms.",
            complete = QuestState(947, "completed"),
            dependsOn = { "accept-947-cave-mushrooms" },
            route = {
                Point(1439, 0.3732, 0.4364, "Cave Mushrooms",
                    "Travel to Cave Mushrooms."),
            },
        },
        {
            id = "accept-948-onu",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept Onu.",
            complete = QuestState(948, "activeOrCompleted"),
            route = {
                Point(1439, 0.3732, 0.4364, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-4740-wanted-murkdeep",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept WANTED: Murkdeep!.",
            complete = QuestState(4740, "activeOrCompleted"),
            route = {
                Point(1439, 0.3723, 0.4423, "WANTED: Murkdeep!",
                    "Travel to WANTED: Murkdeep!."),
            },
        },
        {
            id = "turnin-2139-tharnariun-s-hope",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Tharnariun's Hope.",
            complete = QuestState(2139, "completed"),
            dependsOn = { "accept-2139-tharnariun-s-hope" },
            route = {
                Point(1439, 0.3884, 0.4341, "Tharnariun's Hope",
                    "Travel to Tharnariun's Hope."),
            },
        },
        {
            id = "turnin-986-a-lost-master",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Lost Master.",
            complete = QuestState(986, "completed"),
            dependsOn = { "accept-986-a-lost-master" },
            route = {
                Point(1439, 0.3937, 0.4348, "A Lost Master",
                    "Travel to A Lost Master."),
            },
        },
        {
            id = "accept-993-a-lost-master",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Lost Master.",
            complete = QuestState(993, "activeOrCompleted"),
            route = {
                Point(1439, 0.3937, 0.4348, "A Lost Master",
                    "Travel to A Lost Master."),
            },
        },
        {
            id = "turnin-952-grove-of-the-ancients",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Grove of the Ancients.",
            complete = QuestState(952, "completed"),
            route = {
                Point(1439, 0.4355, 0.7629, "Grove of the Ancients",
                    "Travel to Grove of the Ancients."),
            },
        },
        {
            id = "turnin-948-onu",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Onu.",
            complete = QuestState(948, "completed"),
            dependsOn = { "accept-948-onu" },
            route = {
                Point(1439, 0.4355, 0.7629, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-944-the-master-s-glaive",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Master's Glaive.",
            complete = QuestState(944, "activeOrCompleted"),
            route = {
                Point(1439, 0.4355, 0.7629, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "objective-4740-1-greymist-warrior",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Greymist Warrior.",
            complete = QuestObjective(4740, 1, "Greymist Warrior"),
            dependsOn = { "accept-4740-wanted-murkdeep" },
            route = {
                Point(1439, 0.3651, 0.7659, "Greymist Warrior",
                    "Travel to Greymist Warrior."),
            },
        },
        {
            id = "accept-4730-beached-sea-creature",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Beached Sea Creature.",
            complete = QuestState(4730, "activeOrCompleted"),
            route = {
                Point(1439, 0.3273, 0.8082, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "accept-4731-beached-sea-turtle",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Beached Sea Turtle.",
            complete = QuestState(4731, "activeOrCompleted"),
            route = {
                Point(1439, 0.3170, 0.8370, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "accept-4732-beached-sea-turtle",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Beached Sea Turtle.",
            complete = QuestState(4732, "activeOrCompleted"),
            route = {
                Point(1439, 0.3127, 0.8554, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "accept-4733-beached-sea-creature",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Beached Sea Creature.",
            complete = QuestState(4733, "activeOrCompleted"),
            route = {
                Point(1439, 0.3129, 0.8754, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "turnin-729-the-absent-minded-prospector",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Absent Minded Prospector.",
            complete = QuestState(729, "completed"),
            dependsOn = { "accept-729-the-absent-minded-prospector" },
            route = {
                Point(1439, 0.3573, 0.8370, "The Absent Minded Prospector",
                    "Travel to The Absent Minded Prospector."),
            },
        },
        {
            id = "accept-731-the-absent-minded-prospector",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Absent Minded Prospector.",
            complete = QuestState(731, "activeOrCompleted"),
            route = {
                Point(1439, 0.3573, 0.8370, "The Absent Minded Prospector",
                    "Travel to The Absent Minded Prospector."),
            },
        },
        {
            id = "turnin-944-the-master-s-glaive",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Master's Glaive.",
            complete = QuestState(944, "completed"),
            dependsOn = { "accept-944-the-master-s-glaive" },
            route = {
                Point(1439, 0.3853, 0.8617, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "accept-949-the-twilight-camp",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Twilight Camp.",
            complete = QuestState(949, "activeOrCompleted"),
            route = {
                Point(1439, 0.3853, 0.8617, "The Twilight Camp",
                    "Travel to The Twilight Camp."),
            },
        },
        {
            id = "turnin-949-the-twilight-camp",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Twilight Camp.",
            complete = QuestState(949, "completed"),
            dependsOn = { "accept-949-the-twilight-camp" },
            route = {
                Point(1439, 0.3854, 0.8605, "The Twilight Camp",
                    "Travel to The Twilight Camp."),
            },
        },
        {
            id = "accept-950-return-to-onu",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Onu.",
            complete = QuestState(950, "activeOrCompleted"),
            route = {
                Point(1439, 0.3854, 0.8605, "Return to Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-945-therylune-s-escape",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Therylune's Escape.",
            complete = QuestState(945, "activeOrCompleted"),
            route = {
                Point(1439, 0.3864, 0.8734, "Therylune's Escape",
                    "Travel to Therylune's Escape."),
            },
        },
        {
            id = "accept-968-the-powers-below",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Use the Book: The Powers Below to accept The Powers Below.",
            complete = QuestState(968, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-993-a-lost-master",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Lost Master.",
            complete = QuestState(993, "completed"),
            dependsOn = { "accept-993-a-lost-master" },
            route = {
                Point(1439, 0.4501, 0.8530, "A Lost Master",
                    "Travel to A Lost Master."),
            },
        },
        {
            id = "accept-995-escape-through-stealth",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Escape Through Stealth.",
            complete = QuestState(995, "activeOrCompleted"),
            route = {
                Point(1439, 0.4501, 0.8530, "Escape Through Stealth",
                    "Travel to Escape Through Stealth."),
            },
        },
        {
            id = "accept-994-escape-through-force",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Escape Through Force.",
            complete = QuestState(994, "activeOrCompleted"),
            route = {
                Point(1439, 0.4501, 0.8530, "Escape Through Force",
                    "Travel to Escape Through Force."),
            },
        },
        {
            id = "turnin-1003-buzzbox-525",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Buzzbox 525.",
            complete = QuestState(1003, "completed"),
            dependsOn = { "accept-1003-buzzbox-525" },
            route = {
                Point(1439, 0.4140, 0.8056, "Buzzbox 525",
                    "Travel to Buzzbox 525."),
            },
        },
        {
            id = "turnin-950-return-to-onu",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Onu.",
            complete = QuestState(950, "completed"),
            dependsOn = { "accept-950-return-to-onu" },
            route = {
                Point(1439, 0.4356, 0.7629, "Return to Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-5321-the-sleeper-has-awakened",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Sleeper Has Awakened.",
            complete = QuestState(5321, "activeOrCompleted"),
            route = {
                Point(1439, 0.4439, 0.7643, "The Sleeper Has Awakened",
                    "Travel to The Sleeper Has Awakened."),
            },
        },
        {
            id = "objective-5321-1-kerlonian-s-chest",
            kind = "objective",
            priority = 450,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Click Kerlonian's Chest.",
            complete = QuestObjective(5321, 1, "Kerlonian's Chest"),
            dependsOn = { "accept-5321-the-sleeper-has-awakened" },
            route = {
                Point(1439, 0.4438, 0.7631, "Kerlonian's Chest",
                    "Travel to Kerlonian's Chest."),
            },
        },
        {
            id = "turnin-5321-the-sleeper-has-awakened",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Sleeper Has Awakened.",
            complete = QuestState(5321, "completed"),
            dependsOn = { "accept-5321-the-sleeper-has-awakened", "objective-5321-1-kerlonian-s-chest" },
            route = {
                Point(1440, 0.2726, 0.3558, "The Sleeper Has Awakened",
                    "Travel to The Sleeper Has Awakened."),
            },
        },
        {
            id = "woven-turnin-98042-its-all-fun-and-games",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { level = { min = 17 } },
                    { quest = { id = 98042, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in It's All Fun and Games Until... to Thundris Windweaver in Auberdine if a Twilight cultist dropped a Peerless Eye.",
            complete = QuestState(98042, "completed"),
            route = {
                Point(1439, 0.3740, 0.4020, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "woven-accept-98013-swelling-forces",
            kind = "accept",
            priority = 480,
            conditions = { level = { min = 20 } },
            text = "Accept Swelling Forces from Arbal at the Grove of the Ancients.",
            complete = QuestState(98013, "activeOrCompleted"),
            route = {
                Point(1439, 0.4360, 0.7640, "Arbal",
                    "Travel to Arbal."),
            },
        },
        {
            id = "woven-turnin-98028-baron-marinous",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { level = { min = 21 } },
                    { quest = { id = 98028, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Baron Marinous to Onu at the Grove of the Ancients if you have the Clouded Water Globe.",
            complete = QuestState(98028, "completed"),
            route = {
                Point(1439, 0.4360, 0.7640, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "woven-accept-98461-unrequited-love",
            kind = "accept",
            priority = 500,
            conditions = { level = { min = 21 } },
            text = "Accept Unrequited Love from Archaeologist Hollee in Auberdine. Wetlands turns Hollee's Note in to Tarrel Rockweaver.",
            complete = QuestState(98461, "activeOrCompleted"),
            route = {
                Point(1439, 0.3746, 0.4188, "Archaeologist Hollee",
                    "Travel to Archaeologist Hollee."),
            },
        },
        {
            id = "woven-objective-98013-swelling-forces",
            kind = "objective",
            priority = 510,
            conditions = {
                all = {
                    { level = { min = 20 } },
                    { quest = { id = 98013, state = "activeOrCompleted" } },
                },
            },
            text = "Swelling Forces: slay 12 Stormscale Myrmidons, 8 Stormscale Sorceresses, and 6 Stormscale Warriors.",
            complete = QuestState(98013, "complete"),
            route = {
                Point(1439, 0.5840, 0.2120, "Stormscale Myrmidon",
                    "Travel to Stormscale Myrmidon."),
                Point(1439, 0.5860, 0.2040, "Stormscale Sorceress",
                    "Travel to Stormscale Sorceress."),
                Point(1439, 0.6120, 0.1980, "Stormscale Warrior",
                    "Travel to Stormscale Warrior."),
            },
        },
        {
            id = "woven-turnin-98013-swelling-forces",
            kind = "turnin",
            priority = 520,
            conditions = {
                all = {
                    { level = { min = 20 } },
                    { quest = { id = 98013, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Swelling Forces to Arbal at the Grove of the Ancients.",
            complete = QuestState(98013, "completed"),
            route = {
                Point(1439, 0.4360, 0.7640, "Arbal",
                    "Travel to Arbal."),
            },
        },
    },
})
