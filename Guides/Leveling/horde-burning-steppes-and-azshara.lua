local _, ns = ...

-- Forever Casual spine: Burning Steppes & Azshara (51-52)
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
    BURNING_STEPPES = 1428,
    AZSHARA = 1447,
    ORGRIMMAR = 1454,
}

ns:RegisterGuide({
    id = "leveling-era-horde-burning-steppes-and-azshara",
    title = "Burning Steppes & Azshara",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 51 } },
        },
    },
    goals = {
        {
            id = "accept-4726-broodling-essence",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Broodling Essence.",
            complete = QuestState(4726, "activeOrCompleted"),
            route = {
                Point(1428, 0.6524, 0.2400, "Broodling Essence",
                    "Travel to Broodling Essence."),
            },
        },
        {
            id = "accept-4296-tablet-of-the-seven",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept Tablet of the Seven.",
            complete = QuestState(4296, "activeOrCompleted"),
            route = {
                Point(1428, 0.6516, 0.2392, "Tablet of the Seven",
                    "Travel to Tablet of the Seven."),
            },
        },
        {
            id = "turnin-3821-dreadmaul-rock",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Dreadmaul Rock.",
            complete = QuestState(3821, "completed"),
            route = {
                Point(1428, 0.7539, 0.3829, "Dreadmaul Rock",
                    "Travel to Dreadmaul Rock."),
            },
        },
        {
            id = "accept-4022-a-taste-of-flame",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Accept A Taste of Flame.",
            complete = QuestState(4022, "activeOrCompleted"),
            route = {
                Point(1428, 0.9506, 0.3157, "A Taste of Flame",
                    "Travel to A Taste of Flame."),
            },
        },
        {
            id = "turnin-4022-a-taste-of-flame",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Taste of Flame.",
            complete = QuestState(4022, "completed"),
            dependsOn = { "accept-4022-a-taste-of-flame" },
            route = {
                Point(1428, 0.9506, 0.3157, "A Taste of Flame",
                    "Travel to A Taste of Flame."),
            },
        },
        {
            id = "turnin-4726-broodling-essence",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Broodling Essence.",
            complete = QuestState(4726, "completed"),
            dependsOn = { "accept-4726-broodling-essence" },
            route = {
                Point(1428, 0.6523, 0.2399, "Broodling Essence",
                    "Travel to Broodling Essence."),
            },
        },
        {
            id = "accept-4808-felnok-steelspring",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Felnok Steelspring.",
            complete = QuestState(4808, "activeOrCompleted"),
            route = {
                Point(1428, 0.6523, 0.2399, "Felnok Steelspring",
                    "Travel to Felnok Steelspring."),
            },
        },
        {
            id = "turnin-4296-tablet-of-the-seven",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Horde" },
            } },
            text = "Turn in Tablet of the Seven.",
            complete = QuestState(4296, "completed"),
            dependsOn = { "accept-4296-tablet-of-the-seven" },
            route = {
                Point(1428, 0.6515, 0.2391, "Tablet of the Seven",
                    "Travel to Tablet of the Seven."),
            },
        },
        {
            id = "accept-3504-betrayed",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Betrayed.",
            complete = QuestState(3504, "activeOrCompleted"),
            route = {
                Point(1454, 0.7523, 0.3423, "Betrayed",
                    "Travel to Betrayed."),
            },
        },
        {
            id = "accept-4494-march-of-the-silithid",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept March of the Silithid.",
            complete = QuestState(4494, "activeOrCompleted"),
            route = {
                Point(1454, 0.5642, 0.5692, "March of the Silithid",
                    "Travel to March of the Silithid."),
            },
        },
        {
            id = "accept-5535-spiritual-unrest",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Spiritual Unrest.",
            complete = QuestState(5535, "activeOrCompleted"),
            route = {
                Point(1447, 0.1137, 0.7816, "Spiritual Unrest",
                    "Travel to Spiritual Unrest."),
            },
        },
        {
            id = "accept-5536-a-land-filled-with-hatred",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept A Land Filled with Hatred.",
            complete = QuestState(5536, "activeOrCompleted"),
            route = {
                Point(1447, 0.1137, 0.7816, "A Land Filled with Hatred",
                    "Travel to A Land Filled with Hatred."),
            },
        },
        {
            id = "objective-5535-1-highborne-apparition",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Highborne Apparition.",
            complete = QuestObjective(5535, 1, "Highborne Apparition"),
            dependsOn = { "accept-5535-spiritual-unrest" },
            route = {
                Point(1447, 0.1340, 0.7340, "Highborne Apparition",
                    "Travel to Highborne Apparition."),
            },
        },
        {
            id = "objective-5535-2-highborne-lichling",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Highborne Lichling.",
            complete = QuestObjective(5535, 2, "Highborne Lichling"),
            dependsOn = { "accept-5535-spiritual-unrest" },
            route = {
                Point(1447, 0.1340, 0.7340, "Highborne Lichling",
                    "Travel to Highborne Lichling."),
            },
        },
        {
            id = "objective-5536-2-haldarr-trickster",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 2 Haldarr Trickster.",
            complete = QuestObjective(5536, 2, "Haldarr Trickster"),
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            route = {
                Point(1447, 0.1980, 0.6460, "Haldarr Trickster",
                    "Travel to Haldarr Trickster."),
            },
        },
        {
            id = "objective-5536-3-haldarr-felsworn",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 2 Haldarr Felsworn.",
            complete = QuestObjective(5536, 3, "Haldarr Felsworn"),
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            route = {
                Point(1447, 0.1980, 0.6460, "Haldarr Felsworn",
                    "Travel to Haldarr Felsworn."),
            },
        },
        {
            id = "objective-5536-1-haldarr-satyr",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Haldarr Satyr.",
            complete = QuestObjective(5536, 1, "Haldarr Satyr"),
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            route = {
                Point(1447, 0.1980, 0.6460, "Haldarr Satyr",
                    "Travel to Haldarr Satyr."),
            },
        },
        {
            id = "turnin-5535-spiritual-unrest",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Spiritual Unrest.",
            complete = QuestState(5535, "completed"),
            dependsOn = { "accept-5535-spiritual-unrest", "objective-5535-1-highborne-apparition", "objective-5535-2-highborne-lichling" },
            route = {
                Point(1447, 0.1137, 0.7817, "Spiritual Unrest",
                    "Travel to Spiritual Unrest."),
            },
        },
        {
            id = "turnin-5536-a-land-filled-with-hatred",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Land Filled with Hatred.",
            complete = QuestState(5536, "completed"),
            dependsOn = { "accept-5536-a-land-filled-with-hatred", "objective-5536-2-haldarr-trickster", "objective-5536-3-haldarr-felsworn", "objective-5536-1-haldarr-satyr" },
            route = {
                Point(1447, 0.1137, 0.7817, "A Land Filled with Hatred",
                    "Travel to A Land Filled with Hatred."),
            },
        },
        {
            id = "turnin-3504-betrayed",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Betrayed.",
            complete = QuestState(3504, "completed"),
            dependsOn = { "accept-3504-betrayed" },
            route = {
                Point(1447, 0.2226, 0.5148, "Betrayed",
                    "Travel to Betrayed."),
            },
        },
        {
            id = "accept-3517-stealing-knowledge",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Stealing Knowledge.",
            complete = QuestState(3517, "activeOrCompleted"),
            route = {
                Point(1447, 0.2256, 0.5142, "Stealing Knowledge",
                    "Travel to Stealing Knowledge."),
            },
        },
        {
            id = "objective-3517-3-tablet-of-markri",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Click Tablet of Markri.",
            complete = QuestObjective(3517, 3, "Tablet of Markri"),
            dependsOn = { "accept-3517-stealing-knowledge" },
            route = {
                Point(1447, 0.3500, 0.5460, "Tablet of Markri",
                    "Travel to Tablet of Markri."),
            },
        },
        {
            id = "objective-3568-1-box-of-empty-vials",
            kind = "objective",
            priority = 230,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Use Box of Empty Vials.",
            complete = QuestObjective(3568, 1, "Box of Empty Vials"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-3568-1-empty-vial-labeled-1",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Use Empty Vial Labeled #1.",
            complete = QuestObjective(3568, 1, "Empty Vial Labeled #1"),
            route = {
                Point(1447, 0.4770, 0.6105, "Empty Vial Labeled #1",
                    "Travel to Empty Vial Labeled #1."),
            },
        },
        {
            id = "objective-3568-2-empty-vial-labeled-2",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Use Empty Vial Labeled #2.",
            complete = QuestObjective(3568, 2, "Empty Vial Labeled #2"),
            route = {
                Point(1447, 0.4786, 0.5155, "Empty Vial Labeled #2",
                    "Travel to Empty Vial Labeled #2."),
            },
        },
        {
            id = "objective-3568-3-empty-vial-labeled-3",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Use Empty Vial Labeled #3.",
            complete = QuestObjective(3568, 3, "Empty Vial Labeled #3"),
            route = {
                Point(1447, 0.4860, 0.4856, "Empty Vial Labeled #3",
                    "Travel to Empty Vial Labeled #3."),
            },
        },
        {
            id = "objective-3568-4-empty-vial-labeled-4",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Use Empty Vial Labeled #4.",
            complete = QuestObjective(3568, 4, "Empty Vial Labeled #4"),
            route = {
                Point(1447, 0.4741, 0.4628, "Empty Vial Labeled #4",
                    "Travel to Empty Vial Labeled #4."),
            },
        },
        {
            id = "turnin-3517-stealing-knowledge",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stealing Knowledge.",
            complete = QuestState(3517, "completed"),
            dependsOn = { "accept-3517-stealing-knowledge", "objective-3517-3-tablet-of-markri" },
            route = {
                Point(1447, 0.4600, 0.3871, "Stealing Knowledge",
                    "Travel to Stealing Knowledge."),
            },
        },
        {
            id = "accept-3518-delivery-to-magatha",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Delivery to Magatha.",
            complete = QuestState(3518, "activeOrCompleted"),
            route = {
                Point(1447, 0.4600, 0.3871, "Delivery to Magatha",
                    "Travel to Delivery to Magatha."),
            },
        },
        {
            id = "accept-3541-delivery-to-jes-rimon",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Delivery to Jes'rimon.",
            complete = QuestState(3541, "activeOrCompleted"),
            route = {
                Point(1447, 0.4600, 0.3871, "Delivery to Jes'rimon",
                    "Travel to Delivery to Jes'rimon."),
            },
        },
        {
            id = "accept-3561-delivery-to-archmage-xylem",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Delivery to Archmage Xylem.",
            complete = QuestState(3561, "activeOrCompleted"),
            route = {
                Point(1447, 0.4600, 0.3871, "Delivery to Archmage Xylem",
                    "Travel to Delivery to Archmage Xylem."),
            },
        },
        {
            id = "accept-3503-meeting-with-the-master",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Meeting with the Master.",
            complete = QuestState(3503, "activeOrCompleted"),
            route = {
                Point(1447, 0.2811, 0.5009, "Meeting with the Master",
                    "Travel to Meeting with the Master."),
            },
        },
        {
            id = "turnin-3561-delivery-to-archmage-xylem",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Delivery to Archmage Xylem.",
            complete = QuestState(3561, "completed"),
            dependsOn = { "accept-3561-delivery-to-archmage-xylem" },
            route = {
                Point(1447, 0.2971, 0.4052, "Delivery to Archmage Xylem",
                    "Travel to Delivery to Archmage Xylem."),
            },
        },
        {
            id = "accept-3565-xylem-s-payment-to-jediga",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Xylem's Payment to Jediga.",
            complete = QuestState(3565, "activeOrCompleted"),
            route = {
                Point(1447, 0.2971, 0.4052, "Xylem's Payment to Jediga",
                    "Travel to Xylem's Payment to Jediga."),
            },
        },
        {
            id = "accept-3421-return-trip",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Accept Return Trip.",
            complete = QuestState(3421, "activeOrCompleted"),
            route = {
                Point(1447, 0.2647, 0.4628, "Return Trip",
                    "Travel to Return Trip."),
            },
        },
        {
            id = "turnin-3565-xylem-s-payment-to-jediga",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Horde" },
            } },
            text = "Turn in Xylem's Payment to Jediga.",
            complete = QuestState(3565, "completed"),
            dependsOn = { "accept-3565-xylem-s-payment-to-jediga" },
            route = {
                Point(1447, 0.2256, 0.5142, "Xylem's Payment to Jediga",
                    "Travel to Xylem's Payment to Jediga."),
            },
        },
    },
})
