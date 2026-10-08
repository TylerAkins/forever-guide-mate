local _, ns = ...

-- Forever Casual spine: Ashenvale (26-28)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Dungeon quests (BFD) belong in Guides/Dungeons/BlackfathomDeeps.lua.
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
    THE_BARRENS = 1413,
    ASHENVALE = 1440,
    THUNDER_BLUFF = 1456,
}

ns:RegisterGuide({
    id = "leveling-era-horde-ashenvale-part-2",
    title = "Ashenvale",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 26 } },
        },
    },
    goals = {
        {
            id = "accept-6541-report-to-kadrak",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept Report to Kadrak.",
            complete = QuestState(6541, "activeOrCompleted"),
            route = {
                Point(1413, 0.5150, 0.3087, "Report to Kadrak",
                    "Travel to Report to Kadrak."),
            },
        },
        {
            id = "turnin-6541-report-to-kadrak",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Report to Kadrak.",
            complete = QuestState(6541, "completed"),
            dependsOn = { "accept-6541-report-to-kadrak" },
            route = {
                Point(1413, 0.4812, 0.0542, "Report to Kadrak",
                    "Travel to Report to Kadrak."),
            },
        },
        {
            id = "accept-6504-the-lost-pages",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept The Lost Pages.",
            complete = QuestState(6504, "activeOrCompleted"),
            route = {
                Point(1440, 0.7000, 0.7115, "The Lost Pages",
                    "Travel to The Lost Pages."),
            },
        },
        {
            id = "objective-6504-1-shredder-operating-manual-page-1",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Use Shredder Operating Manual - Page 1.",
            complete = QuestObjective(6504, 1, "Shredder Operating Manual - Page 1"),
            dependsOn = { "accept-6504-the-lost-pages" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-6504-2-shredder-operating-manual-page-5",
            kind = "objective",
            priority = 50,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Use Shredder Operating Manual - Page 5.",
            complete = QuestObjective(6504, 2, "Shredder Operating Manual - Page 5"),
            dependsOn = { "accept-6504-the-lost-pages" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-6504-3-shredder-operating-manual-page-9",
            kind = "objective",
            priority = 60,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Use Shredder Operating Manual - Page 9.",
            complete = QuestObjective(6504, 3, "Shredder Operating Manual - Page 9"),
            dependsOn = { "accept-6504-the-lost-pages" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-6504-the-lost-pages",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Lost Pages.",
            complete = QuestState(6504, "completed"),
            dependsOn = { "accept-6504-the-lost-pages", "objective-6504-1-shredder-operating-manual-page-1", "objective-6504-2-shredder-operating-manual-page-5", "objective-6504-3-shredder-operating-manual-page-9" },
            route = {
                Point(1440, 0.7000, 0.7115, "The Lost Pages",
                    "Travel to The Lost Pages."),
            },
        },
        {
            id = "accept-6503-ashenvale-outrunners",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept Ashenvale Outrunners.",
            complete = QuestState(6503, "activeOrCompleted"),
            route = {
                Point(1440, 0.7110, 0.6812, "Ashenvale Outrunners",
                    "Travel to Ashenvale Outrunners."),
            },
        },
        {
            id = "turnin-6382-the-ashenvale-hunt",
            kind = "turnin",
            priority = 85,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart (also accepts 235 or 742).",
            complete = QuestState(6382, "completed"),
            route = {
                Point(1440, 0.7378, 0.6146, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "accept-6383-the-ashenvale-hunt",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept The Ashenvale Hunt (instant).",
            complete = QuestState(6383, "completed"),
            dependsOn = { "turnin-6382-the-ashenvale-hunt" },
            route = {
                Point(1440, 0.7378, 0.6146, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "accept-25-stonetalon-standstill",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept Stonetalon Standstill.",
            complete = QuestState(25, "activeOrCompleted"),
            route = {
                Point(1440, 0.7367, 0.6001, "Stonetalon Standstill",
                    "Travel to Stonetalon Standstill."),
            },
        },
        {
            id = "accept-6441-satyr-horns",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept Satyr Horns.",
            complete = QuestState(6441, "activeOrCompleted"),
            route = {
                Point(1440, 0.7306, 0.6148, "Satyr Horns",
                    "Travel to Satyr Horns."),
            },
        },
        {
            id = "objective-6503-1-ashenvale-outrunner",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Kill 9 Ashenvale Outrunner.",
            complete = QuestObjective(6503, 1, "Ashenvale Outrunner"),
            dependsOn = { "accept-6503-ashenvale-outrunners" },
            route = {
                Point(1440, 0.7280, 0.7020, "Ashenvale Outrunner",
                    "Travel to Ashenvale Outrunner."),
            },
        },
        {
            id = "accept-6544-torek-s-assault",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept Torek's Assault.",
            complete = QuestState(6544, "activeOrCompleted"),
            route = {
                Point(1440, 0.6834, 0.7530, "Torek's Assault",
                    "Travel to Torek's Assault."),
            },
        },
        {
            id = "accept-24-shadumbra-s-head",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Use the Shadumbra's Head to accept Shadumbra's Head.",
            complete = QuestState(24, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "accept-6482-freedom-to-ruul",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept Freedom to Ruul.",
            complete = QuestState(6482, "activeOrCompleted"),
            route = {
                Point(1440, 0.4149, 0.3450, "Freedom to Ruul",
                    "Travel to Freedom to Ruul."),
            },
        },
        {
            id = "objective-1534-1-empty-blue-waterskin",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Use Empty Blue Waterskin.",
            complete = QuestObjective(1534, 1, "Empty Blue Waterskin"),
            route = {
                Point(1440, 0.3355, 0.6744, "Empty Blue Waterskin",
                    "Travel to Empty Blue Waterskin."),
            },
        },
        {
            id = "accept-23-ursangous-s-paw",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Use the Ursangous's Paw to accept Ursangous's Paw.",
            complete = QuestState(23, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "accept-1918-the-befouled-element",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept The Befouled Element.",
            complete = QuestState(1918, "activeOrCompleted"),
            route = {
                Point(1440, 0.4840, 0.6940, "The Befouled Element",
                    "Travel to The Befouled Element."),
            },
        },
        {
            id = "objective-1195-1-etched-phial",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Use Etched Phial.",
            complete = QuestObjective(1195, 1, "Etched Phial"),
            route = {
                Point(1440, 0.6020, 0.7290, "Etched Phial",
                    "Travel to Etched Phial."),
            },
        },
        {
            id = "turnin-6503-ashenvale-outrunners",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Ashenvale Outrunners.",
            complete = QuestState(6503, "completed"),
            dependsOn = { "accept-6503-ashenvale-outrunners", "objective-6503-1-ashenvale-outrunner" },
            route = {
                Point(1440, 0.5951, 0.6825, "Ashenvale Outrunners",
                    "Travel to Ashenvale Outrunners."),
            },
        },
        {
            id = "turnin-6544-torek-s-assault",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Torek's Assault.",
            complete = QuestState(6544, "completed"),
            dependsOn = { "accept-6544-torek-s-assault" },
            route = {
                Point(1440, 0.7303, 0.6247, "Torek's Assault",
                    "Travel to Torek's Assault."),
            },
        },
        {
            id = "turnin-24-shadumbra-s-head",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Shadumbra's Head.",
            complete = QuestState(24, "completed"),
            dependsOn = { "accept-24-shadumbra-s-head" },
            route = {
                Point(1440, 0.7378, 0.6146, "Shadumbra's Head",
                    "Travel to Shadumbra's Head."),
            },
        },
        {
            id = "turnin-23-ursangous-s-paw",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Ursangous's Paw.",
            complete = QuestState(23, "completed"),
            dependsOn = { "accept-23-ursangous-s-paw" },
            route = {
                Point(1440, 0.7378, 0.6146, "Ursangous's Paw",
                    "Travel to Ursangous's Paw."),
            },
        },
        {
            id = "turnin-6482-freedom-to-ruul",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Freedom to Ruul.",
            complete = QuestState(6482, "completed"),
            dependsOn = { "accept-6482-freedom-to-ruul" },
            route = {
                Point(1440, 0.7411, 0.6092, "Freedom to Ruul",
                    "Travel to Freedom to Ruul."),
            },
        },
        {
            id = "turnin-25-stonetalon-standstill",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stonetalon Standstill.",
            complete = QuestState(25, "completed"),
            dependsOn = { "accept-25-stonetalon-standstill" },
            route = {
                Point(1440, 0.7367, 0.6000, "Stonetalon Standstill",
                    "Travel to Stonetalon Standstill."),
            },
        },
        {
            id = "turnin-1918-the-befouled-element",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Befouled Element.",
            complete = QuestState(1918, "completed"),
            dependsOn = { "accept-1918-the-befouled-element" },
            route = {
                Point(1440, 0.7367, 0.6000, "The Befouled Element",
                    "Travel to The Befouled Element."),
            },
        },
        {
            id = "accept-824-je-neu-of-the-earthen-ring",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept Je'neu of the Earthen Ring.",
            complete = QuestState(824, "activeOrCompleted"),
            route = {
                Point(1440, 0.7367, 0.6000, "Je'neu of the Earthen Ring",
                    "Travel to Je'neu of the Earthen Ring."),
            },
        },
        {
            id = "turnin-6441-satyr-horns",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Satyr Horns.",
            complete = QuestState(6441, "completed"),
            dependsOn = { "accept-6441-satyr-horns" },
            route = {
                Point(1440, 0.7306, 0.6148, "Satyr Horns",
                    "Travel to Satyr Horns."),
            },
        },
        {
            id = "turnin-824-je-neu-of-the-earthen-ring",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Je'neu of the Earthen Ring.",
            complete = QuestState(824, "completed"),
            dependsOn = { "accept-824-je-neu-of-the-earthen-ring" },
            route = {
                Point(1440, 0.1156, 0.3429, "Je'neu of the Earthen Ring",
                    "Travel to Je'neu of the Earthen Ring."),
            },
        },
        {
            id = "turnin-6462-troll-charm",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Troll Charm.",
            complete = QuestState(6462, "completed"),
            route = {
                Point(1440, 0.1165, 0.3485, "Troll Charm",
                    "Travel to Troll Charm."),
            },
        },
        {
            id = "turnin-216-between-a-rock-and-a-thistlefur",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Between a Rock and a Thistlefur.",
            complete = QuestState(216, "completed"),
            route = {
                Point(1440, 0.1190, 0.3454, "Between a Rock and a Thistlefur",
                    "Travel to Between a Rock and a Thistlefur."),
            },
        },
        {
            id = "accept-6641-vorsha-the-lasher",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept Vorsha the Lasher.",
            complete = QuestState(6641, "activeOrCompleted"),
            route = {
                Point(1440, 0.1206, 0.3463, "Vorsha the Lasher",
                    "Travel to Vorsha the Lasher."),
            },
        },
        {
            id = "turnin-6641-vorsha-the-lasher",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Vorsha the Lasher.",
            complete = QuestState(6641, "completed"),
            dependsOn = { "accept-6641-vorsha-the-lasher" },
            route = {
                Point(1440, 0.1222, 0.3421, "Vorsha the Lasher",
                    "Travel to Vorsha the Lasher."),
            },
        },
        {
            id = "accept-2-sharptalon-s-claw",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Use the Sharptalon's Claw to accept Sharptalon's Claw.",
            complete = QuestState(2, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-2-sharptalon-s-claw",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in Sharptalon's Claw.",
            complete = QuestState(2, "completed"),
            dependsOn = { "accept-2-sharptalon-s-claw" },
            route = {
                Point(1440, 0.7378, 0.6146, "Sharptalon's Claw",
                    "Travel to Sharptalon's Claw."),
            },
        },
        {
            id = "accept-247-the-hunt-completed",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept The Hunt Completed.",
            complete = QuestState(247, "activeOrCompleted"),
            route = {
                Point(1440, 0.7378, 0.6146, "The Hunt Completed",
                    "Travel to The Hunt Completed."),
            },
        },
        {
            id = "turnin-1086-the-flying-machine-airport",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Flying Machine Airport.",
            complete = QuestState(1086, "completed"),
            route = {
                Point(1456, 0.2987, 0.2984, "The Flying Machine Airport",
                    "Travel to The Flying Machine Airport."),
            },
        },
        {
            id = "turnin-1195-the-sacred-flame",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Sacred Flame.",
            complete = QuestState(1195, "completed"),
            dependsOn = { "objective-1195-1-etched-phial" },
            route = {
                Point(1456, 0.2987, 0.2984, "The Sacred Flame",
                    "Travel to The Sacred Flame."),
            },
        },
        {
            id = "accept-1196-the-sacred-flame",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept The Sacred Flame.",
            complete = QuestState(1196, "activeOrCompleted"),
            route = {
                Point(1456, 0.2987, 0.2984, "The Sacred Flame",
                    "Travel to The Sacred Flame."),
            },
        },
        {
            id = "accept-1131-steelsnap",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Steelsnap.",
            complete = QuestState(1131, "activeOrCompleted"),
            route = {
                Point(1456, 0.6154, 0.8092, "Steelsnap",
                    "Travel to Steelsnap."),
            },
        },
    },
})
