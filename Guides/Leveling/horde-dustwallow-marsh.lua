local _, ns = ...

-- Forever Casual spine: Dustwallow Marsh (37-38)
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
    DUSTWALLOW_MARSH = 1445,
    THUNDER_BLUFF = 1456,
    UNDERCITY = 1458,
}

ns:RegisterGuide({
    id = "leveling-era-horde-dustwallow-marsh",
    title = "Dustwallow Marsh",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 37 } },
        },
    },
    goals = {
        {
            id = "accept-1201-theramore-spies",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Theramore Spies.",
            complete = QuestState(1201, "activeOrCompleted"),
            route = {
                Point(1445, 0.3521, 0.3066, "Theramore Spies",
                    "Travel to Theramore Spies."),
            },
        },
        {
            id = "accept-1268-suspicious-hoofprints",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Suspicious Hoofprints.",
            complete = QuestState(1268, "activeOrCompleted"),
            route = {
                Point(1445, 0.2970, 0.4763, "Suspicious Hoofprints",
                    "Travel to Suspicious Hoofprints."),
            },
        },
        {
            id = "accept-1269-lieutenant-paval-reethe",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Lieutenant Paval Reethe.",
            complete = QuestState(1269, "activeOrCompleted"),
            route = {
                Point(1445, 0.2983, 0.4824, "Lieutenant Paval Reethe",
                    "Travel to Lieutenant Paval Reethe."),
            },
        },
        {
            id = "accept-1251-the-black-shield",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept The Black Shield.",
            complete = QuestState(1251, "activeOrCompleted"),
            route = {
                Point(1445, 0.2963, 0.4859, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "accept-1177-hungry",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Hungry!.",
            complete = QuestState(1177, "activeOrCompleted"),
            route = {
                Point(1445, 0.3515, 0.3825, "Hungry!",
                    "Travel to Hungry!."),
            },
        },
        {
            id = "turnin-1268-suspicious-hoofprints",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Suspicious Hoofprints.",
            complete = QuestState(1268, "completed"),
            dependsOn = { "accept-1268-suspicious-hoofprints" },
            route = {
                Point(1445, 0.3642, 0.3188, "Suspicious Hoofprints",
                    "Travel to Suspicious Hoofprints."),
            },
        },
        {
            id = "turnin-1269-lieutenant-paval-reethe",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Lieutenant Paval Reethe.",
            complete = QuestState(1269, "completed"),
            dependsOn = { "accept-1269-lieutenant-paval-reethe" },
            route = {
                Point(1445, 0.3642, 0.3188, "Lieutenant Paval Reethe",
                    "Travel to Lieutenant Paval Reethe."),
            },
        },
        {
            id = "turnin-1251-the-black-shield",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Black Shield.",
            complete = QuestState(1251, "completed"),
            dependsOn = { "accept-1251-the-black-shield" },
            route = {
                Point(1445, 0.3642, 0.3188, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "accept-1321-the-black-shield",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept The Black Shield.",
            complete = QuestState(1321, "activeOrCompleted"),
            route = {
                Point(1445, 0.3642, 0.3188, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "turnin-1321-the-black-shield",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Black Shield.",
            complete = QuestState(1321, "completed"),
            dependsOn = { "accept-1321-the-black-shield" },
            route = {
                Point(1445, 0.3653, 0.3080, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "accept-1322-the-black-shield",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept The Black Shield.",
            complete = QuestState(1322, "activeOrCompleted"),
            route = {
                Point(1445, 0.3653, 0.3080, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "objective-1201-1-theramore-infiltrator",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Kill 9 Theramore Infiltrator.",
            complete = QuestObjective(1201, 1, "Theramore Infiltrator"),
            dependsOn = { "accept-1201-theramore-spies" },
            route = {
                Point(1445, 0.3800, 0.3340, "Theramore Infiltrator",
                    "Travel to Theramore Infiltrator."),
            },
        },
        {
            id = "accept-1270-stinky-s-escape",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Stinky's Escape.",
            complete = QuestState(1270, "activeOrCompleted"),
            route = {
                Point(1445, 0.4688, 0.1752, "Stinky's Escape",
                    "Travel to Stinky's Escape."),
            },
        },
        {
            id = "accept-1218-soothing-spices",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Soothing Spices.",
            complete = QuestState(1218, "activeOrCompleted"),
            route = {
                Point(1445, 0.5544, 0.2627, "Soothing Spices",
                    "Travel to Soothing Spices."),
            },
        },
        {
            id = "turnin-1218-soothing-spices",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Soothing Spices.",
            complete = QuestState(1218, "completed"),
            dependsOn = { "accept-1218-soothing-spices" },
            route = {
                Point(1445, 0.5544, 0.2627, "Soothing Spices",
                    "Travel to Soothing Spices."),
            },
        },
        {
            id = "accept-1238-the-lost-report",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept The Lost Report.",
            complete = QuestState(1238, "activeOrCompleted"),
            route = {
                Point(1445, 0.5544, 0.2593, "The Lost Report",
                    "Travel to The Lost Report."),
            },
        },
        {
            id = "objective-1177-1-mirefin-coastrunner",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Kill Mirefin Coastrunner.",
            complete = QuestObjective(1177, 1, "Mirefin Coastrunner"),
            dependsOn = { "accept-1177-hungry" },
            route = {
                Point(1445, 0.5783, 0.2137, "Mirefin Coastrunner",
                    "Travel to Mirefin Coastrunner."),
            },
        },
        {
            id = "accept-1206-jarl-needs-eyes",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Jarl Needs Eyes.",
            complete = QuestState(1206, "activeOrCompleted"),
            route = {
                Point(1445, 0.5544, 0.2627, "Jarl Needs Eyes",
                    "Travel to Jarl Needs Eyes."),
            },
        },
        {
            id = "objective-1206-1-darkmist-silkspinner",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Kill Darkmist Silkspinner.",
            complete = QuestObjective(1206, 1, "Darkmist Silkspinner"),
            dependsOn = { "accept-1206-jarl-needs-eyes" },
            route = {
                Point(1445, 0.3322, 0.2276, "Darkmist Silkspinner",
                    "Travel to Darkmist Silkspinner."),
            },
        },
        {
            id = "turnin-1201-theramore-spies",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Theramore Spies.",
            complete = QuestState(1201, "completed"),
            dependsOn = { "accept-1201-theramore-spies", "objective-1201-1-theramore-infiltrator" },
            route = {
                Point(1445, 0.3322, 0.2276, "Theramore Spies",
                    "Travel to Theramore Spies."),
            },
        },
        {
            id = "accept-1202-the-theramore-docks",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept The Theramore Docks.",
            complete = QuestState(1202, "activeOrCompleted"),
            route = {
                Point(1445, 0.3322, 0.2276, "The Theramore Docks",
                    "Travel to The Theramore Docks."),
            },
        },
        {
            id = "turnin-1238-the-lost-report",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Lost Report.",
            complete = QuestState(1238, "completed"),
            dependsOn = { "accept-1238-the-lost-report" },
            route = {
                Point(1445, 0.3322, 0.2276, "The Lost Report",
                    "Travel to The Lost Report."),
            },
        },
        {
            id = "turnin-1322-the-black-shield",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Black Shield.",
            complete = QuestState(1322, "completed"),
            dependsOn = { "accept-1322-the-black-shield" },
            route = {
                Point(1445, 0.3653, 0.3080, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "accept-1323-the-black-shield",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept The Black Shield.",
            complete = QuestState(1323, "activeOrCompleted"),
            route = {
                Point(1445, 0.3653, 0.3080, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "turnin-1323-the-black-shield",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Black Shield.",
            complete = QuestState(1323, "completed"),
            dependsOn = { "accept-1323-the-black-shield" },
            route = {
                Point(1445, 0.3642, 0.3188, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "accept-1273-questioning-reethe",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Questioning Reethe.",
            complete = QuestState(1273, "activeOrCompleted"),
            route = {
                Point(1445, 0.4096, 0.3669, "Questioning Reethe",
                    "Travel to Questioning Reethe."),
            },
        },
        {
            id = "turnin-1177-hungry",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hungry!.",
            complete = QuestState(1177, "completed"),
            dependsOn = { "accept-1177-hungry", "objective-1177-1-mirefin-coastrunner" },
            route = {
                Point(1445, 0.3515, 0.3825, "Hungry!",
                    "Travel to Hungry!."),
            },
        },
        {
            id = "turnin-1273-questioning-reethe",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Questioning Reethe.",
            complete = QuestState(1273, "completed"),
            dependsOn = { "accept-1273-questioning-reethe" },
            route = {
                Point(1445, 0.3642, 0.3188, "Questioning Reethe",
                    "Travel to Questioning Reethe."),
            },
        },
        {
            id = "accept-1276-the-black-shield",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept The Black Shield.",
            complete = QuestState(1276, "activeOrCompleted"),
            route = {
                Point(1445, 0.3642, 0.3188, "The Black Shield",
                    "Travel to The Black Shield."),
            },
        },
        {
            id = "turnin-1206-jarl-needs-eyes",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Jarl Needs Eyes.",
            complete = QuestState(1206, "completed"),
            dependsOn = { "accept-1206-jarl-needs-eyes", "objective-1206-1-darkmist-silkspinner" },
            route = {
                Point(1445, 0.5543, 0.2627, "Jarl Needs Eyes",
                    "Travel to Jarl Needs Eyes."),
            },
        },
        {
            id = "accept-1203-jarl-needs-a-blade",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Jarl Needs a Blade.",
            complete = QuestState(1203, "activeOrCompleted"),
            route = {
                Point(1445, 0.5543, 0.2627, "Jarl Needs a Blade",
                    "Travel to Jarl Needs a Blade."),
            },
        },
        {
            id = "turnin-1203-jarl-needs-a-blade",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Jarl Needs a Blade.",
            complete = QuestState(1203, "completed"),
            dependsOn = { "accept-1203-jarl-needs-a-blade" },
            route = {
                Point(1445, 0.5544, 0.2627, "Jarl Needs a Blade",
                    "Travel to Jarl Needs a Blade."),
            },
        },
        {
            id = "accept-1239-the-severed-head",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept The Severed Head.",
            complete = QuestState(1239, "activeOrCompleted"),
            route = {
                Point(1445, 0.5544, 0.2593, "The Severed Head",
                    "Travel to The Severed Head."),
            },
        },
        {
            id = "objective-1202-1-captain-s-footlocker",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Click Captain's Footlocker.",
            complete = QuestObjective(1202, 1, "Captain's Footlocker"),
            dependsOn = { "accept-1202-the-theramore-docks" },
            route = {
                Point(1445, 0.7153, 0.5118, "Captain's Footlocker",
                    "Travel to Captain's Footlocker."),
            },
        },
        {
            id = "turnin-1202-the-theramore-docks",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Theramore Docks.",
            complete = QuestState(1202, "completed"),
            dependsOn = { "accept-1202-the-theramore-docks", "objective-1202-1-captain-s-footlocker" },
            route = {
                Point(1445, 0.3521, 0.3066, "The Theramore Docks",
                    "Travel to The Theramore Docks."),
            },
        },
        {
            id = "turnin-1239-the-severed-head",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Severed Head.",
            complete = QuestState(1239, "completed"),
            dependsOn = { "accept-1239-the-severed-head" },
            route = {
                Point(1445, 0.3521, 0.3066, "The Severed Head",
                    "Travel to The Severed Head."),
            },
        },
        {
            id = "accept-1240-the-troll-witchdoctor",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept The Troll Witchdoctor.",
            complete = QuestState(1240, "activeOrCompleted"),
            route = {
                Point(1445, 0.3521, 0.3066, "The Troll Witchdoctor",
                    "Travel to The Troll Witchdoctor."),
            },
        },
        {
            id = "accept-1049-compendium-of-the-fallen",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Compendium of the Fallen.",
            complete = QuestState(1049, "activeOrCompleted"),
            route = {
                Point(1456, 0.3440, 0.4687, "Compendium of the Fallen",
                    "Travel to Compendium of the Fallen."),
            },
        },
        {
            id = "accept-1048-into-the-scarlet-monastery",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Into The Scarlet Monastery.",
            complete = QuestState(1048, "activeOrCompleted"),
            route = {
                Point(1458, 0.5220, 0.6431, "Into The Scarlet Monastery",
                    "Travel to Into The Scarlet Monastery."),
            },
        },
        {
            id = "objective-1048-4-houndmaster-loksey",
            kind = "objective",
            priority = 400,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Kill Houndmaster Loksey.",
            complete = QuestObjective(1048, 4, "Houndmaster Loksey"),
            dependsOn = { "accept-1048-into-the-scarlet-monastery" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-1049-1-compendium-of-the-fallen",
            kind = "objective",
            priority = 410,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Click Compendium of the Fallen.",
            complete = QuestObjective(1049, 1, "Compendium of the Fallen"),
            dependsOn = { "accept-1049-compendium-of-the-fallen" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-1048-3-herod",
            kind = "objective",
            priority = 420,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Kill Herod.",
            complete = QuestObjective(1048, 3, "Herod"),
            dependsOn = { "accept-1048-into-the-scarlet-monastery" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-1048-2-scarlet-commander-mograine",
            kind = "objective",
            priority = 430,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Kill Scarlet Commander Mograine.",
            complete = QuestObjective(1048, 2, "Scarlet Commander Mograine"),
            dependsOn = { "accept-1048-into-the-scarlet-monastery" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-1048-1-high-inquisitor-whitemane",
            kind = "objective",
            priority = 440,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Kill High Inquisitor Whitemane.",
            complete = QuestObjective(1048, 1, "High Inquisitor Whitemane"),
            dependsOn = { "accept-1048-into-the-scarlet-monastery" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-1048-into-the-scarlet-monastery",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Into The Scarlet Monastery.",
            complete = QuestState(1048, "completed"),
            dependsOn = { "accept-1048-into-the-scarlet-monastery", "objective-1048-4-houndmaster-loksey", "objective-1048-3-herod", "objective-1048-2-scarlet-commander-mograine", "objective-1048-1-high-inquisitor-whitemane" },
            route = {
                Point(1458, 0.5220, 0.6431, "Into The Scarlet Monastery",
                    "Travel to Into The Scarlet Monastery."),
            },
        },
        {
            id = "accept-232-errand-for-apothecary-zinge",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Errand for Apothecary Zinge.",
            complete = QuestState(232, "activeOrCompleted"),
            route = {
                Point(1458, 0.5286, 0.7757, "Errand for Apothecary Zinge",
                    "Travel to Errand for Apothecary Zinge."),
            },
        },
        {
            id = "turnin-232-errand-for-apothecary-zinge",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Errand for Apothecary Zinge.",
            complete = QuestState(232, "completed"),
            dependsOn = { "accept-232-errand-for-apothecary-zinge" },
            route = {
                Point(1458, 0.4790, 0.7649, "Errand for Apothecary Zinge",
                    "Travel to Errand for Apothecary Zinge."),
            },
        },
        {
            id = "accept-238-errand-for-apothecary-zinge",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Errand for Apothecary Zinge.",
            complete = QuestState(238, "activeOrCompleted"),
            route = {
                Point(1458, 0.4790, 0.7649, "Errand for Apothecary Zinge",
                    "Travel to Errand for Apothecary Zinge."),
            },
        },
        {
            id = "turnin-238-errand-for-apothecary-zinge",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Errand for Apothecary Zinge.",
            complete = QuestState(238, "completed"),
            dependsOn = { "accept-238-errand-for-apothecary-zinge" },
            route = {
                Point(1458, 0.5286, 0.7757, "Errand for Apothecary Zinge",
                    "Travel to Errand for Apothecary Zinge."),
            },
        },
        {
            id = "accept-243-into-the-field",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Into the Field.",
            complete = QuestState(243, "activeOrCompleted"),
            route = {
                Point(1458, 0.5286, 0.7757, "Into the Field",
                    "Travel to Into the Field."),
            },
        },
        {
            id = "objective-1714-1-thundering-charm",
            kind = "objective",
            priority = 510,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Collect 8 Thundering Charm.",
            complete = QuestObjective(1714, 1, "Thundering Charm"),
            route = {
                Point(1458, 0.6439, 0.3582, "Thundering Charm",
                    "Travel to Thundering Charm."),
            },
        },
        {
            id = "objective-1713-1-nature-protection-potion",
            kind = "objective",
            priority = 520,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Collect 2 Nature Protection Potion.",
            complete = QuestObjective(1713, 1, "Nature Protection Potion"),
            route = {
                Point(1458, 0.6439, 0.3582, "Nature Protection Potion",
                    "Travel to Nature Protection Potion."),
            },
        },
        {
            id = "objective-705-1-blue-pearl",
            kind = "objective",
            priority = 530,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Collect 9 Blue Pearl.",
            complete = QuestObjective(705, 1, "Blue Pearl"),
            route = {
                Point(1458, 0.6439, 0.3582, "Blue Pearl",
                    "Travel to Blue Pearl."),
            },
        },
        {
            id = "objective-1714-1-cresting-exile",
            kind = "objective",
            priority = 540,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Kill Cresting Exile.",
            complete = QuestObjective(1714, 1, "Cresting Exile"),
            route = {
                Point(1417, 0.6620, 0.3160, "Cresting Exile",
                    "Travel to Cresting Exile."),
            },
        },
        {
            id = "objective-1714-1-thundering-exile",
            kind = "objective",
            priority = 550,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Kill Thundering Exile.",
            complete = QuestObjective(1714, 1, "Thundering Exile"),
            route = {
                Point(1417, 0.5220, 0.5260, "Thundering Exile",
                    "Travel to Thundering Exile."),
            },
        },
        {
            id = "objective-1714-1-burning-exile",
            kind = "objective",
            priority = 560,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Kill Burning Exile.",
            complete = QuestObjective(1714, 1, "Burning Exile"),
            route = {
                Point(1417, 0.2440, 0.3040, "Burning Exile",
                    "Travel to Burning Exile."),
            },
        },
    },
})
