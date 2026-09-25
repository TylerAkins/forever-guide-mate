local _, ns = ...

-- Alliance Era leveling route for Loch Modan, levels 17-18.
-- Forever quests from the Loch Modan list are woven into this route.
-- Left out: Banner of the Fallen stands on the southern road past this loop. Snowbound ends on the north shore after the Algaz visit. Ingredients for the Forge is level 30.
-- Drop turn-ins appear only after the item starts them.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    LOCH_MODAN = 1432,
    WETLANDS = 1437,
    IRONFORGE = 1455,
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
    id = "leveling-era-17-18-loch-modan",
    title = "17-18 Loch Modan",
    category = "Leveling Quest Guides",
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
            priority = 40,
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
            priority = 50,
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
            priority = 60,
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
            priority = 70,
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
            priority = 90,
            text = "Accept Ironband's Excavation from Jern Hornhelm in Thelsamar.",
            complete = QuestState(436, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3717, 0.4755, "Jern Hornhelm",
                    "Travel to Jern Hornhelm."),
            },
        },
        {
            id = "note-stoutlager-inn",
            kind = "note",
            priority = 100,
            text = "Set your hearth in Stoutlager Inn with Miran.",
            route = {
                Point(MAP.LOCH_MODAN, 0.3553, 0.4841, "Miran",
                    "Travel to Miran."),
            },
        },
        {
            id = "turnin-436-ironband-s-excavation",
            kind = "turnin",
            priority = 120,
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
            priority = 130,
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
            priority = 140,
            text = "Accept Excavation Progress Report from Prospector Ironband in Ironband's Excavation Site.",
            complete = QuestState(298, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6586, 0.6567, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "turnin-86613-excavation-tools",
            kind = "turnin",
            priority = 141,
            conditions = {
                all = {
                    { quest = { id = 86613, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Excavation Tools to Prospector Ironband if you found them at the dig. Wowhead gives no separate pin for the tools.",
            complete = QuestState(86613, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6580, 0.6560, "Prospector Ironband",
                    "Travel to Prospector Ironband."),
            },
        },
        {
            id = "objective-297-gathering-idols",
            kind = "objective",
            priority = 150,
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
            priority = 160,
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
            priority = 180,
            text = "Accept Crocolisk Hunting from Marek Ironheart in The Farstrider Lodge.",
            complete = QuestState(385, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8184, 0.6177, "Marek Ironheart",
                    "Travel to Marek Ironheart."),
            },
        },
        {
            id = "accept-86758-twisting-the-knife",
            kind = "accept",
            priority = 181,
            text = "Accept Twisting the Knife from Marek Ironheart at the Farstrider Lodge.",
            complete = QuestState(86758, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8180, 0.6180, "Marek Ironheart",
                    "Travel to Marek Ironheart."),
            },
        },
        {
            id = "accept-257-a-hunter-s-boast",
            kind = "accept",
            priority = 190,
            text = "Accept A Hunter's Boast from Daryl the Youngling in The Farstrider Lodge.",
            complete = QuestState(257, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8343, 0.6530, "Daryl the Youngling",
                    "Travel to Daryl the Youngling."),
            },
        },
        {
            id = "objective-257-a-hunter-s-boast",
            kind = "objective",
            priority = 200,
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
            priority = 210,
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
            priority = 220,
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
            priority = 230,
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
            priority = 240,
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
            priority = 250,
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
            priority = 260,
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
            priority = 270,
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
            priority = 280,
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
            priority = 290,
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
            priority = 300,
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
            priority = 320,
            text = "Kill Loch Crocolisk found in the the lake until you've collected 5 pieces of Crocolisk Meat and 6 Crocolisk Skin.",
            dependsOn = { "accept-385-crocolisk-hunting" },
            complete = QuestState(385, "complete"),
            route = {
                Point(MAP.LOCH_MODAN, 0.5700, 0.3800, "Loch Crocolisk",
                    "Travel to Loch Crocolisk."),
            },
        },
        {
            id = "objective-86758-twisting-the-knife",
            kind = "objective",
            priority = 325,
            text = "Twisting the Knife: defeat Daggerfang and bring back Marek's knife.",
            dependsOn = { "accept-86758-twisting-the-knife" },
            complete = QuestState(86758, "complete"),
            route = {
                Point(MAP.LOCH_MODAN, 0.6080, 0.4160, "Daggerfang",
                    "Travel to Daggerfang."),
            },
        },
        {
            id = "accept-250-a-dark-threat-looms",
            kind = "accept",
            priority = 340,
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
            priority = 350,
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
            priority = 360,
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
            priority = 370,
            text = "Turn in A Dark Threat Looms to Chief Engineer Hinderweir VII in Stonewrought Dam.",
            dependsOn = { "accept-199-a-dark-threat-looms" },
            complete = QuestState(199, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.4606, 0.1372, "Chief Engineer Hinderweir VII",
                    "Travel to Chief Engineer Hinderweir VII."),
            },
        },
        {
            id = "turnin-298-excavation-progress-report",
            kind = "turnin",
            priority = 390,
            text = "Turn in Excavation Progress Report to Jern Hornhelm in Thelsamar.",
            dependsOn = { "accept-298-excavation-progress-report" },
            complete = QuestState(298, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3717, 0.4755, "Jern Hornhelm",
                    "Travel to Jern Hornhelm."),
            },
        },
        {
            id = "turnin-86614-silver-of-the-waves",
            kind = "turnin",
            priority = 391,
            conditions = {
                all = {
                    { quest = { id = 86614, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Silver of the Waves to Khara Deepwater in Thelsamar if you found the monogrammed silver hair clip.",
            complete = QuestState(86614, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.4040, 0.3940, "Khara Deepwater",
                    "Travel to Khara Deepwater."),
            },
        },
        {
            id = "accept-301-report-to-ironforge",
            kind = "accept",
            priority = 400,
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
            priority = 420,
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
            priority = 440,
            text = "Turn in Crocolisk Hunting to Marek Ironheart in The Farstrider Lodge.",
            dependsOn = { "objective-385-crocolisk-hunting" },
            complete = QuestState(385, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8184, 0.6177, "Marek Ironheart",
                    "Travel to Marek Ironheart."),
            },
        },
        {
            id = "turnin-86758-twisting-the-knife",
            kind = "turnin",
            priority = 445,
            text = "Turn in Twisting the Knife to Marek Ironheart at the Farstrider Lodge.",
            dependsOn = { "objective-86758-twisting-the-knife" },
            complete = QuestState(86758, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.8180, 0.6180, "Marek Ironheart",
                    "Travel to Marek Ironheart."),
            },
        },
        {
            id = "turnin-271-vyrin-s-revenge",
            kind = "turnin",
            priority = 450,
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
            priority = 460,
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
            priority = 470,
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
            priority = 480,
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
            priority = 510,
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
            priority = 520,
            text = "Turn in Report to Ironforge to Prospector Stormpike in The Library.",
            dependsOn = { "accept-301-report-to-ironforge" },
            complete = QuestState(301, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7431, 0.1216, "Prospector Stormpike",
                    "Travel to Prospector Stormpike."),
            },
        },
    },
})
