local _, ns = ...

-- Paladin class quests.
-- Forever quests are woven in after the quest that unlocks them, or by the level the NPC offers them.
-- Dungeon, raid, and PvP quests stay in their own guides.
-- A quest with no start pin is named below and is not given a coordinate.
-- Revisit every quest left out below when the database records a giver, objectives, and a turn-in.
-- Coordinates have not been validated in the Forever client.
-- Horde paladins in Forever are Undead. Classic paladin quests stay on the races
-- the database lists, which are Alliance. Orc, Troll, Tauren, and Horde Skyborne
-- do not receive a paladin quest in the database.
-- Forever quests woven into this route:
-- A Difficult Path
-- Rediscovering the Light
-- Coming to Terms
-- Continue Your Training
-- A Second Home
-- Murlocs at the Gates
-- Touring the Grounds
-- The Tarnished
-- A Token of Good Faith
-- Making Repairs
-- A Lesson in Divinity
-- A Lesson in Divinity
-- A Lesson in Divinity
-- A Lesson in Divinity
-- A Lesson in Divinity
-- A Lesson in Divinity
-- A Lesson in Divinity
-- Diplomatic Incident
-- A Curious Pair
-- A Grim Fate
-- Lumina Windsinger
-- The Debt
-- The Windshaper's Wrath
-- Seeking the Kor Gem
-- An Underrated Talent
-- Ott's Masterwork
-- The Moonsilver Blade
-- Old Fire-Eye
-- Left out (dungeon quest): The Test of Righteousness, Forging the Mightstone, A Moon-Kissed Blade, Seeking the Kor Gem, Collection of Goods, Ancient Equine Spirit, Judgment and Redemption, Again Into the Great Ossuary
-- Left out (needs 1654, which is not on this route): The Test of Righteousness
-- Left out (needs 7643, which is not on this route): Blessed Arcanite Barding
-- Left out (needs 7644, which is not on this route): The Divination Scryer
-- Left out (no start pin): Into Fenris Keep (91861), Our Wayward Friend, Grand Theft Echoing Orb, A Solid Lead, Plaguelands Rendezvous, A Newly Discovered Purpose..., A Lesson in Grace, The Ruins of Andorhal, A Time to Kill, Culmination, A Most Curious Gnome, A Paladin of the Silver Hand, Worst Case Scenario (+40 more)

local MAP = {
    ASHENVALE = 1440,
    DUNMOROGH = 1426,
    ELWYNNFOREST = 1429,
    HILLSBRADFOOTHILLS = 1424,
    IRONFORGE = 1455,
    LOCHMODAN = 1432,
    SILVERPINEFOREST = 1421,
    STORMWINDCITY = 1453,
    TIRISFALGLADES = 1420,
    UNDERCITY = 1458,
    WESTERNPLAGUELANDS = 1422,
    WESTFALL = 1436,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index, text)
    return { questObjective = { id = questID, index = index, text = text } }
end

local function Point(mapID, x, y, label, offMapText, complete)
    return {
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
        complete = complete,
    }
end

ns:RegisterGuide({
    id = "class-paladin",
    title = "Paladin",
    category = "Class Quests",
    revision = 1,
    conditions = {
        all = {
            { class = 2 },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-98601-a-difficult-path",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                },
            },
            text = "Accept A Difficult Path from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(98601, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3080, 0.6620, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-98601-a-difficult-path",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                },
            },
            text = "Turn in A Difficult Path to Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-98601-a-difficult-path" },
            complete = QuestState(98601, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand in Tirisfal Glades."),
            },
        },
        {
            id = "accept-90902-rediscovering-the-light",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 2 } },
                },
            },
            text = "Accept Rediscovering the Light from Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(90902, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-90902-rediscovering-the-light",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in Rediscovering the Light to Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-90902-rediscovering-the-light" },
            complete = QuestState(90902, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand in Tirisfal Glades."),
            },
        },
        {
            id = "accept-91208-coming-to-terms",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Coming to Terms from Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(91208, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-91208-coming-to-terms",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Coming to Terms to Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-91208-coming-to-terms" },
            complete = QuestState(91208, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand in Tirisfal Glades."),
            },
        },
        {
            id = "accept-91209-continue-your-training",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Continue Your Training from Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-91208-coming-to-terms" },
            complete = QuestState(91209, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-91209-continue-your-training",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Continue Your Training to Shari Stilwell in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-91209-continue-your-training" },
            complete = QuestState(91209, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6020, 0.5260, "Shari Stilwell",
                    "Travel to Shari Stilwell in Tirisfal Glades."),
            },
        },
        {
            id = "accept-91282-a-second-home",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 8 } },
                },
            },
            text = "Accept A Second Home from Shari Stilwell in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-91209-continue-your-training" },
            complete = QuestState(91282, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6020, 0.5260, "Shari Stilwell",
                    "Travel to Shari Stilwell in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-91282-a-second-home",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 8 } },
                },
            },
            text = "Turn in A Second Home to Breton Samuels in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-91282-a-second-home" },
            complete = QuestState(91282, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2180, 0.4520, "Breton Samuels",
                    "Travel to Breton Samuels in Tirisfal Glades."),
            },
        },
        {
            id = "accept-91285-murlocs-at-the-gates",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 7 } },
                },
            },
            text = "Accept Murlocs at the Gates from Breton Samuels in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-91282-a-second-home" },
            complete = QuestState(91285, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2180, 0.4520, "Breton Samuels",
                    "Travel to Breton Samuels in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-91285-murlocs-at-the-gates",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 7 } },
                },
            },
            text = "Turn in Murlocs at the Gates to Breton Samuels in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-91285-murlocs-at-the-gates" },
            complete = QuestState(91285, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2180, 0.4520, "Breton Samuels",
                    "Travel to Breton Samuels in Tirisfal Glades."),
            },
        },
        {
            id = "accept-91294-touring-the-grounds",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 8 } },
                },
            },
            text = "Accept Touring the Grounds from Breton Samuels in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-91285-murlocs-at-the-gates" },
            complete = QuestState(91294, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2180, 0.4520, "Breton Samuels",
                    "Travel to Breton Samuels in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-91294-touring-the-grounds",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 8 } },
                },
            },
            text = "Turn in Touring the Grounds to Danitha Morr in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-91294-touring-the-grounds" },
            complete = QuestState(91294, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Danitha Morr",
                    "Travel to Danitha Morr in Tirisfal Glades."),
            },
        },
        {
            id = "accept-91316-making-repairs",
            kind = "accept",
            priority = 145,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 8 } },
                },
            },
            text = "Accept Making Repairs from Jorin Croge in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-91294-touring-the-grounds" },
            complete = QuestState(91316, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2260, 0.4480, "Jorin Croge",
                    "Travel to Jorin Croge in Tirisfal Glades."),
            },
        },
        {
            id = "accept-91317-the-tarnished",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 9 } },
                },
            },
            text = "Accept The Tarnished from Danitha Morr in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-91294-touring-the-grounds" },
            complete = QuestState(91317, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Danitha Morr",
                    "Travel to Danitha Morr in Tirisfal Glades."),
            },
        },
        {
            id = "objective-91316-making-repairs",
            kind = "objective",
            priority = 155,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 8 } },
                },
            },
            text = "Complete Making Repairs for Jorin Croge. The guide follows the pin in your quest log.",
            dependsOn = { "accept-91316-making-repairs" },
            useClientPin = true,
            complete = QuestState(91316, "complete"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2260, 0.4480, "Jorin Croge",
                    "Travel to Jorin Croge in Tirisfal Glades."),
            },
        },
        {
            id = "objective-91317-the-tarnished",
            kind = "objective",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 9 } },
                },
            },
            text = "The Tarnished: Rudolph Gelhardt's Head. This step is for Undead.",
            dependsOn = { "accept-91317-the-tarnished", "accept-91316-making-repairs" },
            complete = QuestState(91317, "complete"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.1160, 0.6420, "Rudolph Gelhardt",
                    "Travel to Rudolph Gelhardt in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-91317-the-tarnished",
            kind = "turnin",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in The Tarnished to Danitha Morr in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "objective-91317-the-tarnished" },
            complete = QuestState(91317, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Danitha Morr",
                    "Travel to Danitha Morr in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-91316-making-repairs",
            kind = "turnin",
            priority = 165,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 8 } },
                },
            },
            text = "Turn in Making Repairs to Jorin Croge in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "objective-91316-making-repairs" },
            complete = QuestState(91316, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2260, 0.4480, "Jorin Croge",
                    "Travel to Jorin Croge in Tirisfal Glades."),
            },
        },
        {
            id = "accept-95803-a-token-of-good-faith",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 9 } },
                },
            },
            text = "Accept A Token of Good Faith from Danitha Morr in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-91317-the-tarnished" },
            complete = QuestState(95803, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Danitha Morr",
                    "Travel to Danitha Morr in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-95803-a-token-of-good-faith",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in A Token of Good Faith to Lady Sylvanas Windrunner in Undercity. This step is for Undead.",
            dependsOn = { "accept-95803-a-token-of-good-faith" },
            complete = QuestState(95803, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.5780, 0.9180, "Lady Sylvanas Windrunner",
                    "Travel to Lady Sylvanas Windrunner in Undercity."),
            },
        },
        {
            id = "accept-1641-the-tome-of-divinity",
            kind = "accept",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Duthorian Rall in Stormwind City. This step is for Humans.",
            complete = QuestState(1641, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "turnin-1641-the-tome-of-divinity",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1641-the-tome-of-divinity" },
            complete = QuestState(1641, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-1642-the-tome-of-divinity",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Duthorian Rall in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-1641-the-tome-of-divinity" },
            complete = QuestState(1642, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3981, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "turnin-1642-the-tome-of-divinity",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1642-the-tome-of-divinity" },
            complete = QuestState(1642, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-1643-the-tome-of-divinity",
            kind = "accept",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Duthorian Rall in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-1642-the-tome-of-divinity" },
            complete = QuestState(1643, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "turnin-1643-the-tome-of-divinity",
            kind = "turnin",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Stephanie Turner in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1643-the-tome-of-divinity" },
            complete = QuestState(1643, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5700, 0.6180, "Stephanie Turner",
                    "Travel to Stephanie Turner in Stormwind City."),
            },
        },
        {
            id = "accept-1644-the-tome-of-divinity",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Stephanie Turner in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-1643-the-tome-of-divinity" },
            complete = QuestState(1644, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5700, 0.6180, "Stephanie Turner",
                    "Travel to Stephanie Turner in Stormwind City."),
            },
        },
        {
            id = "objective-1644-the-tome-of-divinity",
            kind = "objective",
            priority = 290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "The Tome of Divinity: Linen Cloth. This step is for Humans.",
            dependsOn = { "accept-1644-the-tome-of-divinity" },
            complete = QuestState(1644, "complete"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2960, 0.6180, "Forlorn Spirit",
                    "Travel to Forlorn Spirit in Stormwind City."),
                Point(MAP.STORMWINDCITY, 0.7000, 0.4500, "Old Town Thug",
                    "Travel to Old Town Thug in Stormwind City."),
                Point(MAP.STORMWINDCITY, 0.6180, 0.2920, "Cut-throat Mugger",
                    "Travel to Cut-throat Mugger in Stormwind City."),
                Point(MAP.STORMWINDCITY, 0.5650, 0.6380, "Food Crate",
                    "Travel to Food Crate in Stormwind City."),
            },
        },
        {
            id = "turnin-1644-the-tome-of-divinity",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Stephanie Turner in Stormwind City. This step is for Humans.",
            dependsOn = { "objective-1644-the-tome-of-divinity" },
            complete = QuestState(1644, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5700, 0.6180, "Stephanie Turner",
                    "Travel to Stephanie Turner in Stormwind City."),
            },
        },
        {
            id = "accept-1780-the-tome-of-divinity",
            kind = "accept",
            priority = 310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Stephanie Turner in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-1644-the-tome-of-divinity", "turnin-1643-the-tome-of-divinity" },
            complete = QuestState(1780, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5700, 0.6180, "Stephanie Turner",
                    "Travel to Stephanie Turner in Stormwind City."),
            },
        },
        {
            id = "turnin-1780-the-tome-of-divinity",
            kind = "turnin",
            priority = 320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1780-the-tome-of-divinity" },
            complete = QuestState(1780, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-1781-the-tome-of-divinity",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Duthorian Rall in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-1780-the-tome-of-divinity" },
            complete = QuestState(1781, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "turnin-1781-the-tome-of-divinity",
            kind = "turnin",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Gazin Tenorm in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1781-the-tome-of-divinity" },
            complete = QuestState(1781, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.2660, "Gazin Tenorm",
                    "Travel to Gazin Tenorm in Stormwind City."),
            },
        },
        {
            id = "accept-1786-the-tome-of-divinity",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Gazin Tenorm in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-1781-the-tome-of-divinity" },
            complete = QuestState(1786, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.2660, "Gazin Tenorm",
                    "Travel to Gazin Tenorm in Stormwind City."),
            },
        },
        {
            id = "turnin-1786-the-tome-of-divinity",
            kind = "turnin",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Henze Faulk in Elwynn Forest. This step is for Humans.",
            dependsOn = { "accept-1786-the-tome-of-divinity" },
            complete = QuestState(1786, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.7260, 0.5140, "Henze Faulk",
                    "Travel to Henze Faulk in Elwynn Forest."),
            },
        },
        {
            id = "accept-1787-the-tome-of-divinity",
            kind = "accept",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Henze Faulk in Elwynn Forest. This step is for Humans.",
            dependsOn = { "turnin-1786-the-tome-of-divinity" },
            complete = QuestState(1787, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.7260, 0.5140, "Henze Faulk",
                    "Travel to Henze Faulk in Elwynn Forest."),
            },
        },
        {
            id = "objective-1787-the-tome-of-divinity",
            kind = "objective",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "The Tome of Divinity: Defias Script. This step is for Humans.",
            dependsOn = { "accept-1787-the-tome-of-divinity" },
            complete = QuestState(1787, "complete"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.2840, 0.5960, "Defias Rogue Wizard",
                    "Travel to Defias Rogue Wizard in Elwynn Forest."),
                Point(MAP.ELWYNNFOREST, 0.4800, 0.8700, "Defias Bodyguard",
                    "Travel to Defias Bodyguard in Elwynn Forest."),
            },
        },
        {
            id = "turnin-1787-the-tome-of-divinity",
            kind = "turnin",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Gazin Tenorm in Stormwind City. This step is for Humans.",
            dependsOn = { "objective-1787-the-tome-of-divinity" },
            complete = QuestState(1787, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.2660, "Gazin Tenorm",
                    "Travel to Gazin Tenorm in Stormwind City."),
            },
        },
        {
            id = "accept-1788-the-tome-of-divinity",
            kind = "accept",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Gazin Tenorm in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-1787-the-tome-of-divinity" },
            complete = QuestState(1788, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.2660, "Gazin Tenorm",
                    "Travel to Gazin Tenorm in Stormwind City."),
            },
        },
        {
            id = "turnin-1788-the-tome-of-divinity",
            kind = "turnin",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1788-the-tome-of-divinity" },
            complete = QuestState(1788, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-2997-tome-of-divinity",
            kind = "accept",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Tome of Divinity from Azar Stronghammer in Dun Morogh. This step is for Dwarves.",
            complete = QuestState(2997, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4760, 0.5200, "Azar Stronghammer",
                    "Travel to Azar Stronghammer in Dun Morogh."),
            },
        },
        {
            id = "turnin-2997-tome-of-divinity",
            kind = "turnin",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-2997-tome-of-divinity" },
            complete = QuestState(2997, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-1645-the-tome-of-divinity",
            kind = "accept",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "turnin-2997-tome-of-divinity" },
            complete = QuestState(1645, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "turnin-1645-the-tome-of-divinity",
            kind = "turnin",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-1645-the-tome-of-divinity" },
            complete = QuestState(1645, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-1646-the-tome-of-divinity",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "turnin-2997-tome-of-divinity" },
            complete = QuestState(1646, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2764, 0.1219, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "turnin-1646-the-tome-of-divinity",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-1646-the-tome-of-divinity" },
            complete = QuestState(1646, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-1647-the-tome-of-divinity",
            kind = "accept",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "turnin-1646-the-tome-of-divinity" },
            complete = QuestState(1647, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "turnin-1647-the-tome-of-divinity",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to John Turner in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-1647-the-tome-of-divinity" },
            complete = QuestState(1647, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2780, 0.7000, "John Turner",
                    "Travel to John Turner in Ironforge."),
            },
        },
        {
            id = "accept-1648-the-tome-of-divinity",
            kind = "accept",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from John Turner in Ironforge. This step is for Dwarves.",
            dependsOn = { "turnin-1647-the-tome-of-divinity" },
            complete = QuestState(1648, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2780, 0.7000, "John Turner",
                    "Travel to John Turner in Ironforge."),
            },
        },
        {
            id = "objective-1648-the-tome-of-divinity",
            kind = "objective",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "The Tome of Divinity: Linen Cloth. This step is for Dwarves.",
            dependsOn = { "accept-1648-the-tome-of-divinity" },
            complete = QuestState(1648, "complete"),
            route = {
                Point(MAP.IRONFORGE, 0.5180, 0.1260, "Cut-throat Mugger",
                    "Travel to Cut-throat Mugger in Ironforge."),
                Point(MAP.IRONFORGE, 0.5180, 0.1240, "Cut-throat Mugger",
                    "Travel to Cut-throat Mugger in Ironforge."),
            },
        },
        {
            id = "turnin-1648-the-tome-of-divinity",
            kind = "turnin",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to John Turner in Ironforge. This step is for Dwarves.",
            dependsOn = { "objective-1648-the-tome-of-divinity" },
            complete = QuestState(1648, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2780, 0.7000, "John Turner",
                    "Travel to John Turner in Ironforge."),
            },
        },
        {
            id = "accept-1778-the-tome-of-divinity",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from John Turner in Ironforge. This step is for Dwarves.",
            dependsOn = { "turnin-1648-the-tome-of-divinity", "turnin-1647-the-tome-of-divinity" },
            complete = QuestState(1778, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2780, 0.7000, "John Turner",
                    "Travel to John Turner in Ironforge."),
            },
        },
        {
            id = "turnin-1778-the-tome-of-divinity",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-1778-the-tome-of-divinity" },
            complete = QuestState(1778, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-1779-the-tome-of-divinity",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "turnin-1778-the-tome-of-divinity" },
            complete = QuestState(1779, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "turnin-1779-the-tome-of-divinity",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Muiredon Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-1779-the-tome-of-divinity" },
            complete = QuestState(1779, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2360, 0.0860, "Muiredon Battleforge",
                    "Travel to Muiredon Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-1783-the-tome-of-divinity",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Muiredon Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "turnin-1779-the-tome-of-divinity" },
            complete = QuestState(1783, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2360, 0.0860, "Muiredon Battleforge",
                    "Travel to Muiredon Battleforge in Ironforge."),
            },
        },
        {
            id = "turnin-1783-the-tome-of-divinity",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Narm Faulk in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-1783-the-tome-of-divinity" },
            complete = QuestState(1783, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.7820, 0.5800, "Narm Faulk",
                    "Travel to Narm Faulk in Dun Morogh."),
            },
        },
        {
            id = "accept-1784-the-tome-of-divinity",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Narm Faulk in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "turnin-1783-the-tome-of-divinity" },
            complete = QuestState(1784, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.7820, 0.5800, "Narm Faulk",
                    "Travel to Narm Faulk in Dun Morogh."),
            },
        },
        {
            id = "objective-1784-the-tome-of-divinity",
            kind = "objective",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "The Tome of Divinity: Dark Iron Script. This step is for Dwarves.",
            dependsOn = { "accept-1784-the-tome-of-divinity" },
            complete = QuestState(1784, "complete"),
            route = {
                Point(MAP.DUNMOROGH, 0.7780, 0.6240, "Dark Iron Spy",
                    "Travel to Dark Iron Spy in Dun Morogh."),
            },
        },
        {
            id = "turnin-1784-the-tome-of-divinity",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Muiredon Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "objective-1784-the-tome-of-divinity" },
            complete = QuestState(1784, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2360, 0.0860, "Muiredon Battleforge",
                    "Travel to Muiredon Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-1785-the-tome-of-divinity",
            kind = "accept",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Tome of Divinity from Muiredon Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "turnin-1784-the-tome-of-divinity" },
            complete = QuestState(1785, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2360, 0.0860, "Muiredon Battleforge",
                    "Travel to Muiredon Battleforge in Ironforge."),
            },
        },
        {
            id = "turnin-1785-the-tome-of-divinity",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-1785-the-tome-of-divinity" },
            complete = QuestState(1785, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-94427-a-lesson-in-divinity",
            kind = "accept",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Danitha Morr in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-91317-the-tarnished" },
            complete = QuestState(94427, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Danitha Morr",
                    "Travel to Danitha Morr in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-94427-a-lesson-in-divinity",
            kind = "turnin",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Tanis Alderwood in Undercity. This step is for Undead.",
            dependsOn = { "accept-94427-a-lesson-in-divinity" },
            complete = QuestState(94427, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.6560, 0.3780, "Tanis Alderwood",
                    "Travel to Tanis Alderwood in Undercity."),
            },
        },
        {
            id = "accept-94434-a-lesson-in-divinity",
            kind = "accept",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Tanis Alderwood in Undercity. This step is for Undead.",
            dependsOn = { "turnin-94427-a-lesson-in-divinity" },
            complete = QuestState(94434, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.6560, 0.3780, "Tanis Alderwood",
                    "Travel to Tanis Alderwood in Undercity."),
            },
        },
        {
            id = "objective-94434-a-lesson-in-divinity",
            kind = "objective",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "A Lesson in Divinity: Linen Cloth. This step is for Undead.",
            dependsOn = { "accept-94434-a-lesson-in-divinity" },
            complete = QuestState(94434, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.6520, 0.1040, "Lordaeron Citizen",
                    "Travel to Lordaeron Citizen in Undercity."),
                Point(MAP.UNDERCITY, 0.7000, 0.3820, "Food Crate",
                    "Travel to Food Crate in Undercity."),
            },
        },
        {
            id = "turnin-94434-a-lesson-in-divinity",
            kind = "turnin",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Tanis Alderwood in Undercity. This step is for Undead.",
            dependsOn = { "objective-94434-a-lesson-in-divinity" },
            complete = QuestState(94434, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.6560, 0.3780, "Tanis Alderwood",
                    "Travel to Tanis Alderwood in Undercity."),
            },
        },
        {
            id = "accept-94435-a-lesson-in-divinity",
            kind = "accept",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Tanis Alderwood in Undercity. This step is for Undead.",
            dependsOn = { "turnin-94434-a-lesson-in-divinity" },
            complete = QuestState(94435, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.6560, 0.3780, "Tanis Alderwood",
                    "Travel to Tanis Alderwood in Undercity."),
            },
        },
        {
            id = "turnin-94435-a-lesson-in-divinity",
            kind = "turnin",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Danitha Morr in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-94435-a-lesson-in-divinity" },
            complete = QuestState(94435, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Danitha Morr",
                    "Travel to Danitha Morr in Tirisfal Glades."),
            },
        },
        {
            id = "accept-94436-a-lesson-in-divinity",
            kind = "accept",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Danitha Morr in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-94435-a-lesson-in-divinity" },
            complete = QuestState(94436, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Danitha Morr",
                    "Travel to Danitha Morr in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-94436-a-lesson-in-divinity",
            kind = "turnin",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Deathguard Billmuth in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-94436-a-lesson-in-divinity" },
            complete = QuestState(94436, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Deathguard Billmuth",
                    "Travel to Deathguard Billmuth in Tirisfal Glades."),
            },
        },
        {
            id = "accept-94438-a-lesson-in-divinity",
            kind = "accept",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Deathguard Billmuth in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-94436-a-lesson-in-divinity" },
            complete = QuestState(94438, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Deathguard Billmuth",
                    "Travel to Deathguard Billmuth in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-94438-a-lesson-in-divinity",
            kind = "turnin",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Deathguard Falgan in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-94438-a-lesson-in-divinity" },
            complete = QuestState(94438, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.8660, 0.4760, "Deathguard Falgan",
                    "Travel to Deathguard Falgan in Tirisfal Glades."),
            },
        },
        {
            id = "accept-94440-a-lesson-in-divinity",
            kind = "accept",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Deathguard Falgan in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-94438-a-lesson-in-divinity" },
            complete = QuestState(94440, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.8660, 0.4760, "Deathguard Falgan",
                    "Travel to Deathguard Falgan in Tirisfal Glades."),
            },
        },
        {
            id = "objective-94440-a-lesson-in-divinity",
            kind = "objective",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "A Lesson in Divinity: Scarlet Crusade Attack Plans. This step is for Undead.",
            dependsOn = { "accept-94440-a-lesson-in-divinity" },
            complete = QuestState(94440, "complete"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.5160, 0.6760, "Scarlet Zealot",
                    "Travel to Scarlet Zealot in Tirisfal Glades."),
                Point(MAP.TIRISFALGLADES, 0.7940, 0.5580, "Scarlet Friar",
                    "Travel to Scarlet Friar in Tirisfal Glades."),
                Point(MAP.TIRISFALGLADES, 0.1160, 0.6400, "Tarnished Zealot",
                    "Travel to Tarnished Zealot in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-94440-a-lesson-in-divinity",
            kind = "turnin",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Deathguard Billmuth in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "objective-94440-a-lesson-in-divinity" },
            complete = QuestState(94440, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Deathguard Billmuth",
                    "Travel to Deathguard Billmuth in Tirisfal Glades."),
            },
        },
        {
            id = "accept-94441-a-lesson-in-divinity",
            kind = "accept",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Deathguard Billmuth in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-94440-a-lesson-in-divinity" },
            complete = QuestState(94441, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Deathguard Billmuth",
                    "Travel to Deathguard Billmuth in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-94441-a-lesson-in-divinity",
            kind = "turnin",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Danitha Morr in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-94441-a-lesson-in-divinity" },
            complete = QuestState(94441, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Danitha Morr",
                    "Travel to Danitha Morr in Tirisfal Glades."),
            },
        },
        {
            id = "accept-91858-diplomatic-incident",
            kind = "accept",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Accept Diplomatic Incident from Danitha Morr in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(91858, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.2200, 0.4460, "Danitha Morr",
                    "Travel to Danitha Morr in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-91858-diplomatic-incident",
            kind = "turnin",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Diplomatic Incident to Trevan Rol in Silverpine Forest. This step is for Undead.",
            dependsOn = { "accept-91858-diplomatic-incident" },
            complete = QuestState(91858, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4340, 0.4100, "Trevan Rol",
                    "Travel to Trevan Rol in Silverpine Forest."),
            },
        },
        {
            id = "accept-91859-a-curious-pair",
            kind = "accept",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Accept A Curious Pair from Trevan Rol in Silverpine Forest. This step is for Undead.",
            complete = QuestState(91859, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4340, 0.4100, "Trevan Rol",
                    "Travel to Trevan Rol in Silverpine Forest."),
            },
        },
        {
            id = "turnin-91859-a-curious-pair",
            kind = "turnin",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in A Curious Pair to Deathguard Baldren in Silverpine Forest. This step is for Undead.",
            dependsOn = { "accept-91859-a-curious-pair" },
            complete = QuestState(91859, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4580, 0.4180, "Deathguard Baldren",
                    "Travel to Deathguard Baldren in Silverpine Forest."),
            },
        },
        {
            id = "accept-91860-a-grim-fate",
            kind = "accept",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Accept A Grim Fate from Deathguard Baldren in Silverpine Forest. This step is for Undead.",
            complete = QuestState(91860, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4580, 0.4180, "Deathguard Baldren",
                    "Travel to Deathguard Baldren in Silverpine Forest."),
            },
        },
        {
            id = "turnin-91860-a-grim-fate",
            kind = "turnin",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in A Grim Fate to Deathguard Baldren in Silverpine Forest. This step is for Undead.",
            dependsOn = { "accept-91860-a-grim-fate" },
            complete = QuestState(91860, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4580, 0.4180, "Deathguard Baldren",
                    "Travel to Deathguard Baldren in Silverpine Forest."),
            },
        },
        {
            id = "accept-91862-lumina-windsinger",
            kind = "accept",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Accept Lumina Windsinger from Lumina Windsinger in Silverpine Forest. This step is for Undead.",
            complete = QuestState(91862, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.6560, 0.2320, "Lumina Windsinger",
                    "Travel to Lumina Windsinger in Silverpine Forest."),
            },
        },
        {
            id = "objective-91862-lumina-windsinger",
            kind = "objective",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Lumina Windsinger: Fenris Isle Key. This step is for Undead.",
            dependsOn = { "accept-91862-lumina-windsinger" },
            complete = QuestState(91862, "complete"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.6560, 0.2360, "Rot Hide Savage",
                    "Travel to Rot Hide Savage in Silverpine Forest."),
                Point(MAP.SILVERPINEFOREST, 0.6580, 0.2360, "Raging Rot Hide",
                    "Travel to Raging Rot Hide in Silverpine Forest."),
                Point(MAP.SILVERPINEFOREST, 0.6820, 0.2560, "Rot Hide Bruiser",
                    "Travel to Rot Hide Bruiser in Silverpine Forest."),
                Point(MAP.SILVERPINEFOREST, 0.6520, 0.2500, "Snarlmane",
                    "Travel to Snarlmane in Silverpine Forest."),
            },
        },
        {
            id = "turnin-91862-lumina-windsinger",
            kind = "turnin",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Lumina Windsinger to Lumina Windsinger in Silverpine Forest. This step is for Undead.",
            dependsOn = { "objective-91862-lumina-windsinger" },
            complete = QuestState(91862, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.6560, 0.2320, "Lumina Windsinger",
                    "Travel to Lumina Windsinger in Silverpine Forest."),
            },
        },
        {
            id = "accept-95034-the-debt",
            kind = "accept",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Accept The Debt from Lumina Windsinger in Silverpine Forest. This step is for Undead.",
            complete = QuestState(95034, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4320, 0.4080, "Lumina Windsinger",
                    "Travel to Lumina Windsinger in Silverpine Forest."),
            },
        },
        {
            id = "turnin-95034-the-debt",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in The Debt to Lumina Windsinger in Silverpine Forest. This step is for Undead.",
            dependsOn = { "accept-95034-the-debt" },
            complete = QuestState(95034, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4320, 0.4080, "Lumina Windsinger",
                    "Travel to Lumina Windsinger in Silverpine Forest."),
            },
        },
        {
            id = "accept-96204-the-windshapers-wrath",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Accept The Windshaper's Wrath from Lumina Windsinger in Silverpine Forest. This step is for Undead.",
            complete = QuestState(96204, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.6560, 0.2320, "Lumina Windsinger",
                    "Travel to Lumina Windsinger in Silverpine Forest."),
            },
        },
        {
            id = "turnin-96204-the-windshapers-wrath",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in The Windshaper's Wrath to Lumina Windsinger in Silverpine Forest. This step is for Undead.",
            dependsOn = { "accept-96204-the-windshapers-wrath" },
            complete = QuestState(96204, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4320, 0.4080, "Lumina Windsinger",
                    "Travel to Lumina Windsinger in Silverpine Forest."),
            },
        },
        {
            id = "accept-1794-the-tome-of-valor",
            kind = "accept",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Tome of Valor from Tiza Battleforge in Ironforge.",
            complete = QuestState(1794, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "turnin-1794-the-tome-of-valor",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Tome of Valor to Tiza Battleforge in Ironforge.",
            dependsOn = { "accept-1794-the-tome-of-valor" },
            complete = QuestState(1794, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-1793-the-tome-of-valor",
            kind = "accept",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Tome of Valor from Duthorian Rall in Stormwind City.",
            complete = QuestState(1793, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "turnin-1793-the-tome-of-valor",
            kind = "turnin",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Tome of Valor to Duthorian Rall in Stormwind City.",
            dependsOn = { "accept-1793-the-tome-of-valor" },
            complete = QuestState(1793, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-1649-the-tome-of-valor",
            kind = "accept",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Tome of Valor from Duthorian Rall in Stormwind City.",
            complete = QuestState(1649, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3981, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "turnin-1649-the-tome-of-valor",
            kind = "turnin",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Tome of Valor to Duthorian Rall in Stormwind City.",
            dependsOn = { "accept-1649-the-tome-of-valor" },
            complete = QuestState(1649, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-1650-the-tome-of-valor",
            kind = "accept",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Tome of Valor from Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "turnin-1649-the-tome-of-valor" },
            complete = QuestState(1650, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "turnin-1650-the-tome-of-valor",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Tome of Valor to Daphne Stilwell in Westfall. This step is for Humans and Dwarves.",
            dependsOn = { "accept-1650-the-tome-of-valor" },
            complete = QuestState(1650, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.4220, 0.8860, "Daphne Stilwell",
                    "Travel to Daphne Stilwell in Westfall."),
            },
        },
        {
            id = "accept-1651-the-tome-of-valor",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Tome of Valor from Daphne Stilwell in Westfall. This step is for Humans and Dwarves.",
            dependsOn = { "turnin-1650-the-tome-of-valor" },
            complete = QuestState(1651, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.4220, 0.8860, "Daphne Stilwell",
                    "Travel to Daphne Stilwell in Westfall."),
            },
        },
        {
            id = "turnin-1651-the-tome-of-valor",
            kind = "turnin",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Tome of Valor to Daphne Stilwell in Westfall. This step is for Humans and Dwarves.",
            dependsOn = { "accept-1651-the-tome-of-valor" },
            complete = QuestState(1651, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.4220, 0.8860, "Daphne Stilwell",
                    "Travel to Daphne Stilwell in Westfall."),
            },
        },
        {
            id = "accept-1652-the-tome-of-valor",
            kind = "accept",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Tome of Valor from Daphne Stilwell in Westfall. This step is for Humans and Dwarves.",
            dependsOn = { "turnin-1651-the-tome-of-valor", "turnin-1650-the-tome-of-valor" },
            complete = QuestState(1652, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.4220, 0.8860, "Daphne Stilwell",
                    "Travel to Daphne Stilwell in Westfall."),
            },
        },
        {
            id = "turnin-1652-the-tome-of-valor",
            kind = "turnin",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Tome of Valor to Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-1652-the-tome-of-valor" },
            complete = QuestState(1652, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-1655-bailors-ore-shipment",
            kind = "accept",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Bailor's Ore Shipment from Bailor Stonehand in Loch Modan. This step is for Humans and Dwarves.",
            complete = QuestState(1655, "activeOrCompleted"),
            route = {
                Point(MAP.LOCHMODAN, 0.3600, 0.4500, "Bailor Stonehand",
                    "Travel to Bailor Stonehand in Loch Modan."),
            },
        },
        {
            id = "turnin-1655-bailors-ore-shipment",
            kind = "turnin",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Bailor's Ore Shipment to Bailor Stonehand in Loch Modan. This step is for Humans and Dwarves.",
            dependsOn = { "accept-1655-bailors-ore-shipment" },
            complete = QuestState(1655, "completed"),
            route = {
                Point(MAP.LOCHMODAN, 0.3600, 0.4500, "Bailor Stonehand",
                    "Travel to Bailor Stonehand in Loch Modan."),
            },
        },
        {
            id = "accept-95042-seeking-the-kor-gem",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Seeking the Kor Gem from Ulric Frostveil in Ashenvale.",
            complete = QuestState(95042, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.1180, 0.3440, "Ulric Frostveil",
                    "Travel to Ulric Frostveil in Ashenvale."),
            },
        },
        {
            id = "objective-95042-seeking-the-kor-gem",
            kind = "objective",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { level = { min = 20 } },
                },
            },
            text = "Seeking the Kor Gem: Corrupted Kor Gem. This is an elite. Bring a group.",
            dependsOn = { "accept-95042-seeking-the-kor-gem" },
            complete = QuestState(95042, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.1320, 0.1320, "Blackfathom Tide Priestess",
                    "Travel to Blackfathom Tide Priestess in Ashenvale."),
                Point(MAP.ASHENVALE, 0.1640, 0.1160, "Blackfathom Oracle",
                    "Travel to Blackfathom Oracle in Ashenvale."),
                Point(MAP.ASHENVALE, 0.1340, 0.1220, "Blackfathom Tide Priestess",
                    "Travel to Blackfathom Tide Priestess in Ashenvale."),
                Point(MAP.ASHENVALE, 0.1660, 0.1100, "Blackfathom Oracle",
                    "Travel to Blackfathom Oracle in Ashenvale."),
            },
        },
        {
            id = "turnin-95042-seeking-the-kor-gem",
            kind = "turnin",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Seeking the Kor Gem to Ulric Frostveil in Ashenvale.",
            dependsOn = { "objective-95042-seeking-the-kor-gem" },
            complete = QuestState(95042, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1180, 0.3440, "Ulric Frostveil",
                    "Travel to Ulric Frostveil in Ashenvale."),
            },
        },
        {
            id = "accept-95111-an-underrated-talent",
            kind = "accept",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept An Underrated Talent from Trevan Rol in Silverpine Forest. This step is for Undead.",
            complete = QuestState(95111, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4340, 0.4100, "Trevan Rol",
                    "Travel to Trevan Rol in Silverpine Forest."),
            },
        },
        {
            id = "turnin-95111-an-underrated-talent",
            kind = "turnin",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in An Underrated Talent to Ott in Hillsbrad Foothills. This step is for Undead.",
            dependsOn = { "accept-95111-an-underrated-talent" },
            complete = QuestState(95111, "completed"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.6040, 0.2600, "Ott",
                    "Travel to Ott in Hillsbrad Foothills."),
            },
        },
        {
            id = "accept-95125-otts-masterwork",
            kind = "accept",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Ott's Masterwork from Ott in Hillsbrad Foothills. This step is for Undead.",
            complete = QuestState(95125, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.6040, 0.2600, "Ott",
                    "Travel to Ott in Hillsbrad Foothills."),
            },
        },
        {
            id = "turnin-95125-otts-masterwork",
            kind = "turnin",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Ott's Masterwork to Ott in Hillsbrad Foothills. This step is for Undead.",
            dependsOn = { "accept-95125-otts-masterwork" },
            complete = QuestState(95125, "completed"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.6040, 0.2600, "Ott",
                    "Travel to Ott in Hillsbrad Foothills."),
            },
        },
        {
            id = "accept-95126-the-moonsilver-blade",
            kind = "accept",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Moonsilver Blade from Ott in Hillsbrad Foothills. This step is for Undead.",
            complete = QuestState(95126, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.6040, 0.2600, "Ott",
                    "Travel to Ott in Hillsbrad Foothills."),
            },
        },
        {
            id = "turnin-95126-the-moonsilver-blade",
            kind = "turnin",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Moonsilver Blade to Trevan Rol in Silverpine Forest. This step is for Undead.",
            dependsOn = { "accept-95126-the-moonsilver-blade" },
            complete = QuestState(95126, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4340, 0.4100, "Trevan Rol",
                    "Travel to Trevan Rol in Silverpine Forest."),
            },
        },
        {
            id = "accept-95140-old-fire-eye",
            kind = "accept",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Old Fire-Eye from Lumina Windsinger in Silverpine Forest. This step is for Undead.",
            complete = QuestState(95140, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4320, 0.4080, "Lumina Windsinger",
                    "Travel to Lumina Windsinger in Silverpine Forest."),
            },
        },
        {
            id = "turnin-95140-old-fire-eye",
            kind = "turnin",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 2 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Old Fire-Eye to Lumina Windsinger in Silverpine Forest. This step is for Undead.",
            dependsOn = { "accept-95140-old-fire-eye" },
            complete = QuestState(95140, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4320, 0.4080, "Lumina Windsinger",
                    "Travel to Lumina Windsinger in Silverpine Forest."),
            },
        },
        {
            id = "accept-1661-the-tome-of-nobility",
            kind = "accept",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 40 } },
                },
            },
            text = "Accept The Tome of Nobility from Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
            complete = QuestState(1661, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "turnin-1661-the-tome-of-nobility",
            kind = "turnin",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 40 } },
                },
            },
            text = "Turn in The Tome of Nobility to Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-1661-the-tome-of-nobility" },
            complete = QuestState(1661, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-8415-chillwind-point",
            kind = "accept",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Chillwind Point from Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
            complete = QuestState(8415, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3720, 0.3300, "Lord Grayson Shadowbreaker",
                    "Travel to Lord Grayson Shadowbreaker in Stormwind City.", { map = { MAP.IRONFORGE } }),
                Point(MAP.IRONFORGE, 0.2340, 0.0620, "Brandur Ironhammer",
                    "Travel to Brandur Ironhammer in Ironforge."),
            },
        },
        {
            id = "turnin-8415-chillwind-point",
            kind = "turnin",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Chillwind Point to Commander Ashlam Valorfist in Western Plaguelands. This step is for Humans and Dwarves.",
            dependsOn = { "accept-8415-chillwind-point" },
            complete = QuestState(8415, "completed"),
            route = {
                Point(MAP.WESTERNPLAGUELANDS, 0.4280, 0.8400, "Commander Ashlam Valorfist",
                    "Travel to Commander Ashlam Valorfist in Western Plaguelands."),
            },
        },
        {
            id = "accept-8414-dispelling-evil",
            kind = "accept",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Dispelling Evil from Commander Ashlam Valorfist in Western Plaguelands. This step is for Humans and Dwarves.",
            dependsOn = { "turnin-8415-chillwind-point" },
            complete = QuestState(8414, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERNPLAGUELANDS, 0.4280, 0.8400, "Commander Ashlam Valorfist",
                    "Travel to Commander Ashlam Valorfist in Western Plaguelands."),
            },
        },
        {
            id = "objective-8414-dispelling-evil",
            kind = "objective",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 50 } },
                },
            },
            text = "Dispelling Evil: Minion's Scourgestone. This step is for Humans and Dwarves.",
            dependsOn = { "accept-8414-dispelling-evil" },
            complete = QuestState(8414, "complete"),
            route = {
                Point(MAP.WESTERNPLAGUELANDS, 0.3880, 0.5500, "Skeletal Flayer",
                    "Travel to Skeletal Flayer in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.3800, 0.5440, "Skeletal Sorcerer",
                    "Travel to Skeletal Sorcerer in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.4760, 0.5100, "Skeletal Terror",
                    "Travel to Skeletal Terror in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.3980, 0.6740, "Skeletal Executioner",
                    "Travel to Skeletal Executioner in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.4660, 0.7080, "Skeletal Acolyte",
                    "Travel to Skeletal Acolyte in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.3800, 0.5440, "Slavering Ghoul",
                    "Travel to Slavering Ghoul in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.5300, 0.6600, "Rotting Ghoul",
                    "Travel to Rotting Ghoul in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.3980, 0.6740, "Soulless Ghoul",
                    "Travel to Soulless Ghoul in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.3980, 0.6740, "Searing Ghoul",
                    "Travel to Searing Ghoul in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.5360, 0.6460, "Freezing Ghoul",
                    "Travel to Freezing Ghoul in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.6160, 0.5920, "Hungering Wraith",
                    "Travel to Hungering Wraith in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.6160, 0.5920, "Wailing Death",
                    "Travel to Wailing Death in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.4640, 0.5340, "Foulmane",
                    "Travel to Foulmane in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.4720, 0.5000, "Rotting Cadaver",
                    "Travel to Rotting Cadaver in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.4720, 0.5000, "Blighted Zombie",
                    "Travel to Blighted Zombie in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.7380, 0.5740, "Putrid Gargoyle",
                    "Travel to Putrid Gargoyle in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.5280, 0.6520, "Fetid Zombie",
                    "Travel to Fetid Zombie in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.3800, 0.5640, "Jabbering Ghoul",
                    "Travel to Jabbering Ghoul in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.4800, 0.4980, "Wandering Skeleton",
                    "Travel to Wandering Skeleton in Western Plaguelands."),
                Point(MAP.WESTERNPLAGUELANDS, 0.4560, 0.5380, "Festering Ghoul",
                    "Travel to Festering Ghoul in Western Plaguelands."),
            },
        },
        {
            id = "turnin-8414-dispelling-evil",
            kind = "turnin",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Dispelling Evil to High Priest Thel'danis in Western Plaguelands. This step is for Humans and Dwarves.",
            dependsOn = { "objective-8414-dispelling-evil" },
            complete = QuestState(8414, "completed"),
            route = {
                Point(MAP.WESTERNPLAGUELANDS, 0.5200, 0.8280, "High Priest Thel'danis",
                    "Travel to High Priest Thel'danis in Western Plaguelands."),
            },
        },
        {
            id = "accept-8416-inert-scourgestones",
            kind = "accept",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Inert Scourgestones from High Priest Thel'danis in Western Plaguelands. This step is for Humans and Dwarves.",
            dependsOn = { "turnin-8414-dispelling-evil" },
            complete = QuestState(8416, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERNPLAGUELANDS, 0.5200, 0.8280, "High Priest Thel'danis",
                    "Travel to High Priest Thel'danis in Western Plaguelands."),
            },
        },
        {
            id = "turnin-8416-inert-scourgestones",
            kind = "turnin",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Inert Scourgestones to Commander Ashlam Valorfist in Western Plaguelands. This step is for Humans and Dwarves.",
            dependsOn = { "accept-8416-inert-scourgestones" },
            complete = QuestState(8416, "completed"),
            route = {
                Point(MAP.WESTERNPLAGUELANDS, 0.4280, 0.8400, "Commander Ashlam Valorfist",
                    "Travel to Commander Ashlam Valorfist in Western Plaguelands."),
            },
        },
        {
            id = "accept-7638-lord-grayson-shadowbreaker",
            kind = "accept",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Lord Grayson Shadowbreaker from Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
            complete = QuestState(7638, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "turnin-7638-lord-grayson-shadowbreaker",
            kind = "turnin",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Lord Grayson Shadowbreaker to Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-7638-lord-grayson-shadowbreaker" },
            complete = QuestState(7638, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3720, 0.3300, "Lord Grayson Shadowbreaker",
                    "Travel to Lord Grayson Shadowbreaker in Stormwind City."),
            },
        },
        {
            id = "accept-7637-emphasis-on-sacrifice",
            kind = "accept",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Emphasis on Sacrifice from Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "turnin-7638-lord-grayson-shadowbreaker" },
            complete = QuestState(7637, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3720, 0.3300, "Lord Grayson Shadowbreaker",
                    "Travel to Lord Grayson Shadowbreaker in Stormwind City."),
            },
        },
        {
            id = "turnin-7637-emphasis-on-sacrifice",
            kind = "turnin",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Emphasis on Sacrifice to High Priest Rohan in Ironforge. This step is for Humans and Dwarves.",
            dependsOn = { "accept-7637-emphasis-on-sacrifice" },
            complete = QuestState(7637, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2500, 0.0840, "High Priest Rohan",
                    "Travel to High Priest Rohan in Ironforge."),
            },
        },
        {
            id = "accept-7639-to-show-due-judgment",
            kind = "accept",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Accept To Show Due Judgment from High Priest Rohan in Ironforge. This step is for Humans and Dwarves.",
            dependsOn = { "turnin-7637-emphasis-on-sacrifice" },
            complete = QuestState(7639, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2500, 0.0840, "High Priest Rohan",
                    "Travel to High Priest Rohan in Ironforge."),
            },
        },
        {
            id = "turnin-7639-to-show-due-judgment",
            kind = "turnin",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in To Show Due Judgment to Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-7639-to-show-due-judgment" },
            complete = QuestState(7639, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3720, 0.3300, "Lord Grayson Shadowbreaker",
                    "Travel to Lord Grayson Shadowbreaker in Stormwind City."),
            },
        },
        {
            id = "accept-7640-exorcising-terrordale",
            kind = "accept",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Exorcising Terrordale from Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "turnin-7639-to-show-due-judgment" },
            complete = QuestState(7640, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3720, 0.3300, "Lord Grayson Shadowbreaker",
                    "Travel to Lord Grayson Shadowbreaker in Stormwind City."),
            },
        },
        {
            id = "turnin-7640-exorcising-terrordale",
            kind = "turnin",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Exorcising Terrordale to Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-7640-exorcising-terrordale" },
            complete = QuestState(7640, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3720, 0.3300, "Lord Grayson Shadowbreaker",
                    "Travel to Lord Grayson Shadowbreaker in Stormwind City."),
            },
        },
        {
            id = "accept-7641-the-work-of-grimand-elmore",
            kind = "accept",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Accept The Work of Grimand Elmore from Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "turnin-7640-exorcising-terrordale", "turnin-7639-to-show-due-judgment" },
            complete = QuestState(7641, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3720, 0.3300, "Lord Grayson Shadowbreaker",
                    "Travel to Lord Grayson Shadowbreaker in Stormwind City."),
            },
        },
        {
            id = "turnin-7641-the-work-of-grimand-elmore",
            kind = "turnin",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in The Work of Grimand Elmore to Grimand Elmore in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-7641-the-work-of-grimand-elmore" },
            complete = QuestState(7641, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5160, 0.1220, "Grimand Elmore",
                    "Travel to Grimand Elmore in Stormwind City."),
            },
        },
        {
            id = "accept-7648-grimands-finest-work",
            kind = "accept",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Grimand's Finest Work from Grimand Elmore in Stormwind City. This step is for Humans and Dwarves.",
            complete = QuestState(7648, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5160, 0.1220, "Grimand Elmore",
                    "Travel to Grimand Elmore in Stormwind City."),
            },
        },
        {
            id = "turnin-7648-grimands-finest-work",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Grimand's Finest Work to Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-7648-grimands-finest-work" },
            complete = QuestState(7648, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3720, 0.3300, "Lord Grayson Shadowbreaker",
                    "Travel to Lord Grayson Shadowbreaker in Stormwind City."),
            },
        },
        {
            id = "accept-7645-manna-enriched-horse-feed",
            kind = "accept",
            priority = 1390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Manna-Enriched Horse Feed from Merideth Carlson in Hillsbrad Foothills. This step is for Humans and Dwarves.",
            complete = QuestState(7645, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.5200, 0.5560, "Merideth Carlson",
                    "Travel to Merideth Carlson in Hillsbrad Foothills."),
            },
        },
        {
            id = "turnin-7645-manna-enriched-horse-feed",
            kind = "turnin",
            priority = 1400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Manna-Enriched Horse Feed to Merideth Carlson in Hillsbrad Foothills. This step is for Humans and Dwarves.",
            dependsOn = { "accept-7645-manna-enriched-horse-feed" },
            complete = QuestState(7645, "completed"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.5200, 0.5560, "Merideth Carlson",
                    "Travel to Merideth Carlson in Hillsbrad Foothills."),
            },
        },
        {
            id = "accept-3101-consecrated-letter",
            kind = "accept",
            priority = 1410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept Consecrated Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
            complete = QuestState(3101, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4880, 0.4160, "Marshal McBride",
                    "Travel to Marshal McBride in Elwynn Forest."),
            },
        },
        {
            id = "turnin-3101-consecrated-letter",
            kind = "turnin",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in Consecrated Letter to Brother Sammuel in Elwynn Forest. This step is for Humans.",
            dependsOn = { "accept-3101-consecrated-letter" },
            complete = QuestState(3101, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.5040, 0.4200, "Brother Sammuel",
                    "Travel to Brother Sammuel in Elwynn Forest."),
            },
        },
        {
            id = "accept-3107-consecrated-rune",
            kind = "accept",
            priority = 1430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept Consecrated Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
            complete = QuestState(3107, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-3107-consecrated-rune",
            kind = "turnin",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in Consecrated Rune to Bromos Grummner in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-3107-consecrated-rune" },
            complete = QuestState(3107, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2880, 0.6820, "Bromos Grummner",
                    "Travel to Bromos Grummner in Dun Morogh."),
            },
        },
        {
            id = "accept-1789-the-symbol-of-life",
            kind = "accept",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Symbol of Life from Tiza Battleforge in Ironforge. This step is for Dwarves.",
            complete = QuestState(1789, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "turnin-1789-the-symbol-of-life",
            kind = "turnin",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Symbol of Life to Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-1789-the-symbol-of-life" },
            complete = QuestState(1789, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-1790-the-symbol-of-life",
            kind = "accept",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept The Symbol of Life from Duthorian Rall in Stormwind City. This step is for Humans.",
            complete = QuestState(1790, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "turnin-1790-the-symbol-of-life",
            kind = "turnin",
            priority = 1480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in The Symbol of Life to Duthorian Rall in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1790-the-symbol-of-life" },
            complete = QuestState(1790, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-2998-tome-of-divinity",
            kind = "accept",
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Tome of Divinity from Brother Wilhelm in Elwynn Forest. This step is for Humans.",
            complete = QuestState(2998, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4100, 0.6600, "Brother Wilhelm",
                    "Travel to Brother Wilhelm in Elwynn Forest."),
            },
        },
        {
            id = "turnin-2998-tome-of-divinity",
            kind = "turnin",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-2998-tome-of-divinity" },
            complete = QuestState(2998, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-2999-tome-of-divinity",
            kind = "accept",
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Tome of Divinity from Brandur Ironhammer in Ironforge. This step is for Dwarves.",
            complete = QuestState(2999, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2340, 0.0620, "Brandur Ironhammer",
                    "Travel to Brandur Ironhammer in Ironforge."),
            },
        },
        {
            id = "turnin-2999-tome-of-divinity",
            kind = "turnin",
            priority = 1520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-2999-tome-of-divinity" },
            complete = QuestState(2999, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-3000-tome-of-divinity",
            kind = "accept",
            priority = 1530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Tome of Divinity from Lord Grayson Shadowbreaker in Stormwind City. This step is for Dwarves.",
            complete = QuestState(3000, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3720, 0.3300, "Lord Grayson Shadowbreaker",
                    "Travel to Lord Grayson Shadowbreaker in Stormwind City."),
            },
        },
        {
            id = "turnin-3000-tome-of-divinity",
            kind = "turnin",
            priority = 1540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 3 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-3000-tome-of-divinity" },
            complete = QuestState(3000, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "accept-3681-tome-of-divinity",
            kind = "accept",
            priority = 1550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Tome of Divinity from Brandur Ironhammer in Ironforge. This step is for Humans.",
            complete = QuestState(3681, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2340, 0.0620, "Brandur Ironhammer",
                    "Travel to Brandur Ironhammer in Ironforge."),
            },
        },
        {
            id = "turnin-3681-tome-of-divinity",
            kind = "turnin",
            priority = 1560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = 1 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-3681-tome-of-divinity" },
            complete = QuestState(3681, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-4485-the-tome-of-nobility",
            kind = "accept",
            priority = 1570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { level = { min = 40 } },
                },
            },
            text = "Accept The Tome of Nobility from Tiza Battleforge in Ironforge.",
            complete = QuestState(4485, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2740, 0.1200, "Tiza Battleforge",
                    "Travel to Tiza Battleforge in Ironforge."),
            },
        },
        {
            id = "turnin-4485-the-tome-of-nobility",
            kind = "turnin",
            priority = 1580,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { level = { min = 40 } },
                },
            },
            text = "Turn in The Tome of Nobility to Duthorian Rall in Stormwind City.",
            dependsOn = { "accept-4485-the-tome-of-nobility" },
            complete = QuestState(4485, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-4486-the-tome-of-nobility",
            kind = "accept",
            priority = 1590,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 40 } },
                },
            },
            text = "Accept The Tome of Nobility from Brandur Ironhammer in Ironforge. This step is for Humans and Dwarves.",
            complete = QuestState(4486, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2340, 0.0620, "Brandur Ironhammer",
                    "Travel to Brandur Ironhammer in Ironforge."),
            },
        },
        {
            id = "turnin-4486-the-tome-of-nobility",
            kind = "turnin",
            priority = 1600,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 40 } },
                },
            },
            text = "Turn in The Tome of Nobility to Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-4486-the-tome-of-nobility" },
            complete = QuestState(4486, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4000, 0.2980, "Duthorian Rall",
                    "Travel to Duthorian Rall in Stormwind City."),
            },
        },
        {
            id = "accept-7670-lord-grayson-shadowbreaker",
            kind = "accept",
            priority = 1610,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Lord Grayson Shadowbreaker from Brandur Ironhammer in Ironforge. This step is for Humans and Dwarves.",
            complete = QuestState(7670, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2340, 0.0620, "Brandur Ironhammer",
                    "Travel to Brandur Ironhammer in Ironforge."),
            },
        },
        {
            id = "turnin-7670-lord-grayson-shadowbreaker",
            kind = "turnin",
            priority = 1620,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 2 },
                    { race = { 1, 3 } },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Lord Grayson Shadowbreaker to Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-7670-lord-grayson-shadowbreaker" },
            complete = QuestState(7670, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3720, 0.3300, "Lord Grayson Shadowbreaker",
                    "Travel to Lord Grayson Shadowbreaker in Stormwind City."),
            },
        }
    },
})
