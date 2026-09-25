local _, ns = ...

-- Loch Modan Loremaster route.
-- The step order follows the leveling route. Quests that are on the
-- Wowhead zone page and not on that route are woven in at the giver
-- the route already visits, or after the series quest they follow.
-- Leveling route: Guides/Leveling/17-18-loch-modan.lua
-- Quest list: https://www.wowhead.com/forever/quests/eastern-kingdoms/loch-modan
-- Dungeon quests stay in the dungeon guides.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    LOCH_MODAN = 1432,
    WETLANDS = 1437,
    IRONFORGE = 1455,
}

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

ns:RegisterGuide({
    id = "leveling-loch-modan",
    title = "Loch Modan",
    category = "Loremaster Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 17 } },
        },
    },
    goals = {
        {
            id = "accept-307-filthy-paws",
            kind = "accept",
            priority = 10,
            text = "Accept Filthy Paws from Mountaineer Stormpike in Algaz Station.",
            complete = QuestState(307, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2467, 0.1825, "Mountaineer Stormpike",
                    "Travel to Mountaineer Stormpike."),
            },
        },
        {
            id = "accept-1338-stormpike-s-order",
            kind = "accept",
            priority = 20,
            text = "Accept Stormpike's Order from Mountaineer Stormpike in Algaz Station.",
            complete = QuestState(1338, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2467, 0.1825, "Mountaineer Stormpike",
                    "Travel to Mountaineer Stormpike."),
            },
        },
        {
            id = "objective-307-filthy-paws",
            kind = "objective",
            priority = 30,
            text = "Go inside the cave to open the crates spread throughout to collect 4 Miners' Gear from the ground.",
            dependsOn = { "accept-307-filthy-paws" },
            complete = QuestState(307, "complete"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3500, 0.2000, "Continue toward Filthy Paws",
                    "Continue toward Filthy Paws."),
                Point(MAP.LOCH_MODAN, 0.3600, 0.2400, "Filthy Paws",
                    "Travel to Filthy Paws."),
            },
        },
        {
            id = "turnin-307-filthy-paws",
            kind = "turnin",
            priority = 40,
            text = "Turn in Filthy Paws to Mountaineer Stormpike in Algaz Station.",
            dependsOn = { "objective-307-filthy-paws" },
            complete = QuestState(307, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2467, 0.1825, "Mountaineer Stormpike",
                    "Travel to Mountaineer Stormpike."),
            },
        },
        {
            id = "accept-436-ironband-s-excavation",
            kind = "accept",
            priority = 50,
            text = "Accept Ironband's Excavation from Jern Hornhelm in Thelsamar.",
            complete = QuestState(436, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3717, 0.4755, "Jern Hornhelm",
                    "Travel to Jern Hornhelm."),
            },
        },
        {
            id = "turnin-436-ironband-s-excavation",
            kind = "turnin",
            priority = 60,
            text = "Turn in Ironband's Excavation to Magmar Fellhew in Ironband's Excavation Site.",
            dependsOn = { "accept-436-ironband-s-excavation" },
            complete = QuestState(436, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6483, 0.6659, "Magmar Fellhew",
                    "Travel to Magmar Fellhew."),
            },
        },
        {
            id = "accept-297-gathering-idols",
            kind = "accept",
            priority = 70,
            text = "Accept Gathering Idols from Magmar Fellhew in Ironband's Excavation Site.",
            complete = QuestState(297, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6483, 0.6659, "Magmar Fellhew",
                    "Travel to Magmar Fellhew."),
            },
        },
        {
            id = "accept-298-excavation-progress-report",
            kind = "accept",
            priority = 80,
            text = "Accept Excavation Progress Report from Prospector Ironband in Ironband's Excavation Site.",
            complete = QuestState(298, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6586, 0.6567, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "accept-86613-excavation-tools",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 13 } },
                },
            },
            text = "Accept Excavation Tools from Prospector Ironband.",
            complete = QuestState(86613, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.658, 0.656, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "objective-86613-excavation-tools-1",
            kind = "objective",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 13 } },
                },
            },
            text = "Excavation Tools: Excavation Tools.",
            dependsOn = { "accept-86613-excavation-tools" },
            complete = QuestObjective(86613, 1, "Excavation Tools"),
            route = {
                Point(MAP.LOCH_MODAN, 0.658, 0.656, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "turnin-86613-excavation-tools",
            kind = "turnin",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 13 } },
                },
            },
            text = "Turn in Excavation Tools to Prospector Ironband.",
            dependsOn = { "objective-86613-excavation-tools-1" },
            complete = QuestState(86613, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.658, 0.656, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "objective-297-gathering-idols",
            kind = "objective",
            priority = 120,
            text = "Travel to the Excavation Site and kill any Berserk Trogg, Stonesplinter Geomancer or Stonesplinter Digger to collect 8 Carved Stone Idol.",
            dependsOn = { "accept-297-gathering-idols" },
            complete = QuestState(297, "complete"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6800, 0.6300, "Berserk Trogg",
                    "Travel to Berserk Trogg."),
            },
        },
        {
            id = "turnin-297-gathering-idols",
            kind = "turnin",
            priority = 130,
            text = "Turn in Gathering Idols to Magmar Fellhew in Ironband's Excavation Site.",
            dependsOn = { "objective-297-gathering-idols" },
            complete = QuestState(297, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6483, 0.6659, "Magmar Fellhew",
                    "Travel to Magmar Fellhew."),
            },
        },
        {
            id = "accept-385-crocolisk-hunting",
            kind = "accept",
            priority = 140,
            text = "Accept Crocolisk Hunting from Marek Ironheart in The Farstrider Lodge.",
            complete = QuestState(385, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8184, 0.6177, "Marek Ironheart",
                    "Travel to Marek Ironheart."),
            },
        },
        {
            id = "accept-257-a-hunter-s-boast",
            kind = "accept",
            priority = 150,
            text = "Accept A Hunter's Boast from Daryl the Youngling in The Farstrider Lodge.",
            complete = QuestState(257, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8343, 0.6530, "Daryl the Youngling",
                    "Travel to Daryl the Youngling."),
            },
        },
        {
            id = "accept-86758-twisting-the-knife",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Twisting the Knife from Marek Ironheart.",
            complete = QuestState(86758, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.818, 0.618, "Marek Ironheart",
                    "Travel to Marek Ironheart."),
            },
        },
        {
            id = "objective-86758-twisting-the-knife-1",
            kind = "objective",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Twisting the Knife: Marek's Croc-Hunting Knife.",
            dependsOn = { "accept-86758-twisting-the-knife" },
            complete = QuestObjective(86758, 1, "Marek's Croc-Hunting Knife"),
            route = {
                Point(MAP.LOCH_MODAN, 0.608, 0.416, "Daggerfang",
                    "Travel to Daggerfang."),
            },
        },
        {
            id = "turnin-86758-twisting-the-knife",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Twisting the Knife to Marek Ironheart.",
            dependsOn = { "objective-86758-twisting-the-knife-1" },
            complete = QuestState(86758, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.818, 0.618, "Marek Ironheart",
                    "Travel to Marek Ironheart."),
            },
        },
        {
            id = "objective-257-a-hunter-s-boast",
            kind = "objective",
            priority = 190,
            text = "Kill 6 Mountain Buzzard within 15 mins, found spread along the Southeast corner of Loch Modan.",
            dependsOn = { "accept-257-a-hunter-s-boast" },
            complete = QuestState(257, "complete"),
            route = {
                Point(MAP.LOCH_MODAN, 0.7600, 0.7200, "Mountain Buzzard",
                    "Travel to Mountain Buzzard."),
            },
        },
        {
            id = "turnin-257-a-hunter-s-boast",
            kind = "turnin",
            priority = 200,
            text = "Turn in A Hunter's Boast to Daryl the Youngling in The Farstrider Lodge.",
            dependsOn = { "objective-257-a-hunter-s-boast" },
            complete = QuestState(257, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8343, 0.6530, "Daryl the Youngling",
                    "Travel to Daryl the Youngling."),
            },
        },
        {
            id = "accept-258-a-hunter-s-challenge",
            kind = "accept",
            priority = 210,
            text = "Accept A Hunter's Challenge from Daryl the Youngling in The Farstrider Lodge.",
            complete = QuestState(258, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8343, 0.6530, "Daryl the Youngling",
                    "Travel to Daryl the Youngling."),
            },
        },
        {
            id = "objective-258-a-hunter-s-challenge",
            kind = "objective",
            priority = 220,
            text = "Kill 5 Elder Mountain Boar found spread throughout the central eastern area.",
            dependsOn = { "accept-258-a-hunter-s-challenge" },
            complete = QuestState(258, "complete"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6500, 0.3900, "Elder Mountain Boar",
                    "Travel to Elder Mountain Boar."),
            },
        },
        {
            id = "turnin-258-a-hunter-s-challenge",
            kind = "turnin",
            priority = 230,
            text = "Turn in A Hunter's Challenge to Daryl the Youngling in The Farstrider Lodge.",
            dependsOn = { "objective-258-a-hunter-s-challenge" },
            complete = QuestState(258, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8343, 0.6530, "Daryl the Youngling",
                    "Travel to Daryl the Youngling."),
            },
        },
        {
            id = "accept-271-vyrin-s-revenge",
            kind = "accept",
            priority = 240,
            text = "Accept Vyrin's Revenge from Vyrin Swiftwind in The Farstrider Lodge.",
            complete = QuestState(271, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8176, 0.6415, "Vyrin Swiftwind",
                    "Travel to Vyrin Swiftwind."),
            },
        },
        {
            id = "accept-2038-bingles-missing-supplies",
            kind = "accept",
            priority = 250,
            text = "Accept Bingles' Missing Supplies from Bingles Blastenheimer in The Loch.",
            complete = QuestState(2038, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6344, 0.4778, "Bingles Blastenheimer",
                    "Travel to Bingles Blastenheimer."),
            },
        },
        {
            id = "objective-2038-4-bingles-blastencapper",
            kind = "objective",
            priority = 260,
            text = "Collect Bingles' Blastencapper from Bingles's Blastencapper on the ground.",
            dependsOn = { "accept-2038-bingles-missing-supplies" },
            complete = QuestObjective(2038, 4),
            route = {
                Point(MAP.LOCH_MODAN, 0.5433, 0.2654, "Bingles' Blastencapper",
                    "Travel to Bingles' Blastencapper."),
            },
        },
        {
            id = "objective-2038-3-bingles-hammer",
            kind = "objective",
            priority = 270,
            text = "Collect Bingles' Hammer from the tool bucket in Loch Modan.",
            dependsOn = { "accept-2038-bingles-missing-supplies" },
            complete = QuestObjective(2038, 3),
            route = {
                Point(MAP.LOCH_MODAN, 0.5179, 0.2393, "Loch Modan",
                    "Travel to Loch Modan."),
            },
        },
        {
            id = "objective-2038-2-bingles-screwdriver",
            kind = "objective",
            priority = 280,
            text = "Collect Bingles' Screwdriver from Bingle's Toolbucket in Loch Modan.",
            dependsOn = { "accept-2038-bingles-missing-supplies" },
            complete = QuestObjective(2038, 2),
            route = {
                Point(MAP.LOCH_MODAN, 0.4835, 0.2039, "Loch Modan",
                    "Travel to Loch Modan."),
            },
        },
        {
            id = "objective-2038-1-bingles-wrench",
            kind = "objective",
            priority = 290,
            text = "Collect Bingles' Wrench from Bingle's Toolbucket near the camp fire in Loch Modan.",
            dependsOn = { "accept-2038-bingles-missing-supplies" },
            complete = QuestObjective(2038, 1),
            route = {
                Point(MAP.LOCH_MODAN, 0.4869, 0.2999, "Loch Modan",
                    "Travel to Loch Modan."),
            },
        },
        {
            id = "objective-385-crocolisk-hunting",
            kind = "objective",
            priority = 300,
            text = "Kill Loch Crocolisk found in the the lake until you've collected 5 pieces of Crocolisk Meat and 6 Crocolisk Skin.",
            dependsOn = { "accept-385-crocolisk-hunting" },
            complete = QuestState(385, "complete"),
            route = {
                Point(MAP.LOCH_MODAN, 0.5700, 0.3800, "Loch Crocolisk",
                    "Travel to Loch Crocolisk."),
            },
        },
        {
            id = "accept-250-a-dark-threat-looms",
            kind = "accept",
            priority = 310,
            text = "Accept A Dark Threat Looms from Chief Engineer Hinderweir VII in Stonewrought Dam.",
            complete = QuestState(250, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.5536, 0.1491, "Continue toward A Dark Threat Looms",
                    "Continue toward A Dark Threat Looms."),
                Point(MAP.LOCH_MODAN, 0.5294, 0.1099, "Continue toward A Dark Threat Looms",
                    "Continue toward A Dark Threat Looms."),
                Point(MAP.LOCH_MODAN, 0.4606, 0.1372, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII."),
            },
        },
        {
            id = "turnin-250-a-dark-threat-looms",
            kind = "turnin",
            priority = 320,
            text = "Turn in A Dark Threat Looms to Kobold Worker in Stonewrought Dam.",
            dependsOn = { "accept-250-a-dark-threat-looms" },
            complete = QuestState(250, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.5614, 0.1316, "Kobold Worker",
                    "Travel to Kobold Worker."),
            },
        },
        {
            id = "accept-199-a-dark-threat-looms",
            kind = "accept",
            priority = 330,
            text = "Accept A Dark Threat Looms from Kobold Worker in Stonewrought Dam.",
            complete = QuestState(199, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.5614, 0.1316, "Kobold Worker",
                    "Travel to Kobold Worker."),
            },
        },
        {
            id = "turnin-199-a-dark-threat-looms",
            kind = "turnin",
            priority = 340,
            text = "Turn in A Dark Threat Looms to Chief Engineer Hinderweir VII in Stonewrought Dam.",
            dependsOn = { "accept-199-a-dark-threat-looms" },
            complete = QuestState(199, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.4606, 0.1372, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII."),
            },
        },
        {
            id = "accept-161-a-dark-threat-looms",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            dependsOn = { "turnin-199-a-dark-threat-looms" },
            text = "Accept A Dark Threat Looms from Chief Engineer Hinderweir VII.",
            complete = QuestState(161, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.460, 0.136, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII."),
            },
        },
        {
            id = "objective-161-a-dark-threat-looms-1",
            kind = "objective",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "A Dark Threat Looms: Strange Smelling Powder.",
            dependsOn = { "accept-161-a-dark-threat-looms" },
            complete = QuestObjective(161, 1, "Strange Smelling Powder"),
            route = {
                Point(MAP.LOCH_MODAN, 0.460, 0.136, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII."),
            },
        },
        {
            id = "turnin-161-a-dark-threat-looms",
            kind = "turnin",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in A Dark Threat Looms to Ashlan Stonesmirk.",
            dependsOn = { "objective-161-a-dark-threat-looms-1" },
            complete = QuestState(161, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.500, 0.182, "Ashlan Stonesmirk",
                    "Travel to Ashlan Stonesmirk."),
            },
        },
        {
            id = "accept-274-a-dark-threat-looms",
            kind = "accept",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            dependsOn = { "turnin-161-a-dark-threat-looms" },
            text = "Accept A Dark Threat Looms from Ashlan Stonesmirk.",
            complete = QuestState(274, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.500, 0.182, "Ashlan Stonesmirk",
                    "Travel to Ashlan Stonesmirk in Wetlands."),
            },
        },
        {
            id = "objective-274-a-dark-threat-looms-1",
            kind = "objective",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "A Dark Threat Looms: Disarming Colloid.",
            dependsOn = { "accept-274-a-dark-threat-looms" },
            complete = QuestObjective(274, 1, "Disarming Colloid"),
            route = {
                Point(MAP.WETLANDS, 0.500, 0.182, "Ashlan Stonesmirk",
                    "Travel to Ashlan Stonesmirk in Wetlands."),
            },
        },
        {
            id = "turnin-274-a-dark-threat-looms",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in A Dark Threat Looms to Chief Engineer Hinderweir VII.",
            dependsOn = { "objective-274-a-dark-threat-looms-1" },
            complete = QuestState(274, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.460, 0.136, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII in Wetlands."),
            },
        },
        {
            id = "accept-278-a-dark-threat-looms",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            dependsOn = { "turnin-274-a-dark-threat-looms" },
            text = "Accept A Dark Threat Looms from Chief Engineer Hinderweir VII.",
            complete = QuestState(278, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.460, 0.136, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII."),
            },
        },
        {
            id = "objective-278-a-dark-threat-looms-1",
            kind = "objective",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "A Dark Threat Looms: Lurker Venom. This is an elite. Bring a group.",
            dependsOn = { "accept-278-a-dark-threat-looms" },
            complete = QuestObjective(278, 1, "Lurker Venom"),
            route = {
                Point(MAP.LOCH_MODAN, 0.566, 0.658, "Cliff Lurker",
                    "Travel to Cliff Lurker."),
            },
        },
        {
            id = "objective-278-a-dark-threat-looms-2",
            kind = "objective",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "A Dark Threat Looms: Mo'grosh Crystal. This is an elite. Bring a group.",
            dependsOn = { "accept-278-a-dark-threat-looms" },
            complete = QuestObjective(278, 2, "Mo'grosh Crystal"),
            route = {
                Point(MAP.LOCH_MODAN, 0.696, 0.208, "Mo'grosh Ogre",
                    "Travel to Mo'grosh Ogre."),
            },
        },
        {
            id = "objective-278-a-dark-threat-looms-3",
            kind = "objective",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "A Dark Threat Looms: Crocolisk Tear. This is an elite. Bring a group.",
            dependsOn = { "accept-278-a-dark-threat-looms" },
            complete = QuestObjective(278, 3, "Crocolisk Tear"),
            route = {
                Point(MAP.LOCH_MODAN, 0.622, 0.456, "Loch Crocolisk",
                    "Travel to Loch Crocolisk."),
            },
        },
        {
            id = "turnin-278-a-dark-threat-looms",
            kind = "turnin",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in A Dark Threat Looms to Chief Engineer Hinderweir VII.",
            dependsOn = { "objective-278-a-dark-threat-looms-3" },
            complete = QuestState(278, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.460, 0.136, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII."),
            },
        },
        {
            id = "accept-280-a-dark-threat-looms",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            dependsOn = { "turnin-278-a-dark-threat-looms" },
            text = "Accept A Dark Threat Looms from Chief Engineer Hinderweir VII.",
            complete = QuestState(280, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.460, 0.136, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII."),
            },
        },
        {
            id = "objective-280-a-dark-threat-looms-1",
            kind = "objective",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "A Dark Threat Looms: Disarming Mixture.",
            dependsOn = { "accept-280-a-dark-threat-looms" },
            complete = QuestObjective(280, 1, "Disarming Mixture"),
            route = {
                Point(MAP.LOCH_MODAN, 0.460, 0.136, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII."),
            },
        },
        {
            id = "turnin-280-a-dark-threat-looms",
            kind = "turnin",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in A Dark Threat Looms to Explosive Charge.",
            dependsOn = { "objective-280-a-dark-threat-looms-1" },
            complete = QuestState(280, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.506, 0.144, "Explosive Charge",
                    "Travel to Explosive Charge."),
            },
        },
        {
            id = "turnin-283-a-dark-threat-looms",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            dependsOn = { "turnin-280-a-dark-threat-looms" },
            text = "Accept A Dark Threat Looms from Explosive Charge, then turn it in to Chief Engineer Hinderweir VII.",
            complete = QuestState(283, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.460, 0.136, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII."),
            },
        },
        {
            id = "turnin-298-excavation-progress-report",
            kind = "turnin",
            priority = 500,
            text = "Turn in Excavation Progress Report to Jern Hornhelm in Thelsamar.",
            dependsOn = { "accept-298-excavation-progress-report" },
            complete = QuestState(298, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3717, 0.4755, "Jern Hornhelm",
                    "Travel to Jern Hornhelm."),
            },
        },
        {
            id = "accept-301-report-to-ironforge",
            kind = "accept",
            priority = 510,
            text = "Accept Report to Ironforge from Jern Hornhelm in Thelsamar.",
            complete = QuestState(301, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3717, 0.4755, "Jern Hornhelm",
                    "Travel to Jern Hornhelm."),
            },
        },
        {
            id = "objective-271-vyrin-s-revenge",
            kind = "objective",
            priority = 520,
            text = "Kill Ol' Sooty in the cave at the top of the mountain and collect Ol' Sooty's Head in Grizzlepaw Ridge Can be difficult to solo, it's safe to abandon and skip all Vyrin's Revenge quest.",
            dependsOn = { "accept-271-vyrin-s-revenge" },
            complete = QuestState(271, "complete"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3998, 0.6687, "Continue toward Vyrin's Revenge",
                    "Continue toward Vyrin's Revenge."),
                Point(MAP.LOCH_MODAN, 0.4089, 0.6306, "Continue toward Vyrin's Revenge",
                    "Continue toward Vyrin's Revenge."),
                Point(MAP.LOCH_MODAN, 0.4006, 0.6155, "Ol' Sooty",
                    "Travel to Ol' Sooty."),
            },
        },
        {
            id = "turnin-385-crocolisk-hunting",
            kind = "turnin",
            priority = 530,
            text = "Turn in Crocolisk Hunting to Marek Ironheart in The Farstrider Lodge.",
            dependsOn = { "objective-385-crocolisk-hunting" },
            complete = QuestState(385, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8184, 0.6177, "Marek Ironheart",
                    "Travel to Marek Ironheart."),
            },
        },
        {
            id = "turnin-271-vyrin-s-revenge",
            kind = "turnin",
            priority = 540,
            text = "Turn in Vyrin's Revenge to Daryl the Youngling in The Farstrider Lodge.",
            dependsOn = { "objective-271-vyrin-s-revenge" },
            complete = QuestState(271, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8343, 0.6530, "Daryl the Youngling",
                    "Travel to Daryl the Youngling."),
            },
        },
        {
            id = "accept-531-vyrin-s-revenge",
            kind = "accept",
            priority = 550,
            text = "Accept Vyrin's Revenge from Daryl the Youngling in The Farstrider Lodge.",
            complete = QuestState(531, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8343, 0.6530, "Daryl the Youngling",
                    "Travel to Daryl the Youngling."),
            },
        },
        {
            id = "turnin-531-vyrin-s-revenge",
            kind = "turnin",
            priority = 560,
            text = "Turn in Vyrin's Revenge to Vyrin Swiftwind in The Farstrider Lodge.",
            dependsOn = { "accept-531-vyrin-s-revenge" },
            complete = QuestState(531, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8176, 0.6415, "Vyrin Swiftwind",
                    "Travel to Vyrin Swiftwind."),
            },
        },
        {
            id = "turnin-2038-bingles-missing-supplies",
            kind = "turnin",
            priority = 570,
            text = "Turn in Bingles' Missing Supplies to Bingles Blastenheimer in The Loch.",
            dependsOn = { "objective-2038-4-bingles-blastencapper", "objective-2038-3-bingles-hammer", "objective-2038-2-bingles-screwdriver", "objective-2038-1-bingles-wrench" },
            complete = QuestState(2038, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6344, 0.4778, "Bingles Blastenheimer",
                    "Travel to Bingles Blastenheimer."),
            },
        },
        {
            id = "accept-2041-speak-with-shoni",
            kind = "accept",
            priority = 580,
            text = "Accept Speak with Shoni from Gnoarn in Ironforge.",
            complete = QuestState(2041, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.6940, 0.5060, "Gnoarn",
                    "Travel to Gnoarn."),
            },
        },
        {
            id = "turnin-301-report-to-ironforge",
            kind = "turnin",
            priority = 590,
            text = "Turn in Report to Ironforge to Prospector Stormpike in The Library.",
            dependsOn = { "accept-301-report-to-ironforge" },
            complete = QuestState(301, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7431, 0.1216, "Prospector Stormpike",
                    "Travel to Prospector Stormpike."),
            },
        },
        {
            id = "turnin-302-powder-to-ironband",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            dependsOn = { "turnin-301-report-to-ironforge" },
            text = "Accept Powder to Ironband from Prospector Stormpike, then turn it in to Jern Hornhelm.",
            complete = QuestState(302, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.372, 0.474, "Jern Hornhelm",
                    "Travel to Jern Hornhelm in Ironforge."),
            },
        },
        {
            id = "turnin-273-resupplying-the-excavation",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            dependsOn = { "turnin-302-powder-to-ironband" },
            text = "Accept Resupplying the Excavation from Jern Hornhelm, then turn it in to Huldar.",
            complete = QuestState(273, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.522, 0.692, "Huldar",
                    "Travel to Huldar."),
            },
        },
        {
            id = "turnin-454-after-the-ambush",
            kind = "turnin",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            dependsOn = { "turnin-273-resupplying-the-excavation" },
            text = "Accept After the Ambush from Huldar, then turn it in to Miran.",
            complete = QuestState(454, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.522, 0.694, "Miran",
                    "Travel to Miran."),
            },
        },
        {
            id = "accept-418-thelsamar-blood-sausages",
            kind = "accept",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 7 } },
                },
            },
            text = "Accept Thelsamar Blood Sausages from Vidra Hearthstove.",
            complete = QuestState(418, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.348, 0.490, "Vidra Hearthstove",
                    "Travel to Vidra Hearthstove."),
            },
        },
        {
            id = "objective-418-thelsamar-blood-sausages-1",
            kind = "objective",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 7 } },
                },
            },
            text = "Thelsamar Blood Sausages: Boar Intestines.",
            dependsOn = { "accept-418-thelsamar-blood-sausages" },
            complete = QuestObjective(418, 1, "Boar Intestines"),
            route = {
                Point(MAP.LOCH_MODAN, 0.374, 0.354, "Mountain Boar",
                    "Travel to Mountain Boar."),
            },
        },
        {
            id = "objective-418-thelsamar-blood-sausages-2",
            kind = "objective",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 7 } },
                },
            },
            text = "Thelsamar Blood Sausages: Bear Meat.",
            dependsOn = { "accept-418-thelsamar-blood-sausages" },
            complete = QuestObjective(418, 2, "Bear Meat"),
            route = {
                Point(MAP.LOCH_MODAN, 0.308, 0.096, "Elder Black Bear",
                    "Travel to Elder Black Bear."),
            },
        },
        {
            id = "objective-418-thelsamar-blood-sausages-3",
            kind = "objective",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 7 } },
                },
            },
            text = "Thelsamar Blood Sausages: Spider Ichor.",
            dependsOn = { "accept-418-thelsamar-blood-sausages" },
            complete = QuestObjective(418, 3, "Spider Ichor"),
            route = {
                Point(MAP.LOCH_MODAN, 0.566, 0.658, "Cliff Lurker",
                    "Travel to Cliff Lurker."),
            },
        },
        {
            id = "turnin-418-thelsamar-blood-sausages",
            kind = "turnin",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 7 } },
                },
            },
            text = "Turn in Thelsamar Blood Sausages to Vidra Hearthstove.",
            dependsOn = { "objective-418-thelsamar-blood-sausages-3" },
            complete = QuestState(418, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.348, 0.490, "Vidra Hearthstove",
                    "Travel to Vidra Hearthstove."),
            },
        },
        {
            id = "turnin-1339-mountaineer-stormpikes-task",
            kind = "turnin",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Mountaineer Stormpike's Task from Mountaineer Kadrell, then turn it in to Mountaineer Stormpike.",
            complete = QuestState(1339, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.248, 0.182, "Mountaineer Stormpike",
                    "Travel to Mountaineer Stormpike."),
            },
        },
        {
            id = "accept-217-in-defense-of-the-kings-lands",
            kind = "accept",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept In Defense of the King's Lands from Captain Rugelfuss.",
            complete = QuestState(217, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.232, 0.738, "Captain Rugelfuss",
                    "Travel to Captain Rugelfuss."),
            },
        },
        {
            id = "accept-267-the-trogg-threat",
            kind = "accept",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Trogg Threat from Captain Rugelfuss.",
            complete = QuestState(267, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.232, 0.738, "Captain Rugelfuss",
                    "Travel to Captain Rugelfuss."),
            },
        },
        {
            id = "accept-416-rat-catching",
            kind = "accept",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Rat Catching from Mountaineer Kadrell.",
            complete = QuestState(416, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.328, 0.496, "Mountaineer Kadrell",
                    "Travel to Mountaineer Kadrell."),
            },
        },
        {
            id = "objective-416-rat-catching-1",
            kind = "objective",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Rat Catching: Tunnel Rat Ear.",
            dependsOn = { "accept-416-rat-catching" },
            complete = QuestObjective(416, 1, "Tunnel Rat Ear"),
            route = {
                Point(MAP.LOCH_MODAN, 0.340, 0.172, "Tunnel Rat Vermin",
                    "Travel to Tunnel Rat Vermin."),
            },
        },
        {
            id = "turnin-416-rat-catching",
            kind = "turnin",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Rat Catching to Mountaineer Kadrell.",
            dependsOn = { "objective-416-rat-catching-1" },
            complete = QuestState(416, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.328, 0.496, "Mountaineer Kadrell",
                    "Travel to Mountaineer Kadrell."),
            },
        },
        {
            id = "objective-267-the-trogg-threat-1",
            kind = "objective",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "The Trogg Threat: Trogg Stone Tooth.",
            dependsOn = { "accept-267-the-trogg-threat" },
            complete = QuestObjective(267, 1, "Trogg Stone Tooth"),
            route = {
                Point(MAP.LOCH_MODAN, 0.352, 0.720, "Stonesplinter Trogg",
                    "Travel to Stonesplinter Trogg."),
            },
        },
        {
            id = "turnin-267-the-trogg-threat",
            kind = "turnin",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Trogg Threat to Captain Rugelfuss.",
            dependsOn = { "objective-267-the-trogg-threat-1" },
            complete = QuestState(267, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.232, 0.738, "Captain Rugelfuss",
                    "Travel to Captain Rugelfuss."),
            },
        },
        {
            id = "objective-217-in-defense-of-the-kings-lands-1",
            kind = "objective",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "In Defense of the King's Lands: Grawmug.",
            dependsOn = { "accept-217-in-defense-of-the-kings-lands" },
            complete = QuestObjective(217, 1, "Grawmug"),
            route = {
                Point(MAP.LOCH_MODAN, 0.232, 0.738, "Captain Rugelfuss",
                    "Travel to Captain Rugelfuss."),
            },
        },
        {
            id = "objective-217-in-defense-of-the-kings-lands-2",
            kind = "objective",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "In Defense of the King's Lands: Gnasher.",
            dependsOn = { "accept-217-in-defense-of-the-kings-lands" },
            complete = QuestObjective(217, 2, "Gnasher"),
            route = {
                Point(MAP.LOCH_MODAN, 0.232, 0.738, "Captain Rugelfuss",
                    "Travel to Captain Rugelfuss."),
            },
        },
        {
            id = "objective-217-in-defense-of-the-kings-lands-3",
            kind = "objective",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "In Defense of the King's Lands: Brawler.",
            dependsOn = { "accept-217-in-defense-of-the-kings-lands" },
            complete = QuestObjective(217, 3, "Brawler"),
            route = {
                Point(MAP.LOCH_MODAN, 0.232, 0.738, "Captain Rugelfuss",
                    "Travel to Captain Rugelfuss."),
            },
        },
        {
            id = "turnin-217-in-defense-of-the-kings-lands",
            kind = "turnin",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in In Defense of the King's Lands to Captain Rugelfuss.",
            dependsOn = { "objective-217-in-defense-of-the-kings-lands-3" },
            complete = QuestState(217, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.232, 0.738, "Captain Rugelfuss",
                    "Travel to Captain Rugelfuss."),
            },
        },
        {
            id = "accept-224-in-defense-of-the-kings-lands",
            kind = "accept",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept In Defense of the King's Lands from Mountaineer Cobbleflint.",
            complete = QuestState(224, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.220, 0.730, "Mountaineer Cobbleflint",
                    "Travel to Mountaineer Cobbleflint."),
            },
        },
        {
            id = "objective-224-in-defense-of-the-kings-lands-1",
            kind = "objective",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "In Defense of the King's Lands: Stonesplinter Trogg.",
            dependsOn = { "accept-224-in-defense-of-the-kings-lands" },
            complete = QuestObjective(224, 1, "Stonesplinter Trogg"),
            route = {
                Point(MAP.LOCH_MODAN, 0.220, 0.730, "Mountaineer Cobbleflint",
                    "Travel to Mountaineer Cobbleflint."),
            },
        },
        {
            id = "objective-224-in-defense-of-the-kings-lands-2",
            kind = "objective",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "In Defense of the King's Lands: Stonesplinter Scout.",
            dependsOn = { "accept-224-in-defense-of-the-kings-lands" },
            complete = QuestObjective(224, 2, "Stonesplinter Scout"),
            route = {
                Point(MAP.LOCH_MODAN, 0.220, 0.730, "Mountaineer Cobbleflint",
                    "Travel to Mountaineer Cobbleflint."),
            },
        },
        {
            id = "turnin-224-in-defense-of-the-kings-lands",
            kind = "turnin",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in In Defense of the King's Lands to Mountaineer Cobbleflint.",
            dependsOn = { "objective-224-in-defense-of-the-kings-lands-2" },
            complete = QuestState(224, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.220, 0.730, "Mountaineer Cobbleflint",
                    "Travel to Mountaineer Cobbleflint."),
            },
        },
        {
            id = "accept-237-in-defense-of-the-kings-lands",
            kind = "accept",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept In Defense of the King's Lands from Mountaineer Gravelgaw.",
            complete = QuestState(237, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.234, 0.762, "Mountaineer Gravelgaw",
                    "Travel to Mountaineer Gravelgaw."),
            },
        },
        {
            id = "objective-237-in-defense-of-the-kings-lands-1",
            kind = "objective",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "In Defense of the King's Lands: Stonesplinter Skullthumper.",
            dependsOn = { "accept-237-in-defense-of-the-kings-lands" },
            complete = QuestObjective(237, 1, "Stonesplinter Skullthumper"),
            route = {
                Point(MAP.LOCH_MODAN, 0.234, 0.762, "Mountaineer Gravelgaw",
                    "Travel to Mountaineer Gravelgaw."),
            },
        },
        {
            id = "objective-237-in-defense-of-the-kings-lands-2",
            kind = "objective",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "In Defense of the King's Lands: Stonesplinter Seer.",
            dependsOn = { "accept-237-in-defense-of-the-kings-lands" },
            complete = QuestObjective(237, 2, "Stonesplinter Seer"),
            route = {
                Point(MAP.LOCH_MODAN, 0.234, 0.762, "Mountaineer Gravelgaw",
                    "Travel to Mountaineer Gravelgaw."),
            },
        },
        {
            id = "turnin-237-in-defense-of-the-kings-lands",
            kind = "turnin",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in In Defense of the King's Lands to Mountaineer Gravelgaw.",
            dependsOn = { "objective-237-in-defense-of-the-kings-lands-2" },
            complete = QuestState(237, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.234, 0.762, "Mountaineer Gravelgaw",
                    "Travel to Mountaineer Gravelgaw."),
            },
        },
        {
            id = "accept-263-in-defense-of-the-kings-lands",
            kind = "accept",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept In Defense of the King's Lands from Mountaineer Wallbang.",
            complete = QuestState(263, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.234, 0.746, "Mountaineer Wallbang",
                    "Travel to Mountaineer Wallbang."),
            },
        },
        {
            id = "objective-263-in-defense-of-the-kings-lands-1",
            kind = "objective",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "In Defense of the King's Lands: Stonesplinter Shaman.",
            dependsOn = { "accept-263-in-defense-of-the-kings-lands" },
            complete = QuestObjective(263, 1, "Stonesplinter Shaman"),
            route = {
                Point(MAP.LOCH_MODAN, 0.234, 0.746, "Mountaineer Wallbang",
                    "Travel to Mountaineer Wallbang."),
            },
        },
        {
            id = "objective-263-in-defense-of-the-kings-lands-2",
            kind = "objective",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "In Defense of the King's Lands: Stonesplinter Bonesnapper.",
            dependsOn = { "accept-263-in-defense-of-the-kings-lands" },
            complete = QuestObjective(263, 2, "Stonesplinter Bonesnapper"),
            route = {
                Point(MAP.LOCH_MODAN, 0.234, 0.746, "Mountaineer Wallbang",
                    "Travel to Mountaineer Wallbang."),
            },
        },
        {
            id = "turnin-263-in-defense-of-the-kings-lands",
            kind = "turnin",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in In Defense of the King's Lands to Mountaineer Wallbang.",
            dependsOn = { "objective-263-in-defense-of-the-kings-lands-2" },
            complete = QuestState(263, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.234, 0.746, "Mountaineer Wallbang",
                    "Travel to Mountaineer Wallbang."),
            },
        },
        {
            id = "turnin-309-protecting-the-shipment",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Protecting the Shipment from Miran, then turn it in to Prospector Ironband.",
            complete = QuestState(309, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.658, 0.656, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "objective-912-stonesplinter-trogg-disguise-1",
            kind = "objective",
            priority = 930,
            conditions = {
                all = {
                    { level = { min = 10 } },
                },
            },
            text = "Stonesplinter Trogg Disguise: Stonesplinter Trogg Disguise. Wowhead has no pin, so follow the quest text.",
            complete = QuestObjective(912, 1, "Stonesplinter Trogg Disguise"),
            route = {},
        },
        {
            id = "turnin-912-stonesplinter-trogg-disguise",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Stonesplinter Trogg Disguise to . Wowhead has no pin, so follow the quest text.",
            dependsOn = { "objective-912-stonesplinter-trogg-disguise-1" },
            complete = QuestState(912, "completed"),
            route = {},
        },
        {
            id = "accept-6387-honor-students",
            kind = "accept",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Honor Students from Brock Stoneseeker.",
            complete = QuestState(6387, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.370, 0.478, "Brock Stoneseeker",
                    "Travel to Brock Stoneseeker."),
            },
        },
        {
            id = "objective-6387-honor-students-1",
            kind = "objective",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Honor Students: Brock's List.",
            dependsOn = { "accept-6387-honor-students" },
            complete = QuestObjective(6387, 1, "Brock's List"),
            route = {
                Point(MAP.LOCH_MODAN, 0.370, 0.478, "Brock Stoneseeker",
                    "Travel to Brock Stoneseeker."),
            },
        },
        {
            id = "turnin-6387-honor-students",
            kind = "turnin",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Honor Students to Thorgrum Borrelson.",
            dependsOn = { "objective-6387-honor-students-1" },
            complete = QuestState(6387, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.338, 0.508, "Thorgrum Borrelson",
                    "Travel to Thorgrum Borrelson."),
            },
        },
        {
            id = "accept-6391-ride-to-ironforge",
            kind = "accept",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            dependsOn = { "turnin-6387-honor-students" },
            text = "Accept Ride to Ironforge from Thorgrum Borrelson.",
            complete = QuestState(6391, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.338, 0.508, "Thorgrum Borrelson",
                    "Travel to Thorgrum Borrelson."),
            },
        },
        {
            id = "objective-6391-ride-to-ironforge-1",
            kind = "objective",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Ride to Ironforge: Brock's List.",
            dependsOn = { "accept-6391-ride-to-ironforge" },
            complete = QuestObjective(6391, 1, "Brock's List"),
            route = {
                Point(MAP.LOCH_MODAN, 0.338, 0.508, "Thorgrum Borrelson",
                    "Travel to Thorgrum Borrelson."),
            },
        },
        {
            id = "turnin-6391-ride-to-ironforge",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Ride to Ironforge to Golnir Bouldertoe.",
            dependsOn = { "objective-6391-ride-to-ironforge-1" },
            complete = QuestState(6391, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.510, 0.260, "Golnir Bouldertoe",
                    "Travel to Golnir Bouldertoe."),
            },
        },
        {
            id = "accept-6388-gryth-thurden",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            dependsOn = { "turnin-6391-ride-to-ironforge" },
            text = "Accept Gryth Thurden from Golnir Bouldertoe.",
            complete = QuestState(6388, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.510, 0.260, "Golnir Bouldertoe",
                    "Travel to Golnir Bouldertoe in Ironforge."),
            },
        },
        {
            id = "objective-6388-gryth-thurden-1",
            kind = "objective",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Gryth Thurden: Honorary Picks.",
            dependsOn = { "accept-6388-gryth-thurden" },
            complete = QuestObjective(6388, 1, "Honorary Picks"),
            route = {
                Point(MAP.IRONFORGE, 0.510, 0.260, "Golnir Bouldertoe",
                    "Travel to Golnir Bouldertoe in Ironforge."),
            },
        },
        {
            id = "turnin-6388-gryth-thurden",
            kind = "turnin",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Gryth Thurden to Gryth Thurden.",
            dependsOn = { "objective-6388-gryth-thurden-1" },
            complete = QuestState(6388, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.558, 0.480, "Gryth Thurden",
                    "Travel to Gryth Thurden in Ironforge."),
            },
        },
        {
            id = "accept-6392-return-to-brock",
            kind = "accept",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            dependsOn = { "turnin-6388-gryth-thurden" },
            text = "Accept Return to Brock from Gryth Thurden.",
            complete = QuestState(6392, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.558, 0.480, "Gryth Thurden",
                    "Travel to Gryth Thurden in Ironforge."),
            },
        },
        {
            id = "objective-6392-return-to-brock-1",
            kind = "objective",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Return to Brock: Honorary Picks.",
            dependsOn = { "accept-6392-return-to-brock" },
            complete = QuestObjective(6392, 1, "Honorary Picks"),
            route = {
                Point(MAP.IRONFORGE, 0.558, 0.480, "Gryth Thurden",
                    "Travel to Gryth Thurden in Ironforge."),
            },
        },
        {
            id = "turnin-6392-return-to-brock",
            kind = "turnin",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Return to Brock to Brock Stoneseeker.",
            dependsOn = { "objective-6392-return-to-brock-1" },
            complete = QuestState(6392, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.370, 0.478, "Brock Stoneseeker",
                    "Travel to Brock Stoneseeker in Ironforge."),
            },
        },
        {
            id = "accept-86585-banner-of-the-fallen",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Banner of the Fallen from Mountaineer Ylva.",
            complete = QuestState(86585, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.318, 0.862, "Mountaineer Ylva",
                    "Travel to Mountaineer Ylva."),
            },
        },
        {
            id = "objective-86585-banner-of-the-fallen-1",
            kind = "objective",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Banner of the Fallen: Banner of Ironforge.",
            dependsOn = { "accept-86585-banner-of-the-fallen" },
            complete = QuestObjective(86585, 1, "Banner of Ironforge"),
            route = {
                Point(MAP.LOCH_MODAN, 0.318, 0.862, "Mountaineer Ylva",
                    "Travel to Mountaineer Ylva."),
            },
        },
        {
            id = "objective-86585-banner-of-the-fallen-2",
            kind = "objective",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Banner of the Fallen: Headsplitter.",
            dependsOn = { "accept-86585-banner-of-the-fallen" },
            complete = QuestObjective(86585, 2, "Headsplitter"),
            route = {
                Point(MAP.LOCH_MODAN, 0.318, 0.862, "Mountaineer Ylva",
                    "Travel to Mountaineer Ylva."),
            },
        },
        {
            id = "turnin-86585-banner-of-the-fallen",
            kind = "turnin",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Banner of the Fallen to Captain Rugelfuss.",
            dependsOn = { "objective-86585-banner-of-the-fallen-2" },
            complete = QuestState(86585, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.232, 0.738, "Captain Rugelfuss",
                    "Travel to Captain Rugelfuss."),
            },
        },
        {
            id = "accept-86667-snowbound",
            kind = "accept",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Snowbound from Grenhild Darktalon.",
            complete = QuestState(86667, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.364, 0.482, "Grenhild Darktalon",
                    "Travel to Grenhild Darktalon."),
            },
        },
        {
            id = "objective-86667-snowbound-1",
            kind = "objective",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Snowbound: Jar of Snow.",
            dependsOn = { "accept-86667-snowbound" },
            complete = QuestObjective(86667, 1, "Jar of Snow"),
            route = {
                Point(MAP.LOCH_MODAN, 0.364, 0.482, "Grenhild Darktalon",
                    "Travel to Grenhild Darktalon."),
            },
        },
        {
            id = "turnin-86667-snowbound",
            kind = "turnin",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Snowbound to Norric Lochthane.",
            dependsOn = { "objective-86667-snowbound-1" },
            complete = QuestState(86667, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.418, 0.190, "Norric Lochthane",
                    "Travel to Norric Lochthane."),
            },
        },
        {
            id = "accept-86614-silver-of-the-waves",
            kind = "accept",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 13 } },
                },
            },
            text = "Accept Silver of the Waves from Khara Deepwater.",
            complete = QuestState(86614, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.404, 0.394, "Khara Deepwater",
                    "Travel to Khara Deepwater."),
            },
        },
        {
            id = "objective-86614-silver-of-the-waves-1",
            kind = "objective",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 13 } },
                },
            },
            text = "Silver of the Waves: Monogrammed Silver Hair Clip.",
            dependsOn = { "accept-86614-silver-of-the-waves" },
            complete = QuestObjective(86614, 1, "Monogrammed Silver Hair Clip"),
            route = {
                Point(MAP.LOCH_MODAN, 0.404, 0.394, "Khara Deepwater",
                    "Travel to Khara Deepwater."),
            },
        },
        {
            id = "turnin-86614-silver-of-the-waves",
            kind = "turnin",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 13 } },
                },
            },
            text = "Turn in Silver of the Waves to Khara Deepwater.",
            dependsOn = { "objective-86614-silver-of-the-waves-1" },
            complete = QuestState(86614, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.404, 0.394, "Khara Deepwater",
                    "Travel to Khara Deepwater."),
            },
        },
        {
            id = "accept-255-mercenaries",
            kind = "accept",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Mercenaries from Magistrate Bluntnose.",
            complete = QuestState(255, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.346, 0.446, "Magistrate Bluntnose",
                    "Travel to Magistrate Bluntnose."),
            },
        },
        {
            id = "objective-255-mercenaries-1",
            kind = "objective",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Mercenaries: Mo'grosh Ogre. This is an elite. Bring a group.",
            dependsOn = { "accept-255-mercenaries" },
            complete = QuestObjective(255, 1, "Mo'grosh Ogre"),
            route = {
                Point(MAP.LOCH_MODAN, 0.346, 0.446, "Magistrate Bluntnose",
                    "Travel to Magistrate Bluntnose."),
            },
        },
        {
            id = "objective-255-mercenaries-2",
            kind = "objective",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Mercenaries: Mo'grosh Brute. This is an elite. Bring a group.",
            dependsOn = { "accept-255-mercenaries" },
            complete = QuestObjective(255, 2, "Mo'grosh Brute"),
            route = {
                Point(MAP.LOCH_MODAN, 0.346, 0.446, "Magistrate Bluntnose",
                    "Travel to Magistrate Bluntnose."),
            },
        },
        {
            id = "objective-255-mercenaries-3",
            kind = "objective",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Mercenaries: Mo'grosh Enforcer. This is an elite. Bring a group.",
            dependsOn = { "accept-255-mercenaries" },
            complete = QuestObjective(255, 3, "Mo'grosh Enforcer"),
            route = {
                Point(MAP.LOCH_MODAN, 0.346, 0.446, "Magistrate Bluntnose",
                    "Travel to Magistrate Bluntnose."),
            },
        },
        {
            id = "turnin-255-mercenaries",
            kind = "turnin",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Mercenaries to Magistrate Bluntnose.",
            dependsOn = { "objective-255-mercenaries-3" },
            complete = QuestState(255, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.346, 0.446, "Magistrate Bluntnose",
                    "Travel to Magistrate Bluntnose."),
            },
        },
        {
            id = "accept-86776-ingredients-for-the-forge",
            kind = "accept",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Ingredients for the Forge from Morhan Coppertongue.",
            complete = QuestState(86776, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.340, 0.466, "Morhan Coppertongue",
                    "Travel to Morhan Coppertongue."),
            },
        },
        {
            id = "objective-86776-ingredients-for-the-forge-1",
            kind = "objective",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Ingredients for the Forge: Bronze Bar.",
            dependsOn = { "accept-86776-ingredients-for-the-forge" },
            complete = QuestObjective(86776, 1, "Bronze Bar"),
            route = {
                Point(MAP.LOCH_MODAN, 0.340, 0.466, "Morhan Coppertongue",
                    "Travel to Morhan Coppertongue."),
            },
        },
        {
            id = "turnin-86776-ingredients-for-the-forge",
            kind = "turnin",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Ingredients for the Forge to Morhan Coppertongue.",
            dependsOn = { "objective-86776-ingredients-for-the-forge-1" },
            complete = QuestState(86776, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.340, 0.466, "Morhan Coppertongue",
                    "Travel to Morhan Coppertongue."),
            },
        },
        {
            id = "accept-256-wanted-choksul",
            kind = "accept",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept WANTED: Chok'sul from WANTED.",
            complete = QuestState(256, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.372, 0.464, "WANTED",
                    "Travel to WANTED."),
            },
        },
        {
            id = "objective-256-wanted-choksul-1",
            kind = "objective",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 17 } },
                },
            },
            text = "WANTED: Chok'sul: Chok'sul's Head. This is an elite. Bring a group.",
            dependsOn = { "accept-256-wanted-choksul" },
            complete = QuestObjective(256, 1, "Chok'sul's Head"),
            route = {
                Point(MAP.LOCH_MODAN, 0.796, 0.150, "Chok'sul",
                    "Travel to Chok'sul."),
            },
        },
        {
            id = "turnin-256-wanted-choksul",
            kind = "turnin",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in WANTED: Chok'sul to Magistrate Bluntnose.",
            dependsOn = { "objective-256-wanted-choksul-1" },
            complete = QuestState(256, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.346, 0.446, "Magistrate Bluntnose",
                    "Travel to Magistrate Bluntnose."),
            },
        },
        {
            id = "accept-2500-badlands-reagent-run",
            kind = "accept",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 36 } },
                },
            },
            text = "Accept Badlands Reagent Run from Ghak Healtouch.",
            complete = QuestState(2500, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.370, 0.492, "Ghak Healtouch",
                    "Travel to Ghak Healtouch."),
            },
        },
        {
            id = "accept-2501-badlands-reagent-run-ii",
            kind = "accept",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 40 } },
                },
            },
            text = "Accept Badlands Reagent Run II from Ghak Healtouch.",
            complete = QuestState(2501, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.370, 0.492, "Ghak Healtouch",
                    "Travel to Ghak Healtouch."),
            },
        },
        {
            id = "objective-2501-badlands-reagent-run-ii-1",
            kind = "objective",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 40 } },
                },
            },
            text = "Badlands Reagent Run II: Vessel of Dragon's Blood. This is an elite. Bring a group.",
            dependsOn = { "accept-2501-badlands-reagent-run-ii" },
            complete = QuestObjective(2501, 1, "Vessel of Dragon's Blood"),
            route = {
                Point(MAP.LOCH_MODAN, 0.370, 0.492, "Ghak Healtouch",
                    "Travel to Ghak Healtouch."),
            },
        },
        {
            id = "turnin-2501-badlands-reagent-run-ii",
            kind = "turnin",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 40 } },
                },
            },
            text = "Turn in Badlands Reagent Run II to Ghak Healtouch.",
            dependsOn = { "objective-2501-badlands-reagent-run-ii-1" },
            complete = QuestState(2501, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.370, 0.492, "Ghak Healtouch",
                    "Travel to Ghak Healtouch."),
            },
        },
        {
            id = "objective-2500-badlands-reagent-run-1",
            kind = "objective",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 36 } },
                },
            },
            text = "Badlands Reagent Run: Buzzard Gizzard.",
            dependsOn = { "accept-2500-badlands-reagent-run" },
            complete = QuestObjective(2500, 1, "Buzzard Gizzard"),
            route = {
                Point(MAP.LOCH_MODAN, 0.464, 0.724, "Starving Buzzard",
                    "Travel to Starving Buzzard."),
            },
        },
        {
            id = "objective-2500-badlands-reagent-run-2",
            kind = "objective",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 36 } },
                },
            },
            text = "Badlands Reagent Run: Crag Coyote Fang.",
            dependsOn = { "accept-2500-badlands-reagent-run" },
            complete = QuestObjective(2500, 2, "Crag Coyote Fang"),
            route = {
                Point(MAP.LOCH_MODAN, 0.464, 0.724, "Starving Buzzard",
                    "Travel to Starving Buzzard."),
            },
        },
        {
            id = "objective-2500-badlands-reagent-run-3",
            kind = "objective",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 36 } },
                },
            },
            text = "Badlands Reagent Run: Rock Elemental Shard.",
            dependsOn = { "accept-2500-badlands-reagent-run" },
            complete = QuestObjective(2500, 3, "Rock Elemental Shard"),
            route = {
                Point(MAP.LOCH_MODAN, 0.464, 0.724, "Starving Buzzard",
                    "Travel to Starving Buzzard."),
            },
        },
        {
            id = "turnin-2500-badlands-reagent-run",
            kind = "turnin",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 36 } },
                },
            },
            text = "Turn in Badlands Reagent Run to Ghak Healtouch.",
            dependsOn = { "objective-2500-badlands-reagent-run-3" },
            complete = QuestState(2500, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.370, 0.492, "Ghak Healtouch",
                    "Travel to Ghak Healtouch."),
            },
        },
        {
            id = "accept-3182-proof-of-deed",
            kind = "accept",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 40 } },
                },
            },
            text = "Accept Proof of Deed from Mountaineer Pebblebitty.",
            complete = QuestState(3182, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.182, 0.838, "Mountaineer Pebblebitty",
                    "Travel to Mountaineer Pebblebitty."),
            },
        },
        {
            id = "objective-3182-proof-of-deed-1",
            kind = "objective",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 40 } },
                },
            },
            text = "Proof of Deed: Margol's Gigantic Horn. This is an elite. Bring a group.",
            dependsOn = { "accept-3182-proof-of-deed" },
            complete = QuestObjective(3182, 1, "Margol's Gigantic Horn"),
            route = {
                Point(MAP.LOCH_MODAN, 0.182, 0.838, "Mountaineer Pebblebitty",
                    "Travel to Mountaineer Pebblebitty."),
            },
        },
        {
            id = "turnin-3182-proof-of-deed",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 40 } },
                },
            },
            text = "Turn in Proof of Deed to Curator Thorius.",
            dependsOn = { "objective-3182-proof-of-deed-1" },
            complete = QuestState(3182, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.714, 0.162, "Curator Thorius",
                    "Travel to Curator Thorius."),
            },
        },
    },
})
