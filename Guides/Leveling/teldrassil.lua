local _, ns = ...

-- Forever Casual spine: Night Elf Starter (1-13)
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
    LOCH_MODAN = 1432,
    TELDRASSIL = 1438,
    DARKSHORE = 1439,
    MOONGLADE = 1450,
    STORMWIND_CITY = 1453,
    DARNASSUS = 1457,
}

ns:RegisterGuide({
    id = "leveling-era-teldrassil",
    title = "Night Elf Starter",
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
            id = "objective-456-1-young-nightsaber",
            kind = "objective",
            priority = 10,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Kill Young Nightsaber.",
            complete = QuestObjective(456, 1, "Young Nightsaber"),
            route = {
                Point(1438, 0.5820, 0.4540, "Young Nightsaber",
                    "Travel to Young Nightsaber.")
            }
            },
        {
            id = "accept-456-the-balance-of-nature",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Balance of Nature.",
            complete = QuestState(456, "activeOrCompleted"),
            route = {
                Point(1438, 0.5869, 0.4427, "The Balance of Nature",
                    "Travel to The Balance of Nature.")
            }
            },
        {
            id = "objective-456-1-young-nightsaber-2",
            kind = "objective",
            priority = 30,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 7 Young Nightsaber.",
            complete = QuestObjective(456, 1, "Young Nightsaber"),
            dependsOn = { "accept-456-the-balance-of-nature" },
            route = {
                Point(1438, 0.5820, 0.4540, "Young Nightsaber",
                    "Travel to Young Nightsaber.")
            }
            },
        {
            id = "objective-456-2-young-thistle-boar",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 4 Young Thistle Boar.",
            complete = QuestObjective(456, 2, "Young Thistle Boar"),
            dependsOn = { "accept-456-the-balance-of-nature" },
            route = {
                Point(1438, 0.5820, 0.4540, "Young Thistle Boar",
                    "Travel to Young Thistle Boar.")
            }
            },
        {
            id = "accept-4495-a-good-friend",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept A Good Friend.",
            complete = QuestState(4495, "activeOrCompleted"),
            route = {
                Point(1438, 0.6090, 0.4196, "A Good Friend",
                    "Travel to A Good Friend.")
            }
            },
        {
            id = "accept-458-the-woodland-protector",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Woodland Protector.",
            complete = QuestState(458, "activeOrCompleted"),
            route = {
                Point(1438, 0.5993, 0.4248, "The Woodland Protector",
                    "Travel to The Woodland Protector.")
            }
            },
        {
            id = "turnin-456-the-balance-of-nature",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 11 }
            } },
            text = "Turn in The Balance of Nature.",
            complete = QuestState(456, "completed"),
            dependsOn = { "accept-456-the-balance-of-nature", "objective-456-1-young-nightsaber", "objective-456-1-young-nightsaber-2", "objective-456-2-young-thistle-boar" },
            route = {
                Point(1438, 0.5870, 0.4427, "The Balance of Nature",
                    "Travel to The Balance of Nature.")
            }
            },
        {
            id = "accept-457-the-balance-of-nature",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 11 }
            } },
            text = "Accept The Balance of Nature.",
            complete = QuestState(457, "activeOrCompleted"),
            route = {
                Point(1438, 0.5870, 0.4427, "The Balance of Nature",
                    "Travel to The Balance of Nature.")
            }
            },
        {
            id = "accept-3116-simple-sigil",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 1 }
            } },
            text = "Accept Simple Sigil.",
            complete = QuestState(3116, "activeOrCompleted"),
            route = {
                Point(1438, 0.5870, 0.4427, "Simple Sigil",
                    "Travel to Simple Sigil.")
            }
            },
        {
            id = "accept-3118-encrypted-sigil",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 4 }
            } },
            text = "Accept Encrypted Sigil.",
            complete = QuestState(3118, "activeOrCompleted"),
            route = {
                Point(1438, 0.5870, 0.4427, "Encrypted Sigil",
                    "Travel to Encrypted Sigil.")
            }
            },
        {
            id = "accept-3119-hallowed-sigil",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 5 }
            } },
            text = "Accept Hallowed Sigil.",
            complete = QuestState(3119, "activeOrCompleted"),
            route = {
                Point(1438, 0.5870, 0.4427, "Hallowed Sigil",
                    "Travel to Hallowed Sigil.")
            }
            },
        {
            id = "accept-3117-etched-sigil",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Accept Etched Sigil.",
            complete = QuestState(3117, "activeOrCompleted"),
            route = {
                Point(1438, 0.5870, 0.4427, "Etched Sigil",
                    "Travel to Etched Sigil.")
            }
            },
        {
            id = "accept-3120-verdant-sigil",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Accept Verdant Sigil.",
            complete = QuestState(3120, "activeOrCompleted"),
            route = {
                Point(1438, 0.5870, 0.4427, "Verdant Sigil",
                    "Travel to Verdant Sigil.")
            }
            },
        {
            id = "turnin-3116-simple-sigil",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 1 }
            } },
            text = "Turn in Simple Sigil.",
            complete = QuestState(3116, "completed"),
            dependsOn = { "accept-3116-simple-sigil" },
            route = {
                Point(1438, 0.5964, 0.3844, "Simple Sigil",
                    "Travel to Simple Sigil.")
            }
            },
        {
            id = "turnin-3118-encrypted-sigil",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 4 }
            } },
            text = "Turn in Encrypted Sigil.",
            complete = QuestState(3118, "completed"),
            dependsOn = { "accept-3118-encrypted-sigil" },
            route = {
                Point(1438, 0.5964, 0.3866, "Encrypted Sigil",
                    "Travel to Encrypted Sigil.")
            }
            },
        {
            id = "accept-77573-second-story-work",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 4 }
            } },
            text = "Accept Second-Story Work.",
            complete = QuestState(77573, "activeOrCompleted"),
            route = {
                Point(1438, 0.5964, 0.3866, "Second-Story Work",
                    "Travel to Second-Story Work.")
            }
            },
        {
            id = "turnin-3119-hallowed-sigil",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 5 }
            } },
            text = "Turn in Hallowed Sigil.",
            complete = QuestState(3119, "completed"),
            dependsOn = { "accept-3119-hallowed-sigil" },
            route = {
                Point(1438, 0.5917, 0.4044, "Hallowed Sigil",
                    "Travel to Hallowed Sigil.")
            }
            },
        {
            id = "turnin-3117-etched-sigil",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Turn in Etched Sigil.",
            complete = QuestState(3117, "completed"),
            dependsOn = { "accept-3117-etched-sigil" },
            route = {
                Point(1438, 0.5753, 0.4163, "Etched Sigil",
                    "Travel to Etched Sigil.")
            }
            },
        {
            id = "turnin-3120-verdant-sigil",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Turn in Verdant Sigil.",
            complete = QuestState(3120, "completed"),
            dependsOn = { "accept-3120-verdant-sigil" },
            route = {
                Point(1438, 0.5753, 0.4163, "Verdant Sigil",
                    "Travel to Verdant Sigil.")
            }
            },
        {
            id = "turnin-458-the-woodland-protector",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Woodland Protector.",
            complete = QuestState(458, "completed"),
            dependsOn = { "accept-458-the-woodland-protector" },
            route = {
                Point(1438, 0.5783, 0.4520, "The Woodland Protector",
                    "Travel to The Woodland Protector.")
            }
            },
        {
            id = "accept-459-the-woodland-protector",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Woodland Protector.",
            complete = QuestState(459, "activeOrCompleted"),
            route = {
                Point(1438, 0.5783, 0.4520, "The Woodland Protector",
                    "Travel to The Woodland Protector.")
            }
            },
        {
            id = "objective-459-1-grell",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Grell.",
            complete = QuestObjective(459, 1, "Grell"),
            dependsOn = { "accept-459-the-woodland-protector" },
            route = {
                Point(1438, 0.5608, 0.4583, "Grell",
                    "Travel to Grell.")
            }
            },
        {
            id = "accept-916-webwood-venom",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Webwood Venom.",
            complete = QuestState(916, "activeOrCompleted"),
            route = {
                Point(1438, 0.5781, 0.4165, "Webwood Venom",
                    "Travel to Webwood Venom.")
            }
            },
        {
            id = "objective-457-1-mangy-nightsaber",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 7 Mangy Nightsaber.",
            complete = QuestObjective(457, 1, "Mangy Nightsaber"),
            dependsOn = { "accept-457-the-balance-of-nature" },
            route = {
                Point(1438, 0.5940, 0.3760, "Mangy Nightsaber",
                    "Travel to Mangy Nightsaber.")
            }
            },
        {
            id = "objective-457-2-thistle-boar",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 7 Thistle Boar.",
            complete = QuestObjective(457, 2, "Thistle Boar"),
            dependsOn = { "accept-457-the-balance-of-nature" },
            route = {
                Point(1438, 0.5940, 0.3760, "Thistle Boar",
                    "Travel to Thistle Boar.")
            }
            },
        {
            id = "turnin-4495-a-good-friend",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A Good Friend.",
            complete = QuestState(4495, "completed"),
            dependsOn = { "accept-4495-a-good-friend" },
            route = {
                Point(1438, 0.5460, 0.3299, "A Good Friend",
                    "Travel to A Good Friend.")
            }
            },
        {
            id = "accept-3519-a-friend-in-need",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept A Friend in Need.",
            complete = QuestState(3519, "activeOrCompleted"),
            route = {
                Point(1438, 0.5460, 0.3299, "A Friend in Need",
                    "Travel to A Friend in Need.")
            }
            },
        {
            id = "turnin-916-webwood-venom",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Webwood Venom.",
            complete = QuestState(916, "completed"),
            dependsOn = { "accept-916-webwood-venom" },
            route = {
                Point(1438, 0.5678, 0.3144, "Webwood Venom",
                    "Travel to Webwood Venom.")
            }
            },
        {
            id = "accept-917-webwood-egg",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Webwood Egg.",
            complete = QuestState(917, "activeOrCompleted"),
            route = {
                Point(1438, 0.5678, 0.3144, "Webwood Egg",
                    "Travel to Webwood Egg.")
            }
            },
        {
            id = "turnin-457-the-balance-of-nature",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Balance of Nature.",
            complete = QuestState(457, "completed"),
            dependsOn = { "accept-457-the-balance-of-nature", "objective-457-1-mangy-nightsaber", "objective-457-2-thistle-boar" },
            route = {
                Point(1438, 0.5870, 0.4426, "The Balance of Nature",
                    "Travel to The Balance of Nature.")
            }
            },
        {
            id = "turnin-459-the-woodland-protector",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Woodland Protector.",
            complete = QuestState(459, "completed"),
            dependsOn = { "accept-459-the-woodland-protector", "objective-459-1-grell" },
            route = {
                Point(1438, 0.5783, 0.4520, "The Woodland Protector",
                    "Travel to The Woodland Protector.")
            }
            },
        {
            id = "turnin-3519-a-friend-in-need",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A Friend in Need.",
            complete = QuestState(3519, "completed"),
            dependsOn = { "accept-3519-a-friend-in-need" },
            route = {
                Point(1438, 0.6090, 0.4196, "A Friend in Need",
                    "Travel to A Friend in Need.")
            }
            },
        {
            id = "accept-3521-iverron-s-antidote",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Iverron's Antidote.",
            complete = QuestState(3521, "activeOrCompleted"),
            route = {
                Point(1438, 0.6090, 0.4196, "Iverron's Antidote",
                    "Travel to Iverron's Antidote.")
            }
            },
        {
            id = "objective-3521-1-hyacinth-mushroom",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Collect 7 Hyacinth Mushroom.",
            complete = QuestObjective(3521, 1, "Hyacinth Mushroom"),
            dependsOn = { "accept-3521-iverron-s-antidote" },
            route = {
                Point(1438, 0.6240, 0.4410, "Hyacinth Mushroom",
                    "Travel to Hyacinth Mushroom.")
            }
            },
        {
            id = "objective-3521-2-moonpetal-lily",
            kind = "objective",
            priority = 350,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Collect 4 Moonpetal Lily.",
            complete = QuestObjective(3521, 2, "Moonpetal Lily"),
            dependsOn = { "accept-3521-iverron-s-antidote" },
            route = {
                Point(1438, 0.5870, 0.3810, "Moonpetal Lily",
                    "Travel to Moonpetal Lily.")
            }
            },
        {
            id = "turnin-917-webwood-egg",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Webwood Egg.",
            complete = QuestState(917, "completed"),
            dependsOn = { "accept-917-webwood-egg" },
            route = {
                Point(1438, 0.5678, 0.3144, "Webwood Egg",
                    "Travel to Webwood Egg.")
            }
            },
        {
            id = "accept-920-tenaron-s-summons",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Tenaron's Summons.",
            complete = QuestState(920, "activeOrCompleted"),
            route = {
                Point(1438, 0.5678, 0.3144, "Tenaron's Summons",
                    "Travel to Tenaron's Summons.")
            }
            },
        {
            id = "turnin-920-tenaron-s-summons",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Tenaron's Summons.",
            complete = QuestState(920, "completed"),
            dependsOn = { "accept-920-tenaron-s-summons" },
            route = {
                Point(1438, 0.5754, 0.4162, "Tenaron's Summons",
                    "Travel to Tenaron's Summons.")
            }
            },
        {
            id = "accept-921-crown-of-the-earth",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Crown of the Earth.",
            complete = QuestState(921, "activeOrCompleted"),
            route = {
                Point(1438, 0.5754, 0.4162, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "turnin-3521-iverron-s-antidote",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Iverron's Antidote.",
            complete = QuestState(3521, "completed"),
            dependsOn = { "accept-3521-iverron-s-antidote", "objective-3521-1-hyacinth-mushroom", "objective-3521-2-moonpetal-lily" },
            route = {
                Point(1438, 0.6090, 0.4196, "Iverron's Antidote",
                    "Travel to Iverron's Antidote.")
            }
            },
        {
            id = "accept-3522-iverron-s-antidote",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Iverron's Antidote.",
            complete = QuestState(3522, "activeOrCompleted"),
            route = {
                Point(1438, 0.6090, 0.4196, "Iverron's Antidote",
                    "Travel to Iverron's Antidote.")
            }
            },
        {
            id = "objective-921-1-crystal-phial",
            kind = "objective",
            priority = 420,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Use Crystal Phial.",
            complete = QuestObjective(921, 1, "Crystal Phial"),
            dependsOn = { "accept-921-crown-of-the-earth" },
            route = {
                Point(1438, 0.5994, 0.3304, "Crystal Phial",
                    "Travel to Crystal Phial.")
            }
            },
        {
            id = "turnin-3522-iverron-s-antidote",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Iverron's Antidote.",
            complete = QuestState(3522, "completed"),
            dependsOn = { "accept-3522-iverron-s-antidote" },
            route = {
                Point(1438, 0.5459, 0.3299, "Iverron's Antidote",
                    "Travel to Iverron's Antidote.")
            }
            },
        {
            id = "accept-5622-in-favor-of-elune",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 5 }
            } },
            text = "Accept In Favor of Elune.",
            complete = QuestState(5622, "activeOrCompleted"),
            route = {
                Point(1438, 0.5678, 0.3144, "In Favor of Elune",
                    "Travel to In Favor of Elune.")
            }
            },
        {
            id = "turnin-921-crown-of-the-earth",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Crown of the Earth.",
            complete = QuestState(921, "completed"),
            dependsOn = { "accept-921-crown-of-the-earth", "objective-921-1-crystal-phial" },
            route = {
                Point(1438, 0.5678, 0.3144, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "accept-928-crown-of-the-earth",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Crown of the Earth.",
            complete = QuestState(928, "activeOrCompleted"),
            route = {
                Point(1438, 0.5678, 0.3144, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "accept-2159-dolanaar-delivery",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Dolanaar Delivery.",
            complete = QuestState(2159, "activeOrCompleted"),
            route = {
                Point(1438, 0.6116, 0.4764, "Dolanaar Delivery",
                    "Travel to Dolanaar Delivery.")
            }
            },
        {
            id = "accept-488-zenn-s-bidding",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Zenn's Bidding.",
            complete = QuestState(488, "activeOrCompleted"),
            route = {
                Point(1438, 0.6045, 0.5615, "Zenn's Bidding",
                    "Travel to Zenn's Bidding.")
            }
            },
        {
            id = "accept-997-denalan-s-earth",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Denalan's Earth.",
            complete = QuestState(997, "activeOrCompleted"),
            route = {
                Point(1438, 0.5608, 0.5773, "Denalan's Earth",
                    "Travel to Denalan's Earth.")
            }
            },
        {
            id = "accept-475-a-troubling-breeze",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept A Troubling Breeze.",
            complete = QuestState(475, "activeOrCompleted"),
            route = {
                Point(1438, 0.5595, 0.5728, "A Troubling Breeze",
                    "Travel to A Troubling Breeze.")
            }
            },
        {
            id = "turnin-5622-in-favor-of-elune",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 5 }
            } },
            text = "Turn in In Favor of Elune.",
            complete = QuestState(5622, "completed"),
            dependsOn = { "accept-5622-in-favor-of-elune" },
            route = {
                Point(1438, 0.5556, 0.5675, "In Favor of Elune",
                    "Travel to In Favor of Elune.")
            }
            },
        {
            id = "accept-5621-garments-of-the-moon",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 5 }
            } },
            text = "Accept Garments of the Moon.",
            complete = QuestState(5621, "activeOrCompleted"),
            route = {
                Point(1438, 0.5556, 0.5675, "Garments of the Moon",
                    "Travel to Garments of the Moon.")
            }
            },
        {
            id = "accept-932-twisted-hatred",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Twisted Hatred.",
            complete = QuestState(932, "activeOrCompleted"),
            route = {
                Point(1438, 0.5557, 0.5695, "Twisted Hatred",
                    "Travel to Twisted Hatred.")
            }
            },
        {
            id = "accept-2438-the-emerald-dreamcatcher",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Emerald Dreamcatcher.",
            complete = QuestState(2438, "activeOrCompleted"),
            route = {
                Point(1438, 0.5557, 0.5695, "The Emerald Dreamcatcher",
                    "Travel to The Emerald Dreamcatcher.")
            }
            },
        {
            id = "turnin-2159-dolanaar-delivery",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Dolanaar Delivery.",
            complete = QuestState(2159, "completed"),
            dependsOn = { "accept-2159-dolanaar-delivery" },
            route = {
                Point(1438, 0.5562, 0.5979, "Dolanaar Delivery",
                    "Travel to Dolanaar Delivery.")
            }
            },
        {
            id = "turnin-928-crown-of-the-earth",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Crown of the Earth.",
            complete = QuestState(928, "completed"),
            dependsOn = { "accept-928-crown-of-the-earth" },
            route = {
                Point(1438, 0.5614, 0.6171, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "accept-929-crown-of-the-earth",
            kind = "accept",
            priority = 570,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Crown of the Earth.",
            complete = QuestState(929, "activeOrCompleted"),
            route = {
                Point(1438, 0.5614, 0.6171, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "turnin-997-denalan-s-earth",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Denalan's Earth.",
            complete = QuestState(997, "completed"),
            dependsOn = { "accept-997-denalan-s-earth" },
            route = {
                Point(1438, 0.6090, 0.6849, "Denalan's Earth",
                    "Travel to Denalan's Earth.")
            }
            },
        {
            id = "accept-918-timberling-seeds",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Timberling Seeds.",
            complete = QuestState(918, "activeOrCompleted"),
            route = {
                Point(1438, 0.6080, 0.6854, "Timberling Seeds",
                    "Travel to Timberling Seeds.")
            }
            },
        {
            id = "accept-919-timberling-sprouts",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Timberling Sprouts.",
            complete = QuestState(919, "activeOrCompleted"),
            route = {
                Point(1438, 0.6080, 0.6854, "Timberling Sprouts",
                    "Travel to Timberling Sprouts.")
            }
            },
        {
            id = "objective-919-1-timberling-sprout",
            kind = "objective",
            priority = 610,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Collect 12 Timberling Sprout.",
            complete = QuestObjective(919, 1, "Timberling Sprout"),
            dependsOn = { "accept-919-timberling-sprouts" },
            route = {
                Point(1438, 0.6210, 0.6840, "Timberling Sprout",
                    "Travel to Timberling Sprout.")
            }
            },
        {
            id = "turnin-918-timberling-seeds",
            kind = "turnin",
            priority = 620,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Timberling Seeds.",
            complete = QuestState(918, "completed"),
            dependsOn = { "accept-918-timberling-seeds" },
            route = {
                Point(1438, 0.6080, 0.6854, "Timberling Seeds",
                    "Travel to Timberling Seeds.")
            }
            },
        {
            id = "accept-922-rellian-greenspyre",
            kind = "accept",
            priority = 630,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Rellian Greenspyre.",
            complete = QuestState(922, "activeOrCompleted"),
            route = {
                Point(1438, 0.6080, 0.6854, "Rellian Greenspyre",
                    "Travel to Rellian Greenspyre.")
            }
            },
        {
            id = "turnin-919-timberling-sprouts",
            kind = "turnin",
            priority = 640,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Timberling Sprouts.",
            complete = QuestState(919, "completed"),
            dependsOn = { "accept-919-timberling-sprouts", "objective-919-1-timberling-sprout" },
            route = {
                Point(1438, 0.6080, 0.6854, "Timberling Sprouts",
                    "Travel to Timberling Sprouts.")
            }
            },
        {
            id = "objective-929-1-jade-phial",
            kind = "objective",
            priority = 650,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Use Jade Phial.",
            complete = QuestObjective(929, 1, "Jade Phial"),
            dependsOn = { "accept-929-crown-of-the-earth" },
            route = {
                Point(1438, 0.6338, 0.5808, "Jade Phial",
                    "Travel to Jade Phial.")
            }
            },
        {
            id = "turnin-475-a-troubling-breeze",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in A Troubling Breeze.",
            complete = QuestState(475, "completed"),
            dependsOn = { "accept-475-a-troubling-breeze" },
            route = {
                Point(1438, 0.6626, 0.5852, "A Troubling Breeze",
                    "Travel to A Troubling Breeze.")
            }
            },
        {
            id = "accept-476-gnarlpine-corruption",
            kind = "accept",
            priority = 670,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Gnarlpine Corruption.",
            complete = QuestState(476, "activeOrCompleted"),
            route = {
                Point(1438, 0.6626, 0.5852, "Gnarlpine Corruption",
                    "Travel to Gnarlpine Corruption.")
            }
            },
        {
            id = "turnin-488-zenn-s-bidding",
            kind = "turnin",
            priority = 680,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Zenn's Bidding.",
            complete = QuestState(488, "completed"),
            dependsOn = { "accept-488-zenn-s-bidding" },
            route = {
                Point(1438, 0.6045, 0.5615, "Zenn's Bidding",
                    "Travel to Zenn's Bidding.")
            }
            },
        {
            id = "accept-489-seek-redemption",
            kind = "accept",
            priority = 690,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Seek Redemption!.",
            complete = QuestState(489, "activeOrCompleted"),
            route = {
                Point(1438, 0.5608, 0.5773, "Seek Redemption!",
                    "Travel to Seek Redemption!.")
            }
            },
        {
            id = "turnin-476-gnarlpine-corruption",
            kind = "turnin",
            priority = 700,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Gnarlpine Corruption.",
            complete = QuestState(476, "completed"),
            dependsOn = { "accept-476-gnarlpine-corruption" },
            route = {
                Point(1438, 0.5595, 0.5728, "Gnarlpine Corruption",
                    "Travel to Gnarlpine Corruption.")
            }
            },
        {
            id = "turnin-5621-garments-of-the-moon",
            kind = "turnin",
            priority = 710,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 5 }
            } },
            text = "Turn in Garments of the Moon.",
            complete = QuestState(5621, "completed"),
            dependsOn = { "accept-5621-garments-of-the-moon" },
            route = {
                Point(1438, 0.5556, 0.5675, "Garments of the Moon",
                    "Travel to Garments of the Moon.")
            }
            },
        {
            id = "turnin-2438-the-emerald-dreamcatcher",
            kind = "turnin",
            priority = 720,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Emerald Dreamcatcher.",
            complete = QuestState(2438, "completed"),
            dependsOn = { "accept-2438-the-emerald-dreamcatcher" },
            route = {
                Point(1438, 0.5557, 0.5695, "The Emerald Dreamcatcher",
                    "Travel to The Emerald Dreamcatcher.")
            }
            },
        {
            id = "accept-2459-ferocitas-the-dream-eater",
            kind = "accept",
            priority = 730,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Ferocitas the Dream Eater.",
            complete = QuestState(2459, "activeOrCompleted"),
            route = {
                Point(1438, 0.5557, 0.5695, "Ferocitas the Dream Eater",
                    "Travel to Ferocitas the Dream Eater.")
            }
            },
        {
            id = "turnin-929-crown-of-the-earth",
            kind = "turnin",
            priority = 740,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Crown of the Earth.",
            complete = QuestState(929, "completed"),
            dependsOn = { "accept-929-crown-of-the-earth", "objective-929-1-jade-phial" },
            route = {
                Point(1438, 0.5614, 0.6171, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "accept-933-crown-of-the-earth",
            kind = "accept",
            priority = 750,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Crown of the Earth.",
            complete = QuestState(933, "activeOrCompleted"),
            route = {
                Point(1438, 0.5614, 0.6171, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "accept-4161-recipe-of-the-kaldorei",
            kind = "accept",
            priority = 760,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Recipe of the Kaldorei.",
            complete = QuestState(4161, "activeOrCompleted"),
            route = {
                Point(1438, 0.5712, 0.6130, "Recipe of the Kaldorei",
                    "Travel to Recipe of the Kaldorei.")
            }
            },
        {
            id = "turnin-4161-recipe-of-the-kaldorei",
            kind = "turnin",
            priority = 770,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Recipe of the Kaldorei.",
            complete = QuestState(4161, "completed"),
            dependsOn = { "accept-4161-recipe-of-the-kaldorei" },
            route = {
                Point(1438, 0.5712, 0.6130, "Recipe of the Kaldorei",
                    "Travel to Recipe of the Kaldorei.")
            }
            },
        {
            id = "objective-2459-1-ferocitas-the-dream-eater",
            kind = "objective",
            priority = 780,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Ferocitas the Dream Eater.",
            complete = QuestObjective(2459, 1, "Ferocitas the Dream Eater"),
            dependsOn = { "accept-2459-ferocitas-the-dream-eater" },
            route = {
                Point(1438, 0.6937, 0.5340, "Ferocitas the Dream Eater",
                    "Travel to Ferocitas the Dream Eater.")
            }
            },
        {
            id = "objective-2459-2-gnarlpine-necklace",
            kind = "objective",
            priority = 790,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Use Gnarlpine Necklace.",
            complete = QuestObjective(2459, 2, "Gnarlpine Necklace"),
            dependsOn = { "accept-2459-ferocitas-the-dream-eater" },
            useClientPin = true,
            route = nil
            },
        {
            id = "turnin-489-seek-redemption",
            kind = "turnin",
            priority = 800,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Seek Redemption!.",
            complete = QuestState(489, "completed"),
            dependsOn = { "accept-489-seek-redemption" },
            route = {
                Point(1438, 0.6045, 0.5615, "Seek Redemption!",
                    "Travel to Seek Redemption!.")
            }
            },
        {
            id = "objective-932-1-lord-melenas",
            kind = "objective",
            priority = 810,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Lord Melenas.",
            complete = QuestObjective(932, 1, "Lord Melenas"),
            dependsOn = { "accept-932-twisted-hatred" },
            route = {
                Point(1438, 0.5465, 0.5245, "Lord Melenas",
                    "Travel to Lord Melenas.")
            }
            },
        {
            id = "turnin-932-twisted-hatred",
            kind = "turnin",
            priority = 820,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Twisted Hatred.",
            complete = QuestState(932, "completed"),
            dependsOn = { "accept-932-twisted-hatred", "objective-932-1-lord-melenas" },
            route = {
                Point(1438, 0.5465, 0.5245, "Twisted Hatred",
                    "Travel to Twisted Hatred.")
            }
            },
        {
            id = "turnin-2459-ferocitas-the-dream-eater",
            kind = "turnin",
            priority = 830,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Ferocitas the Dream Eater.",
            complete = QuestState(2459, "completed"),
            dependsOn = { "accept-2459-ferocitas-the-dream-eater", "objective-2459-1-ferocitas-the-dream-eater", "objective-2459-2-gnarlpine-necklace" },
            route = {
                Point(1438, 0.5465, 0.5245, "Ferocitas the Dream Eater",
                    "Travel to Ferocitas the Dream Eater.")
            }
            },
        {
            id = "accept-930-the-glowing-fruit",
            kind = "accept",
            priority = 840,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Glowing Fruit.",
            complete = QuestState(930, "activeOrCompleted"),
            route = {
                Point(1438, 0.4263, 0.7610, "The Glowing Fruit",
                    "Travel to The Glowing Fruit.")
            }
            },
        {
            id = "objective-933-1-tourmaline-phial",
            kind = "objective",
            priority = 850,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Use Tourmaline Phial.",
            complete = QuestObjective(933, 1, "Tourmaline Phial"),
            dependsOn = { "accept-933-crown-of-the-earth" },
            route = {
                Point(1438, 0.4242, 0.6707, "Tourmaline Phial",
                    "Travel to Tourmaline Phial.")
            }
            },
        {
            id = "turnin-933-crown-of-the-earth",
            kind = "turnin",
            priority = 860,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Crown of the Earth.",
            complete = QuestState(933, "completed"),
            dependsOn = { "accept-933-crown-of-the-earth", "objective-933-1-tourmaline-phial" },
            route = {
                Point(1438, 0.5614, 0.6171, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "accept-7383-crown-of-the-earth",
            kind = "accept",
            priority = 870,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Crown of the Earth.",
            complete = QuestState(7383, "activeOrCompleted"),
            route = {
                Point(1438, 0.5614, 0.6171, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "accept-487-the-road-to-darnassus",
            kind = "accept",
            priority = 880,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Road to Darnassus from Sentinel Arynia Cloudsbreak at the Oracle Glade.",
            complete = QuestState(487, "activeOrCompleted"),
            route = nil
            },
        {
            id = "objective-487-1-gnarlpine-ambusher",
            kind = "objective",
            priority = 890,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill 6 Gnarlpine Ambusher.",
            complete = QuestObjective(487, 1, "Gnarlpine Ambusher"),
            dependsOn = { "accept-487-the-road-to-darnassus" },
            route = {
                Point(1438, 0.4860, 0.5340, "Gnarlpine Ambusher",
                    "Travel to Gnarlpine Ambusher.")
            }
            },
        {
            id = "accept-937-the-enchanted-glade",
            kind = "accept",
            priority = 900,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Enchanted Glade.",
            complete = QuestState(937, "activeOrCompleted"),
            route = {
                Point(1438, 0.3831, 0.3436, "The Enchanted Glade",
                    "Travel to The Enchanted Glade.")
            }
            },
        {
            id = "objective-7383-1-amethyst-phial",
            kind = "objective",
            priority = 910,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Use Amethyst Phial.",
            complete = QuestObjective(7383, 1, "Amethyst Phial"),
            dependsOn = { "accept-7383-crown-of-the-earth" },
            route = {
                Point(1438, 0.3843, 0.3404, "Amethyst Phial",
                    "Travel to Amethyst Phial.")
            }
            },
        {
            id = "accept-931-the-shimmering-frond",
            kind = "accept",
            priority = 920,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept The Shimmering Frond.",
            complete = QuestState(931, "activeOrCompleted"),
            route = {
                Point(1438, 0.3460, 0.2885, "The Shimmering Frond",
                    "Travel to The Shimmering Frond.")
            }
            },
        {
            id = "accept-938-mist",
            kind = "accept",
            priority = 930,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Mist.",
            complete = QuestState(938, "activeOrCompleted"),
            route = {
                Point(1438, 0.3154, 0.3161, "Mist",
                    "Travel to Mist.")
            }
            },
        {
            id = "turnin-938-mist",
            kind = "turnin",
            priority = 940,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Mist.",
            complete = QuestState(938, "completed"),
            dependsOn = { "accept-938-mist" },
            route = {
                Point(1438, 0.3831, 0.3436, "Mist",
                    "Travel to Mist.")
            }
            },
        {
            id = "turnin-937-the-enchanted-glade",
            kind = "turnin",
            priority = 950,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Enchanted Glade.",
            complete = QuestState(937, "completed"),
            dependsOn = { "accept-937-the-enchanted-glade" },
            route = {
                Point(1438, 0.3831, 0.3436, "The Enchanted Glade",
                    "Travel to The Enchanted Glade.")
            }
            },
        {
            id = "accept-940-teldrassil",
            kind = "accept",
            priority = 960,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Teldrassil.",
            complete = QuestState(940, "activeOrCompleted"),
            route = {
                Point(1438, 0.3831, 0.3436, "Teldrassil",
                    "Travel to Teldrassil.")
            }
            },
        {
            id = "turnin-922-rellian-greenspyre",
            kind = "turnin",
            priority = 970,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Rellian Greenspyre.",
            complete = QuestState(922, "completed"),
            dependsOn = { "accept-922-rellian-greenspyre" },
            route = {
                Point(1457, 0.3819, 0.2163, "Rellian Greenspyre",
                    "Travel to Rellian Greenspyre.")
            }
            },
        {
            id = "accept-923-tumors",
            kind = "accept",
            priority = 980,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Tumors.",
            complete = QuestState(923, "activeOrCompleted"),
            route = {
                Point(1457, 0.3819, 0.2163, "Tumors",
                    "Travel to Tumors.")
            }
            },
        {
            id = "accept-6071-the-hunter-s-path",
            kind = "accept",
            priority = 990,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Accept The Hunter's Path.",
            complete = QuestState(6071, "activeOrCompleted"),
            route = {
                Point(1457, 0.4038, 0.0854, "The Hunter's Path",
                    "Travel to The Hunter's Path.")
            }
            },
        {
            id = "accept-5921-moonglade",
            kind = "accept",
            priority = 1000,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Accept Moonglade.",
            complete = QuestState(5921, "activeOrCompleted"),
            route = {
                Point(1457, 0.3537, 0.0840, "Moonglade",
                    "Travel to Moonglade.")
            }
            },
        {
            id = "turnin-940-teldrassil",
            kind = "turnin",
            priority = 1010,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Teldrassil.",
            complete = QuestState(940, "completed"),
            dependsOn = { "accept-940-teldrassil" },
            route = {
                Point(1457, 0.3480, 0.0924, "Teldrassil",
                    "Travel to Teldrassil.")
            }
            },
        {
            id = "accept-952-grove-of-the-ancients",
            kind = "accept",
            priority = 1020,
            conditions = { all = {
                { level = { min = 20 } },
                { faction = "Alliance" },
            } },
            text = "Accept Grove of the Ancients.",
            complete = QuestState(952, "activeOrCompleted"),
            route = {
                Point(1457, 0.3480, 0.0924, "Grove of the Ancients",
                    "Travel to Grove of the Ancients."),
            },
        },
        {
            id = "accept-2518-tears-of-the-moon",
            kind = "accept",
            priority = 1030,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Tears of the Moon.",
            complete = QuestState(2518, "activeOrCompleted"),
            route = {
                Point(1457, 0.3664, 0.8593, "Tears of the Moon",
                    "Travel to Tears of the Moon.")
            }
            },
        {
            id = "turnin-5921-moonglade",
            kind = "turnin",
            priority = 1040,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Turn in Moonglade.",
            complete = QuestState(5921, "completed"),
            dependsOn = { "accept-5921-moonglade" },
            route = {
                Point(1450, 0.5621, 0.3064, "Moonglade",
                    "Travel to Moonglade.")
            }
            },
        {
            id = "accept-5929-great-bear-spirit",
            kind = "accept",
            priority = 1050,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Accept Great Bear Spirit.",
            complete = QuestState(5929, "activeOrCompleted"),
            route = {
                Point(1450, 0.5621, 0.3064, "Great Bear Spirit",
                    "Travel to Great Bear Spirit.")
            }
            },
        {
            id = "turnin-5929-great-bear-spirit",
            kind = "turnin",
            priority = 1060,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Turn in Great Bear Spirit.",
            complete = QuestState(5929, "completed"),
            dependsOn = { "accept-5929-great-bear-spirit" },
            route = {
                Point(1450, 0.5621, 0.3064, "Great Bear Spirit",
                    "Travel to Great Bear Spirit.")
            }
            },
        {
            id = "accept-5931-back-to-darnassus",
            kind = "accept",
            priority = 1070,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Accept Back to Darnassus.",
            complete = QuestState(5931, "activeOrCompleted"),
            route = {
                Point(1450, 0.5621, 0.3064, "Back to Darnassus",
                    "Travel to Back to Darnassus.")
            }
            },
        {
            id = "accept-1684-elanaria",
            kind = "accept",
            priority = 1080,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Accept Elanaria.",
            complete = QuestState(1684, "activeOrCompleted"),
            route = {
                Point(1438, 0.5622, 0.5920, "Elanaria",
                    "Travel to Elanaria.")
            }
            },
        {
            id = "turnin-6071-the-hunter-s-path",
            kind = "turnin",
            priority = 1090,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Turn in The Hunter's Path.",
            complete = QuestState(6071, "completed"),
            dependsOn = { "accept-6071-the-hunter-s-path" },
            route = {
                Point(1438, 0.5668, 0.5949, "The Hunter's Path",
                    "Travel to The Hunter's Path.")
            }
            },
        {
            id = "accept-6063-taming-the-beast",
            kind = "accept",
            priority = 1100,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6063, "activeOrCompleted"),
            route = {
                Point(1438, 0.5668, 0.5949, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "objective-6063-1-taming-rod",
            kind = "objective",
            priority = 1110,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6063, 1, "Taming Rod"),
            dependsOn = { "accept-6063-taming-the-beast" },
            route = {
                Point(1438, 0.5940, 0.5920, "Taming Rod",
                    "Travel to Taming Rod.")
            }
            },
        {
            id = "turnin-6063-taming-the-beast",
            kind = "turnin",
            priority = 1120,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6063, "completed"),
            dependsOn = { "accept-6063-taming-the-beast", "objective-6063-1-taming-rod" },
            route = {
                Point(1438, 0.5668, 0.5949, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "accept-6101-taming-the-beast",
            kind = "accept",
            priority = 1130,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6101, "activeOrCompleted"),
            route = {
                Point(1438, 0.5668, 0.5949, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "turnin-7383-crown-of-the-earth",
            kind = "turnin",
            priority = 1140,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Crown of the Earth.",
            complete = QuestState(7383, "completed"),
            dependsOn = { "accept-7383-crown-of-the-earth", "objective-7383-1-amethyst-phial" },
            route = {
                Point(1438, 0.5614, 0.6171, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "accept-935-crown-of-the-earth",
            kind = "accept",
            priority = 1150,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Crown of the Earth.",
            complete = QuestState(935, "activeOrCompleted"),
            route = {
                Point(1438, 0.5614, 0.6171, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "turnin-931-the-shimmering-frond",
            kind = "turnin",
            priority = 1160,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Shimmering Frond.",
            complete = QuestState(931, "completed"),
            dependsOn = { "accept-931-the-shimmering-frond" },
            route = {
                Point(1438, 0.6090, 0.6849, "The Shimmering Frond",
                    "Travel to The Shimmering Frond.")
            }
            },
        {
            id = "turnin-930-the-glowing-fruit",
            kind = "turnin",
            priority = 1170,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Glowing Fruit.",
            complete = QuestState(930, "completed"),
            dependsOn = { "accept-930-the-glowing-fruit" },
            route = {
                Point(1438, 0.6090, 0.6849, "The Glowing Fruit",
                    "Travel to The Glowing Fruit.")
            }
            },
        {
            id = "objective-6101-1-taming-rod",
            kind = "objective",
            priority = 1180,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6101, 1, "Taming Rod"),
            dependsOn = { "accept-6101-taming-the-beast" },
            route = {
                Point(1438, 0.6180, 0.7300, "Taming Rod",
                    "Travel to Taming Rod.")
            }
            },
        {
            id = "turnin-6101-taming-the-beast",
            kind = "turnin",
            priority = 1190,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6101, "completed"),
            dependsOn = { "accept-6101-taming-the-beast", "objective-6101-1-taming-rod" },
            route = {
                Point(1438, 0.5668, 0.5949, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "accept-6102-taming-the-beast",
            kind = "accept",
            priority = 1200,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Accept Taming the Beast.",
            complete = QuestState(6102, "activeOrCompleted"),
            route = {
                Point(1438, 0.5668, 0.5949, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "objective-6102-1-taming-rod",
            kind = "objective",
            priority = 1210,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Use Taming Rod.",
            complete = QuestObjective(6102, 1, "Taming Rod"),
            dependsOn = { "accept-6102-taming-the-beast" },
            route = {
                Point(1438, 0.6400, 0.6620, "Taming Rod",
                    "Travel to Taming Rod.")
            }
            },
        {
            id = "turnin-6102-taming-the-beast",
            kind = "turnin",
            priority = 1220,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Turn in Taming the Beast.",
            complete = QuestState(6102, "completed"),
            dependsOn = { "accept-6102-taming-the-beast", "objective-6102-1-taming-rod" },
            route = {
                Point(1438, 0.5668, 0.5949, "Taming the Beast",
                    "Travel to Taming the Beast.")
            }
            },
        {
            id = "accept-6103-training-the-beast",
            kind = "accept",
            priority = 1230,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Accept Training the Beast.",
            complete = QuestState(6103, "activeOrCompleted"),
            route = {
                Point(1438, 0.5668, 0.5949, "Training the Beast",
                    "Travel to Training the Beast.")
            }
            },
        {
            id = "accept-5629-returning-home",
            kind = "accept",
            priority = 1240,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 5 }
            } },
            text = "Accept Returning Home.",
            complete = QuestState(5629, "activeOrCompleted"),
            route = {
                Point(1438, 0.5557, 0.5675, "Returning Home",
                    "Travel to Returning Home.")
            }
            },
        {
            id = "accept-2241-the-apple-falls",
            kind = "accept",
            priority = 1250,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 4 }
            } },
            text = "Accept The Apple Falls.",
            complete = QuestState(2241, "activeOrCompleted"),
            route = {
                Point(1438, 0.5638, 0.6014, "The Apple Falls",
                    "Travel to The Apple Falls.")
            }
            },
        {
            id = "turnin-487-the-road-to-darnassus",
            kind = "turnin",
            priority = 1260,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in The Road to Darnassus.",
            complete = QuestState(487, "completed"),
            dependsOn = { "accept-487-the-road-to-darnassus", "objective-487-1-gnarlpine-ambusher" },
            useClientPin = true,
            route = nil
            },
        {
            id = "turnin-2241-the-apple-falls",
            kind = "turnin",
            priority = 1270,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 4 }
            } },
            text = "Turn in The Apple Falls.",
            complete = QuestState(2241, "completed"),
            dependsOn = { "accept-2241-the-apple-falls" },
            route = {
                Point(1457, 0.3212, 0.1646, "The Apple Falls",
                    "Travel to The Apple Falls.")
            }
            },
        {
            id = "accept-2242-destiny-calls",
            kind = "accept",
            priority = 1280,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 4 }
            } },
            text = "Accept Destiny Calls.",
            complete = QuestState(2242, "activeOrCompleted"),
            route = {
                Point(1457, 0.3212, 0.1646, "Destiny Calls",
                    "Travel to Destiny Calls.")
            }
            },
        {
            id = "objective-2518-1-lady-sathrah",
            kind = "objective",
            priority = 1290,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Kill Lady Sathrah.",
            complete = QuestObjective(2518, 1, "Lady Sathrah"),
            dependsOn = { "accept-2518-tears-of-the-moon" },
            route = {
                Point(1438, 0.4800, 0.2520, "Lady Sathrah",
                    "Travel to Lady Sathrah.")
            }
            },
        {
            id = "accept-6344-nessa-shadowsong",
            kind = "accept",
            priority = 1300,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 }
            } },
            text = "Accept Nessa Shadowsong.",
            complete = QuestState(6344, "activeOrCompleted"),
            route = {
                Point(1457, 0.7068, 0.4538, "Nessa Shadowsong",
                    "Travel to Nessa Shadowsong.")
            }
            },
        {
            id = "turnin-1684-elanaria",
            kind = "turnin",
            priority = 1310,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Turn in Elanaria.",
            complete = QuestState(1684, "completed"),
            dependsOn = { "accept-1684-elanaria" },
            route = {
                Point(1457, 0.5730, 0.3461, "Elanaria",
                    "Travel to Elanaria.")
            }
            },
        {
            id = "accept-1683-vorlus-vilehoof",
            kind = "accept",
            priority = 1320,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Accept Vorlus Vilehoof.",
            complete = QuestState(1683, "activeOrCompleted"),
            route = {
                Point(1457, 0.5730, 0.3461, "Vorlus Vilehoof",
                    "Travel to Vorlus Vilehoof.")
            }
            },
        {
            id = "objective-1683-1-vorlus-vilehoof",
            kind = "objective",
            priority = 1330,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Kill Vorlus Vilehoof.",
            complete = QuestObjective(1683, 1, "Vorlus Vilehoof"),
            dependsOn = { "accept-1683-vorlus-vilehoof" },
            route = {
                Point(1438, 0.4868, 0.6273, "Vorlus Vilehoof",
                    "Travel to Vorlus Vilehoof.")
            }
            },
        {
            id = "turnin-1683-vorlus-vilehoof",
            kind = "turnin",
            priority = 1340,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Turn in Vorlus Vilehoof.",
            complete = QuestState(1683, "completed"),
            dependsOn = { "accept-1683-vorlus-vilehoof", "objective-1683-1-vorlus-vilehoof" },
            route = {
                Point(1457, 0.5730, 0.3461, "Vorlus Vilehoof",
                    "Travel to Vorlus Vilehoof.")
            }
            },
        {
            id = "turnin-923-tumors",
            kind = "turnin",
            priority = 1350,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Tumors.",
            complete = QuestState(923, "completed"),
            dependsOn = { "accept-923-tumors" },
            route = {
                Point(1457, 0.3819, 0.2164, "Tumors",
                    "Travel to Tumors.")
            }
            },
        {
            id = "turnin-2242-destiny-calls",
            kind = "turnin",
            priority = 1360,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 4 }
            } },
            text = "Turn in Destiny Calls.",
            complete = QuestState(2242, "completed"),
            dependsOn = { "accept-2242-destiny-calls" },
            route = {
                Point(1457, 0.3212, 0.1646, "Destiny Calls",
                    "Travel to Destiny Calls.")
            }
            },
        {
            id = "turnin-6103-training-the-beast",
            kind = "turnin",
            priority = 1370,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 3 }
            } },
            text = "Turn in Training the Beast.",
            complete = QuestState(6103, "completed"),
            dependsOn = { "accept-6103-training-the-beast" },
            route = {
                Point(1457, 0.4038, 0.0855, "Training the Beast",
                    "Travel to Training the Beast.")
            }
            },
        {
            id = "turnin-5931-back-to-darnassus",
            kind = "turnin",
            priority = 1380,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Turn in Back to Darnassus.",
            complete = QuestState(5931, "completed"),
            dependsOn = { "accept-5931-back-to-darnassus" },
            route = {
                Point(1457, 0.3538, 0.0841, "Back to Darnassus",
                    "Travel to Back to Darnassus.")
            }
            },
        {
            id = "accept-6001-body-and-heart",
            kind = "accept",
            priority = 1390,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Accept Body and Heart.",
            complete = QuestState(6001, "activeOrCompleted"),
            route = {
                Point(1457, 0.3538, 0.0841, "Body and Heart",
                    "Travel to Body and Heart.")
            }
            },
        {
            id = "turnin-935-crown-of-the-earth",
            kind = "turnin",
            priority = 1400,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Crown of the Earth.",
            complete = QuestState(935, "completed"),
            dependsOn = { "accept-935-crown-of-the-earth" },
            route = {
                Point(1457, 0.3480, 0.0924, "Crown of the Earth",
                    "Travel to Crown of the Earth.")
            }
            },
        {
            id = "turnin-2518-tears-of-the-moon",
            kind = "turnin",
            priority = 1410,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Tears of the Moon.",
            complete = QuestState(2518, "completed"),
            dependsOn = { "accept-2518-tears-of-the-moon", "objective-2518-1-lady-sathrah" },
            route = {
                Point(1457, 0.3664, 0.8593, "Tears of the Moon",
                    "Travel to Tears of the Moon.")
            }
            },
        {
            id = "accept-2520-sathrah-s-sacrifice",
            kind = "accept",
            priority = 1420,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Sathrah's Sacrifice.",
            complete = QuestState(2520, "activeOrCompleted"),
            route = {
                Point(1457, 0.3664, 0.8593, "Sathrah's Sacrifice",
                    "Travel to Sathrah's Sacrifice.")
            }
            },
        {
            id = "turnin-5629-returning-home",
            kind = "turnin",
            priority = 1430,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 5 }
            } },
            text = "Turn in Returning Home.",
            complete = QuestState(5629, "completed"),
            dependsOn = { "accept-5629-returning-home" },
            route = {
                Point(1457, 0.3953, 0.8118, "Returning Home",
                    "Travel to Returning Home.")
            }
            },
        {
            id = "accept-5627-stars-of-elune",
            kind = "accept",
            priority = 1440,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 5 }
            } },
            text = "Accept Stars of Elune.",
            complete = QuestState(5627, "activeOrCompleted"),
            route = {
                Point(1457, 0.3953, 0.8118, "Stars of Elune",
                    "Travel to Stars of Elune.")
            }
            },
        {
            id = "objective-2520-1-sathrah-s-sacrifice",
            kind = "objective",
            priority = 1450,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Use Sathrah's Sacrifice.",
            complete = QuestObjective(2520, 1, "Sathrah's Sacrifice"),
            dependsOn = { "accept-2520-sathrah-s-sacrifice" },
            route = {
                Point(1457, 0.3921, 0.8457, "Sathrah's Sacrifice",
                    "Travel to Sathrah's Sacrifice.")
            }
            },
        {
            id = "turnin-2520-sathrah-s-sacrifice",
            kind = "turnin",
            priority = 1460,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Sathrah's Sacrifice.",
            complete = QuestState(2520, "completed"),
            dependsOn = { "accept-2520-sathrah-s-sacrifice", "objective-2520-1-sathrah-s-sacrifice" },
            route = {
                Point(1457, 0.3664, 0.8593, "Sathrah's Sacrifice",
                    "Travel to Sathrah's Sacrifice.")
            }
            },
        {
            id = "turnin-6344-nessa-shadowsong",
            kind = "turnin",
            priority = 1470,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 }
            } },
            text = "Turn in Nessa Shadowsong.",
            complete = QuestState(6344, "completed"),
            dependsOn = { "accept-6344-nessa-shadowsong" },
            route = {
                Point(1438, 0.5625, 0.9243, "Nessa Shadowsong",
                    "Travel to Nessa Shadowsong.")
            }
            },
        {
            id = "accept-6341-the-bounty-of-teldrassil",
            kind = "accept",
            priority = 1480,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 }
            } },
            text = "Accept The Bounty of Teldrassil.",
            complete = QuestState(6341, "activeOrCompleted"),
            route = {
                Point(1438, 0.5625, 0.9243, "The Bounty of Teldrassil",
                    "Travel to The Bounty of Teldrassil.")
            }
            },
        {
            id = "turnin-6341-the-bounty-of-teldrassil",
            kind = "turnin",
            priority = 1490,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 }
            } },
            text = "Turn in The Bounty of Teldrassil.",
            complete = QuestState(6341, "completed"),
            dependsOn = { "accept-6341-the-bounty-of-teldrassil" },
            route = {
                Point(1438, 0.5840, 0.9401, "The Bounty of Teldrassil",
                    "Travel to The Bounty of Teldrassil.")
            }
            },
        {
            id = "accept-6342-flight-to-auberdine",
            kind = "accept",
            priority = 1500,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 }
            } },
            text = "Accept Flight to Auberdine.",
            complete = QuestState(6342, "activeOrCompleted"),
            route = {
                Point(1438, 0.5840, 0.9401, "Flight to Auberdine",
                    "Travel to Flight to Auberdine.")
            }
            },
        {
            id = "accept-3524-washed-ashore",
            kind = "accept",
            priority = 1510,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Washed Ashore.",
            complete = QuestState(3524, "activeOrCompleted"),
            route = {
                Point(1439, 0.3662, 0.4559, "Washed Ashore",
                    "Travel to Washed Ashore."),
            },
        },
        {
            id = "turnin-6342-flight-to-auberdine",
            kind = "turnin",
            priority = 1520,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 }
            } },
            text = "Turn in Flight to Auberdine.",
            complete = QuestState(6342, "completed"),
            dependsOn = { "accept-6342-flight-to-auberdine" },
            route = {
                Point(1439, 0.3677, 0.4429, "Flight to Auberdine",
                    "Travel to Flight to Auberdine.")
            }
            },
        {
            id = "accept-983-buzzbox-827",
            kind = "accept",
            priority = 1530,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Buzzbox 827.",
            complete = QuestState(983, "activeOrCompleted"),
            route = {
                Point(1439, 0.3698, 0.4414, "Buzzbox 827",
                    "Travel to Buzzbox 827."),
            },
        },
        {
            id = "accept-2118-plagued-lands",
            kind = "accept",
            priority = 1540,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Plagued Lands.",
            complete = QuestState(2118, "activeOrCompleted"),
            route = {
                Point(1439, 0.3884, 0.4342, "Plagued Lands",
                    "Travel to Plagued Lands."),
            },
        },
        {
            id = "accept-984-how-big-a-threat",
            kind = "accept",
            priority = 1550,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept How Big a Threat?.",
            complete = QuestState(984, "activeOrCompleted"),
            route = {
                Point(1439, 0.3937, 0.4348, "How Big a Threat?",
                    "Travel to How Big a Threat?."),
            },
        },
        {
            id = "objective-2118-1-tharnariun-s-hope",
            kind = "objective",
            priority = 1560,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Use Tharnariun's Hope.",
            complete = QuestObjective(2118, 1, "Tharnariun's Hope"),
            dependsOn = { "accept-2118-plagued-lands" },
            route = {
                Point(1439, 0.3800, 0.5240, "Tharnariun's Hope",
                    "Travel to Tharnariun's Hope."),
            },
        },
        {
            id = "turnin-983-buzzbox-827",
            kind = "turnin",
            priority = 1570,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Buzzbox 827.",
            complete = QuestState(983, "completed"),
            dependsOn = { "accept-983-buzzbox-827" },
            route = {
                Point(1439, 0.3666, 0.4626, "Buzzbox 827",
                    "Travel to Buzzbox 827."),
            },
        },
        {
            id = "turnin-3524-washed-ashore",
            kind = "turnin",
            priority = 1580,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Washed Ashore.",
            complete = QuestState(3524, "completed"),
            dependsOn = { "accept-3524-washed-ashore" },
            route = {
                Point(1439, 0.3662, 0.4559, "Washed Ashore",
                    "Travel to Washed Ashore."),
            },
        },
        {
            id = "accept-4681-washed-ashore",
            kind = "accept",
            priority = 1590,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Washed Ashore.",
            complete = QuestState(4681, "activeOrCompleted"),
            route = {
                Point(1439, 0.3662, 0.4559, "Washed Ashore",
                    "Travel to Washed Ashore."),
            },
        },
        {
            id = "turnin-4681-washed-ashore",
            kind = "turnin",
            priority = 1600,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Washed Ashore.",
            complete = QuestState(4681, "completed"),
            dependsOn = { "accept-4681-washed-ashore" },
            route = {
                Point(1439, 0.3662, 0.4559, "Washed Ashore",
                    "Travel to Washed Ashore."),
            },
        },
        {
            id = "objective-6001-1-cenarion-moondust",
            kind = "objective",
            priority = 1610,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Use Cenarion Moondust.",
            complete = QuestObjective(6001, 1, "Cenarion Moondust"),
            dependsOn = { "accept-6001-body-and-heart" },
            route = {
                Point(1439, 0.4348, 0.4596, "Cenarion Moondust",
                    "Travel to Cenarion Moondust.")
            }
            },
        {
            id = "accept-6343-return-to-nessa",
            kind = "accept",
            priority = 1620,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 }
            } },
            text = "Accept Return to Nessa.",
            complete = QuestState(6343, "activeOrCompleted"),
            route = {
                Point(1439, 0.3677, 0.4428, "Return to Nessa",
                    "Travel to Nessa.")
            }
            },
        {
            id = "turnin-6343-return-to-nessa",
            kind = "turnin",
            priority = 1630,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 }
            } },
            text = "Turn in Return to Nessa.",
            complete = QuestState(6343, "completed"),
            dependsOn = { "accept-6343-return-to-nessa" },
            route = {
                Point(1438, 0.5625, 0.9244, "Return to Nessa",
                    "Travel to Nessa.")
            }
            },
        {
            id = "turnin-6001-body-and-heart",
            kind = "turnin",
            priority = 1640,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { race = 4 },
                { class = 11 }
            } },
            text = "Turn in Body and Heart.",
            complete = QuestState(6001, "completed"),
            dependsOn = { "accept-6001-body-and-heart", "objective-6001-1-cenarion-moondust" },
            route = {
                Point(1457, 0.3538, 0.0841, "Body and Heart",
                    "Travel to Body and Heart.")
            }
            },
        {
            id = "turnin-2118-plagued-lands",
            kind = "turnin",
            priority = 1650,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Plagued Lands.",
            complete = QuestState(2118, "completed"),
            dependsOn = { "accept-2118-plagued-lands", "objective-2118-1-tharnariun-s-hope" },
            route = {
                Point(1439, 0.3884, 0.4342, "Plagued Lands",
                    "Travel to Plagued Lands."),
            },
        },
        {
            id = "turnin-984-how-big-a-threat",
            kind = "turnin",
            priority = 1660,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in How Big a Threat?.",
            complete = QuestState(984, "completed"),
            dependsOn = { "accept-984-how-big-a-threat" },
            route = {
                Point(1439, 0.3937, 0.4348, "How Big a Threat?",
                    "Travel to How Big a Threat?."),
            },
        },
        {
            id = "accept-4761-thundris-windweaver",
            kind = "accept",
            priority = 1670,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Thundris Windweaver.",
            complete = QuestState(4761, "activeOrCompleted"),
            route = {
                Point(1439, 0.3937, 0.4348, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "turnin-4761-thundris-windweaver",
            kind = "turnin",
            priority = 1680,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Thundris Windweaver.",
            complete = QuestState(4761, "completed"),
            dependsOn = { "accept-4761-thundris-windweaver" },
            route = {
                Point(1439, 0.3740, 0.4013, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "accept-954-bashal-aran",
            kind = "accept",
            priority = 1690,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bashal'Aran.",
            complete = QuestState(954, "activeOrCompleted"),
            route = {
                Point(1439, 0.3740, 0.4013, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "turnin-954-bashal-aran",
            kind = "turnin",
            priority = 1700,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bashal'Aran.",
            complete = QuestState(954, "completed"),
            dependsOn = { "accept-954-bashal-aran" },
            route = {
                Point(1439, 0.4417, 0.3629, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "accept-955-bashal-aran",
            kind = "accept",
            priority = 1710,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bashal'Aran.",
            complete = QuestState(955, "activeOrCompleted"),
            route = {
                Point(1439, 0.4417, 0.3629, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "objective-955-1-wild-grell",
            kind = "objective",
            priority = 1720,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Kill Wild Grell.",
            complete = QuestObjective(955, 1, "Wild Grell"),
            dependsOn = { "accept-955-bashal-aran" },
            route = {
                Point(1439, 0.4580, 0.3680, "Wild Grell",
                    "Travel to Wild Grell."),
            },
        },
        {
            id = "turnin-955-bashal-aran",
            kind = "turnin",
            priority = 1730,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bashal'Aran.",
            complete = QuestState(955, "completed"),
            dependsOn = { "accept-955-bashal-aran", "objective-955-1-wild-grell" },
            route = {
                Point(1439, 0.4417, 0.3629, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "accept-956-bashal-aran",
            kind = "accept",
            priority = 1740,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bashal'Aran.",
            complete = QuestState(956, "activeOrCompleted"),
            route = {
                Point(1439, 0.4417, 0.3629, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "objective-956-1-deth-ryll-satyr",
            kind = "objective",
            priority = 1750,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Kill Deth'ryll Satyr.",
            complete = QuestObjective(956, 1, "Deth'ryll Satyr"),
            dependsOn = { "accept-956-bashal-aran" },
            route = {
                Point(1439, 0.4580, 0.3780, "Deth'ryll Satyr",
                    "Travel to Deth'ryll Satyr."),
            },
        },
        {
            id = "turnin-956-bashal-aran",
            kind = "turnin",
            priority = 1760,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bashal'Aran.",
            complete = QuestState(956, "completed"),
            dependsOn = { "accept-956-bashal-aran", "objective-956-1-deth-ryll-satyr" },
            route = {
                Point(1439, 0.4417, 0.3630, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "accept-957-bashal-aran",
            kind = "accept",
            priority = 1770,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bashal'Aran.",
            complete = QuestState(957, "activeOrCompleted"),
            route = {
                Point(1439, 0.4417, 0.3630, "Bashal'Aran",
                    "Travel to Bashal'Aran."),
            },
        },
        {
            id = "objective-2178-1-moonkin",
            kind = "objective",
            priority = 1780,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Kill Moonkin.",
            complete = QuestObjective(2178, 1, "Moonkin"),
            route = {
                Point(1439, 0.4440, 0.4720, "Moonkin",
                    "Travel to Moonkin."),
            },
        },
        {
            id = "accept-2178-easy-strider-living",
            kind = "accept",
            priority = 1790,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Accept Easy Strider Living.",
            complete = QuestState(2178, "activeOrCompleted"),
            route = {
                Point(1439, 0.3769, 0.4066, "Easy Strider Living",
                    "Travel to Easy Strider Living."),
            },
        },
        {
            id = "turnin-2178-easy-strider-living",
            kind = "turnin",
            priority = 1800,
            conditions = { all = {
                { level = { min = 15 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Easy Strider Living.",
            complete = QuestState(2178, "completed"),
            dependsOn = { "accept-2178-easy-strider-living", "objective-2178-1-moonkin" },
            route = {
                Point(1439, 0.3769, 0.4066, "Easy Strider Living",
                    "Travel to Easy Strider Living."),
            },
        },
        {
            id = "accept-433-the-public-servant",
            kind = "accept",
            priority = 1810,
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
            priority = 1820,
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
            priority = 1830,
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
            priority = 1840,
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
            priority = 1850,
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
            priority = 1860,
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
            priority = 1870,
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
            priority = 1880,
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
            priority = 1890,
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
            priority = 1900,
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
            id = "accept-1339-mountaineer-stormpike-s-task",
            kind = "accept",
            priority = 1910,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Mountaineer Stormpike's Task from Mountaineer Kadrell in Thelsamar.",
            complete = QuestState(1339, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-1339-mountaineer-stormpike-s-task",
            kind = "turnin",
            priority = 1920,
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
            priority = 1930,
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
            id = "accept-6661-deeprun-rat-roundup",
            kind = "accept",
            priority = 1940,
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
            priority = 1950,
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
            priority = 1960,
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
            id = "accept-6662-me-brother-nipsy",
            kind = "accept",
            priority = 1970,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Accept Me Brother, Nipsy from Monty in the Deeprun Tram.",
            complete = QuestState(6662, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-6662-me-brother-nipsy",
            kind = "turnin",
            priority = 1980,
            conditions = { all = {
                { },
                { faction = "Alliance" }
            } },
            text = "Turn in Me Brother, Nipsy to Nipsy on the Stormwind side of the Deeprun Tram.",
            complete = QuestState(6662, "completed"),
            dependsOn = { "accept-6662-me-brother-nipsy" },
            useClientPin = true,
            route = nil
            },
        {
            id = "accept-353-stormpike-s-delivery",
            kind = "accept",
            priority = 1990,
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
            id = "turnin-1338-stormpike-s-order",
            kind = "turnin",
            priority = 2000,
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
            id = "accept-1638-a-warrior-s-training",
            kind = "accept",
            priority = 2010,
            conditions = { all = {
                { },
                { faction = "Alliance" },
                { class = 1 }
            } },
            text = "Accept A Warrior's Training.",
            complete = QuestState(1638, "activeOrCompleted"),
            route = {
                Point(1453, 0.7850, 0.4571, "A Warrior's Training",
                    "Travel to A Warrior's Training.")
            }
            },
        {
            id = "turnin-1638-a-warrior-s-training",
            kind = "turnin",
            priority = 2020,
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
            priority = 2030,
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
            priority = 2040,
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
            priority = 2050,
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
            priority = 2060,
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
            priority = 2070,
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
            priority = 2080,
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
            priority = 2090,
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
            id = "woven-accept-97977-natures-call",
            kind = "accept",
            priority = 2100,
            conditions = { level = { min = 3 } },
            text = "Accept Nature's Call from Tarindrella.",
            complete = QuestState(97977, "activeOrCompleted"),
            route = {
                Point(1438, 0.5780, 0.4500, "Tarindrella",
                    "Travel to Tarindrella."),
            },
        },
        {
            id = "woven-objective-97977-natures-call",
            kind = "objective",
            priority = 2110,
            useClientPin = true,
            conditions = { level = { min = 3 } },
            text = "Collect a Gnarlpine Totem from the abandoned camps on the western edge of Shadowglen. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(97977, "complete"),
            route = {
                Point(1438, 0.5500, 0.4460, "Grell camps",
                    "Travel to Grell camps."),
            },
        },
        {
            id = "woven-turnin-97977-natures-call",
            kind = "turnin",
            priority = 2120,
            conditions = { level = { min = 3 } },
            text = "Turn in Nature's Call to Tarindrella.",
            complete = QuestState(97977, "completed"),
            route = {
                Point(1438, 0.5780, 0.4500, "Tarindrella",
                    "Travel to Tarindrella."),
            },
        },
        {
            id = "woven-turnin-97236-fang-of-githyiss",
            kind = "turnin",
            priority = 2130,
            conditions = {
                all = {
                    { level = { min = 5 } },
                    { quest = { id = 97236, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Fang of Githyiss to Gilshalan Windwalker if Githyiss the Vile dropped the fang.",
            complete = QuestState(97236, "completed"),
            route = {
                Point(1438, 0.5780, 0.4160, "Gilshalan Windwalker",
                    "Travel to Gilshalan Windwalker."),
            },
        },
        {
            id = "woven-accept-96630-the-adventurer",
            kind = "accept",
            priority = 2140,
            conditions = { level = { min = 6 } },
            text = "Accept The Adventurer from the book on the table behind Tenaron Stormgrip in Aldrassil.",
            complete = QuestState(96630, "activeOrCompleted"),
            route = {
                Point(1438, 0.5909, 0.3939, "Tenaron Stormgrip",
                    "Travel to Tenaron Stormgrip."),
            },
        },
        {
            id = "woven-turnin-96630-the-adventurer",
            kind = "turnin",
            priority = 2150,
            conditions = { level = { min = 6 } },
            text = "Turn in The Adventurer to Lyreena Duskblade near Dolanaar.",
            complete = QuestState(96630, "completed"),
            route = {
                Point(1438, 0.5760, 0.5660, "Lyreena Duskblade",
                    "Travel to Lyreena Duskblade."),
            },
        },
        {
            id = "woven-accept-96101-the-great-outdoors",
            kind = "accept",
            priority = 2160,
            conditions = { level = { min = 6 } },
            text = "Accept The Great Outdoors from Lyreena Duskblade.",
            complete = QuestState(96101, "activeOrCompleted"),
            route = {
                Point(1438, 0.5760, 0.5660, "Lyreena Duskblade",
                    "Travel to Lyreena Duskblade."),
            },
        },
        {
            id = "woven-objective-96101-the-great-outdoors",
            kind = "objective",
            priority = 2170,
            conditions = { level = { min = 6 } },
            text = "Type /sit at Lyreena Duskblade's campfire and wait until you gain the Boosted Rest buff.",
            complete = QuestState(96101, "complete"),
        },
        {
            id = "woven-turnin-96101-the-great-outdoors",
            kind = "turnin",
            priority = 2180,
            conditions = { level = { min = 6 } },
            text = "Turn in The Great Outdoors to Lyreena Duskblade.",
            complete = QuestState(96101, "completed"),
            route = {
                Point(1438, 0.5760, 0.5660, "Lyreena Duskblade",
                    "Travel to Lyreena Duskblade."),
            },
        },
        {
            id = "woven-accept-98391-the-sisterhood-of-elune",
            kind = "accept",
            priority = 2190,
            conditions = { level = { min = 10 } },
            text = "Accept The Sisterhood of Elune from Laurna Morninglight in Dolanaar.",
            complete = QuestState(98391, "activeOrCompleted"),
            route = {
                Point(1438, 0.5560, 0.5680, "Laurna Morninglight",
                    "Travel to Laurna Morninglight."),
            },
        },
        {
            id = "woven-accept-98403-twisted-hatred",
            kind = "accept",
            priority = 2200,
            conditions = { level = { min = 12 } },
            text = "Accept Twisted Hatred from Tallonkai Swiftroot. This is an elite. Bring a group.",
            complete = QuestState(98403, "activeOrCompleted"),
            route = {
                Point(1438, 0.5540, 0.5680, "Tallonkai Swiftroot",
                    "Travel to Tallonkai Swiftroot."),
            },
        },
        {
            id = "woven-objective-98403-twisted-hatred",
            kind = "objective",
            priority = 2210,
            conditions = { level = { min = 12 } },
            text = "Kill Xethorr the Wicked in the Cleft northwest of Dolanaar and collect Mature Fel Moss. This is an elite. Bring a group.",
            complete = QuestState(98403, "complete"),
            route = {
                Point(1438, 0.5140, 0.4420, "Xethorr the Wicked",
                    "Travel to Xethorr the Wicked."),
            },
        },
        {
            id = "woven-turnin-98403-twisted-hatred",
            kind = "turnin",
            priority = 2220,
            conditions = { level = { min = 12 } },
            text = "Turn in Twisted Hatred to Tallonkai Swiftroot.",
            complete = QuestState(98403, "completed"),
            route = {
                Point(1438, 0.5540, 0.5680, "Tallonkai Swiftroot",
                    "Travel to Tallonkai Swiftroot."),
            },
        },
        {
            id = "woven-accept-99053-escaping-banethil",
            kind = "accept",
            priority = 2230,
            conditions = { level = { min = 9 } },
            text = "Accept Escaping Ban'ethil from Sentinel Lynessa Duskblossom in the Ban'ethil Barrow Den.",
            complete = QuestState(99053, "activeOrCompleted"),
            route = {
                Point(1438, 0.4460, 0.5880, "Sentinel Lynessa Duskblossom",
                    "Travel to Sentinel Lynessa Duskblossom."),
            },
        },
        {
            id = "woven-objective-99053-escaping-banethil",
            kind = "objective",
            priority = 2240,
            conditions = { level = { min = 9 } },
            text = "Escort Sentinel Lynessa Duskblossom out of the Ban'ethil Barrow Den.",
            complete = QuestState(99053, "complete"),
            route = {
                Point(1438, 0.4460, 0.5880, "Sentinel Lynessa Duskblossom",
                    "Travel to Sentinel Lynessa Duskblossom."),
            },
        },
        {
            id = "woven-turnin-99053-escaping-banethil",
            kind = "turnin",
            priority = 2250,
            conditions = { level = { min = 9 } },
            text = "Turn in Escaping Ban'ethil to Sentinel Kyra Starsong in Dolanaar.",
            complete = QuestState(99053, "completed"),
            route = {
                Point(1438, 0.5600, 0.5940, "Sentinel Kyra Starsong",
                    "Travel to Sentinel Kyra Starsong."),
            },
        },
        {
            id = "woven-accept-99046-the-lost-runner",
            kind = "accept",
            priority = 2260,
            conditions = { level = { min = 9 } },
            text = "Accept The Lost Runner from Sentinel Kyra Starsong in Dolanaar.",
            complete = QuestState(99046, "activeOrCompleted"),
            route = {
                Point(1438, 0.5600, 0.5940, "Sentinel Kyra Starsong",
                    "Travel to Sentinel Kyra Starsong."),
            },
        },
        {
            id = "woven-turnin-99046-the-lost-runner",
            kind = "turnin",
            priority = 2270,
            conditions = { level = { min = 9 } },
            text = "Turn in The Lost Runner to Sentinel Eralya Leafshadow on the road to the Oracle Glade.",
            complete = QuestState(99046, "completed"),
            route = {
                Point(1438, 0.3760, 0.3680, "Sentinel Eralya Leafshadow",
                    "Travel to Sentinel Eralya Leafshadow."),
            },
        },
        {
            id = "woven-turnin-98391-the-sisterhood-of-elune",
            kind = "turnin",
            priority = 2280,
            conditions = { level = { min = 10 } },
            text = "Turn in The Sisterhood of Elune to Sister Aquinne in the Temple Garden.",
            complete = QuestState(98391, "completed"),
            route = {
                Point(1457, 0.2900, 0.4540, "Sister Aquinne",
                    "Travel to Sister Aquinne."),
            },
        },
        {
            id = "woven-accept-99047-not-dead-yet",
            kind = "accept",
            priority = 2290,
            conditions = { level = { min = 9 } },
            text = "Accept Not Dead Yet from Sentinel Eralya Leafshadow.",
            complete = QuestState(99047, "activeOrCompleted"),
            route = {
                Point(1438, 0.3760, 0.3680, "Sentinel Eralya Leafshadow",
                "Travel to Sentinel Eralya Leafshadow."),
            },
        },
        {
            id = "woven-turnin-99047-not-dead-yet",
            kind = "turnin",
            priority = 2300,
            conditions = { level = { min = 9 } },
            text = "Tell Byancie in Dolanaar.",
            complete = QuestState(99047, "completed"),
            route = {
                Point(1438, 0.5520, 0.5680, "Byancie",
                    "Travel to Byancie."),
            },
        },
        {
            id = "woven-accept-99050-the-great-tree-provides",
            kind = "accept",
            priority = 2310,
            conditions = { level = { min = 10 } },
            text = "Accept The Great Tree Provides from Byancie in Dolanaar.",
            complete = QuestState(99050, "activeOrCompleted"),
            route = {
                Point(1438, 0.5520, 0.5680, "Byancie",
                    "Travel to Byancie."),
            },
        },
        {
            id = "woven-objective-99050-the-great-tree-provides-2",
            kind = "objective",
            priority = 2320,
            conditions = { level = { min = 10 } },
            useClientPin = true,
            text = "Buy an Empty Vial in Dolanaar. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(99050, 2),
            route = {
                Point(1438, 0.5520, 0.5680, "Dolanaar vendor",
                    "Travel to Dolanaar vendor."),
            },
        },
        {
            id = "woven-objective-99050-the-great-tree-provides-3",
            kind = "objective",
            priority = 2330,
            conditions = { level = { min = 10 } },
            useClientPin = true,
            text = "Buy a Refreshing Spring Water in Dolanaar. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(99050, 3),
            route = {
                Point(1438, 0.5520, 0.5680, "Dolanaar vendor",
                    "Travel to Dolanaar vendor."),
            },
        },
        {
            id = "woven-accept-98392-darkness-in-the-glade",
            kind = "accept",
            priority = 2340,
            conditions = { level = { min = 12 } },
            text = "Accept Darkness in the Glade from Sentinel Arynia Cloudsbreak.",
            complete = QuestState(98392, "activeOrCompleted"),
            route = {
                Point(1438, 0.3820, 0.3440, "Sentinel Arynia Cloudsbreak",
                    "Travel to Sentinel Arynia Cloudsbreak."),
            },
        },
        {
            id = "woven-objective-98392-darkness-in-the-glade-1",
            kind = "objective",
            priority = 2350,
            conditions = { level = { min = 12 } },
            text = "Darkness in the Glade: take Hatescreech's Amulet.",
            complete = QuestObjective(98392, 1),
            route = {
                Point(1438, 0.3500, 0.3920, "Hatescreech",
                    "Travel to Hatescreech."),
            },
        },
        {
            id = "woven-objective-98392-darkness-in-the-glade-2",
            kind = "objective",
            priority = 2360,
            conditions = { level = { min = 12 } },
            text = "Darkness in the Glade: take Windmistress Gaedress' Amulet.",
            complete = QuestObjective(98392, 2),
            route = {
                Point(1438, 0.3320, 0.3600, "Windmistress Gaedress",
                    "Travel to Windmistress Gaedress."),
            },
        },
        {
            id = "woven-objective-98392-darkness-in-the-glade-3",
            kind = "objective",
            priority = 2370,
            conditions = { level = { min = 12 } },
            text = "Darkness in the Glade: take Witchmother Arysa's Amulet.",
            complete = QuestObjective(98392, 3),
            route = {
                Point(1438, 0.3420, 0.2800, "Witchmother Arysa",
                    "Travel to Witchmother Arysa."),
            },
        },
        {
            id = "woven-turnin-98392-darkness-in-the-glade",
            kind = "turnin",
            priority = 2380,
            conditions = { level = { min = 12 } },
            text = "Turn in Darkness in the Glade to Sentinel Arynia Cloudsbreak.",
            complete = QuestState(98392, "completed"),
            route = {
                Point(1438, 0.3820, 0.3440, "Sentinel Arynia Cloudsbreak",
                    "Travel to Sentinel Arynia Cloudsbreak."),
            },
        },
        {
            id = "woven-accept-98398-the-oracle-tree",
            kind = "accept",
            priority = 2390,
            conditions = { level = { min = 12 } },
            text = "Accept The Oracle Tree from Sentinel Arynia Cloudsbreak.",
            complete = QuestState(98398, "activeOrCompleted"),
            route = {
                Point(1438, 0.3830, 0.3440, "Sentinel Arynia Cloudsbreak",
                "Travel to Sentinel Arynia Cloudsbreak."),
            },
        },
        {
            id = "woven-turnin-98398-the-oracle-tree",
            kind = "turnin",
            priority = 2400,
            conditions = { level = { min = 12 } },
            useClientPin = true,
            text = "Speak with the Oracle Tree. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestState(98398, "completed"),
            route = {
                Point(1438, 0.3820, 0.3440, "Oracle Tree",
                    "Travel to Oracle Tree."),
            },
        },
        {
            id = "woven-objective-99050-the-great-tree-provides-1",
            kind = "objective",
            priority = 2410,
            conditions = { level = { min = 10 } },
            text = "Collect 6 Dewy Lasher Fronds from lashers around Lake Al'Ameth.",
            complete = QuestObjective(99050, 1),
            route = {
                Point(1438, 0.5900, 0.6400, "Lasher Sproutling",
                    "Travel to Lasher Sproutling."),
            },
        },
        {
            id = "woven-turnin-99050-the-great-tree-provides",
            kind = "turnin",
            priority = 2420,
            conditions = { level = { min = 10 } },
            text = "Turn in The Great Tree Provides to Byancie in Dolanaar.",
            complete = QuestState(99050, "completed"),
            route = {
                Point(1438, 0.5520, 0.5680, "Byancie",
                    "Travel to Byancie."),
            },
        },
        {
            id = "woven-accept-99073-easing-suffering",
            kind = "accept",
            priority = 2430,
            conditions = { level = { min = 10 } },
            text = "Accept Easing Suffering from Byancie.",
            complete = QuestState(99073, "activeOrCompleted"),
            route = {
                Point(1438, 0.5520, 0.5680, "Byancie",
                "Travel to Byancie."),
            },
        },
        {
            id = "woven-turnin-99073-easing-suffering",
            kind = "turnin",
            priority = 2440,
            conditions = { level = { min = 10 } },
            text = "Take the salve to Sentinel Eralya Leafshadow.",
            complete = QuestState(99073, "completed"),
            route = {
                Point(1438, 0.3760, 0.3680, "Sentinel Eralya Leafshadow",
                    "Travel to Sentinel Eralya Leafshadow."),
            },
        },
        {
            id = "woven-accept-98046-crown-of-the-earth",
            kind = "accept",
            priority = 2450,
            conditions = { level = { min = 11 } },
            text = "Accept Crown of the Earth from Arch Druid Fandral Staghelm.",
            complete = QuestState(98046, "activeOrCompleted"),
            route = {
                Point(1457, 0.3486, 0.0897, "Archdruid Fandral Staghelm",
                "Travel to Archdruid Fandral Staghelm."),
            },
        },
        {
            id = "woven-turnin-98046-crown-of-the-earth",
            kind = "turnin",
            priority = 2460,
            conditions = { level = { min = 11 } },
            text = "Bring the drained vessel to Priestess Lariia in the Temple of the Moon.",
            complete = QuestState(98046, "completed"),
            route = {
                Point(1457, 0.4000, 0.8740, "Priestess Lariia",
                    "Travel to Priestess Lariia."),
            },
        },
        {
            id = "woven-accept-98065-crown-of-the-earth",
            kind = "accept",
            priority = 2470,
            conditions = { level = { min = 11 } },
            text = "Accept Crown of the Earth from Priestess Lariia.",
            complete = QuestState(98065, "activeOrCompleted"),
            route = {
                Point(1457, 0.4000, 0.8740, "Priestess Lariia",
                "Travel to Priestess Lariia."),
            },
        },
        {
            id = "woven-turnin-98065-crown-of-the-earth",
            kind = "turnin",
            priority = 2480,
            conditions = { level = { min = 11 } },
            text = "Bring the moonwell remnants to Tyrande Whisperwind.",
            complete = QuestState(98065, "completed"),
            route = {
                Point(1457, 0.3900, 0.8120, "Tyrande Whisperwind",
                    "Travel to Tyrande Whisperwind."),
            },
        },
        {
            id = "woven-accept-98067-eyes-of-the-sentinels",
            kind = "accept",
            priority = 2490,
            conditions = { level = { min = 11 } },
            text = "Accept Eyes of the Sentinels from Sentinel Dalia Sunblade in the Temple of the Moon.",
            complete = QuestState(98067, "activeOrCompleted"),
            route = {
                Point(1457, 0.3980, 0.8920, "Sentinel Dalia Sunblade",
                    "Travel to Sentinel Dalia Sunblade."),
            },
        },
        {
            id = "woven-objective-98067-eyes-of-the-sentinels",
            kind = "objective",
            priority = 2500,
            conditions = { level = { min = 11 } },
            text = "Place Sentinel Owls at the Cenarion Hold depths entrance, the Darnassus Bank, the Craftsmen's Terrace Inn, and the City Gate.",
            complete = QuestState(98067, "complete"),
            route = {
                Point(1457, 0.3380, 0.1580, "Cenarion Hold depths",
                    "Travel to Cenarion Hold depths."),
                Point(1457, 0.4140, 0.4320, "Darnassus Bank",
                    "Travel to Darnassus Bank."),
                Point(1457, 0.6640, 0.1540, "Craftsmen's Terrace",
                    "Travel to Craftsmen's Terrace."),
            },
        },
        {
            id = "woven-turnin-98067-eyes-of-the-sentinels",
            kind = "turnin",
            priority = 2510,
            conditions = { level = { min = 11 } },
            text = "Turn in Eyes of the Sentinels to Sentinel Dalia Sunblade.",
            complete = QuestState(98067, "completed"),
            route = {
                Point(1457, 0.3980, 0.8920, "Sentinel Dalia Sunblade",
                    "Travel to Sentinel Dalia Sunblade."),
            },
        },
    },
})
