local _, ns = ...

-- Forever Casual spine: Desolace (40-41)
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
    THOUSAND_NEEDLES = 1441,
    DESOLACE = 1443,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-desolace-part-2",
    title = "Desolace",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 40 } },
        },
    },
    goals = {
        {
            id = "accept-261-down-the-scarlet-path",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Down the Scarlet Path.",
            complete = QuestState(261, "activeOrCompleted"),
            route = {
                Point(1443, 0.6652, 0.0791, "Down the Scarlet Path",
                    "Travel to Down the Scarlet Path."),
            },
        },
        {
            id = "accept-1466-reagents-for-reclaimers-inc",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Reagents for Reclaimers Inc.",
            complete = QuestState(1466, "activeOrCompleted"),
            route = {
                Point(1443, 0.6620, 0.0963, "Reagents for Reclaimers Inc",
                    "Travel to Reagents for Reclaimers Inc.."),
            },
        },
        {
            id = "accept-6134-ghost-o-plasm-round-up",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ghost-o-plasm Round Up.",
            complete = QuestState(6134, "activeOrCompleted"),
            route = {
                Point(1443, 0.4783, 0.6182, "Ghost-o-plasm Round Up",
                    "Travel to Ghost-o-plasm Round Up."),
            },
        },
        {
            id = "turnin-1373-ongeku",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ongeku.",
            complete = QuestState(1373, "completed"),
            route = {
                Point(1443, 0.3622, 0.7925, "Ongeku",
                    "Travel to Ongeku."),
            },
        },
        {
            id = "accept-1374-khan-jehn",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Khan Jehn.",
            complete = QuestState(1374, "activeOrCompleted"),
            route = {
                Point(1443, 0.3622, 0.7925, "Khan Jehn",
                    "Travel to Khan Jehn."),
            },
        },
        {
            id = "objective-1466-3-doomwarder-captain",
            kind = "objective",
            priority = 60,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Doomwarder Captain.",
            complete = QuestObjective(1466, 3, "Doomwarder Captain"),
            dependsOn = { "accept-1466-reagents-for-reclaimers-inc" },
            route = {
                Point(1443, 0.5040, 0.8240, "Doomwarder Captain",
                    "Travel to Doomwarder Captain."),
            },
        },
        {
            id = "objective-6134-1-crate-of-ghost-magnets",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Use Crate of Ghost Magnets.",
            complete = QuestObjective(6134, 1, "Crate of Ghost Magnets"),
            dependsOn = { "accept-6134-ghost-o-plasm-round-up" },
            route = {
                Point(1443, 0.6381, 0.9127, "Crate of Ghost Magnets",
                    "Travel to Crate of Ghost Magnets."),
            },
        },
        {
            id = "objective-1374-1-khan-jehn",
            kind = "objective",
            priority = 80,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Kill Khan Jehn.",
            complete = QuestObjective(1374, 1, "Khan Jehn"),
            dependsOn = { "accept-1374-khan-jehn" },
            route = {
                Point(1443, 0.6639, 0.8008, "Khan Jehn",
                    "Travel to Khan Jehn."),
            },
        },
        {
            id = "turnin-6134-ghost-o-plasm-round-up",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ghost-o-plasm Round Up.",
            complete = QuestState(6134, "completed"),
            dependsOn = { "accept-6134-ghost-o-plasm-round-up", "objective-6134-1-crate-of-ghost-magnets" },
            route = {
                Point(1443, 0.4783, 0.6183, "Ghost-o-plasm Round Up",
                    "Travel to Ghost-o-plasm Round Up."),
            },
        },
        {
            id = "turnin-1374-khan-jehn",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Khan Jehn.",
            complete = QuestState(1374, "completed"),
            dependsOn = { "accept-1374-khan-jehn", "objective-1374-1-khan-jehn" },
            route = {
                Point(1443, 0.3622, 0.7925, "Khan Jehn",
                    "Travel to Khan Jehn."),
            },
        },
        {
            id = "turnin-1117-rumors-for-kravel",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Rumors for Kravel.",
            complete = QuestState(1117, "completed"),
            route = {
                Point(1441, 0.7779, 0.7727, "Rumors for Kravel",
                    "Travel to Rumors for Kravel."),
            },
        },
        {
            id = "accept-1118-back-to-booty-bay",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Back to Booty Bay.",
            complete = QuestState(1118, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Back to Booty Bay",
                    "Travel to Back to Booty Bay."),
            },
        },
        {
            id = "accept-1106-martek-the-exiled",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Martek the Exiled.",
            complete = QuestState(1106, "activeOrCompleted"),
            route = {
                Point(1441, 0.7806, 0.7712, "Martek the Exiled",
                    "Travel to Martek the Exiled."),
            },
        },
        {
            id = "turnin-1187-razzeric-s-tweaking",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Razzeric's Tweaking.",
            complete = QuestState(1187, "completed"),
            route = {
                Point(1441, 0.8033, 0.7610, "Razzeric's Tweaking",
                    "Travel to Razzeric's Tweaking."),
            },
        },
        {
            id = "accept-1188-safety-first",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept Safety First.",
            complete = QuestState(1188, "activeOrCompleted"),
            route = {
                Point(1441, 0.8033, 0.7610, "Safety First",
                    "Travel to Safety First."),
            },
        },
        {
            id = "turnin-261-down-the-scarlet-path",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Down the Scarlet Path.",
            complete = QuestState(261, "completed"),
            dependsOn = { "accept-261-down-the-scarlet-path" },
            route = {
                Point(1443, 0.6652, 0.0791, "Down the Scarlet Path",
                    "Travel to Down the Scarlet Path."),
            },
        },
        {
            id = "accept-1052-down-the-scarlet-path",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Down the Scarlet Path.",
            complete = QuestState(1052, "activeOrCompleted"),
            route = {
                Point(1443, 0.6652, 0.0791, "Down the Scarlet Path",
                    "Travel to Down the Scarlet Path."),
            },
        },
        {
            id = "turnin-1466-reagents-for-reclaimers-inc",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Reagents for Reclaimers Inc.",
            complete = QuestState(1466, "completed"),
            dependsOn = { "accept-1466-reagents-for-reclaimers-inc", "objective-1466-3-doomwarder-captain" },
            route = {
                Point(1443, 0.6620, 0.0963, "Reagents for Reclaimers Inc",
                    "Travel to Reagents for Reclaimers Inc.."),
            },
        },
        {
            id = "accept-1467-reagents-for-reclaimers-inc",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Reagents for Reclaimers Inc.",
            complete = QuestState(1467, "activeOrCompleted"),
            route = {
                Point(1443, 0.6620, 0.0963, "Reagents for Reclaimers Inc",
                    "Travel to Reagents for Reclaimers Inc.."),
            },
        },
        {
            id = "turnin-1052-down-the-scarlet-path",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Down the Scarlet Path.",
            complete = QuestState(1052, "completed"),
            dependsOn = { "accept-1052-down-the-scarlet-path" },
            route = {
                Point(1424, 0.5147, 0.5835, "Down the Scarlet Path",
                    "Travel to Down the Scarlet Path."),
            },
        },
        {
            id = "accept-1053-in-the-name-of-the-light",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept In the Name of the Light.",
            complete = QuestState(1053, "activeOrCompleted"),
            route = {
                Point(1424, 0.5147, 0.5835, "In the Name of the Light",
                    "Travel to In the Name of the Light."),
            },
        },
        {
            id = "objective-1053-4-houndmaster-loksey",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Houndmaster Loksey.",
            complete = QuestObjective(1053, 4, "Houndmaster Loksey"),
            dependsOn = { "accept-1053-in-the-name-of-the-light" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-1050-1-mythology-of-the-titans",
            kind = "objective",
            priority = 230,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Click Mythology of the Titans.",
            complete = QuestObjective(1050, 1, "Mythology of the Titans"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-1053-3-herod",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Herod.",
            complete = QuestObjective(1053, 3, "Herod"),
            dependsOn = { "accept-1053-in-the-name-of-the-light" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-1053-2-scarlet-commander-mograine",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Scarlet Commander Mograine.",
            complete = QuestObjective(1053, 2, "Scarlet Commander Mograine"),
            dependsOn = { "accept-1053-in-the-name-of-the-light" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-1053-1-high-inquisitor-whitemane",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill High Inquisitor Whitemane.",
            complete = QuestObjective(1053, 1, "High Inquisitor Whitemane"),
            dependsOn = { "accept-1053-in-the-name-of-the-light" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-1053-in-the-name-of-the-light",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in In the Name of the Light.",
            complete = QuestState(1053, "completed"),
            dependsOn = { "accept-1053-in-the-name-of-the-light", "objective-1053-4-houndmaster-loksey", "objective-1053-3-herod", "objective-1053-2-scarlet-commander-mograine", "objective-1053-1-high-inquisitor-whitemane" },
            route = {
                Point(1424, 0.5147, 0.5835, "In the Name of the Light",
                    "Travel to In the Name of the Light."),
            },
        },
        {
            id = "turnin-1050-mythology-of-the-titans",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Mythology of the Titans.",
            complete = QuestState(1050, "completed"),
            dependsOn = { "objective-1050-1-mythology-of-the-titans" },
            route = {
                Point(1455, 0.7497, 0.1248, "Mythology of the Titans",
                    "Travel to Mythology of the Titans."),
            },
        },
    },
})
