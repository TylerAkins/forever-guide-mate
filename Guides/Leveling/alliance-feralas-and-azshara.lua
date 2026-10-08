local _, ns = ...

-- Forever Casual spine: Feralas & Azshara (52-53)
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
    THE_BARRENS = 1413,
    FERALAS = 1444,
    AZSHARA = 1447,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-feralas-and-azshara",
    title = "Feralas & Azshara",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 52 } },
        },
    },
    goals = {
        {
            id = "accept-7733-improved-quality",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Improved Quality.",
            complete = QuestState(7733, "activeOrCompleted"),
            route = {
                Point(1444, 0.3063, 0.4271, "Improved Quality",
                    "Travel to Improved Quality."),
            },
        },
        {
            id = "turnin-2943-return-to-troyas",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Troyas.",
            complete = QuestState(2943, "completed"),
            route = {
                Point(1444, 0.3178, 0.4550, "Return to Troyas",
                    "Travel to Troyas."),
            },
        },
        {
            id = "accept-2879-the-stave-of-equinex",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Stave of Equinex.",
            complete = QuestState(2879, "activeOrCompleted"),
            route = {
                Point(1444, 0.3178, 0.4550, "The Stave of Equinex",
                    "Travel to The Stave of Equinex."),
            },
        },
        {
            id = "accept-7003-zapped-giants",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Zapped Giants.",
            complete = QuestState(7003, "activeOrCompleted"),
            route = {
                Point(1444, 0.4481, 0.4342, "Zapped Giants",
                    "Travel to Zapped Giants."),
            },
        },
        {
            id = "accept-7721-fuel-for-the-zapping",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Fuel for the Zapping.",
            complete = QuestState(7721, "activeOrCompleted"),
            route = {
                Point(1444, 0.4481, 0.4342, "Fuel for the Zapping",
                    "Travel to Fuel for the Zapping."),
            },
        },
        {
            id = "objective-7003-1-zorbin-s-ultra-shrinker",
            kind = "objective",
            priority = 60,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Use Zorbin's Ultra-Shrinker.",
            complete = QuestObjective(7003, 1, "Zorbin's Ultra-Shrinker"),
            dependsOn = { "accept-7003-zapped-giants" },
            route = {
                Point(1444, 0.4440, 0.4980, "Zorbin's Ultra-Shrinker",
                    "Travel to Zorbin's Ultra-Shrinker."),
            },
        },
        {
            id = "turnin-7003-zapped-giants",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Zapped Giants.",
            complete = QuestState(7003, "completed"),
            dependsOn = { "accept-7003-zapped-giants", "objective-7003-1-zorbin-s-ultra-shrinker" },
            route = {
                Point(1444, 0.4481, 0.4342, "Zapped Giants",
                    "Travel to Zapped Giants."),
            },
        },
        {
            id = "turnin-7721-fuel-for-the-zapping",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Fuel for the Zapping.",
            complete = QuestState(7721, "completed"),
            dependsOn = { "accept-7721-fuel-for-the-zapping" },
            route = {
                Point(1444, 0.4481, 0.4342, "Fuel for the Zapping",
                    "Travel to Fuel for the Zapping."),
            },
        },
        {
            id = "accept-7735-pristine-yeti-hide",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Pristine Yeti Hide.",
            complete = QuestState(7735, "activeOrCompleted"),
            route = {
                Point(1444, 0.5140, 0.3240, "Pristine Yeti Hide",
                    "Travel to Pristine Yeti Hide."),
            },
        },
        {
            id = "accept-2844-the-giant-guardian",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Giant Guardian.",
            complete = QuestState(2844, "activeOrCompleted"),
            route = {
                Point(1444, 0.5332, 0.3185, "The Giant Guardian",
                    "Travel to The Giant Guardian."),
            },
        },
        {
            id = "objective-3909-1-evoroot",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Click Evoroot.",
            complete = QuestObjective(3909, 1, "Evoroot"),
            route = {
                Point(1444, 0.4462, 0.0981, "Evoroot",
                    "Travel to Evoroot."),
            },
        },
        {
            id = "objective-2879-1-flame-of-imbel",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Click Flame of Imbel.",
            complete = QuestObjective(2879, 1, "Flame of Imbel"),
            dependsOn = { "accept-2879-the-stave-of-equinex" },
            route = {
                Point(1444, 0.3993, 0.0944, "Flame of Imbel",
                    "Travel to Flame of Imbel."),
            },
        },
        {
            id = "objective-2879-1-flame-of-lahassa",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Click Flame of Lahassa.",
            complete = QuestObjective(2879, 1, "Flame of Lahassa"),
            dependsOn = { "accept-2879-the-stave-of-equinex" },
            route = {
                Point(1444, 0.3776, 0.1217, "Flame of Lahassa",
                    "Travel to Flame of Lahassa."),
            },
        },
        {
            id = "objective-2879-1-flame-of-byltan",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Click Flame of Byltan.",
            complete = QuestObjective(2879, 1, "Flame of Byltan"),
            dependsOn = { "accept-2879-the-stave-of-equinex" },
            route = {
                Point(1444, 0.3850, 0.1580, "Flame of Byltan",
                    "Travel to Flame of Byltan."),
            },
        },
        {
            id = "objective-2879-1-troyas-stave",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Use Troyas' Stave.",
            complete = QuestObjective(2879, 1, "Troyas' Stave"),
            dependsOn = { "accept-2879-the-stave-of-equinex" },
            route = {
                Point(1444, 0.3887, 0.1323, "Troyas' Stave",
                    "Travel to Troyas' Stave."),
            },
        },
        {
            id = "turnin-2879-the-stave-of-equinex",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Stave of Equinex.",
            complete = QuestState(2879, "completed"),
            dependsOn = { "accept-2879-the-stave-of-equinex", "objective-2879-1-flame-of-imbel", "objective-2879-1-flame-of-lahassa", "objective-2879-1-flame-of-byltan", "objective-2879-1-troyas-stave" },
            route = {
                Point(1444, 0.3887, 0.1323, "The Stave of Equinex",
                    "Travel to The Stave of Equinex."),
            },
        },
        {
            id = "accept-2942-the-morrow-stone",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Morrow Stone.",
            complete = QuestState(2942, "activeOrCompleted"),
            route = {
                Point(1444, 0.3887, 0.1323, "The Morrow Stone",
                    "Travel to The Morrow Stone."),
            },
        },
        {
            id = "turnin-2844-the-giant-guardian",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Giant Guardian.",
            complete = QuestState(2844, "completed"),
            dependsOn = { "accept-2844-the-giant-guardian" },
            route = {
                Point(1444, 0.3822, 0.1030, "The Giant Guardian",
                    "Travel to The Giant Guardian."),
            },
        },
        {
            id = "accept-2845-wandering-shay",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Wandering Shay.",
            complete = QuestState(2845, "activeOrCompleted"),
            route = {
                Point(1444, 0.3822, 0.1030, "Wandering Shay",
                    "Travel to Wandering Shay."),
            },
        },
        {
            id = "objective-2845-1-shay-s-chest",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Click Shay's Chest.",
            complete = QuestObjective(2845, 1, "Shay's Chest"),
            dependsOn = { "accept-2845-wandering-shay" },
            route = {
                Point(1444, 0.3825, 0.1029, "Shay's Chest",
                    "Travel to Shay's Chest."),
            },
        },
        {
            id = "turnin-2845-wandering-shay",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Wandering Shay.",
            complete = QuestState(2845, "completed"),
            dependsOn = { "accept-2845-wandering-shay", "objective-2845-1-shay-s-chest" },
            route = {
                Point(1444, 0.4238, 0.2200, "Wandering Shay",
                    "Travel to Wandering Shay."),
            },
        },
        {
            id = "turnin-4142-a-visit-to-gregan",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Visit to Gregan.",
            complete = QuestState(4142, "completed"),
            route = {
                Point(1444, 0.4512, 0.2557, "A Visit to Gregan",
                    "Travel to A Visit to Gregan."),
            },
        },
        {
            id = "turnin-2942-the-morrow-stone",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Morrow Stone.",
            complete = QuestState(2942, "completed"),
            dependsOn = { "accept-2942-the-morrow-stone" },
            route = {
                Point(1444, 0.3178, 0.4550, "The Morrow Stone",
                    "Travel to The Morrow Stone."),
            },
        },
        {
            id = "turnin-7733-improved-quality",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Improved Quality.",
            complete = QuestState(7733, "completed"),
            dependsOn = { "accept-7733-improved-quality" },
            route = {
                Point(1444, 0.3063, 0.4271, "Improved Quality",
                    "Travel to Improved Quality."),
            },
        },
        {
            id = "turnin-7735-pristine-yeti-hide",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Pristine Yeti Hide.",
            complete = QuestState(7735, "completed"),
            dependsOn = { "accept-7735-pristine-yeti-hide" },
            route = {
                Point(1444, 0.3063, 0.4271, "Pristine Yeti Hide",
                    "Travel to Pristine Yeti Hide."),
            },
        },
        {
            id = "turnin-5158-seeking-spiritual-aid",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Seeking Spiritual Aid.",
            complete = QuestState(5158, "completed"),
            route = {
                Point(1413, 0.6583, 0.4378, "Seeking Spiritual Aid",
                    "Travel to Seeking Spiritual Aid."),
            },
        },
        {
            id = "objective-3444-1-marvon-s-chest",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Click Marvon's Chest.",
            complete = QuestObjective(3444, 1, "Marvon's Chest"),
            route = {
                Point(1413, 0.6250, 0.3854, "Marvon's Chest",
                    "Travel to Marvon's Chest."),
            },
        },
        {
            id = "accept-4502-volcanic-activity",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Volcanic Activity.",
            complete = QuestState(4502, "activeOrCompleted"),
            route = {
                Point(1413, 0.6245, 0.3874, "Volcanic Activity",
                    "Travel to Volcanic Activity."),
            },
        },
        {
            id = "accept-3601-kim-jael-indeed",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Kim'jael Indeed!.",
            complete = QuestState(3601, "activeOrCompleted"),
            route = {
                Point(1447, 0.5345, 0.2182, "Kim'jael Indeed!",
                    "Travel to Kim'jael Indeed!."),
            },
        },
        {
            id = "objective-3601-1-kim-jael-s-equipment",
            kind = "objective",
            priority = 300,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Click Kim'jael's Equipment.",
            complete = QuestObjective(3601, 1, "Kim'jael's Equipment"),
            dependsOn = { "accept-3601-kim-jael-indeed" },
            route = {
                Point(1447, 0.5610, 0.3010, "Kim'jael's Equipment",
                    "Travel to Kim'jael's Equipment."),
            },
        },
        {
            id = "turnin-3601-kim-jael-indeed",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Kim'jael Indeed!.",
            complete = QuestState(3601, "completed"),
            dependsOn = { "accept-3601-kim-jael-indeed", "objective-3601-1-kim-jael-s-equipment" },
            route = {
                Point(1447, 0.5345, 0.2182, "Kim'jael Indeed!",
                    "Travel to Kim'jael Indeed!."),
            },
        },
        {
            id = "accept-5534-kim-jael-s-missing-equipment",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Kim'jael's \"Missing\" Equipment.",
            complete = QuestState(5534, "activeOrCompleted"),
            route = {
                Point(1447, 0.5345, 0.2182, "Kim'jael's \"Missing\" Equipment",
                    "Travel to Kim'jael's \"Missing\" Equipment."),
            },
        },
        {
            id = "objective-3449-2-rune-of-jin-yael",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Click Rune of Jin'yael.",
            complete = QuestObjective(3449, 2, "Rune of Jin'yael"),
            route = {
                Point(1447, 0.3956, 0.5031, "Rune of Jin'yael",
                    "Travel to Rune of Jin'yael."),
            },
        },
        {
            id = "objective-3449-1-rune-of-beth-amara",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Click Rune of Beth'Amara.",
            complete = QuestObjective(3449, 1, "Rune of Beth'Amara"),
            route = {
                Point(1447, 0.3687, 0.5319, "Rune of Beth'Amara",
                    "Travel to Rune of Beth'Amara."),
            },
        },
        {
            id = "objective-3449-3-rune-of-markri",
            kind = "objective",
            priority = 350,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Click Rune of Markri.",
            complete = QuestObjective(3449, 3, "Rune of Markri"),
            route = {
                Point(1447, 0.3930, 0.5548, "Rune of Markri",
                    "Travel to Rune of Markri."),
            },
        },
        {
            id = "objective-3449-4-rune-of-sael-hai",
            kind = "objective",
            priority = 360,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Click Rune of Sael'hai.",
            complete = QuestObjective(3449, 4, "Rune of Sael'hai"),
            route = {
                Point(1447, 0.4234, 0.6413, "Rune of Sael'hai",
                    "Travel to Rune of Sael'hai."),
            },
        },
        {
            id = "turnin-5534-kim-jael-s-missing-equipment",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Kim'jael's \"Missing\" Equipment.",
            complete = QuestState(5534, "completed"),
            dependsOn = { "accept-5534-kim-jael-s-missing-equipment" },
            route = {
                Point(1447, 0.4595, 0.3862, "Kim'jael's \"Missing\" Equipment",
                    "Travel to Kim'jael's \"Missing\" Equipment."),
            },
        },
        {
            id = "turnin-3449-arcane-runes",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Arcane Runes.",
            complete = QuestState(3449, "completed"),
            dependsOn = { "objective-3449-2-rune-of-jin-yael", "objective-3449-1-rune-of-beth-amara", "objective-3449-3-rune-of-markri", "objective-3449-4-rune-of-sael-hai" },
            route = {
                Point(1447, 0.6236, 0.8200, "Arcane Runes",
                    "Travel to Arcane Runes."),
            },
        },
        {
            id = "accept-3461-return-to-tymor",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Tymor.",
            complete = QuestState(3461, "activeOrCompleted"),
            route = {
                Point(1447, 0.6236, 0.8200, "Return to Tymor",
                    "Travel to Tymor."),
            },
        },
    },
})
