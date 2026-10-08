local _, ns = ...

-- Forever Casual spine: Stranglethorn Vale (34-35)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves:
-- 98463 Talk of the Town turn-in to Nixxrax Fillamug (accepted in Hillsbrad).
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
    ALTERAC_MOUNTAINS = 1416,
    DUSKWOOD = 1431,
    STRANGLETHORN_VALE = 1434,
    STORMWIND_CITY = 1453,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-stranglethorn-vale",
    title = "Stranglethorn Vale",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 34 } },
        },
    },
    goals = {
        {
            id = "turnin-1180-goblin-sponsorship",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Goblin Sponsorship.",
            complete = QuestState(1180, "completed"),
            route = {
                Point(1434, 0.2635, 0.7356, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-1181-goblin-sponsorship",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept Goblin Sponsorship.",
            complete = QuestState(1181, "activeOrCompleted"),
            route = {
                Point(1434, 0.2635, 0.7356, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "turnin-1040-passage-to-booty-bay",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Passage to Booty Bay.",
            complete = QuestState(1040, "completed"),
            route = {
                Point(1434, 0.2737, 0.7408, "Passage to Booty Bay",
                    "Travel to Passage to Booty Bay."),
            },
        },
        {
            id = "woven-turnin-98463-talk-of-the-town",
            kind = "turnin",
            priority = 35,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Talk of the Town to Nixxrax Fillamug in Booty Bay.",
            complete = QuestState(98463, "completed"),
            route = {
                Point(1434, 0.2700, 0.7720, "Nixxrax Fillamug",
                    "Travel to Nixxrax Fillamug."),
            },
        },
        {
            id = "accept-1041-the-caravan-road",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Caravan Road.",
            complete = QuestState(1041, "activeOrCompleted"),
            route = {
                Point(1434, 0.2737, 0.7408, "The Caravan Road",
                    "Travel to The Caravan Road."),
            },
        },
        {
            id = "accept-605-singing-blue-shards",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Singing Blue Shards.",
            complete = QuestState(605, "activeOrCompleted"),
            route = {
                Point(1434, 0.2712, 0.7721, "Singing Blue Shards",
                    "Travel to Singing Blue Shards."),
            },
        },
        {
            id = "accept-201-investigate-the-camp",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Investigate the Camp.",
            complete = QuestState(201, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Investigate the Camp",
                    "Travel to Investigate the Camp."),
            },
        },
        {
            id = "accept-198-supplies-to-private-thorsen",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Supplies to Private Thorsen.",
            complete = QuestState(198, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Supplies to Private Thorsen",
                    "Travel to Supplies to Private Thorsen."),
            },
        },
        {
            id = "accept-616-the-haunted-isle",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Haunted Isle.",
            complete = QuestState(616, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "The Haunted Isle",
                    "Travel to The Haunted Isle."),
            },
        },
        {
            id = "accept-213-hostile-takeover",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Hostile Takeover.",
            complete = QuestState(213, "activeOrCompleted"),
            route = {
                Point(1434, 0.2700, 0.7712, "Hostile Takeover",
                    "Travel to Hostile Takeover."),
            },
        },
        {
            id = "turnin-1181-goblin-sponsorship",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Goblin Sponsorship.",
            complete = QuestState(1181, "completed"),
            dependsOn = { "accept-1181-goblin-sponsorship" },
            route = {
                Point(1434, 0.2723, 0.7687, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-1182-goblin-sponsorship",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Goblin Sponsorship.",
            complete = QuestState(1182, "activeOrCompleted"),
            route = {
                Point(1434, 0.2723, 0.7687, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "turnin-616-the-haunted-isle",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Haunted Isle.",
            complete = QuestState(616, "completed"),
            dependsOn = { "accept-616-the-haunted-isle" },
            route = {
                Point(1434, 0.2723, 0.7687, "The Haunted Isle",
                    "Travel to The Haunted Isle."),
            },
        },
        {
            id = "accept-578-the-stone-of-the-tides",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Stone of the Tides.",
            complete = QuestState(578, "activeOrCompleted"),
            route = {
                Point(1434, 0.2723, 0.7687, "The Stone of the Tides",
                    "Travel to The Stone of the Tides."),
            },
        },
        {
            id = "accept-575-supply-and-demand",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Supply and Demand.",
            complete = QuestState(575, "activeOrCompleted"),
            route = {
                Point(1434, 0.2829, 0.7759, "Supply and Demand",
                    "Travel to Supply and Demand."),
            },
        },
        {
            id = "turnin-198-supplies-to-private-thorsen",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Supplies to Private Thorsen.",
            complete = QuestState(198, "completed"),
            dependsOn = { "accept-198-supplies-to-private-thorsen" },
            route = {
                Point(1434, 0.3798, 0.0342, "Supplies to Private Thorsen",
                    "Travel to Supplies to Private Thorsen."),
            },
        },
        {
            id = "accept-203-the-second-rebellion",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Second Rebellion.",
            complete = QuestState(203, "activeOrCompleted"),
            route = {
                Point(1434, 0.3802, 0.0333, "The Second Rebellion",
                    "Travel to The Second Rebellion."),
            },
        },
        {
            id = "accept-204-bad-medicine",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bad Medicine.",
            complete = QuestState(204, "activeOrCompleted"),
            route = {
                Point(1434, 0.3802, 0.0333, "Bad Medicine",
                    "Travel to Bad Medicine."),
            },
        },
        {
            id = "accept-200-bookie-herod",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bookie Herod.",
            complete = QuestState(200, "activeOrCompleted"),
            route = {
                Point(1434, 0.3804, 0.0301, "Bookie Herod",
                    "Travel to Bookie Herod."),
            },
        },
        {
            id = "turnin-5762-hemet-nesingwary",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Hemet Nesingwary.",
            complete = QuestState(5762, "completed"),
            route = {
                Point(1434, 0.3566, 0.1081, "Hemet Nesingwary",
                    "Travel to Hemet Nesingwary."),
            },
        },
        {
            id = "accept-186-tiger-mastery",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Tiger Mastery.",
            complete = QuestState(186, "activeOrCompleted"),
            route = {
                Point(1434, 0.3561, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "accept-191-panther-mastery",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Panther Mastery.",
            complete = QuestState(191, "activeOrCompleted"),
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "turnin-200-bookie-herod",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bookie Herod.",
            complete = QuestState(200, "completed"),
            dependsOn = { "accept-200-bookie-herod" },
            route = {
                Point(1434, 0.4367, 0.0937, "Bookie Herod",
                    "Travel to Bookie Herod."),
            },
        },
        {
            id = "accept-328-the-hidden-key",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Hidden Key.",
            complete = QuestState(328, "activeOrCompleted"),
            route = {
                Point(1434, 0.4367, 0.0937, "The Hidden Key",
                    "Travel to The Hidden Key."),
            },
        },
        {
            id = "objective-605-1-crystal-spine-basilisk",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Kill Crystal Spine Basilisk.",
            complete = QuestObjective(605, 1, "Crystal Spine Basilisk"),
            dependsOn = { "accept-605-singing-blue-shards" },
            route = {
                Point(1434, 0.4760, 0.0900, "Crystal Spine Basilisk",
                    "Travel to Crystal Spine Basilisk."),
            },
        },
        {
            id = "objective-186-1-stranglethorn-tiger",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
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
            id = "objective-1182-1-foreman-cozzle",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Kill Foreman Cozzle.",
            complete = QuestObjective(1182, 1, "Foreman Cozzle"),
            dependsOn = { "accept-1182-goblin-sponsorship" },
            route = {
                Point(1434, 0.4265, 0.1835, "Foreman Cozzle",
                    "Travel to Foreman Cozzle."),
            },
        },
        {
            id = "turnin-203-the-second-rebellion",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Second Rebellion.",
            complete = QuestState(203, "completed"),
            dependsOn = { "accept-203-the-second-rebellion" },
            route = {
                Point(1434, 0.3802, 0.0333, "The Second Rebellion",
                    "Travel to The Second Rebellion."),
            },
        },
        {
            id = "turnin-204-bad-medicine",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bad Medicine.",
            complete = QuestState(204, "completed"),
            dependsOn = { "accept-204-bad-medicine" },
            route = {
                Point(1434, 0.3802, 0.0333, "Bad Medicine",
                    "Travel to Bad Medicine."),
            },
        },
        {
            id = "accept-210-krazek-s-cookery",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept Krazek's Cookery.",
            complete = QuestState(210, "activeOrCompleted"),
            route = {
                Point(1434, 0.3774, 0.0330, "Krazek's Cookery",
                    "Travel to Krazek's Cookery."),
            },
        },
        {
            id = "turnin-186-tiger-mastery",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
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
            priority = 310,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Tiger Mastery.",
            complete = QuestState(187, "activeOrCompleted"),
            route = {
                Point(1434, 0.3561, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "accept-194-raptor-mastery",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raptor Mastery.",
            complete = QuestState(194, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "objective-187-1-elder-stranglethorn-tiger",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
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
            priority = 340,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
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
            priority = 350,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Kill Crystal Spine Basilisk.",
            complete = QuestObjective(605, 1, "Crystal Spine Basilisk"),
            dependsOn = { "accept-605-singing-blue-shards" },
            route = {
                Point(1434, 0.2400, 0.1760, "Crystal Spine Basilisk",
                    "Travel to Crystal Spine Basilisk."),
            },
        },
        {
            id = "turnin-194-raptor-mastery",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
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
            id = "turnin-187-tiger-mastery",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
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
            id = "turnin-191-panther-mastery",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
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
            id = "turnin-605-singing-blue-shards",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Singing Blue Shards.",
            complete = QuestState(605, "completed"),
            dependsOn = { "accept-605-singing-blue-shards", "objective-605-1-crystal-spine-basilisk", "objective-605-1-crystal-spine-basilisk-2" },
            route = {
                Point(1434, 0.2712, 0.7721, "Singing Blue Shards",
                    "Travel to Singing Blue Shards."),
            },
        },
        {
            id = "turnin-201-investigate-the-camp",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Investigate the Camp.",
            complete = QuestState(201, "completed"),
            dependsOn = { "accept-201-investigate-the-camp" },
            route = {
                Point(1434, 0.2694, 0.7721, "Investigate the Camp",
                    "Travel to Investigate the Camp."),
            },
        },
        {
            id = "turnin-210-krazek-s-cookery",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Krazek's Cookery.",
            complete = QuestState(210, "completed"),
            dependsOn = { "accept-210-krazek-s-cookery" },
            route = {
                Point(1434, 0.2694, 0.7721, "Krazek's Cookery",
                    "Travel to Krazek's Cookery."),
            },
        },
        {
            id = "turnin-213-hostile-takeover",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Hostile Takeover.",
            complete = QuestState(213, "completed"),
            dependsOn = { "accept-213-hostile-takeover" },
            route = {
                Point(1434, 0.2700, 0.7712, "Hostile Takeover",
                    "Travel to Hostile Takeover."),
            },
        },
        {
            id = "turnin-578-the-stone-of-the-tides",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Stone of the Tides.",
            complete = QuestState(578, "completed"),
            dependsOn = { "accept-578-the-stone-of-the-tides" },
            route = {
                Point(1434, 0.2723, 0.7687, "The Stone of the Tides",
                    "Travel to The Stone of the Tides."),
            },
        },
        {
            id = "turnin-1182-goblin-sponsorship",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Goblin Sponsorship.",
            complete = QuestState(1182, "completed"),
            dependsOn = { "accept-1182-goblin-sponsorship", "objective-1182-1-foreman-cozzle" },
            route = {
                Point(1434, 0.2723, 0.7687, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-1183-goblin-sponsorship",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Goblin Sponsorship.",
            complete = QuestState(1183, "activeOrCompleted"),
            route = {
                Point(1434, 0.2723, 0.7687, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "turnin-575-supply-and-demand",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Supply and Demand.",
            complete = QuestState(575, "completed"),
            dependsOn = { "accept-575-supply-and-demand" },
            route = {
                Point(1434, 0.2829, 0.7759, "Supply and Demand",
                    "Travel to Supply and Demand."),
            },
        },
        {
            id = "turnin-1041-the-caravan-road",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Caravan Road.",
            complete = QuestState(1041, "completed"),
            dependsOn = { "accept-1041-the-caravan-road" },
            route = {
                Point(1431, 0.7253, 0.4686, "The Caravan Road",
                    "Travel to The Caravan Road."),
            },
        },
        {
            id = "accept-1042-the-carevin-family",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Carevin Family.",
            complete = QuestState(1042, "activeOrCompleted"),
            route = {
                Point(1431, 0.7253, 0.4686, "The Carevin Family",
                    "Travel to The Carevin Family."),
            },
        },
        {
            id = "turnin-1042-the-carevin-family",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Carevin Family.",
            complete = QuestState(1042, "completed"),
            dependsOn = { "accept-1042-the-carevin-family" },
            route = {
                Point(1431, 0.7532, 0.4902, "The Carevin Family",
                    "Travel to The Carevin Family."),
            },
        },
        {
            id = "accept-1043-the-scythe-of-elune",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Scythe of Elune.",
            complete = QuestState(1043, "activeOrCompleted"),
            route = {
                Point(1431, 0.7532, 0.4902, "The Scythe of Elune",
                    "Travel to The Scythe of Elune."),
            },
        },
        {
            id = "turnin-1043-the-scythe-of-elune",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Scythe of Elune.",
            complete = QuestState(1043, "completed"),
            dependsOn = { "accept-1043-the-scythe-of-elune" },
            route = {
                Point(1431, 0.7305, 0.7514, "The Scythe of Elune",
                    "Travel to The Scythe of Elune."),
            },
        },
        {
            id = "objective-6161-1-elixir-of-water-breathing",
            kind = "objective",
            priority = 520,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
                { any = { { class = 9 }, { class = 11 } } },
            } },
            text = "Collect 2 Elixir of Water Breathing.",
            complete = QuestObjective(6161, 1, "Elixir of Water Breathing"),
            route = {
                Point(1453, 0.5362, 0.5976, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "turnin-563-reassignment",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Reassignment.",
            complete = QuestState(563, "completed"),
            route = {
                Point(1453, 0.6909, 0.2870, "Reassignment",
                    "Travel to Reassignment."),
            },
        },
        {
            id = "accept-1453-reclaimers-business-in-desolace",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Reclaimers' Business in Desolace.",
            complete = QuestState(1453, "activeOrCompleted"),
            route = {
                Point(1455, 0.6791, 0.1749, "Reclaimers' Business in Desolace",
                    "Travel to Reclaimers' Business in Desolace."),
            },
        },
        {
            id = "turnin-1758-tome-of-the-cabal",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Turn in Tome of the Cabal.",
            complete = QuestState(1758, "completed"),
            route = {
                Point(1455, 0.7421, 0.0942, "Tome of the Cabal",
                    "Travel to Tome of the Cabal."),
            },
        },
        {
            id = "turnin-1791-the-windwatcher",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Turn in The Windwatcher.",
            complete = QuestState(1791, "completed"),
            route = {
                Point(1416, 0.8050, 0.6692, "The Windwatcher",
                    "Travel to The Windwatcher."),
            },
        },
        {
            id = "accept-1712-cyclonian",
            kind = "accept",
            priority = 570,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Accept Cyclonian.",
            complete = QuestState(1712, "activeOrCompleted"),
            route = {
                Point(1416, 0.8050, 0.6692, "Cyclonian",
                    "Travel to Cyclonian."),
            },
        },
    },
})
