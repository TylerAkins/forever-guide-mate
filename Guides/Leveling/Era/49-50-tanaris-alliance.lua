local _, ns = ...

-- Alliance Era leveling route for Tanaris, levels 49-50.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    TANARIS = 1446,
    DUSTWALLOW = 1445,
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
    id = "leveling-era-49-50-tanaris-alliance",
    title = "49-50 Tanaris (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 49 } },
        },
    },
    goals = {
        {
            id = "travel-623-theramore-isle",
            kind = "travel",
            priority = 10,
            text = "Travel to Theramore Isle.",
            route = {
                Point(MAP.DUSTWALLOW, 0.6884, 0.5321, "Theramore Isle",
                    "Travel to Theramore Isle."),
            },
        },
        {
            id = "turnin-623-akiris-by-the-bundle",
            kind = "turnin",
            priority = 20,
            text = "Turn in Akiris by the Bundle to Privateer Groy in Theramore Isle.",
            complete = QuestState(623, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6884, 0.5321, "Privateer Groy",
                    "Travel to Privateer Groy."),
            },
        },
        {
            id = "travel-4450-3-beezil-s-wreck",
            kind = "travel",
            priority = 30,
            text = "Travel to Beezil's Wreck.",
            complete = QuestObjective(4450, 3),
            route = {
                Point(MAP.DUSTWALLOW, 0.6750, 0.5475, "Continue toward Beezil's Wreck",
                    "Continue toward Beezil's Wreck."),
                Point(MAP.DUSTWALLOW, 0.5574, 0.5002, "Continue toward Beezil's Wreck",
                    "Continue toward Beezil's Wreck."),
                Point(MAP.DUSTWALLOW, 0.5434, 0.5164, "Beezil's Wreck",
                    "Travel to Beezil's Wreck."),
            },
        },
        {
            id = "objective-4450-3-overdue-package",
            kind = "objective",
            priority = 40,
            text = "Collect Overdue Package from the Damaged Crate in Beezil's Wreck.",
            complete = QuestObjective(4450, 3),
            route = {
                Point(MAP.DUSTWALLOW, 0.5404, 0.5591, "Beezil's Wreck",
                    "Travel to Beezil's Wreck."),
            },
        },
        {
            id = "accept-626-cortello-s-riddle",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 625, state = "completed" } },
                },
            },
            text = "Accept Cortello's Riddle in Bloodfen Burrow.",
            complete = QuestState(626, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3113, 0.6613, "Bloodfen Burrow",
                    "Travel to Bloodfen Burrow."),
            },
        },
        {
            id = "travel-626-theramore-isle",
            kind = "travel",
            priority = 60,
            text = "Travel to Theramore Isle.",
            route = {
                Point(MAP.DUSTWALLOW, 0.6884, 0.5321, "Theramore Isle",
                    "Travel to Theramore Isle."),
            },
        },
        {
            id = "travel-5863-gadgetzan",
            kind = "travel",
            priority = 70,
            text = "Travel to Gadgetzan.",
            route = {
                Point(MAP.TANARIS, 0.5250, 0.2790, "Gadgetzan",
                    "Travel to Gadgetzan."),
            },
        },
        {
            id = "note-82-gadgetzan",
            kind = "note",
            priority = 80,
            text = "Set your hearth in Gadgetzan with Innkeeper Fizzgrimble.",
            route = {
                Point(MAP.TANARIS, 0.5250, 0.2790, "Innkeeper Fizzgrimble",
                    "Travel to Innkeeper Fizzgrimble."),
            },
        },
        {
            id = "accept-2605-the-thirsty-goblin",
            kind = "accept",
            priority = 90,
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
            priority = 100,
            text = "Accept Gadgetzan Water Survey from Senior Surveyor Fizzledowser in Gadgetzan.",
            complete = QuestState(992, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5022, 0.2749, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "travel-992-sandsorrow-watch",
            kind = "travel",
            priority = 110,
            text = "Travel to Sandsorrow Watch.",
            route = {
                Point(MAP.TANARIS, 0.3940, 0.2926, "Sandsorrow Watch",
                    "Travel to Sandsorrow Watch."),
            },
        },
        {
            id = "objective-992-gadgetzan-water-survey",
            kind = "objective",
            priority = 120,
            text = "Use Untapped Dowsing Widget inside the pool in Sandsorrow Watch.",
            dependsOn = { "accept-992-gadgetzan-water-survey" },
            complete = QuestState(992, "complete"),
            route = {
                Point(MAP.TANARIS, 0.3940, 0.2926, "Sandsorrow Watch",
                    "Travel to Sandsorrow Watch."),
            },
        },
        {
            id = "travel-992-gadgetzan",
            kind = "travel",
            priority = 130,
            text = "Travel to Gadgetzan.",
            route = {
                Point(MAP.TANARIS, 0.5247, 0.2843, "Gadgetzan",
                    "Travel to Gadgetzan."),
            },
        },
        {
            id = "turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            priority = 140,
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
            priority = 150,
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
            priority = 160,
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
            priority = 170,
            text = "Accept The Dunemaul Compound from Andi Lynn in Gadgetzan.",
            complete = QuestState(5863, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5276, 0.2737, "Andi Lynn",
                    "Travel to Andi Lynn."),
            },
        },
        {
            id = "travel-3444-broken-pillar",
            kind = "travel",
            priority = 180,
            text = "Travel to Broken Pillar.",
            route = {
                Point(MAP.TANARIS, 0.5272, 0.4592, "Broken Pillar",
                    "Travel to Broken Pillar."),
            },
        },
        {
            id = "turnin-3445-the-sunken-temple",
            kind = "turnin",
            priority = 190,
            text = "Turn in The Sunken Temple to Marvon Rivetseeker in Broken Pillar.",
            complete = QuestState(3445, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5272, 0.4592, "Marvon Rivetseeker",
                    "Travel to Marvon Rivetseeker."),
            },
        },
        {
            id = "accept-3444-the-stone-circle",
            kind = "accept",
            priority = 200,
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
            priority = 210,
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
            priority = 220,
            text = "Use Gahz'ridian Detector to help you find 30 Gahz'ridian Ornament from the small sand mound on the ground.",
            dependsOn = { "accept-3161-gahz-ridian" },
            complete = QuestState(3161, "complete"),
        },
        {
            id = "travel-5863-dunemaul-compound",
            kind = "travel",
            priority = 230,
            text = "Travel to Dunemaul Compound.",
            route = {
                Point(MAP.TANARIS, 0.4109, 0.5739, "Dunemaul Compound",
                    "Travel to Dunemaul Compound."),
            },
        },
        {
            id = "objective-5863-3-gor-marok-the-ravager",
            kind = "objective",
            priority = 240,
            text = "Kill Gor'marok the Ravager inside the cave in Dunemaul Compound.",
            dependsOn = { "accept-5863-the-dunemaul-compound" },
            complete = QuestObjective(5863, 3),
            route = {
                Point(MAP.TANARIS, 0.4146, 0.5778, "Gor'marok the Ravager",
                    "Travel to Gor'marok the Ravager."),
            },
        },
        {
            id = "objective-1452-1-searing-roc",
            kind = "objective",
            priority = 250,
            text = "Kill Searing Roc and collect 3 Roc Gizzard.",
            complete = QuestObjective(1452, 1),
            route = {
                Point(MAP.TANARIS, 0.4220, 0.6378, "Searing Roc",
                    "Travel to Searing Roc."),
            },
        },
        {
            id = "objective-5863-the-dunemaul-compound",
            kind = "objective",
            priority = 260,
            text = "Kill 10 Dunemaul Brute, 10 Dunemaul Enforcer and Gor'marok the Ravager in Dunemaul Compound.",
            dependsOn = { "accept-5863-the-dunemaul-compound" },
            complete = QuestState(5863, "complete"),
            route = {
                Point(MAP.TANARIS, 0.4043, 0.5572, "Continue toward The Dunemaul Compound",
                    "Continue toward The Dunemaul Compound."),
                Point(MAP.TANARIS, 0.4056, 0.7271, "Continue toward The Dunemaul Compound",
                    "Continue toward The Dunemaul Compound."),
                Point(MAP.TANARIS, 0.4702, 0.6585, "Dunemaul Brute",
                    "Travel to Dunemaul Brute."),
            },
        },
        {
            id = "travel-5863-dunemaul-compound-2",
            kind = "travel",
            priority = 270,
            text = "Travel to Dunemaul Compound.",
            route = {
                Point(MAP.TANARIS, 0.4109, 0.5739, "Dunemaul Compound",
                    "Travel to Dunemaul Compound."),
            },
        },
        {
            id = "objective-3161-gahz-ridian",
            kind = "objective",
            priority = 280,
            text = "Equip the Gahz'ridian Detector to find 30 Gahz'ridian Ornament all over Tanaris and especially near the Eastmoon Ruins.",
            dependsOn = { "accept-3161-gahz-ridian" },
            complete = QuestState(3161, "complete"),
            route = {
                Point(MAP.TANARIS, 0.4043, 0.5572, "Continue toward Gahz'ridian",
                    "Continue toward Gahz'ridian."),
                Point(MAP.TANARIS, 0.4056, 0.7271, "Continue toward Gahz'ridian",
                    "Continue toward Gahz'ridian."),
                Point(MAP.TANARIS, 0.4702, 0.6585, "Eastmoon Ruins",
                    "Travel to Eastmoon Ruins."),
            },
        },
        {
            id = "travel-82-the-noxious-lair",
            kind = "travel",
            priority = 290,
            text = "Travel to The Noxious Lair.",
            route = {
                Point(MAP.TANARIS, 0.3481, 0.4360, "The Noxious Lair",
                    "Travel to The Noxious Lair."),
            },
        },
        {
            id = "objective-82-noxious-lair-investigation",
            kind = "objective",
            priority = 300,
            text = "Kill Centipaar insects and collect 5 Centipaar Insect Parts in The Noxious Lair.",
            dependsOn = { "accept-82-noxious-lair-investigation" },
            complete = QuestState(82, "complete"),
            route = {
                Point(MAP.TANARIS, 0.3400, 0.4700, "Centipaar Swarmer",
                    "Travel to Centipaar Swarmer."),
            },
        },
        {
            id = "travel-2605-thistleshrub-valley",
            kind = "travel",
            priority = 310,
            text = "Travel to Thistleshrub Valley.",
            route = {
                Point(MAP.TANARIS, 0.2818, 0.6386, "Thistleshrub Valley",
                    "Travel to Thistleshrub Valley."),
            },
        },
        {
            id = "objective-2605-thistleshrub-dew-collector",
            kind = "objective",
            priority = 320,
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
            priority = 330,
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
            priority = 340,
            text = "Accept Tooga's Quest from Tooga.",
            complete = QuestState(1560, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.3200, 0.7200, "Continue toward Tooga's Quest",
                    "Continue toward Tooga's Quest."),
                Point(MAP.TANARIS, 0.2940, 0.7420, "Tooga",
                    "Travel to Tooga."),
            },
        },
        {
            id = "objective-1560-tooga-s-quest",
            kind = "objective",
            priority = 350,
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
            priority = 360,
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
            priority = 370,
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
            priority = 380,
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
            priority = 390,
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
            priority = 400,
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
            priority = 410,
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
            priority = 420,
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
            priority = 430,
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
            priority = 440,
            text = "Turn in Thistleshrub Valley to Tran'rek in Gadgetzan.",
            dependsOn = { "objective-3362-thistleshrub-valley" },
            complete = QuestState(3362, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5159, 0.2677, "Tran'rek",
                    "Travel to Tran'rek."),
            },
        },
        {
            id = "travel-3161-broken-pillar",
            kind = "travel",
            priority = 450,
            text = "Travel to Broken Pillar.",
            route = {
                Point(MAP.TANARIS, 0.5272, 0.4592, "Broken Pillar",
                    "Travel to Broken Pillar."),
            },
        },
        {
            id = "turnin-3161-gahz-ridian",
            kind = "turnin",
            priority = 460,
            text = "Turn in Gahz'ridian to Marvon Rivetseeker in Broken Pillar.",
            dependsOn = { "objective-3161-gahz-ridian-detector", "objective-3161-gahz-ridian" },
            complete = QuestState(3161, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5272, 0.4592, "Marvon Rivetseeker",
                    "Travel to Marvon Rivetseeker."),
            },
        },
        {
            id = "travel-10-the-gaping-chasm",
            kind = "travel",
            priority = 470,
            text = "Travel to The Gaping Chasm.",
            route = {
                Point(MAP.TANARIS, 0.5577, 0.6909, "The Gaping Chasm",
                    "Travel to The Gaping Chasm."),
            },
        },
        {
            id = "objective-10-the-scrimshank-redemption",
            kind = "objective",
            priority = 480,
            text = "Go to the Gaping Chasm, enter the cave, and follow the tunnel to the butterfly-shaped room. Loot Scrimshank's Surveying Gear there.",
            dependsOn = { "accept-10-the-scrimshank-redemption" },
            complete = QuestState(10, "complete"),
            route = {
                Point(MAP.TANARIS, 0.5626, 0.6837, "Continue toward The Scrimshank Redemption",
                    "Continue toward The Scrimshank Redemption."),
                Point(MAP.TANARIS, 0.5715, 0.7011, "Continue toward The Scrimshank Redemption",
                    "Continue toward The Scrimshank Redemption."),
                Point(MAP.TANARIS, 0.5736, 0.7131, "Continue toward The Scrimshank Redemption",
                    "Continue toward The Scrimshank Redemption."),
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
                Point(MAP.TANARIS, 0.6037, 0.5557, "Continue toward Rescue OOX-17/TN!",
                    "Continue toward Rescue OOX-17/TN!."),
                Point(MAP.TANARIS, 0.6140, 0.4671, "Continue toward Rescue OOX-17/TN!",
                    "Continue toward Rescue OOX-17/TN!."),
                Point(MAP.TANARIS, 0.6583, 0.4186, "Continue toward Rescue OOX-17/TN!",
                    "Continue toward Rescue OOX-17/TN!."),
                Point(MAP.TANARIS, 0.6660, 0.2376, "Homing Robot OOX-17/TN",
                    "Travel to Homing Robot OOX-17/TN."),
            },
        },
        {
            id = "travel-110-gadgetzan",
            kind = "travel",
            priority = 510,
            text = "Travel or Hearthstone to Gadgetzan.",
            route = {
                Point(MAP.TANARIS, 0.5020, 0.2746, "Gadgetzan",
                    "Travel to Gadgetzan."),
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
            id = "accept-162-rise-of-the-silithid",
            kind = "accept",
            priority = 570,
            text = "Accept Rise of the Silithid from Senior Surveyor Fizzledowser in Gadgetzan.",
            complete = QuestState(162, "activeOrCompleted"),
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
            text = "Accept Safety First from Shreev in Gadgetzan.",
            complete = QuestState(1189, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5095, 0.2723, "Shreev",
                    "Travel to Shreev."),
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
            text = "Turn in Safety First to Razzeric in Mirage Raceway.",
            dependsOn = { "accept-1189-safety-first" },
            complete = QuestState(1189, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8033, 0.7610, "Razzeric",
                    "Travel to Razzeric."),
            },
        },
        {
            id = "objective-3842-a-short-incubation",
            kind = "objective",
            priority = 600,
            conditions = {
                all = {
                    { quest = { id = 3842, state = "completed" } },
                },
            },
            text = "Skip if you don't have 2 Elixir of Fortitude.",
            complete = QuestState(3842, "complete"),
        },
        {
            id = "turnin-3842-a-short-incubation",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { quest = { id = 3842, state = "completed" } },
                },
            },
            text = "Turn in A Short Incubation to Quentin in Mirage Raceway.",
            dependsOn = { "objective-3842-a-short-incubation" },
            complete = QuestState(3842, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7833, 0.7472, "Quentin",
                    "Travel to Quentin."),
            },
        },
    },
})
