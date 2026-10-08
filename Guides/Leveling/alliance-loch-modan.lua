local _, ns = ...

-- Forever Casual spine: Loch Modan (18-19)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves are applied in a separate pass.
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
    LOCH_MODAN = 1432,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-loch-modan",
    title = "Loch Modan",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 18 } },
        },
    },
    goals = {
        {
            id = "accept-436-ironband-s-excavation",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ironband's Excavation.",
            complete = QuestState(436, "activeOrCompleted"),
            route = {
                Point(1432, 0.3724, 0.4739, "Ironband's Excavation",
                    "Travel to Ironband's Excavation."),
            },
        },
        {
            id = "turnin-353-stormpike-s-delivery",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Stormpike's Delivery.",
            complete = QuestState(353, "completed"),
            route = {
                Point(1432, 0.2476, 0.1839, "Stormpike's Delivery",
                    "Travel to Stormpike's Delivery."),
            },
        },
        {
            id = "accept-307-filthy-paws",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Accept Filthy Paws.",
            complete = QuestState(307, "activeOrCompleted"),
            route = {
                Point(1432, 0.2476, 0.1839, "Filthy Paws",
                    "Travel to Filthy Paws."),
            },
        },
        {
            id = "objective-307-1-miners-league-crates",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Click Miners' League Crates.",
            complete = QuestObjective(307, 1, "Miners' League Crates"),
            dependsOn = { "accept-307-filthy-paws" },
            route = {
                Point(1432, 0.3548, 0.1886, "Miners' League Crates",
                    "Travel to Miners' League Crates."),
            },
        },
        {
            id = "turnin-307-filthy-paws",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Filthy Paws.",
            complete = QuestState(307, "completed"),
            dependsOn = { "accept-307-filthy-paws", "objective-307-1-miners-league-crates" },
            route = {
                Point(1432, 0.3548, 0.1886, "Filthy Paws",
                    "Travel to Filthy Paws."),
            },
        },
        {
            id = "accept-250-a-dark-threat-looms",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Dark Threat Looms.",
            complete = QuestState(250, "activeOrCompleted"),
            route = {
                Point(1432, 0.4054, 0.1364, "A Dark Threat Looms",
                    "Travel to A Dark Threat Looms."),
            },
        },
        {
            id = "turnin-250-a-dark-threat-looms",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Dark Threat Looms.",
            complete = QuestState(250, "completed"),
            dependsOn = { "accept-250-a-dark-threat-looms" },
            route = {
                Point(1432, 0.5605, 0.1324, "A Dark Threat Looms",
                    "Travel to A Dark Threat Looms."),
            },
        },
        {
            id = "accept-199-a-dark-threat-looms",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Dark Threat Looms.",
            complete = QuestState(199, "activeOrCompleted"),
            route = {
                Point(1432, 0.5605, 0.1324, "A Dark Threat Looms",
                    "Travel to A Dark Threat Looms."),
            },
        },
        {
            id = "turnin-199-a-dark-threat-looms",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Dark Threat Looms.",
            complete = QuestState(199, "completed"),
            dependsOn = { "accept-199-a-dark-threat-looms" },
            route = {
                Point(1432, 0.5539, 0.1484, "A Dark Threat Looms",
                    "Travel to A Dark Threat Looms."),
            },
        },
        {
            id = "accept-385-crocolisk-hunting",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Accept Crocolisk Hunting.",
            complete = QuestState(385, "activeOrCompleted"),
            route = {
                Point(1432, 0.8175, 0.6166, "Crocolisk Hunting",
                    "Travel to Crocolisk Hunting."),
            },
        },
        {
            id = "objective-385-2-loch-crocolisk",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Kill Loch Crocolisk.",
            complete = QuestObjective(385, 2, "Loch Crocolisk"),
            dependsOn = { "accept-385-crocolisk-hunting" },
            route = {
                Point(1432, 0.5660, 0.3960, "Loch Crocolisk",
                    "Travel to Loch Crocolisk."),
            },
        },
        {
            id = "objective-385-1-crocolisk-meat",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Collect 5 Crocolisk Meat.",
            complete = QuestObjective(385, 1, "Crocolisk Meat"),
            dependsOn = { "accept-385-crocolisk-hunting" },
            route = {
                Point(1432, 0.5660, 0.3960, "Crocolisk Meat",
                    "Travel to Crocolisk Meat."),
            },
        },
        {
            id = "turnin-385-crocolisk-hunting",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Crocolisk Hunting.",
            complete = QuestState(385, "completed"),
            dependsOn = { "accept-385-crocolisk-hunting", "objective-385-2-loch-crocolisk", "objective-385-1-crocolisk-meat" },
            route = {
                Point(1432, 0.8175, 0.6166, "Crocolisk Hunting",
                    "Travel to Crocolisk Hunting."),
            },
        },
        {
            id = "turnin-436-ironband-s-excavation",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ironband's Excavation.",
            complete = QuestState(436, "completed"),
            dependsOn = { "accept-436-ironband-s-excavation" },
            route = {
                Point(1432, 0.6490, 0.6665, "Ironband's Excavation",
                    "Travel to Ironband's Excavation."),
            },
        },
        {
            id = "accept-297-gathering-idols",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Accept Gathering Idols.",
            complete = QuestState(297, "activeOrCompleted"),
            route = {
                Point(1432, 0.6490, 0.6665, "Gathering Idols",
                    "Travel to Gathering Idols."),
            },
        },
        {
            id = "accept-298-excavation-progress-report",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Accept Excavation Progress Report.",
            complete = QuestState(298, "activeOrCompleted"),
            route = {
                Point(1432, 0.6593, 0.6562, "Excavation Progress Report",
                    "Travel to Excavation Progress Report."),
            },
        },
        {
            id = "objective-297-1-berserk-trogg",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Kill Berserk Trogg.",
            complete = QuestObjective(297, 1, "Berserk Trogg"),
            dependsOn = { "accept-297-gathering-idols" },
            route = {
                Point(1432, 0.6794, 0.6315, "Berserk Trogg",
                    "Travel to Berserk Trogg."),
            },
        },
        {
            id = "turnin-297-gathering-idols",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Gathering Idols.",
            complete = QuestState(297, "completed"),
            dependsOn = { "accept-297-gathering-idols", "objective-297-1-berserk-trogg" },
            route = {
                Point(1432, 0.6490, 0.6665, "Gathering Idols",
                    "Travel to Gathering Idols."),
            },
        },
        {
            id = "turnin-298-excavation-progress-report",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Excavation Progress Report.",
            complete = QuestState(298, "completed"),
            dependsOn = { "accept-298-excavation-progress-report" },
            route = {
                Point(1432, 0.3724, 0.4739, "Excavation Progress Report",
                    "Travel to Excavation Progress Report."),
            },
        },
        {
            id = "accept-301-report-to-ironforge",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Accept Report to Ironforge.",
            complete = QuestState(301, "activeOrCompleted"),
            route = {
                Point(1432, 0.3724, 0.4739, "Report to Ironforge",
                    "Travel to Report to Ironforge."),
            },
        },
        {
            id = "turnin-301-report-to-ironforge",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Report to Ironforge.",
            complete = QuestState(301, "completed"),
            dependsOn = { "accept-301-report-to-ironforge" },
            route = {
                Point(1455, 0.7465, 0.1172, "Report to Ironforge",
                    "Travel to Report to Ironforge."),
            },
        },
    },
})
