local _, ns = ...

-- Forever Casual spine: Un'Goro Crater (53-54)
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
    TELDRASSIL = 1438,
    TANARIS = 1446,
    UN_GORO_CRATER = 1449,
    DARNASSUS = 1457,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-ungoro-crater-part-2",
    title = "Un'Goro Crater",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 53 } },
        },
    },
    goals = {
        {
            id = "accept-4504-super-sticky",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Super Sticky.",
            complete = QuestState(4504, "activeOrCompleted"),
            route = {
                Point(1446, 0.5157, 0.2676, "Super Sticky",
                    "Travel to Super Sticky."),
            },
        },
        {
            id = "turnin-2641-sprinkle-s-secret-ingredient",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Sprinkle's Secret Ingredient.",
            complete = QuestState(2641, "completed"),
            route = {
                Point(1446, 0.5106, 0.2687, "Sprinkle's Secret Ingredient",
                    "Travel to Sprinkle's Secret Ingredient."),
            },
        },
        {
            id = "accept-2661-delivery-for-marin",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Delivery for Marin.",
            complete = QuestState(2661, "activeOrCompleted"),
            route = {
                Point(1446, 0.5106, 0.2687, "Delivery for Marin",
                    "Travel to Delivery for Marin."),
            },
        },
        {
            id = "turnin-4493-march-of-the-silithid",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in March of the Silithid.",
            complete = QuestState(4493, "completed"),
            route = {
                Point(1446, 0.5089, 0.2696, "March of the Silithid",
                    "Travel to March of the Silithid."),
            },
        },
        {
            id = "accept-4496-bungle-in-the-jungle",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bungle in the Jungle.",
            complete = QuestState(4496, "activeOrCompleted"),
            route = {
                Point(1446, 0.5089, 0.2696, "Bungle in the Jungle",
                    "Travel to Bungle in the Jungle."),
            },
        },
        {
            id = "turnin-2661-delivery-for-marin",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Delivery for Marin.",
            complete = QuestState(2661, "completed"),
            dependsOn = { "accept-2661-delivery-for-marin" },
            route = {
                Point(1446, 0.5181, 0.2866, "Delivery for Marin",
                    "Travel to Delivery for Marin."),
            },
        },
        {
            id = "accept-2662-noggenfogger-elixir",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Noggenfogger Elixir.",
            complete = QuestState(2662, "activeOrCompleted"),
            route = {
                Point(1446, 0.5181, 0.2866, "Noggenfogger Elixir",
                    "Travel to Noggenfogger Elixir."),
            },
        },
        {
            id = "turnin-2662-noggenfogger-elixir",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Noggenfogger Elixir.",
            complete = QuestState(2662, "completed"),
            dependsOn = { "accept-2662-noggenfogger-elixir" },
            route = {
                Point(1446, 0.5181, 0.2866, "Noggenfogger Elixir",
                    "Travel to Noggenfogger Elixir."),
            },
        },
        {
            id = "turnin-3444-the-stone-circle",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Stone Circle.",
            complete = QuestState(3444, "completed"),
            route = {
                Point(1446, 0.5271, 0.4592, "The Stone Circle",
                    "Travel to The Stone Circle."),
            },
        },
        {
            id = "accept-3881-expedition-salvation",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Expedition Salvation.",
            complete = QuestState(3881, "activeOrCompleted"),
            route = {
                Point(1449, 0.4395, 0.0714, "Expedition Salvation",
                    "Travel to Expedition Salvation."),
            },
        },
        {
            id = "accept-3883-alien-ecology",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Alien Ecology.",
            complete = QuestState(3883, "activeOrCompleted"),
            route = {
                Point(1449, 0.4389, 0.0724, "Alien Ecology",
                    "Travel to Alien Ecology."),
            },
        },
        {
            id = "accept-3882-roll-the-bones",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Roll the Bones.",
            complete = QuestState(3882, "activeOrCompleted"),
            route = {
                Point(1449, 0.4350, 0.0742, "Roll the Bones",
                    "Travel to Roll the Bones."),
            },
        },
        {
            id = "accept-4285-the-northern-pylon",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Northern Pylon.",
            complete = QuestState(4285, "activeOrCompleted"),
            route = {
                Point(1449, 0.4347, 0.0679, "The Northern Pylon",
                    "Travel to The Northern Pylon."),
            },
        },
        {
            id = "accept-4287-the-eastern-pylon",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Eastern Pylon.",
            complete = QuestState(4287, "activeOrCompleted"),
            route = {
                Point(1449, 0.4347, 0.0679, "The Eastern Pylon",
                    "Travel to The Eastern Pylon."),
            },
        },
        {
            id = "accept-4288-the-western-pylon",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Western Pylon.",
            complete = QuestState(4288, "activeOrCompleted"),
            route = {
                Point(1449, 0.4347, 0.0679, "The Western Pylon",
                    "Travel to The Western Pylon."),
            },
        },
        {
            id = "accept-4501-beware-of-pterrordax",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Beware of Pterrordax.",
            complete = QuestState(4501, "activeOrCompleted"),
            route = {
                Point(1449, 0.4347, 0.0679, "Beware of Pterrordax",
                    "Travel to Beware of Pterrordax."),
            },
        },
        {
            id = "accept-4492-lost",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Lost!.",
            complete = QuestState(4492, "activeOrCompleted"),
            route = {
                Point(1449, 0.4361, 0.0850, "Lost!",
                    "Travel to Lost!."),
            },
        },
        {
            id = "accept-4503-shizzle-s-flyer",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Shizzle's Flyer.",
            complete = QuestState(4503, "activeOrCompleted"),
            route = {
                Point(1449, 0.4424, 0.1159, "Shizzle's Flyer",
                    "Travel to Shizzle's Flyer."),
            },
        },
        {
            id = "objective-4501-1-pterrordax",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Pterrordax.",
            complete = QuestObjective(4501, 1, "Pterrordax"),
            dependsOn = { "accept-4501-beware-of-pterrordax" },
            route = {
                Point(1449, 0.5600, 0.0980, "Pterrordax",
                    "Travel to Pterrordax."),
            },
        },
        {
            id = "objective-4289-1-un-goro-gorilla",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Kill Un'Goro Gorilla.",
            complete = QuestObjective(4289, 1, "Un'Goro Gorilla"),
            route = {
                Point(1449, 0.6423, 0.1636, "Un'Goro Gorilla",
                    "Travel to Un'Goro Gorilla."),
            },
        },
        {
            id = "objective-4292-1-torwa-s-pouch",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Use Torwa's Pouch.",
            complete = QuestObjective(4292, 1, "Torwa's Pouch"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-4292-1-preserved-threshadon-meat",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Use Preserved Threshadon Meat.",
            complete = QuestObjective(4292, 1, "Preserved Threshadon Meat"),
            route = {
                Point(1449, 0.7992, 0.4990, "Preserved Threshadon Meat",
                    "Travel to Preserved Threshadon Meat."),
            },
        },
        {
            id = "turnin-4289-the-apes-of-un-goro",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Apes of Un'Goro.",
            complete = QuestState(4289, "completed"),
            dependsOn = { "objective-4289-1-un-goro-gorilla" },
            route = {
                Point(1449, 0.7164, 0.7597, "The Apes of Un'Goro",
                    "Travel to The Apes of Un'Goro."),
            },
        },
        {
            id = "turnin-4292-the-bait-for-lar-korwi",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Bait for Lar'korwi.",
            complete = QuestState(4292, "completed"),
            dependsOn = { "objective-4292-1-torwa-s-pouch", "objective-4292-1-preserved-threshadon-meat" },
            route = {
                Point(1449, 0.7164, 0.7597, "The Bait for Lar'korwi",
                    "Travel to The Bait for Lar'korwi."),
            },
        },
        {
            id = "accept-4301-the-mighty-u-cha",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Mighty U'cha.",
            complete = QuestState(4301, "activeOrCompleted"),
            route = {
                Point(1449, 0.7164, 0.7597, "The Mighty U'cha",
                    "Travel to The Mighty U'cha."),
            },
        },
        {
            id = "objective-4501-1-pterrordax-2",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Pterrordax.",
            complete = QuestObjective(4501, 1, "Pterrordax"),
            dependsOn = { "accept-4501-beware-of-pterrordax" },
            route = {
                Point(1449, 0.5800, 0.8640, "Pterrordax",
                    "Travel to Pterrordax."),
            },
        },
        {
            id = "objective-3883-1-unused-scraping-vial",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Use Unused Scraping Vial.",
            complete = QuestObjective(3883, 1, "Unused Scraping Vial"),
            dependsOn = { "accept-3883-alien-ecology" },
            route = {
                Point(1449, 0.4995, 0.8170, "Unused Scraping Vial",
                    "Travel to Unused Scraping Vial."),
            },
        },
        {
            id = "accept-974-finding-the-source",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Finding the Source.",
            complete = QuestState(974, "activeOrCompleted"),
            route = {
                Point(1449, 0.3093, 0.5043, "Finding the Source",
                    "Travel to Finding the Source."),
            },
        },
        {
            id = "turnin-974-finding-the-source",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Finding the Source.",
            complete = QuestState(974, "completed"),
            dependsOn = { "accept-974-finding-the-source" },
            route = {
                Point(1449, 0.3093, 0.5043, "Finding the Source",
                    "Travel to Finding the Source."),
            },
        },
        {
            id = "accept-980-the-new-springs",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept The New Springs.",
            complete = QuestState(980, "activeOrCompleted"),
            route = {
                Point(1449, 0.3093, 0.5043, "The New Springs",
                    "Travel to The New Springs."),
            },
        },
        {
            id = "objective-4496-2-un-goro-soil",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Collect 5 Un'Goro Soil.",
            complete = QuestObjective(4496, 2, "Un'Goro Soil"),
            dependsOn = { "accept-4496-bungle-in-the-jungle" },
            route = {
                Point(1449, 0.3480, 0.4000, "Un'Goro Soil",
                    "Travel to Un'Goro Soil."),
            },
        },
        {
            id = "turnin-4492-lost",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Lost!.",
            complete = QuestState(4492, "completed"),
            dependsOn = { "accept-4492-lost" },
            route = {
                Point(1449, 0.5190, 0.4985, "Lost!",
                    "Travel to Lost!."),
            },
        },
        {
            id = "accept-4491-a-little-help-from-my-friends",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Little Help From My Friends.",
            complete = QuestState(4491, "activeOrCompleted"),
            route = {
                Point(1449, 0.5190, 0.4985, "A Little Help From My Friends",
                    "Travel to A Little Help From My Friends."),
            },
        },
        {
            id = "turnin-4491-a-little-help-from-my-friends",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Little Help From My Friends.",
            complete = QuestState(4491, "completed"),
            dependsOn = { "accept-4491-a-little-help-from-my-friends" },
            route = {
                Point(1449, 0.4362, 0.0851, "A Little Help From My Friends",
                    "Travel to A Little Help From My Friends."),
            },
        },
        {
            id = "turnin-4501-beware-of-pterrordax",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Beware of Pterrordax.",
            complete = QuestState(4501, "completed"),
            dependsOn = { "accept-4501-beware-of-pterrordax", "objective-4501-1-pterrordax", "objective-4501-1-pterrordax-2" },
            route = {
                Point(1449, 0.4362, 0.0851, "Beware of Pterrordax",
                    "Travel to Beware of Pterrordax."),
            },
        },
        {
            id = "turnin-3882-roll-the-bones",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Roll the Bones.",
            complete = QuestState(3882, "completed"),
            dependsOn = { "accept-3882-roll-the-bones" },
            route = {
                Point(1449, 0.4350, 0.0743, "Roll the Bones",
                    "Travel to Roll the Bones."),
            },
        },
        {
            id = "turnin-4285-the-northern-pylon",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Northern Pylon.",
            complete = QuestState(4285, "completed"),
            dependsOn = { "accept-4285-the-northern-pylon" },
            route = {
                Point(1449, 0.4347, 0.0679, "The Northern Pylon",
                    "Travel to The Northern Pylon."),
            },
        },
        {
            id = "turnin-4287-the-eastern-pylon",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Eastern Pylon.",
            complete = QuestState(4287, "completed"),
            dependsOn = { "accept-4287-the-eastern-pylon" },
            route = {
                Point(1449, 0.4347, 0.0679, "The Eastern Pylon",
                    "Travel to The Eastern Pylon."),
            },
        },
        {
            id = "turnin-4288-the-western-pylon",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Western Pylon.",
            complete = QuestState(4288, "completed"),
            dependsOn = { "accept-4288-the-western-pylon" },
            route = {
                Point(1449, 0.4347, 0.0679, "The Western Pylon",
                    "Travel to The Western Pylon."),
            },
        },
        {
            id = "accept-4321-making-sense-of-it",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Making Sense of It.",
            complete = QuestState(4321, "activeOrCompleted"),
            route = {
                Point(1449, 0.4347, 0.0679, "Making Sense of It",
                    "Travel to Making Sense of It."),
            },
        },
        {
            id = "turnin-4321-making-sense-of-it",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Making Sense of It.",
            complete = QuestState(4321, "completed"),
            dependsOn = { "accept-4321-making-sense-of-it" },
            route = {
                Point(1449, 0.4192, 0.0270, "Making Sense of It",
                    "Travel to Making Sense of It."),
            },
        },
        {
            id = "turnin-3883-alien-ecology",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Alien Ecology.",
            complete = QuestState(3883, "completed"),
            dependsOn = { "accept-3883-alien-ecology", "objective-3883-1-unused-scraping-vial" },
            route = {
                Point(1449, 0.4347, 0.0679, "Alien Ecology",
                    "Travel to Alien Ecology."),
            },
        },
        {
            id = "turnin-3881-expedition-salvation",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Expedition Salvation.",
            complete = QuestState(3881, "completed"),
            dependsOn = { "accept-3881-expedition-salvation" },
            route = {
                Point(1449, 0.4395, 0.0714, "Expedition Salvation",
                    "Travel to Expedition Salvation."),
            },
        },
        {
            id = "turnin-4503-shizzle-s-flyer",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Shizzle's Flyer.",
            complete = QuestState(4503, "completed"),
            dependsOn = { "accept-4503-shizzle-s-flyer" },
            route = {
                Point(1449, 0.4423, 0.1159, "Shizzle's Flyer",
                    "Travel to Shizzle's Flyer."),
            },
        },
        {
            id = "accept-4243-chasing-a-me-01",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Chasing A-Me 01.",
            complete = QuestState(4243, "activeOrCompleted"),
            route = {
                Point(1449, 0.4638, 0.1344, "Chasing A-Me 01",
                    "Travel to Chasing A-Me 01."),
            },
        },
        {
            id = "objective-4301-1-u-cha",
            kind = "objective",
            priority = 460,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Kill U'cha.",
            complete = QuestObjective(4301, 1, "U'cha"),
            dependsOn = { "accept-4301-the-mighty-u-cha" },
            route = {
                Point(1449, 0.6388, 0.1644, "U'cha",
                    "Travel to U'cha."),
            },
        },
        {
            id = "turnin-4243-chasing-a-me-01",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Chasing A-Me 01.",
            complete = QuestState(4243, "completed"),
            dependsOn = { "accept-4243-chasing-a-me-01" },
            route = {
                Point(1449, 0.6587, 0.1675, "Chasing A-Me 01",
                    "Travel to Chasing A-Me 01."),
            },
        },
        {
            id = "accept-4244-chasing-a-me-01",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Chasing A-Me 01.",
            complete = QuestState(4244, "activeOrCompleted"),
            route = {
                Point(1449, 0.6587, 0.1675, "Chasing A-Me 01",
                    "Travel to Chasing A-Me 01."),
            },
        },
        {
            id = "turnin-4244-chasing-a-me-01",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Chasing A-Me 01.",
            complete = QuestState(4244, "completed"),
            dependsOn = { "accept-4244-chasing-a-me-01" },
            route = {
                Point(1449, 0.6765, 0.1676, "Chasing A-Me 01",
                    "Travel to Chasing A-Me 01."),
            },
        },
        {
            id = "accept-4245-chasing-a-me-01",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Chasing A-Me 01.",
            complete = QuestState(4245, "activeOrCompleted"),
            route = {
                Point(1449, 0.6765, 0.1676, "Chasing A-Me 01",
                    "Travel to Chasing A-Me 01."),
            },
        },
        {
            id = "turnin-4245-chasing-a-me-01",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Chasing A-Me 01.",
            complete = QuestState(4245, "completed"),
            dependsOn = { "accept-4245-chasing-a-me-01" },
            route = {
                Point(1449, 0.4638, 0.1345, "Chasing A-Me 01",
                    "Travel to Chasing A-Me 01."),
            },
        },
        {
            id = "turnin-4301-the-mighty-u-cha",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Mighty U'cha.",
            complete = QuestState(4301, "completed"),
            dependsOn = { "accept-4301-the-mighty-u-cha", "objective-4301-1-u-cha" },
            route = {
                Point(1449, 0.6423, 0.1636, "The Mighty U'cha",
                    "Travel to The Mighty U'cha."),
            },
        },
        {
            id = "accept-3908-it-s-a-secret-to-everybody",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { quest = { id = 3908, state = "notCompleted" } },
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept It's a Secret to Everybody.",
            complete = QuestState(3908, "activeOrCompleted"),
            route = {
                Point(1449, 0.4466, 0.0810, "It's a Secret to Everybody",
                    "Travel to It's a Secret to Everybody."),
            },
        },
        {
            id = "turnin-4496-bungle-in-the-jungle",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bungle in the Jungle.",
            complete = QuestState(4496, "completed"),
            dependsOn = { "accept-4496-bungle-in-the-jungle", "objective-4496-2-un-goro-soil" },
            route = {
                Point(1446, 0.5089, 0.2696, "Bungle in the Jungle",
                    "Travel to Bungle in the Jungle."),
            },
        },
        {
            id = "turnin-4504-super-sticky",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Super Sticky.",
            complete = QuestState(4504, "completed"),
            dependsOn = { "accept-4504-super-sticky" },
            route = {
                Point(1446, 0.5157, 0.2676, "Super Sticky",
                    "Travel to Super Sticky."),
            },
        },
        {
            id = "objective-3909-1-videre-elixir",
            kind = "objective",
            priority = 560,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Collect 3 Videre Elixir.",
            complete = QuestObjective(3909, 1, "Videre Elixir"),
            route = {
                Point(1446, 0.5230, 0.2891, "Videre Elixir",
                    "Travel to Videre Elixir."),
            },
        },
        {
            id = "objective-978-1-moontouched-feather",
            kind = "objective",
            priority = 570,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Collect 10 Moontouched Feather.",
            complete = QuestObjective(978, 1, "Moontouched Feather"),
            route = {
                Point(1446, 0.5230, 0.2891, "Moontouched Feather",
                    "Travel to Moontouched Feather."),
            },
        },
        {
            id = "accept-5159-cleansed-water-returns-to-felwood",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Cleansed Water Returns to Felwood.",
            complete = QuestState(5159, "activeOrCompleted"),
            route = {
                Point(1413, 0.6583, 0.4378, "Cleansed Water Returns to Felwood",
                    "Travel to Cleansed Water Returns to Felwood."),
            },
        },
        {
            id = "turnin-4502-volcanic-activity",
            kind = "turnin",
            priority = 590,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Volcanic Activity.",
            complete = QuestState(4502, "completed"),
            route = {
                Point(1413, 0.6245, 0.3874, "Volcanic Activity",
                    "Travel to Volcanic Activity."),
            },
        },
        {
            id = "objective-4441-1-eridan-s-vial",
            kind = "objective",
            priority = 600,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Use Eridan's Vial.",
            complete = QuestObjective(4441, 1, "Eridan's Vial"),
            route = {
                Point(1457, 0.3951, 0.8392, "Eridan's Vial",
                    "Travel to Eridan's Vial."),
            },
        },
        {
            id = "objective-10352-1-wool-cloth",
            kind = "objective",
            priority = 610,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Collect 60 Wool Cloth.",
            complete = QuestObjective(10352, 1, "Wool Cloth"),
            route = {
                Point(1457, 0.5624, 0.5405, "Wool Cloth",
                    "Travel to Wool Cloth."),
            },
        },
        {
            id = "objective-10354-1-silk-cloth",
            kind = "objective",
            priority = 620,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Collect 60 Silk Cloth.",
            complete = QuestObjective(10354, 1, "Silk Cloth"),
            route = {
                Point(1457, 0.5624, 0.5405, "Silk Cloth",
                    "Travel to Silk Cloth."),
            },
        },
        {
            id = "objective-7799-1-mageweave-cloth",
            kind = "objective",
            priority = 630,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Collect 60 Mageweave Cloth.",
            complete = QuestObjective(7799, 1, "Mageweave Cloth"),
            route = {
                Point(1457, 0.5624, 0.5405, "Mageweave Cloth",
                    "Travel to Mageweave Cloth."),
            },
        },
        {
            id = "objective-7800-1-runecloth",
            kind = "objective",
            priority = 640,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Collect 60 Runecloth.",
            complete = QuestObjective(7800, 1, "Runecloth"),
            route = {
                Point(1457, 0.5624, 0.5405, "Runecloth",
                    "Travel to Runecloth."),
            },
        },
        {
            id = "accept-10352-a-donation-of-wool",
            kind = "accept",
            priority = 650,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Wool.",
            complete = QuestState(10352, "activeOrCompleted"),
            route = {
                Point(1457, 0.6403, 0.2301, "A Donation of Wool",
                    "Travel to A Donation of Wool."),
            },
        },
        {
            id = "accept-10354-a-donation-of-silk",
            kind = "accept",
            priority = 660,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Silk.",
            complete = QuestState(10354, "activeOrCompleted"),
            route = {
                Point(1457, 0.6403, 0.2301, "A Donation of Silk",
                    "Travel to A Donation of Silk."),
            },
        },
        {
            id = "accept-7799-a-donation-of-mageweave",
            kind = "accept",
            priority = 670,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Mageweave.",
            complete = QuestState(7799, "activeOrCompleted"),
            route = {
                Point(1457, 0.6403, 0.2301, "A Donation of Mageweave",
                    "Travel to A Donation of Mageweave."),
            },
        },
        {
            id = "accept-7800-a-donation-of-runecloth",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Runecloth.",
            complete = QuestState(7800, "activeOrCompleted"),
            route = {
                Point(1457, 0.6403, 0.2301, "A Donation of Runecloth",
                    "Travel to A Donation of Runecloth."),
            },
        },
        {
            id = "accept-1047-the-new-frontier",
            kind = "accept",
            priority = 690,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept The New Frontier from Arch Druid Fandral Staghelm in Darnassus.",
            complete = QuestState(1047, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-1047-the-new-frontier",
            kind = "turnin",
            priority = 700,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The New Frontier.",
            complete = QuestState(1047, "completed"),
            dependsOn = { "accept-1047-the-new-frontier" },
            route = {
                Point(1457, 0.3482, 0.0925, "The New Frontier",
                    "Travel to The New Frontier."),
            },
        },
        {
            id = "accept-6761-the-new-frontier",
            dependsOn = { "turnin-1047-the-new-frontier" },
            kind = "accept",
            priority = 710,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept The New Frontier.",
            complete = QuestState(6761, "activeOrCompleted"),
            route = {
                Point(1457, 0.3482, 0.0925, "The New Frontier",
                    "Travel to The New Frontier."),
            },
        },
        {
            id = "accept-3781-morrowgrain-research",
            kind = "accept",
            priority = 720,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Morrowgrain Research.",
            complete = QuestState(3781, "activeOrCompleted"),
            route = {
                Point(1457, 0.3482, 0.0925, "Morrowgrain Research",
                    "Travel to Morrowgrain Research."),
            },
        },
        {
            id = "turnin-6761-the-new-frontier",
            kind = "turnin",
            priority = 730,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The New Frontier.",
            complete = QuestState(6761, "completed"),
            dependsOn = { "accept-6761-the-new-frontier" },
            route = {
                Point(1457, 0.3540, 0.0842, "The New Frontier",
                    "Travel to The New Frontier."),
            },
        },
        {
            id = "accept-6762-rabine-saturna",
            kind = "accept",
            priority = 740,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Accept Rabine Saturna.",
            complete = QuestState(6762, "activeOrCompleted"),
            route = {
                Point(1457, 0.3540, 0.0842, "Rabine Saturna",
                    "Travel to Rabine Saturna."),
            },
        },
        {
            id = "turnin-3781-morrowgrain-research",
            kind = "turnin",
            priority = 750,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Morrowgrain Research.",
            complete = QuestState(3781, "completed"),
            dependsOn = { "accept-3781-morrowgrain-research" },
            route = {
                Point(1457, 0.3540, 0.0842, "Morrowgrain Research",
                    "Travel to Morrowgrain Research."),
            },
        },
        {
            id = "turnin-978-moontouched-wildkin",
            kind = "turnin",
            priority = 760,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Moontouched Wildkin.",
            complete = QuestState(978, "completed"),
            dependsOn = { "objective-978-1-moontouched-feather" },
            route = {
                Point(1438, 0.5550, 0.9204, "Moontouched Wildkin",
                    "Travel to Moontouched Wildkin."),
            },
        },
        {
            id = "accept-979-find-ranshalla",
            kind = "accept",
            priority = 770,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Find Ranshalla.",
            complete = QuestState(979, "activeOrCompleted"),
            route = {
                Point(1438, 0.5550, 0.9204, "Find Ranshalla",
                    "Travel to Find Ranshalla."),
            },
        },
        {
            id = "accept-5250-starfall",
            kind = "accept",
            priority = 780,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Starfall.",
            complete = QuestState(5250, "activeOrCompleted"),
            route = {
                Point(1438, 0.5541, 0.9223, "Starfall",
                    "Travel to Starfall."),
            },
        },
    },
})
