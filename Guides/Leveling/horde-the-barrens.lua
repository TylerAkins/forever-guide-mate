local _, ns = ...

-- Forever Casual spine: The Barrens (24-25)
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
    THE_BARRENS = 1413,
    THUNDER_BLUFF = 1456,
}

ns:RegisterGuide({
    id = "leveling-era-horde-the-barrens",
    title = "The Barrens",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 24 } },
        },
    },
    goals = {
        {
            id = "turnin-1067-return-to-thunder-bluff",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Return to Thunder Bluff.",
            complete = QuestState(1067, "completed"),
            route = {
                Point(1456, 0.2981, 0.2982, "Return to Thunder Bluff",
                    "Travel to Thunder Bluff."),
            },
        },
        {
            id = "accept-1086-the-flying-machine-airport",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept The Flying Machine Airport.",
            complete = QuestState(1086, "activeOrCompleted"),
            route = {
                Point(1456, 0.2281, 0.2090, "The Flying Machine Airport",
                    "Travel to The Flying Machine Airport."),
            },
        },
        {
            id = "accept-1195-the-sacred-flame",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept The Sacred Flame.",
            complete = QuestState(1195, "activeOrCompleted"),
            route = {
                Point(1456, 0.2981, 0.2982, "The Sacred Flame",
                    "Travel to The Sacred Flame."),
            },
        },
        {
            id = "turnin-31-aquatic-form",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
                { class = 11 },
            } },
            text = "Turn in Aquatic Form.",
            complete = QuestState(31, "completed"),
            route = {
                Point(1456, 0.7648, 0.2722, "Aquatic Form",
                    "Travel to Aquatic Form."),
            },
        },
        {
            id = "accept-879-betrayal-from-within",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Accept Betrayal from Within.",
            complete = QuestState(879, "activeOrCompleted"),
            route = {
                Point(1413, 0.4455, 0.5924, "Betrayal from Within",
                    "Travel to Betrayal from Within."),
            },
        },
        {
            id = "accept-893-weapons-of-choice",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Accept Weapons of Choice.",
            complete = QuestState(893, "activeOrCompleted"),
            route = {
                Point(1413, 0.4510, 0.5768, "Weapons of Choice",
                    "Travel to Weapons of Choice."),
            },
        },
        {
            id = "note-884-owatanka-loot",
            kind = "note",
            priority = 65,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Kill Owatanka and loot Owatanka's Tail.",
            complete = { any = {
                { quest = { id = 884, state = "activeOrCompleted" } },
                { item = "Owatanka's Tail" },
            } },
            route = {
                Point(1413, 0.5400, 0.6300, "Owatanka",
                    "Travel to Owatanka."),
            },
        },
        {
            id = "accept-884-owatanka",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Use the Owatanka's Tail to accept Owatanka.",
            complete = QuestState(884, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "accept-868-egg-hunt",
            kind = "accept",
            priority = 75,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Accept Egg Hunt.",
            complete = QuestState(868, "activeOrCompleted"),
            route = {
                Point(1413, 0.4440, 0.5910, "Egg Hunt",
                    "Travel to Camp Taurajo."),
            },
        },
        {
            id = "objective-868-1-silithid-mound",
            kind = "objective",
            priority = 80,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Click Silithid Mound.",
            complete = QuestObjective(868, 1, "Silithid Mound"),
            dependsOn = { "accept-868-egg-hunt" },
            route = {
                Point(1413, 0.4738, 0.7012, "Silithid Mound",
                    "Travel to Silithid Mound."),
            },
        },
        {
            id = "note-897-the-harvester-loot",
            kind = "note",
            priority = 85,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Kill Silithid Harvester and loot the Harvester's Head.",
            complete = { any = {
                { quest = { id = 897, state = "activeOrCompleted" } },
                { item = "Harvester's Head" },
            } },
            route = {
                Point(1413, 0.4780, 0.7020, "Silithid Harvester",
                    "Travel to Silithid Harvester."),
            },
        },
        {
            id = "accept-897-the-harvester",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Use the Harvester's Head to accept The Harvester.",
            complete = QuestState(897, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-1536-call-of-water",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Water.",
            complete = QuestState(1536, "completed"),
            route = {
                Point(1413, 0.4342, 0.7741, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "accept-1534-call-of-water",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Water.",
            complete = QuestState(1534, "activeOrCompleted"),
            route = {
                Point(1413, 0.4342, 0.7741, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "accept-843-gann-s-reclamation",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Accept Gann's Reclamation.",
            complete = QuestState(843, "activeOrCompleted"),
            route = {
                Point(1413, 0.4613, 0.7554, "Gann's Reclamation",
                    "Travel to Gann's Reclamation."),
            },
        },
        {
            id = "objective-879-1-kuz",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Kill Kuz.",
            complete = QuestObjective(879, 1, "Kuz"),
            dependsOn = { "accept-879-betrayal-from-within" },
            route = {
                Point(1413, 0.4396, 0.7957, "Kuz",
                    "Travel to Kuz."),
            },
        },
        {
            id = "objective-879-2-nak",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Kill Nak.",
            complete = QuestObjective(879, 2, "Nak"),
            dependsOn = { "accept-879-betrayal-from-within" },
            route = {
                Point(1413, 0.4382, 0.8310, "Nak",
                    "Travel to Nak."),
            },
        },
        {
            id = "objective-879-3-lok-orcbane",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Kill Lok Orcbane.",
            complete = QuestObjective(879, 3, "Lok Orcbane"),
            dependsOn = { "accept-879-betrayal-from-within" },
            route = {
                Point(1413, 0.4015, 0.8054, "Lok Orcbane",
                    "Travel to Lok Orcbane."),
            },
        },
        {
            id = "note-885-washte-pawne-loot",
            kind = "note",
            priority = 155,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Kill Washte Pawne and loot Washte Pawne's Feather.",
            complete = { any = {
                { quest = { id = 885, state = "activeOrCompleted" } },
                { item = "Washte Pawne's Feather" },
            } },
            route = {
                Point(1413, 0.4400, 0.6200, "Washte Pawne",
                    "Travel to Washte Pawne."),
            },
        },
        {
            id = "accept-885-washte-pawne",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Use the Washte Pawne's Feather to accept Washte Pawne.",
            complete = QuestState(885, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "objective-843-3-prospector-khazgorm",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Kill Prospector Khazgorm.",
            complete = QuestObjective(843, 3, "Prospector Khazgorm"),
            dependsOn = { "accept-843-gann-s-reclamation" },
            route = {
                Point(1413, 0.4755, 0.8526, "Prospector Khazgorm",
                    "Travel to Prospector Khazgorm."),
            },
        },
        {
            id = "turnin-843-gann-s-reclamation",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gann's Reclamation.",
            complete = QuestState(843, "completed"),
            dependsOn = { "accept-843-gann-s-reclamation", "objective-843-3-prospector-khazgorm" },
            route = {
                Point(1413, 0.4685, 0.8489, "Gann's Reclamation",
                    "Travel to Gann's Reclamation."),
            },
        },
        {
            id = "accept-846-revenge-of-gann",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Accept Revenge of Gann.",
            complete = QuestState(846, "activeOrCompleted"),
            route = {
                Point(1413, 0.4685, 0.8489, "Revenge of Gann",
                    "Travel to Revenge of Gann."),
            },
        },
        {
            id = "objective-846-1-bael-dun-rifleman",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Kill Bael'dun Rifleman.",
            complete = QuestObjective(846, 1, "Bael'dun Rifleman"),
            dependsOn = { "accept-846-revenge-of-gann" },
            route = {
                Point(1413, 0.4875, 0.8449, "Bael'dun Rifleman",
                    "Travel to Bael'dun Rifleman."),
            },
        },
        {
            id = "objective-846-2-wood-pulp",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Collect 6 Wood Pulp.",
            complete = QuestObjective(846, 2, "Wood Pulp"),
            dependsOn = { "accept-846-revenge-of-gann" },
            route = {
                Point(1413, 0.4875, 0.8449, "Wood Pulp",
                    "Travel to Wood Pulp."),
            },
        },
        {
            id = "objective-846-3-sodium-nitrate",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Collect 6 Sodium Nitrate.",
            complete = QuestObjective(846, 3, "Sodium Nitrate"),
            dependsOn = { "accept-846-revenge-of-gann" },
            route = {
                Point(1413, 0.4875, 0.8449, "Sodium Nitrate",
                    "Travel to Sodium Nitrate."),
            },
        },
        {
            id = "turnin-846-revenge-of-gann",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Revenge of Gann.",
            complete = QuestState(846, "completed"),
            dependsOn = { "accept-846-revenge-of-gann", "objective-846-1-bael-dun-rifleman", "objective-846-2-wood-pulp", "objective-846-3-sodium-nitrate" },
            route = {
                Point(1413, 0.4612, 0.8124, "Revenge of Gann",
                    "Travel to Revenge of Gann."),
            },
        },
        {
            id = "accept-849-revenge-of-gann",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Accept Revenge of Gann.",
            complete = QuestState(849, "activeOrCompleted"),
            route = {
                Point(1413, 0.4612, 0.8124, "Revenge of Gann",
                    "Travel to Revenge of Gann."),
            },
        },
        {
            id = "turnin-849-revenge-of-gann",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Revenge of Gann.",
            complete = QuestState(849, "completed"),
            dependsOn = { "accept-849-revenge-of-gann" },
            route = {
                Point(1413, 0.4612, 0.8124, "Revenge of Gann",
                    "Travel to Revenge of Gann."),
            },
        },
        {
            id = "turnin-893-weapons-of-choice",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Weapons of Choice.",
            complete = QuestState(893, "completed"),
            dependsOn = { "accept-893-weapons-of-choice" },
            route = {
                Point(1413, 0.4510, 0.5768, "Weapons of Choice",
                    "Travel to Weapons of Choice."),
            },
        },
        {
            id = "turnin-897-the-harvester",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Harvester.",
            complete = QuestState(897, "completed"),
            dependsOn = { "accept-897-the-harvester" },
            route = {
                Point(1413, 0.4486, 0.5914, "The Harvester",
                    "Travel to The Harvester."),
            },
        },
        {
            id = "turnin-884-owatanka",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Owatanka.",
            complete = QuestState(884, "completed"),
            dependsOn = { "accept-884-owatanka" },
            route = {
                Point(1413, 0.4486, 0.5914, "Owatanka",
                    "Travel to Owatanka."),
            },
        },
        {
            id = "turnin-885-washte-pawne",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Washte Pawne.",
            complete = QuestState(885, "completed"),
            dependsOn = { "accept-885-washte-pawne" },
            route = {
                Point(1413, 0.4486, 0.5914, "Washte Pawne",
                    "Travel to Washte Pawne."),
            },
        },
        {
            id = "accept-6382-the-ashenvale-hunt",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept The Ashenvale Hunt.",
            complete = QuestState(6382, "activeOrCompleted"),
            route = {
                Point(1413, 0.4486, 0.5914, "The Ashenvale Hunt",
                    "Travel to The Ashenvale Hunt."),
            },
        },
        {
            id = "turnin-879-betrayal-from-within",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Betrayal from Within.",
            complete = QuestState(879, "completed"),
            dependsOn = { "accept-879-betrayal-from-within", "objective-879-1-kuz", "objective-879-2-nak", "objective-879-3-lok-orcbane" },
            route = {
                Point(1413, 0.4455, 0.5924, "Betrayal from Within",
                    "Travel to Betrayal from Within."),
            },
        },
        {
            id = "accept-906-betrayal-from-within",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Accept Betrayal from Within.",
            complete = QuestState(906, "activeOrCompleted"),
            route = {
                Point(1413, 0.4455, 0.5924, "Betrayal from Within",
                    "Travel to Betrayal from Within."),
            },
        },
        {
            id = "turnin-906-betrayal-from-within",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Betrayal from Within.",
            complete = QuestState(906, "completed"),
            dependsOn = { "accept-906-betrayal-from-within" },
            route = {
                Point(1413, 0.5150, 0.3087, "Betrayal from Within",
                    "Travel to Betrayal from Within."),
            },
        },
        {
            id = "turnin-868-egg-hunt",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Egg Hunt.",
            complete = QuestState(868, "completed"),
            dependsOn = { "accept-868-egg-hunt", "objective-868-1-silithid-mound" },
            route = {
                Point(1413, 0.5107, 0.2963, "Egg Hunt",
                    "Travel to Egg Hunt."),
            },
        },
        {
            id = "turnin-874-mahren-skyseer",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Mahren Skyseer.",
            complete = QuestState(874, "completed"),
            route = {
                Point(1413, 0.6584, 0.4386, "Mahren Skyseer",
                    "Travel to Mahren Skyseer."),
            },
        },
        {
            id = "accept-873-isha-awak",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Accept Isha Awak.",
            complete = QuestState(873, "activeOrCompleted"),
            route = {
                Point(1413, 0.6584, 0.4386, "Isha Awak",
                    "Travel to Isha Awak."),
            },
        },
        {
            id = "objective-873-1-isha-awak",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Kill Isha Awak.",
            complete = QuestObjective(873, 1, "Isha Awak"),
            dependsOn = { "accept-873-isha-awak" },
            route = {
                Point(1413, 0.6540, 0.4720, "Isha Awak",
                    "Travel to Isha Awak."),
            },
        },
        {
            id = "turnin-873-isha-awak",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Turn in Isha Awak.",
            complete = QuestState(873, "completed"),
            dependsOn = { "accept-873-isha-awak", "objective-873-1-isha-awak" },
            route = {
                Point(1413, 0.6584, 0.4386, "Isha Awak",
                    "Travel to Isha Awak."),
            },
        },
        {
            id = "woven-accept-97250-wrongly-blamed",
            kind = "accept",
            priority = 390,
            conditions = { level = { min = 23 } },
            text = "Accept Wrongly Blamed, Justly Corrected from Grunt Logmar at Camp Taurajo. This is an elite. Bring a group.",
            complete = QuestState(97250, "activeOrCompleted"),
            route = {
                Point(1413, 0.4460, 0.5920, "Grunt Logmar",
                    "Travel to Grunt Logmar."),
            },
        },
        {
            id = "woven-accept-98093-field-to-clear",
            kind = "accept",
            priority = 400,
            conditions = { level = { min = 23 } },
            text = "Accept Field to Clear from Sulhasa in the southern Barrens.",
            complete = QuestState(98093, "activeOrCompleted"),
            route = {
                Point(1413, 0.4780, 0.7760, "Sulhasa",
                    "Travel to Sulhasa."),
            },
        },
        {
            id = "woven-objective-98093-field-to-clear",
            kind = "objective",
            priority = 410,
            conditions = { level = { min = 23 } },
            text = "Field to Clear: slay 7 Stormhide lizards and 7 Hecklefang Stalkers so Sulhasa can leave the tree.",
            complete = QuestState(98093, "complete"),
            route = {
                Point(1413, 0.4640, 0.7980, "Stormhide",
                    "Travel to Stormhide."),
                Point(1413, 0.4580, 0.8280, "Hecklefang Stalker",
                    "Travel to Hecklefang Stalker."),
            },
        },
        {
            id = "woven-turnin-98093-field-to-clear",
            kind = "turnin",
            priority = 420,
            conditions = { level = { min = 23 } },
            text = "Turn in Field to Clear to Sulhasa.",
            complete = QuestState(98093, "completed"),
            route = {
                Point(1413, 0.4780, 0.7760, "Sulhasa",
                    "Travel to Sulhasa."),
            },
        },
        {
            id = "woven-objective-97250-wrongly-blamed",
            kind = "objective",
            priority = 430,
            conditions = { level = { min = 23 } },
            text = "Wrongly Blamed, Justly Corrected: slay the encroaching soldiers and the Outraged Pillager on the Dustwallow border. This is an elite. Bring a group.",
            complete = QuestState(97250, "complete"),
            route = {
                Point(1413, 0.4900, 0.7700, "Encroaching Soldier",
                    "Travel to Encroaching Soldier."),
                Point(1413, 0.4900, 0.7720, "Outraged Pillager",
                    "Travel to Outraged Pillager."),
            },
        },
        {
            id = "woven-turnin-97250-wrongly-blamed",
            kind = "turnin",
            priority = 440,
            conditions = { level = { min = 23 } },
            text = "Turn in Wrongly Blamed, Justly Corrected to Grunt Logmar at Camp Taurajo.",
            complete = QuestState(97250, "completed"),
            route = {
                Point(1413, 0.4460, 0.5920, "Grunt Logmar",
                    "Travel to Grunt Logmar."),
            },
        },
    },
})
