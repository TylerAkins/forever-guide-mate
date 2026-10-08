local _, ns = ...

-- Forever Casual spine: Swamp of Sorrows (38-39)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves:
-- 93585 This Light of Mine (Father Tuttle) and 93176 My Little Friends (Amaryllis Webb) near the Harborage stop.
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
    STRANGLETHORN_VALE = 1434,
    SWAMP_OF_SORROWS = 1435,
    STORMWIND_CITY = 1453,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-swamp-of-sorrows",
    title = "Swamp of Sorrows",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 38 } },
        },
    },
    goals = {
        {
            id = "accept-1260-morgan-stern",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Morgan Stern.",
            complete = QuestState(1260, "activeOrCompleted"),
            route = {
                Point(1453, 0.3984, 0.8525, "Morgan Stern",
                    "Travel to Morgan Stern."),
            },
        },
        {
            id = "accept-1363-mazen-s-behest",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
                { class = 8 },
            } },
            text = "Accept Mazen's Behest.",
            complete = QuestState(1363, "activeOrCompleted"),
            route = {
                Point(1453, 0.4117, 0.6367, "Mazen's Behest",
                    "Travel to Mazen's Behest."),
            },
        },
        {
            id = "turnin-1363-mazen-s-behest",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
                { class = 8 },
            } },
            text = "Turn in Mazen's Behest.",
            complete = QuestState(1363, "completed"),
            dependsOn = { "accept-1363-mazen-s-behest" },
            route = {
                Point(1453, 0.4097, 0.6383, "Mazen's Behest",
                    "Travel to Mazen's Behest."),
            },
        },
        {
            id = "accept-1364-mazen-s-behest",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Alliance" },
                { class = 8 },
            } },
            text = "Accept Mazen's Behest.",
            complete = QuestState(1364, "activeOrCompleted"),
            dependsOn = { "turnin-1363-mazen-s-behest" },
            route = {
                Point(1453, 0.4097, 0.6383, "Mazen's Behest",
                    "Travel to Mazen's Behest."),
            },
        },
        {
            id = "accept-1448-in-search-of-the-temple",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
            } },
            text = "Accept In Search of The Temple.",
            complete = QuestState(1448, "activeOrCompleted"),
            route = {
                Point(1453, 0.6433, 0.2066, "In Search of The Temple",
                    "Travel to In Search of The Temple."),
            },
        },
        {
            id = "objective-1116-1-adolescent-whelp",
            kind = "objective",
            priority = 90,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Adolescent Whelp.",
            complete = QuestObjective(1116, 1, "Adolescent Whelp"),
            route = {
                Point(1435, 0.1240, 0.5740, "Adolescent Whelp",
                    "Travel to Adolescent Whelp."),
            },
        },
        {
            id = "accept-1396-encroaching-wildlife",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
            } },
            text = "Accept Encroaching Wildlife.",
            complete = QuestState(1396, "activeOrCompleted"),
            route = {
                Point(1435, 0.2674, 0.5983, "Encroaching Wildlife",
                    "Travel to Encroaching Wildlife."),
            },
        },
        {
            id = "woven-accept-93585-this-light-of-mine",
            kind = "accept",
            priority = 145,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept This Light of Mine from Father Tuttle.",
            complete = QuestState(93585, "activeOrCompleted"),
            route = {
                Point(1435, 0.2200, 0.5060, "Father Tuttle",
                    "Travel to Father Tuttle."),
            },
        },
        {
            id = "woven-objective-93585-this-light-of-mine",
            kind = "objective",
            priority = 146,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "This Light of Mine: finish the quest objectives. The guide follows the pin in your quest log.",
            complete = QuestState(93585, "complete"),
            dependsOn = { "woven-accept-93585-this-light-of-mine" },
            useClientPin = true,
            route = {
                Point(1435, 0.2200, 0.5060, "Father Tuttle",
                    "Travel to Father Tuttle."),
            },
        },
        {
            id = "woven-turnin-93585-this-light-of-mine",
            kind = "turnin",
            priority = 147,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in This Light of Mine to Father Tuttle.",
            complete = QuestState(93585, "completed"),
            dependsOn = { "woven-accept-93585-this-light-of-mine", "woven-objective-93585-this-light-of-mine" },
            route = {
                Point(1435, 0.2200, 0.5060, "Father Tuttle",
                    "Travel to Father Tuttle."),
            },
        },
        {
            id = "woven-accept-93176-my-little-friends",
            kind = "accept",
            priority = 148,
            conditions = { level = { min = 35 } },
            text = "Accept My Little Friends from Amaryllis Webb.",
            complete = QuestState(93176, "activeOrCompleted"),
            route = {
                Point(1435, 0.2500, 0.5420, "Amaryllis Webb",
                    "Travel to Amaryllis Webb."),
            },
        },
        {
            id = "woven-objective-93176-my-little-friends",
            kind = "objective",
            priority = 149,
            conditions = { level = { min = 35 } },
            text = "My Little Friends: collect Arbor Tarantula, Hay Weevil, and Flesh Picker specimens.",
            complete = QuestState(93176, "complete"),
            dependsOn = { "woven-accept-93176-my-little-friends" },
            useClientPin = true,
            route = {
                Point(1435, 0.2500, 0.5420, "Amaryllis Webb",
                    "Travel to Amaryllis Webb."),
            },
        },
        {
            id = "woven-turnin-93176-my-little-friends",
            kind = "turnin",
            priority = 150,
            conditions = { level = { min = 35 } },
            text = "Turn in My Little Friends to Amaryllis Webb.",
            complete = QuestState(93176, "completed"),
            dependsOn = { "woven-accept-93176-my-little-friends", "woven-objective-93176-my-little-friends" },
            route = {
                Point(1435, 0.2500, 0.5420, "Amaryllis Webb",
                    "Travel to Amaryllis Webb."),
            },
        },
        {
            id = "accept-1392-noboru-the-cudgel",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Use the Noboru's Cudgel to accept Noboru the Cudgel.",
            complete = QuestState(1392, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-1392-noboru-the-cudgel",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Noboru the Cudgel.",
            complete = QuestState(1392, "completed"),
            dependsOn = { "accept-1392-noboru-the-cudgel" },
            route = {
                Point(1435, 0.2599, 0.3140, "Noboru the Cudgel",
                    "Travel to Noboru the Cudgel."),
            },
        },
        {
            id = "accept-1389-draenethyst-crystals",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Draenethyst Crystals.",
            complete = QuestState(1389, "activeOrCompleted"),
            route = {
                Point(1435, 0.2599, 0.3140, "Draenethyst Crystals",
                    "Travel to Draenethyst Crystals."),
            },
        },
        {
            id = "objective-1116-1-adolescent-whelp-2",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Adolescent Whelp.",
            complete = QuestObjective(1116, 1, "Adolescent Whelp"),
            route = {
                Point(1435, 0.1680, 0.5840, "Adolescent Whelp",
                    "Travel to Adolescent Whelp."),
            },
        },
        {
            id = "turnin-1396-encroaching-wildlife",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Encroaching Wildlife.",
            complete = QuestState(1396, "completed"),
            dependsOn = { "accept-1396-encroaching-wildlife" },
            route = {
                Point(1435, 0.2674, 0.5983, "Encroaching Wildlife",
                    "Travel to Encroaching Wildlife."),
            },
        },
        {
            id = "accept-1421-the-lost-caravan",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Lost Caravan.",
            complete = QuestState(1421, "activeOrCompleted"),
            route = {
                Point(1435, 0.2674, 0.5983, "The Lost Caravan",
                    "Travel to The Lost Caravan."),
            },
        },
        {
            id = "objective-1373-1-ongeku",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Kill Ongeku.",
            complete = QuestObjective(1373, 1, "Ongeku"),
            route = {
                Point(1435, 0.6131, 0.2325, "Ongeku",
                    "Travel to Ongeku."),
            },
        },
        {
            id = "objective-1421-1-caravan-chest",
            kind = "objective",
            priority = 180,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
            } },
            text = "Click Caravan Chest.",
            complete = QuestObjective(1421, 1, "Caravan Chest"),
            dependsOn = { "accept-1421-the-lost-caravan" },
            route = {
                Point(1435, 0.6446, 0.1834, "Caravan Chest",
                    "Travel to Caravan Chest."),
            },
        },
        {
            id = "accept-1393-galen-s-escape",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Galen's Escape.",
            complete = QuestState(1393, "activeOrCompleted"),
            route = {
                Point(1435, 0.6541, 0.1823, "Galen's Escape",
                    "Travel to Galen's Escape."),
            },
        },
        {
            id = "turnin-1393-galen-s-escape",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Galen's Escape.",
            complete = QuestState(1393, "completed"),
            dependsOn = { "accept-1393-galen-s-escape" },
            route = {
                Point(1435, 0.4781, 0.3976, "Galen's Escape",
                    "Travel to Galen's Escape."),
            },
        },
        {
            id = "turnin-1389-draenethyst-crystals",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Draenethyst Crystals.",
            complete = QuestState(1389, "completed"),
            dependsOn = { "accept-1389-draenethyst-crystals" },
            route = {
                Point(1435, 0.2599, 0.3140, "Draenethyst Crystals",
                    "Travel to Draenethyst Crystals."),
            },
        },
        {
            id = "turnin-1421-the-lost-caravan",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Lost Caravan.",
            complete = QuestState(1421, "completed"),
            dependsOn = { "accept-1421-the-lost-caravan", "objective-1421-1-caravan-chest" },
            route = {
                Point(1435, 0.2674, 0.5983, "The Lost Caravan",
                    "Travel to The Lost Caravan."),
            },
        },
        {
            id = "turnin-1116-dream-dust-in-the-swamp",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Dream Dust in the Swamp.",
            complete = QuestState(1116, "completed"),
            dependsOn = { "objective-1116-1-adolescent-whelp", "objective-1116-1-adolescent-whelp-2" },
            route = {
                Point(1434, 0.2694, 0.7721, "Dream Dust in the Swamp",
                    "Travel to Dream Dust in the Swamp."),
            },
        },
        {
            id = "accept-1117-rumors-for-kravel",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Rumors for Kravel.",
            complete = QuestState(1117, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Rumors for Kravel",
                    "Travel to Rumors for Kravel."),
            },
        },
        {
            id = "objective-668-1-elixir-of-water-breathing",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
                { any = { { class = 9 }, { class = 11 } } },
            } },
            text = "Collect 2 Elixir of Water Breathing.",
            complete = QuestObjective(668, 1, "Elixir of Water Breathing"),
            route = {
                Point(1453, 0.5361, 0.5976, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "turnin-1448-in-search-of-the-temple",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
            } },
            text = "Turn in In Search of The Temple.",
            complete = QuestState(1448, "completed"),
            dependsOn = { "accept-1448-in-search-of-the-temple" },
            route = {
                Point(1453, 0.6433, 0.2066, "In Search of The Temple",
                    "Travel to In Search of The Temple."),
            },
        },
        {
            id = "accept-1449-to-the-hinterlands",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept To The Hinterlands.",
            complete = QuestState(1449, "activeOrCompleted"),
            route = {
                Point(1453, 0.6433, 0.2066, "To The Hinterlands",
                    "Travel to To The Hinterlands."),
            },
        },
        {
            id = "turnin-1457-the-karnitol-shipwreck",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Karnitol Shipwreck.",
            complete = QuestState(1457, "completed"),
            route = {
                Point(1455, 0.6791, 0.1749, "The Karnitol Shipwreck",
                    "Travel to The Karnitol Shipwreck."),
            },
        },
        {
            id = "accept-525-further-mysteries",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Further Mysteries.",
            complete = QuestState(525, "activeOrCompleted"),
            route = {
                Point(1455, 0.7464, 0.1174, "Further Mysteries",
                    "Travel to Further Mysteries."),
            },
        },
        {
            id = "objective-1712-1-liferoot",
            kind = "objective",
            priority = 300,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Collect 8 Liferoot.",
            complete = QuestObjective(1712, 1, "Liferoot"),
            route = {
                Point(1455, 0.2416, 0.7467, "Liferoot",
                    "Travel to Liferoot."),
            },
        },
        {
            id = "objective-1714-1-thundering-charm",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Collect 8 Thundering Charm.",
            complete = QuestObjective(1714, 1, "Thundering Charm"),
            route = {
                Point(1455, 0.2416, 0.7467, "Thundering Charm",
                    "Travel to Thundering Charm."),
            },
        },
        {
            id = "objective-1713-1-nature-protection-potion",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Collect 2 Nature Protection Potion.",
            complete = QuestObjective(1713, 1, "Nature Protection Potion"),
            route = {
                Point(1455, 0.2416, 0.7467, "Nature Protection Potion",
                    "Travel to Nature Protection Potion."),
            },
        },
    },
})
