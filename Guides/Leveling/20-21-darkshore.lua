local _, ns = ...

-- Alliance Era leveling route for Darkshore, levels 20-21.
-- Forever quests from the Darkshore list that sit on this pass are woven in.
-- A Peerless Eye from the Master's Glaive and the Clouded Water Globe turn in only after the item starts the quest. Swelling Forces is picked up at the grove and finished on the next northern pass.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DARKSHORE = 1439,
    ELWYNN = 1429,
    STORMWIND = 1453,
    BARRENS = 1413,
    ASHENVALE = 1440,
    IRONFORGE = 1455,
    WESTFALL = 1436,
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
    id = "leveling-era-20-21-darkshore",
    title = "20-21 Darkshore",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 20 } },
        },
    },
    goals = {
        {
            id = "accept-1685-gakin-s-summons",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Gakin's Summons from Remen Marcot in Lion's Pride Inn.",
            complete = QuestState(1685, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.0450, 0.6621, "Remen Marcot",
                    "Travel to Remen Marcot."),
            },
        },
        {
            id = "accept-1716-devourer-of-souls",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Devourer of Souls from Gakin the Darkbinder in The Slaughtered Lamb.",
            complete = QuestState(1716, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.2537, 0.7861, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "turnin-1717-gakin-s-summons",
            kind = "turnin",
            priority = 30,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Gakin's Summons to Gakin the Darkbinder in The Slaughtered Lamb.",
            complete = QuestState(1717, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.2530, 0.7852, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "accept-1716-devourer-of-souls-2",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Devourer of Souls from Gakin the Darkbinder in The Slaughtered Lamb.",
            complete = QuestState(1716, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.2530, 0.7852, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "turnin-1716-devourer-of-souls",
            kind = "turnin",
            priority = 50,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Devourer of Souls to Takar the Seer in Southern Barrens.",
            dependsOn = { "accept-1716-devourer-of-souls" },
            complete = QuestState(1716, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4930, 0.5710, "Takar the Seer",
                    "Travel to Takar the Seer."),
            },
        },
        {
            id = "accept-1738-heartswood",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Heartswood from Takar the Seer in Southern Barrens.",
            complete = QuestState(1738, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4930, 0.5710, "Takar the Seer",
                    "Travel to Takar the Seer."),
            },
        },
        {
            id = "objective-1738-heartswood",
            kind = "objective",
            priority = 70,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Collect the Heartswood from the big tree in The Ruins of Ordil'Aran.",
            dependsOn = { "accept-1738-heartswood" },
            complete = QuestState(1738, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3150, 0.3144, "The Ruins of Ordil'Aran",
                    "Travel to The Ruins of Ordil'Aran."),
            },
        },
        {
            id = "turnin-1738-heartswood",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Heartswood to Gakin the Darkbinder in The Slaughtered Lamb.",
            dependsOn = { "objective-1738-heartswood" },
            complete = QuestState(1738, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.2528, 0.7850, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "accept-1739-the-binding",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept The Binding from Gakin the Darkbinder in The Slaughtered Lamb.",
            complete = QuestState(1739, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.2528, 0.7850, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "objective-1739-the-binding",
            kind = "objective",
            priority = 100,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Using the Heartswood Core, summon and subdue a Summoned Succubus in The Slaughtered Lamb.",
            dependsOn = { "accept-1739-the-binding" },
            complete = QuestState(1739, "complete"),
            route = {
                Point(MAP.STORMWIND, 0.2507, 0.7737, "Summoned Succubus",
                    "Travel to Summoned Succubus."),
            },
        },
        {
            id = "turnin-1739-the-binding",
            kind = "turnin",
            priority = 110,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in The Binding to Gakin the Darkbinder in The Slaughtered Lamb.",
            dependsOn = { "objective-1739-the-binding" },
            complete = QuestState(1739, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.2524, 0.7858, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "objective-1650-tome-of-valor",
            kind = "objective",
            priority = 120,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Speak to Brandur Ironhammer and collect Tome of Valor in Hall of Mysteries This is an optional Paladin quest to unlock Sense Undead skill and Bastion of Stormwind Tick to skip.",
            dependsOn = { "accept-1650-the-tome-of-valor" },
            complete = QuestState(1650, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2312, 0.0607, "Brandur Ironhammer",
                    "Travel to Brandur Ironhammer."),
            },
        },
        {
            id = "objective-1650-tome-of-valor-2",
            kind = "objective",
            priority = 130,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Speak to Duthorian Rall and collect Tome of Valor in Cathedral of Light This is an optional Paladin quest to unlock Sense Undead skill and Bastion of Stormwind Tick to skip.",
            dependsOn = { "accept-1650-the-tome-of-valor" },
            complete = QuestState(1650, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3984, 0.2986, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-1649-the-tome-of-valor",
            kind = "accept",
            priority = 140,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Use the Tome of Valor to accept The Tome of Valor.",
            complete = QuestState(1649, "activeOrCompleted"),
        },
        {
            id = "turnin-1649-the-tome-of-valor",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Turn in The Tome of Valor to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-1649-the-tome-of-valor" },
            complete = QuestState(1649, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3985, 0.2991, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-1650-the-tome-of-valor",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Accept The Tome of Valor from Duthorian Rall in Cathedral of Light.",
            complete = QuestState(1650, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3985, 0.2991, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "turnin-1650-the-tome-of-valor",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Turn in The Tome of Valor to Daphne Stilwell in The Dagger Hills.",
            dependsOn = { "objective-1650-tome-of-valor", "objective-1650-tome-of-valor-2" },
            complete = QuestState(1650, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.3849, 0.8262, "Continue toward The Tome of Valor",
                    "Continue toward The Tome of Valor."),
                Point(MAP.WESTFALL, 0.3992, 0.8668, "Continue toward The Tome of Valor",
                    "Continue toward The Tome of Valor."),
                Point(MAP.WESTFALL, 0.4148, 0.8885, "Daphne Stilwell",
                    "Travel to Daphne Stilwell."),
            },
        },
        {
            id = "accept-1651-the-tome-of-valor",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Accept The Tome of Valor from Daphne Stilwell in The Dagger Hills.",
            complete = QuestState(1651, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.4127, 0.8908, "Daphne Stilwell",
                    "Travel to Daphne Stilwell."),
            },
        },
        {
            id = "objective-1651-the-tome-of-valor",
            kind = "objective",
            priority = 200,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Defend Daphne Stilwell from the Defias attack in The Dagger Hills Up to 4 level 17 Defias Raider will attack you at the same time, be ready to use cooldowns and potions if you have any.",
            dependsOn = { "accept-1651-the-tome-of-valor" },
            complete = QuestState(1651, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4221, 0.8867, "Daphne Stilwell",
                    "Travel to Daphne Stilwell."),
            },
        },
        {
            id = "turnin-1651-the-tome-of-valor",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Turn in The Tome of Valor to Daphne Stilwell in The Dagger Hills.",
            dependsOn = { "objective-1651-the-tome-of-valor" },
            complete = QuestState(1651, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.4162, 0.8884, "Daphne Stilwell",
                    "Travel to Daphne Stilwell."),
            },
        },
        {
            id = "accept-1652-the-tome-of-valor",
            kind = "accept",
            priority = 220,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Accept The Tome of Valor from Daphne Stilwell in The Dagger Hills.",
            complete = QuestState(1652, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.4118, 0.8853, "Daphne Stilwell",
                    "Travel to Daphne Stilwell."),
            },
        },
        {
            id = "turnin-1652-the-tome-of-valor",
            kind = "turnin",
            priority = 240,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Turn in The Tome of Valor to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-1652-the-tome-of-valor" },
            complete = QuestState(1652, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3982, 0.2978, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-4740-wanted-murkdeep",
            kind = "accept",
            priority = 260,
            text = "Accept WANTED: Murkdeep! in Auberdine.",
            complete = QuestState(4740, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3721, 0.4427, "Auberdine",
                    "Travel to Auberdine."),
            },
        },
        {
            id = "accept-984-how-big-a-threat",
            kind = "accept",
            priority = 270,
            text = "Accept How Big a Threat? from Terenthis in Auberdine.",
            complete = QuestState(984, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3935, 0.4346, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "accept-729-the-absent-minded-prospector",
            kind = "accept",
            priority = 280,
            text = "Accept The Absent Minded Prospector from Archaeologist Hollee in Auberdine.",
            complete = QuestState(729, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3748, 0.4185, "Archaeologist Hollee",
                    "Travel to Archaeologist Hollee."),
            },
        },
        {
            id = "objective-984-how-big-a-threat",
            kind = "objective",
            priority = 290,
            text = "Find a corrupt furbolg camp in Darkshore, you just need to reach the waypoint to complete the quest.",
            dependsOn = { "accept-984-how-big-a-threat" },
            complete = QuestState(984, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3992, 0.5362, "How Big a Threat?",
                    "Travel to How Big a Threat?."),
            },
        },
        {
            id = "turnin-984-how-big-a-threat",
            kind = "turnin",
            priority = 300,
            text = "Turn in How Big a Threat? to Terenthis in Auberdine.",
            dependsOn = { "objective-984-how-big-a-threat" },
            complete = QuestState(984, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3935, 0.4346, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "accept-985-how-big-a-threat",
            kind = "accept",
            priority = 310,
            text = "Accept How Big a Threat? from Terenthis in Auberdine.",
            complete = QuestState(985, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3935, 0.4346, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "accept-947-cave-mushrooms",
            kind = "accept",
            priority = 320,
            text = "Accept Cave Mushrooms from Barithras Moonshade in Auberdine.",
            complete = QuestState(947, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3732, 0.4366, "Barithras Moonshade",
                    "Travel to Barithras Moonshade."),
            },
        },
        {
            id = "objective-947-cave-mushrooms",
            kind = "objective",
            priority = 330,
            text = "Follow the path to the cave guarded by Naga's and collect 5 Scaber Stalk and 1 Death Cap from the ground inside the cave.",
            dependsOn = { "accept-947-cave-mushrooms" },
            complete = QuestState(947, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5426, 0.3183, "Continue toward Cave Mushrooms",
                    "Continue toward Cave Mushrooms."),
                Point(MAP.DARKSHORE, 0.5499, 0.3294, "Continue toward Cave Mushrooms",
                    "Continue toward Cave Mushrooms."),
                Point(MAP.DARKSHORE, 0.5496, 0.3337, "Continue toward Cave Mushrooms",
                    "Continue toward Cave Mushrooms."),
                Point(MAP.DARKSHORE, 0.5600, 0.3500, "Cave Mushrooms",
                    "Travel to Cave Mushrooms."),
            },
        },
        {
            id = "objective-985-how-big-a-threat",
            kind = "objective",
            priority = 340,
            text = "Kill 8 Blackwood Pathfinder and 5 Blackwood Windtalker in the furbolg camp.",
            dependsOn = { "accept-985-how-big-a-threat" },
            complete = QuestState(985, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3900, 0.5400, "Continue toward How Big a Threat?",
                    "Continue toward How Big a Threat?."),
                Point(MAP.DARKSHORE, 0.3900, 0.5200, "Blackwood Pathfinder",
                    "Travel to Blackwood Pathfinder."),
            },
        },
        {
            id = "turnin-947-cave-mushrooms",
            kind = "turnin",
            priority = 350,
            text = "Turn in Cave Mushrooms to Barithras Moonshade in Auberdine.",
            dependsOn = { "objective-947-cave-mushrooms" },
            complete = QuestState(947, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3732, 0.4366, "Barithras Moonshade",
                    "Travel to Barithras Moonshade."),
            },
        },
        {
            id = "turnin-985-how-big-a-threat",
            kind = "turnin",
            priority = 360,
            text = "Turn in How Big a Threat? to Terenthis in Auberdine.",
            dependsOn = { "objective-985-how-big-a-threat" },
            complete = QuestState(985, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3935, 0.4346, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "accept-948-onu",
            kind = "accept",
            priority = 370,
            text = "Accept Onu from Barithras Moonshade in Auberdine.",
            complete = QuestState(948, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3732, 0.4366, "Barithras Moonshade",
                    "Travel to Barithras Moonshade."),
            },
        },
        {
            id = "accept-986-a-lost-master",
            kind = "accept",
            priority = 380,
            text = "Accept A Lost Master from Terenthis in Auberdine.",
            complete = QuestState(986, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3932, 0.4345, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "turnin-948-onu",
            kind = "turnin",
            priority = 400,
            text = "Turn in Onu to Onu in Grove of the Ancients.",
            dependsOn = { "accept-948-onu" },
            complete = QuestState(948, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4355, 0.7632, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "turnin-98028-baron-marinous",
            kind = "turnin",
            priority = 401,
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
            id = "accept-944-the-master-s-glaive",
            kind = "accept",
            priority = 410,
            text = "Accept The Master's Glaive from Onu in Grove of the Ancients.",
            complete = QuestState(944, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4355, 0.7632, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "objective-944-the-master-s-glaive",
            kind = "objective",
            priority = 420,
            text = "Travel south from the Grove of Ancients into The Master's Glaive until you've completed the quest. A Twilight Disciple or Thug may drop a Peerless Eye. Use it if one does.",
            dependsOn = { "accept-944-the-master-s-glaive" },
            complete = QuestState(944, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3925, 0.8498, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "turnin-944-the-master-s-glaive",
            kind = "turnin",
            priority = 430,
            text = "Turn in The Master's Glaive in The Master's Glaive.",
            dependsOn = { "objective-944-the-master-s-glaive" },
            complete = QuestState(944, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3925, 0.8498, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "accept-949-the-twilight-camp",
            kind = "accept",
            priority = 440,
            text = "Use the Phial of Scrying to accept The Twilight Camp.",
            complete = QuestState(949, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3925, 0.8498, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "turnin-949-the-twilight-camp",
            kind = "turnin",
            priority = 450,
            text = "Turn in The Twilight Camp in The Master's Glaive.",
            dependsOn = { "accept-949-the-twilight-camp" },
            complete = QuestState(949, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3857, 0.8602, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "accept-950-return-to-onu",
            kind = "accept",
            priority = 460,
            text = "Accept Return to Onu in The Master's Glaive.",
            complete = QuestState(950, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3857, 0.8602, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "accept-945-therylune-s-escape",
            kind = "accept",
            priority = 470,
            text = "Accept Therylune's Escape from Therylune in The Master's Glaive.",
            complete = QuestState(945, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3870, 0.8740, "Therylune",
                    "Travel to Therylune."),
            },
        },
        {
            id = "objective-945-therylune-s-escape",
            kind = "objective",
            priority = 480,
            text = "Escort Therylune until she escapes.",
            dependsOn = { "accept-945-therylune-s-escape" },
            complete = QuestState(945, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.2270, 0.5190, "Therylune",
                    "Travel to Therylune."),
            },
        },
        {
            id = "turnin-729-the-absent-minded-prospector",
            kind = "turnin",
            priority = 490,
            text = "Turn in The Absent Minded Prospector to Prospector Remtravel in Remtravel's Excavation.",
            dependsOn = { "accept-729-the-absent-minded-prospector" },
            complete = QuestState(729, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3575, 0.8369, "Prospector Remtravel",
                    "Travel to Prospector Remtravel."),
            },
        },
        {
            id = "accept-731-the-absent-minded-prospector",
            kind = "accept",
            priority = 500,
            text = "Accept The Absent Minded Prospector from Prospector Remtravel in Remtravel's Excavation.",
            complete = QuestState(731, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3576, 0.8371, "Prospector Remtravel",
                    "Travel to Prospector Remtravel."),
            },
        },
        {
            id = "objective-731-the-absent-minded-prospector",
            kind = "objective",
            priority = 510,
            text = "Protect Prospector Remtravel as he searches for the mysterious fossil This can be quite difficult to solo, try to clear the mobs in the area before accepting the quest. You can redo the quest if you fail but you need to wait about 5 mins for the quest giver to respawn.",
            dependsOn = { "accept-731-the-absent-minded-prospector" },
            complete = QuestState(731, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3600, 0.8600, "Prospector Remtravel",
                    "Travel to Prospector Remtravel."),
            },
        },
        {
            id = "objective-4740-wanted-murkdeep",
            kind = "objective",
            priority = 520,
            text = "Kill murlocs around the area and Murkdeep will eventually appear, kill him complete the quest.",
            dependsOn = { "accept-4740-wanted-murkdeep" },
            complete = QuestState(4740, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3655, 0.7653, "Murkdeep",
                    "Travel to Murkdeep."),
            },
        },
        {
            id = "accept-4730-beached-sea-creature",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { quest = { id = 4681, state = "completed" } },
                },
            },
            text = "Accept Beached Sea Creature in Twilight Shore.",
            complete = QuestState(4730, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3266, 0.8089, "Twilight Shore",
                    "Travel to Twilight Shore."),
            },
        },
        {
            id = "turnin-4730-beached-sea-creature",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { quest = { id = 4681, state = "completed" } },
                },
            },
            text = "Turn in Beached Sea Creature to Gwennyth Bly'Leggonde in Auberdine.",
            dependsOn = { "accept-4730-beached-sea-creature" },
            complete = QuestState(4730, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "turnin-731-the-absent-minded-prospector",
            kind = "turnin",
            priority = 550,
            text = "Turn in The Absent Minded Prospector to Archaeologist Hollee in Auberdine.",
            dependsOn = { "objective-731-the-absent-minded-prospector" },
            complete = QuestState(731, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3746, 0.4188, "Archaeologist Hollee",
                    "Travel to Archaeologist Hollee."),
            },
        },
        {
            id = "turnin-4740-wanted-murkdeep",
            kind = "turnin",
            priority = 560,
            text = "Turn in WANTED: Murkdeep! to Sentinel Glynda Nal'Shea in Auberdine.",
            dependsOn = { "objective-4740-wanted-murkdeep" },
            complete = QuestState(4740, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3770, 0.4344, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "turnin-98042-its-all-fun-and-games",
            kind = "turnin",
            priority = 565,
            conditions = {
                all = {
                    { quest = { id = 98042, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in It's All Fun and Games Until... to Thundris Windweaver in Auberdine if a Twilight cultist dropped a Peerless Eye.",
            complete = QuestState(98042, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3740, 0.4020, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "turnin-950-return-to-onu",
            kind = "turnin",
            priority = 580,
            text = "Turn in Return to Onu to Onu in Grove of the Ancients.",
            dependsOn = { "accept-950-return-to-onu" },
            complete = QuestState(950, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4355, 0.7632, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-951-mathystra-relics",
            kind = "accept",
            priority = 590,
            text = "Accept Mathystra Relics from Onu in Grove of the Ancients.",
            complete = QuestState(951, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4357, 0.7634, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-98013-swelling-forces",
            kind = "accept",
            priority = 591,
            text = "Accept Swelling Forces from Arbal at the Grove of the Ancients.",
            complete = QuestState(98013, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4360, 0.7640, "Arbal",
                    "Travel to Arbal."),
            },
        },
        {
            id = "accept-5321-the-sleeper-has-awakened",
            kind = "accept",
            priority = 600,
            text = "Accept The Sleeper Has Awakened from Kerlonian Evershade in Grove of the Ancients.",
            complete = QuestState(5321, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4438, 0.7642, "Kerlonian Evershade",
                    "Travel to Kerlonian Evershade."),
            },
        },
        {
            id = "objective-5321-1-horn-of-awakening",
            kind = "objective",
            priority = 610,
            text = "Collect Horn of Awakening from the chest next to Kerlonian Evershade in Grove of the Ancients.",
            dependsOn = { "accept-5321-the-sleeper-has-awakened" },
            complete = QuestObjective(5321, 1),
            route = {
                Point(MAP.DARKSHORE, 0.4437, 0.7636, "Kerlonian Evershade",
                    "Travel to Kerlonian Evershade."),
            },
        },
        {
            id = "accept-5713-one-shot-one-kill",
            kind = "accept",
            priority = 620,
            text = "Accept One Shot. One Kill. from Sentinel Aynasha in Dark Shore.",
            complete = QuestState(5713, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4580, 0.9020, "Sentinel Aynasha",
                    "Travel to Sentinel Aynasha."),
            },
        },
        {
            id = "objective-5713-one-shot-one-kill",
            kind = "objective",
            priority = 630,
            text = "Protect Sentinel Aynasha until the quest is complete.",
            dependsOn = { "accept-5713-one-shot-one-kill" },
            complete = QuestState(5713, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4580, 0.9020, "Sentinel Aynasha",
                    "Travel to Sentinel Aynasha."),
            },
        },
        {
            id = "objective-5321-the-sleeper-has-awakened",
            kind = "objective",
            priority = 640,
            text = "Escort Kerlonian Evershade to Maestra's Post Avoid the main road so you don't get ambushed by 4 mobs.",
            dependsOn = { "accept-5321-the-sleeper-has-awakened" },
            complete = QuestState(5321, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.2901, 0.2566, "Continue toward The Sleeper Has Awakened",
                    "Continue toward The Sleeper Has Awakened."),
                Point(MAP.ASHENVALE, 0.2725, 0.3562, "Kerlonian Evershade",
                    "Travel to Kerlonian Evershade."),
            },
        },
        {
            id = "turnin-5321-the-sleeper-has-awakened",
            kind = "turnin",
            priority = 650,
            text = "Turn in The Sleeper Has Awakened to Liladris Moonriver in Maestra's Post.",
            dependsOn = { "objective-5321-1-horn-of-awakening", "objective-5321-the-sleeper-has-awakened" },
            complete = QuestState(5321, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.2725, 0.3562, "Liladris Moonriver",
                    "Travel to Liladris Moonriver."),
            },
        },
    },
})
