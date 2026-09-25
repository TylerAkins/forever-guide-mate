local _, ns = ...

-- Alliance Era leveling route for Redridge Mountains, levels 27-28.
-- Forever quests from the Redridge list that sit on this pass are woven in.
-- Left out: WANTED: Incinerator Gar'im is in Render's Valley, while this chapter goes to Galardell Valley. Level 60 signs stay out.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    REDRIDGE = 1433,
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
    id = "leveling-era-27-28-redridge-mountains",
    title = "27-28 Redridge Mountains",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 27 } },
        },
    },
    goals = {
        {
            id = "accept-128-blackrock-bounty",
            kind = "accept",
            priority = 20,
            text = "Accept Blackrock Bounty from Guard Howe in Lakeshire.",
            complete = QuestState(128, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3152, 0.5790, "Guard Howe",
                    "Travel to Guard Howe."),
            },
        },
        {
            id = "accept-20-blackrock-menace",
            kind = "accept",
            priority = 30,
            text = "Accept Blackrock Menace from Marshal Marris in Lakeshire.",
            complete = QuestState(20, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3340, 0.4890, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "accept-98387-blackrock-blockade",
            kind = "accept",
            priority = 31,
            conditions = { level = { min = 21 } },
            text = "Accept Blackrock Blockade from Marshal Marris in Lakeshire.",
            complete = QuestState(98387, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3340, 0.4880, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "accept-98386-althers-mill",
            kind = "accept",
            priority = 35,
            conditions = { level = { min = 21 } },
            text = "Accept Alther's Mill from Foreman Oslow in Lakeshire.",
            complete = QuestState(98386, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3220, 0.4860, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "accept-169-wanted-gath-ilzogg",
            kind = "accept",
            priority = 40,
            text = "Accept Wanted: Gath'Ilzogg in Lakeshire.",
            complete = QuestState(169, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2954, 0.4603, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "accept-91-solomon-s-law",
            kind = "accept",
            priority = 50,
            text = "Accept Solomon's Law from Bailiff Conacher in Lakeshire.",
            complete = QuestState(91, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2964, 0.4435, "Bailiff Conacher",
                    "Travel to Bailiff Conacher."),
            },
        },
        {
            id = "accept-180-wanted-lieutenant-fangore",
            kind = "accept",
            priority = 60,
            text = "Accept Wanted: Lieutenant Fangore in Lakeshire.",
            complete = QuestState(180, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2670, 0.4650, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "note-34-lakeshire",
            kind = "note",
            priority = 70,
            text = "Set your hearth in Lakeshire with Innkeeper Brianna.",
            route = {
                Point(MAP.REDRIDGE, 0.2700, 0.4500, "Innkeeper Brianna",
                    "Travel to Innkeeper Brianna."),
            },
        },
        {
            id = "accept-34-an-unwelcome-guest",
            kind = "accept",
            priority = 80,
            text = "Accept An Unwelcome Guest from Martie Jainrose in Lakeshire.",
            complete = QuestState(34, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2190, 0.4627, "Martie Jainrose",
                    "Travel to Martie Jainrose."),
            },
        },
        {
            id = "objective-34-an-unwelcome-guest",
            kind = "objective",
            priority = 90,
            text = "Kill Bellygrub and collect Bellygrub's Tusk west of Lakeshire.",
            dependsOn = { "accept-34-an-unwelcome-guest" },
            complete = QuestState(34, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.1700, 0.4800, "Bellygrub",
                    "Travel to Bellygrub."),
            },
        },
        {
            id = "turnin-34-an-unwelcome-guest",
            kind = "turnin",
            priority = 100,
            text = "Turn in An Unwelcome Guest to Martie Jainrose in Lakeshire.",
            dependsOn = { "objective-34-an-unwelcome-guest" },
            complete = QuestState(34, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2190, 0.4627, "Martie Jainrose",
                    "Travel to Martie Jainrose."),
            },
        },
        {
            id = "accept-126-howling-in-the-hills",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { quest = { id = 124, state = "completed" } },
                },
            },
            text = "Accept Howling in the Hills from Verner Osgood in Lakeshire.",
            complete = QuestState(126, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3103, 0.4742, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "objective-126-howling-in-the-hills",
            kind = "objective",
            priority = 120,
            conditions = {
                all = {
                    { quest = { id = 124, state = "completed" } },
                },
            },
            text = "Kill Yowler and collect Yowler's Paw in Redridge Canyons, he patrol's around use the target button or /tar Yowler.",
            dependsOn = { "accept-126-howling-in-the-hills" },
            complete = QuestState(126, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3920, 0.3380, "Continue toward Howling in the Hills",
                    "Continue toward Howling in the Hills."),
                Point(MAP.REDRIDGE, 0.3240, 0.2500, "Continue toward Howling in the Hills",
                    "Continue toward Howling in the Hills."),
                Point(MAP.REDRIDGE, 0.2780, 0.2300, "Continue toward Howling in the Hills",
                    "Continue toward Howling in the Hills."),
                Point(MAP.REDRIDGE, 0.2380, 0.2900, "Yowler",
                    "Travel to Yowler."),
            },
        },
        {
            id = "objective-20-blackrock-menace",
            kind = "objective",
            priority = 130,
            text = "Collect 10 Battleworn Axe which drop from Blackrock Grunt, Blackrock Summoner, Blackrock Tracker and Blackrock Outrunner found along the Northern road or at their encampment at.",
            dependsOn = { "accept-20-blackrock-menace" },
            complete = QuestState(20, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.2920, 0.1160, "Blackrock Grunt",
                    "Travel to Blackrock Grunt."),
            },
        },
        {
            id = "objective-98387-blackrock-blockade",
            kind = "objective",
            priority = 131,
            conditions = { level = { min = 21 } },
            text = "Blackrock Blockade: collect 10 Battleworn Axes from the Blackrock camp you are already clearing. Wowhead gives no axe pin.",
            dependsOn = { "accept-98387-blackrock-blockade" },
            complete = QuestState(98387, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.2920, 0.1160, "Blackrock Grunt",
                    "Travel to Blackrock Grunt."),
            },
        },
        {
            id = "objective-128-blackrock-bounty",
            kind = "objective",
            priority = 140,
            text = "Kill 15 Blackrock Champion which are found in Render's Rock.",
            dependsOn = { "accept-128-blackrock-bounty" },
            complete = QuestState(128, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3100, 0.1400, "Blackrock Champion",
                    "Travel to Blackrock Champion."),
            },
        },
        {
            id = "accept-219-missing-in-action",
            kind = "accept",
            priority = 150,
            text = "Accept Missing In Action from Corporal Keeshan in Render's Rock.",
            complete = QuestState(219, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2836, 0.1274, "Corporal Keeshan",
                    "Travel to Corporal Keeshan."),
            },
        },
        {
            id = "objective-219-missing-in-action",
            kind = "objective",
            priority = 160,
            text = "This is an escort quest where you must protect Corporal Keeshan through the cave He is a strong NPC who you should let tank but also be sure to pull the mobs to him instead of him charging into them to prevent any unwanted adds He is an elite warrior so will help taunt any mobs off you, skip this quest if its too hard.",
            dependsOn = { "accept-219-missing-in-action" },
            complete = QuestState(219, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3122, 0.1504, "Continue toward Missing In Action",
                    "Continue toward Missing In Action."),
                Point(MAP.REDRIDGE, 0.3341, 0.4852, "Corporal Keeshan",
                    "Travel to Corporal Keeshan."),
            },
        },
        {
            id = "turnin-219-missing-in-action",
            kind = "turnin",
            priority = 170,
            text = "Turn in Missing In Action to Marshal Marris in Lakeshire.",
            dependsOn = { "objective-219-missing-in-action" },
            complete = QuestState(219, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3340, 0.4890, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "turnin-20-blackrock-menace",
            kind = "turnin",
            priority = 180,
            text = "Turn in Blackrock Menace to Marshal Marris in Lakeshire.",
            dependsOn = { "objective-20-blackrock-menace" },
            complete = QuestState(20, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3340, 0.4890, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "turnin-98387-blackrock-blockade",
            kind = "turnin",
            priority = 181,
            conditions = { level = { min = 21 } },
            text = "Turn in Blackrock Blockade to Marshal Marris in Lakeshire.",
            dependsOn = { "objective-98387-blackrock-blockade" },
            complete = QuestState(98387, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3340, 0.4880, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "objective-98386-althers-mill",
            kind = "objective",
            priority = 185,
            conditions = { level = { min = 21 } },
            text = "Alther's Mill: slay 12 Greater Tarantulas and destroy 6 Tarantula Eggs.",
            dependsOn = { "accept-98386-althers-mill" },
            complete = QuestState(98386, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.5200, 0.4520, "Greater Tarantula",
                    "Travel to Greater Tarantula."),
                Point(MAP.REDRIDGE, 0.4720, 0.4080, "Greater Tarantula",
                    "Travel to Greater Tarantula."),
            },
        },
        {
            id = "turnin-98386-althers-mill",
            kind = "turnin",
            priority = 186,
            conditions = { level = { min = 21 } },
            text = "Turn in Alther's Mill to Foreman Oslow in Lakeshire.",
            dependsOn = { "objective-98386-althers-mill" },
            complete = QuestState(98386, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3220, 0.4860, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "turnin-128-blackrock-bounty",
            kind = "turnin",
            priority = 190,
            text = "Turn in Blackrock Bounty to Guard Howe in Lakeshire.",
            dependsOn = { "objective-128-blackrock-bounty" },
            complete = QuestState(128, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3152, 0.5790, "Guard Howe",
                    "Travel to Guard Howe."),
            },
        },
        {
            id = "turnin-126-howling-in-the-hills",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { quest = { id = 124, state = "completed" } },
                },
            },
            text = "Turn in Howling in the Hills to Verner Osgood in Lakeshire.",
            dependsOn = { "objective-126-howling-in-the-hills" },
            complete = QuestState(126, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3103, 0.4742, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "objective-180-wanted-lieutenant-fangore",
            kind = "objective",
            priority = 220,
            text = "Kill General Fangore and collect Fangore's Paw in Galardell Valley General Fangore is a level 26 non-elite but is surrounded by other mobs. Clear any mobs first before attacking him and then loot Fangore's Paw.",
            dependsOn = { "accept-180-wanted-lieutenant-fangore" },
            complete = QuestState(180, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.8000, 0.4000, "General Fangore",
                    "Travel to General Fangore."),
            },
        },
        {
            id = "objective-91-solomon-s-law",
            kind = "objective",
            priority = 230,
            text = "Collect 10 Shadowhide Pendant from Shadowhide Warrior, Shadowhide Gnoll, Rabid Shadowhide Gnoll and Shadowhide Brute in Galardell Valley.",
            dependsOn = { "accept-91-solomon-s-law" },
            complete = QuestState(91, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.7400, 0.4700, "Shadowhide Warrior",
                    "Travel to Shadowhide Warrior."),
            },
        },
        {
            id = "turnin-91-solomon-s-law",
            kind = "turnin",
            priority = 250,
            text = "Turn in Solomon's Law to Bailiff Conacher in Lakeshire.",
            dependsOn = { "objective-91-solomon-s-law" },
            complete = QuestState(91, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2964, 0.4435, "Bailiff Conacher",
                    "Travel to Bailiff Conacher."),
            },
        },
        {
            id = "turnin-180-wanted-lieutenant-fangore",
            kind = "turnin",
            priority = 260,
            text = "Turn in Wanted: Lieutenant Fangore to Magistrate Solomon in Lakeshire.",
            dependsOn = { "objective-180-wanted-lieutenant-fangore" },
            complete = QuestState(180, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3000, 0.4400, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
    },
})
