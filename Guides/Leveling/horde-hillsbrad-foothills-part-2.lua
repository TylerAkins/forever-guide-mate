local _, ns = ...

-- Forever Casual spine: Hillsbrad Foothills (30-32)
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
    ALTERAC_MOUNTAINS = 1416,
    SILVERPINE_FOREST = 1421,
    HILLSBRAD_FOOTHILLS = 1424,
    UNDERCITY = 1458,
}

ns:RegisterGuide({
    id = "leveling-era-horde-hillsbrad-foothills-part-2",
    title = "Hillsbrad Foothills",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 30 } },
        },
    },
    goals = {
        {
            id = "accept-1164-to-steal-from-thieves",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Accept To Steal From Thieves.",
            complete = QuestState(1164, "activeOrCompleted"),
            route = {
                Point(1458, 0.6383, 0.4945, "To Steal From Thieves",
                    "Travel to To Steal From Thieves."),
            },
        },
        {
            id = "objective-63-1-water-sapta",
            kind = "objective",
            priority = 20,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Use Water Sapta.",
            complete = QuestObjective(63, 1, "Water Sapta"),
            route = {
                Point(1421, 0.4203, 0.4066, "Water Sapta",
                    "Travel to Water Sapta."),
            },
        },
        {
            id = "turnin-63-call-of-water",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Water.",
            complete = QuestState(63, "completed"),
            dependsOn = { "objective-63-1-water-sapta" },
            route = {
                Point(1421, 0.3828, 0.4456, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "accept-100-call-of-water",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Water.",
            complete = QuestState(100, "activeOrCompleted"),
            route = {
                Point(1421, 0.3828, 0.4456, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "turnin-100-call-of-water",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Water.",
            complete = QuestState(100, "completed"),
            dependsOn = { "accept-100-call-of-water" },
            route = {
                Point(1421, 0.3875, 0.4462, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "accept-96-call-of-water",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Water.",
            complete = QuestState(96, "activeOrCompleted"),
            route = {
                Point(1421, 0.3875, 0.4462, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "accept-509-elixir-of-agony",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Accept Elixir of Agony.",
            complete = QuestState(509, "activeOrCompleted"),
            route = {
                Point(1424, 0.6144, 0.1906, "Elixir of Agony",
                    "Travel to Elixir of Agony."),
            },
        },
        {
            id = "turnin-529-battle-of-hillsbrad",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Battle of Hillsbrad.",
            complete = QuestState(529, "completed"),
            route = {
                Point(1424, 0.6233, 0.2045, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
        {
            id = "accept-532-battle-of-hillsbrad",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Battle of Hillsbrad.",
            complete = QuestState(532, "activeOrCompleted"),
            route = {
                Point(1424, 0.6233, 0.2045, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
        {
            id = "accept-7321-soothing-turtle-bisque",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Soothing Turtle Bisque.",
            complete = QuestState(7321, "activeOrCompleted"),
            route = {
                Point(1424, 0.6229, 0.1904, "Soothing Turtle Bisque",
                    "Travel to Soothing Turtle Bisque."),
            },
        },
        {
            id = "accept-533-infiltration",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Infiltration.",
            complete = QuestState(533, "activeOrCompleted"),
            route = {
                Point(1424, 0.6324, 0.2065, "Infiltration",
                    "Travel to Infiltration."),
            },
        },
        {
            id = "accept-552-helcular-s-revenge",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Helcular's Revenge.",
            complete = QuestState(552, "activeOrCompleted"),
            route = {
                Point(1424, 0.6388, 0.1966, "Helcular's Revenge",
                    "Travel to Helcular's Revenge."),
            },
        },
        {
            id = "turnin-1791-the-windwatcher",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Turn in The Windwatcher.",
            complete = QuestState(1791, "completed"),
            route = {
                Point(1416, 0.8050, 0.6692, "The Windwatcher",
                    "Travel to The Windwatcher."),
            },
        },
        {
            id = "accept-1712-cyclonian",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Accept Cyclonian.",
            complete = QuestState(1712, "activeOrCompleted"),
            route = {
                Point(1416, 0.8050, 0.6692, "Cyclonian",
                    "Travel to Cyclonian."),
            },
        },
        {
            id = "turnin-7321-soothing-turtle-bisque",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Soothing Turtle Bisque.",
            complete = QuestState(7321, "completed"),
            dependsOn = { "accept-7321-soothing-turtle-bisque" },
            route = {
                Point(1424, 0.6229, 0.1904, "Soothing Turtle Bisque",
                    "Travel to Soothing Turtle Bisque."),
            },
        },
        {
            id = "accept-544-prison-break-in",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Prison Break In.",
            complete = QuestState(544, "activeOrCompleted"),
            route = {
                Point(1424, 0.6160, 0.2084, "Prison Break In",
                    "Travel to Prison Break In."),
            },
        },
        {
            id = "accept-556-stone-tokens",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Stone Tokens.",
            complete = QuestState(556, "activeOrCompleted"),
            route = {
                Point(1424, 0.6150, 0.2093, "Stone Tokens",
                    "Travel to Stone Tokens."),
            },
        },
        {
            id = "objective-552-1-cave-yeti",
            kind = "objective",
            priority = 180,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Cave Yeti.",
            complete = QuestObjective(552, 1, "Cave Yeti"),
            dependsOn = { "accept-552-helcular-s-revenge" },
            route = {
                Point(1424, 0.4618, 0.3183, "Cave Yeti",
                    "Travel to Cave Yeti."),
            },
        },
        {
            id = "objective-567-1-clerk-horrace-whitesteed",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Clerk Horrace Whitesteed.",
            complete = QuestObjective(567, 1, "Clerk Horrace Whitesteed"),
            route = {
                Point(1424, 0.4618, 0.3183, "Clerk Horrace Whitesteed",
                    "Travel to Clerk Horrace Whitesteed."),
            },
        },
        {
            id = "objective-532-1-magistrate-burnside",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Magistrate Burnside.",
            complete = QuestObjective(532, 1, "Magistrate Burnside"),
            dependsOn = { "accept-532-battle-of-hillsbrad" },
            route = {
                Point(1424, 0.2967, 0.4164, "Magistrate Burnside",
                    "Travel to Magistrate Burnside."),
            },
        },
        {
            id = "turnin-532-battle-of-hillsbrad",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Battle of Hillsbrad.",
            complete = QuestState(532, "completed"),
            dependsOn = { "accept-532-battle-of-hillsbrad", "objective-532-1-magistrate-burnside" },
            route = {
                Point(1424, 0.6233, 0.2045, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
        {
            id = "accept-539-battle-of-hillsbrad",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Battle of Hillsbrad.",
            complete = QuestState(539, "activeOrCompleted"),
            route = {
                Point(1424, 0.6233, 0.2045, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
        {
            id = "turnin-552-helcular-s-revenge",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Helcular's Revenge.",
            complete = QuestState(552, "completed"),
            dependsOn = { "accept-552-helcular-s-revenge", "objective-552-1-cave-yeti" },
            route = {
                Point(1424, 0.6388, 0.1966, "Helcular's Revenge",
                    "Travel to Helcular's Revenge."),
            },
        },
        {
            id = "accept-553-helcular-s-revenge",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Helcular's Revenge.",
            complete = QuestState(553, "activeOrCompleted"),
            route = {
                Point(1424, 0.6388, 0.1966, "Helcular's Revenge",
                    "Travel to Helcular's Revenge."),
            },
        },
        {
            id = "objective-539-1-foreman-bonds",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Foreman Bonds.",
            complete = QuestObjective(539, 1, "Foreman Bonds"),
            dependsOn = { "accept-539-battle-of-hillsbrad" },
            route = {
                Point(1424, 0.4627, 0.3194, "Foreman Bonds",
                    "Travel to Foreman Bonds."),
            },
        },
        {
            id = "objective-567-3-miner-hackett",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Miner Hackett.",
            complete = QuestObjective(567, 3, "Miner Hackett"),
            route = {
                Point(1424, 0.3112, 0.5862, "Miner Hackett",
                    "Travel to Miner Hackett."),
            },
        },
        {
            id = "objective-544-2-ricter",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Ricter.",
            complete = QuestObjective(544, 2, "Ricter"),
            dependsOn = { "accept-544-prison-break-in" },
            route = {
                Point(1416, 0.2020, 0.8408, "Ricter",
                    "Travel to Ricter."),
            },
        },
        {
            id = "objective-544-3-alina",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Alina.",
            complete = QuestObjective(544, 3, "Alina"),
            dependsOn = { "accept-544-prison-break-in" },
            route = {
                Point(1416, 0.2035, 0.8635, "Alina",
                    "Travel to Alina."),
            },
        },
        {
            id = "objective-544-1-dermot",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Dermot.",
            complete = QuestObjective(544, 1, "Dermot"),
            dependsOn = { "accept-544-prison-break-in" },
            route = {
                Point(1416, 0.2001, 0.8613, "Dermot",
                    "Travel to Dermot."),
            },
        },
        {
            id = "objective-544-4-kegan-darkmar",
            kind = "objective",
            priority = 300,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Kegan Darkmar.",
            complete = QuestObjective(544, 4, "Kegan Darkmar"),
            dependsOn = { "accept-544-prison-break-in" },
            route = {
                Point(1416, 0.1778, 0.8320, "Kegan Darkmar",
                    "Travel to Kegan Darkmar."),
            },
        },
        {
            id = "objective-533-1-syndicate-footpad",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Syndicate Footpad.",
            complete = QuestObjective(533, 1, "Syndicate Footpad"),
            dependsOn = { "accept-533-infiltration" },
            route = {
                Point(1416, 0.4760, 0.8280, "Syndicate Footpad",
                    "Travel to Syndicate Footpad."),
            },
        },
        {
            id = "turnin-544-prison-break-in",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Prison Break In.",
            complete = QuestState(544, "completed"),
            dependsOn = { "accept-544-prison-break-in", "objective-544-2-ricter", "objective-544-3-alina", "objective-544-1-dermot", "objective-544-4-kegan-darkmar" },
            route = {
                Point(1424, 0.6160, 0.2084, "Prison Break In",
                    "Travel to Prison Break In."),
            },
        },
        {
            id = "turnin-556-stone-tokens",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stone Tokens.",
            complete = QuestState(556, "completed"),
            dependsOn = { "accept-556-stone-tokens" },
            route = {
                Point(1424, 0.6150, 0.2094, "Stone Tokens",
                    "Travel to Stone Tokens."),
            },
        },
        {
            id = "accept-676-the-hammer-may-fall",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Accept The Hammer May Fall.",
            complete = QuestState(676, "activeOrCompleted"),
            route = {
                Point(1424, 0.6187, 0.1958, "The Hammer May Fall",
                    "Travel to The Hammer May Fall."),
            },
        },
        {
            id = "turnin-546-souvenirs-of-death",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Souvenirs of Death.",
            complete = QuestState(546, "completed"),
            route = {
                Point(1424, 0.6211, 0.1970, "Souvenirs of Death",
                    "Travel to Souvenirs of Death."),
            },
        },
        {
            id = "turnin-539-battle-of-hillsbrad",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Battle of Hillsbrad.",
            complete = QuestState(539, "completed"),
            dependsOn = { "accept-539-battle-of-hillsbrad", "objective-539-1-foreman-bonds" },
            route = {
                Point(1424, 0.6233, 0.2046, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
        {
            id = "turnin-567-dangerous",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Dangerous!.",
            complete = QuestState(567, "completed"),
            dependsOn = { "objective-567-1-clerk-horrace-whitesteed", "objective-567-3-miner-hackett" },
            route = {
                Point(1424, 0.6233, 0.2046, "Dangerous!",
                    "Travel to Dangerous!."),
            },
        },
        {
            id = "turnin-533-infiltration",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Infiltration.",
            complete = QuestState(533, "completed"),
            dependsOn = { "accept-533-infiltration", "objective-533-1-syndicate-footpad" },
            route = {
                Point(1424, 0.6324, 0.2065, "Infiltration",
                    "Travel to Infiltration."),
            },
        },
        {
            id = "turnin-553-helcular-s-revenge",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Turn in Helcular's Revenge.",
            complete = QuestState(553, "completed"),
            dependsOn = { "accept-553-helcular-s-revenge" },
            route = {
                Point(1424, 0.5496, 0.4907, "Helcular's Revenge",
                    "Travel to Helcular's Revenge."),
            },
        },
        {
            id = "objective-509-1-mudsnout-blossoms",
            kind = "objective",
            priority = 400,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Horde" },
            } },
            text = "Collect 6 Mudsnout Blossoms.",
            complete = QuestObjective(509, 1, "Mudsnout Blossoms"),
            dependsOn = { "accept-509-elixir-of-agony" },
            route = {
                Point(1424, 0.6400, 0.5990, "Mudsnout Blossoms",
                    "Travel to Mudsnout Blossoms."),
            },
        },
    },
})
