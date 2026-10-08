local _, ns = ...

-- Forever Casual spine: Dwarf & Gnome Starter (1-13)
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
    DUN_MOROGH = 1426,
    ELWYNN_FOREST = 1429,
    LOCH_MODAN = 1432,
    REDRIDGE_MOUNTAINS = 1433,
    STORMWIND_CITY = 1453,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-dun-morogh",
    title = "Dwarf & Gnome Starter",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "objective-179-1-ragged-young-wolf",
            kind = "objective",
            priority = 10,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { any = { { class = 1 }, { class = 9 } } }
            } },
            text = "Kill Ragged Young Wolf.",
            complete = QuestObjective(179, 1, "Ragged Young Wolf"),
            route = {
                Point(1426, 0.3060, 0.7440, "Ragged Young Wolf",
                    "Travel to Ragged Young Wolf.")
            }
            },
        {
            id = "accept-179-dwarven-outfitters",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Dwarven Outfitters.",
            complete = QuestState(179, "activeOrCompleted"),
            route = {
                Point(1426, 0.2879, 0.6907, "Dwarven Outfitters",
                    "Travel to Dwarven Outfitters.")
            }
            },
        {
            id = "objective-179-1-ragged-young-wolf-2",
            kind = "objective",
            priority = 30,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Ragged Young Wolf.",
            complete = QuestObjective(179, 1, "Ragged Young Wolf"),
            dependsOn = { "accept-179-dwarven-outfitters" },
            route = {
                Point(1426, 0.3060, 0.7440, "Ragged Young Wolf",
                    "Travel to Ragged Young Wolf.")
            }
            },
        {
            id = "turnin-179-dwarven-outfitters",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Dwarven Outfitters.",
            complete = QuestState(179, "completed"),
            dependsOn = { "accept-179-dwarven-outfitters", "objective-179-1-ragged-young-wolf", "objective-179-1-ragged-young-wolf-2" },
            route = {
                Point(1426, 0.2993, 0.7120, "Dwarven Outfitters",
                    "Travel to Dwarven Outfitters.")
            }
            },
        {
            id = "accept-3106-simple-rune",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 1 }
            } },
            text = "Accept Simple Rune.",
            complete = QuestState(3106, "activeOrCompleted"),
            route = {
                Point(1426, 0.2993, 0.7120, "Simple Rune",
                    "Travel to Simple Rune.")
            }
            },
        {
            id = "accept-3109-encrypted-rune",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 4 }
            } },
            text = "Accept Encrypted Rune.",
            complete = QuestState(3109, "activeOrCompleted"),
            route = {
                Point(1426, 0.2993, 0.7120, "Encrypted Rune",
                    "Travel to Encrypted Rune.")
            }
            },
        {
            id = "accept-3110-hallowed-rune",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 5 }
            } },
            text = "Accept Hallowed Rune.",
            complete = QuestState(3110, "activeOrCompleted"),
            route = {
                Point(1426, 0.2993, 0.7120, "Hallowed Rune",
                    "Travel to Hallowed Rune.")
            }
            },
        {
            id = "accept-3107-consecrated-rune",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept Consecrated Rune.",
            complete = QuestState(3107, "activeOrCompleted"),
            route = {
                Point(1426, 0.2993, 0.7120, "Consecrated Rune",
                    "Travel to Consecrated Rune.")
            }
            },
        {
            id = "accept-3108-etched-rune",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Accept Etched Rune.",
            complete = QuestState(3108, "activeOrCompleted"),
            route = {
                Point(1426, 0.2993, 0.7120, "Etched Rune",
                    "Travel to Etched Rune.")
            }
            },
        {
            id = "accept-3114-glyphic-memorandum",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 7 },
                { class = 8 }
            } },
            text = "Accept Glyphic Memorandum.",
            complete = QuestState(3114, "activeOrCompleted"),
            route = {
                Point(1426, 0.2993, 0.7120, "Glyphic Memorandum",
                    "Travel to Glyphic Memorandum.")
            }
            },
        {
            id = "accept-3112-simple-memorandum",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 7 },
                { class = 1 }
            } },
            text = "Accept Simple Memorandum.",
            complete = QuestState(3112, "activeOrCompleted"),
            route = {
                Point(1426, 0.2993, 0.7120, "Simple Memorandum",
                    "Travel to Simple Memorandum.")
            }
            },
        {
            id = "accept-3115-tainted-memorandum",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 7 },
                { class = 9 }
            } },
            text = "Accept Tainted Memorandum.",
            complete = QuestState(3115, "activeOrCompleted"),
            route = {
                Point(1426, 0.2993, 0.7120, "Tainted Memorandum",
                    "Travel to Tainted Memorandum.")
            }
            },
        {
            id = "accept-3113-encrypted-memorandum",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 7 },
                { class = 4 }
            } },
            text = "Accept Encrypted Memorandum.",
            complete = QuestState(3113, "activeOrCompleted"),
            route = {
                Point(1426, 0.2993, 0.7120, "Encrypted Memorandum",
                    "Travel to Encrypted Memorandum.")
            }
            },
        {
            id = "accept-233-coldridge-valley-mail-delivery",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Coldridge Valley Mail Delivery.",
            complete = QuestState(233, "activeOrCompleted"),
            route = {
                Point(1426, 0.2993, 0.7120, "Coldridge Valley Mail Delivery",
                    "Travel to Coldridge Valley Mail Delivery.")
            }
            },
        {
            id = "accept-170-a-new-threat",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept A New Threat.",
            complete = QuestState(170, "activeOrCompleted"),
            route = {
                Point(1426, 0.2971, 0.7125, "A New Threat",
                    "Travel to A New Threat.")
            }
            },
        {
            id = "objective-170-1-rockjaw-trogg",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 6 Rockjaw Trogg.",
            complete = QuestObjective(170, 1, "Rockjaw Trogg"),
            dependsOn = { "accept-170-a-new-threat" },
            route = {
                Point(1426, 0.2580, 0.7280, "Rockjaw Trogg",
                    "Travel to Rockjaw Trogg.")
            }
            },
        {
            id = "objective-170-2-burly-rockjaw-trogg",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 6 Burly Rockjaw Trogg.",
            complete = QuestObjective(170, 2, "Burly Rockjaw Trogg"),
            dependsOn = { "accept-170-a-new-threat" },
            route = {
                Point(1426, 0.2580, 0.7280, "Burly Rockjaw Trogg",
                    "Travel to Burly Rockjaw Trogg.")
            }
            },
        {
            id = "turnin-233-coldridge-valley-mail-delivery",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Coldridge Valley Mail Delivery.",
            complete = QuestState(233, "completed"),
            dependsOn = { "accept-233-coldridge-valley-mail-delivery" },
            route = {
                Point(1426, 0.2260, 0.7143, "Coldridge Valley Mail Delivery",
                    "Travel to Coldridge Valley Mail Delivery.")
            }
            },
        {
            id = "accept-234-coldridge-valley-mail-delivery",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Coldridge Valley Mail Delivery.",
            complete = QuestState(234, "activeOrCompleted"),
            route = {
                Point(1426, 0.2260, 0.7143, "Coldridge Valley Mail Delivery",
                    "Travel to Coldridge Valley Mail Delivery.")
            }
            },
        {
            id = "accept-183-the-boar-hunter",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Boar Hunter.",
            complete = QuestState(183, "activeOrCompleted"),
            route = {
                Point(1426, 0.2260, 0.7143, "The Boar Hunter",
                    "Travel to The Boar Hunter.")
            }
            },
        {
            id = "objective-183-1-small-crag-boar",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 12 Small Crag Boar.",
            complete = QuestObjective(183, 1, "Small Crag Boar"),
            dependsOn = { "accept-183-the-boar-hunter" },
            route = {
                Point(1426, 0.2220, 0.7120, "Small Crag Boar",
                    "Travel to Small Crag Boar.")
            }
            },
        {
            id = "turnin-183-the-boar-hunter",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Boar Hunter.",
            complete = QuestState(183, "completed"),
            dependsOn = { "accept-183-the-boar-hunter", "objective-183-1-small-crag-boar" },
            route = {
                Point(1426, 0.2260, 0.7143, "The Boar Hunter",
                    "Travel to The Boar Hunter.")
            }
            },
        {
            id = "turnin-234-coldridge-valley-mail-delivery",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Coldridge Valley Mail Delivery.",
            complete = QuestState(234, "completed"),
            dependsOn = { "accept-234-coldridge-valley-mail-delivery" },
            route = {
                Point(1426, 0.2508, 0.7571, "Coldridge Valley Mail Delivery",
                    "Travel to Coldridge Valley Mail Delivery.")
            }
            },
        {
            id = "accept-3364-scalding-mornbrew-delivery",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Scalding Mornbrew Delivery.",
            complete = QuestState(3364, "activeOrCompleted"),
            route = {
                Point(1426, 0.2498, 0.7596, "Scalding Mornbrew Delivery",
                    "Travel to Scalding Mornbrew Delivery.")
            }
            },
        {
            id = "accept-3361-a-refugee-s-quandary",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept A Refugee's Quandary.",
            complete = QuestState(3361, "activeOrCompleted"),
            route = {
                Point(1426, 0.2879, 0.6905, "A Refugee's Quandary",
                    "Travel to A Refugee's Quandary.")
            }
            },
        {
            id = "turnin-3364-scalding-mornbrew-delivery",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Scalding Mornbrew Delivery.",
            complete = QuestState(3364, "completed"),
            dependsOn = { "accept-3364-scalding-mornbrew-delivery" },
            route = {
                Point(1426, 0.2877, 0.6637, "Scalding Mornbrew Delivery",
                    "Travel to Scalding Mornbrew Delivery.")
            }
            },
        {
            id = "accept-3365-bring-back-the-mug",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Bring Back the Mug.",
            complete = QuestState(3365, "activeOrCompleted"),
            route = {
                Point(1426, 0.2877, 0.6637, "Bring Back the Mug",
                    "Travel to Bring Back the Mug.")
            }
            },
        {
            id = "turnin-3106-simple-rune",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 1 }
            } },
            text = "Turn in Simple Rune.",
            complete = QuestState(3106, "completed"),
            dependsOn = { "accept-3106-simple-rune" },
            route = {
                Point(1426, 0.2883, 0.6724, "Simple Rune",
                    "Travel to Simple Rune.")
            }
            },
        {
            id = "turnin-3109-encrypted-rune",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 4 }
            } },
            text = "Turn in Encrypted Rune.",
            complete = QuestState(3109, "completed"),
            dependsOn = { "accept-3109-encrypted-rune" },
            route = {
                Point(1426, 0.2837, 0.6751, "Encrypted Rune",
                    "Travel to Encrypted Rune.")
            }
            },
        {
            id = "turnin-3110-hallowed-rune",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 5 }
            } },
            text = "Turn in Hallowed Rune.",
            complete = QuestState(3110, "completed"),
            dependsOn = { "accept-3110-hallowed-rune" },
            route = {
                Point(1426, 0.2860, 0.6639, "Hallowed Rune",
                    "Travel to Hallowed Rune.")
            }
            },
        {
            id = "turnin-3107-consecrated-rune",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Turn in Consecrated Rune.",
            complete = QuestState(3107, "completed"),
            dependsOn = { "accept-3107-consecrated-rune" },
            route = {
                Point(1426, 0.2883, 0.6833, "Consecrated Rune",
                    "Travel to Consecrated Rune.")
            }
            },
        {
            id = "turnin-3108-etched-rune",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Turn in Etched Rune.",
            complete = QuestState(3108, "completed"),
            dependsOn = { "accept-3108-etched-rune" },
            route = {
                Point(1426, 0.2918, 0.6746, "Etched Rune",
                    "Travel to Etched Rune.")
            }
            },
        {
            id = "turnin-3112-simple-memorandum",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 7 },
                { class = 1 }
            } },
            text = "Turn in Simple Memorandum.",
            complete = QuestState(3112, "completed"),
            dependsOn = { "accept-3112-simple-memorandum" },
            route = {
                Point(1426, 0.2883, 0.6724, "Simple Memorandum",
                    "Travel to Simple Memorandum.")
            }
            },
        {
            id = "turnin-3113-encrypted-memorandum",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 7 },
                { class = 4 }
            } },
            text = "Turn in Encrypted Memorandum.",
            complete = QuestState(3113, "completed"),
            dependsOn = { "accept-3113-encrypted-memorandum" },
            route = {
                Point(1426, 0.2837, 0.6751, "Encrypted Memorandum",
                    "Travel to Encrypted Memorandum.")
            }
            },
        {
            id = "turnin-3114-glyphic-memorandum",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 7 },
                { class = 8 }
            } },
            text = "Turn in Glyphic Memorandum.",
            complete = QuestState(3114, "completed"),
            dependsOn = { "accept-3114-glyphic-memorandum" },
            route = {
                Point(1426, 0.2871, 0.6636, "Glyphic Memorandum",
                    "Travel to Glyphic Memorandum.")
            }
            },
        {
            id = "turnin-3115-tainted-memorandum",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 7 },
                { class = 9 }
            } },
            text = "Turn in Tainted Memorandum.",
            complete = QuestState(3115, "completed"),
            dependsOn = { "accept-3115-tainted-memorandum" },
            route = {
                Point(1426, 0.2865, 0.6614, "Tainted Memorandum",
                    "Travel to Tainted Memorandum.")
            }
            },
        {
            id = "accept-1599-beginnings",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Accept Beginnings.",
            complete = QuestState(1599, "activeOrCompleted"),
            route = {
                Point(1426, 0.2865, 0.6614, "Beginnings",
                    "Travel to Beginnings.")
            }
            },
        {
            id = "turnin-170-a-new-threat",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A New Threat.",
            complete = QuestState(170, "completed"),
            dependsOn = { "accept-170-a-new-threat", "objective-170-1-rockjaw-trogg", "objective-170-2-burly-rockjaw-trogg" },
            route = {
                Point(1426, 0.2879, 0.6907, "A New Threat",
                    "Travel to A New Threat.")
            }
            },
        {
            id = "accept-182-the-troll-cave",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Troll Cave.",
            complete = QuestState(182, "activeOrCompleted"),
            route = {
                Point(1426, 0.2508, 0.7571, "The Troll Cave",
                    "Travel to The Troll Cave.")
            }
            },
        {
            id = "turnin-3365-bring-back-the-mug",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Bring Back the Mug.",
            complete = QuestState(3365, "completed"),
            dependsOn = { "accept-3365-bring-back-the-mug" },
            route = {
                Point(1426, 0.2498, 0.7596, "Bring Back the Mug",
                    "Travel to Bring Back the Mug.")
            }
            },
        {
            id = "objective-1599-1-frostmane-novice",
            kind = "objective",
            priority = 410,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Kill Frostmane Novice.",
            complete = QuestObjective(1599, 1, "Frostmane Novice"),
            dependsOn = { "accept-1599-beginnings" },
            route = {
                Point(1426, 0.2678, 0.7983, "Frostmane Novice",
                    "Travel to Frostmane Novice.")
            }
            },
        {
            id = "turnin-1599-beginnings",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Turn in Beginnings.",
            complete = QuestState(1599, "completed"),
            dependsOn = { "accept-1599-beginnings", "objective-1599-1-frostmane-novice" },
            route = {
                Point(1426, 0.2678, 0.7983, "Beginnings",
                    "Travel to Beginnings.")
            }
            },
        {
            id = "turnin-182-the-troll-cave",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Troll Cave.",
            complete = QuestState(182, "completed"),
            dependsOn = { "accept-182-the-troll-cave" },
            route = {
                Point(1426, 0.2678, 0.7983, "The Troll Cave",
                    "Travel to The Troll Cave.")
            }
            },
        {
            id = "accept-218-the-stolen-journal",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Stolen Journal.",
            complete = QuestState(218, "activeOrCompleted"),
            route = {
                Point(1426, 0.2678, 0.7983, "The Stolen Journal",
                    "Travel to The Stolen Journal.")
            }
            },
        {
            id = "objective-218-1-grik-nir-the-cold",
            kind = "objective",
            priority = 450,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Grik'nir the Cold.",
            complete = QuestObjective(218, 1, "Grik'nir the Cold"),
            dependsOn = { "accept-218-the-stolen-journal" },
            route = {
                Point(1426, 0.2680, 0.7986, "Grik'nir the Cold",
                    "Travel to Grik'nir the Cold.")
            }
            },
        {
            id = "turnin-218-the-stolen-journal",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Stolen Journal.",
            complete = QuestState(218, "completed"),
            dependsOn = { "accept-218-the-stolen-journal", "objective-218-1-grik-nir-the-cold" },
            route = {
                Point(1426, 0.2678, 0.7983, "The Stolen Journal",
                    "Travel to The Stolen Journal.")
            }
            },
        {
            id = "accept-282-senir-s-observations",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Senir's Observations.",
            complete = QuestState(282, "activeOrCompleted"),
            route = {
                Point(1426, 0.2678, 0.7983, "Senir's Observations",
                    "Travel to Senir's Observations.")
            }
            },
        {
            id = "turnin-3361-a-refugee-s-quandary",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A Refugee's Quandary.",
            complete = QuestState(3361, "completed"),
            dependsOn = { "accept-3361-a-refugee-s-quandary" },
            route = {
                Point(1426, 0.2879, 0.6905, "A Refugee's Quandary",
                    "Travel to A Refugee's Quandary.")
            }
            },
        {
            id = "turnin-282-senir-s-observations",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Senir's Observations.",
            complete = QuestState(282, "completed"),
            dependsOn = { "accept-282-senir-s-observations" },
            route = {
                Point(1426, 0.2879, 0.6905, "Senir's Observations",
                    "Travel to Senir's Observations.")
            }
            },
        {
            id = "accept-420-senir-s-observations",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Senir's Observations.",
            complete = QuestState(420, "activeOrCompleted"),
            route = {
                Point(1426, 0.2879, 0.6905, "Senir's Observations",
                    "Travel to Senir's Observations.")
            }
            },
        {
            id = "accept-2160-supplies-to-tannok",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Supplies to Tannok.",
            complete = QuestState(2160, "activeOrCompleted"),
            route = {
                Point(1426, 0.3385, 0.7224, "Supplies to Tannok",
                    "Travel to Supplies to Tannok.")
            }
            },
        {
            id = "turnin-420-senir-s-observations",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Senir's Observations.",
            complete = QuestState(420, "completed"),
            dependsOn = { "accept-420-senir-s-observations" },
            route = {
                Point(1426, 0.3412, 0.7151, "Senir's Observations",
                    "Travel to Senir's Observations.")
            }
            },
        {
            id = "accept-384-beer-basted-boar-ribs",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Beer Basted Boar Ribs.",
            complete = QuestState(384, "activeOrCompleted"),
            route = {
                Point(1426, 0.4683, 0.5236, "Beer Basted Boar Ribs",
                    "Travel to Beer Basted Boar Ribs.")
            }
            },
        {
            id = "turnin-2160-supplies-to-tannok",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Supplies to Tannok.",
            complete = QuestState(2160, "completed"),
            dependsOn = { "accept-2160-supplies-to-tannok" },
            route = {
                Point(1426, 0.4722, 0.5219, "Supplies to Tannok",
                    "Travel to Supplies to Tannok.")
            }
            },
        {
            id = "accept-5625-accept-garments-of-the-light",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = { 3, 7 } },
                { class = 5 }
            } },
            text = "Accept Accept Garments of the Light.",
            complete = QuestState(5625, "activeOrCompleted"),
            route = {
                Point(1426, 0.4734, 0.5219, "Accept Garments of the Light",
                    "Travel to Accept Garments of the Light.")
            }
            },
        {
            id = "turnin-5625-accept-garments-of-the-light",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = { 3, 7 } },
                { class = 5 }
            } },
            text = "Turn in Accept Garments of the Light.",
            complete = QuestState(5625, "completed"),
            dependsOn = { "accept-5625-accept-garments-of-the-light" },
            route = {
                Point(1426, 0.4734, 0.5219, "Accept Garments of the Light",
                    "Travel to Accept Garments of the Light.")
            }
            },
        {
            id = "accept-400-tools-for-steelgrill",
            kind = "accept",
            priority = 570,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Tools for Steelgrill.",
            complete = QuestState(400, "activeOrCompleted"),
            route = {
                Point(1426, 0.4602, 0.5168, "Tools for Steelgrill",
                    "Travel to Tools for Steelgrill.")
            }
            },
        {
            id = "accept-317-stocking-jetsteam",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Stocking Jetsteam.",
            complete = QuestState(317, "activeOrCompleted"),
            route = {
                Point(1426, 0.4943, 0.4841, "Stocking Jetsteam",
                    "Travel to Stocking Jetsteam.")
            }
            },
        {
            id = "accept-313-the-grizzled-den",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Grizzled Den.",
            complete = QuestState(313, "activeOrCompleted"),
            route = {
                Point(1426, 0.4962, 0.4861, "The Grizzled Den",
                    "Travel to The Grizzled Den.")
            }
            },
        {
            id = "turnin-400-tools-for-steelgrill",
            kind = "turnin",
            priority = 600,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Tools for Steelgrill.",
            complete = QuestState(400, "completed"),
            dependsOn = { "accept-400-tools-for-steelgrill" },
            route = {
                Point(1426, 0.5044, 0.4909, "Tools for Steelgrill",
                    "Travel to Tools for Steelgrill.")
            }
            },
        {
            id = "accept-5541-ammo-for-rumbleshot",
            kind = "accept",
            priority = 610,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Ammo for Rumbleshot.",
            complete = QuestState(5541, "activeOrCompleted"),
            route = {
                Point(1426, 0.5008, 0.4942, "Ammo for Rumbleshot",
                    "Travel to Ammo for Rumbleshot.")
            }
            },
        {
            id = "objective-313-1-young-wendigo",
            kind = "objective",
            priority = 620,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Young Wendigo.",
            complete = QuestObjective(313, 1, "Young Wendigo"),
            dependsOn = { "accept-313-the-grizzled-den" },
            route = {
                Point(1426, 0.4233, 0.5403, "Young Wendigo",
                    "Travel to Young Wendigo.")
            }
            },
        {
            id = "turnin-5541-ammo-for-rumbleshot",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Ammo for Rumbleshot.",
            complete = QuestState(5541, "completed"),
            dependsOn = { "accept-5541-ammo-for-rumbleshot" },
            route = {
                Point(1426, 0.4220, 0.5413, "Ammo for Rumbleshot",
                    "Travel to Ammo for Rumbleshot.")
            }
            },
        {
            id = "accept-287-frostmane-hold",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Frostmane Hold.",
            complete = QuestState(287, "activeOrCompleted"),
            route = {
                Point(1426, 0.4673, 0.5383, "Frostmane Hold",
                    "Travel to Frostmane Hold.")
            }
            },
        {
            id = "turnin-384-beer-basted-boar-ribs",
            kind = "turnin",
            priority = 650,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Beer Basted Boar Ribs.",
            complete = QuestState(384, "completed"),
            dependsOn = { "accept-384-beer-basted-boar-ribs" },
            route = {
                Point(1426, 0.4683, 0.5236, "Beer Basted Boar Ribs",
                    "Travel to Beer Basted Boar Ribs.")
            }
            },
        {
            id = "turnin-317-stocking-jetsteam",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Stocking Jetsteam.",
            complete = QuestState(317, "completed"),
            dependsOn = { "accept-317-stocking-jetsteam" },
            route = {
                Point(1426, 0.4943, 0.4841, "Stocking Jetsteam",
                    "Travel to Stocking Jetsteam.")
            }
            },
        {
            id = "accept-318-evershine",
            kind = "accept",
            priority = 670,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Evershine.",
            complete = QuestState(318, "activeOrCompleted"),
            route = {
                Point(1426, 0.4943, 0.4841, "Evershine",
                    "Travel to Evershine.")
            }
            },
        {
            id = "turnin-313-the-grizzled-den",
            kind = "turnin",
            priority = 680,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Grizzled Den.",
            complete = QuestState(313, "completed"),
            dependsOn = { "accept-313-the-grizzled-den", "objective-313-1-young-wendigo" },
            route = {
                Point(1426, 0.4962, 0.4861, "The Grizzled Den",
                    "Travel to The Grizzled Den.")
            }
            },
        {
            id = "accept-412-operation-recombobulation",
            kind = "accept",
            priority = 690,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Operation Recombobulation.",
            complete = QuestState(412, "activeOrCompleted"),
            route = {
                Point(1426, 0.4585, 0.4937, "Operation Recombobulation",
                    "Travel to Operation Recombobulation.")
            }
            },
        {
            id = "accept-312-tundra-macgrann-s-stolen-stash",
            kind = "accept",
            priority = 700,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Tundra MacGrann's Stolen Stash.",
            complete = QuestState(312, "activeOrCompleted"),
            route = {
                Point(1426, 0.3961, 0.4801, "Tundra MacGrann's Stolen Stash",
                    "Travel to Tundra MacGrann's Stolen Stash.")
            }
            },
        {
            id = "turnin-312-tundra-macgrann-s-stolen-stash",
            kind = "turnin",
            priority = 710,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Tundra MacGrann's Stolen Stash.",
            complete = QuestState(312, "completed"),
            dependsOn = { "accept-312-tundra-macgrann-s-stolen-stash" },
            route = {
                Point(1426, 0.3457, 0.5165, "Tundra MacGrann's Stolen Stash",
                    "Travel to Tundra MacGrann's Stolen Stash.")
            }
            },
        {
            id = "turnin-318-evershine",
            kind = "turnin",
            priority = 720,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Evershine.",
            complete = QuestState(318, "completed"),
            dependsOn = { "accept-318-evershine" },
            route = {
                Point(1426, 0.3019, 0.4573, "Evershine",
                    "Travel to Evershine.")
            }
            },
        {
            id = "accept-319-a-favor-for-evershine",
            kind = "accept",
            priority = 730,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept A Favor for Evershine.",
            complete = QuestState(319, "activeOrCompleted"),
            route = {
                Point(1426, 0.3019, 0.4573, "A Favor for Evershine",
                    "Travel to A Favor for Evershine.")
            }
            },
        {
            id = "accept-315-the-perfect-stout",
            kind = "accept",
            priority = 740,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Perfect Stout.",
            complete = QuestState(315, "activeOrCompleted"),
            route = {
                Point(1426, 0.3019, 0.4573, "The Perfect Stout",
                    "Travel to The Perfect Stout.")
            }
            },
        {
            id = "accept-310-bitter-rivals",
            kind = "accept",
            priority = 750,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Bitter Rivals.",
            complete = QuestState(310, "activeOrCompleted"),
            route = {
                Point(1426, 0.3019, 0.4553, "Bitter Rivals",
                    "Travel to Bitter Rivals.")
            }
            },
        {
            id = "objective-315-1-frostmane-seer",
            kind = "objective",
            priority = 760,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Frostmane Seer.",
            complete = QuestObjective(315, 1, "Frostmane Seer"),
            dependsOn = { "accept-315-the-perfect-stout" },
            route = {
                Point(1426, 0.4000, 0.4240, "Frostmane Seer",
                    "Travel to Frostmane Seer.")
            }
            },
        {
            id = "objective-319-1-ice-claw-bear",
            kind = "objective",
            priority = 770,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 6 Ice Claw Bear.",
            complete = QuestObjective(319, 1, "Ice Claw Bear"),
            dependsOn = { "accept-319-a-favor-for-evershine" },
            route = {
                Point(1426, 0.3040, 0.4220, "Ice Claw Bear",
                    "Travel to Ice Claw Bear.")
            }
            },
        {
            id = "objective-319-2-elder-crag-boar",
            kind = "objective",
            priority = 780,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 8 Elder Crag Boar.",
            complete = QuestObjective(319, 2, "Elder Crag Boar"),
            dependsOn = { "accept-319-a-favor-for-evershine" },
            route = {
                Point(1426, 0.3040, 0.4220, "Elder Crag Boar",
                    "Travel to Elder Crag Boar.")
            }
            },
        {
            id = "objective-319-3-snow-leopard",
            kind = "objective",
            priority = 790,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 8 Snow Leopard.",
            complete = QuestObjective(319, 3, "Snow Leopard"),
            dependsOn = { "accept-319-a-favor-for-evershine" },
            route = {
                Point(1426, 0.3040, 0.4220, "Snow Leopard",
                    "Travel to Snow Leopard.")
            }
            },
        {
            id = "accept-308-distracting-jarven",
            kind = "accept",
            priority = 800,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Distracting Jarven.",
            complete = QuestState(308, "activeOrCompleted"),
            route = {
                Point(1426, 0.4764, 0.5266, "Distracting Jarven",
                    "Travel to Distracting Jarven.")
            }
            },
        {
            id = "turnin-310-bitter-rivals",
            kind = "turnin",
            priority = 810,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Bitter Rivals.",
            complete = QuestState(310, "completed"),
            dependsOn = { "accept-310-bitter-rivals" },
            route = {
                Point(1426, 0.4770, 0.5269, "Bitter Rivals",
                    "Travel to Bitter Rivals.")
            }
            },
        {
            id = "accept-311-return-to-marleth",
            kind = "accept",
            priority = 820,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Return to Marleth.",
            complete = QuestState(311, "activeOrCompleted"),
            route = {
                Point(1426, 0.4770, 0.5269, "Return to Marleth",
                    "Travel to Marleth.")
            }
            },
        {
            id = "turnin-311-return-to-marleth",
            kind = "turnin",
            priority = 830,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Return to Marleth.",
            complete = QuestState(311, "completed"),
            dependsOn = { "accept-311-return-to-marleth" },
            route = {
                Point(1426, 0.4190, 0.4723, "Return to Marleth",
                    "Travel to Marleth.")
            }
            },
        {
            id = "turnin-319-a-favor-for-evershine",
            kind = "turnin",
            priority = 840,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A Favor for Evershine.",
            complete = QuestState(319, "completed"),
            dependsOn = { "accept-319-a-favor-for-evershine", "objective-319-1-ice-claw-bear", "objective-319-2-elder-crag-boar", "objective-319-3-snow-leopard" },
            route = {
                Point(1426, 0.3019, 0.4573, "A Favor for Evershine",
                    "Travel to A Favor for Evershine.")
            }
            },
        {
            id = "accept-320-return-to-bellowfiz",
            kind = "accept",
            priority = 850,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Return to Bellowfiz.",
            complete = QuestState(320, "activeOrCompleted"),
            route = {
                Point(1426, 0.3019, 0.4573, "Return to Bellowfiz",
                    "Travel to Bellowfiz.")
            }
            },
        {
            id = "turnin-315-the-perfect-stout",
            kind = "turnin",
            priority = 860,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Perfect Stout.",
            complete = QuestState(315, "completed"),
            dependsOn = { "accept-315-the-perfect-stout", "objective-315-1-frostmane-seer" },
            route = {
                Point(1426, 0.3019, 0.4573, "The Perfect Stout",
                    "Travel to The Perfect Stout.")
            }
            },
        {
            id = "accept-413-shimmer-stout",
            kind = "accept",
            priority = 870,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Shimmer Stout.",
            complete = QuestState(413, "activeOrCompleted"),
            route = {
                Point(1426, 0.3019, 0.4573, "Shimmer Stout",
                    "Travel to Shimmer Stout.")
            }
            },
        {
            id = "objective-412-1-leper-gnome",
            kind = "objective",
            priority = 880,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Leper Gnome.",
            complete = QuestObjective(412, 1, "Leper Gnome"),
            dependsOn = { "accept-412-operation-recombobulation" },
            route = {
                Point(1426, 0.2507, 0.5099, "Leper Gnome",
                    "Travel to Leper Gnome.")
            }
            },
        {
            id = "objective-412-2-gyromechanic-gear",
            kind = "objective",
            priority = 890,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Collect 8 Gyromechanic Gear.",
            complete = QuestObjective(412, 2, "Gyromechanic Gear"),
            dependsOn = { "accept-412-operation-recombobulation" },
            route = {
                Point(1426, 0.2507, 0.5099, "Gyromechanic Gear",
                    "Travel to Gyromechanic Gear.")
            }
            },
        {
            id = "turnin-287-frostmane-hold",
            kind = "turnin",
            priority = 900,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Frostmane Hold.",
            complete = QuestState(287, "completed"),
            dependsOn = { "accept-287-frostmane-hold" },
            route = {
                Point(1426, 0.4673, 0.5382, "Frostmane Hold",
                    "Travel to Frostmane Hold.")
            }
            },
        {
            id = "accept-291-the-reports",
            kind = "accept",
            priority = 910,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Reports.",
            complete = QuestState(291, "activeOrCompleted"),
            route = {
                Point(1426, 0.4673, 0.5382, "The Reports",
                    "Travel to The Reports.")
            }
            },
        {
            id = "turnin-412-operation-recombobulation",
            kind = "turnin",
            priority = 920,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Operation Recombobulation.",
            complete = QuestState(412, "completed"),
            dependsOn = { "accept-412-operation-recombobulation", "objective-412-1-leper-gnome", "objective-412-2-gyromechanic-gear" },
            route = {
                Point(1426, 0.4585, 0.4937, "Operation Recombobulation",
                    "Travel to Operation Recombobulation.")
            }
            },
        {
            id = "turnin-320-return-to-bellowfiz",
            kind = "turnin",
            priority = 930,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Return to Bellowfiz.",
            complete = QuestState(320, "completed"),
            dependsOn = { "accept-320-return-to-bellowfiz" },
            route = {
                Point(1426, 0.4943, 0.4841, "Return to Bellowfiz",
                    "Travel to Bellowfiz.")
            }
            },
        {
            id = "accept-5637-desperate-prayer",
            kind = "accept",
            priority = 940,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = { 1, 3 } },
                { class = 5 }
            } },
            text = "Accept Desperate Prayer.",
            complete = QuestState(5637, "activeOrCompleted"),
            route = {
                Point(1426, 0.4734, 0.5219, "Desperate Prayer",
                    "Travel to Desperate Prayer.")
            }
            },
        {
            id = "accept-6064-taming-the-beast",
            kind = "accept",
            priority = 950,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6064, "activeOrCompleted"),
            route = {
                Point(1426, 0.4581, 0.5303, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "objective-6064-1-taming-rod",
            kind = "objective",
            priority = 960,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6064, 1, "Taming Rod"),
            dependsOn = { "accept-6064-taming-the-beast" },
            route = {
                Point(1426, 0.4980, 0.5340, "Taming Rod",
                    "Travel to Taming Rod.")
            }
            },
        {
            id = "turnin-6064-taming-the-beast",
            kind = "turnin",
            priority = 970,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6064, "completed"),
            dependsOn = { "accept-6064-taming-the-beast", "objective-6064-1-taming-rod" },
            route = {
                Point(1426, 0.4581, 0.5304, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "accept-6084-taming-the-beast",
            kind = "accept",
            priority = 980,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6084, "activeOrCompleted"),
            route = {
                Point(1426, 0.4581, 0.5304, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "objective-6084-1-taming-rod",
            kind = "objective",
            priority = 990,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6084, 1, "Taming Rod"),
            dependsOn = { "accept-6084-taming-the-beast" },
            route = {
                Point(1426, 0.4820, 0.5740, "Taming Rod",
                    "Travel to Taming Rod.")
            }
            },
        {
            id = "turnin-6084-taming-the-beast",
            kind = "turnin",
            priority = 1000,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6084, "completed"),
            dependsOn = { "accept-6084-taming-the-beast", "objective-6084-1-taming-rod" },
            route = {
                Point(1426, 0.4581, 0.5304, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "accept-6085-taming-the-beast",
            kind = "accept",
            priority = 1010,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6085, "activeOrCompleted"),
            route = {
                Point(1426, 0.4581, 0.5304, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "objective-6085-1-taming-rod",
            kind = "objective",
            priority = 1020,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6085, 1, "Taming Rod"),
            dependsOn = { "accept-6085-taming-the-beast" },
            route = {
                Point(1426, 0.5020, 0.5300, "Taming Rod",
                    "Travel to Taming Rod.")
            }
            },
        {
            id = "turnin-6085-taming-the-beast",
            kind = "turnin",
            priority = 1030,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6085, "completed"),
            dependsOn = { "accept-6085-taming-the-beast", "objective-6085-1-taming-rod" },
            route = {
                Point(1426, 0.4581, 0.5304, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "accept-6086-training-the-beast",
            kind = "accept",
            priority = 1040,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Accept Training the Beast.",
            complete = QuestState(6086, "activeOrCompleted"),
            route = {
                Point(1426, 0.4581, 0.5304, "Training the Beast",
                    "Travel to Training the Beast.")
            }
            },
        {
            id = "turnin-6086-training-the-beast",
            kind = "turnin",
            priority = 1050,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 3 }
            } },
            text = "Turn in Training the Beast.",
            complete = QuestState(6086, "completed"),
            dependsOn = { "accept-6086-training-the-beast" },
            route = {
                Point(1455, 0.7087, 0.8580, "Training the Beast",
                    "Travel to Training the Beast.")
            }
            },
        {
            id = "accept-433-the-public-servant",
            kind = "accept",
            priority = 1060,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Public Servant.",
            complete = QuestState(433, "activeOrCompleted"),
            route = {
                Point(1426, 0.6867, 0.5597, "The Public Servant",
                    "Travel to The Public Servant.")
            }
            },
        {
            id = "accept-432-those-blasted-troggs",
            kind = "accept",
            priority = 1070,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Those Blasted Troggs!.",
            complete = QuestState(432, "activeOrCompleted"),
            route = {
                Point(1426, 0.6908, 0.5633, "Those Blasted Troggs!",
                    "Travel to Those Blasted Troggs!.")
            }
            },
        {
            id = "objective-433-1-rockjaw-bonesnapper",
            kind = "objective",
            priority = 1080,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 10 Rockjaw Bonesnapper.",
            complete = QuestObjective(433, 1, "Rockjaw Bonesnapper"),
            dependsOn = { "accept-433-the-public-servant" },
            route = {
                Point(1426, 0.7070, 0.5649, "Rockjaw Bonesnapper",
                    "Travel to Rockjaw Bonesnapper.")
            }
            },
        {
            id = "turnin-433-the-public-servant",
            kind = "turnin",
            priority = 1090,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Public Servant.",
            complete = QuestState(433, "completed"),
            dependsOn = { "accept-433-the-public-servant", "objective-433-1-rockjaw-bonesnapper" },
            route = {
                Point(1426, 0.7070, 0.5649, "The Public Servant",
                    "Travel to The Public Servant.")
            }
            },
        {
            id = "turnin-432-those-blasted-troggs",
            kind = "turnin",
            priority = 1100,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Those Blasted Troggs!.",
            complete = QuestState(432, "completed"),
            dependsOn = { "accept-432-those-blasted-troggs" },
            route = {
                Point(1426, 0.6908, 0.5633, "Those Blasted Troggs!",
                    "Travel to Those Blasted Troggs!.")
            }
            },
        {
            id = "accept-419-the-lost-pilot",
            kind = "accept",
            priority = 1110,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Lost Pilot.",
            complete = QuestState(419, "activeOrCompleted"),
            route = {
                Point(1426, 0.8389, 0.3919, "The Lost Pilot",
                    "Travel to The Lost Pilot.")
            }
            },
        {
            id = "turnin-419-the-lost-pilot",
            kind = "turnin",
            priority = 1120,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Lost Pilot.",
            complete = QuestState(419, "completed"),
            dependsOn = { "accept-419-the-lost-pilot" },
            route = {
                Point(1426, 0.7967, 0.3617, "The Lost Pilot",
                    "Travel to The Lost Pilot.")
            }
            },
        {
            id = "accept-417-a-pilot-s-revenge",
            kind = "accept",
            priority = 1130,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept A Pilot's Revenge.",
            complete = QuestState(417, "activeOrCompleted"),
            route = {
                Point(1426, 0.7967, 0.3617, "A Pilot's Revenge",
                    "Travel to A Pilot's Revenge.")
            }
            },
        {
            id = "objective-417-1-mangeclaw",
            kind = "objective",
            priority = 1140,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Mangeclaw.",
            complete = QuestObjective(417, 1, "Mangeclaw"),
            dependsOn = { "accept-417-a-pilot-s-revenge" },
            route = {
                Point(1426, 0.7897, 0.3702, "Mangeclaw",
                    "Travel to Mangeclaw.")
            }
            },
        {
            id = "turnin-417-a-pilot-s-revenge",
            kind = "turnin",
            priority = 1150,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A Pilot's Revenge.",
            complete = QuestState(417, "completed"),
            dependsOn = { "accept-417-a-pilot-s-revenge", "objective-417-1-mangeclaw" },
            route = {
                Point(1426, 0.8389, 0.3919, "A Pilot's Revenge",
                    "Travel to A Pilot's Revenge.")
            }
            },
        {
            id = "turnin-413-shimmer-stout",
            kind = "turnin",
            priority = 1160,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Shimmer Stout.",
            complete = QuestState(413, "completed"),
            dependsOn = { "accept-413-shimmer-stout" },
            route = {
                Point(1426, 0.8628, 0.4881, "Shimmer Stout",
                    "Travel to Shimmer Stout.")
            }
            },
        {
            id = "accept-414-stout-to-kadrell",
            kind = "accept",
            priority = 1170,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Stout to Kadrell.",
            complete = QuestState(414, "activeOrCompleted"),
            route = {
                Point(1426, 0.8628, 0.4881, "Stout to Kadrell",
                    "Travel to Stout to Kadrell.")
            }
            },
        {
            id = "accept-224-in-defense-of-the-king-s-lands",
            kind = "accept",
            priority = 1180,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept In Defense of the King's Lands.",
            complete = QuestState(224, "activeOrCompleted"),
            route = {
                Point(1432, 0.2207, 0.7312, "In Defense of the King's Lands",
                    "Travel to In Defense of the King's Lands.")
            }
            },
        {
            id = "accept-267-the-trogg-threat",
            kind = "accept",
            priority = 1190,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Trogg Threat.",
            complete = QuestState(267, "activeOrCompleted"),
            route = {
                Point(1432, 0.2323, 0.7367, "The Trogg Threat",
                    "Travel to The Trogg Threat.")
            }
            },
        {
            id = "turnin-414-stout-to-kadrell",
            kind = "turnin",
            priority = 1200,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Stout to Kadrell.",
            complete = QuestState(414, "completed"),
            dependsOn = { "accept-414-stout-to-kadrell" },
            useClientPin = true,
            route = nil
            },
        {
            id = "accept-1339-mountaineer-stormpike-s-task",
            kind = "accept",
            priority = 1210,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Mountaineer Stormpike's Task from Mountaineer Kadrell in Thelsamar.",
            complete = QuestState(1339, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-1339-mountaineer-stormpike-s-task",
            kind = "turnin",
            priority = 1220,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Mountaineer Stormpike's Task.",
            complete = QuestState(1339, "completed"),
            dependsOn = { "accept-1339-mountaineer-stormpike-s-task" },
            route = {
                Point(1432, 0.2476, 0.1840, "Mountaineer Stormpike's Task",
                    "Travel to Mountaineer Stormpike's Task.")
            }
            },
        {
            id = "accept-1338-stormpike-s-order",
            kind = "accept",
            priority = 1230,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Stormpike's Order.",
            complete = QuestState(1338, "activeOrCompleted"),
            route = {
                Point(1432, 0.2476, 0.1840, "Stormpike's Order",
                    "Travel to Stormpike's Order.")
            }
            },
        {
            id = "accept-6387-honor-students",
            kind = "accept",
            priority = 1240,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 7 } } }
            } },
            text = "Accept Honor Students.",
            complete = QuestState(6387, "activeOrCompleted"),
            route = {
                Point(1432, 0.3702, 0.4781, "Honor Students",
                    "Travel to Honor Students.")
            }
            },
        {
            id = "turnin-6387-honor-students",
            kind = "turnin",
            priority = 1250,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 7 } } }
            } },
            text = "Turn in Honor Students.",
            complete = QuestState(6387, "completed"),
            dependsOn = { "accept-6387-honor-students" },
            route = {
                Point(1432, 0.3394, 0.5095, "Honor Students",
                    "Travel to Honor Students.")
            }
            },
        {
            id = "accept-6391-ride-to-ironforge",
            kind = "accept",
            priority = 1260,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 7 } } }
            } },
            text = "Accept Ride to Ironforge.",
            complete = QuestState(6391, "activeOrCompleted"),
            route = {
                Point(1432, 0.3394, 0.5095, "Ride to Ironforge",
                    "Travel to Ride to Ironforge.")
            }
            },
        {
            id = "turnin-291-the-reports",
            kind = "turnin",
            priority = 1270,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Reports.",
            complete = QuestState(291, "completed"),
            dependsOn = { "accept-291-the-reports" },
            route = {
                Point(1455, 0.4456, 0.4958, "The Reports",
                    "Travel to The Reports.")
            }
            },
        {
            id = "turnin-6391-ride-to-ironforge",
            kind = "turnin",
            priority = 1280,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 7 } } }
            } },
            text = "Turn in Ride to Ironforge.",
            complete = QuestState(6391, "completed"),
            dependsOn = { "accept-6391-ride-to-ironforge" },
            route = {
                Point(1455, 0.5152, 0.2630, "Ride to Ironforge",
                    "Travel to Ride to Ironforge.")
            }
            },
        {
            id = "accept-6388-gryth-thurden",
            kind = "accept",
            priority = 1290,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 7 } } }
            } },
            text = "Accept Gryth Thurden.",
            complete = QuestState(6388, "activeOrCompleted"),
            route = {
                Point(1455, 0.5152, 0.2630, "Gryth Thurden",
                    "Travel to Gryth Thurden.")
            }
            },
        {
            id = "accept-1715-the-slaughtered-lamb",
            kind = "accept",
            priority = 1300,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Accept The Slaughtered Lamb.",
            complete = QuestState(1715, "activeOrCompleted"),
            route = {
                Point(1455, 0.4763, 0.0926, "The Slaughtered Lamb",
                    "Travel to The Slaughtered Lamb.")
            }
            },
        {
            id = "turnin-6388-gryth-thurden",
            kind = "turnin",
            priority = 1310,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 7 } } }
            } },
            text = "Turn in Gryth Thurden.",
            complete = QuestState(6388, "completed"),
            dependsOn = { "accept-6388-gryth-thurden" },
            route = {
                Point(1455, 0.5551, 0.4774, "Gryth Thurden",
                    "Travel to Gryth Thurden.")
            }
            },
        {
            id = "accept-6392-return-to-brock",
            kind = "accept",
            priority = 1320,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { any = { { race = 3 }, { race = 7 } } }
            } },
            text = "Accept Return to Brock.",
            complete = QuestState(6392, "activeOrCompleted"),
            route = {
                Point(1455, 0.5551, 0.4774, "Return to Brock",
                    "Travel to Brock.")
            }
            },
        {
            id = "accept-6661-deeprun-rat-roundup",
            kind = "accept",
            priority = 1330,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Deeprun Rat Roundup from Monty in the Deeprun Tram (Ironforge side of the tram tunnels).",
            complete = QuestState(6661, "activeOrCompleted"),
            route = nil
            },
        {
            id = "objective-6661-1-rat-catcher-s-flute",
            kind = "objective",
            priority = 1340,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "In the Deeprun Tram tunnels, use the Rat Catcher's Flute on Deeprun Rats until five are captured.",
            complete = QuestObjective(6661, 1, "Rat Catcher's Flute"),
            dependsOn = { "accept-6661-deeprun-rat-roundup" },
            useClientPin = true,
            route = nil
            },
        {
            id = "turnin-6661-deeprun-rat-roundup",
            kind = "turnin",
            priority = 1350,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Deeprun Rat Roundup to Monty in the Deeprun Tram (Ironforge side).",
            complete = QuestState(6661, "completed"),
            dependsOn = { "accept-6661-deeprun-rat-roundup", "objective-6661-1-rat-catcher-s-flute" },
            useClientPin = true,
            route = nil
            },
        {
            id = "accept-6662-me-brother-nipsy",
            kind = "accept",
            priority = 1360,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Me Brother, Nipsy from Monty in the Deeprun Tram.",
            complete = QuestState(6662, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-6662-me-brother-nipsy",
            kind = "turnin",
            priority = 1370,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Me Brother, Nipsy to Nipsy on the Stormwind side of the Deeprun Tram.",
            complete = QuestState(6662, "completed"),
            dependsOn = { "accept-6662-me-brother-nipsy" },
            useClientPin = true,
            route = nil
            },
        {
            id = "accept-353-stormpike-s-delivery",
            kind = "accept",
            priority = 1380,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Accept Stormpike's Delivery.",
            complete = QuestState(353, "activeOrCompleted"),
            route = {
                Point(1453, 0.5176, 0.1207, "Stormpike's Delivery",
                    "Travel to Stormpike's Delivery."),
            },
        },
        {
            id = "turnin-1338-stormpike-s-order",
            kind = "turnin",
            priority = 1390,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Stormpike's Order.",
            complete = QuestState(1338, "completed"),
            dependsOn = { "accept-1338-stormpike-s-order" },
            route = {
                Point(1453, 0.5809, 0.1655, "Stormpike's Order",
                    "Travel to Stormpike's Order.")
            }
            },
        {
            id = "accept-1638-a-warrior-s-training",
            kind = "accept",
            priority = 1400,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Accept A Warrior's Training.",
            complete = QuestState(1638, "activeOrCompleted"),
            route = {
                Point(1453, 0.7850, 0.4571, "A Warrior's Training",
                    "Travel to A Warrior's Training.")
            }
            },
        {
            id = "turnin-1638-a-warrior-s-training",
            kind = "turnin",
            priority = 1410,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Turn in A Warrior's Training.",
            complete = QuestState(1638, "completed"),
            dependsOn = { "accept-1638-a-warrior-s-training" },
            route = {
                Point(1453, 0.7425, 0.3726, "A Warrior's Training",
                    "Travel to A Warrior's Training.")
            }
            },
        {
            id = "accept-1639-bartleby-the-drunk",
            kind = "accept",
            priority = 1420,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Accept Bartleby the Drunk.",
            complete = QuestState(1639, "activeOrCompleted"),
            route = {
                Point(1453, 0.7425, 0.3726, "Bartleby the Drunk",
                    "Travel to Bartleby the Drunk.")
            }
            },
        {
            id = "turnin-1639-bartleby-the-drunk",
            kind = "turnin",
            priority = 1430,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Turn in Bartleby the Drunk.",
            complete = QuestState(1639, "completed"),
            dependsOn = { "accept-1639-bartleby-the-drunk" },
            route = {
                Point(1453, 0.7383, 0.3717, "Bartleby the Drunk",
                    "Travel to Bartleby the Drunk.")
            }
            },
        {
            id = "accept-1640-beat-bartleby",
            kind = "accept",
            priority = 1440,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Accept Beat Bartleby.",
            complete = QuestState(1640, "activeOrCompleted"),
            route = {
                Point(1453, 0.7383, 0.3717, "Beat Bartleby",
                    "Travel to Beat Bartleby.")
            }
            },
        {
            id = "objective-1640-1-bartleby",
            kind = "objective",
            priority = 1450,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Kill Bartleby.",
            complete = QuestObjective(1640, 1, "Bartleby"),
            dependsOn = { "accept-1640-beat-bartleby" },
            route = {
                Point(1453, 0.7383, 0.3717, "Bartleby",
                    "Travel to Bartleby.")
            }
            },
        {
            id = "turnin-1640-beat-bartleby",
            kind = "turnin",
            priority = 1460,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Turn in Beat Bartleby.",
            complete = QuestState(1640, "completed"),
            dependsOn = { "accept-1640-beat-bartleby", "objective-1640-1-bartleby" },
            route = {
                Point(1453, 0.7383, 0.3717, "Beat Bartleby",
                    "Travel to Beat Bartleby.")
            }
            },
        {
            id = "accept-1665-bartleby-s-mug",
            kind = "accept",
            priority = 1470,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Accept Bartleby's Mug.",
            complete = QuestState(1665, "activeOrCompleted"),
            route = {
                Point(1453, 0.7383, 0.3717, "Bartleby's Mug",
                    "Travel to Bartleby's Mug.")
            }
            },
        {
            id = "turnin-1665-bartleby-s-mug",
            kind = "turnin",
            priority = 1480,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Turn in Bartleby's Mug.",
            complete = QuestState(1665, "completed"),
            dependsOn = { "accept-1665-bartleby-s-mug" },
            route = {
                Point(1453, 0.7425, 0.3726, "Bartleby's Mug",
                    "Travel to Bartleby's Mug.")
            }
            },
        {
            id = "turnin-5637-desperate-prayer",
            kind = "turnin",
            priority = 1490,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = { 1, 3 } },
                { class = 5 }
            } },
            text = "Turn in Desperate Prayer.",
            complete = QuestState(5637, "completed"),
            dependsOn = { "accept-5637-desperate-prayer" },
            route = {
                Point(1453, 0.4305, 0.3448, "Desperate Prayer",
                    "Travel to Desperate Prayer.")
            }
            },
        {
            id = "turnin-1715-the-slaughtered-lamb",
            kind = "turnin",
            priority = 1500,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Turn in The Slaughtered Lamb.",
            complete = QuestState(1715, "completed"),
            dependsOn = { "accept-1715-the-slaughtered-lamb" },
            route = {
                Point(1453, 0.2916, 0.7415, "The Slaughtered Lamb",
                    "Travel to The Slaughtered Lamb.")
            }
            },
        {
            id = "accept-1688-surena-caledon",
            kind = "accept",
            priority = 1510,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Accept Surena Caledon.",
            complete = QuestState(1688, "activeOrCompleted"),
            route = {
                Point(1453, 0.2916, 0.7415, "Surena Caledon",
                    "Travel to Surena Caledon.")
            }
            },
        {
            id = "accept-40-a-fishy-peril",
            kind = "accept",
            priority = 1520,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept A Fishy Peril.",
            complete = QuestState(40, "activeOrCompleted"),
            route = {
                Point(1429, 0.4214, 0.6726, "A Fishy Peril",
                    "Travel to A Fishy Peril.")
            }
            },
        {
            id = "turnin-40-a-fishy-peril",
            kind = "turnin",
            priority = 1530,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A Fishy Peril.",
            complete = QuestState(40, "completed"),
            dependsOn = { "accept-40-a-fishy-peril" },
            route = {
                Point(1429, 0.4211, 0.6593, "A Fishy Peril",
                    "Travel to A Fishy Peril.")
            }
            },
        {
            id = "accept-35-further-concerns",
            kind = "accept",
            priority = 1540,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Further Concerns.",
            complete = QuestState(35, "activeOrCompleted"),
            route = {
                Point(1429, 0.4211, 0.6593, "Further Concerns",
                    "Travel to Further Concerns.")
            }
            },
        {
            id = "turnin-35-further-concerns",
            kind = "turnin",
            priority = 1550,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Further Concerns.",
            complete = QuestState(35, "completed"),
            dependsOn = { "accept-35-further-concerns" },
            route = {
                Point(1429, 0.7397, 0.7218, "Further Concerns",
                    "Travel to Further Concerns.")
            }
            },
        {
            id = "accept-37-find-the-lost-guards",
            kind = "accept",
            priority = 1560,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Find the Lost Guards.",
            complete = QuestState(37, "activeOrCompleted"),
            route = {
                Point(1429, 0.7397, 0.7218, "Find the Lost Guards",
                    "Travel to Find the Lost Guards.")
            }
            },
        {
            id = "accept-52-protect-the-frontier",
            kind = "accept",
            priority = 1570,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Protect the Frontier.",
            complete = QuestState(52, "activeOrCompleted"),
            route = {
                Point(1429, 0.7397, 0.7218, "Protect the Frontier",
                    "Travel to Protect the Frontier.")
            }
            },
        {
            id = "turnin-37-find-the-lost-guards",
            kind = "turnin",
            priority = 1580,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Find the Lost Guards.",
            complete = QuestState(37, "completed"),
            dependsOn = { "accept-37-find-the-lost-guards" },
            route = {
                Point(1429, 0.7265, 0.6033, "Find the Lost Guards",
                    "Travel to Find the Lost Guards.")
            }
            },
        {
            id = "accept-45-discover-rolf-s-fate",
            kind = "accept",
            priority = 1590,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Discover Rolf's Fate.",
            complete = QuestState(45, "activeOrCompleted"),
            route = {
                Point(1429, 0.7265, 0.6033, "Discover Rolf's Fate",
                    "Travel to Discover Rolf's Fate.")
            }
            },
        {
            id = "accept-5545-a-bundle-of-trouble",
            kind = "accept",
            priority = 1600,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept A Bundle of Trouble.",
            complete = QuestState(5545, "activeOrCompleted"),
            route = {
                Point(1429, 0.8138, 0.6611, "A Bundle of Trouble",
                    "Travel to A Bundle of Trouble.")
            }
            },
        {
            id = "turnin-45-discover-rolf-s-fate",
            kind = "turnin",
            priority = 1610,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Discover Rolf's Fate.",
            complete = QuestState(45, "completed"),
            dependsOn = { "accept-45-discover-rolf-s-fate" },
            route = {
                Point(1429, 0.7980, 0.5552, "Discover Rolf's Fate",
                    "Travel to Discover Rolf's Fate.")
            }
            },
        {
            id = "accept-71-report-to-thomas",
            kind = "accept",
            priority = 1620,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Report to Thomas.",
            complete = QuestState(71, "activeOrCompleted"),
            route = {
                Point(1429, 0.7980, 0.5552, "Report to Thomas",
                    "Travel to Report to Thomas.")
            }
            },
        {
            id = "turnin-5545-a-bundle-of-trouble",
            kind = "turnin",
            priority = 1630,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A Bundle of Trouble.",
            complete = QuestState(5545, "completed"),
            dependsOn = { "accept-5545-a-bundle-of-trouble" },
            route = {
                Point(1429, 0.8138, 0.6612, "A Bundle of Trouble",
                    "Travel to A Bundle of Trouble.")
            }
            },
        {
            id = "accept-83-red-linen-goods",
            kind = "accept",
            priority = 1640,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Red Linen Goods.",
            complete = QuestState(83, "activeOrCompleted"),
            route = {
                Point(1429, 0.7946, 0.6878, "Red Linen Goods",
                    "Travel to Red Linen Goods.")
            }
            },
        {
            id = "turnin-52-protect-the-frontier",
            kind = "turnin",
            priority = 1650,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Protect the Frontier.",
            complete = QuestState(52, "completed"),
            dependsOn = { "accept-52-protect-the-frontier" },
            route = {
                Point(1429, 0.7397, 0.7218, "Protect the Frontier",
                    "Travel to Protect the Frontier.")
            }
            },
        {
            id = "turnin-71-report-to-thomas",
            kind = "turnin",
            priority = 1660,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Report to Thomas.",
            complete = QuestState(71, "completed"),
            dependsOn = { "accept-71-report-to-thomas" },
            route = {
                Point(1429, 0.7397, 0.7218, "Report to Thomas",
                    "Travel to Report to Thomas.")
            }
            },
        {
            id = "accept-39-deliver-thomas-report",
            kind = "accept",
            priority = 1670,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Deliver Thomas' Report.",
            complete = QuestState(39, "activeOrCompleted"),
            route = {
                Point(1429, 0.7397, 0.7218, "Deliver Thomas' Report",
                    "Travel to Deliver Thomas' Report.")
            }
            },
        {
            id = "accept-109-report-to-gryan-stoutmantle",
            kind = "accept",
            priority = 1680,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Accept Report to Gryan Stoutmantle.",
            complete = QuestState(109, "activeOrCompleted"),
            route = {
                Point(1429, 0.7397, 0.7218, "Report to Gryan Stoutmantle",
                    "Travel to Report to Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-184-furlbrow-s-deed",
            kind = "accept",
            priority = 1690,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Use the Furlbrow's Deed to accept Furlbrow's Deed.",
            complete = QuestState(184, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-83-red-linen-goods",
            kind = "turnin",
            priority = 1700,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Red Linen Goods.",
            complete = QuestState(83, "completed"),
            dependsOn = { "accept-83-red-linen-goods" },
            route = {
                Point(1429, 0.7946, 0.6879, "Red Linen Goods",
                    "Travel to Red Linen Goods.")
            }
            },
        {
            id = "accept-244-encroaching-gnolls",
            kind = "accept",
            priority = 1710,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Accept Encroaching Gnolls.",
            complete = QuestState(244, "activeOrCompleted"),
            route = {
                Point(1433, 0.1527, 0.7145, "Encroaching Gnolls",
                    "Travel to Encroaching Gnolls."),
            },
        },
        {
            id = "turnin-244-encroaching-gnolls",
            kind = "turnin",
            priority = 1720,
            conditions = { all = {
                { level = { min = 19 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Encroaching Gnolls.",
            complete = QuestState(244, "completed"),
            dependsOn = { "accept-244-encroaching-gnolls" },
            route = {
                Point(1433, 0.3074, 0.6000, "Encroaching Gnolls",
                    "Travel to Encroaching Gnolls."),
            },
        },
        {
            id = "turnin-1688-surena-caledon",
            kind = "turnin",
            priority = 1730,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Turn in Surena Caledon.",
            complete = QuestState(1688, "completed"),
            dependsOn = { "accept-1688-surena-caledon" },
            route = {
                Point(1453, 0.2526, 0.7856, "Surena Caledon",
                    "Travel to Surena Caledon.")
            }
            },
        {
            id = "accept-1689-the-binding",
            kind = "accept",
            priority = 1740,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Accept The Binding.",
            complete = QuestState(1689, "activeOrCompleted"),
            route = {
                Point(1453, 0.2526, 0.7856, "The Binding",
                    "Travel to The Binding.")
            }
            },
        {
            id = "objective-1689-1-bloodstone-choker",
            kind = "objective",
            priority = 1750,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Use Bloodstone Choker.",
            complete = QuestObjective(1689, 1, "Bloodstone Choker"),
            dependsOn = { "accept-1689-the-binding" },
            route = {
                Point(1453, 0.2511, 0.7746, "Bloodstone Choker",
                    "Travel to Bloodstone Choker.")
            }
            },
        {
            id = "turnin-1689-the-binding",
            kind = "turnin",
            priority = 1760,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Turn in The Binding.",
            complete = QuestState(1689, "completed"),
            dependsOn = { "accept-1689-the-binding", "objective-1689-1-bloodstone-choker" },
            route = {
                Point(1453, 0.2525, 0.7853, "The Binding",
                    "Travel to The Binding.")
            }
            },
        {
            id = "accept-2999-tome-of-divinity",
            kind = "accept",
            priority = 1770,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept Tome of Divinity.",
            complete = QuestState(2999, "activeOrCompleted"),
            route = {
                Point(1455, 0.2312, 0.0614, "Tome of Divinity",
                    "Travel to Tome of Divinity.")
            }
            },
        {
            id = "turnin-2999-tome-of-divinity",
            kind = "turnin",
            priority = 1780,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Turn in Tome of Divinity.",
            complete = QuestState(2999, "completed"),
            dependsOn = { "accept-2999-tome-of-divinity" },
            route = {
                Point(1455, 0.2764, 0.1219, "Tome of Divinity",
                    "Travel to Tome of Divinity.")
            }
            },
        {
            id = "accept-1645-the-tome-of-divinity",
            kind = "accept",
            priority = 1790,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity.",
            complete = QuestState(1645, "activeOrCompleted"),
            route = {
                Point(1455, 0.2764, 0.1219, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "accept-1646-the-tome-of-divinity",
            kind = "accept",
            priority = 1800,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity from Tiza Battleforge in Ironforge.",
            complete = QuestState(1646, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-1646-the-tome-of-divinity",
            kind = "turnin",
            priority = 1810,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1646, "completed"),
            dependsOn = { "accept-1646-the-tome-of-divinity" },
            route = {
                Point(1455, 0.2764, 0.1219, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "accept-1647-the-tome-of-divinity",
            kind = "accept",
            priority = 1820,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity.",
            complete = QuestState(1647, "activeOrCompleted"),
            route = {
                Point(1455, 0.2764, 0.1219, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "turnin-1647-the-tome-of-divinity",
            kind = "turnin",
            priority = 1830,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1647, "completed"),
            dependsOn = { "accept-1647-the-tome-of-divinity" },
            useClientPin = true,
            route = nil
            },
        {
            id = "accept-1648-the-tome-of-divinity",
            kind = "accept",
            priority = 1840,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity from Tiza Battleforge in Ironforge.",
            complete = QuestState(1648, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-1648-the-tome-of-divinity",
            kind = "turnin",
            priority = 1850,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1648, "completed"),
            dependsOn = { "accept-1648-the-tome-of-divinity" },
            useClientPin = true,
            route = nil
            },
        {
            id = "accept-1778-the-tome-of-divinity",
            kind = "accept",
            priority = 1860,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity from Tiza Battleforge in Ironforge.",
            complete = QuestState(1778, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-1778-the-tome-of-divinity",
            kind = "turnin",
            priority = 1870,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1778, "completed"),
            dependsOn = { "accept-1778-the-tome-of-divinity" },
            route = {
                Point(1455, 0.2764, 0.1219, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "accept-1779-the-tome-of-divinity",
            kind = "accept",
            priority = 1880,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity.",
            complete = QuestState(1779, "activeOrCompleted"),
            route = {
                Point(1455, 0.2764, 0.1219, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "turnin-1779-the-tome-of-divinity",
            kind = "turnin",
            priority = 1890,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1779, "completed"),
            dependsOn = { "accept-1779-the-tome-of-divinity" },
            route = {
                Point(1455, 0.2353, 0.0829, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "accept-1783-the-tome-of-divinity",
            kind = "accept",
            priority = 1900,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity.",
            complete = QuestState(1783, "activeOrCompleted"),
            route = {
                Point(1455, 0.2353, 0.0829, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "accept-418-thelsamar-blood-sausages",
            kind = "accept",
            priority = 1910,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Thelsamar Blood Sausages.",
            complete = QuestState(418, "activeOrCompleted"),
            route = {
                Point(1432, 0.3483, 0.4928, "Thelsamar Blood Sausages",
                    "Travel to Thelsamar Blood Sausages.")
            }
            },
        {
            id = "accept-416-rat-catching",
            kind = "accept",
            priority = 1920,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Rat Catching from Magistrate Bluntnose in Thelsamar.",
            complete = QuestState(416, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-6392-return-to-brock",
            kind = "turnin",
            priority = 1930,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = { 3, 7 } }
            } },
            text = "Turn in Return to Brock.",
            complete = QuestState(6392, "completed"),
            dependsOn = { "accept-6392-return-to-brock" },
            route = {
                Point(1432, 0.3702, 0.4781, "Return to Brock",
                    "Travel to Brock.")
            }
            },
        {
            id = "objective-416-1-tunnel-rat-scout",
            kind = "objective",
            priority = 1940,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Tunnel Rat Scout.",
            complete = QuestObjective(416, 1, "Tunnel Rat Scout"),
            dependsOn = { "accept-416-rat-catching" },
            route = {
                Point(1432, 0.2840, 0.4500, "Tunnel Rat Scout",
                    "Travel to Tunnel Rat Scout.")
            }
            },
        {
            id = "turnin-353-stormpike-s-delivery",
            kind = "turnin",
            priority = 1950,
            conditions = { all = {
                { level = { min = 18 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Stormpike's Delivery.",
            complete = QuestState(353, "completed"),
            dependsOn = { "accept-353-stormpike-s-delivery" },
            route = {
                Point(1432, 0.2476, 0.1840, "Stormpike's Delivery",
                    "Travel to Stormpike's Delivery."),
            },
        },
        {
            id = "turnin-416-rat-catching",
            kind = "turnin",
            priority = 1960,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Rat Catching.",
            complete = QuestState(416, "completed"),
            dependsOn = { "accept-416-rat-catching", "objective-416-1-tunnel-rat-scout" },
            useClientPin = true,
            route = nil
            },
        {
            id = "turnin-418-thelsamar-blood-sausages",
            kind = "turnin",
            priority = 1970,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Thelsamar Blood Sausages.",
            complete = QuestState(418, "completed"),
            dependsOn = { "accept-418-thelsamar-blood-sausages" },
            route = {
                Point(1432, 0.3483, 0.4928, "Thelsamar Blood Sausages",
                    "Travel to Thelsamar Blood Sausages.")
            }
            },
        {
            id = "turnin-224-in-defense-of-the-king-s-lands",
            kind = "turnin",
            priority = 1980,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in In Defense of the King's Lands.",
            complete = QuestState(224, "completed"),
            dependsOn = { "accept-224-in-defense-of-the-king-s-lands" },
            route = {
                Point(1432, 0.3057, 0.6969, "In Defense of the King's Lands",
                    "Travel to In Defense of the King's Lands.")
            }
            },
        {
            id = "turnin-267-the-trogg-threat",
            kind = "turnin",
            priority = 1990,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Trogg Threat.",
            complete = QuestState(267, "completed"),
            dependsOn = { "accept-267-the-trogg-threat" },
            route = {
                Point(1432, 0.2323, 0.7367, "The Trogg Threat",
                    "Travel to The Trogg Threat.")
            }
            },
        {
            id = "turnin-1783-the-tome-of-divinity",
            kind = "turnin",
            priority = 2000,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1783, "completed"),
            dependsOn = { "accept-1783-the-tome-of-divinity" },
            route = {
                Point(1426, 0.7832, 0.5809, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "accept-1784-the-tome-of-divinity",
            kind = "accept",
            priority = 2010,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity.",
            complete = QuestState(1784, "activeOrCompleted"),
            route = {
                Point(1426, 0.7832, 0.5809, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "objective-1784-1-dark-iron-spy",
            kind = "objective",
            priority = 2020,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Kill Dark Iron Spy.",
            complete = QuestObjective(1784, 1, "Dark Iron Spy"),
            dependsOn = { "accept-1784-the-tome-of-divinity" },
            route = {
                Point(1426, 0.7760, 0.5900, "Dark Iron Spy",
                    "Travel to Dark Iron Spy.")
            }
            },
        {
            id = "turnin-1784-the-tome-of-divinity",
            kind = "turnin",
            priority = 2030,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1784, "completed"),
            dependsOn = { "accept-1784-the-tome-of-divinity", "objective-1784-1-dark-iron-spy" },
            route = {
                Point(1455, 0.2353, 0.0829, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "accept-1785-the-tome-of-divinity",
            kind = "accept",
            priority = 2040,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity.",
            complete = QuestState(1785, "activeOrCompleted"),
            route = {
                Point(1455, 0.2353, 0.0829, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "turnin-1785-the-tome-of-divinity",
            kind = "turnin",
            priority = 2050,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 3 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1785, "completed"),
            dependsOn = { "accept-1785-the-tome-of-divinity" },
            route = {
                Point(1455, 0.2764, 0.1219, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "turnin-39-deliver-thomas-report",
            kind = "turnin",
            priority = 2060,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Deliver Thomas' Report.",
            complete = QuestState(39, "completed"),
            dependsOn = { "accept-39-deliver-thomas-report" },
            route = {
                Point(1429, 0.4211, 0.6593, "Deliver Thomas' Report",
                    "Travel to Deliver Thomas' Report.")
            }
            },
        {
            id = "woven-accept-98574-hallowed-memorandum",
            kind = "accept",
            priority = 2070,
            conditions = {
                all = {
                    { race = 7 },
                    { class = 5 },
                },
            },
            text = "Accept Hallowed Memorandum from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(98574, "activeOrCompleted"),
            route = {
                Point(1426, 0.2980, 0.7120, "Sten Stoutarm", "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "woven-turnin-98574-hallowed-memorandum",
            kind = "turnin",
            priority = 2080,
            conditions = {
                all = {
                    { race = 7 },
                    { class = 5 },
                },
            },
            text = "Turn in Hallowed Memorandum to Branstock Khalder in Coldridge Valley.",
            complete = QuestState(98574, "completed"),
            route = {
                Point(1426, 0.2860, 0.6640, "Branstock Khalder", "Travel to Branstock Khalder."),
            },
        },
        {
            id = "woven-accept-98581-archaic-rune",
            kind = "accept",
            priority = 2090,
            conditions = {
                all = {
                    { race = 3 },
                    { class = 7 },
                },
            },
            text = "Accept Archaic Rune from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(98581, "activeOrCompleted"),
            route = {
                Point(1426, 0.2980, 0.7120, "Sten Stoutarm", "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "woven-turnin-98581-archaic-rune",
            kind = "turnin",
            priority = 2100,
            conditions = {
                all = {
                    { race = 3 },
                    { class = 7 },
                },
            },
            text = "Turn in Archaic Rune to Teo Hammerstorm in Coldridge Valley.",
            complete = QuestState(98581, "completed"),
            route = {
                Point(1426, 0.2880, 0.6620, "Teo Hammerstorm", "Travel to Teo Hammerstorm."),
            },
        },
        {
            id = "woven-accept-94373-call-of-earth",
            kind = "accept",
            priority = 2110,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Teo Hammerstorm in Coldridge Valley.",
            complete = QuestState(94373, "activeOrCompleted"),
            route = {
                Point(1426, 0.2880, 0.6620, "Teo Hammerstorm", "Travel to Teo Hammerstorm."),
            },
        },
        {
            id = "woven-objective-94373-call-of-earth",
            kind = "objective",
            priority = 2120,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Kill Frostmane trolls for Teo Hammerstorm's Call of Earth.",
            complete = QuestState(94373, "complete"),
            route = {
                Point(1426, 0.2740, 0.8080, "Frostmane Troll Whelp", "Travel to Frostmane Troll Whelp."),
            },
        },
        {
            id = "woven-turnin-94373-call-of-earth",
            kind = "turnin",
            priority = 2130,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Teo Hammerstorm in Coldridge Valley.",
            complete = QuestState(94373, "completed"),
            route = {
                Point(1426, 0.2880, 0.6620, "Teo Hammerstorm", "Travel to Teo Hammerstorm."),
            },
        },
        {
            id = "woven-accept-94374-call-of-earth-shrine",
            kind = "accept",
            priority = 2140,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Teo Hammerstorm in Coldridge Valley.",
            complete = QuestState(94374, "activeOrCompleted"),
            route = {
                Point(1426, 0.2880, 0.6620, "Teo Hammerstorm", "Travel to Teo Hammerstorm."),
            },
        },
        {
            id = "woven-turnin-94374-call-of-earth-shrine",
            kind = "turnin",
            priority = 2150,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to the Minor Manifestation of Earth.",
            complete = QuestState(94374, "completed"),
            route = {
                Point(1411, 0.4400, 0.7600, "Minor Manifestation of Earth", "Travel to Minor Manifestation of Earth."),
            },
        },
        {
            id = "woven-accept-94375-call-of-earth-return",
            kind = "accept",
            priority = 2160,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from the Minor Manifestation of Earth.",
            complete = QuestState(94375, "activeOrCompleted"),
            route = {
                Point(1411, 0.4400, 0.7600, "Minor Manifestation of Earth", "Travel to Minor Manifestation of Earth."),
            },
        },
        {
            id = "woven-turnin-94375-call-of-earth-return",
            kind = "turnin",
            priority = 2170,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Teo Hammerstorm in Coldridge Valley.",
            complete = QuestState(94375, "completed"),
            route = {
                Point(1426, 0.2880, 0.6620, "Teo Hammerstorm", "Travel to Teo Hammerstorm."),
            },
        },
        {
            id = "woven-accept-94472-earth-sapta",
            kind = "accept",
            priority = 2180,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Earth Sapta from Teo Hammerstorm in Coldridge Valley.",
            complete = QuestState(94472, "activeOrCompleted"),
            route = {
                Point(1426, 0.2880, 0.6620, "Teo Hammerstorm", "Travel to Teo Hammerstorm."),
            },
        },
        {
            id = "woven-objective-94472-earth-sapta",
            kind = "objective",
            priority = 2190,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Bring Teo Hammerstorm the Earth Sapta he asks for. The guide follows the pin in your quest log.",
            useClientPin = true,
            complete = QuestState(94472, "complete"),
            route = {
                Point(1426, 0.2880, 0.6620, "Teo Hammerstorm", "Travel to Teo Hammerstorm."),
            },
        },
        {
            id = "woven-turnin-94472-earth-sapta",
            kind = "turnin",
            priority = 2200,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Earth Sapta to Teo Hammerstorm in Coldridge Valley.",
            complete = QuestState(94472, "completed"),
            route = {
                Point(1426, 0.2880, 0.6620, "Teo Hammerstorm", "Travel to Teo Hammerstorm."),
            },
        },
        {
            id = "woven-accept-97277-grund-and-gozwin",
            kind = "accept",
            priority = 2210,
            conditions = { level = { min = 6 } },
            text = "Accept Grund and Gozwin from Grund Drokda in Anvilmar.",
            complete = QuestState(97277, "activeOrCompleted"),
            route = {
                Point(1426, 0.2860, 0.6740, "Grund Drokda",
                    "Travel to Grund Drokda."),
            },
        },
        {
            id = "woven-objective-97277-grund-and-gozwin",
            kind = "objective",
            priority = 2220,
            conditions = { level = { min = 6 } },
            text = "Find Grund and Gozwin's camp in the hills northwest of Anvilmar. Recover Gozwin's Mechanic's Log and kill the Snow Leopard Prowler.",
            complete = QuestState(97277, "complete"),
            route = {
                Point(1426, 0.2860, 0.6740, "Grund Drokda",
                    "Travel to Grund Drokda."),
            },
        },
        {
            id = "woven-turnin-97277-grund-and-gozwin",
            kind = "turnin",
            priority = 2230,
            conditions = { level = { min = 6 } },
            text = "Turn in Grund and Gozwin to Grund Drokda in Anvilmar.",
            complete = QuestState(97277, "completed"),
            route = {
                Point(1426, 0.2860, 0.6740, "Grund Drokda",
                    "Travel to Grund Drokda."),
            },
        },
        {
            id = "woven-accept-96628-the-adventurer",
            kind = "accept",
            priority = 2240,
            conditions = { level = { min = 6 } },
            text = "Accept The Adventurer from Mountaineer Thalos in Coldridge Pass.",
            complete = QuestState(96628, "activeOrCompleted"),
            route = {
                Point(1426, 0.3340, 0.7180, "Mountaineer Thalos",
                    "Travel to Mountaineer Thalos."),
            },
        },
        {
            id = "woven-turnin-96628-the-adventurer",
            kind = "turnin",
            priority = 2250,
            conditions = { level = { min = 6 } },
            text = "Turn in The Adventurer to Eric Brighthammer in Kharanos.",
            complete = QuestState(96628, "completed"),
            route = {
                Point(1426, 0.4660, 0.5380, "Eric Brighthammer",
                    "Travel to Eric Brighthammer."),
            },
        },
        {
            id = "woven-accept-96101-the-great-outdoors",
            kind = "accept",
            priority = 2260,
            conditions = { level = { min = 6 } },
            text = "Accept The Great Outdoors from Eric Brighthammer.",
            complete = QuestState(96101, "activeOrCompleted"),
            route = {
                Point(1426, 0.4660, 0.5380, "Eric Brighthammer",
                    "Travel to Eric Brighthammer."),
            },
        },
        {
            id = "woven-objective-96101-the-great-outdoors",
            kind = "objective",
            priority = 2270,
            conditions = { level = { min = 6 } },
            text = "Type /sit at Eric Brighthammer's campfire and wait until you gain the Boosted Rest buff.",
            complete = QuestState(96101, "complete"),
        },
        {
            id = "woven-turnin-96101-the-great-outdoors",
            kind = "turnin",
            priority = 2280,
            conditions = { level = { min = 6 } },
            text = "Turn in The Great Outdoors to Eric Brighthammer.",
            complete = QuestState(96101, "completed"),
            route = {
                Point(1426, 0.4660, 0.5380, "Eric Brighthammer",
                    "Travel to Eric Brighthammer."),
            },
        },
        {
            id = "woven-accept-98321-flintfires-shipment",
            kind = "accept",
            priority = 2290,
            conditions = { level = { min = 7 } },
            text = "Accept Flintfire's Shipment from Tognus Flintfire in Kharanos.",
            complete = QuestState(98321, "activeOrCompleted"),
            route = {
                Point(1426, 0.4520, 0.5200, "Tognus Flintfire",
                    "Travel to Tognus Flintfire."),
            },
        },
        {
            id = "woven-accept-98319-secure-the-mountain",
            kind = "accept",
            priority = 2300,
            conditions = { level = { min = 8 } },
            text = "Accept Secure the Mountain from Mountaineer Gretchen.",
            complete = QuestState(98319, "activeOrCompleted"),
            route = {
                Point(1426, 0.4400, 0.5700, "Mountaineer Gretchen",
                    "Travel to Mountaineer Gretchen."),
            },
        },
        {
            id = "woven-objective-98319-secure-the-mountain",
            kind = "objective",
            priority = 2310,
            conditions = { level = { min = 8 } },
            text = "Find Mountaineer Cornelius in the Grizzled Den.",
            complete = QuestState(98319, "complete"),
            route = {
                Point(1426, 0.4200, 0.5400, "Grizzled Den",
                    "Travel to Grizzled Den."),
            },
        },
        {
            id = "woven-turnin-98319-secure-the-mountain",
            kind = "turnin",
            priority = 2320,
            conditions = { level = { min = 8 } },
            text = "Turn in Secure the Mountain to Mountaineer Gretchen.",
            complete = QuestState(98319, "completed"),
            route = {
                Point(1426, 0.4400, 0.5700, "Mountaineer Gretchen",
                    "Travel to Mountaineer Gretchen."),
            },
        },
        {
            id = "woven-accept-98323-secure-the-mountain",
            kind = "accept",
            priority = 2330,
            conditions = { level = { min = 8 } },
            text = "Accept Secure the Mountain from Mountaineer Gretchen.",
            complete = QuestState(98323, "activeOrCompleted"),
            route = {
                Point(1426, 0.4400, 0.5700, "Mountaineer Gretchen",
                    "Travel to Mountaineer Gretchen."),
            },
        },
        {
            id = "woven-objective-98321-flintfires-shipment",
            kind = "objective",
            priority = 2340,
            conditions = { level = { min = 7 } },
            text = "Collect 8 Flintfire Shipments in the Grizzled Den.",
            complete = QuestState(98321, "complete"),
            route = {
                Point(1426, 0.4200, 0.5400, "Grizzled Den",
                    "Travel to Grizzled Den."),
            },
        },
        {
            id = "woven-accept-98322-secure-the-mountain",
            kind = "accept",
            priority = 2350,
            conditions = { level = { min = 8 } },
            text = "Accept Secure the Mountain from Senir Whitebeard in Kharanos.",
            complete = QuestState(98322, "activeOrCompleted"),
            route = {
                Point(1426, 0.4660, 0.5380, "Senir Whitebeard",
                    "Travel to Senir Whitebeard."),
            },
        },
        {
            id = "woven-turnin-98322-secure-the-mountain",
            kind = "turnin",
            priority = 2360,
            conditions = { level = { min = 8 } },
            text = "Turn in Secure the Mountain to Mountaineer Gretchen, west of Kharanos.",
            complete = QuestState(98322, "completed"),
            route = {
                Point(1426, 0.4400, 0.5700, "Mountaineer Gretchen",
                    "Travel to Mountaineer Gretchen."),
            },
        },
        {
            id = "woven-turnin-98323-secure-the-mountain",
            kind = "turnin",
            priority = 2370,
            conditions = { level = { min = 8 } },
            text = "Turn in Secure the Mountain to Senir Whitebeard in Kharanos.",
            complete = QuestState(98323, "completed"),
            route = {
                Point(1426, 0.4660, 0.5380, "Senir Whitebeard",
                    "Travel to Senir Whitebeard."),
            },
        },
        {
            id = "woven-turnin-98321-flintfires-shipment",
            kind = "turnin",
            priority = 2380,
            conditions = { level = { min = 7 } },
            text = "Turn in Flintfire's Shipment to Tognus Flintfire in Kharanos.",
            complete = QuestState(98321, "completed"),
            route = {
                Point(1426, 0.4520, 0.5200, "Tognus Flintfire",
                    "Travel to Tognus Flintfire."),
            },
        },
        {
            id = "woven-accept-99158-dawn-in-the-mountains",
            kind = "accept",
            priority = 2390,
            conditions = { level = { min = 8 } },
            text = "Accept Dawn in the Mountains from Maxan Anvol in Kharanos.",
            complete = QuestState(99158, "activeOrCompleted"),
            route = {
                Point(1426, 0.4720, 0.5220, "Maxan Anvol",
                    "Travel to Maxan Anvol."),
            },
        },
        {
            id = "woven-accept-94824-confounding-flash",
            kind = "accept",
            priority = 2400,
            conditions = {
                all = {
                    { race = 7 },
                    { class = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Confounding Flash from Maxan Anvol in Kharanos.",
            complete = QuestState(94824, "activeOrCompleted"),
            route = {
                Point(1426, 0.4720, 0.5220, "Maxan Anvol", "Travel to Maxan Anvol."),
            },
        },
        {
            id = "woven-turnin-94824-confounding-flash",
            kind = "turnin",
            priority = 2410,
            conditions = {
                all = {
                    { race = 7 },
                    { class = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Confounding Flash to High Priestess Mims in Ironforge.",
            complete = QuestState(94824, "completed"),
            route = {
                Point(1455, 0.2480, 0.1000, "High Priestess Mims", "Travel to High Priestess Mims."),
            },
        },
        {
            id = "woven-accept-94817-confounding-flash-mims",
            kind = "accept",
            priority = 2420,
            conditions = {
                all = {
                    { race = 7 },
                    { class = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Confounding Flash from High Priestess Mims in Ironforge.",
            complete = QuestState(94817, "activeOrCompleted"),
            route = {
                Point(1455, 0.2480, 0.1000, "High Priestess Mims", "Travel to High Priestess Mims."),
            },
        },
        {
            id = "woven-objective-94817-confounding-flash-mims",
            kind = "objective",
            priority = 2430,
            conditions = {
                all = {
                    { race = 7 },
                    { class = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Complete Confounding Flash for High Priestess Mims. The guide follows the pin in your quest log.",
            useClientPin = true,
            complete = QuestState(94817, "complete"),
            route = {
                Point(1455, 0.2480, 0.1000, "High Priestess Mims", "Travel to High Priestess Mims."),
            },
        },
        {
            id = "woven-turnin-94817-confounding-flash-mims",
            kind = "turnin",
            priority = 2440,
            conditions = {
                all = {
                    { race = 7 },
                    { class = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Confounding Flash to High Priestess Mims in Ironforge.",
            complete = QuestState(94817, "completed"),
            route = {
                Point(1455, 0.2480, 0.1000, "High Priestess Mims", "Travel to High Priestess Mims."),
            },
        },
        {
            id = "woven-turnin-99158-dawn-in-the-mountains",
            kind = "turnin",
            priority = 2450,
            conditions = { level = { min = 8 } },
            text = "Turn in Dawn in the Mountains to Father Gavin.",
            complete = QuestState(99158, "completed"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-accept-99159-finding-warmth",
            kind = "accept",
            priority = 2460,
            conditions = { level = { min = 8 } },
            text = "Accept Finding Warmth from Father Gavin.",
            complete = QuestState(99159, "activeOrCompleted"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-accept-99160-rimes-wrath",
            kind = "accept",
            priority = 2470,
            conditions = { level = { min = 8 } },
            text = "Accept Rime's Wrath from Father Gavin.",
            complete = QuestState(99160, "activeOrCompleted"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-accept-99162-treacherous-cold",
            kind = "accept",
            priority = 2480,
            conditions = { level = { min = 8 } },
            text = "Accept Treacherous Cold from Father Gavin.",
            complete = QuestState(99162, "activeOrCompleted"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-objective-99159-finding-warmth",
            kind = "objective",
            priority = 2490,
            conditions = { level = { min = 8 } },
            text = "Collect 14 pieces of Mostly Dry Firewood.",
            complete = QuestState(99159, "complete"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-objective-99160-rimes-wrath",
            kind = "objective",
            priority = 2500,
            conditions = { level = { min = 8 } },
            text = "Destroy 10 minor ice elementals.",
            complete = QuestState(99160, "complete"),
            route = {
                Point(1426, 0.5700, 0.4520, "Minor Ice Elemental",
                    "Travel to Minor Ice Elemental."),
            },
        },
        {
            id = "woven-objective-99162-treacherous-cold",
            kind = "objective",
            priority = 2510,
            conditions = { level = { min = 8 } },
            text = "Collect Stoneanvil's Rifle, Sunhammer's Rifle, and Coalbeard's Rifle.",
            complete = QuestState(99162, "complete"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-turnin-99159-finding-warmth",
            kind = "turnin",
            priority = 2520,
            conditions = { level = { min = 8 } },
            text = "Turn in Finding Warmth to Father Gavin.",
            complete = QuestState(99159, "completed"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-turnin-99160-rimes-wrath",
            kind = "turnin",
            priority = 2530,
            conditions = { level = { min = 8 } },
            text = "Turn in Rime's Wrath to Father Gavin.",
            complete = QuestState(99160, "completed"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-accept-99161-rimes-wrath",
            kind = "accept",
            priority = 2540,
            conditions = { level = { min = 8 } },
            text = "Accept the next Rime's Wrath from Father Gavin.",
            complete = QuestState(99161, "activeOrCompleted"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-objective-99161-rimes-wrath",
            kind = "objective",
            priority = 2550,
            conditions = { level = { min = 8 } },
            text = "Kill Avala and take Avala's Core.",
            complete = QuestState(99161, "complete"),
            route = {
                Point(1426, 0.5820, 0.4200, "Avala",
                    "Travel to Avala."),
            },
        },
        {
            id = "woven-turnin-99161-rimes-wrath",
            kind = "turnin",
            priority = 2560,
            conditions = { level = { min = 8 } },
            text = "Turn in Rime's Wrath to Father Gavin.",
            complete = QuestState(99161, "completed"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-turnin-99162-treacherous-cold",
            kind = "turnin",
            priority = 2570,
            conditions = { level = { min = 8 } },
            text = "Turn in Treacherous Cold to Father Gavin.",
            complete = QuestState(99162, "completed"),
            route = {
                Point(1426, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "woven-accept-98326-frosthowl",
            kind = "accept",
            priority = 2580,
            conditions = { level = { min = 9 } },
            text = "Accept Frosthowl from Gretta Ganter in Brewnall Village.",
            complete = QuestState(98326, "activeOrCompleted"),
            route = {
                Point(1426, 0.3140, 0.4460, "Gretta Ganter",
                    "Travel to Gretta Ganter."),
            },
        },
        {
            id = "woven-objective-98326-frosthowl",
            kind = "objective",
            priority = 2590,
            conditions = { level = { min = 9 } },
            text = "Slay Frosthowl and take the Sack of Fish.",
            complete = QuestState(98326, "complete"),
            route = {
                Point(1426, 0.3140, 0.4460, "Frosthowl",
                    "Travel to Frosthowl."),
            },
        },
        {
            id = "woven-turnin-98326-frosthowl",
            kind = "turnin",
            priority = 2600,
            conditions = { level = { min = 9 } },
            text = "Turn in Frosthowl to Gretta Ganter.",
            complete = QuestState(98326, "completed"),
            route = {
                Point(1426, 0.3140, 0.4460, "Gretta Ganter",
                    "Travel to Gretta Ganter."),
            },
        },
        {
            id = "woven-accept-95212-never-saddle-on-quality",
            kind = "accept",
            priority = 2610,
            conditions = { level = { min = 10 } },
            text = "Accept Never Saddle on Quality from Rudra Amberstill.",
            complete = QuestState(95212, "activeOrCompleted"),
            route = {
                Point(1426, 0.6300, 0.4980, "Rudra Amberstill",
                    "Travel to Rudra Amberstill."),
            },
        },
        {
            id = "woven-objective-95212-never-saddle-on-quality",
            kind = "objective",
            priority = 2620,
            conditions = { level = { min = 10 } },
            text = "Collect 6 Pristine Leopard Pelts from Elder Snow Leopards.",
            complete = QuestState(95212, "complete"),
            route = {
                Point(1426, 0.7140, 0.6200, "Elder Snow Leopard",
                    "Travel to Elder Snow Leopard."),
            },
        },
        {
            id = "woven-turnin-95212-never-saddle-on-quality",
            kind = "turnin",
            priority = 2630,
            conditions = { level = { min = 10 } },
            text = "Turn in Never Saddle on Quality to Rudra Amberstill.",
            complete = QuestState(95212, "completed"),
            route = {
                Point(1426, 0.6300, 0.4980, "Rudra Amberstill",
                    "Travel to Rudra Amberstill."),
            },
        },
        {
            id = "woven-turnin-95213-stolen-blasting-powder",
            kind = "turnin",
            priority = 2640,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 95213, state = "activeOrCompleted" } },
                },
            },
            text = "Use the Empty Powder Keg if a trogg drops it, then turn in Stolen Blasting Powder to Quarrymaster Thesten.",
            complete = QuestState(95213, "completed"),
            route = {
                Point(1426, 0.6900, 0.5480, "Quarrymaster Thesten",
                    "Travel to Quarrymaster Thesten."),
            },
        },
        {
            id = "woven-accept-95214-stolen-blasting-powder",
            kind = "accept",
            priority = 2650,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 95213, state = "completed" } },
                },
            },
            text = "Accept Stolen Blasting Powder from Quarrymaster Thesten.",
            complete = QuestState(95214, "activeOrCompleted"),
            route = {
                Point(1426, 0.6900, 0.5480, "Quarrymaster Thesten",
                    "Travel to Quarrymaster Thesten."),
            },
        },
        {
            id = "woven-objective-95214-stolen-blasting-powder",
            kind = "objective",
            priority = 2660,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 95213, state = "completed" } },
                },
            },
            text = "Collect 16 Stolen Blasting Powder from the troggs east of Gol'Bolar Quarry.",
            complete = QuestState(95214, "complete"),
            route = {
                Point(1426, 0.7380, 0.5120, "Rockjaw Ambusher",
                    "Travel to Rockjaw Ambusher."),
            },
        },
        {
            id = "woven-turnin-95214-stolen-blasting-powder",
            kind = "turnin",
            priority = 2670,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 95213, state = "completed" } },
                },
            },
            text = "Turn in Stolen Blasting Powder to Quarrymaster Thesten.",
            complete = QuestState(95214, "completed"),
            route = {
                Point(1426, 0.6900, 0.5480, "Quarrymaster Thesten",
                    "Travel to Quarrymaster Thesten."),
            },
        },
        {
            id = "woven-turnin-97263-your-package-has-arrived",
            kind = "turnin",
            priority = 2680,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { quest = { id = 97263, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Your Package Has Arrived to Eldrun Stormbreaker in Ironforge if you are carrying Eldrun's package.",
            complete = QuestState(97263, "completed"),
            route = {
                Point(1455, 0.4740, 0.1360, "Eldrun Stormbreaker",
                    "Travel to Eldrun Stormbreaker."),
            },
        },
        {
            id = "woven-accept-94449-call-of-fire",
            kind = "accept",
            priority = 2690,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Ingrid Dunwald in Kharanos.",
            complete = QuestState(94449, "activeOrCompleted"),
            route = {
                Point(1426, 0.4740, 0.5200, "Ingrid Dunwald", "Travel to Ingrid Dunwald."),
            },
        },
        {
            id = "woven-turnin-94449-call-of-fire",
            kind = "turnin",
            priority = 2700,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Bruegs Kindleborn.",
            complete = QuestState(94449, "completed"),
            route = {
                Point(1426, 0.8760, 0.4360, "Bruegs Kindleborn", "Travel to Bruegs Kindleborn."),
            },
        },
        {
            id = "woven-accept-94465-call-of-fire-loch",
            kind = "accept",
            priority = 2710,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Bruegs Kindleborn.",
            complete = QuestState(94465, "activeOrCompleted"),
            route = {
                Point(1426, 0.8760, 0.4360, "Bruegs Kindleborn", "Travel to Bruegs Kindleborn."),
            },
        },
        {
            id = "woven-turnin-94465-call-of-fire-loch",
            kind = "turnin",
            priority = 2720,
            conditions = {
                all = {
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Braldir Ashmantle in Loch Modan.",
            complete = QuestState(94465, "completed"),
            route = {
                Point(1432, 0.3200, 0.6600, "Braldir Ashmantle", "Travel to Braldir Ashmantle."),
            },
        },
    },
})
