local _, ns = ...

-- Forever Casual spine: The Hinterlands (48-49)
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
    HILLSBRAD_FOOTHILLS = 1424,
    THE_HINTERLANDS = 1425,
    TANARIS = 1446,
    ORGRIMMAR = 1454,
    UNDERCITY = 1458,
}

ns:RegisterGuide({
    id = "leveling-era-horde-the-hinterlands",
    title = "The Hinterlands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 48 } },
        },
    },
    goals = {
        {
            id = "objective-4284-1-red-power-crystal",
            kind = "objective",
            priority = 10,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Collect 7 Red Power Crystal.",
            complete = QuestObjective(4284, 1, "Red Power Crystal"),
            route = {
                Point(1454, 0.5569, 0.6286, "Red Power Crystal",
                    "Travel to Red Power Crystal."),
            },
        },
        {
            id = "objective-7842-1-long-elegant-feather",
            kind = "objective",
            priority = 20,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Collect 10 Long Elegant Feather.",
            complete = QuestObjective(7842, 1, "Long Elegant Feather"),
            route = {
                Point(1454, 0.4958, 0.6912, "Long Elegant Feather",
                    "Travel to Long Elegant Feather."),
            },
        },
        {
            id = "accept-2995-lines-of-communication",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Lines of Communication.",
            complete = QuestState(2995, "activeOrCompleted"),
            route = {
                Point(1458, 0.7306, 0.3285, "Lines of Communication",
                    "Travel to Lines of Communication."),
            },
        },
        {
            id = "turnin-864-return-to-apothecary-zinge",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Return to Apothecary Zinge.",
            complete = QuestState(864, "completed"),
            route = {
                Point(1458, 0.5286, 0.7757, "Return to Apothecary Zinge",
                    "Travel to Apothecary Zinge."),
            },
        },
        {
            id = "accept-2933-venom-bottles",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Venom Bottles.",
            complete = QuestState(2933, "activeOrCompleted"),
            route = {
                Point(1425, 0.2299, 0.5772, "Venom Bottles",
                    "Travel to Venom Bottles."),
            },
        },
        {
            id = "turnin-650-ripple-recovery",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Ripple Recovery.",
            complete = QuestState(650, "completed"),
            route = {
                Point(1425, 0.2080, 0.4791, "Ripple Recovery",
                    "Travel to Ripple Recovery."),
            },
        },
        {
            id = "accept-77-a-sticky-situation",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept A Sticky Situation.",
            complete = QuestState(77, "activeOrCompleted"),
            route = {
                Point(1425, 0.2080, 0.4791, "A Sticky Situation",
                    "Travel to A Sticky Situation."),
            },
        },
        {
            id = "accept-7839-vilebranch-hooligans",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Vilebranch Hooligans.",
            complete = QuestState(7839, "activeOrCompleted"),
            route = {
                Point(1425, 0.7248, 0.6610, "Vilebranch Hooligans",
                    "Travel to Vilebranch Hooligans."),
            },
        },
        {
            id = "accept-7840-lard-lost-his-lunch",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Lard Lost His Lunch.",
            complete = QuestState(7840, "activeOrCompleted"),
            route = {
                Point(1425, 0.7814, 0.8138, "Lard Lost His Lunch",
                    "Travel to Lard Lost His Lunch."),
            },
        },
        {
            id = "accept-7815-snapjaws-mon",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Snapjaws, Mon!.",
            complete = QuestState(7815, "activeOrCompleted"),
            route = {
                Point(1425, 0.8033, 0.8153, "Snapjaws, Mon!",
                    "Travel to Snapjaws, Mon!."),
            },
        },
        {
            id = "objective-7840-1-vilebranch-kidnapper",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Kill Vilebranch Kidnapper.",
            complete = QuestObjective(7840, 1, "Vilebranch Kidnapper"),
            dependsOn = { "accept-7840-lard-lost-his-lunch" },
            route = {
                Point(1425, 0.8447, 0.4122, "Vilebranch Kidnapper",
                    "Travel to Vilebranch Kidnapper."),
            },
        },
        {
            id = "turnin-7840-lard-lost-his-lunch",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Lard Lost His Lunch.",
            complete = QuestState(7840, "completed"),
            dependsOn = { "accept-7840-lard-lost-his-lunch", "objective-7840-1-vilebranch-kidnapper" },
            route = {
                Point(1425, 0.7814, 0.8138, "Lard Lost His Lunch",
                    "Travel to Lard Lost His Lunch."),
            },
        },
        {
            id = "turnin-7815-snapjaws-mon",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Snapjaws, Mon!.",
            complete = QuestState(7815, "completed"),
            dependsOn = { "accept-7815-snapjaws-mon" },
            route = {
                Point(1425, 0.8033, 0.8153, "Snapjaws, Mon!",
                    "Travel to Snapjaws, Mon!."),
            },
        },
        {
            id = "accept-7828-stalking-the-stalkers",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Stalking the Stalkers.",
            complete = QuestState(7828, "activeOrCompleted"),
            route = {
                Point(1425, 0.7916, 0.7952, "Stalking the Stalkers",
                    "Travel to Stalking the Stalkers."),
            },
        },
        {
            id = "accept-7829-hunt-the-savages",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Hunt the Savages.",
            complete = QuestState(7829, "activeOrCompleted"),
            route = {
                Point(1425, 0.7916, 0.7952, "Hunt the Savages",
                    "Travel to Hunt the Savages."),
            },
        },
        {
            id = "accept-7830-avenging-the-fallen",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Avenging the Fallen.",
            complete = QuestState(7830, "activeOrCompleted"),
            route = {
                Point(1425, 0.7916, 0.7952, "Avenging the Fallen",
                    "Travel to Avenging the Fallen."),
            },
        },
        {
            id = "accept-7841-message-to-the-wildhammer",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Message to the Wildhammer.",
            complete = QuestState(7841, "activeOrCompleted"),
            route = {
                Point(1425, 0.7940, 0.7909, "Message to the Wildhammer",
                    "Travel to Message to the Wildhammer."),
            },
        },
        {
            id = "accept-7844-cannibalistic-cousins",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Cannibalistic Cousins.",
            complete = QuestState(7844, "activeOrCompleted"),
            route = {
                Point(1425, 0.7880, 0.7824, "Cannibalistic Cousins",
                    "Travel to Cannibalistic Cousins."),
            },
        },
        {
            id = "objective-77-1-hinterlands-honey-ripple",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Collect 10 Hinterlands Honey Ripple.",
            complete = QuestObjective(77, 1, "Hinterlands Honey Ripple"),
            dependsOn = { "accept-77-a-sticky-situation" },
            route = {
                Point(1425, 0.5746, 0.3888, "Hinterlands Honey Ripple",
                    "Travel to Hinterlands Honey Ripple."),
            },
        },
        {
            id = "objective-7828-2-silvermane-howler",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Kill 15 Silvermane Howler.",
            complete = QuestObjective(7828, 2, "Silvermane Howler"),
            dependsOn = { "accept-7828-stalking-the-stalkers" },
            route = {
                Point(1425, 0.5746, 0.3888, "Silvermane Howler",
                    "Travel to Silvermane Howler."),
            },
        },
        {
            id = "accept-2742-rin-ji-is-trapped",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Rin'ji is Trapped!.",
            complete = QuestState(2742, "activeOrCompleted"),
            route = {
                Point(1425, 0.3073, 0.4697, "Rin'ji is Trapped!",
                    "Travel to Rin'ji is Trapped!."),
            },
        },
        {
            id = "accept-485-find-oox-09-hl",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Use the OOX-09/HL Distress Beacon to accept Find OOX-09/HL!.",
            complete = QuestState(485, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-485-find-oox-09-hl",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Find OOX-09/HL!.",
            complete = QuestState(485, "completed"),
            dependsOn = { "accept-485-find-oox-09-hl" },
            route = {
                Point(1425, 0.4935, 0.3766, "Find OOX-09/HL!",
                    "Travel to Find OOX-09/HL!."),
            },
        },
        {
            id = "turnin-2742-rin-ji-is-trapped",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rin'ji is Trapped!.",
            complete = QuestState(2742, "completed"),
            dependsOn = { "accept-2742-rin-ji-is-trapped" },
            route = {
                Point(1425, 0.8630, 0.5901, "Rin'ji is Trapped!",
                    "Travel to Rin'ji is Trapped!."),
            },
        },
        {
            id = "accept-2782-rin-ji-s-secret",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Rin'ji's Secret.",
            complete = QuestState(2782, "activeOrCompleted"),
            route = {
                Point(1425, 0.8630, 0.5901, "Rin'ji's Secret",
                    "Travel to Rin'ji's Secret."),
            },
        },
        {
            id = "turnin-7839-vilebranch-hooligans",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Vilebranch Hooligans.",
            complete = QuestState(7839, "completed"),
            dependsOn = { "accept-7839-vilebranch-hooligans" },
            route = {
                Point(1425, 0.7724, 0.8012, "Vilebranch Hooligans",
                    "Travel to Vilebranch Hooligans."),
            },
        },
        {
            id = "turnin-7844-cannibalistic-cousins",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Cannibalistic Cousins.",
            complete = QuestState(7844, "completed"),
            dependsOn = { "accept-7844-cannibalistic-cousins" },
            route = {
                Point(1425, 0.7880, 0.7825, "Cannibalistic Cousins",
                    "Travel to Cannibalistic Cousins."),
            },
        },
        {
            id = "turnin-7841-message-to-the-wildhammer",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Message to the Wildhammer.",
            complete = QuestState(7841, "completed"),
            dependsOn = { "accept-7841-message-to-the-wildhammer" },
            route = {
                Point(1425, 0.7940, 0.7908, "Message to the Wildhammer",
                    "Travel to Message to the Wildhammer."),
            },
        },
        {
            id = "accept-7842-another-message-to-the-wildhammer",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Another Message to the Wildhammer.",
            complete = QuestState(7842, "activeOrCompleted"),
            route = {
                Point(1425, 0.7940, 0.7908, "Another Message to the Wildhammer",
                    "Travel to Another Message to the Wildhammer."),
            },
        },
        {
            id = "turnin-7842-another-message-to-the-wildhammer",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Another Message to the Wildhammer.",
            complete = QuestState(7842, "completed"),
            dependsOn = { "accept-7842-another-message-to-the-wildhammer", "objective-7842-1-long-elegant-feather" },
            route = {
                Point(1425, 0.7940, 0.7908, "Another Message to the Wildhammer",
                    "Travel to Another Message to the Wildhammer."),
            },
        },
        {
            id = "accept-7843-the-final-message-to-the-wildhammer",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept The Final Message to the Wildhammer.",
            complete = QuestState(7843, "activeOrCompleted"),
            route = {
                Point(1425, 0.7940, 0.7908, "The Final Message to the Wildhammer",
                    "Travel to The Final Message to the Wildhammer."),
            },
        },
        {
            id = "turnin-7828-stalking-the-stalkers",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stalking the Stalkers.",
            complete = QuestState(7828, "completed"),
            dependsOn = { "accept-7828-stalking-the-stalkers", "objective-7828-2-silvermane-howler" },
            route = {
                Point(1425, 0.7916, 0.7953, "Stalking the Stalkers",
                    "Travel to Stalking the Stalkers."),
            },
        },
        {
            id = "turnin-7829-hunt-the-savages",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hunt the Savages.",
            complete = QuestState(7829, "completed"),
            dependsOn = { "accept-7829-hunt-the-savages" },
            route = {
                Point(1425, 0.7916, 0.7953, "Hunt the Savages",
                    "Travel to Hunt the Savages."),
            },
        },
        {
            id = "turnin-7830-avenging-the-fallen",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Avenging the Fallen.",
            complete = QuestState(7830, "completed"),
            dependsOn = { "accept-7830-avenging-the-fallen" },
            route = {
                Point(1425, 0.7916, 0.7953, "Avenging the Fallen",
                    "Travel to Avenging the Fallen."),
            },
        },
        {
            id = "turnin-2933-venom-bottles",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Venom Bottles.",
            complete = QuestState(2933, "completed"),
            dependsOn = { "accept-2933-venom-bottles" },
            route = {
                Point(1424, 0.6144, 0.1906, "Venom Bottles",
                    "Travel to Venom Bottles."),
            },
        },
        {
            id = "accept-2934-undamaged-venom-sac",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Undamaged Venom Sac.",
            complete = QuestState(2934, "activeOrCompleted"),
            route = {
                Point(1424, 0.6144, 0.1906, "Undamaged Venom Sac",
                    "Travel to Undamaged Venom Sac."),
            },
        },
        {
            id = "objective-7843-1-final-message-to-the-wildhammer",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Use Final Message to the Wildhammer.",
            complete = QuestObjective(7843, 1, "Final Message to the Wildhammer"),
            dependsOn = { "accept-7843-the-final-message-to-the-wildhammer" },
            route = {
                Point(1425, 0.1439, 0.4803, "Final Message to the Wildhammer",
                    "Travel to Final Message to the Wildhammer."),
            },
        },
        {
            id = "turnin-77-a-sticky-situation",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Sticky Situation.",
            complete = QuestState(77, "completed"),
            dependsOn = { "accept-77-a-sticky-situation", "objective-77-1-hinterlands-honey-ripple" },
            route = {
                Point(1425, 0.2044, 0.4808, "A Sticky Situation",
                    "Travel to A Sticky Situation."),
            },
        },
        {
            id = "accept-81-ripple-delivery",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Ripple Delivery.",
            complete = QuestState(81, "activeOrCompleted"),
            route = {
                Point(1425, 0.2044, 0.4808, "Ripple Delivery",
                    "Travel to Ripple Delivery."),
            },
        },
        {
            id = "turnin-1429-the-atal-ai-exile",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Atal'ai Exile.",
            complete = QuestState(1429, "completed"),
            route = {
                Point(1425, 0.3581, 0.6399, "The Atal'ai Exile",
                    "Travel to The Atal'ai Exile."),
            },
        },
        {
            id = "accept-1444-return-to-fel-zerul",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept Return to Fel'Zerul.",
            complete = QuestState(1444, "activeOrCompleted"),
            route = {
                Point(1425, 0.3581, 0.6399, "Return to Fel'Zerul",
                    "Travel to Fel'Zerul."),
            },
        },
        {
            id = "turnin-485-find-oox-09-hl-2",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Find OOX-09/HL!.",
            complete = QuestState(485, "completed"),
            dependsOn = { "accept-485-find-oox-09-hl" },
            route = {
                Point(1425, 0.3580, 0.6419, "Find OOX-09/HL!",
                    "Travel to Find OOX-09/HL!."),
            },
        },
        {
            id = "turnin-7843-the-final-message-to-the-wildhammer",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Final Message to the Wildhammer.",
            complete = QuestState(7843, "completed"),
            dependsOn = { "accept-7843-the-final-message-to-the-wildhammer", "objective-7843-1-final-message-to-the-wildhammer" },
            route = {
                Point(1425, 0.3580, 0.6419, "The Final Message to the Wildhammer",
                    "Travel to The Final Message to the Wildhammer."),
            },
        },
        {
            id = "turnin-2934-undamaged-venom-sac",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Undamaged Venom Sac.",
            complete = QuestState(2934, "completed"),
            dependsOn = { "accept-2934-undamaged-venom-sac" },
            route = {
                Point(1425, 0.3580, 0.6419, "Undamaged Venom Sac",
                    "Travel to Undamaged Venom Sac."),
            },
        },
        {
            id = "turnin-2995-lines-of-communication",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Lines of Communication.",
            complete = QuestState(2995, "completed"),
            dependsOn = { "accept-2995-lines-of-communication" },
            route = {
                Point(1458, 0.7307, 0.3285, "Lines of Communication",
                    "Travel to Lines of Communication."),
            },
        },
        {
            id = "turnin-2782-rin-ji-s-secret",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rin'ji's Secret.",
            complete = QuestState(2782, "completed"),
            dependsOn = { "accept-2782-rin-ji-s-secret" },
            route = {
                Point(1458, 0.7307, 0.3285, "Rin'ji's Secret",
                    "Travel to Rin'ji's Secret."),
            },
        },
        {
            id = "accept-8273-ora-s-gratitude",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Ora's Gratitude.",
            complete = QuestState(8273, "activeOrCompleted"),
            route = {
                Point(1458, 0.7307, 0.3285, "Ora's Gratitude",
                    "Travel to Ora's Gratitude."),
            },
        },
        {
            id = "accept-3568-seeping-corruption",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Seeping Corruption.",
            complete = QuestState(3568, "activeOrCompleted"),
            route = {
                Point(1458, 0.5286, 0.7757, "Seeping Corruption",
                    "Travel to Seeping Corruption."),
            },
        },
        {
            id = "turnin-2641-sprinkle-s-secret-ingredient",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Sprinkle's Secret Ingredient.",
            complete = QuestState(2641, "completed"),
            route = {
                Point(1446, 0.5106, 0.2687, "Sprinkle's Secret Ingredient",
                    "Travel to Sprinkle's Secret Ingredient."),
            },
        },
        {
            id = "accept-2661-delivery-for-marin",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Delivery for Marin.",
            complete = QuestState(2661, "activeOrCompleted"),
            route = {
                Point(1446, 0.5106, 0.2687, "Delivery for Marin",
                    "Travel to Delivery for Marin."),
            },
        },
        {
            id = "turnin-2661-delivery-for-marin",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Delivery for Marin.",
            complete = QuestState(2661, "completed"),
            dependsOn = { "accept-2661-delivery-for-marin" },
            route = {
                Point(1446, 0.5181, 0.2866, "Delivery for Marin",
                    "Travel to Delivery for Marin."),
            },
        },
        {
            id = "accept-2662-noggenfogger-elixir",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Noggenfogger Elixir.",
            complete = QuestState(2662, "activeOrCompleted"),
            route = {
                Point(1446, 0.5181, 0.2866, "Noggenfogger Elixir",
                    "Travel to Noggenfogger Elixir."),
            },
        },
        {
            id = "turnin-2662-noggenfogger-elixir",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Noggenfogger Elixir.",
            complete = QuestState(2662, "completed"),
            dependsOn = { "accept-2662-noggenfogger-elixir" },
            route = {
                Point(1446, 0.5181, 0.2866, "Noggenfogger Elixir",
                    "Travel to Noggenfogger Elixir."),
            },
        },
    },
})
