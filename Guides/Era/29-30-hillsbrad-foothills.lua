local _, ns = ...

-- Horde Era leveling route for Hillsbrad Foothills, levels 29-30.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    HILLSBRAD = 1424,
    TIRISFAL = 1420,
    UNDERCITY = 1458,
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
    id = "leveling-era-29-30-hillsbrad-foothills",
    title = "29-30 Hillsbrad Foothills (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 29 } },
        },
    },
    goals = {
        {
            id = "travel-493-undercity",
            kind = "travel",
            priority = 10,
            text = "Travel to Undercity.",
            route = {
                Point(MAP.TIRISFAL, 0.6190, 0.6810, "Undercity",
                    "Travel to Undercity."),
            },
        },
        {
            id = "travel-493-tirisfal-glades",
            kind = "travel",
            priority = 20,
            text = "Exit through the sewers to Tirisfal Glades.",
            route = {
                Point(MAP.UNDERCITY, 0.1520, 0.3240, "Tirisfal Glades",
                    "Travel to Tirisfal Glades."),
            },
        },
        {
            id = "travel-493-silverpine-forest",
            kind = "travel",
            priority = 30,
            text = "Travel to Silverpine Forest.",
            route = {
                Point(MAP.TIRISFAL, 0.5000, 0.7930, "Silverpine Forest",
                    "Travel to Silverpine Forest."),
            },
        },
        {
            id = "accept-493-journey-to-hillsbrad-foothills",
            kind = "accept",
            priority = 40,
            text = "Accept Journey to Hillsbrad Foothills from Apothecary Renferrel in The Sepulcher.",
            complete = QuestState(493, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINE, 0.4290, 0.4090, "Apothecary Renferrel",
                    "Travel to Apothecary Renferrel."),
            },
        },
        {
            id = "travel-494-hillsbrad-foothills",
            kind = "travel",
            priority = 50,
            text = "Travel down through Silverpine then east to Hillsbrad Foothills.",
            route = {
                Point(MAP.SILVERPINE, 0.7130, 0.8050, "Hillsbrad Foothills",
                    "Travel to Hillsbrad Foothills."),
            },
        },
        {
            id = "accept-494-time-to-strike",
            kind = "accept",
            priority = 60,
            text = "Accept Time To Strike from Deathstalker Lesh in Southpoint Tower.",
            complete = QuestState(494, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.2080, 0.4740, "Deathstalker Lesh",
                    "Travel to Deathstalker Lesh."),
            },
        },
        {
            id = "travel-1361-tarren-mill",
            kind = "travel",
            priority = 70,
            text = "Travel to Tarren Mill.",
            route = {
                Point(MAP.HILLSBRAD, 0.6230, 0.2030, "Tarren Mill",
                    "Travel to Tarren Mill."),
            },
        },
        {
            id = "turnin-494-time-to-strike",
            kind = "turnin",
            priority = 80,
            text = "Turn in Time To Strike to High Executor Darthalia in Tarren Mill.",
            dependsOn = { "accept-494-time-to-strike" },
            complete = QuestState(494, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6230, 0.2030, "High Executor Darthalia",
                    "Travel to High Executor Darthalia."),
            },
        },
        {
            id = "turnin-493-journey-to-hillsbrad-foothills",
            kind = "turnin",
            priority = 90,
            text = "Turn in Journey to Hillsbrad Foothills to Apothecary Lydon in Tarren Mill.",
            dependsOn = { "accept-493-journey-to-hillsbrad-foothills" },
            complete = QuestState(493, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6150, 0.1920, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "accept-1066-blood-of-innocents",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { quest = { id = 1063, state = "completed" } },
                },
            },
            text = "Accept Blood of Innocents from Apothecary Lydon in Tarren Mill.",
            complete = QuestState(1066, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6142, 0.1904, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "accept-496-elixir-of-suffering",
            kind = "accept",
            priority = 110,
            text = "Accept Elixir of Suffering from Apothecary Lydon in Tarren Mill.",
            complete = QuestState(496, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6149, 0.1918, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "accept-501-elixir-of-pain",
            kind = "accept",
            priority = 120,
            text = "Accept Elixir of Pain from Apothecary Lydon in Tarren Mill.",
            complete = QuestState(501, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6149, 0.1918, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "accept-509-elixir-of-agony",
            kind = "accept",
            priority = 130,
            text = "Accept Elixir of Agony from Apothecary Lydon in Tarren Mill.",
            complete = QuestState(509, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6149, 0.1918, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "accept-527-battle-of-hillsbrad",
            kind = "accept",
            priority = 140,
            text = "Accept Battle of Hillsbrad from High Executor Darthalia in Tarren Mill.",
            complete = QuestState(527, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6230, 0.2018, "High Executor Darthalia",
                    "Travel to High Executor Darthalia."),
            },
        },
        {
            id = "accept-552-helcular-s-revenge",
            kind = "accept",
            priority = 150,
            text = "Accept Helcular's Revenge from Novice Thaivand in Tarren Mill.",
            complete = QuestState(552, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6381, 0.1965, "Novice Thaivand",
                    "Travel to Novice Thaivand."),
            },
        },
        {
            id = "accept-567-dangerous",
            kind = "accept",
            priority = 160,
            text = "Accept Dangerous! in Tarren Mill.",
            complete = QuestState(567, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6250, 0.1985, "Tarren Mill",
                    "Travel to Tarren Mill."),
            },
        },
        {
            id = "accept-7321-soothing-turtle-bisque",
            kind = "accept",
            priority = 170,
            text = "Accept Soothing Turtle Bisque from Christoph Jeffcoat in Tarren Mill.",
            complete = QuestState(7321, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6238, 0.1907, "Christoph Jeffcoat",
                    "Travel to Christoph Jeffcoat."),
            },
        },
        {
            id = "objective-7321-2-soothing-spices",
            kind = "objective",
            priority = 180,
            text = "Buy Soothing Spices from Christoph Jeffcoat in Tarren Mill.",
            dependsOn = { "accept-7321-soothing-turtle-bisque" },
            complete = QuestObjective(7321, 2),
            route = {
                Point(MAP.HILLSBRAD, 0.6236, 0.1901, "Christoph Jeffcoat",
                    "Travel to Christoph Jeffcoat."),
            },
        },
        {
            id = "travel-496-durnholde-keep",
            kind = "travel",
            priority = 190,
            text = "Travel to Durnholde Keep.",
            route = {
                Point(MAP.HILLSBRAD, 0.8367, 0.3461, "Durnholde Keep",
                    "Travel to Durnholde Keep."),
            },
        },
        {
            id = "objective-496-2-forest-creeper",
            kind = "objective",
            priority = 200,
            text = "Kill Forest Creeper until you find Creeper Ichor in Durnholde Keep.",
            dependsOn = { "accept-496-elixir-of-suffering" },
            complete = QuestObjective(496, 2),
            route = {
                Point(MAP.HILLSBRAD, 0.8367, 0.3461, "Forest Creeper",
                    "Travel to Forest Creeper."),
            },
        },
        {
            id = "objective-1066-blood-of-innocents",
            kind = "objective",
            priority = 210,
            conditions = {
                all = {
                    { quest = { id = 1063, state = "completed" } },
                },
            },
            text = "Kill Syndicate Watchman, Syndicate Shadow Mage and collect 5 Vial of Innocent Blood in Durnholde Keep, low drop rate.",
            dependsOn = { "accept-1066-blood-of-innocents" },
            complete = QuestState(1066, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.7639, 0.4669, "Continue toward Blood of Innocents",
                    "Continue toward Blood of Innocents."),
                Point(MAP.HILLSBRAD, 0.7891, 0.4283, "Syndicate Watchman",
                    "Travel to Syndicate Watchman."),
            },
        },
        {
            id = "travel-509-nethander-stead",
            kind = "travel",
            priority = 220,
            text = "Travel to Nethander Stead.",
            route = {
                Point(MAP.HILLSBRAD, 0.8858, 0.4084, "Continue toward Nethander Stead",
                    "Continue toward Nethander Stead."),
                Point(MAP.HILLSBRAD, 0.6404, 0.6015, "Nethander Stead",
                    "Travel to Nethander Stead."),
            },
        },
        {
            id = "objective-509-elixir-of-agony",
            kind = "objective",
            priority = 230,
            text = "Collect Mudsnout Blossom from the ground in Nethander Stead.",
            dependsOn = { "accept-509-elixir-of-agony" },
            complete = QuestState(509, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.6404, 0.6015, "Nethander Stead",
                    "Travel to Nethander Stead."),
            },
        },
        {
            id = "objective-496-1-elder-gray-bear",
            kind = "objective",
            priority = 240,
            text = "Kill Elder Gray Bear and collect 10 Gray Bear Tongue in Durnholde Keep.",
            dependsOn = { "accept-496-elixir-of-suffering" },
            complete = QuestObjective(496, 1),
            route = {
                Point(MAP.HILLSBRAD, 0.8331, 0.3582, "Elder Gray Bear",
                    "Travel to Elder Gray Bear."),
            },
        },
        {
            id = "travel-496-1-hillsbrad-foothills",
            kind = "travel",
            priority = 250,
            text = "Travel to Hillsbrad Foothills.",
            complete = QuestObjective(496, 1),
            route = {
                Point(MAP.HILLSBRAD, 0.5520, 0.5400, "Hillsbrad Foothills",
                    "Travel to Hillsbrad Foothills."),
            },
        },
        {
            id = "objective-7321-1-snapjaw",
            kind = "objective",
            priority = 260,
            text = "Kill Snapjaw along the river and collect 10 Turtle Meat in Hillsbrad Foothills.",
            dependsOn = { "accept-7321-soothing-turtle-bisque" },
            complete = QuestObjective(7321, 1),
            route = {
                Point(MAP.HILLSBRAD, 0.5520, 0.5400, "Continue toward Snapjaw",
                    "Continue toward Snapjaw."),
                Point(MAP.HILLSBRAD, 0.5880, 0.4500, "Continue toward Snapjaw",
                    "Continue toward Snapjaw."),
                Point(MAP.HILLSBRAD, 0.6700, 0.3540, "Continue toward Snapjaw",
                    "Continue toward Snapjaw."),
                Point(MAP.HILLSBRAD, 0.6800, 0.3220, "Continue toward Snapjaw",
                    "Continue toward Snapjaw."),
                Point(MAP.HILLSBRAD, 0.6781, 0.2062, "Snapjaw",
                    "Travel to Snapjaw."),
            },
        },
        {
            id = "travel-499-tarren-mill",
            kind = "travel",
            priority = 270,
            text = "Travel to Tarren Mill.",
            route = {
                Point(MAP.HILLSBRAD, 0.6147, 0.1920, "Tarren Mill",
                    "Travel to Tarren Mill."),
            },
        },
        {
            id = "turnin-1066-blood-of-innocents",
            kind = "turnin",
            priority = 280,
            conditions = {
                all = {
                    { quest = { id = 1063, state = "completed" } },
                },
            },
            text = "Turn in Blood of Innocents to Apothecary Lydon in Tarren Mill.",
            dependsOn = { "objective-1066-blood-of-innocents" },
            complete = QuestState(1066, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6142, 0.1904, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "accept-1067-return-to-thunder-bluff",
            kind = "accept",
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 1063, state = "completed" } },
                },
            },
            text = "Accept Return to Thunder Bluff from Apothecary Lydon in Tarren Mill.",
            complete = QuestState(1067, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6145, 0.1909, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "turnin-496-elixir-of-suffering",
            kind = "turnin",
            priority = 300,
            text = "Turn in Elixir of Suffering to Apothecary Lydon in Tarren Mill.",
            dependsOn = { "objective-496-2-forest-creeper", "objective-496-1-elder-gray-bear" },
            complete = QuestState(496, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6147, 0.1920, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "accept-499-elixir-of-suffering",
            kind = "accept",
            priority = 310,
            text = "Accept Elixir of Suffering from Apothecary Lydon in Tarren Mill.",
            complete = QuestState(499, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6147, 0.1920, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "turnin-499-elixir-of-suffering",
            kind = "turnin",
            priority = 320,
            text = "Turn in Elixir of Suffering to Umpi in Tarren Mill.",
            dependsOn = { "accept-499-elixir-of-suffering" },
            complete = QuestState(499, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6147, 0.1920, "Umpi",
                    "Travel to Umpi."),
            },
        },
        {
            id = "turnin-509-elixir-of-agony",
            kind = "turnin",
            priority = 330,
            text = "Turn in Elixir of Agony to Apothecary Lydon in Tarren Mill.",
            dependsOn = { "objective-509-elixir-of-agony" },
            complete = QuestState(509, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6147, 0.1920, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "turnin-7321-soothing-turtle-bisque",
            kind = "turnin",
            priority = 340,
            text = "Turn in Soothing Turtle Bisque to Christoph Jeffcoat in Tarren Mill.",
            dependsOn = { "objective-7321-2-soothing-spices", "objective-7321-1-snapjaw" },
            complete = QuestState(7321, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6231, 0.1910, "Christoph Jeffcoat",
                    "Travel to Christoph Jeffcoat."),
            },
        },
        {
            id = "travel-552-darrow-hill",
            kind = "travel",
            priority = 350,
            text = "Travel to Darrow Hill.",
            route = {
                Point(MAP.HILLSBRAD, 0.4600, 0.3260, "Darrow Hill",
                    "Travel to Darrow Hill."),
            },
        },
        {
            id = "objective-552-helcular-s-revenge",
            kind = "objective",
            priority = 360,
            text = "Kill Cave Yeti until you collect Helcular's Rod in Darrow Hill.",
            dependsOn = { "accept-552-helcular-s-revenge" },
            complete = QuestState(552, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.4600, 0.3260, "Cave Yeti",
                    "Travel to Cave Yeti."),
            },
        },
        {
            id = "travel-501-hillsbrad-fields",
            kind = "travel",
            priority = 370,
            text = "Travel to Hillsbrad Fields.",
            route = {
                Point(MAP.HILLSBRAD, 0.4583, 0.3430, "Hillsbrad Fields",
                    "Travel to Hillsbrad Fields."),
            },
        },
        {
            id = "objective-501-elixir-of-pain",
            kind = "objective",
            priority = 380,
            text = "Kill Starving Mountain Lion and collect 10 Mountain Lion Blood in Hillsbrad Fields.",
            dependsOn = { "accept-501-elixir-of-pain" },
            complete = QuestState(501, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.4583, 0.3430, "Continue toward Elixir of Pain",
                    "Continue toward Elixir of Pain."),
                Point(MAP.HILLSBRAD, 0.5356, 0.3156, "Continue toward Elixir of Pain",
                    "Continue toward Elixir of Pain."),
                Point(MAP.HILLSBRAD, 0.3920, 0.3857, "Starving Mountain Lion",
                    "Travel to Starving Mountain Lion."),
            },
        },
        {
            id = "travel-502-tarren-mill",
            kind = "travel",
            priority = 390,
            text = "Travel to Tarren Mill.",
            route = {
                Point(MAP.HILLSBRAD, 0.6147, 0.1915, "Tarren Mill",
                    "Travel to Tarren Mill."),
            },
        },
        {
            id = "turnin-501-elixir-of-pain",
            kind = "turnin",
            priority = 400,
            text = "Turn in Elixir of Pain to Apothecary Lydon in Tarren Mill.",
            dependsOn = { "objective-501-elixir-of-pain" },
            complete = QuestState(501, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6147, 0.1915, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "accept-502-elixir-of-pain",
            kind = "accept",
            priority = 410,
            text = "Accept Elixir of Pain from Apothecary Lydon in Tarren Mill.",
            complete = QuestState(502, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6147, 0.1915, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "turnin-552-helcular-s-revenge",
            kind = "turnin",
            priority = 420,
            text = "Turn in Helcular's Revenge to Novice Thaivand in Tarren Mill.",
            dependsOn = { "objective-552-helcular-s-revenge" },
            complete = QuestState(552, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6382, 0.1964, "Novice Thaivand",
                    "Travel to Novice Thaivand."),
            },
        },
        {
            id = "accept-553-helcular-s-revenge",
            kind = "accept",
            priority = 430,
            text = "Accept Helcular's Revenge from Novice Thaivand in Tarren Mill.",
            complete = QuestState(553, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6382, 0.1964, "Novice Thaivand",
                    "Travel to Novice Thaivand."),
            },
        },
        {
            id = "travel-553-darrow-hill",
            kind = "travel",
            priority = 440,
            text = "Travel to Darrow Hill.",
            route = {
                Point(MAP.HILLSBRAD, 0.4627, 0.3191, "Darrow Hill",
                    "Travel to Darrow Hill."),
            },
        },
        {
            id = "objective-553-1-charge-flame-of-azel",
            kind = "objective",
            priority = 450,
            text = "Click Item Flame of Azel in Darrow Hill.",
            dependsOn = { "accept-553-helcular-s-revenge" },
            complete = QuestObjective(553, 1),
            route = {
                Point(MAP.HILLSBRAD, 0.4627, 0.3191, "Continue toward Charge Flame of Azel",
                    "Continue toward Charge Flame of Azel."),
                Point(MAP.HILLSBRAD, 0.4385, 0.2793, "Darrow Hill",
                    "Travel to Darrow Hill."),
            },
        },
        {
            id = "objective-553-2-charge-flame-of-veraz",
            kind = "objective",
            priority = 460,
            text = "Click Item Flame of Veraz in Darrow Hill.",
            dependsOn = { "accept-553-helcular-s-revenge" },
            complete = QuestObjective(553, 2),
            route = {
                Point(MAP.HILLSBRAD, 0.4394, 0.2662, "Darrow Hill",
                    "Travel to Darrow Hill."),
            },
        },
        {
            id = "travel-527-hillsbrad-fields",
            kind = "travel",
            priority = 470,
            text = "Travel to Hillsbrad Fields.",
            route = {
                Point(MAP.HILLSBRAD, 0.4636, 0.3195, "Continue toward Hillsbrad Fields",
                    "Continue toward Hillsbrad Fields."),
                Point(MAP.HILLSBRAD, 0.3268, 0.3551, "Hillsbrad Fields",
                    "Travel to Hillsbrad Fields."),
            },
        },
        {
            id = "turnin-502-elixir-of-pain",
            kind = "turnin",
            priority = 480,
            text = "Turn in Elixir of Pain to Stanley in Hillsbrad Fields.",
            dependsOn = { "accept-502-elixir-of-pain" },
            complete = QuestState(502, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.3268, 0.3551, "Stanley",
                    "Travel to Stanley."),
            },
        },
        {
            id = "objective-527-3-farmer-ray",
            kind = "objective",
            priority = 490,
            text = "Kill Farmer Ray in Hillsbrad Fields.",
            dependsOn = { "accept-527-battle-of-hillsbrad" },
            complete = QuestObjective(527, 3),
            route = {
                Point(MAP.HILLSBRAD, 0.3263, 0.3557, "Farmer Ray",
                    "Travel to Farmer Ray."),
            },
        },
        {
            id = "objective-567-2-citizen-wilkes",
            kind = "objective",
            priority = 500,
            text = "Kill Citizen Wilkes in Hillsbrad Fields.",
            dependsOn = { "accept-567-dangerous" },
            complete = QuestObjective(567, 2),
            route = {
                Point(MAP.HILLSBRAD, 0.3256, 0.3578, "Citizen Wilkes",
                    "Travel to Citizen Wilkes."),
            },
        },
        {
            id = "objective-567-1-clerk-horrace-whitesteed",
            kind = "objective",
            priority = 510,
            text = "Kill Clerk Horrace Whitesteed in Hillsbrad Fields.",
            dependsOn = { "accept-567-dangerous" },
            complete = QuestObjective(567, 1),
            route = {
                Point(MAP.HILLSBRAD, 0.2944, 0.4303, "Clerk Horrace Whitesteed",
                    "Travel to Clerk Horrace Whitesteed."),
            },
        },
        {
            id = "objective-567-4-farmer-kalaba",
            kind = "objective",
            priority = 520,
            text = "Kill Farmer Kalaba in Hillsbrad Fields.",
            dependsOn = { "accept-567-dangerous" },
            complete = QuestObjective(567, 4),
            route = {
                Point(MAP.HILLSBRAD, 0.3632, 0.4713, "Farmer Kalaba",
                    "Travel to Farmer Kalaba."),
            },
        },
        {
            id = "objective-527-4-farmer-getz",
            kind = "objective",
            priority = 530,
            text = "Kill Farmer Getz in Hillsbrad Fields.",
            dependsOn = { "accept-527-battle-of-hillsbrad" },
            complete = QuestObjective(527, 4),
            route = {
                Point(MAP.HILLSBRAD, 0.3605, 0.4074, "Farmer Getz",
                    "Travel to Farmer Getz."),
            },
        },
        {
            id = "objective-527-battle-of-hillsbrad",
            kind = "objective",
            priority = 540,
            text = "Kill 6 Hillsbrad Farmer and 6 Hillsbrad Farmhand in Hillsbrad Fields.",
            dependsOn = { "accept-527-battle-of-hillsbrad" },
            complete = QuestState(527, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.3205, 0.3846, "Hillsbrad Farmer",
                    "Travel to Hillsbrad Farmer."),
            },
        },
        {
            id = "travel-567-azurelode-mine",
            kind = "travel",
            priority = 550,
            text = "Travel to Azurelode Mine.",
            route = {
                Point(MAP.HILLSBRAD, 0.2644, 0.5868, "Azurelode Mine",
                    "Travel to Azurelode Mine."),
            },
        },
        {
            id = "objective-567-3-miner-hackett",
            kind = "objective",
            priority = 560,
            text = "Kill Miner Hackett in Azurelode Mine Take the lower entrance and hug the right side wall to reach Miner Hackett.",
            dependsOn = { "accept-567-dangerous" },
            complete = QuestObjective(567, 3),
            route = {
                Point(MAP.HILLSBRAD, 0.2644, 0.5868, "Continue toward Miner Hackett",
                    "Continue toward Miner Hackett."),
                Point(MAP.HILLSBRAD, 0.3049, 0.5835, "Miner Hackett",
                    "Travel to Miner Hackett."),
            },
        },
        {
            id = "travel-tarren-mill",
            kind = "travel",
            priority = 570,
            text = "Travel to Tarren Mill.",
            route = {
                Point(MAP.HILLSBRAD, 0.2644, 0.5868, "Continue toward Tarren Mill",
                    "Continue toward Tarren Mill."),
                Point(MAP.HILLSBRAD, 0.6239, 0.2033, "Tarren Mill",
                    "Travel to Tarren Mill."),
            },
        },
        {
            id = "turnin-527-battle-of-hillsbrad",
            kind = "turnin",
            priority = 580,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia in Tarren Mill.",
            dependsOn = { "objective-527-3-farmer-ray", "objective-527-4-farmer-getz", "objective-527-battle-of-hillsbrad" },
            complete = QuestState(527, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6239, 0.2033, "High Executor Darthalia",
                    "Travel to High Executor Darthalia."),
            },
        },
        {
            id = "turnin-567-dangerous",
            kind = "turnin",
            priority = 590,
            text = "Turn in Dangerous! to High Executor Darthalia in Tarren Mill.",
            dependsOn = { "objective-567-2-citizen-wilkes", "objective-567-1-clerk-horrace-whitesteed", "objective-567-4-farmer-kalaba", "objective-567-3-miner-hackett" },
            complete = QuestState(567, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6239, 0.2033, "High Executor Darthalia",
                    "Travel to High Executor Darthalia."),
            },
        },
        {
            id = "accept-1361-regthar-deathgate",
            kind = "accept",
            priority = 600,
            text = "Accept Regthar Deathgate from Krusk in Tarren Mill.",
            complete = QuestState(1361, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6317, 0.2070, "Krusk",
                    "Travel to Krusk."),
            },
        },
        {
            id = "accept-676-the-hammer-may-fall",
            kind = "accept",
            priority = 610,
            text = "Accept The Hammer May Fall from Tallow in Tarren Mill.",
            complete = QuestState(676, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6190, 0.1970, "Tallow",
                    "Travel to Tallow."),
            },
        },
    },
})
