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
    FERALAS = 1444,
    TANARIS = 1446,
    UN_GORO_CRATER = 1449,
    THUNDER_BLUFF = 1456,
}

ns:RegisterGuide({
    id = "leveling-era-horde-ungoro-crater",
    title = "Un'Goro Crater",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 53 } },
        },
    },
    goals = {
        {
            id = "turnin-4494-march-of-the-silithid",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in March of the Silithid.",
            complete = QuestState(4494, "completed"),
            route = {
                Point(1446, 0.5089, 0.2696, "March of the Silithid",
                    "Travel to March of the Silithid."),
            },
        },
        {
            id = "accept-4496-bungle-in-the-jungle",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Bungle in the Jungle.",
            complete = QuestState(4496, "activeOrCompleted"),
            route = {
                Point(1446, 0.5089, 0.2696, "Bungle in the Jungle",
                    "Travel to Bungle in the Jungle."),
            },
        },
        {
            id = "accept-4145-larion-and-muigin",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Larion and Muigin.",
            complete = QuestState(4145, "activeOrCompleted"),
            route = {
                Point(1449, 0.4554, 0.0872, "Larion and Muigin",
                    "Travel to Larion and Muigin."),
            },
        },
        {
            id = "accept-3881-expedition-salvation",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 50,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 60,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Roll the Bones.",
            complete = QuestState(3882, "activeOrCompleted"),
            route = {
                Point(1449, 0.4350, 0.0742, "Roll the Bones",
                    "Travel to Roll the Bones."),
            },
        },
        {
            id = "accept-4288-the-western-pylon",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 80,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Beware of Pterrordax.",
            complete = QuestState(4501, "activeOrCompleted"),
            route = {
                Point(1449, 0.4347, 0.0681, "Beware of Pterrordax",
                    "Travel to Beware of Pterrordax."),
            },
        },
        {
            id = "accept-4492-lost",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Lost!.",
            complete = QuestState(4492, "activeOrCompleted"),
            route = {
                Point(1449, 0.4362, 0.0850, "Lost!",
                    "Travel to Lost!."),
            },
        },
        {
            id = "accept-4503-shizzle-s-flyer",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 110,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 120,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 130,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Use Torwa's Pouch.",
            complete = QuestObjective(4292, 1, "Torwa's Pouch"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-4292-1-preserved-threshadon-meat",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 150,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 160,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 170,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 180,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 190,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 200,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 210,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 220,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept The New Springs.",
            complete = QuestState(980, "activeOrCompleted"),
            route = {
                Point(1449, 0.3093, 0.5043, "The New Springs",
                    "Travel to The New Springs."),
            },
        },
        {
            id = "turnin-4492-lost",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 240,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 250,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 260,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 270,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            id = "turnin-4288-the-western-pylon",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            id = "accept-4285-the-northern-pylon",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 300,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept The Eastern Pylon.",
            complete = QuestState(4287, "activeOrCompleted"),
            route = {
                Point(1449, 0.4347, 0.0679, "The Eastern Pylon",
                    "Travel to The Eastern Pylon."),
            },
        },
        {
            id = "turnin-3883-alien-ecology",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 320,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            id = "turnin-4145-larion-and-muigin",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Larion and Muigin.",
            complete = QuestState(4145, "completed"),
            dependsOn = { "accept-4145-larion-and-muigin" },
            route = {
                Point(1449, 0.4554, 0.0872, "Larion and Muigin",
                    "Travel to Larion and Muigin."),
            },
        },
        {
            id = "accept-4147-marvon-s-workshop",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Marvon's Workshop.",
            complete = QuestState(4147, "activeOrCompleted"),
            route = {
                Point(1449, 0.4554, 0.0872, "Marvon's Workshop",
                    "Travel to Marvon's Workshop."),
            },
        },
        {
            id = "turnin-4503-shizzle-s-flyer",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 360,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Chasing A-Me 01.",
            complete = QuestState(4243, "activeOrCompleted"),
            route = {
                Point(1449, 0.4638, 0.1345, "Chasing A-Me 01",
                    "Travel to Chasing A-Me 01."),
            },
        },
        {
            id = "objective-4301-1-u-cha",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 380,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 390,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 400,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 410,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 420,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 430,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Mighty U'cha.",
            complete = QuestState(4301, "completed"),
            dependsOn = { "accept-4301-the-mighty-u-cha", "objective-4301-1-u-cha" },
            route = {
                Point(1449, 0.7163, 0.7596, "The Mighty U'cha",
                    "Travel to The Mighty U'cha."),
            },
        },
        {
            id = "turnin-4285-the-northern-pylon",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 450,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            id = "accept-4321-making-sense-of-it",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            priority = 470,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
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
            id = "turnin-4496-bungle-in-the-jungle",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Bungle in the Jungle.",
            complete = QuestState(4496, "completed"),
            dependsOn = { "accept-4496-bungle-in-the-jungle" },
            route = {
                Point(1449, 0.4347, 0.0679, "Bungle in the Jungle",
                    "Travel to Bungle in the Jungle."),
            },
        },
        {
            id = "turnin-4120-the-strength-of-corruption",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Strength of Corruption.",
            complete = QuestState(4120, "completed"),
            route = {
                Point(1444, 0.7618, 0.4383, "The Strength of Corruption",
                    "Travel to The Strength of Corruption."),
            },
        },
        {
            id = "objective-3909-1-evoroot",
            kind = "objective",
            priority = 500,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Click Evoroot.",
            complete = QuestObjective(3909, 1, "Evoroot"),
            route = {
                Point(1444, 0.4462, 0.0981, "Evoroot",
                    "Travel to Evoroot."),
            },
        },
        {
            id = "accept-3762-assisting-arch-druid-runetotem",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Assisting Arch Druid Runetotem.",
            complete = QuestState(3762, "activeOrCompleted"),
            route = {
                Point(1456, 0.4582, 0.6472, "Assisting Arch Druid Runetotem",
                    "Travel to Assisting Arch Druid Runetotem."),
            },
        },
        {
            id = "accept-1000-the-new-frontier",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept The New Frontier from Arch Druid Hamuul Runetotem on Elder Rise in Thunder Bluff.",
            complete = QuestState(1000, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-3518-delivery-to-magatha",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Delivery to Magatha.",
            complete = QuestState(3518, "completed"),
            route = {
                Point(1456, 0.6984, 0.3090, "Delivery to Magatha",
                    "Travel to Delivery to Magatha."),
            },
        },
        {
            id = "accept-3562-magatha-s-payment-to-jediga",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Magatha's Payment to Jediga.",
            complete = QuestState(3562, "activeOrCompleted"),
            route = {
                Point(1456, 0.6984, 0.3090, "Magatha's Payment to Jediga",
                    "Travel to Magatha's Payment to Jediga."),
            },
        },
        {
            id = "turnin-3762-assisting-arch-druid-runetotem",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Assisting Arch Druid Runetotem.",
            complete = QuestState(3762, "completed"),
            dependsOn = { "accept-3762-assisting-arch-druid-runetotem" },
            route = {
                Point(1456, 0.7859, 0.2857, "Assisting Arch Druid Runetotem",
                    "Travel to Assisting Arch Druid Runetotem."),
            },
        },
        {
            id = "accept-3761-un-goro-soil",
            kind = "accept",
            priority = 560,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Un'Goro Soil.",
            complete = QuestState(3761, "activeOrCompleted"),
            route = {
                Point(1456, 0.7859, 0.2857, "Un'Goro Soil",
                    "Travel to Un'Goro Soil."),
            },
        },
        {
            id = "turnin-1000-the-new-frontier",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in The New Frontier.",
            complete = QuestState(1000, "completed"),
            dependsOn = { "accept-1000-the-new-frontier" },
            route = {
                Point(1456, 0.7859, 0.2857, "The New Frontier",
                    "Travel to The New Frontier."),
            },
        },
        {
            id = "accept-1123-rabine-saturna",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Accept Rabine Saturna.",
            complete = QuestState(1123, "activeOrCompleted"),
            route = {
                Point(1456, 0.7859, 0.2857, "Rabine Saturna",
                    "Travel to Rabine Saturna."),
            },
        },
        {
            id = "turnin-3761-un-goro-soil",
            kind = "turnin",
            priority = 590,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Un'Goro Soil.",
            complete = QuestState(3761, "completed"),
            dependsOn = { "accept-3761-un-goro-soil" },
            route = {
                Point(1456, 0.7745, 0.2198, "Un'Goro Soil",
                    "Travel to Un'Goro Soil."),
            },
        },
        {
            id = "accept-3782-morrowgrain-research",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Morrowgrain Research.",
            complete = QuestState(3782, "activeOrCompleted"),
            route = {
                Point(1456, 0.7859, 0.2857, "Morrowgrain Research",
                    "Travel to Morrowgrain Research."),
            },
        },
        {
            id = "turnin-3782-morrowgrain-research",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Morrowgrain Research.",
            complete = QuestState(3782, "completed"),
            dependsOn = { "accept-3782-morrowgrain-research" },
            route = {
                Point(1456, 0.7106, 0.3418, "Morrowgrain Research",
                    "Travel to Morrowgrain Research."),
            },
        },
        {
            id = "turnin-4147-marvon-s-workshop",
            kind = "turnin",
            priority = 620,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Marvon's Workshop.",
            complete = QuestState(4147, "completed"),
            dependsOn = { "accept-4147-marvon-s-workshop" },
            route = {
                Point(1413, 0.6245, 0.3873, "Marvon's Workshop",
                    "Travel to Marvon's Workshop."),
            },
        },
        {
            id = "turnin-4502-volcanic-activity",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Volcanic Activity.",
            complete = QuestState(4502, "completed"),
            route = {
                Point(1413, 0.6245, 0.3873, "Volcanic Activity",
                    "Travel to Volcanic Activity."),
            },
        },
        {
            id = "turnin-5158-seeking-spiritual-aid",
            kind = "turnin",
            priority = 640,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in Seeking Spiritual Aid.",
            complete = QuestState(5158, "completed"),
            route = {
                Point(1413, 0.6583, 0.4378, "Seeking Spiritual Aid",
                    "Travel to Seeking Spiritual Aid."),
            },
        },
        {
            id = "accept-5159-cleansed-water-returns-to-felwood",
            kind = "accept",
            priority = 650,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Cleansed Water Returns to Felwood.",
            complete = QuestState(5159, "activeOrCompleted"),
            route = {
                Point(1413, 0.6583, 0.4378, "Cleansed Water Returns to Felwood",
                    "Travel to Cleansed Water Returns to Felwood."),
            },
        },
    },
})
