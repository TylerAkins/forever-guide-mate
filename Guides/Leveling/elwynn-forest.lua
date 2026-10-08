local _, ns = ...

-- Forever Casual spine: Human Starter (1-13)
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
    WESTFALL = 1436,
    STORMWIND_CITY = 1453,
}

ns:RegisterGuide({
    id = "leveling-era-elwynn-forest",
    title = "Human Starter",
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
            id = "objective-783-1-young-wolf",
            kind = "objective",
            priority = 10,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { any = { { class = 1 }, { class = 9 } } }
            } },
            text = "Kill Young Wolf.",
            complete = QuestObjective(783, 1, "Young Wolf"),
            route = {
                Point(1429, 0.4520, 0.4240, "Young Wolf",
                    "Travel to Young Wolf.")
            }
            },
        {
            id = "accept-1598-the-stolen-tome",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Accept The Stolen Tome.",
            complete = QuestState(1598, "activeOrCompleted"),
            route = {
                Point(1429, 0.4987, 0.4265, "The Stolen Tome",
                    "Travel to The Stolen Tome.")
            }
            },
        {
            id = "turnin-1598-the-stolen-tome",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Turn in The Stolen Tome.",
            complete = QuestState(1598, "completed"),
            dependsOn = { "accept-1598-the-stolen-tome" },
            route = {
                Point(1429, 0.4987, 0.4265, "The Stolen Tome",
                    "Travel to The Stolen Tome.")
            }
            },
        {
            id = "accept-783-a-threat-within",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept A Threat Within.",
            complete = QuestState(783, "activeOrCompleted"),
            route = {
                Point(1429, 0.4817, 0.4295, "A Threat Within",
                    "Travel to A Threat Within.")
            }
            },
        {
            id = "turnin-783-a-threat-within",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A Threat Within.",
            complete = QuestState(783, "completed"),
            dependsOn = { "accept-783-a-threat-within", "objective-783-1-young-wolf" },
            route = {
                Point(1429, 0.4892, 0.4161, "A Threat Within",
                    "Travel to A Threat Within.")
            }
            },
        {
            id = "accept-7-kobold-camp-cleanup",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Kobold Camp Cleanup.",
            complete = QuestState(7, "activeOrCompleted"),
            route = {
                Point(1429, 0.4892, 0.4161, "Kobold Camp Cleanup",
                    "Travel to Kobold Camp Cleanup.")
            }
            },
        {
            id = "accept-5261-eagan-peltskinner",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Eagan Peltskinner.",
            complete = QuestState(5261, "activeOrCompleted"),
            route = {
                Point(1429, 0.4817, 0.4295, "Eagan Peltskinner",
                    "Travel to Eagan Peltskinner.")
            }
            },
        {
            id = "turnin-5261-eagan-peltskinner",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Eagan Peltskinner.",
            complete = QuestState(5261, "completed"),
            dependsOn = { "accept-5261-eagan-peltskinner" },
            route = {
                Point(1429, 0.4894, 0.4016, "Eagan Peltskinner",
                    "Travel to Eagan Peltskinner.")
            }
            },
        {
            id = "accept-33-wolves-across-the-border",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Wolves Across the Border.",
            complete = QuestState(33, "activeOrCompleted"),
            route = {
                Point(1429, 0.4894, 0.4016, "Wolves Across the Border",
                    "Travel to Wolves Across the Border.")
            }
            },
        {
            id = "objective-33-1-timber-wolf",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Timber Wolf.",
            complete = QuestObjective(33, 1, "Timber Wolf"),
            dependsOn = { "accept-33-wolves-across-the-border" },
            route = {
                Point(1429, 0.4680, 0.3960, "Timber Wolf",
                    "Travel to Timber Wolf.")
            }
            },
        {
            id = "objective-7-1-kobold-vermin",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 10 Kobold Vermin.",
            complete = QuestObjective(7, 1, "Kobold Vermin"),
            dependsOn = { "accept-7-kobold-camp-cleanup" },
            route = {
                Point(1429, 0.4800, 0.3760, "Kobold Vermin",
                    "Travel to Kobold Vermin.")
            }
            },
        {
            id = "turnin-33-wolves-across-the-border",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Wolves Across the Border.",
            complete = QuestState(33, "completed"),
            dependsOn = { "accept-33-wolves-across-the-border", "objective-33-1-timber-wolf" },
            route = {
                Point(1429, 0.4894, 0.4016, "Wolves Across the Border",
                    "Travel to Wolves Across the Border.")
            }
            },
        {
            id = "turnin-7-kobold-camp-cleanup",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Kobold Camp Cleanup.",
            complete = QuestState(7, "completed"),
            dependsOn = { "accept-7-kobold-camp-cleanup", "objective-7-1-kobold-vermin" },
            route = {
                Point(1429, 0.4892, 0.4161, "Kobold Camp Cleanup",
                    "Travel to Kobold Camp Cleanup.")
            }
            },
        {
            id = "accept-15-investigate-echo-ridge",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Investigate Echo Ridge.",
            complete = QuestState(15, "activeOrCompleted"),
            route = {
                Point(1429, 0.4892, 0.4161, "Investigate Echo Ridge",
                    "Travel to Investigate Echo Ridge.")
            }
            },
        {
            id = "objective-15-1-kobold-worker",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 10 Kobold Worker.",
            complete = QuestObjective(15, 1, "Kobold Worker"),
            dependsOn = { "accept-15-investigate-echo-ridge" },
            route = {
                Point(1429, 0.4740, 0.3700, "Kobold Worker",
                    "Travel to Kobold Worker.")
            }
            },
        {
            id = "turnin-15-investigate-echo-ridge",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 2 }
            } },
            text = "Turn in Investigate Echo Ridge.",
            complete = QuestState(15, "completed"),
            dependsOn = { "accept-15-investigate-echo-ridge", "objective-15-1-kobold-worker" },
            route = {
                Point(1429, 0.4892, 0.4161, "Investigate Echo Ridge",
                    "Travel to Investigate Echo Ridge.")
            }
            },
        {
            id = "accept-21-skirmish-at-echo-ridge",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 2 }
            } },
            text = "Accept Skirmish at Echo Ridge.",
            complete = QuestState(21, "activeOrCompleted"),
            route = {
                Point(1429, 0.4892, 0.4161, "Skirmish at Echo Ridge",
                    "Travel to Skirmish at Echo Ridge.")
            }
            },
        {
            id = "accept-3104-glyphic-letter",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 8 }
            } },
            text = "Accept Glyphic Letter.",
            complete = QuestState(3104, "activeOrCompleted"),
            route = {
                Point(1429, 0.4892, 0.4161, "Glyphic Letter",
                    "Travel to Glyphic Letter.")
            }
            },
        {
            id = "accept-3100-simple-letter",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 1 }
            } },
            text = "Accept Simple Letter.",
            complete = QuestState(3100, "activeOrCompleted"),
            route = {
                Point(1429, 0.4892, 0.4161, "Simple Letter",
                    "Travel to Simple Letter.")
            }
            },
        {
            id = "accept-3105-tainted-letter",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 9 }
            } },
            text = "Accept Tainted Letter.",
            complete = QuestState(3105, "activeOrCompleted"),
            route = {
                Point(1429, 0.4892, 0.4161, "Tainted Letter",
                    "Travel to Tainted Letter.")
            }
            },
        {
            id = "accept-3102-encrypted-letter",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 4 }
            } },
            text = "Accept Encrypted Letter.",
            complete = QuestState(3102, "activeOrCompleted"),
            route = {
                Point(1429, 0.4892, 0.4161, "Encrypted Letter",
                    "Travel to Encrypted Letter.")
            }
            },
        {
            id = "accept-3103-hallowed-letter",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 5 }
            } },
            text = "Accept Hallowed Letter.",
            complete = QuestState(3103, "activeOrCompleted"),
            route = {
                Point(1429, 0.4892, 0.4161, "Hallowed Letter",
                    "Travel to Hallowed Letter.")
            }
            },
        {
            id = "accept-3101-consecrated-letter",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 2 }
            } },
            text = "Accept Consecrated Letter.",
            complete = QuestState(3101, "activeOrCompleted"),
            route = {
                Point(1429, 0.4892, 0.4161, "Consecrated Letter",
                    "Travel to Consecrated Letter.")
            }
            },
        {
            id = "turnin-3100-simple-letter",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 1 }
            } },
            text = "Turn in Simple Letter.",
            complete = QuestState(3100, "completed"),
            dependsOn = { "accept-3100-simple-letter" },
            route = {
                Point(1429, 0.5024, 0.4228, "Simple Letter",
                    "Travel to Simple Letter.")
            }
            },
        {
            id = "turnin-3101-consecrated-letter",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 2 }
            } },
            text = "Turn in Consecrated Letter.",
            complete = QuestState(3101, "completed"),
            dependsOn = { "accept-3101-consecrated-letter" },
            route = {
                Point(1429, 0.5043, 0.4212, "Consecrated Letter",
                    "Travel to Consecrated Letter.")
            }
            },
        {
            id = "turnin-3103-hallowed-letter",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 5 }
            } },
            text = "Turn in Hallowed Letter.",
            complete = QuestState(3103, "completed"),
            dependsOn = { "accept-3103-hallowed-letter" },
            route = {
                Point(1429, 0.4981, 0.3949, "Hallowed Letter",
                    "Travel to Hallowed Letter.")
            }
            },
        {
            id = "turnin-3104-glyphic-letter",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 8 }
            } },
            text = "Turn in Glyphic Letter.",
            complete = QuestState(3104, "completed"),
            dependsOn = { "accept-3104-glyphic-letter" },
            route = {
                Point(1429, 0.4966, 0.3941, "Glyphic Letter",
                    "Travel to Glyphic Letter.")
            }
            },
        {
            id = "accept-18-brotherhood-of-thieves",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Brotherhood of Thieves.",
            complete = QuestState(18, "activeOrCompleted"),
            route = {
                Point(1429, 0.4817, 0.4293, "Brotherhood of Thieves",
                    "Travel to Brotherhood of Thieves.")
            }
            },
        {
            id = "turnin-3105-tainted-letter",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 9 }
            } },
            text = "Turn in Tainted Letter.",
            complete = QuestState(3105, "completed"),
            dependsOn = { "accept-3105-tainted-letter" },
            route = {
                Point(1429, 0.4987, 0.4265, "Tainted Letter",
                    "Travel to Tainted Letter.")
            }
            },
        {
            id = "objective-18-1-defias-thug",
            kind = "objective",
            priority = 300,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Defias Thug.",
            complete = QuestObjective(18, 1, "Defias Thug"),
            dependsOn = { "accept-18-brotherhood-of-thieves" },
            route = {
                Point(1429, 0.5140, 0.4700, "Defias Thug",
                    "Travel to Defias Thug.")
            }
            },
        {
            id = "turnin-18-brotherhood-of-thieves",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Brotherhood of Thieves.",
            complete = QuestState(18, "completed"),
            dependsOn = { "accept-18-brotherhood-of-thieves", "objective-18-1-defias-thug" },
            route = {
                Point(1429, 0.4817, 0.4294, "Brotherhood of Thieves",
                    "Travel to Brotherhood of Thieves.")
            }
            },
        {
            id = "accept-3903-milly-osworth",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Milly Osworth.",
            complete = QuestState(3903, "activeOrCompleted"),
            route = {
                Point(1429, 0.4817, 0.4294, "Milly Osworth",
                    "Travel to Milly Osworth.")
            }
            },
        {
            id = "accept-6-bounty-on-garrick-padfoot",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Bounty on Garrick Padfoot.",
            complete = QuestState(6, "activeOrCompleted"),
            route = {
                Point(1429, 0.4817, 0.4294, "Bounty on Garrick Padfoot",
                    "Travel to Bounty on Garrick Padfoot.")
            }
            },
        {
            id = "objective-21-1-kobold-laborer",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 12 Kobold Laborer.",
            complete = QuestObjective(21, 1, "Kobold Laborer"),
            dependsOn = { "accept-21-skirmish-at-echo-ridge" },
            route = {
                Point(1429, 0.4767, 0.3186, "Kobold Laborer",
                    "Travel to Kobold Laborer.")
            }
            },
        {
            id = "turnin-3903-milly-osworth",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Milly Osworth.",
            complete = QuestState(3903, "completed"),
            dependsOn = { "accept-3903-milly-osworth" },
            route = {
                Point(1429, 0.4766, 0.3189, "Milly Osworth",
                    "Travel to Milly Osworth.")
            }
            },
        {
            id = "accept-3904-milly-s-harvest",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Milly's Harvest.",
            complete = QuestState(3904, "activeOrCompleted"),
            route = {
                Point(1429, 0.4766, 0.3189, "Milly's Harvest",
                    "Travel to Milly's Harvest.")
            }
            },
        {
            id = "turnin-3102-encrypted-letter",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 4 }
            } },
            text = "Turn in Encrypted Letter.",
            complete = QuestState(3102, "completed"),
            dependsOn = { "accept-3102-encrypted-letter" },
            route = {
                Point(1429, 0.5031, 0.3992, "Encrypted Letter",
                    "Travel to Encrypted Letter.")
            }
            },
        {
            id = "objective-6-1-garrick-padfoot",
            kind = "objective",
            priority = 380,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Garrick Padfoot.",
            complete = QuestObjective(6, 1, "Garrick Padfoot"),
            dependsOn = { "accept-6-bounty-on-garrick-padfoot" },
            route = {
                Point(1429, 0.5751, 0.4825, "Garrick Padfoot",
                    "Travel to Garrick Padfoot.")
            }
            },
        {
            id = "objective-3904-1-milly-s-harvest",
            kind = "objective",
            priority = 390,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Collect 8 Milly's Harvest.",
            complete = QuestObjective(3904, 1, "Milly's Harvest"),
            dependsOn = { "accept-3904-milly-s-harvest" },
            route = {
                Point(1429, 0.5510, 0.4900, "Milly's Harvest",
                    "Travel to Milly's Harvest.")
            }
            },
        {
            id = "turnin-3904-milly-s-harvest",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Milly's Harvest.",
            complete = QuestState(3904, "completed"),
            dependsOn = { "accept-3904-milly-s-harvest", "objective-3904-1-milly-s-harvest" },
            route = {
                Point(1429, 0.5069, 0.3935, "Milly's Harvest",
                    "Travel to Milly's Harvest.")
            }
            },
        {
            id = "accept-3905-grape-manifest",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Grape Manifest.",
            complete = QuestState(3905, "activeOrCompleted"),
            route = {
                Point(1429, 0.5069, 0.3935, "Grape Manifest",
                    "Travel to Grape Manifest.")
            }
            },
        {
            id = "turnin-6-bounty-on-garrick-padfoot",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Bounty on Garrick Padfoot.",
            complete = QuestState(6, "completed"),
            dependsOn = { "accept-6-bounty-on-garrick-padfoot", "objective-6-1-garrick-padfoot" },
            route = {
                Point(1429, 0.4817, 0.4294, "Bounty on Garrick Padfoot",
                    "Travel to Bounty on Garrick Padfoot.")
            }
            },
        {
            id = "turnin-21-skirmish-at-echo-ridge",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Skirmish at Echo Ridge.",
            complete = QuestState(21, "completed"),
            dependsOn = { "accept-21-skirmish-at-echo-ridge", "objective-21-1-kobold-laborer" },
            route = {
                Point(1429, 0.4892, 0.4161, "Skirmish at Echo Ridge",
                    "Travel to Skirmish at Echo Ridge.")
            }
            },
        {
            id = "accept-54-report-to-goldshire",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Report to Goldshire.",
            complete = QuestState(54, "activeOrCompleted"),
            route = {
                Point(1429, 0.4892, 0.4161, "Report to Goldshire",
                    "Travel to Report to Goldshire.")
            }
            },
        {
            id = "accept-5623-in-favor-of-the-light",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 5 }
            } },
            text = "Accept In Favor of the Light.",
            complete = QuestState(5623, "activeOrCompleted"),
            route = {
                Point(1429, 0.4981, 0.3949, "In Favor of the Light",
                    "Travel to In Favor of the Light.")
            }
            },
        {
            id = "turnin-3905-grape-manifest",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Grape Manifest.",
            complete = QuestState(3905, "completed"),
            dependsOn = { "accept-3905-grape-manifest" },
            route = {
                Point(1429, 0.4947, 0.4159, "Grape Manifest",
                    "Travel to Grape Manifest.")
            }
            },
        {
            id = "accept-2158-rest-and-relaxation",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Rest and Relaxation.",
            complete = QuestState(2158, "activeOrCompleted"),
            route = {
                Point(1429, 0.4556, 0.4774, "Rest and Relaxation",
                    "Travel to Rest and Relaxation.")
            }
            },
        {
            id = "turnin-54-report-to-goldshire",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Report to Goldshire.",
            complete = QuestState(54, "completed"),
            dependsOn = { "accept-54-report-to-goldshire" },
            route = {
                Point(1429, 0.4211, 0.6593, "Report to Goldshire",
                    "Travel to Report to Goldshire.")
            }
            },
        {
            id = "accept-62-the-fargodeep-mine",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Fargodeep Mine.",
            complete = QuestState(62, "activeOrCompleted"),
            route = {
                Point(1429, 0.4211, 0.6593, "The Fargodeep Mine",
                    "Travel to The Fargodeep Mine.")
            }
            },
        {
            id = "accept-60-kobold-candles",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Kobold Candles.",
            complete = QuestState(60, "activeOrCompleted"),
            route = {
                Point(1429, 0.4332, 0.6570, "Kobold Candles",
                    "Travel to Kobold Candles.")
            }
            },
        {
            id = "turnin-2158-rest-and-relaxation",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Rest and Relaxation.",
            complete = QuestState(2158, "completed"),
            dependsOn = { "accept-2158-rest-and-relaxation" },
            route = {
                Point(1429, 0.4377, 0.6581, "Rest and Relaxation",
                    "Travel to Rest and Relaxation.")
            }
            },
        {
            id = "turnin-5623-in-favor-of-the-light",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 5 }
            } },
            text = "Turn in In Favor of the Light.",
            complete = QuestState(5623, "completed"),
            dependsOn = { "accept-5623-in-favor-of-the-light" },
            route = {
                Point(1429, 0.4328, 0.6572, "In Favor of the Light",
                    "Travel to In Favor of the Light.")
            }
            },
        {
            id = "accept-5624-garments-of-the-light",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 5 }
            } },
            text = "Accept Garments of the Light.",
            complete = QuestState(5624, "activeOrCompleted"),
            route = {
                Point(1429, 0.4328, 0.6572, "Garments of the Light",
                    "Travel to Garments of the Light.")
            }
            },
        {
            id = "turnin-5624-garments-of-the-light",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 5 }
            } },
            text = "Turn in Garments of the Light.",
            complete = QuestState(5624, "completed"),
            dependsOn = { "accept-5624-garments-of-the-light" },
            route = {
                Point(1429, 0.4328, 0.6572, "Garments of the Light",
                    "Travel to Garments of the Light.")
            }
            },
        {
            id = "accept-47-gold-dust-exchange",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Gold Dust Exchange.",
            complete = QuestState(47, "activeOrCompleted"),
            route = {
                Point(1429, 0.4214, 0.6726, "Gold Dust Exchange",
                    "Travel to Gold Dust Exchange.")
            }
            },
        {
            id = "accept-85-lost-necklace",
            kind = "accept",
            priority = 560,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Lost Necklace.",
            complete = QuestState(85, "activeOrCompleted"),
            route = {
                Point(1429, 0.3448, 0.8426, "Lost Necklace",
                    "Travel to Lost Necklace.")
            }
            },
        {
            id = "turnin-85-lost-necklace",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Lost Necklace.",
            complete = QuestState(85, "completed"),
            dependsOn = { "accept-85-lost-necklace" },
            route = {
                Point(1429, 0.4313, 0.8572, "Lost Necklace",
                    "Travel to Lost Necklace.")
            }
            },
        {
            id = "accept-86-pie-for-billy",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Pie for Billy.",
            complete = QuestState(86, "activeOrCompleted"),
            route = {
                Point(1429, 0.4313, 0.8572, "Pie for Billy",
                    "Travel to Pie for Billy.")
            }
            },
        {
            id = "accept-106-young-lovers",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Young Lovers.",
            complete = QuestState(106, "activeOrCompleted"),
            route = {
                Point(1429, 0.4315, 0.8962, "Young Lovers",
                    "Travel to Young Lovers.")
            }
            },
        {
            id = "turnin-106-young-lovers",
            kind = "turnin",
            priority = 600,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Young Lovers.",
            complete = QuestState(106, "completed"),
            dependsOn = { "accept-106-young-lovers" },
            route = {
                Point(1429, 0.2984, 0.8599, "Young Lovers",
                    "Travel to Young Lovers.")
            }
            },
        {
            id = "accept-111-speak-with-gramma",
            kind = "accept",
            priority = 610,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Speak with Gramma.",
            complete = QuestState(111, "activeOrCompleted"),
            route = {
                Point(1429, 0.2984, 0.8599, "Speak with Gramma",
                    "Travel to Speak with Gramma.")
            }
            },
        {
            id = "turnin-86-pie-for-billy",
            kind = "turnin",
            priority = 620,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Pie for Billy.",
            complete = QuestState(86, "completed"),
            dependsOn = { "accept-86-pie-for-billy" },
            route = {
                Point(1429, 0.3448, 0.8426, "Pie for Billy",
                    "Travel to Pie for Billy.")
            }
            },
        {
            id = "accept-84-back-to-billy",
            kind = "accept",
            priority = 630,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Back to Billy.",
            complete = QuestState(84, "activeOrCompleted"),
            route = {
                Point(1429, 0.3448, 0.8426, "Back to Billy",
                    "Travel to Back to Billy.")
            }
            },
        {
            id = "turnin-111-speak-with-gramma",
            kind = "turnin",
            priority = 640,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Speak with Gramma.",
            complete = QuestState(111, "completed"),
            dependsOn = { "accept-111-speak-with-gramma" },
            route = {
                Point(1429, 0.3494, 0.8386, "Speak with Gramma",
                    "Travel to Speak with Gramma.")
            }
            },
        {
            id = "accept-107-note-to-william",
            kind = "accept",
            priority = 650,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Note to William.",
            complete = QuestState(107, "activeOrCompleted"),
            route = {
                Point(1429, 0.3494, 0.8386, "Note to William",
                    "Travel to Note to William.")
            }
            },
        {
            id = "turnin-84-back-to-billy",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Back to Billy.",
            complete = QuestState(84, "completed"),
            dependsOn = { "accept-84-back-to-billy" },
            route = {
                Point(1429, 0.4313, 0.8572, "Back to Billy",
                    "Travel to Back to Billy.")
            }
            },
        {
            id = "accept-87-goldtooth",
            kind = "accept",
            priority = 670,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Goldtooth.",
            complete = QuestState(87, "activeOrCompleted"),
            route = {
                Point(1429, 0.4313, 0.8572, "Goldtooth",
                    "Travel to Goldtooth.")
            }
            },
        {
            id = "turnin-87-goldtooth",
            kind = "turnin",
            priority = 680,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Goldtooth.",
            complete = QuestState(87, "completed"),
            dependsOn = { "accept-87-goldtooth" },
            route = {
                Point(1429, 0.3449, 0.8425, "Goldtooth",
                    "Travel to Goldtooth.")
            }
            },
        {
            id = "turnin-47-gold-dust-exchange",
            kind = "turnin",
            priority = 690,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Gold Dust Exchange.",
            complete = QuestState(47, "completed"),
            dependsOn = { "accept-47-gold-dust-exchange" },
            route = {
                Point(1429, 0.4214, 0.6726, "Gold Dust Exchange",
                    "Travel to Gold Dust Exchange.")
            }
            },
        {
            id = "accept-40-a-fishy-peril",
            kind = "accept",
            priority = 700,
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
            priority = 710,
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
            priority = 720,
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
            id = "turnin-62-the-fargodeep-mine",
            kind = "turnin",
            priority = 730,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Fargodeep Mine.",
            complete = QuestState(62, "completed"),
            dependsOn = { "accept-62-the-fargodeep-mine" },
            route = {
                Point(1429, 0.4211, 0.6593, "The Fargodeep Mine",
                    "Travel to The Fargodeep Mine.")
            }
            },
        {
            id = "accept-76-the-jasperlode-mine",
            kind = "accept",
            priority = 740,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Jasperlode Mine.",
            complete = QuestState(76, "activeOrCompleted"),
            route = {
                Point(1429, 0.4211, 0.6593, "The Jasperlode Mine",
                    "Travel to The Jasperlode Mine.")
            }
            },
        {
            id = "turnin-60-kobold-candles",
            kind = "turnin",
            priority = 750,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Kobold Candles.",
            complete = QuestState(60, "completed"),
            dependsOn = { "accept-60-kobold-candles" },
            route = {
                Point(1429, 0.4332, 0.6570, "Kobold Candles",
                    "Travel to Kobold Candles.")
            }
            },
        {
            id = "accept-61-shipment-to-stormwind",
            kind = "accept",
            priority = 760,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Shipment to Stormwind.",
            complete = QuestState(61, "activeOrCompleted"),
            route = {
                Point(1429, 0.4332, 0.6570, "Shipment to Stormwind",
                    "Travel to Shipment to Stormwind.")
            }
            },
        {
            id = "turnin-107-note-to-william",
            kind = "turnin",
            priority = 770,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Note to William.",
            complete = QuestState(107, "completed"),
            dependsOn = { "accept-107-note-to-william" },
            route = {
                Point(1429, 0.4332, 0.6570, "Note to William",
                    "Travel to Note to William.")
            }
            },
        {
            id = "accept-112-collecting-kelp",
            kind = "accept",
            priority = 780,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Collecting Kelp.",
            complete = QuestState(112, "activeOrCompleted"),
            route = {
                Point(1429, 0.4332, 0.6570, "Collecting Kelp",
                    "Travel to Collecting Kelp.")
            }
            },
        {
            id = "objective-112-1-murloc",
            kind = "objective",
            priority = 790,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Murloc.",
            complete = QuestObjective(112, 1, "Murloc"),
            dependsOn = { "accept-112-collecting-kelp" },
            route = {
                Point(1429, 0.4940, 0.6620, "Murloc",
                    "Travel to Murloc.")
            }
            },
        {
            id = "turnin-35-further-concerns",
            kind = "turnin",
            priority = 800,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Further Concerns.",
            complete = QuestState(35, "completed"),
            dependsOn = { "accept-35-further-concerns" },
            route = {
                Point(1429, 0.6174, 0.5388, "Further Concerns",
                    "Travel to Further Concerns.")
            }
            },
        {
            id = "accept-37-find-the-lost-guards",
            kind = "accept",
            priority = 810,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Find the Lost Guards.",
            complete = QuestState(37, "activeOrCompleted"),
            route = {
                Point(1429, 0.6174, 0.5388, "Find the Lost Guards",
                    "Travel to Find the Lost Guards.")
            }
            },
        {
            id = "accept-52-protect-the-frontier",
            kind = "accept",
            priority = 820,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Protect the Frontier.",
            complete = QuestState(52, "activeOrCompleted"),
            route = {
                Point(1429, 0.6174, 0.5388, "Protect the Frontier",
                    "Travel to Protect the Frontier.")
            }
            },
        {
            id = "turnin-37-find-the-lost-guards",
            kind = "turnin",
            priority = 830,
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
            priority = 840,
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
            priority = 850,
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
            id = "objective-5545-1-bundle-of-wood",
            kind = "objective",
            priority = 860,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Collect 8 Bundle of Wood.",
            complete = QuestObjective(5545, 1, "Bundle of Wood"),
            dependsOn = { "accept-5545-a-bundle-of-trouble" },
            route = {
                Point(1429, 0.7910, 0.5940, "Bundle of Wood",
                    "Travel to Bundle of Wood.")
            }
            },
        {
            id = "turnin-45-discover-rolf-s-fate",
            kind = "turnin",
            priority = 870,
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
            priority = 880,
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
            priority = 890,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A Bundle of Trouble.",
            complete = QuestState(5545, "completed"),
            dependsOn = { "accept-5545-a-bundle-of-trouble", "objective-5545-1-bundle-of-wood" },
            route = {
                Point(1429, 0.8138, 0.6612, "A Bundle of Trouble",
                    "Travel to A Bundle of Trouble.")
            }
            },
        {
            id = "accept-83-red-linen-goods",
            kind = "accept",
            priority = 900,
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
            priority = 910,
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
            priority = 920,
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
            priority = 930,
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
            priority = 940,
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
            id = "objective-83-1-defias-bandit",
            kind = "objective",
            priority = 950,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Defias Bandit.",
            complete = QuestObjective(83, 1, "Defias Bandit"),
            dependsOn = { "accept-83-red-linen-goods" },
            route = {
                Point(1429, 0.7020, 0.7640, "Defias Bandit",
                    "Travel to Defias Bandit.")
            }
            },
        {
            id = "accept-184-furlbrow-s-deed",
            kind = "accept",
            priority = 960,
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
            priority = 970,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Red Linen Goods.",
            complete = QuestState(83, "completed"),
            dependsOn = { "accept-83-red-linen-goods", "objective-83-1-defias-bandit" },
            route = {
                Point(1429, 0.7946, 0.6879, "Red Linen Goods",
                    "Travel to Red Linen Goods.")
            }
            },
        {
            id = "turnin-112-collecting-kelp",
            kind = "turnin",
            priority = 980,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Collecting Kelp.",
            complete = QuestState(112, "completed"),
            dependsOn = { "accept-112-collecting-kelp", "objective-112-1-murloc" },
            route = {
                Point(1429, 0.4332, 0.6571, "Collecting Kelp",
                    "Travel to Collecting Kelp.")
            }
            },
        {
            id = "accept-114-the-escape",
            kind = "accept",
            priority = 990,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Escape.",
            complete = QuestState(114, "activeOrCompleted"),
            route = {
                Point(1429, 0.4332, 0.6571, "The Escape",
                    "Travel to The Escape.")
            }
            },
        {
            id = "turnin-39-deliver-thomas-report",
            kind = "turnin",
            priority = 1000,
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
            id = "turnin-76-the-jasperlode-mine",
            kind = "turnin",
            priority = 1010,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Jasperlode Mine.",
            complete = QuestState(76, "completed"),
            dependsOn = { "accept-76-the-jasperlode-mine" },
            route = {
                Point(1429, 0.4211, 0.6593, "The Jasperlode Mine",
                    "Travel to The Jasperlode Mine.")
            }
            },
        {
            id = "accept-239-westbrook-garrison-needs-help",
            kind = "accept",
            priority = 1020,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Westbrook Garrison Needs Help!.",
            complete = QuestState(239, "activeOrCompleted"),
            route = {
                Point(1429, 0.4211, 0.6593, "Westbrook Garrison Needs Help!",
                    "Travel to Westbrook Garrison Needs Help!.")
            }
            },
        {
            id = "accept-1097-elmore-s-task",
            kind = "accept",
            priority = 1030,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Elmore's Task.",
            complete = QuestState(1097, "activeOrCompleted"),
            route = {
                Point(1429, 0.4171, 0.6555, "Elmore's Task",
                    "Travel to Elmore's Task.")
            }
            },
        {
            id = "accept-1685-gakin-s-summons",
            kind = "accept",
            priority = 1040,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Accept Gakin's Summons.",
            complete = QuestState(1685, "activeOrCompleted"),
            route = {
                Point(1429, 0.4449, 0.6627, "Gakin's Summons",
                    "Travel to Gakin's Summons.")
            }
            },
        {
            id = "accept-5635-desperate-prayer",
            kind = "accept",
            priority = 1050,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = { 1, 3 } },
                { class = 5 }
            } },
            text = "Accept Desperate Prayer.",
            complete = QuestState(5635, "activeOrCompleted"),
            route = {
                Point(1429, 0.4328, 0.6572, "Desperate Prayer",
                    "Travel to Desperate Prayer.")
            }
            },
        {
            id = "accept-2205-seek-out-si-7",
            kind = "accept",
            priority = 1060,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 4 }
            } },
            text = "Accept Seek out SI: 7.",
            complete = QuestState(2205, "activeOrCompleted"),
            route = {
                Point(1429, 0.4387, 0.6594, "Seek out SI: 7",
                    "Travel to Seek out SI: 7.")
            }
            },
        {
            id = "accept-1638-a-warrior-s-training",
            kind = "accept",
            priority = 1070,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Accept A Warrior's Training.",
            complete = QuestState(1638, "activeOrCompleted"),
            route = {
                Point(1429, 0.4109, 0.6577, "A Warrior's Training",
                    "Travel to A Warrior's Training.")
            }
            },
        {
            id = "turnin-114-the-escape",
            kind = "turnin",
            priority = 1080,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Escape.",
            complete = QuestState(114, "completed"),
            dependsOn = { "accept-114-the-escape" },
            route = {
                Point(1429, 0.4315, 0.8962, "The Escape",
                    "Travel to The Escape.")
            }
            },
        {
            id = "turnin-239-westbrook-garrison-needs-help",
            kind = "turnin",
            priority = 1090,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Westbrook Garrison Needs Help!.",
            complete = QuestState(239, "completed"),
            dependsOn = { "accept-239-westbrook-garrison-needs-help" },
            route = {
                Point(1429, 0.2423, 0.7445, "Westbrook Garrison Needs Help!",
                    "Travel to Westbrook Garrison Needs Help!.")
            }
            },
        {
            id = "accept-11-riverpaw-gnoll-bounty",
            kind = "accept",
            priority = 1100,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Riverpaw Gnoll Bounty.",
            complete = QuestState(11, "activeOrCompleted"),
            route = {
                Point(1429, 0.2423, 0.7445, "Riverpaw Gnoll Bounty",
                    "Travel to Riverpaw Gnoll Bounty.")
            }
            },
        {
            id = "objective-11-1-riverpaw-runt",
            kind = "objective",
            priority = 1110,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Riverpaw Runt.",
            complete = QuestObjective(11, 1, "Riverpaw Runt"),
            dependsOn = { "accept-11-riverpaw-gnoll-bounty" },
            route = {
                Point(1429, 0.2720, 0.8220, "Riverpaw Runt",
                    "Travel to Riverpaw Runt.")
            }
            },
        {
            id = "turnin-11-riverpaw-gnoll-bounty",
            kind = "turnin",
            priority = 1120,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Riverpaw Gnoll Bounty.",
            complete = QuestState(11, "completed"),
            dependsOn = { "accept-11-riverpaw-gnoll-bounty", "objective-11-1-riverpaw-runt" },
            route = {
                Point(1429, 0.2423, 0.7445, "Riverpaw Gnoll Bounty",
                    "Travel to Riverpaw Gnoll Bounty.")
            }
            },
        {
            id = "turnin-184-furlbrow-s-deed",
            kind = "turnin",
            priority = 1130,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Furlbrow's Deed.",
            complete = QuestState(184, "completed"),
            dependsOn = { "accept-184-furlbrow-s-deed" },
            route = {
                Point(1436, 0.5996, 0.1936, "Furlbrow's Deed",
                    "Travel to Furlbrow's Deed."),
            },
        },
        {
            id = "accept-64-the-forgotten-heirloom",
            kind = "accept",
            priority = 1140,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Forgotten Heirloom.",
            complete = QuestState(64, "activeOrCompleted"),
            route = {
                Point(1436, 0.5996, 0.1936, "The Forgotten Heirloom",
                    "Travel to The Forgotten Heirloom."),
            },
        },
        {
            id = "accept-36-westfall-stew",
            kind = "accept",
            priority = 1150,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Accept Westfall Stew.",
            complete = QuestState(36, "activeOrCompleted"),
            route = {
                Point(1436, 0.5992, 0.1942, "Westfall Stew",
                    "Travel to Westfall Stew."),
            },
        },
        {
            id = "accept-151-poor-old-blanchy",
            kind = "accept",
            priority = 1160,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Accept Poor Old Blanchy.",
            complete = QuestState(151, "activeOrCompleted"),
            route = {
                Point(1436, 0.5992, 0.1942, "Poor Old Blanchy",
                    "Travel to Poor Old Blanchy."),
            },
        },
        {
            id = "accept-9-the-killing-fields",
            kind = "accept",
            priority = 1170,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Killing Fields.",
            complete = QuestState(9, "activeOrCompleted"),
            route = {
                Point(1436, 0.5605, 0.3122, "The Killing Fields",
                    "Travel to The Killing Fields."),
            },
        },
        {
            id = "turnin-36-westfall-stew",
            kind = "turnin",
            priority = 1180,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Westfall Stew.",
            complete = QuestState(36, "completed"),
            dependsOn = { "accept-36-westfall-stew" },
            route = {
                Point(1436, 0.5642, 0.3052, "Westfall Stew",
                    "Travel to Westfall Stew."),
            },
        },
        {
            id = "accept-38-westfall-stew",
            kind = "accept",
            priority = 1190,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Accept Westfall Stew.",
            complete = QuestState(38, "activeOrCompleted"),
            route = {
                Point(1436, 0.5642, 0.3052, "Westfall Stew",
                    "Travel to Westfall Stew."),
            },
        },
        {
            id = "accept-22-goretusk-liver-pie",
            kind = "accept",
            priority = 1200,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Accept Goretusk Liver Pie.",
            complete = QuestState(22, "activeOrCompleted"),
            route = {
                Point(1436, 0.5642, 0.3052, "Goretusk Liver Pie",
                    "Travel to Goretusk Liver Pie."),
            },
        },
        {
            id = "turnin-109-report-to-gryan-stoutmantle",
            kind = "turnin",
            priority = 1210,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Report to Gryan Stoutmantle.",
            complete = QuestState(109, "completed"),
            dependsOn = { "accept-109-report-to-gryan-stoutmantle" },
            route = {
                Point(1436, 0.5633, 0.4752, "Report to Gryan Stoutmantle",
                    "Travel to Report to Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-12-the-people-s-militia",
            kind = "accept",
            priority = 1220,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Accept The People's Militia.",
            complete = QuestState(12, "activeOrCompleted"),
            route = {
                Point(1436, 0.5633, 0.4752, "The People's Militia",
                    "Travel to The People's Militia."),
            },
        },
        {
            id = "accept-102-patrolling-westfall",
            kind = "accept",
            priority = 1230,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Alliance" },
            } },
            text = "Accept Patrolling Westfall.",
            complete = QuestState(102, "activeOrCompleted"),
            route = {
                Point(1436, 0.5642, 0.4762, "Patrolling Westfall",
                    "Travel to Patrolling Westfall."),
            },
        },
        {
            id = "accept-6181-a-swift-message",
            kind = "accept",
            priority = 1240,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 }
            } },
            text = "Accept A Swift Message.",
            complete = QuestState(6181, "activeOrCompleted"),
            route = {
                Point(1436, 0.5700, 0.4717, "A Swift Message",
                    "Travel to A Swift Message.")
            }
            },
        {
            id = "turnin-6181-a-swift-message",
            kind = "turnin",
            priority = 1250,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 }
            } },
            text = "Turn in A Swift Message.",
            complete = QuestState(6181, "completed"),
            dependsOn = { "accept-6181-a-swift-message" },
            route = {
                Point(1436, 0.5656, 0.5264, "A Swift Message",
                    "Travel to A Swift Message.")
            }
            },
        {
            id = "accept-6281-continue-to-stormwind",
            kind = "accept",
            priority = 1260,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 }
            } },
            text = "Accept Continue to Stormwind.",
            complete = QuestState(6281, "activeOrCompleted"),
            route = {
                Point(1436, 0.5656, 0.5264, "Continue to Stormwind",
                    "Travel to Continue to Stormwind.")
            }
            },
        {
            id = "turnin-61-shipment-to-stormwind",
            kind = "turnin",
            priority = 1270,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Shipment to Stormwind.",
            complete = QuestState(61, "completed"),
            dependsOn = { "accept-61-shipment-to-stormwind" },
            route = {
                Point(1453, 0.5621, 0.6459, "Shipment to Stormwind",
                    "Travel to Shipment to Stormwind.")
            }
            },
        {
            id = "turnin-1685-gakin-s-summons",
            kind = "turnin",
            priority = 1280,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Turn in Gakin's Summons.",
            complete = QuestState(1685, "completed"),
            dependsOn = { "accept-1685-gakin-s-summons" },
            route = {
                Point(1453, 0.2916, 0.7415, "Gakin's Summons",
                    "Travel to Gakin's Summons.")
            }
            },
        {
            id = "accept-1688-surena-caledon",
            kind = "accept",
            priority = 1290,
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
            id = "objective-1688-1-surena-caledon",
            kind = "objective",
            priority = 1300,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Kill Surena Caledon.",
            complete = QuestObjective(1688, 1, "Surena Caledon"),
            dependsOn = { "accept-1688-surena-caledon" },
            route = {
                Point(1429, 0.7102, 0.8078, "Surena Caledon",
                    "Travel to Surena Caledon.")
            }
            },
        {
            id = "turnin-1688-surena-caledon",
            kind = "turnin",
            priority = 1310,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Turn in Surena Caledon.",
            complete = QuestState(1688, "completed"),
            dependsOn = { "accept-1688-surena-caledon", "objective-1688-1-surena-caledon" },
            route = {
                Point(1453, 0.2916, 0.7415, "Surena Caledon",
                    "Travel to Surena Caledon.")
            }
            },
        {
            id = "accept-1689-the-binding",
            kind = "accept",
            priority = 1320,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 9 }
            } },
            text = "Accept The Binding.",
            complete = QuestState(1689, "activeOrCompleted"),
            route = {
                Point(1453, 0.2916, 0.7415, "The Binding",
                    "Travel to The Binding.")
            }
            },
        {
            id = "objective-1689-1-bloodstone-choker",
            kind = "objective",
            priority = 1330,
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
            priority = 1340,
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
            id = "turnin-2205-seek-out-si-7",
            kind = "turnin",
            priority = 1350,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 4 }
            } },
            text = "Turn in Seek out SI: 7.",
            complete = QuestState(2205, "completed"),
            dependsOn = { "accept-2205-seek-out-si-7" },
            route = {
                Point(1453, 0.7578, 0.5984, "Seek out SI: 7",
                    "Travel to Seek out SI: 7.")
            }
            },
        {
            id = "turnin-6281-continue-to-stormwind",
            kind = "turnin",
            priority = 1360,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 }
            } },
            text = "Turn in Continue to Stormwind.",
            complete = QuestState(6281, "completed"),
            dependsOn = { "accept-6281-continue-to-stormwind" },
            route = {
                Point(1453, 0.7432, 0.4724, "Continue to Stormwind",
                    "Travel to Continue to Stormwind.")
            }
            },
        {
            id = "accept-6261-dungar-longdrink",
            kind = "accept",
            priority = 1370,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 }
            } },
            text = "Accept Dungar Longdrink.",
            complete = QuestState(6261, "activeOrCompleted"),
            route = {
                Point(1453, 0.7432, 0.4724, "Dungar Longdrink",
                    "Travel to Dungar Longdrink.")
            }
            },
        {
            id = "turnin-1638-a-warrior-s-training",
            kind = "turnin",
            priority = 1380,
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
            priority = 1390,
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
            priority = 1400,
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
            priority = 1410,
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
            priority = 1420,
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
            priority = 1430,
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
            priority = 1440,
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
            priority = 1450,
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
            id = "turnin-5635-desperate-prayer",
            kind = "turnin",
            priority = 1460,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = { 1, 3 } },
                { class = 5 }
            } },
            text = "Turn in Desperate Prayer.",
            complete = QuestState(5635, "completed"),
            dependsOn = { "accept-5635-desperate-prayer" },
            route = {
                Point(1453, 0.4286, 0.3408, "Desperate Prayer",
                    "Travel to Desperate Prayer.")
            }
            },
        {
            id = "turnin-1097-elmore-s-task",
            kind = "turnin",
            priority = 1470,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Elmore's Task.",
            complete = QuestState(1097, "completed"),
            dependsOn = { "accept-1097-elmore-s-task" },
            route = {
                Point(1453, 0.5176, 0.1207, "Elmore's Task",
                    "Travel to Elmore's Task.")
            }
            },
        {
            id = "accept-353-stormpike-s-delivery",
            kind = "accept",
            priority = 1480,
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
            id = "accept-6661-deeprun-rat-roundup",
            kind = "accept",
            priority = 1490,
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
            priority = 1500,
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
            priority = 1510,
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
            id = "accept-287-frostmane-hold",
            kind = "accept",
            priority = 1520,
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
            id = "accept-412-operation-recombobulation",
            kind = "accept",
            priority = 1530,
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
            priority = 1540,
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
            priority = 1550,
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
            id = "objective-412-1-leper-gnome",
            kind = "objective",
            priority = 1560,
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
            priority = 1570,
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
            id = "turnin-412-operation-recombobulation",
            kind = "turnin",
            priority = 1580,
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
            id = "turnin-287-frostmane-hold",
            kind = "turnin",
            priority = 1590,
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
            priority = 1600,
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
            id = "accept-433-the-public-servant",
            kind = "accept",
            priority = 1610,
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
            priority = 1620,
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
            priority = 1630,
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
            priority = 1640,
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
            priority = 1650,
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
            priority = 1660,
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
            priority = 1670,
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
            priority = 1680,
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
            priority = 1690,
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
            priority = 1700,
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
            id = "turnin-291-the-reports",
            kind = "turnin",
            priority = 1705,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Reports to Senator Barin Redstone in Ironforge.",
            complete = QuestState(291, "completed"),
            dependsOn = { "accept-291-the-reports" },
            route = {
                Point(1455, 0.3955, 0.5749, "Senator Barin Redstone",
                    "Travel to Senator Barin Redstone.")
            }
            },
        {
            id = "turnin-353-stormpike-s-delivery",
            kind = "turnin",
            priority = 1710,
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
            id = "accept-418-thelsamar-blood-sausages",
            kind = "accept",
            priority = 1720,
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
            priority = 1730,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Rat Catching from Magistrate Bluntnose in Thelsamar.",
            complete = QuestState(416, "activeOrCompleted"),
            route = nil
            },
        {
            id = "accept-1339-mountaineer-stormpike-s-task",
            kind = "accept",
            priority = 1740,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Mountaineer Stormpike's Task from Mountaineer Kadrell in Thelsamar.",
            complete = QuestState(1339, "activeOrCompleted"),
            route = nil
            },
        {
            id = "objective-416-1-tunnel-rat-scout",
            kind = "objective",
            priority = 1750,
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
            id = "turnin-1339-mountaineer-stormpike-s-task",
            kind = "turnin",
            priority = 1760,
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
            priority = 1770,
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
            id = "turnin-416-rat-catching",
            kind = "turnin",
            priority = 1780,
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
            priority = 1790,
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
            id = "accept-224-in-defense-of-the-king-s-lands",
            kind = "accept",
            priority = 1800,
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
            priority = 1810,
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
            id = "turnin-224-in-defense-of-the-king-s-lands",
            kind = "turnin",
            priority = 1820,
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
            priority = 1830,
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
            id = "accept-1641-the-tome-of-divinity",
            kind = "accept",
            priority = 1840,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity.",
            complete = QuestState(1641, "activeOrCompleted"),
            route = {
                Point(1453, 0.4305, 0.3448, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "turnin-1641-the-tome-of-divinity",
            kind = "turnin",
            priority = 1850,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1641, "completed"),
            dependsOn = { "accept-1641-the-tome-of-divinity" },
            route = {
                Point(1453, 0.3981, 0.2980, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "accept-1642-the-tome-of-divinity",
            kind = "accept",
            priority = 1860,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity from Duthorian Rall in Stormwind Cathedral.",
            complete = QuestState(1642, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-1642-the-tome-of-divinity",
            kind = "turnin",
            priority = 1870,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1642, "completed"),
            dependsOn = { "accept-1642-the-tome-of-divinity" },
            route = {
                Point(1453, 0.3981, 0.2980, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "accept-1643-the-tome-of-divinity",
            kind = "accept",
            priority = 1880,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity.",
            complete = QuestState(1643, "activeOrCompleted"),
            route = {
                Point(1453, 0.3981, 0.2980, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "turnin-1338-stormpike-s-order",
            kind = "turnin",
            priority = 1890,
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
            id = "turnin-1643-the-tome-of-divinity",
            kind = "turnin",
            priority = 1900,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1643, "completed"),
            dependsOn = { "accept-1643-the-tome-of-divinity" },
            route = {
                Point(1453, 0.5708, 0.6174, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "accept-1644-the-tome-of-divinity",
            kind = "accept",
            priority = 1910,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 2 }
            } },
            text = "Accept The Tome of Divinity.",
            complete = QuestState(1644, "activeOrCompleted"),
            route = {
                Point(1453, 0.5708, 0.6174, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "turnin-1644-the-tome-of-divinity",
            kind = "turnin",
            priority = 1920,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 },
                { class = 2 }
            } },
            text = "Turn in The Tome of Divinity.",
            complete = QuestState(1644, "completed"),
            dependsOn = { "accept-1644-the-tome-of-divinity" },
            route = {
                Point(1453, 0.5708, 0.6174, "The Tome of Divinity",
                    "Travel to The Tome of Divinity.")
            }
            },
        {
            id = "turnin-6261-dungar-longdrink",
            kind = "turnin",
            priority = 1930,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 }
            } },
            text = "Turn in Dungar Longdrink.",
            complete = QuestState(6261, "completed"),
            dependsOn = { "accept-6261-dungar-longdrink" },
            route = {
                Point(1453, 0.6242, 0.6228, "Dungar Longdrink",
                    "Travel to Dungar Longdrink.")
            }
            },
        {
            id = "accept-6285-return-to-lewis",
            kind = "accept",
            priority = 1940,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 }
            } },
            text = "Accept Return to Lewis.",
            complete = QuestState(6285, "activeOrCompleted"),
            route = {
                Point(1453, 0.6242, 0.6228, "Return to Lewis",
                    "Travel to Lewis.")
            }
            },
        {
            id = "turnin-6285-return-to-lewis",
            kind = "turnin",
            priority = 1950,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 1 }
            } },
            text = "Turn in Return to Lewis.",
            complete = QuestState(6285, "completed"),
            dependsOn = { "accept-6285-return-to-lewis" },
            route = {
                Point(1436, 0.5700, 0.4717, "Return to Lewis",
                    "Travel to Lewis.")
            }
            },
        {
            id = "woven-accept-92479-a-scribbled-letter",
            kind = "accept",
            priority = 1960,
            conditions = {
                all = {
                    { race = 1 },
                    { class = 1 },
                },
            },
            text = "Accept A Scribbled Letter from Marshal McBride in Northshire Abbey.",
            complete = QuestState(92479, "activeOrCompleted"),
            route = {
                Point(1429, 0.4880, 0.4160, "Marshal McBride", "Travel to Marshal McBride."),
            },
        },
        {
            id = "woven-turnin-92479-a-scribbled-letter",
            kind = "turnin",
            priority = 1970,
            conditions = {
                all = {
                    { race = 1 },
                    { class = 1 },
                },
            },
            text = "Turn in A Scribbled Letter to Tordrin Sternblade in Northshire Abbey.",
            dependsOn = { "woven-accept-92479-a-scribbled-letter" },
            complete = QuestState(92479, "completed"),
            route = {
                Point(1429, 0.5120, 0.4080, "Tordrin Sternblade", "Travel to Tordrin Sternblade."),
            },
        },
        {
            id = "woven-turnin-91741-nibbled-on-book",
            kind = "turnin",
            priority = 1980,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { quest = { id = 91741, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in the Nibbled-On Book to Brother Paxton if a kobold dropped it.",
            complete = QuestState(91741, "completed"),
            route = {
                Point(1429, 0.4940, 0.4040, "Brother Paxton",
                    "Travel to Brother Paxton."),
            },
        },
        {
            id = "woven-accept-91743-rascally-rodents",
            kind = "accept",
            priority = 1990,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Accept Rascally Rodents from Brother Paxton in Northshire Abbey.",
            dependsOn = { "woven-turnin-91741-nibbled-on-book" },
            complete = QuestState(91743, "activeOrCompleted"),
            route = {
                Point(1429, 0.4940, 0.4040, "Brother Paxton",
                    "Travel to Brother Paxton."),
            },
        },
        {
            id = "woven-objective-91743-rascally-rodents",
            kind = "objective",
            priority = 2000,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Collect 8 Stolen Books from the Northshire kobolds.",
            dependsOn = { "woven-accept-91743-rascally-rodents" },
            complete = QuestState(91743, "complete"),
            route = {
                Point(1429, 0.4740, 0.3620, "Kobold Vermin",
                    "Travel to Kobold Vermin."),
            },
        },
        {
            id = "woven-turnin-91743-rascally-rodents",
            kind = "turnin",
            priority = 2010,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Turn in Rascally Rodents to Brother Paxton.",
            dependsOn = { "woven-objective-91743-rascally-rodents" },
            complete = QuestState(91743, "completed"),
            route = {
                Point(1429, 0.4940, 0.4040, "Brother Paxton",
                    "Travel to Brother Paxton."),
            },
        },
        {
            id = "woven-accept-92124-book-inventory",
            kind = "accept",
            priority = 2020,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Accept Book Inventory from Brother Paxton.",
            dependsOn = { "woven-turnin-91743-rascally-rodents" },
            complete = QuestState(92124, "activeOrCompleted"),
            route = {
                Point(1429, 0.4940, 0.4040, "Brother Paxton",
                "Travel to Brother Paxton."),
            },
        },
        {
            id = "woven-turnin-92124-book-inventory",
            kind = "turnin",
            priority = 2030,
            conditions = {
                all = {
                    { level = { min = 2 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Turn in Book Inventory to Daniel.",
            dependsOn = { "woven-accept-92124-book-inventory" },
            complete = QuestState(92124, "completed"),
            route = {
                Point(1429, 0.4940, 0.4060, "Daniel",
                    "Travel to Daniel."),
            },
        },
        {
            id = "woven-accept-91745-mining-consultant",
            kind = "accept",
            priority = 2040,
            conditions = {
                all = {
                    { level = { min = 3 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Accept Mining Consultant from Brother Paxton.",
            dependsOn = { "woven-turnin-92124-book-inventory" },
            complete = QuestState(91745, "activeOrCompleted"),
            route = {
                Point(1429, 0.4940, 0.4040, "Brother Paxton",
                    "Travel to Brother Paxton."),
            },
        },
        {
            id = "woven-turnin-91745-mining-consultant",
            kind = "turnin",
            priority = 2050,
            conditions = {
                all = {
                    { level = { min = 3 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Turn in Mining Consultant to Kelsey Fargo outside Echo Ridge Mine.",
            dependsOn = { "woven-accept-91745-mining-consultant" },
            complete = QuestState(91745, "completed"),
            route = {
                Point(1429, 0.4720, 0.3220, "Kelsey Fargo",
                    "Travel to Kelsey Fargo."),
            },
        },
        {
            id = "woven-accept-91752-the-big-picture",
            kind = "accept",
            priority = 2060,
            conditions = {
                all = {
                    { level = { min = 3 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Accept The Big Picture from Kelsey Fargo.",
            dependsOn = { "woven-turnin-91745-mining-consultant" },
            complete = QuestState(91752, "activeOrCompleted"),
            route = {
                Point(1429, 0.4720, 0.3220, "Kelsey Fargo",
                    "Travel to Kelsey Fargo."),
            },
        },
        {
            id = "woven-objective-91752-the-big-picture",
            kind = "objective",
            priority = 2070,
            conditions = {
                all = {
                    { level = { min = 3 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Take the Sack of Picture Books from Shinyfinder Narf in Echo Ridge Mine.",
            dependsOn = { "woven-accept-91752-the-big-picture" },
            complete = QuestState(91752, "complete"),
            route = {
                Point(1429, 0.4900, 0.2780, "Shinyfinder Narf",
                    "Travel to Shinyfinder Narf."),
            },
        },
        {
            id = "woven-turnin-91752-the-big-picture",
            kind = "turnin",
            priority = 2080,
            conditions = {
                all = {
                    { level = { min = 3 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Turn in The Big Picture to Marshal McBride.",
            dependsOn = { "woven-objective-91752-the-big-picture" },
            complete = QuestState(91752, "completed"),
            route = {
                Point(1429, 0.4880, 0.4160, "Marshal McBride",
                    "Travel to Marshal McBride."),
            },
        },
        {
            id = "woven-accept-91758-follow-that-kobold",
            kind = "accept",
            priority = 2090,
            conditions = {
                all = {
                    { level = { min = 4 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Accept Follow That Kobold! from Marshal McBride.",
            dependsOn = { "woven-turnin-91752-the-big-picture" },
            complete = QuestState(91758, "activeOrCompleted"),
            route = {
                Point(1429, 0.4880, 0.4160, "Marshal McBride",
                    "Travel to Marshal McBride."),
            },
        },
        {
            id = "woven-turnin-91758-follow-that-kobold",
            kind = "turnin",
            priority = 2100,
            conditions = {
                all = {
                    { level = { min = 4 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Turn in Follow That Kobold! to Tordrin Sternblade behind the abbey.",
            dependsOn = { "woven-accept-91758-follow-that-kobold" },
            complete = QuestState(91758, "completed"),
            route = {
                Point(1429, 0.5120, 0.4080, "Tordrin Sternblade",
                    "Travel to Tordrin Sternblade."),
            },
        },
        {
            id = "woven-accept-91772-shhh-were-hunting-kobolds",
            kind = "accept",
            priority = 2110,
            conditions = {
                all = {
                    { level = { min = 4 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Accept Shhh! We're Hunting Kobolds from Tordrin Sternblade. Use the Kobold Tracking Kit on the tracks.",
            dependsOn = { "woven-turnin-91758-follow-that-kobold" },
            complete = QuestState(91772, "activeOrCompleted"),
            route = {
                Point(1429, 0.5120, 0.4080, "Tordrin Sternblade",
                    "Travel to Tordrin Sternblade."),
            },
        },
        {
            id = "woven-accept-96627-the-adventurer",
            kind = "accept",
            priority = 2120,
            conditions = { level = { min = 6 } },
            text = "Accept The Adventurer from Marshal McBride in Northshire Abbey.",
            complete = QuestState(96627, "activeOrCompleted"),
            route = {
                Point(1429, 0.4880, 0.4160, "Marshal McBride",
                    "Travel to Marshal McBride."),
            },
        },
        {
            id = "woven-turnin-96627-the-adventurer",
            kind = "turnin",
            priority = 2130,
            conditions = { level = { min = 6 } },
            text = "Turn in The Adventurer to Sam Sarsaparilla near Goldshire.",
            dependsOn = { "woven-accept-96627-the-adventurer" },
            complete = QuestState(96627, "completed"),
            route = {
                Point(1429, 0.4480, 0.6320, "Sam Sarsaparilla",
                    "Travel to Sam Sarsaparilla."),
            },
        },
        {
            id = "woven-accept-96101-the-great-outdoors",
            kind = "accept",
            priority = 2140,
            conditions = { level = { min = 6 } },
            text = "Accept The Great Outdoors from Sam Sarsaparilla.",
            dependsOn = { "woven-turnin-96627-the-adventurer" },
            complete = QuestState(96101, "activeOrCompleted"),
            route = {
                Point(1429, 0.4480, 0.6320, "Sam Sarsaparilla",
                    "Travel to Sam Sarsaparilla."),
            },
        },
        {
            id = "woven-objective-96101-the-great-outdoors",
            kind = "objective",
            priority = 2150,
            conditions = { level = { min = 6 } },
            text = "Type /sit at Sam Sarsaparilla's campfire and wait until you gain the Boosted Rest buff.",
            dependsOn = { "woven-accept-96101-the-great-outdoors" },
            complete = QuestState(96101, "complete"),
        },
        {
            id = "woven-turnin-96101-the-great-outdoors",
            kind = "turnin",
            priority = 2160,
            conditions = { level = { min = 6 } },
            text = "Turn in The Great Outdoors to Sam Sarsaparilla.",
            dependsOn = { "woven-objective-96101-the-great-outdoors" },
            complete = QuestState(96101, "completed"),
            route = {
                Point(1429, 0.4480, 0.6320, "Sam Sarsaparilla",
                    "Travel to Sam Sarsaparilla."),
            },
        },
        {
            id = "woven-objective-91772-shhh-were-hunting-kobolds",
            kind = "objective",
            priority = 2170,
            conditions = {
                all = {
                    { level = { min = 4 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            useClientPin = true,
            text = "Follow the kobold tracks with the Kobold Tracking Kit.",
            dependsOn = { "woven-accept-91772-shhh-were-hunting-kobolds" },
            complete = QuestState(91772, "complete"),
            route = {
                Point(1429, 0.4220, 0.6580, "Marshal Dughan",
                    "Travel to Marshal Dughan."),
            },
        },
        {
            id = "woven-turnin-91772-shhh-were-hunting-kobolds",
            kind = "turnin",
            priority = 2180,
            conditions = {
                all = {
                    { level = { min = 4 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Turn in Shhh! We're Hunting Kobolds to Marshal Dughan.",
            dependsOn = { "woven-objective-91772-shhh-were-hunting-kobolds" },
            complete = QuestState(91772, "completed"),
            route = {
                Point(1429, 0.4220, 0.6580, "Marshal Dughan",
                    "Travel to Marshal Dughan."),
            },
        },
        {
            id = "woven-accept-91775-book-return",
            kind = "accept",
            priority = 2190,
            conditions = {
                all = {
                    { level = { min = 6 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Accept Book Return from Marshal Dughan.",
            dependsOn = { "woven-turnin-91772-shhh-were-hunting-kobolds" },
            complete = QuestState(91775, "activeOrCompleted"),
            route = {
                Point(1429, 0.4220, 0.6580, "Marshal Dughan",
                    "Travel to Marshal Dughan."),
            },
        },
        {
            id = "woven-accept-91751-rough-wolf-pelts",
            kind = "accept",
            priority = 2200,
            conditions = { level = { min = 7 } },
            text = "Accept Rough Wolf Pelts from Helene Peltskinner near Goldshire.",
            complete = QuestState(91751, "activeOrCompleted"),
            route = {
                Point(1429, 0.4620, 0.6220, "Helene Peltskinner",
                    "Travel to Helene Peltskinner."),
            },
        },
        {
            id = "woven-objective-91751-rough-wolf-pelts",
            kind = "objective",
            priority = 2210,
            conditions = { level = { min = 7 } },
            text = "Skin wolves for 7 Rough Wolf Pelts. A wolf may drop Elmpaw's Head. Use it if it does.",
            dependsOn = { "woven-accept-91751-rough-wolf-pelts" },
            complete = QuestState(91751, "complete"),
            route = {
                Point(1429, 0.7440, 0.6300, "Gray Forest Wolf",
                    "Travel to Gray Forest Wolf."),
            },
        },
        {
            id = "woven-turnin-91751-rough-wolf-pelts",
            kind = "turnin",
            priority = 2220,
            conditions = { level = { min = 7 } },
            text = "Turn in Rough Wolf Pelts to Helene Peltskinner.",
            dependsOn = { "woven-objective-91751-rough-wolf-pelts" },
            complete = QuestState(91751, "completed"),
            route = {
                Point(1429, 0.4620, 0.6220, "Helene Peltskinner",
                    "Travel to Helene Peltskinner."),
            },
        },
        {
            id = "woven-objective-91775-book-return",
            kind = "objective",
            priority = 2230,
            conditions = {
                all = {
                    { level = { min = 6 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Collect 6 Lost Books and Fun with Elementals from the Fargodeep kobolds. Use the Book Bag.",
            dependsOn = { "woven-accept-91775-book-return" },
            complete = QuestState(91775, "complete"),
            route = {
                Point(1429, 0.3960, 0.8020, "Kobold Miner",
                    "Travel to Kobold Miner."),
            },
        },
        {
            id = "woven-accept-99127-a-net-disaster",
            kind = "accept",
            priority = 2240,
            conditions = { level = { min = 7 } },
            text = "Accept A Net Disaster from Jason Mathers in Goldshire.",
            complete = QuestState(99127, "activeOrCompleted"),
            route = {
                Point(1429, 0.4740, 0.6220, "Jason Mathers",
                    "Travel to Jason Mathers."),
            },
        },
        {
            id = "woven-accept-99128-slimy-menace",
            kind = "accept",
            priority = 2250,
            conditions = { level = { min = 7 } },
            text = "Accept Slimy Menace from Jason Mathers. A murloc may drop Croaky's Head. Use it if it does.",
            dependsOn = { "woven-turnin-99127-a-net-disaster" },
            complete = QuestState(99128, "activeOrCompleted"),
            route = {
                Point(1429, 0.4740, 0.6220, "Jason Mathers",
                    "Travel to Jason Mathers."),
            },
        },
        {
            id = "woven-accept-99143-bottles-and-baubles",
            kind = "accept",
            priority = 2260,
            conditions = { level = { min = 7 } },
            text = "Accept Bottles and Baubles from Lee Brown in Goldshire.",
            complete = QuestState(99143, "activeOrCompleted"),
            route = {
                Point(1429, 0.4740, 0.6220, "Lee Brown",
                    "Travel to Lee Brown."),
            },
        },
        {
            id = "woven-turnin-91775-book-return",
            kind = "turnin",
            priority = 2270,
            conditions = {
                all = {
                    { level = { min = 6 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Turn in Book Return to Marshal Dughan.",
            dependsOn = { "woven-objective-91775-book-return" },
            complete = QuestState(91775, "completed"),
            route = {
                Point(1429, 0.4220, 0.6580, "Marshal Dughan",
                    "Travel to Marshal Dughan."),
            },
        },
        {
            id = "woven-accept-91777-rare-books",
            kind = "accept",
            priority = 2280,
            conditions = {
                all = {
                    { level = { min = 7 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Accept Rare Books from Marshal Dughan.",
            dependsOn = { "woven-turnin-91775-book-return" },
            complete = QuestState(91777, "activeOrCompleted"),
            route = {
                Point(1429, 0.4220, 0.6580, "Marshal Dughan",
                    "Travel to Marshal Dughan."),
            },
        },
        {
            id = "woven-objective-99127-a-net-disaster",
            kind = "objective",
            priority = 2290,
            conditions = { level = { min = 7 } },
            text = "Check the fishing nets at Crystal Lake for 7 Half-Eaten Fish.",
            dependsOn = { "woven-accept-99127-a-net-disaster" },
            complete = QuestState(99127, "complete"),
            route = {
                Point(1429, 0.5020, 0.6680, "Crystal Lake",
                    "Travel to Crystal Lake."),
            },
        },
        {
            id = "woven-objective-99128-slimy-menace",
            kind = "objective",
            priority = 2300,
            conditions = { level = { min = 7 } },
            text = "Kill the murlocs at Crystal Lake.",
            dependsOn = { "woven-accept-99128-slimy-menace" },
            complete = QuestState(99128, "complete"),
            route = {
                Point(1429, 0.5020, 0.6680, "Murloc",
                    "Travel to Murloc."),
            },
        },
        {
            id = "woven-objective-99143-bottles-and-baubles",
            kind = "objective",
            priority = 2310,
            conditions = { level = { min = 7 } },
            text = "Collect 6 pieces of shiny junk from the murloc camp.",
            dependsOn = { "woven-accept-99143-bottles-and-baubles" },
            complete = QuestState(99143, "complete"),
            route = {
                Point(1429, 0.5020, 0.6680, "Murloc camp",
                    "Travel to Murloc camp."),
            },
        },
        {
            id = "woven-turnin-91777-rare-books",
            kind = "turnin",
            priority = 2320,
            conditions = {
                all = {
                    { level = { min = 7 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Turn in Rare Books to Brother Paxton in Northshire Abbey.",
            dependsOn = { "woven-objective-91777-rare-books" },
            complete = QuestState(91777, "completed"),
            route = {
                Point(1429, 0.4940, 0.4040, "Brother Paxton",
                    "Travel to Brother Paxton."),
            },
        },
        {
            id = "woven-objective-91777-rare-books",
            kind = "objective",
            priority = 2330,
            conditions = {
                all = {
                    { level = { min = 7 } },
                    { quest = { id = 91741, state = "completed" } },
                },
            },
            text = "Recover Geomancy for Curious Young Wizards and Arcane Explainer from Mother Fang and Geosculptor Yip in Jasperlode Mine.",
            dependsOn = { "woven-accept-91777-rare-books" },
            complete = QuestState(91777, "complete"),
            route = {
                Point(1429, 0.6180, 0.4780, "Mother Fang",
                    "Travel to Mother Fang."),
            },
        },
        {
            id = "woven-accept-91723-delicate-instruments",
            kind = "accept",
            priority = 2340,
            conditions = { level = { min = 10 } },
            text = "Accept Delicate Instruments from Hamish Bergwort in the Tower of Azora.",
            complete = QuestState(91723, "activeOrCompleted"),
            route = {
                Point(1429, 0.6500, 0.6980, "Hamish Bergwort",
                    "Travel to Hamish Bergwort."),
            },
        },
        {
            id = "woven-accept-91725-stolen-enchanting-supplies",
            kind = "accept",
            priority = 2350,
            conditions = { level = { min = 10 } },
            text = "Accept Stolen Enchanting Supplies from Blixie Fitzwink near the Tower of Azora.",
            complete = QuestState(91725, "activeOrCompleted"),
            route = {
                Point(1429, 0.6320, 0.7260, "Blixie Fitzwink",
                    "Travel to Blixie Fitzwink."),
            },
        },
        {
            id = "woven-accept-91732-good-steel",
            kind = "accept",
            priority = 2360,
            conditions = { level = { min = 10 } },
            text = "Accept Good Steel from Hagar Lowe in Eastvale Logging Camp.",
            complete = QuestState(91732, "activeOrCompleted"),
            route = {
                Point(1429, 0.8240, 0.6380, "Hagar Lowe",
                    "Travel to Hagar Lowe."),
            },
        },
        {
            id = "woven-objective-91723-delicate-instruments",
            kind = "objective",
            priority = 2370,
            conditions = { level = { min = 10 } },
            text = "Kill 8 Kobold Geomancers in Jasperlode Mine. Disenchant their Crude Wax Effigies if you are on An Enchanting Lesson.",
            dependsOn = { "woven-accept-91723-delicate-instruments" },
            complete = QuestState(91723, "complete"),
            route = {
                Point(1429, 0.6060, 0.5080, "Kobold Geomancer",
                    "Travel to Kobold Geomancer."),
            },
        },
        {
            id = "woven-turnin-91723-delicate-instruments",
            kind = "turnin",
            priority = 2380,
            conditions = { level = { min = 10 } },
            text = "Turn in Delicate Instruments to Hamish Bergwort.",
            dependsOn = { "woven-objective-91723-delicate-instruments" },
            complete = QuestState(91723, "completed"),
            route = {
                Point(1429, 0.6500, 0.6980, "Hamish Bergwort",
                    "Travel to Hamish Bergwort."),
            },
        },
        {
            id = "woven-accept-91724-delicate-instruments",
            kind = "accept",
            priority = 2390,
            conditions = { level = { min = 10 } },
            text = "Accept the next Delicate Instruments from Hamish Bergwort.",
            dependsOn = { "woven-turnin-91723-delicate-instruments" },
            complete = QuestState(91724, "activeOrCompleted"),
            route = {
                Point(1429, 0.6500, 0.6980, "Hamish Bergwort",
                    "Travel to Hamish Bergwort."),
            },
        },
        {
            id = "woven-objective-91732-good-steel",
            kind = "objective",
            priority = 2400,
            conditions = { level = { min = 10 } },
            text = "Collect 4 Mining Tools from Jasperlode Mine.",
            dependsOn = { "woven-accept-91732-good-steel" },
            complete = QuestState(91732, "complete"),
            route = {
                Point(1429, 0.6060, 0.5080, "Jasperlode Mine",
                    "Travel to Jasperlode Mine."),
            },
        },
        {
            id = "woven-accept-91733-downstream",
            kind = "accept",
            priority = 2410,
            conditions = { level = { min = 10 } },
            text = "Accept Downstream from Ormin Pelford in Eastvale Logging Camp.",
            complete = QuestState(91733, "activeOrCompleted"),
            route = {
                Point(1429, 0.7640, 0.7200, "Ormin Pelford",
                    "Travel to Ormin Pelford."),
            },
        },
        {
            id = "woven-objective-91733-downstream",
            kind = "objective",
            priority = 2420,
            conditions = { level = { min = 10 } },
            text = "Collect the Waterlogged Axe, Waterlogged Saw, and Waterlogged Toolbox downstream from Eastvale.",
            dependsOn = { "woven-accept-91733-downstream" },
            complete = QuestState(91733, "complete"),
            route = {
                Point(1429, 0.7640, 0.7200, "Eastvale river",
                    "Travel to Eastvale river."),
            },
        },
        {
            id = "woven-turnin-91733-downstream",
            kind = "turnin",
            priority = 2430,
            conditions = { level = { min = 10 } },
            text = "Turn in Downstream to Ormin Pelford.",
            dependsOn = { "woven-objective-91733-downstream" },
            complete = QuestState(91733, "completed"),
            route = {
                Point(1429, 0.7640, 0.7200, "Ormin Pelford",
                    "Travel to Ormin Pelford."),
            },
        },
        {
            id = "woven-objective-91724-delicate-instruments",
            kind = "objective",
            priority = 2440,
            conditions = { level = { min = 10 } },
            text = "Kill 6 Defias Rogue Wizards at Stone Cairn Lake.",
            dependsOn = { "woven-accept-91724-delicate-instruments" },
            complete = QuestState(91724, "complete"),
            route = {
                Point(1429, 0.7968, 0.5548, "Defias Rogue Wizard",
                    "Travel to Defias Rogue Wizard."),
            },
        },
        {
            id = "woven-objective-91725-stolen-enchanting-supplies",
            kind = "objective",
            priority = 2450,
            conditions = { level = { min = 10 } },
            text = "Collect 5 Stolen Enchanting Supplies from the gnoll camps around Stone Cairn Lake.",
            dependsOn = { "woven-accept-91725-stolen-enchanting-supplies" },
            complete = QuestState(91725, "complete"),
            route = {
                Point(1429, 0.7968, 0.5548, "Stone Cairn Lake",
                    "Travel to Stone Cairn Lake."),
            },
        },
        {
            id = "woven-turnin-91724-delicate-instruments",
            kind = "turnin",
            priority = 2460,
            conditions = { level = { min = 10 } },
            text = "Turn in Delicate Instruments to Hamish Bergwort.",
            dependsOn = { "woven-objective-91724-delicate-instruments" },
            complete = QuestState(91724, "completed"),
            route = {
                Point(1429, 0.6500, 0.6980, "Hamish Bergwort",
                    "Travel to Hamish Bergwort."),
            },
        },
        {
            id = "woven-turnin-91725-stolen-enchanting-supplies",
            kind = "turnin",
            priority = 2470,
            conditions = { level = { min = 10 } },
            text = "Turn in Stolen Enchanting Supplies to Blixie Fitzwink.",
            dependsOn = { "woven-objective-91725-stolen-enchanting-supplies" },
            complete = QuestState(91725, "completed"),
            route = {
                Point(1429, 0.6320, 0.7260, "Blixie Fitzwink",
                    "Travel to Blixie Fitzwink."),
            },
        },
        {
            id = "woven-turnin-91732-good-steel",
            kind = "turnin",
            priority = 2480,
            conditions = { level = { min = 10 } },
            text = "Turn in Good Steel to Hagar Lowe.",
            dependsOn = { "woven-objective-91732-good-steel" },
            complete = QuestState(91732, "completed"),
            route = {
                Point(1429, 0.8240, 0.6380, "Hagar Lowe",
                    "Travel to Hagar Lowe."),
            },
        },
        {
            id = "woven-turnin-99127-a-net-disaster",
            kind = "turnin",
            priority = 2490,
            conditions = { level = { min = 7 } },
            text = "Turn in A Net Disaster to Jason Mathers.",
            dependsOn = { "woven-objective-99127-a-net-disaster" },
            complete = QuestState(99127, "completed"),
            route = {
                Point(1429, 0.4740, 0.6220, "Jason Mathers",
                    "Travel to Jason Mathers."),
            },
        },
        {
            id = "woven-turnin-99128-slimy-menace",
            kind = "turnin",
            priority = 2500,
            conditions = { level = { min = 7 } },
            text = "Turn in Slimy Menace to Jason Mathers.",
            dependsOn = { "woven-objective-99128-slimy-menace" },
            complete = QuestState(99128, "completed"),
            route = {
                Point(1429, 0.4740, 0.6220, "Jason Mathers",
                    "Travel to Jason Mathers."),
            },
        },
        {
            id = "woven-turnin-99143-bottles-and-baubles",
            kind = "turnin",
            priority = 2510,
            conditions = { level = { min = 7 } },
            text = "Turn in Bottles and Baubles to Lee Brown.",
            dependsOn = { "woven-objective-99143-bottles-and-baubles" },
            complete = QuestState(99143, "completed"),
            route = {
                Point(1429, 0.4740, 0.6220, "Lee Brown",
                    "Travel to Lee Brown."),
            },
        },
        {
            id = "woven-accept-99129-a-man-about-a-murloc",
            kind = "accept",
            priority = 2520,
            conditions = { level = { min = 7 } },
            text = "Accept A Man About a Murloc from Jason Mathers.",
            dependsOn = { "woven-turnin-99128-slimy-menace" },
            complete = QuestState(99129, "activeOrCompleted"),
            route = {
                Point(1429, 0.4740, 0.6220, "Jason Mathers",
                "Travel to Jason Mathers."),
            },
        },
        {
            id = "woven-turnin-99129-a-man-about-a-murloc",
            kind = "turnin",
            priority = 2530,
            conditions = { level = { min = 7 } },
            text = "Turn in A Man About a Murloc to Remy Two Times.",
            dependsOn = { "woven-accept-99129-a-man-about-a-murloc" },
            complete = QuestState(99129, "completed"),
            route = {
                Point(1429, 0.4220, 0.6720, "Remy Two Times",
                    "Travel to Remy Two Times."),
            },
        },
        {
            id = "woven-accept-99130-an-enticing-offer",
            kind = "accept",
            priority = 2540,
            conditions = { level = { min = 7 } },
            text = "Accept An Enticing Offer from Remy Two Times.",
            dependsOn = { "woven-turnin-99129-a-man-about-a-murloc" },
            complete = QuestState(99130, "activeOrCompleted"),
            route = {
                Point(1429, 0.4220, 0.6720, "Remy Two Times",
                    "Travel to Remy Two Times."),
            },
        },
        {
            id = "woven-objective-99130-an-enticing-offer",
            kind = "objective",
            priority = 2550,
            conditions = { level = { min = 7 } },
            text = "Collect 18 Duskweed Petals and 6 Vials of Animal Blood.",
            dependsOn = { "woven-accept-99130-an-enticing-offer" },
            complete = QuestState(99130, "complete"),
            route = {
                Point(1429, 0.4180, 0.6900, "Stonetusk Boar",
                    "Travel to Stonetusk Boar."),
            },
        },
        {
            id = "woven-turnin-99130-an-enticing-offer",
            kind = "turnin",
            priority = 2560,
            conditions = { level = { min = 7 } },
            text = "Turn in An Enticing Offer to Remy Two Times.",
            dependsOn = { "woven-objective-99130-an-enticing-offer" },
            complete = QuestState(99130, "completed"),
            route = {
                Point(1429, 0.4220, 0.6720, "Remy Two Times",
                    "Travel to Remy Two Times."),
            },
        },
        {
            id = "woven-accept-99131-baited-for-success",
            kind = "accept",
            priority = 2570,
            conditions = { level = { min = 7 } },
            text = "Accept Baited for Success from Remy Two Times.",
            dependsOn = { "woven-turnin-99130-an-enticing-offer" },
            complete = QuestState(99131, "activeOrCompleted"),
            route = {
                Point(1429, 0.4220, 0.6720, "Remy Two Times",
                "Travel to Remy Two Times."),
            },
        },
        {
            id = "woven-turnin-99131-baited-for-success",
            kind = "turnin",
            priority = 2580,
            conditions = { level = { min = 7 } },
            text = "Return to Jason Mathers.",
            dependsOn = { "woven-accept-99131-baited-for-success" },
            complete = QuestState(99131, "completed"),
            route = {
                Point(1429, 0.4740, 0.6220, "Jason Mathers",
                    "Travel to Jason Mathers."),
            },
        },
        {
            id = "woven-accept-94774-divine-grace",
            kind = "accept",
            priority = 2590,
            conditions = {
                all = {
                    { race = 1 },
                    { class = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Divine Grace from Priestess Josetta in Goldshire.",
            complete = QuestState(94774, "activeOrCompleted"),
            route = {
                Point(1429, 0.4340, 0.6560, "Priestess Josetta", "Travel to Priestess Josetta."),
            },
        },
        {
            id = "woven-turnin-94774-divine-grace",
            kind = "turnin",
            priority = 2600,
            conditions = {
                all = {
                    { race = 1 },
                    { class = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Divine Grace to High Priestess Laurena in the Cathedral of Light.",
            dependsOn = { "woven-accept-94774-divine-grace" },
            complete = QuestState(94774, "completed"),
            route = {
                Point(1453, 0.3880, 0.2640, "High Priestess Laurena", "Travel to High Priestess Laurena."),
            },
        },
        {
            id = "woven-accept-94773-divine-grace-laurena",
            kind = "accept",
            priority = 2610,
            conditions = {
                all = {
                    { race = 1 },
                    { class = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Divine Grace from High Priestess Laurena in the Cathedral of Light.",
            dependsOn = { "woven-turnin-94774-divine-grace" },
            complete = QuestState(94773, "activeOrCompleted"),
            route = {
                Point(1453, 0.3880, 0.2640, "High Priestess Laurena", "Travel to High Priestess Laurena."),
            },
        },
        {
            id = "woven-objective-94773-divine-grace-laurena",
            kind = "objective",
            priority = 2620,
            conditions = {
                all = {
                    { race = 1 },
                    { class = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Complete Divine Grace for High Priestess Laurena. The guide follows the pin in your quest log.",
            dependsOn = { "woven-accept-94773-divine-grace-laurena" },
            useClientPin = true,
            complete = QuestState(94773, "complete"),
            route = {
                Point(1453, 0.3880, 0.2640, "High Priestess Laurena", "Travel to High Priestess Laurena."),
            },
        },
        {
            id = "woven-turnin-94773-divine-grace-laurena",
            kind = "turnin",
            priority = 2630,
            conditions = {
                all = {
                    { race = 1 },
                    { class = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Divine Grace to High Priestess Laurena in the Cathedral of Light.",
            dependsOn = { "woven-objective-94773-divine-grace-laurena" },
            complete = QuestState(94773, "completed"),
            route = {
                Point(1453, 0.3880, 0.2640, "High Priestess Laurena", "Travel to High Priestess Laurena."),
            },
        },
        {
            id = "woven-accept-94792-taming-the-beast",
            kind = "accept",
            priority = 2640,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Josephine Carson in Goldshire.",
            complete = QuestState(94792, "activeOrCompleted"),
            route = {
                Point(1429, 0.4120, 0.6620, "Josephine Carson", "Travel to Josephine Carson."),
            },
        },
        {
            id = "woven-objective-94792-taming-the-beast",
            kind = "objective",
            priority = 2650,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Tame the beast Josephine Carson names. The guide follows the pin in your quest log.",
            dependsOn = { "woven-accept-94792-taming-the-beast" },
            useClientPin = true,
            complete = QuestState(94792, "complete"),
            route = {
                Point(1429, 0.4120, 0.6620, "Josephine Carson", "Travel to Josephine Carson."),
            },
        },
        {
            id = "woven-turnin-94792-taming-the-beast",
            kind = "turnin",
            priority = 2660,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Josephine Carson in Goldshire.",
            dependsOn = { "woven-objective-94792-taming-the-beast" },
            complete = QuestState(94792, "completed"),
            route = {
                Point(1429, 0.4120, 0.6620, "Josephine Carson", "Travel to Josephine Carson."),
            },
        },
        {
            id = "woven-accept-94863-taming-the-beast-2",
            kind = "accept",
            priority = 2670,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Josephine Carson in Goldshire.",
            dependsOn = { "woven-turnin-94792-taming-the-beast" },
            complete = QuestState(94863, "activeOrCompleted"),
            route = {
                Point(1429, 0.4120, 0.6620, "Josephine Carson", "Travel to Josephine Carson."),
            },
        },
        {
            id = "woven-objective-94863-taming-the-beast-2",
            kind = "objective",
            priority = 2680,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Tame the beast Josephine Carson names. The guide follows the pin in your quest log.",
            dependsOn = { "woven-accept-94863-taming-the-beast-2" },
            useClientPin = true,
            complete = QuestState(94863, "complete"),
            route = {
                Point(1429, 0.4120, 0.6620, "Josephine Carson", "Travel to Josephine Carson."),
            },
        },
        {
            id = "woven-turnin-94863-taming-the-beast-2",
            kind = "turnin",
            priority = 2690,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Josephine Carson in Goldshire.",
            dependsOn = { "woven-objective-94863-taming-the-beast-2" },
            complete = QuestState(94863, "completed"),
            route = {
                Point(1429, 0.4120, 0.6620, "Josephine Carson", "Travel to Josephine Carson."),
            },
        },
        {
            id = "woven-accept-94864-taming-the-beast-3",
            kind = "accept",
            priority = 2700,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Josephine Carson in Goldshire.",
            dependsOn = { "woven-turnin-94863-taming-the-beast-2" },
            complete = QuestState(94864, "activeOrCompleted"),
            route = {
                Point(1429, 0.4120, 0.6620, "Josephine Carson", "Travel to Josephine Carson."),
            },
        },
        {
            id = "woven-objective-94864-taming-the-beast-3",
            kind = "objective",
            priority = 2710,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Tame the beast Josephine Carson names. The guide follows the pin in your quest log.",
            dependsOn = { "woven-accept-94864-taming-the-beast-3" },
            useClientPin = true,
            complete = QuestState(94864, "complete"),
            route = {
                Point(1429, 0.4120, 0.6620, "Josephine Carson", "Travel to Josephine Carson."),
            },
        },
        {
            id = "woven-turnin-94864-taming-the-beast-3",
            kind = "turnin",
            priority = 2720,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Josephine Carson in Goldshire.",
            dependsOn = { "woven-objective-94864-taming-the-beast-3" },
            complete = QuestState(94864, "completed"),
            route = {
                Point(1429, 0.4120, 0.6620, "Josephine Carson", "Travel to Josephine Carson."),
            },
        },
        {
            id = "woven-accept-94793-training-the-beast",
            kind = "accept",
            priority = 2730,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Training the Beast from Josephine Carson in Goldshire.",
            dependsOn = { "woven-turnin-94864-taming-the-beast-3" },
            complete = QuestState(94793, "activeOrCompleted"),
            route = {
                Point(1429, 0.4120, 0.6620, "Josephine Carson", "Travel to Josephine Carson."),
            },
        },
        {
            id = "woven-turnin-94793-training-the-beast",
            kind = "turnin",
            priority = 2740,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Training the Beast to Isaac Chan in Goldshire.",
            dependsOn = { "woven-accept-94793-training-the-beast" },
            complete = QuestState(94793, "completed"),
            route = {
                Point(1429, 0.4180, 0.6640, "Isaac Chan", "Travel to Isaac Chan."),
            },
        },
        {
            id = "woven-turnin-91746-elmpaws-head",
            kind = "turnin",
            priority = 2750,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 91746, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Elmpaw's Head to Helene Peltskinner if you found it.",
            complete = QuestState(91746, "completed"),
            route = {
                Point(1429, 0.4620, 0.6220, "Helene Peltskinner",
                    "Travel to Helene Peltskinner."),
            },
        },
        {
            id = "woven-accept-91738-an-apple-treat",
            kind = "accept",
            priority = 2760,
            conditions = { level = { min = 10 } },
            text = "Accept An Apple Treat from Sergeant De Vries at Westbrook Garrison.",
            complete = QuestState(91738, "activeOrCompleted"),
            route = {
                Point(1429, 0.2400, 0.7300, "Sergeant De Vries",
                    "Travel to Sergeant De Vries."),
            },
        },
        {
            id = "woven-objective-91738-an-apple-treat",
            kind = "objective",
            priority = 2770,
            conditions = { level = { min = 10 } },
            text = "Collect Thunder Applejack for Sergeant De Vries.",
            dependsOn = { "woven-accept-91738-an-apple-treat" },
            complete = QuestState(91738, "complete"),
            route = {
                Point(1429, 0.2400, 0.7300, "Sergeant De Vries",
                    "Travel to Sergeant De Vries."),
            },
        },
        {
            id = "woven-turnin-91738-an-apple-treat",
            kind = "turnin",
            priority = 2780,
            conditions = { level = { min = 10 } },
            text = "Turn in An Apple Treat to Sergeant De Vries.",
            dependsOn = { "woven-objective-91738-an-apple-treat" },
            complete = QuestState(91738, "completed"),
            route = {
                Point(1429, 0.2400, 0.7300, "Sergeant De Vries",
                    "Travel to Sergeant De Vries."),
            },
        },
        {
            id = "woven-turnin-91740-croakys-head",
            kind = "turnin",
            priority = 2790,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 91740, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Croaky's Head to Merell Ross at Ridgepoint Tower if a murloc dropped it.",
            complete = QuestState(91740, "completed"),
            route = {
                Point(1429, 0.8460, 0.7920, "Merell Ross",
                    "Travel to Merell Ross."),
            },
        },
    },
})
