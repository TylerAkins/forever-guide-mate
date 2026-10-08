local _, ns = ...

-- Forever Casual spine: Feralas (43-44)
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
    FERALAS = 1444,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
}

ns:RegisterGuide({
    id = "leveling-era-horde-feralas",
    title = "Feralas",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 43 } },
        },
    },
    goals = {
        {
            id = "accept-2987-gordunni-cobalt",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Gordunni Cobalt.",
            complete = QuestState(2987, "activeOrCompleted"),
            route = {
                Point(1444, 0.7570, 0.4430, "Gordunni Cobalt",
                    "Travel to Gordunni Cobalt."),
            },
        },
        {
            id = "accept-2973-a-new-cloak-s-sheen",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept A New Cloak's Sheen.",
            complete = QuestState(2973, "activeOrCompleted"),
            route = {
                Point(1444, 0.7594, 0.4274, "A New Cloak's Sheen",
                    "Travel to A New Cloak's Sheen."),
            },
        },
        {
            id = "accept-2862-war-on-the-woodpaw",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept War on the Woodpaw.",
            complete = QuestState(2862, "activeOrCompleted"),
            route = {
                Point(1444, 0.7491, 0.4247, "War on the Woodpaw",
                    "Travel to War on the Woodpaw."),
            },
        },
        {
            id = "accept-2822-the-mark-of-quality",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept The Mark of Quality.",
            complete = QuestState(2822, "activeOrCompleted"),
            route = {
                Point(1444, 0.7443, 0.4291, "The Mark of Quality",
                    "Travel to The Mark of Quality."),
            },
        },
        {
            id = "turnin-2981-a-threat-in-feralas",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Threat in Feralas.",
            complete = QuestState(2981, "completed"),
            route = {
                Point(1444, 0.7560, 0.4360, "A Threat in Feralas",
                    "Travel to A Threat in Feralas."),
            },
        },
        {
            id = "accept-2975-the-ogres-of-feralas",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept The Ogres of Feralas.",
            complete = QuestState(2975, "activeOrCompleted"),
            route = {
                Point(1444, 0.7560, 0.4360, "The Ogres of Feralas",
                    "Travel to The Ogres of Feralas."),
            },
        },
        {
            id = "objective-2862-1-woodpaw-mongrel",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Kill Woodpaw Mongrel.",
            complete = QuestObjective(2862, 1, "Woodpaw Mongrel"),
            dependsOn = { "accept-2862-war-on-the-woodpaw" },
            route = {
                Point(1444, 0.7300, 0.3980, "Woodpaw Mongrel",
                    "Travel to Woodpaw Mongrel."),
            },
        },
        {
            id = "objective-2978-1-gordunni-scroll",
            kind = "objective",
            priority = 80,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Use Gordunni Scroll.",
            complete = QuestObjective(2978, 1, "Gordunni Scroll"),
            route = {
                Point(1444, 0.7500, 0.3515, "Gordunni Scroll",
                    "Travel to Gordunni Scroll."),
            },
        },
        {
            id = "accept-2978-the-gordunni-scroll",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept The Gordunni Scroll.",
            complete = QuestState(2978, "activeOrCompleted"),
            route = {
                Point(1444, 0.7500, 0.3515, "The Gordunni Scroll",
                    "Travel to The Gordunni Scroll."),
            },
        },
        {
            id = "turnin-2862-war-on-the-woodpaw",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in War on the Woodpaw.",
            complete = QuestState(2862, "completed"),
            dependsOn = { "accept-2862-war-on-the-woodpaw", "objective-2862-1-woodpaw-mongrel" },
            route = {
                Point(1444, 0.7491, 0.4247, "War on the Woodpaw",
                    "Travel to War on the Woodpaw."),
            },
        },
        {
            id = "accept-2863-alpha-strike",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Alpha Strike.",
            complete = QuestState(2863, "activeOrCompleted"),
            route = {
                Point(1444, 0.7491, 0.4247, "Alpha Strike",
                    "Travel to Alpha Strike."),
            },
        },
        {
            id = "turnin-2987-gordunni-cobalt",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gordunni Cobalt.",
            complete = QuestState(2987, "completed"),
            dependsOn = { "accept-2987-gordunni-cobalt" },
            route = {
                Point(1444, 0.7570, 0.4431, "Gordunni Cobalt",
                    "Travel to Gordunni Cobalt."),
            },
        },
        {
            id = "turnin-2975-the-ogres-of-feralas",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Ogres of Feralas.",
            complete = QuestState(2975, "completed"),
            dependsOn = { "accept-2975-the-ogres-of-feralas" },
            route = {
                Point(1444, 0.7560, 0.4360, "The Ogres of Feralas",
                    "Travel to The Ogres of Feralas."),
            },
        },
        {
            id = "accept-2980-the-ogres-of-feralas",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept The Ogres of Feralas.",
            complete = QuestState(2980, "activeOrCompleted"),
            route = {
                Point(1444, 0.7560, 0.4360, "The Ogres of Feralas",
                    "Travel to The Ogres of Feralas."),
            },
        },
        {
            id = "turnin-2978-the-gordunni-scroll",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Gordunni Scroll.",
            complete = QuestState(2978, "completed"),
            dependsOn = { "accept-2978-the-gordunni-scroll", "objective-2978-1-gordunni-scroll" },
            route = {
                Point(1444, 0.7560, 0.4360, "The Gordunni Scroll",
                    "Travel to The Gordunni Scroll."),
            },
        },
        {
            id = "accept-2979-dark-ceremony",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Dark Ceremony.",
            complete = QuestState(2979, "activeOrCompleted"),
            route = {
                Point(1444, 0.7560, 0.4360, "Dark Ceremony",
                    "Travel to Dark Ceremony."),
            },
        },
        {
            id = "objective-2973-1-sprite-darter",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Kill Sprite Darter.",
            complete = QuestObjective(2973, 1, "Sprite Darter"),
            dependsOn = { "accept-2973-a-new-cloak-s-sheen" },
            route = {
                Point(1444, 0.6940, 0.4680, "Sprite Darter",
                    "Travel to Sprite Darter."),
            },
        },
        {
            id = "objective-2863-1-woodpaw-alpha",
            kind = "objective",
            priority = 180,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Kill 5 Woodpaw Alpha.",
            complete = QuestObjective(2863, 1, "Woodpaw Alpha"),
            dependsOn = { "accept-2863-alpha-strike" },
            route = {
                Point(1444, 0.6860, 0.5420, "Woodpaw Alpha",
                    "Travel to Woodpaw Alpha."),
            },
        },
        {
            id = "turnin-2863-alpha-strike",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Alpha Strike.",
            complete = QuestState(2863, "completed"),
            dependsOn = { "accept-2863-alpha-strike", "objective-2863-1-woodpaw-alpha" },
            route = {
                Point(1444, 0.7491, 0.4246, "Alpha Strike",
                    "Travel to Alpha Strike."),
            },
        },
        {
            id = "accept-2902-woodpaw-investigation",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Woodpaw Investigation.",
            complete = QuestState(2902, "activeOrCompleted"),
            route = {
                Point(1444, 0.7491, 0.4246, "Woodpaw Investigation",
                    "Travel to Woodpaw Investigation."),
            },
        },
        {
            id = "turnin-2973-a-new-cloak-s-sheen",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in A New Cloak's Sheen.",
            complete = QuestState(2973, "completed"),
            dependsOn = { "accept-2973-a-new-cloak-s-sheen", "objective-2973-1-sprite-darter" },
            route = {
                Point(1444, 0.7594, 0.4274, "A New Cloak's Sheen",
                    "Travel to A New Cloak's Sheen."),
            },
        },
        {
            id = "accept-2974-a-grim-discovery",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept A Grim Discovery.",
            complete = QuestState(2974, "activeOrCompleted"),
            route = {
                Point(1444, 0.7594, 0.4274, "A Grim Discovery",
                    "Travel to A Grim Discovery."),
            },
        },
        {
            id = "turnin-2902-woodpaw-investigation",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Woodpaw Investigation.",
            complete = QuestState(2902, "completed"),
            dependsOn = { "accept-2902-woodpaw-investigation" },
            route = {
                Point(1444, 0.7163, 0.5592, "Woodpaw Investigation",
                    "Travel to Woodpaw Investigation."),
            },
        },
        {
            id = "accept-2903-the-battle-plans",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept The Battle Plans.",
            complete = QuestState(2903, "activeOrCompleted"),
            route = {
                Point(1444, 0.7163, 0.5592, "The Battle Plans",
                    "Travel to The Battle Plans."),
            },
        },
        {
            id = "objective-2974-1-grimtotem-shaman",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Kill Grimtotem Shaman.",
            complete = QuestObjective(2974, 1, "Grimtotem Shaman"),
            dependsOn = { "accept-2974-a-grim-discovery" },
            route = {
                Point(1444, 0.6740, 0.4640, "Grimtotem Shaman",
                    "Travel to Grimtotem Shaman."),
            },
        },
        {
            id = "turnin-2903-the-battle-plans",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Battle Plans.",
            complete = QuestState(2903, "completed"),
            dependsOn = { "accept-2903-the-battle-plans" },
            route = {
                Point(1444, 0.7491, 0.4247, "The Battle Plans",
                    "Travel to The Battle Plans."),
            },
        },
        {
            id = "accept-7730-zukk-ash-infestation",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Zukk'ash Infestation.",
            complete = QuestState(7730, "activeOrCompleted"),
            route = {
                Point(1444, 0.7491, 0.4247, "Zukk'ash Infestation",
                    "Travel to Zukk'ash Infestation."),
            },
        },
        {
            id = "accept-7731-stinglasher",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Stinglasher.",
            complete = QuestState(7731, "activeOrCompleted"),
            route = {
                Point(1444, 0.7491, 0.4247, "Stinglasher",
                    "Travel to Stinglasher."),
            },
        },
        {
            id = "turnin-2974-a-grim-discovery",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Grim Discovery.",
            complete = QuestState(2974, "completed"),
            dependsOn = { "accept-2974-a-grim-discovery", "objective-2974-1-grimtotem-shaman" },
            route = {
                Point(1444, 0.7594, 0.4274, "A Grim Discovery",
                    "Travel to A Grim Discovery."),
            },
        },
        {
            id = "accept-2976-a-grim-discovery",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept A Grim Discovery.",
            complete = QuestState(2976, "activeOrCompleted"),
            route = {
                Point(1444, 0.7594, 0.4274, "A Grim Discovery",
                    "Travel to A Grim Discovery."),
            },
        },
        {
            id = "objective-7731-1-stinglasher",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Kill Stinglasher.",
            complete = QuestObjective(7731, 1, "Stinglasher"),
            dependsOn = { "accept-7731-stinglasher" },
            route = {
                Point(1444, 0.7560, 0.6160, "Stinglasher",
                    "Travel to Stinglasher."),
            },
        },
        {
            id = "objective-2980-3-gordunni-mauler",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Kill 5 Gordunni Mauler.",
            complete = QuestObjective(2980, 3, "Gordunni Mauler"),
            dependsOn = { "accept-2980-the-ogres-of-feralas" },
            route = {
                Point(1444, 0.6180, 0.5440, "Gordunni Mauler",
                    "Travel to Gordunni Mauler."),
            },
        },
        {
            id = "objective-7842-1-frayfeather-hippogryph",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Kill Frayfeather Hippogryph.",
            complete = QuestObjective(7842, 1, "Frayfeather Hippogryph"),
            route = {
                Point(1444, 0.5699, 0.6445, "Frayfeather Hippogryph",
                    "Travel to Frayfeather Hippogryph."),
            },
        },
        {
            id = "objective-2979-1-gordunni-mage-lord",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Kill Gordunni Mage-Lord.",
            complete = QuestObjective(2979, 1, "Gordunni Mage-Lord"),
            dependsOn = { "accept-2979-dark-ceremony" },
            route = {
                Point(1444, 0.5840, 0.6760, "Gordunni Mage-Lord",
                    "Travel to Gordunni Mage-Lord."),
            },
        },
        {
            id = "objective-2822-1-feral-scar-yeti",
            kind = "objective",
            priority = 350,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Kill Feral Scar Yeti.",
            complete = QuestObjective(2822, 1, "Feral Scar Yeti"),
            dependsOn = { "accept-2822-the-mark-of-quality" },
            route = {
                Point(1444, 0.5540, 0.5740, "Feral Scar Yeti",
                    "Travel to Feral Scar Yeti."),
            },
        },
        {
            id = "accept-2766-find-oox-22-fe",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Use the OOX-22/FE Distress Beacon to accept Find OOX-22/FE!.",
            complete = QuestState(2766, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-2766-find-oox-22-fe",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Find OOX-22/FE!.",
            complete = QuestState(2766, "completed"),
            dependsOn = { "accept-2766-find-oox-22-fe" },
            route = {
                Point(1444, 0.5522, 0.5639, "Find OOX-22/FE!",
                    "Travel to Find OOX-22/FE!."),
            },
        },
        {
            id = "accept-3121-a-strange-request",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept A Strange Request.",
            complete = QuestState(3121, "activeOrCompleted"),
            route = {
                Point(1444, 0.7442, 0.4336, "A Strange Request",
                    "Travel to A Strange Request."),
            },
        },
        {
            id = "turnin-2822-the-mark-of-quality",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Mark of Quality.",
            complete = QuestState(2822, "completed"),
            dependsOn = { "accept-2822-the-mark-of-quality", "objective-2822-1-feral-scar-yeti" },
            route = {
                Point(1444, 0.7443, 0.4291, "The Mark of Quality",
                    "Travel to The Mark of Quality."),
            },
        },
        {
            id = "turnin-7730-zukk-ash-infestation",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Zukk'ash Infestation.",
            complete = QuestState(7730, "completed"),
            dependsOn = { "accept-7730-zukk-ash-infestation" },
            route = {
                Point(1444, 0.7491, 0.4247, "Zukk'ash Infestation",
                    "Travel to Zukk'ash Infestation."),
            },
        },
        {
            id = "turnin-7731-stinglasher",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stinglasher.",
            complete = QuestState(7731, "completed"),
            dependsOn = { "accept-7731-stinglasher", "objective-7731-1-stinglasher" },
            route = {
                Point(1444, 0.7491, 0.4247, "Stinglasher",
                    "Travel to Stinglasher."),
            },
        },
        {
            id = "accept-7732-zukk-ash-report",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept Zukk'ash Report.",
            complete = QuestState(7732, "activeOrCompleted"),
            route = {
                Point(1444, 0.7491, 0.4247, "Zukk'ash Report",
                    "Travel to Zukk'ash Report."),
            },
        },
        {
            id = "turnin-2980-the-ogres-of-feralas",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Ogres of Feralas.",
            complete = QuestState(2980, "completed"),
            dependsOn = { "accept-2980-the-ogres-of-feralas", "objective-2980-3-gordunni-mauler" },
            route = {
                Point(1444, 0.7560, 0.4360, "The Ogres of Feralas",
                    "Travel to The Ogres of Feralas."),
            },
        },
        {
            id = "turnin-2979-dark-ceremony",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Dark Ceremony.",
            complete = QuestState(2979, "completed"),
            dependsOn = { "accept-2979-dark-ceremony", "objective-2979-1-gordunni-mage-lord" },
            route = {
                Point(1444, 0.7560, 0.4360, "Dark Ceremony",
                    "Travel to Dark Ceremony."),
            },
        },
        {
            id = "accept-3002-the-gordunni-orb",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept The Gordunni Orb.",
            complete = QuestState(3002, "activeOrCompleted"),
            route = {
                Point(1444, 0.7560, 0.4360, "The Gordunni Orb",
                    "Travel to The Gordunni Orb."),
            },
        },
        {
            id = "turnin-1205-deadmire",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Deadmire.",
            complete = QuestState(1205, "completed"),
            route = {
                Point(1456, 0.6154, 0.8091, "Deadmire",
                    "Travel to Deadmire."),
            },
        },
        {
            id = "turnin-3002-the-gordunni-orb",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Gordunni Orb.",
            complete = QuestState(3002, "completed"),
            dependsOn = { "accept-3002-the-gordunni-orb" },
            route = {
                Point(1454, 0.3916, 0.8624, "The Gordunni Orb",
                    "Travel to The Gordunni Orb."),
            },
        },
        {
            id = "turnin-3121-a-strange-request",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Strange Request.",
            complete = QuestState(3121, "completed"),
            dependsOn = { "accept-3121-a-strange-request" },
            route = {
                Point(1454, 0.4949, 0.5059, "A Strange Request",
                    "Travel to A Strange Request."),
            },
        },
        {
            id = "accept-3122-return-to-witch-doctor-uzer-i",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 45 } },
                { faction = "Horde" },
            } },
            text = "Accept Return to Witch Doctor Uzer'i.",
            complete = QuestState(3122, "activeOrCompleted"),
            route = {
                Point(1454, 0.4949, 0.5059, "Return to Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "turnin-2976-a-grim-discovery",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Grim Discovery.",
            complete = QuestState(2976, "completed"),
            dependsOn = { "accept-2976-a-grim-discovery" },
            route = {
                Point(1454, 0.7523, 0.3424, "A Grim Discovery",
                    "Travel to A Grim Discovery."),
            },
        },
        {
            id = "turnin-7732-zukk-ash-report",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Turn in Zukk'ash Report.",
            complete = QuestState(7732, "completed"),
            dependsOn = { "accept-7732-zukk-ash-report" },
            route = {
                Point(1454, 0.5633, 0.5694, "Zukk'ash Report",
                    "Travel to Zukk'ash Report."),
            },
        },
    },
})
