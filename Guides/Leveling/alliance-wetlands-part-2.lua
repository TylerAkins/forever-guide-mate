local _, ns = ...

-- Forever Casual spine: Wetlands (27-29)
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
    ARATHI_HIGHLANDS = 1417,
    HILLSBRAD_FOOTHILLS = 1424,
    WETLANDS = 1437,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-wetlands-part-2",
    title = "Wetlands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 27 } },
        },
    },
    goals = {
        {
            id = "accept-281-reclaiming-goods",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Reclaiming Goods.",
            complete = QuestState(281, "activeOrCompleted"),
            route = {
                Point(1437, 0.0831, 0.5853, "Reclaiming Goods",
                    "Travel to Reclaiming Goods."),
            },
        },
        {
            id = "accept-471-apprentice-s-duties",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Apprentice's Duties.",
            complete = QuestState(471, "activeOrCompleted"),
            route = {
                Point(1437, 0.0851, 0.5571, "Apprentice's Duties",
                    "Travel to Apprentice's Duties."),
            },
        },
        {
            id = "accept-289-the-cursed-crew",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Cursed Crew.",
            complete = QuestState(289, "activeOrCompleted"),
            route = {
                Point(1437, 0.1089, 0.5967, "The Cursed Crew",
                    "Travel to The Cursed Crew."),
            },
        },
        {
            id = "turnin-270-the-doomed-fleet",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Doomed Fleet.",
            complete = QuestState(270, "completed"),
            route = {
                Point(1437, 0.1059, 0.6059, "The Doomed Fleet",
                    "Travel to The Doomed Fleet."),
            },
        },
        {
            id = "accept-472-fall-of-dun-modr",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Fall of Dun Modr.",
            complete = QuestState(472, "activeOrCompleted"),
            route = {
                Point(1437, 0.1085, 0.5590, "Fall of Dun Modr",
                    "Travel to Fall of Dun Modr."),
            },
        },
        {
            id = "accept-464-war-banners",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept War Banners.",
            complete = QuestState(464, "activeOrCompleted"),
            route = {
                Point(1437, 0.0986, 0.5749, "War Banners",
                    "Travel to War Banners."),
            },
        },
        {
            id = "turnin-281-reclaiming-goods",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Reclaiming Goods.",
            complete = QuestState(281, "completed"),
            dependsOn = { "accept-281-reclaiming-goods" },
            route = {
                Point(1437, 0.1351, 0.4138, "Reclaiming Goods",
                    "Travel to Reclaiming Goods."),
            },
        },
        {
            id = "accept-284-the-search-continues",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Search Continues.",
            complete = QuestState(284, "activeOrCompleted"),
            route = {
                Point(1437, 0.1351, 0.4138, "The Search Continues",
                    "Travel to The Search Continues."),
            },
        },
        {
            id = "turnin-284-the-search-continues",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Search Continues.",
            complete = QuestState(284, "completed"),
            dependsOn = { "accept-284-the-search-continues" },
            route = {
                Point(1437, 0.1361, 0.3821, "The Search Continues",
                    "Travel to The Search Continues."),
            },
        },
        {
            id = "accept-285-search-more-hovels",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Search More Hovels.",
            complete = QuestState(285, "activeOrCompleted"),
            route = {
                Point(1437, 0.1361, 0.3821, "Search More Hovels",
                    "Travel to Search More Hovels."),
            },
        },
        {
            id = "turnin-285-search-more-hovels",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Search More Hovels.",
            complete = QuestState(285, "completed"),
            dependsOn = { "accept-285-search-more-hovels" },
            route = {
                Point(1437, 0.1395, 0.3481, "Search More Hovels",
                    "Travel to Search More Hovels."),
            },
        },
        {
            id = "accept-286-return-the-statuette",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return the Statuette.",
            complete = QuestState(286, "activeOrCompleted"),
            route = {
                Point(1437, 0.1395, 0.3481, "Return the Statuette",
                    "Travel to Return the Statuette."),
            },
        },
        {
            id = "objective-289-3-first-mate-snellig",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Kill First Mate Snellig.",
            complete = QuestObjective(289, 3, "First Mate Snellig"),
            dependsOn = { "accept-289-the-cursed-crew" },
            route = {
                Point(1437, 0.1408, 0.3001, "First Mate Snellig",
                    "Travel to First Mate Snellig."),
            },
        },
        {
            id = "objective-471-1-giant-wetlands-crocolisk",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Kill Giant Wetlands Crocolisk.",
            complete = QuestObjective(471, 1, "Giant Wetlands Crocolisk"),
            dependsOn = { "accept-471-apprentice-s-duties" },
            route = {
                Point(1437, 0.1640, 0.2740, "Giant Wetlands Crocolisk",
                    "Travel to Giant Wetlands Crocolisk."),
            },
        },
        {
            id = "objective-277-1-mosshide-brute",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Kill Mosshide Brute.",
            complete = QuestObjective(277, 1, "Mosshide Brute"),
            route = {
                Point(1437, 0.3040, 0.2840, "Mosshide Brute",
                    "Travel to Mosshide Brute."),
            },
        },
        {
            id = "accept-295-ormer-s-revenge",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ormer's Revenge.",
            complete = QuestState(295, "activeOrCompleted"),
            route = {
                Point(1437, 0.3419, 0.4109, "Ormer's Revenge",
                    "Travel to Ormer's Revenge."),
            },
        },
        {
            id = "accept-299-uncovering-the-past",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Uncovering the Past.",
            complete = QuestState(299, "activeOrCompleted"),
            route = {
                Point(1437, 0.3881, 0.5239, "Uncovering the Past",
                    "Travel to Uncovering the Past."),
            },
        },
        {
            id = "turnin-295-ormer-s-revenge",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ormer's Revenge.",
            complete = QuestState(295, "completed"),
            dependsOn = { "accept-295-ormer-s-revenge" },
            route = {
                Point(1437, 0.3711, 0.4298, "Ormer's Revenge",
                    "Travel to Ormer's Revenge."),
            },
        },
        {
            id = "accept-296-ormer-s-revenge",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ormer's Revenge.",
            complete = QuestState(296, "activeOrCompleted"),
            route = {
                Point(1437, 0.3711, 0.4298, "Ormer's Revenge",
                    "Travel to Ormer's Revenge."),
            },
        },
        {
            id = "turnin-296-ormer-s-revenge",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ormer's Revenge.",
            complete = QuestState(296, "completed"),
            dependsOn = { "accept-296-ormer-s-revenge" },
            route = {
                Point(1437, 0.3711, 0.4298, "Ormer's Revenge",
                    "Travel to Ormer's Revenge."),
            },
        },
        {
            id = "turnin-299-uncovering-the-past",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Uncovering the Past.",
            complete = QuestState(299, "completed"),
            dependsOn = { "accept-299-uncovering-the-past" },
            route = {
                Point(1437, 0.3881, 0.5239, "Uncovering the Past",
                    "Travel to Uncovering the Past."),
            },
        },
        {
            id = "objective-464-1-dragonmaw-raider",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Kill Dragonmaw Raider.",
            complete = QuestObjective(464, 1, "Dragonmaw Raider"),
            dependsOn = { "accept-464-war-banners" },
            route = {
                Point(1437, 0.3402, 0.4085, "Dragonmaw Raider",
                    "Travel to Dragonmaw Raider."),
            },
        },
        {
            id = "turnin-277-fire-taboo",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Fire Taboo.",
            complete = QuestState(277, "completed"),
            dependsOn = { "objective-277-1-mosshide-brute" },
            route = {
                Point(1437, 0.5637, 0.4040, "Fire Taboo",
                    "Travel to Fire Taboo."),
            },
        },
        {
            id = "accept-275-blisters-on-the-land",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Blisters on The Land.",
            complete = QuestState(275, "activeOrCompleted"),
            route = {
                Point(1437, 0.5637, 0.4040, "Blisters on The Land",
                    "Travel to Blisters on The Land."),
            },
        },
        {
            id = "turnin-289-the-cursed-crew",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Cursed Crew.",
            complete = QuestState(289, "completed"),
            dependsOn = { "accept-289-the-cursed-crew", "objective-289-3-first-mate-snellig" },
            route = {
                Point(1437, 0.1089, 0.5967, "The Cursed Crew",
                    "Travel to The Cursed Crew."),
            },
        },
        {
            id = "accept-290-lifting-the-curse",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Lifting the Curse.",
            complete = QuestState(290, "activeOrCompleted"),
            route = {
                Point(1437, 0.1089, 0.5967, "Lifting the Curse",
                    "Travel to Lifting the Curse."),
            },
        },
        {
            id = "turnin-286-return-the-statuette",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return the Statuette.",
            complete = QuestState(286, "completed"),
            dependsOn = { "accept-286-return-the-statuette" },
            route = {
                Point(1437, 0.0831, 0.5854, "Return the Statuette",
                    "Travel to Return the Statuette."),
            },
        },
        {
            id = "turnin-471-apprentice-s-duties",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Apprentice's Duties.",
            complete = QuestState(471, "completed"),
            dependsOn = { "accept-471-apprentice-s-duties", "objective-471-1-giant-wetlands-crocolisk" },
            route = {
                Point(1437, 0.0851, 0.5571, "Apprentice's Duties",
                    "Travel to Apprentice's Duties."),
            },
        },
        {
            id = "turnin-464-war-banners",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in War Banners.",
            complete = QuestState(464, "completed"),
            dependsOn = { "accept-464-war-banners", "objective-464-1-dragonmaw-raider" },
            route = {
                Point(1437, 0.0986, 0.5749, "War Banners",
                    "Travel to War Banners."),
            },
        },
        {
            id = "accept-465-nek-rosh-s-gambit",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Nek'rosh's Gambit.",
            complete = QuestState(465, "activeOrCompleted"),
            route = {
                Point(1437, 0.0986, 0.5749, "Nek'rosh's Gambit",
                    "Travel to Nek'rosh's Gambit."),
            },
        },
        {
            id = "objective-290-1-captain-halyndor",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Kill Captain Halyndor.",
            complete = QuestObjective(290, 1, "Captain Halyndor"),
            dependsOn = { "accept-290-lifting-the-curse" },
            route = {
                Point(1437, 0.1545, 0.2361, "Captain Halyndor",
                    "Travel to Captain Halyndor."),
            },
        },
        {
            id = "turnin-290-lifting-the-curse",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Lifting the Curse.",
            complete = QuestState(290, "completed"),
            dependsOn = { "accept-290-lifting-the-curse", "objective-290-1-captain-halyndor" },
            route = {
                Point(1437, 0.1437, 0.2402, "Lifting the Curse",
                    "Travel to Lifting the Curse."),
            },
        },
        {
            id = "accept-292-the-eye-of-paleth",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Eye of Paleth.",
            complete = QuestState(292, "activeOrCompleted"),
            route = {
                Point(1437, 0.1437, 0.2402, "The Eye of Paleth",
                    "Travel to The Eye of Paleth."),
            },
        },
        {
            id = "objective-275-1-fen-creeper",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Kill 12 Fen Creeper.",
            complete = QuestObjective(275, 1, "Fen Creeper"),
            dependsOn = { "accept-275-blisters-on-the-land" },
            route = {
                Point(1437, 0.4740, 0.4690, "Fen Creeper",
                    "Travel to Fen Creeper."),
            },
        },
        {
            id = "turnin-465-nek-rosh-s-gambit",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Nek'rosh's Gambit.",
            complete = QuestState(465, "completed"),
            dependsOn = { "accept-465-nek-rosh-s-gambit" },
            route = {
                Point(1437, 0.4740, 0.4690, "Nek'rosh's Gambit",
                    "Travel to Nek'rosh's Gambit."),
            },
        },
        {
            id = "objective-275-1-fen-creeper-2",
            kind = "objective",
            priority = 360,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Kill 12 Fen Creeper.",
            complete = QuestObjective(275, 1, "Fen Creeper"),
            dependsOn = { "accept-275-blisters-on-the-land" },
            route = {
                Point(1437, 0.4640, 0.3520, "Fen Creeper",
                    "Travel to Fen Creeper."),
            },
        },
        {
            id = "turnin-275-blisters-on-the-land",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Blisters on The Land.",
            complete = QuestState(275, "completed"),
            dependsOn = { "accept-275-blisters-on-the-land", "objective-275-1-fen-creeper", "objective-275-1-fen-creeper-2" },
            route = {
                Point(1437, 0.5637, 0.4040, "Blisters on The Land",
                    "Travel to Blisters on The Land."),
            },
        },
        {
            id = "accept-631-the-thandol-span",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Thandol Span.",
            complete = QuestState(631, "activeOrCompleted"),
            route = {
                Point(1437, 0.4992, 0.1821, "The Thandol Span",
                    "Travel to The Thandol Span."),
            },
        },
        {
            id = "turnin-472-fall-of-dun-modr",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Fall of Dun Modr.",
            complete = QuestState(472, "completed"),
            dependsOn = { "accept-472-fall-of-dun-modr" },
            route = {
                Point(1437, 0.4980, 0.1826, "Fall of Dun Modr",
                    "Travel to Fall of Dun Modr."),
            },
        },
        {
            id = "turnin-631-the-thandol-span",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Thandol Span.",
            complete = QuestState(631, "completed"),
            dependsOn = { "accept-631-the-thandol-span" },
            route = {
                Point(1437, 0.5136, 0.0811, "The Thandol Span",
                    "Travel to The Thandol Span."),
            },
        },
        {
            id = "accept-632-the-thandol-span",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Thandol Span.",
            complete = QuestState(632, "activeOrCompleted"),
            route = {
                Point(1437, 0.5136, 0.0811, "The Thandol Span",
                    "Travel to The Thandol Span."),
            },
        },
        {
            id = "turnin-632-the-thandol-span",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Thandol Span.",
            complete = QuestState(632, "completed"),
            dependsOn = { "accept-632-the-thandol-span" },
            route = {
                Point(1437, 0.4992, 0.1822, "The Thandol Span",
                    "Travel to The Thandol Span."),
            },
        },
        {
            id = "accept-633-the-thandol-span",
            kind = "accept",
            priority = 430,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Thandol Span.",
            complete = QuestState(633, "activeOrCompleted"),
            route = {
                Point(1437, 0.4992, 0.1822, "The Thandol Span",
                    "Travel to The Thandol Span."),
            },
        },
        {
            id = "accept-637-sully-balloo-s-letter",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Use the Sully Balloo's Letter to accept Sully Balloo's Letter.",
            complete = QuestState(637, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-633-the-thandol-span",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Thandol Span.",
            complete = QuestState(633, "completed"),
            dependsOn = { "accept-633-the-thandol-span" },
            route = {
                Point(1437, 0.4992, 0.1822, "The Thandol Span",
                    "Travel to The Thandol Span."),
            },
        },
        {
            id = "accept-634-plea-to-the-alliance",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Plea To The Alliance.",
            complete = QuestState(634, "activeOrCompleted"),
            route = {
                Point(1437, 0.4992, 0.1822, "Plea To The Alliance",
                    "Travel to Plea To The Alliance."),
            },
        },
        {
            id = "turnin-634-plea-to-the-alliance",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Plea To The Alliance.",
            complete = QuestState(634, "completed"),
            dependsOn = { "accept-634-plea-to-the-alliance" },
            route = {
                Point(1417, 0.4583, 0.4755, "Plea To The Alliance",
                    "Travel to Plea To The Alliance."),
            },
        },
        {
            id = "objective-555-1-snapjaw",
            kind = "objective",
            priority = 480,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Kill Snapjaw.",
            complete = QuestObjective(555, 1, "Snapjaw"),
            route = {
                Point(1424, 0.5520, 0.5700, "Snapjaw",
                    "Travel to Snapjaw."),
            },
        },
        {
            id = "turnin-292-the-eye-of-paleth",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Eye of Paleth.",
            complete = QuestState(292, "completed"),
            dependsOn = { "accept-292-the-eye-of-paleth" },
            route = {
                Point(1437, 0.1058, 0.6059, "The Eye of Paleth",
                    "Travel to The Eye of Paleth."),
            },
        },
        {
            id = "accept-293-cleansing-the-eye",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Cleansing the Eye.",
            complete = QuestState(293, "activeOrCompleted"),
            route = {
                Point(1437, 0.1058, 0.6059, "Cleansing the Eye",
                    "Travel to Cleansing the Eye."),
            },
        },
        {
            id = "accept-321-lightforge-iron",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Lightforge Iron.",
            complete = QuestState(321, "activeOrCompleted"),
            route = {
                Point(1437, 0.1058, 0.6059, "Lightforge Iron",
                    "Travel to Lightforge Iron."),
            },
        },
        {
            id = "turnin-321-lightforge-iron",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Lightforge Iron.",
            complete = QuestState(321, "completed"),
            dependsOn = { "accept-321-lightforge-iron" },
            route = {
                Point(1437, 0.1210, 0.6417, "Lightforge Iron",
                    "Travel to Lightforge Iron."),
            },
        },
        {
            id = "accept-324-the-lost-ingots",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Lost Ingots.",
            complete = QuestState(324, "activeOrCompleted"),
            route = {
                Point(1437, 0.1210, 0.6417, "The Lost Ingots",
                    "Travel to The Lost Ingots."),
            },
        },
        {
            id = "objective-324-1-bluegill-raider",
            kind = "objective",
            priority = 540,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Kill Bluegill Raider.",
            complete = QuestObjective(324, 1, "Bluegill Raider"),
            dependsOn = { "accept-324-the-lost-ingots" },
            route = {
                Point(1437, 0.1180, 0.6320, "Bluegill Raider",
                    "Travel to Bluegill Raider."),
            },
        },
        {
            id = "turnin-324-the-lost-ingots",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Lost Ingots.",
            complete = QuestState(324, "completed"),
            dependsOn = { "accept-324-the-lost-ingots", "objective-324-1-bluegill-raider" },
            route = {
                Point(1437, 0.1059, 0.6059, "The Lost Ingots",
                    "Travel to The Lost Ingots."),
            },
        },
        {
            id = "accept-322-blessed-arm",
            kind = "accept",
            priority = 560,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Alliance" },
            } },
            text = "Accept Blessed Arm.",
            complete = QuestState(322, "activeOrCompleted"),
            route = {
                Point(1437, 0.1059, 0.6059, "Blessed Arm",
                    "Travel to Blessed Arm."),
            },
        },
    },
})
