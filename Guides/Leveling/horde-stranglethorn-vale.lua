local _, ns = ...

-- Forever Casual spine: Stranglethorn Vale (36-37)
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
    STRANGLETHORN_VALE = 1434,
}

ns:RegisterGuide({
    id = "leveling-era-horde-stranglethorn-vale",
    title = "Stranglethorn Vale",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 36 } },
        },
    },
    goals = {
        {
            id = "accept-568-the-defense-of-grom-gol",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept The Defense of Grom'gol.",
            complete = QuestState(568, "activeOrCompleted"),
            route = {
                Point(1434, 0.3217, 0.2890, "The Defense of Grom'gol",
                    "Travel to The Defense of Grom'gol."),
            },
        },
        {
            id = "accept-581-hunt-for-yenniku",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Hunt for Yenniku.",
            complete = QuestState(581, "activeOrCompleted"),
            route = {
                Point(1434, 0.3216, 0.2773, "Hunt for Yenniku",
                    "Travel to Hunt for Yenniku."),
            },
        },
        {
            id = "accept-596-bloody-bone-necklaces",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Bloody Bone Necklaces.",
            complete = QuestState(596, "activeOrCompleted"),
            route = {
                Point(1434, 0.3227, 0.2771, "Bloody Bone Necklaces",
                    "Travel to Bloody Bone Necklaces."),
            },
        },
        {
            id = "turnin-5762-hemet-nesingwary-jr",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hemet Nesingwary Jr.",
            complete = QuestState(5762, "completed"),
            route = {
                Point(1434, 0.3566, 0.1081, "Hemet Nesingwary Jr",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "turnin-5763-hunting-in-stranglethorn",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hunting in Stranglethorn.",
            complete = QuestState(5763, "completed"),
            route = {
                Point(1434, 0.3566, 0.1081, "Hunting in Stranglethorn",
                    "Travel to Hunting in Stranglethorn."),
            },
        },
        {
            id = "accept-583-welcome-to-the-jungle",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Welcome to the Jungle.",
            complete = QuestState(583, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "Welcome to the Jungle",
                    "Travel to Welcome to the Jungle."),
            },
        },
        {
            id = "turnin-583-welcome-to-the-jungle",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Welcome to the Jungle.",
            complete = QuestState(583, "completed"),
            dependsOn = { "accept-583-welcome-to-the-jungle" },
            route = {
                Point(1434, 0.3566, 0.1081, "Welcome to the Jungle",
                    "Travel to Welcome to the Jungle."),
            },
        },
        {
            id = "accept-194-raptor-mastery",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Raptor Mastery.",
            complete = QuestState(194, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "accept-185-tiger-mastery",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Tiger Mastery.",
            complete = QuestState(185, "activeOrCompleted"),
            route = {
                Point(1434, 0.3561, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "accept-190-panther-mastery",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Panther Mastery.",
            complete = QuestState(190, "activeOrCompleted"),
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "objective-185-1-young-stranglethorn-tiger",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Young Stranglethorn Tiger.",
            complete = QuestObjective(185, 1, "Young Stranglethorn Tiger"),
            dependsOn = { "accept-185-tiger-mastery" },
            route = {
                Point(1434, 0.3380, 0.1300, "Young Stranglethorn Tiger",
                    "Travel to Young Stranglethorn Tiger."),
            },
        },
        {
            id = "turnin-185-tiger-mastery",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Tiger Mastery.",
            complete = QuestState(185, "completed"),
            dependsOn = { "accept-185-tiger-mastery", "objective-185-1-young-stranglethorn-tiger" },
            route = {
                Point(1434, 0.3561, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "accept-186-tiger-mastery",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Tiger Mastery.",
            complete = QuestState(186, "activeOrCompleted"),
            route = {
                Point(1434, 0.3561, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "objective-605-1-crystal-spine-basilisk",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill Crystal Spine Basilisk.",
            complete = QuestObjective(605, 1, "Crystal Spine Basilisk"),
            route = {
                Point(1434, 0.4760, 0.0900, "Crystal Spine Basilisk",
                    "Travel to Crystal Spine Basilisk."),
            },
        },
        {
            id = "objective-186-1-stranglethorn-tiger",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Stranglethorn Tiger.",
            complete = QuestObjective(186, 1, "Stranglethorn Tiger"),
            dependsOn = { "accept-186-tiger-mastery" },
            route = {
                Point(1434, 0.4640, 0.1280, "Stranglethorn Tiger",
                    "Travel to Stranglethorn Tiger."),
            },
        },
        {
            id = "turnin-186-tiger-mastery",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Tiger Mastery.",
            complete = QuestState(186, "completed"),
            dependsOn = { "accept-186-tiger-mastery", "objective-186-1-stranglethorn-tiger" },
            route = {
                Point(1434, 0.3561, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "accept-187-tiger-mastery",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Tiger Mastery.",
            complete = QuestState(187, "activeOrCompleted"),
            route = {
                Point(1434, 0.3561, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "turnin-190-panther-mastery",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Panther Mastery.",
            complete = QuestState(190, "completed"),
            dependsOn = { "accept-190-panther-mastery" },
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "accept-191-panther-mastery",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Panther Mastery.",
            complete = QuestState(191, "activeOrCompleted"),
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "objective-187-1-elder-stranglethorn-tiger",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Elder Stranglethorn Tiger.",
            complete = QuestObjective(187, 1, "Elder Stranglethorn Tiger"),
            dependsOn = { "accept-187-tiger-mastery" },
            route = {
                Point(1434, 0.3140, 0.1420, "Elder Stranglethorn Tiger",
                    "Travel to Elder Stranglethorn Tiger."),
            },
        },
        {
            id = "objective-191-1-panther",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Panther.",
            complete = QuestObjective(191, 1, "Panther"),
            dependsOn = { "accept-191-panther-mastery" },
            route = {
                Point(1434, 0.2820, 0.1640, "Panther",
                    "Travel to Panther."),
            },
        },
        {
            id = "objective-605-1-crystal-spine-basilisk-2",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill Crystal Spine Basilisk.",
            complete = QuestObjective(605, 1, "Crystal Spine Basilisk"),
            route = {
                Point(1434, 0.2400, 0.1760, "Crystal Spine Basilisk",
                    "Travel to Crystal Spine Basilisk."),
            },
        },
        {
            id = "turnin-194-raptor-mastery",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Raptor Mastery.",
            complete = QuestState(194, "completed"),
            dependsOn = { "accept-194-raptor-mastery" },
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "accept-195-raptor-mastery",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Raptor Mastery.",
            complete = QuestState(195, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "turnin-187-tiger-mastery",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Tiger Mastery.",
            complete = QuestState(187, "completed"),
            dependsOn = { "accept-187-tiger-mastery", "objective-187-1-elder-stranglethorn-tiger" },
            route = {
                Point(1434, 0.3562, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "accept-188-tiger-mastery",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Tiger Mastery.",
            complete = QuestState(188, "activeOrCompleted"),
            route = {
                Point(1434, 0.3562, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "turnin-191-panther-mastery",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Panther Mastery.",
            complete = QuestState(191, "completed"),
            dependsOn = { "accept-191-panther-mastery", "objective-191-1-panther" },
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "accept-192-panther-mastery",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Accept Panther Mastery.",
            complete = QuestState(192, "activeOrCompleted"),
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "objective-188-1-sin-dall",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Kill Sin'Dall.",
            complete = QuestObjective(188, 1, "Sin'Dall"),
            dependsOn = { "accept-188-tiger-mastery" },
            route = {
                Point(1434, 0.3221, 0.1739, "Sin'Dall",
                    "Travel to Sin'Dall."),
            },
        },
        {
            id = "objective-195-1-lashtail-raptor",
            kind = "objective",
            priority = 300,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Lashtail Raptor.",
            complete = QuestObjective(195, 1, "Lashtail Raptor"),
            dependsOn = { "accept-195-raptor-mastery" },
            route = {
                Point(1434, 0.3220, 0.2040, "Lashtail Raptor",
                    "Travel to Lashtail Raptor."),
            },
        },
        {
            id = "objective-568-1-lashtail-raptor",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill 15 Lashtail Raptor.",
            complete = QuestObjective(568, 1, "Lashtail Raptor"),
            dependsOn = { "accept-568-the-defense-of-grom-gol" },
            route = {
                Point(1434, 0.3220, 0.2040, "Lashtail Raptor",
                    "Travel to Lashtail Raptor."),
            },
        },
        {
            id = "turnin-581-hunt-for-yenniku",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hunt for Yenniku.",
            complete = QuestState(581, "completed"),
            dependsOn = { "accept-581-hunt-for-yenniku" },
            route = {
                Point(1434, 0.3216, 0.2772, "Hunt for Yenniku",
                    "Travel to Hunt for Yenniku."),
            },
        },
        {
            id = "accept-582-headhunting",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Headhunting.",
            complete = QuestState(582, "activeOrCompleted"),
            route = {
                Point(1434, 0.3216, 0.2772, "Headhunting",
                    "Travel to Headhunting."),
            },
        },
        {
            id = "turnin-596-bloody-bone-necklaces",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Bloody Bone Necklaces.",
            complete = QuestState(596, "completed"),
            dependsOn = { "accept-596-bloody-bone-necklaces" },
            route = {
                Point(1434, 0.3227, 0.2771, "Bloody Bone Necklaces",
                    "Travel to Bloody Bone Necklaces."),
            },
        },
        {
            id = "accept-629-the-vile-reef",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept The Vile Reef.",
            complete = QuestState(629, "activeOrCompleted"),
            route = {
                Point(1434, 0.3227, 0.2771, "The Vile Reef",
                    "Travel to The Vile Reef."),
            },
        },
        {
            id = "turnin-568-the-defense-of-grom-gol",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Defense of Grom'gol.",
            complete = QuestState(568, "completed"),
            dependsOn = { "accept-568-the-defense-of-grom-gol", "objective-568-1-lashtail-raptor" },
            route = {
                Point(1434, 0.3217, 0.2891, "The Defense of Grom'gol",
                    "Travel to The Defense of Grom'gol."),
            },
        },
        {
            id = "accept-569-the-defense-of-grom-gol",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept The Defense of Grom'gol.",
            complete = QuestState(569, "activeOrCompleted"),
            route = {
                Point(1434, 0.3217, 0.2891, "The Defense of Grom'gol",
                    "Travel to The Defense of Grom'gol."),
            },
        },
        {
            id = "objective-582-1-bloodscalp-headhunter",
            kind = "objective",
            priority = 380,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill Bloodscalp Headhunter.",
            complete = QuestObjective(582, 1, "Bloodscalp Headhunter"),
            dependsOn = { "accept-582-headhunting" },
            route = {
                Point(1434, 0.2080, 0.1520, "Bloodscalp Headhunter",
                    "Travel to Bloodscalp Headhunter."),
            },
        },
        {
            id = "turnin-582-headhunting",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Headhunting.",
            complete = QuestState(582, "completed"),
            dependsOn = { "accept-582-headhunting", "objective-582-1-bloodscalp-headhunter" },
            route = {
                Point(1434, 0.3216, 0.2773, "Headhunting",
                    "Travel to Headhunting."),
            },
        },
        {
            id = "turnin-629-the-vile-reef",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Vile Reef.",
            complete = QuestState(629, "completed"),
            dependsOn = { "accept-629-the-vile-reef" },
            route = {
                Point(1434, 0.3227, 0.2770, "The Vile Reef",
                    "Travel to The Vile Reef."),
            },
        },
        {
            id = "accept-570-mok-thardin-s-enchantment",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Mok'thardin's Enchantment.",
            complete = QuestState(570, "activeOrCompleted"),
            route = {
                Point(1434, 0.3212, 0.2924, "Mok'thardin's Enchantment",
                    "Travel to Mok'thardin's Enchantment."),
            },
        },
        {
            id = "objective-569-2-mosh-ogg-witch-doctor",
            kind = "objective",
            priority = 420,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill 5 Mosh'Ogg Witch Doctor.",
            complete = QuestObjective(569, 2, "Mosh'Ogg Witch Doctor"),
            dependsOn = { "accept-569-the-defense-of-grom-gol" },
            route = {
                Point(1434, 0.3540, 0.3080, "Mosh'Ogg Witch Doctor",
                    "Travel to Mosh'Ogg Witch Doctor."),
            },
        },
        {
            id = "objective-569-1-mosh-ogg-brute",
            kind = "objective",
            priority = 430,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill 10 Mosh'Ogg Brute.",
            complete = QuestObjective(569, 1, "Mosh'Ogg Brute"),
            dependsOn = { "accept-569-the-defense-of-grom-gol" },
            route = {
                Point(1434, 0.3540, 0.3080, "Mosh'Ogg Brute",
                    "Travel to Mosh'Ogg Brute."),
            },
        },
        {
            id = "objective-570-2-stranglethorn-tigress",
            kind = "objective",
            priority = 440,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill Stranglethorn Tigress.",
            complete = QuestObjective(570, 2, "Stranglethorn Tigress"),
            dependsOn = { "accept-570-mok-thardin-s-enchantment" },
            route = {
                Point(1434, 0.3740, 0.3280, "Stranglethorn Tigress",
                    "Travel to Stranglethorn Tigress."),
            },
        },
        {
            id = "objective-1182-1-foreman-cozzle",
            kind = "objective",
            priority = 450,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Kill Foreman Cozzle.",
            complete = QuestObjective(1182, 1, "Foreman Cozzle"),
            route = {
                Point(1434, 0.4265, 0.1835, "Foreman Cozzle",
                    "Travel to Foreman Cozzle."),
            },
        },
        {
            id = "turnin-195-raptor-mastery",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Raptor Mastery.",
            complete = QuestState(195, "completed"),
            dependsOn = { "accept-195-raptor-mastery", "objective-195-1-lashtail-raptor" },
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "accept-196-raptor-mastery",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept Raptor Mastery.",
            complete = QuestState(196, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "turnin-188-tiger-mastery",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Tiger Mastery.",
            complete = QuestState(188, "completed"),
            dependsOn = { "accept-188-tiger-mastery", "objective-188-1-sin-dall" },
            route = {
                Point(1434, 0.3562, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "turnin-192-panther-mastery",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Panther Mastery.",
            complete = QuestState(192, "completed"),
            dependsOn = { "accept-192-panther-mastery" },
            route = {
                Point(1434, 0.3556, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "accept-193-panther-mastery",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Panther Mastery.",
            complete = QuestState(193, "activeOrCompleted"),
            route = {
                Point(1434, 0.3556, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "accept-638-trollbane",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Horde" },
            } },
            text = "Accept Trollbane.",
            complete = QuestState(638, "activeOrCompleted"),
            route = {
                Point(1434, 0.3216, 0.2773, "Trollbane",
                    "Travel to Trollbane."),
            },
        },
        {
            id = "turnin-569-the-defense-of-grom-gol",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Defense of Grom'gol.",
            complete = QuestState(569, "completed"),
            dependsOn = { "accept-569-the-defense-of-grom-gol", "objective-569-2-mosh-ogg-witch-doctor", "objective-569-1-mosh-ogg-brute" },
            route = {
                Point(1434, 0.3217, 0.2890, "The Defense of Grom'gol",
                    "Travel to The Defense of Grom'gol."),
            },
        },
        {
            id = "turnin-570-mok-thardin-s-enchantment",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Mok'thardin's Enchantment.",
            complete = QuestState(570, "completed"),
            dependsOn = { "accept-570-mok-thardin-s-enchantment", "objective-570-2-stranglethorn-tigress" },
            route = {
                Point(1434, 0.3212, 0.2924, "Mok'thardin's Enchantment",
                    "Travel to Mok'thardin's Enchantment."),
            },
        },
        {
            id = "turnin-1182-goblin-sponsorship",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Goblin Sponsorship.",
            complete = QuestState(1182, "completed"),
            dependsOn = { "objective-1182-1-foreman-cozzle" },
            route = {
                Point(1434, 0.2723, 0.7687, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "turnin-189-bloodscalp-ears",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Horde" },
            } },
            text = "Turn in Bloodscalp Ears.",
            complete = QuestState(189, "completed"),
            route = {
                Point(1434, 0.2700, 0.7713, "Bloodscalp Ears",
                    "Travel to Bloodscalp Ears."),
            },
        },
        {
            id = "turnin-213-hostile-takeover",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hostile Takeover.",
            complete = QuestState(213, "completed"),
            route = {
                Point(1434, 0.2700, 0.7713, "Hostile Takeover",
                    "Travel to Hostile Takeover."),
            },
        },
        {
            id = "turnin-201-investigate-the-camp",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Investigate the Camp.",
            complete = QuestState(201, "completed"),
            route = {
                Point(1434, 0.2694, 0.7721, "Investigate the Camp",
                    "Travel to Investigate the Camp."),
            },
        },
        {
            id = "turnin-605-singing-blue-shards",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Singing Blue Shards.",
            complete = QuestState(605, "completed"),
            dependsOn = { "objective-605-1-crystal-spine-basilisk", "objective-605-1-crystal-spine-basilisk-2" },
            route = {
                Point(1434, 0.2712, 0.7721, "Singing Blue Shards",
                    "Travel to Singing Blue Shards."),
            },
        },
        {
            id = "turnin-575-supply-and-demand",
            kind = "turnin",
            priority = 590,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Turn in Supply and Demand.",
            complete = QuestState(575, "completed"),
            route = {
                Point(1434, 0.2829, 0.7759, "Supply and Demand",
                    "Travel to Supply and Demand."),
            },
        },
    },
})
