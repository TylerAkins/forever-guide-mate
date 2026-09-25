local _, ns = ...

-- Horde Era leveling route for Tanaris, levels 49-50.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    TANARIS = 1446,
    THOUSAND_NEEDLES = 1441,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index)
    return { questObjective = { id = questID, index = index } }
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

ns:RegisterGuide({
    id = "leveling-era-49-50-tanaris",
    title = "49-50 Tanaris (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 49 } },
        },
    },
    goals = {
        {
            id = "note-82-gadgetzan",
            kind = "note",
            priority = 20,
            text = "Set your hearth in Gadgetzan with Innkeeper Fizzgrimble.",
            route = {
                Point(MAP.TANARIS, 0.5250, 0.2790, "Innkeeper Fizzgrimble",
                    "Travel to Innkeeper Fizzgrimble."),
            },
        },
        {
            id = "accept-379-slake-that-thirst",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 243, state = "completed" } },
                },
            },
            text = "Accept Slake That Thirst from Chief Engineer Bilgewhizzle in Gadgetzan.",
            complete = QuestState(379, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5244, 0.2850, "Chief Engineer Bilgewhizzle",
                    "Travel to Chief Engineer Bilgewhizzle."),
            },
        },
        {
            id = "objective-379-slake-that-thirst",
            kind = "objective",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 243, state = "completed" } },
                },
            },
            text = "Kill Wastewander enemies and collect 5 Wastewander Water Pouch in Noonshade Ruins.",
            dependsOn = { "accept-379-slake-that-thirst" },
            complete = QuestState(379, "complete"),
            route = {
                Point(MAP.TANARIS, 0.6300, 0.3400, "Wastewander Bandit",
                    "Travel to Wastewander Bandit."),
            },
        },
        {
            id = "turnin-379-slake-that-thirst",
            kind = "turnin",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 243, state = "completed" } },
                },
            },
            text = "Turn in Slake That Thirst to Chief Engineer Bilgewhizzle in Gadgetzan.",
            dependsOn = { "objective-379-slake-that-thirst" },
            complete = QuestState(379, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5244, 0.2850, "Chief Engineer Bilgewhizzle",
                    "Travel to Chief Engineer Bilgewhizzle."),
            },
        },
        {
            id = "accept-2605-the-thirsty-goblin",
            kind = "accept",
            priority = 60,
            text = "Accept The Thirsty Goblin from Marin Noggenfogger in Gadgetzan.",
            complete = QuestState(2605, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5181, 0.2865, "Marin Noggenfogger",
                    "Travel to Marin Noggenfogger."),
            },
        },
        {
            id = "accept-992-gadgetzan-water-survey",
            kind = "accept",
            priority = 70,
            text = "Accept Gadgetzan Water Survey from Senior Surveyor Fizzledowser in Gadgetzan.",
            complete = QuestState(992, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5022, 0.2749, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "objective-992-gadgetzan-water-survey",
            kind = "objective",
            priority = 90,
            text = "Use Untapped Dowsing Widget inside the pool in Sandsorrow Watch.",
            dependsOn = { "accept-992-gadgetzan-water-survey" },
            complete = QuestState(992, "complete"),
            route = {
                Point(MAP.TANARIS, 0.3940, 0.2926, "Sandsorrow Watch",
                    "Travel to Sandsorrow Watch."),
            },
        },
        {
            id = "turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            priority = 110,
            text = "Turn in Gadgetzan Water Survey to Senior Surveyor Fizzledowser in Gadgetzan.",
            dependsOn = { "objective-992-gadgetzan-water-survey" },
            complete = QuestState(992, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5021, 0.2747, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "accept-82-noxious-lair-investigation",
            kind = "accept",
            priority = 120,
            text = "Accept Noxious Lair Investigation from Senior Surveyor Fizzledowser in Gadgetzan.",
            complete = QuestState(82, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5023, 0.2747, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "accept-3362-thistleshrub-valley",
            kind = "accept",
            priority = 130,
            text = "Accept Thistleshrub Valley from Tran'rek in Gadgetzan.",
            complete = QuestState(3362, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5159, 0.2677, "Tran'rek",
                    "Travel to Tran'rek."),
            },
        },
        {
            id = "accept-5863-the-dunemaul-compound",
            kind = "accept",
            priority = 140,
            text = "Accept The Dunemaul Compound from Andi Lynn in Gadgetzan.",
            complete = QuestState(5863, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5276, 0.2737, "Andi Lynn",
                    "Travel to Andi Lynn."),
            },
        },
        {
            id = "turnin-3380-the-sunken-temple",
            kind = "turnin",
            priority = 160,
            text = "Turn in The Sunken Temple to Marvon Rivetseeker in Broken Pillar.",
            complete = QuestState(3380, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5272, 0.4592, "Marvon Rivetseeker",
                    "Travel to Marvon Rivetseeker."),
            },
        },
        {
            id = "accept-3444-the-stone-circle",
            kind = "accept",
            priority = 170,
            text = "Accept The Stone Circle from Marvon Rivetseeker in Broken Pillar.",
            complete = QuestState(3444, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5272, 0.4592, "Marvon Rivetseeker",
                    "Travel to Marvon Rivetseeker."),
            },
        },
        {
            id = "accept-3161-gahz-ridian",
            kind = "accept",
            priority = 180,
            text = "Accept Gahz'ridian from Marvon Rivetseeker in Broken Pillar.",
            complete = QuestState(3161, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5272, 0.4592, "Marvon Rivetseeker",
                    "Travel to Marvon Rivetseeker."),
            },
        },
        {
            id = "objective-3161-gahz-ridian-detector",
            kind = "objective",
            priority = 190,
            text = "Use Gahz'ridian Detector to help you find 30 Gahz'ridian Ornament from the small sand mound on the ground.",
            dependsOn = { "accept-3161-gahz-ridian" },
            complete = QuestState(3161, "complete"),
        },
        {
            id = "objective-5863-3-gor-marok-the-ravager",
            kind = "objective",
            priority = 210,
            text = "Kill Gor'marok the Ravager inside the cave in Dunemaul Compound.",
            dependsOn = { "accept-5863-the-dunemaul-compound" },
            complete = QuestObjective(5863, 3),
            route = {
                Point(MAP.TANARIS, 0.4146, 0.5778, "Gor'marok the Ravager",
                    "Travel to Gor'marok the Ravager."),
            },
        },
        {
            id = "objective-5863-the-dunemaul-compound",
            kind = "objective",
            priority = 220,
            text = "Kill 10 Dunemaul Brute, 10 Dunemaul Enforcer and Gor'marok the Ravager in Dunemaul Compound.",
            dependsOn = { "accept-5863-the-dunemaul-compound" },
            complete = QuestState(5863, "complete"),
            route = {
                Point(MAP.TANARIS, 0.4702, 0.6585, "Dunemaul Brute",
                    "Travel to Dunemaul Brute."),
            },
        },
        {
            id = "objective-3161-gahz-ridian",
            kind = "objective",
            priority = 240,
            text = "Equip the Gahz'ridian Detector to find 30 Gahz'ridian Ornament all over Tanaris and especially near the Eastmoon Ruins.",
            dependsOn = { "accept-3161-gahz-ridian" },
            complete = QuestState(3161, "complete"),
            route = {
                Point(MAP.TANARIS, 0.4702, 0.6585, "Eastmoon Ruins",
                    "Travel to Eastmoon Ruins."),
            },
        },
        {
            id = "objective-82-noxious-lair-investigation",
            kind = "objective",
            priority = 260,
            text = "Kill Centipaar insects and collect 5 Centipaar Insect Parts in The Noxious Lair.",
            dependsOn = { "accept-82-noxious-lair-investigation" },
            complete = QuestState(82, "complete"),
            route = {
                Point(MAP.TANARIS, 0.3400, 0.4700, "Centipaar Swarmer",
                    "Travel to Centipaar Swarmer."),
            },
        },
        {
            id = "objective-2605-thistleshrub-dew-collector",
            kind = "objective",
            priority = 280,
            text = "Kill Thistleshrub Dew Collector until you collect Laden Dew Gland in Thistleshrub Valley.",
            dependsOn = { "accept-2605-the-thirsty-goblin" },
            complete = QuestState(2605, "complete"),
            route = {
                Point(MAP.TANARIS, 0.2818, 0.6386, "Thistleshrub Dew Collector",
                    "Travel to Thistleshrub Dew Collector."),
            },
        },
        {
            id = "objective-3362-thistleshrub-valley",
            kind = "objective",
            priority = 290,
            text = "Kill 8 Gnarled Thistleshrub and 8 Thistleshrub Rootshaper in Thistleshrub Valley.",
            dependsOn = { "accept-3362-thistleshrub-valley" },
            complete = QuestState(3362, "complete"),
            route = {
                Point(MAP.TANARIS, 0.2800, 0.6500, "Gnarled Thistleshrub",
                    "Travel to Gnarled Thistleshrub."),
            },
        },
        {
            id = "accept-1560-tooga-s-quest",
            kind = "accept",
            priority = 300,
            text = "Accept Tooga's Quest from Tooga.",
            complete = QuestState(1560, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.2940, 0.7420, "Tooga",
                    "Travel to Tooga."),
            },
        },
        {
            id = "objective-1560-tooga-s-quest",
            kind = "objective",
            priority = 310,
            text = "Escort Tooga to Steamwheedle Port.",
            dependsOn = { "accept-1560-tooga-s-quest" },
            complete = QuestState(1560, "complete"),
            route = {
                Point(MAP.TANARIS, 0.6657, 0.2569, "Tooga",
                    "Travel to Tooga."),
            },
        },
        {
            id = "turnin-1560-tooga-s-quest",
            kind = "turnin",
            priority = 320,
            text = "Turn in Tooga's Quest to Torta in Steamwheedle Port.",
            dependsOn = { "objective-1560-tooga-s-quest" },
            complete = QuestState(1560, "completed"),
            route = {
                Point(MAP.TANARIS, 0.6657, 0.2569, "Torta",
                    "Travel to Torta."),
            },
        },
        {
            id = "turnin-5863-the-dunemaul-compound",
            kind = "turnin",
            priority = 330,
            text = "Turn in The Dunemaul Compound to Andi Lynn in Gadgetzan.",
            dependsOn = { "objective-5863-3-gor-marok-the-ravager", "objective-5863-the-dunemaul-compound" },
            complete = QuestState(5863, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5281, 0.2740, "Andi Lynn",
                    "Travel to Andi Lynn."),
            },
        },
        {
            id = "turnin-2605-the-thirsty-goblin",
            kind = "turnin",
            priority = 340,
            text = "Turn in The Thirsty Goblin to Marin Noggenfogger in Gadgetzan.",
            dependsOn = { "objective-2605-thistleshrub-dew-collector" },
            complete = QuestState(2605, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5180, 0.2865, "Marin Noggenfogger",
                    "Travel to Marin Noggenfogger."),
            },
        },
        {
            id = "accept-2606-in-good-taste",
            kind = "accept",
            priority = 350,
            text = "Accept In Good Taste from Marin Noggenfogger in Gadgetzan.",
            complete = QuestState(2606, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5180, 0.2865, "Marin Noggenfogger",
                    "Travel to Marin Noggenfogger."),
            },
        },
        {
            id = "turnin-2606-in-good-taste",
            kind = "turnin",
            priority = 360,
            text = "Turn in In Good Taste to Sprinkle in Gadgetzan.",
            dependsOn = { "accept-2606-in-good-taste" },
            complete = QuestState(2606, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5106, 0.2688, "Sprinkle",
                    "Travel to Sprinkle."),
            },
        },
        {
            id = "accept-2641-sprinkle-s-secret-ingredient",
            kind = "accept",
            priority = 370,
            text = "Accept Sprinkle's Secret Ingredient from Sprinkle in Gadgetzan.",
            complete = QuestState(2641, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5110, 0.2701, "Sprinkle",
                    "Travel to Sprinkle."),
            },
        },
        {
            id = "turnin-82-noxious-lair-investigation",
            kind = "turnin",
            priority = 380,
            text = "Turn in Noxious Lair Investigation to Alchemist Pestlezugg in Gadgetzan.",
            dependsOn = { "objective-82-noxious-lair-investigation" },
            complete = QuestState(82, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5090, 0.2698, "Alchemist Pestlezugg",
                    "Travel to Alchemist Pestlezugg."),
            },
        },
        {
            id = "accept-10-the-scrimshank-redemption",
            kind = "accept",
            priority = 390,
            text = "Accept The Scrimshank Redemption from Senior Surveyor Fizzledowser in Gadgetzan.",
            complete = QuestState(10, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5022, 0.2747, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "turnin-3362-thistleshrub-valley",
            kind = "turnin",
            priority = 400,
            text = "Turn in Thistleshrub Valley to Tran'rek in Gadgetzan.",
            dependsOn = { "objective-3362-thistleshrub-valley" },
            complete = QuestState(3362, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5159, 0.2677, "Tran'rek",
                    "Travel to Tran'rek."),
            },
        },
        {
            id = "turnin-3161-gahz-ridian",
            kind = "turnin",
            priority = 420,
            text = "Turn in Gahz'ridian to Marvon Rivetseeker in Broken Pillar.",
            dependsOn = { "objective-3161-gahz-ridian-detector", "objective-3161-gahz-ridian" },
            complete = QuestState(3161, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5272, 0.4592, "Marvon Rivetseeker",
                    "Travel to Marvon Rivetseeker."),
            },
        },
        {
            id = "objective-654-tanaris-field-sampling",
            kind = "objective",
            priority = 430,
            conditions = {
                all = {
                    { quest = { id = 243, state = "completed" } },
                },
            },
            text = "Kill Glasshide Gazer, Blisterpaw Hyena, and Scorpid Dunestalker to collect 8 untested samples from each. Use the Untested Basilisk Sample, Untested Hyena Sample, and Untested Scorpid Sample to turn them into acceptable samples. You only have 2 hours to complete this quest.",
            complete = QuestState(654, "complete"),
            route = {
                Point(MAP.TANARIS, 0.6199, 0.5559, "Glasshide Gazer",
                    "Travel to Glasshide Gazer."),
            },
        },
        {
            id = "turnin-654-tanaris-field-sampling",
            kind = "turnin",
            priority = 450,
            conditions = {
                all = {
                    { quest = { id = 243, state = "completed" } },
                },
            },
            text = "Turn in Tanaris Field Sampling to Chief Engineer Bilgewhizzle in Gadgetzan.",
            dependsOn = { "objective-654-tanaris-field-sampling" },
            complete = QuestState(654, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5245, 0.2851, "Chief Engineer Bilgewhizzle",
                    "Travel to Chief Engineer Bilgewhizzle."),
            },
        },
        {
            id = "accept-864-return-to-apothecary-zinge",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { quest = { id = 243, state = "completed" } },
                },
            },
            text = "Accept Return to Apothecary Zinge from Chief Engineer Bilgewhizzle in Gadgetzan.",
            complete = QuestState(864, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5245, 0.2851, "Chief Engineer Bilgewhizzle",
                    "Travel to Chief Engineer Bilgewhizzle."),
            },
        },
        {
            id = "travel-10-the-gaping-chasm",
            kind = "travel",
            priority = 470,
            text = "Travel to The Gaping Chasm. Go the the Gaping Chasm, enter the cave, go straight through the tunnel until you reach a large butterfly-shaped room where you can loot Scrimshank's Surveying Gear.",
            complete = QuestState(10, "complete"),
            dependsOn = { "accept-10-the-scrimshank-redemption" },
            route = {
                Point(MAP.TANARIS, 0.5577, 0.6909, "The Gaping Chasm",
                    "Travel to The Gaping Chasm."),
            },
        },
        {
            id = "objective-10-the-scrimshank-redemption",
            kind = "objective",
            priority = 480,
            text = "Go the the Gaping Chasm, enter the cave, go straight through the tunnel until you reach a large butterfly-shaped room where you can loot Scrimshank's Surveying Gear.",
            dependsOn = { "accept-10-the-scrimshank-redemption" },
            complete = QuestState(10, "complete"),
            route = {
                Point(MAP.TANARIS, 0.5600, 0.7120, "The Scrimshank Redemption",
                    "Travel to The Scrimshank Redemption."),
            },
        },
        {
            id = "accept-648-rescue-oox-17-tn",
            kind = "accept",
            priority = 490,
            conditions = {
                all = {
                    { quest = { id = 351, state = "completed" } },
                },
            },
            text = "Accept Rescue OOX-17/TN! from Homing Robot OOX-17/TN.",
            complete = QuestState(648, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.6023, 0.6468, "Homing Robot OOX-17/TN",
                    "Travel to Homing Robot OOX-17/TN."),
            },
        },
        {
            id = "objective-648-rescue-oox-17-tn",
            kind = "objective",
            priority = 500,
            conditions = {
                all = {
                    { quest = { id = 351, state = "completed" } },
                },
            },
            text = "Escort Homing Robot OOX-17/TN to Steamwheedle Port.",
            dependsOn = { "accept-648-rescue-oox-17-tn" },
            complete = QuestState(648, "complete"),
            route = {
                Point(MAP.TANARIS, 0.6660, 0.2376, "Homing Robot OOX-17/TN",
                    "Travel to Homing Robot OOX-17/TN."),
            },
        },
        {
            id = "turnin-10-the-scrimshank-redemption",
            kind = "turnin",
            priority = 520,
            text = "Turn in The Scrimshank Redemption to Senior Surveyor Fizzledowser in Gadgetzan.",
            dependsOn = { "objective-10-the-scrimshank-redemption" },
            complete = QuestState(10, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5020, 0.2746, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "accept-110-insect-part-analysis",
            kind = "accept",
            priority = 530,
            text = "Accept Insect Part Analysis from Senior Surveyor Fizzledowser in Gadgetzan.",
            complete = QuestState(110, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5020, 0.2746, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "turnin-110-insect-part-analysis",
            kind = "turnin",
            priority = 540,
            text = "Turn in Insect Part Analysis to Tran'rek in Gadgetzan.",
            dependsOn = { "accept-110-insect-part-analysis" },
            complete = QuestState(110, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5089, 0.2697, "Tran'rek",
                    "Travel to Tran'rek."),
            },
        },
        {
            id = "accept-113-insect-part-analysis",
            kind = "accept",
            priority = 550,
            text = "Accept Insect Part Analysis from Alchemist Pestlezugg in Gadgetzan.",
            complete = QuestState(113, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5089, 0.2697, "Alchemist Pestlezugg",
                    "Travel to Alchemist Pestlezugg."),
            },
        },
        {
            id = "turnin-113-insect-part-analysis",
            kind = "turnin",
            priority = 560,
            text = "Turn in Insect Part Analysis to Senior Surveyor Fizzledowser in Gadgetzan.",
            dependsOn = { "accept-113-insect-part-analysis" },
            complete = QuestState(113, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5022, 0.2747, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "accept-32-rise-of-the-silithid",
            kind = "accept",
            priority = 570,
            text = "Accept Rise of the Silithid from Senior Surveyor Fizzledowser in Gadgetzan.",
            complete = QuestState(32, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5022, 0.2747, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "accept-1189-safety-first",
            kind = "accept",
            priority = 580,
            conditions = {
                all = {
                    { quest = { id = 1188, state = "completed" } },
                },
            },
            text = "Accept Safety First from Yorba Screwspigot in Gadgetzan.",
            complete = QuestState(1189, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5095, 0.2723, "Yorba Screwspigot",
                    "Travel to Yorba Screwspigot."),
            },
        },
        {
            id = "turnin-1189-safety-first",
            kind = "turnin",
            priority = 590,
            conditions = {
                all = {
                    { quest = { id = 1188, state = "completed" } },
                },
            },
            text = "Turn in Safety First to Yorba Screwspigot in Mirage Raceway.",
            dependsOn = { "accept-1189-safety-first" },
            complete = QuestState(1189, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8033, 0.7610, "Yorba Screwspigot",
                    "Travel to Yorba Screwspigot."),
            },
        },
    },
})
