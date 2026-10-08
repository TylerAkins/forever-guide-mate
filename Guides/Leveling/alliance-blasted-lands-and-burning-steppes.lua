local _, ns = ...

-- Forever Casual spine: Blasted Lands & Burning Steppes (51-51)
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
    BLASTED_LANDS = 1419,
    THE_HINTERLANDS = 1425,
    BURNING_STEPPES = 1428,
    LOCH_MODAN = 1432,
    SWAMP_OF_SORROWS = 1435,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-blasted-lands-and-burning-steppes",
    title = "Blasted Lands & Burning Steppes",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 51 } },
        },
    },
    goals = {
        {
            id = "accept-2783-petty-squabbles",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Petty Squabbles.",
            complete = QuestState(2783, "activeOrCompleted"),
            route = {
                Point(1419, 0.6757, 0.1929, "Petty Squabbles",
                    "Travel to Petty Squabbles."),
            },
        },
        {
            id = "turnin-2783-petty-squabbles",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Petty Squabbles.",
            complete = QuestState(2783, "completed"),
            dependsOn = { "accept-2783-petty-squabbles" },
            route = {
                Point(1435, 0.3429, 0.6613, "Petty Squabbles",
                    "Travel to Petty Squabbles."),
            },
        },
        {
            id = "accept-2801-a-tale-of-sorrow",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Tale of Sorrow.",
            complete = QuestState(2801, "activeOrCompleted"),
            route = {
                Point(1435, 0.3429, 0.6613, "A Tale of Sorrow",
                    "Travel to A Tale of Sorrow."),
            },
        },
        {
            id = "turnin-2801-a-tale-of-sorrow",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Tale of Sorrow.",
            complete = QuestState(2801, "completed"),
            dependsOn = { "accept-2801-a-tale-of-sorrow" },
            route = {
                Point(1435, 0.3429, 0.6613, "A Tale of Sorrow",
                    "Travel to A Tale of Sorrow."),
            },
        },
        {
            id = "accept-2581-snickerfang-jowls",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Snickerfang Jowls.",
            complete = QuestState(2581, "activeOrCompleted"),
            route = {
                Point(1419, 0.5055, 0.1421, "Snickerfang Jowls",
                    "Travel to Snickerfang Jowls."),
            },
        },
        {
            id = "accept-2583-a-boar-s-vitality",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Boar's Vitality.",
            complete = QuestState(2583, "activeOrCompleted"),
            route = {
                Point(1419, 0.5055, 0.1421, "A Boar's Vitality",
                    "Travel to A Boar's Vitality."),
            },
        },
        {
            id = "accept-2585-the-decisive-striker",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Decisive Striker.",
            complete = QuestState(2585, "activeOrCompleted"),
            route = {
                Point(1419, 0.5055, 0.1421, "The Decisive Striker",
                    "Travel to The Decisive Striker."),
            },
        },
        {
            id = "accept-2601-the-basilisk-s-bite",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Basilisk's Bite.",
            complete = QuestState(2601, "activeOrCompleted"),
            route = {
                Point(1419, 0.5064, 0.1430, "The Basilisk's Bite",
                    "Travel to The Basilisk's Bite."),
            },
        },
        {
            id = "accept-2603-vulture-s-vigor",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Vulture's Vigor.",
            complete = QuestState(2603, "activeOrCompleted"),
            route = {
                Point(1419, 0.5064, 0.1430, "Vulture's Vigor",
                    "Travel to Vulture's Vigor."),
            },
        },
        {
            id = "accept-3501-everything-counts-in-large-amounts",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Everything Counts In Large Amounts.",
            complete = QuestState(3501, "activeOrCompleted"),
            route = {
                Point(1419, 0.5180, 0.3564, "Everything Counts In Large Amounts",
                    "Travel to Everything Counts In Large Amounts."),
            },
        },
        {
            id = "accept-2521-to-serve-kum-isha",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept To Serve Kum'isha.",
            complete = QuestState(2521, "activeOrCompleted"),
            route = {
                Point(1419, 0.5180, 0.3564, "To Serve Kum'isha",
                    "Travel to To Serve Kum'isha."),
            },
        },
        {
            id = "turnin-3501-everything-counts-in-large-amounts",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Everything Counts In Large Amounts.",
            complete = QuestState(3501, "completed"),
            dependsOn = { "accept-3501-everything-counts-in-large-amounts" },
            route = {
                Point(1419, 0.5180, 0.3564, "Everything Counts In Large Amounts",
                    "Travel to Everything Counts In Large Amounts."),
            },
        },
        {
            id = "turnin-2521-to-serve-kum-isha",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in To Serve Kum'isha.",
            complete = QuestState(2521, "completed"),
            dependsOn = { "accept-2521-to-serve-kum-isha" },
            route = {
                Point(1419, 0.5180, 0.3564, "To Serve Kum'isha",
                    "Travel to To Serve Kum'isha."),
            },
        },
        {
            id = "turnin-2601-the-basilisk-s-bite",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Basilisk's Bite.",
            complete = QuestState(2601, "completed"),
            dependsOn = { "accept-2601-the-basilisk-s-bite" },
            route = {
                Point(1419, 0.5064, 0.1430, "The Basilisk's Bite",
                    "Travel to The Basilisk's Bite."),
            },
        },
        {
            id = "turnin-2603-vulture-s-vigor",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Vulture's Vigor.",
            complete = QuestState(2603, "completed"),
            dependsOn = { "accept-2603-vulture-s-vigor" },
            route = {
                Point(1419, 0.5064, 0.1430, "Vulture's Vigor",
                    "Travel to Vulture's Vigor."),
            },
        },
        {
            id = "turnin-2581-snickerfang-jowls",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Snickerfang Jowls.",
            complete = QuestState(2581, "completed"),
            dependsOn = { "accept-2581-snickerfang-jowls" },
            route = {
                Point(1419, 0.5055, 0.1421, "Snickerfang Jowls",
                    "Travel to Snickerfang Jowls."),
            },
        },
        {
            id = "turnin-2583-a-boar-s-vitality",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Boar's Vitality.",
            complete = QuestState(2583, "completed"),
            dependsOn = { "accept-2583-a-boar-s-vitality" },
            route = {
                Point(1419, 0.5055, 0.1421, "A Boar's Vitality",
                    "Travel to A Boar's Vitality."),
            },
        },
        {
            id = "turnin-2585-the-decisive-striker",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Decisive Striker.",
            complete = QuestState(2585, "completed"),
            dependsOn = { "accept-2585-the-decisive-striker" },
            route = {
                Point(1419, 0.5055, 0.1421, "The Decisive Striker",
                    "Travel to The Decisive Striker."),
            },
        },
        {
            id = "accept-3823-extinguish-the-firegut",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Extinguish the Firegut.",
            complete = QuestState(3823, "activeOrCompleted"),
            route = {
                Point(1428, 0.8456, 0.6868, "Extinguish the Firegut",
                    "Travel to Extinguish the Firegut."),
            },
        },
        {
            id = "objective-3823-2-firegut-ogre",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Kill 7 Firegut Ogre.",
            complete = QuestObjective(3823, 2, "Firegut Ogre"),
            dependsOn = { "accept-3823-extinguish-the-firegut" },
            route = {
                Point(1428, 0.7560, 0.5000, "Firegut Ogre",
                    "Travel to Firegut Ogre."),
            },
        },
        {
            id = "objective-3823-3-firegut-brute",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Kill 7 Firegut Brute.",
            complete = QuestObjective(3823, 3, "Firegut Brute"),
            dependsOn = { "accept-3823-extinguish-the-firegut" },
            route = {
                Point(1428, 0.7560, 0.5000, "Firegut Brute",
                    "Travel to Firegut Brute."),
            },
        },
        {
            id = "objective-3823-1-firegut-ogre-mage",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Kill 15 Firegut Ogre Mage.",
            complete = QuestObjective(3823, 1, "Firegut Ogre Mage"),
            dependsOn = { "accept-3823-extinguish-the-firegut" },
            route = {
                Point(1428, 0.7560, 0.5000, "Firegut Ogre Mage",
                    "Travel to Firegut Ogre Mage."),
            },
        },
        {
            id = "turnin-3823-extinguish-the-firegut",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Extinguish the Firegut.",
            complete = QuestState(3823, "completed"),
            dependsOn = { "accept-3823-extinguish-the-firegut", "objective-3823-2-firegut-ogre", "objective-3823-3-firegut-brute", "objective-3823-1-firegut-ogre-mage" },
            route = {
                Point(1428, 0.8285, 0.6333, "Extinguish the Firegut",
                    "Travel to Extinguish the Firegut."),
            },
        },
        {
            id = "accept-4512-a-little-slime-goes-a-long-way",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Little Slime Goes a Long Way.",
            complete = QuestState(4512, "activeOrCompleted"),
            route = {
                Point(1455, 0.7577, 0.2337, "A Little Slime Goes a Long Way",
                    "Travel to A Little Slime Goes a Long Way."),
            },
        },
        {
            id = "turnin-3182-proof-of-deed",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Proof of Deed.",
            complete = QuestState(3182, "completed"),
            route = {
                Point(1455, 0.7120, 0.1480, "Proof of Deed",
                    "Travel to Proof of Deed."),
            },
        },
        {
            id = "turnin-3368-suntara-stones",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Suntara Stones.",
            complete = QuestState(3368, "completed"),
            route = {
                Point(1455, 0.7120, 0.1480, "Suntara Stones",
                    "Travel to Suntara Stones."),
            },
        },
        {
            id = "accept-3201-at-last",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept At Last!.",
            complete = QuestState(3201, "activeOrCompleted"),
            route = {
                Point(1455, 0.7120, 0.1480, "At Last!",
                    "Travel to At Last!."),
            },
        },
        {
            id = "accept-3448-passing-the-burden",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Passing the Burden.",
            complete = QuestState(3448, "activeOrCompleted"),
            route = {
                Point(1455, 0.7755, 0.1184, "Passing the Burden",
                    "Travel to Passing the Burden."),
            },
        },
        {
            id = "turnin-3448-passing-the-burden",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Passing the Burden.",
            complete = QuestState(3448, "completed"),
            dependsOn = { "accept-3448-passing-the-burden" },
            route = {
                Point(1455, 0.3097, 0.0481, "Passing the Burden",
                    "Travel to Passing the Burden."),
            },
        },
        {
            id = "accept-3449-arcane-runes",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Arcane Runes.",
            complete = QuestState(3449, "activeOrCompleted"),
            route = {
                Point(1455, 0.3097, 0.0481, "Arcane Runes",
                    "Travel to Arcane Runes."),
            },
        },
        {
            id = "accept-3450-an-easy-pickup",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept An Easy Pickup.",
            complete = QuestState(3450, "activeOrCompleted"),
            route = {
                Point(1455, 0.3097, 0.0481, "An Easy Pickup",
                    "Travel to An Easy Pickup."),
            },
        },
        {
            id = "accept-3790-assisting-arch-druid-staghelm",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Assisting Arch Druid Staghelm.",
            complete = QuestState(3790, "activeOrCompleted"),
            route = {
                Point(1455, 0.1815, 0.5146, "Assisting Arch Druid Staghelm",
                    "Travel to Assisting Arch Druid Staghelm."),
            },
        },
        {
            id = "objective-3661-1-wildkin-feather",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Collect 15 Wildkin Feather.",
            complete = QuestObjective(3661, 1, "Wildkin Feather"),
            route = {
                Point(1455, 0.3592, 0.6014, "Wildkin Feather",
                    "Travel to Wildkin Feather."),
            },
        },
        {
            id = "objective-7791-1-wool-cloth",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Collect 120 Wool Cloth.",
            complete = QuestObjective(7791, 1, "Wool Cloth"),
            route = {
                Point(1455, 0.2416, 0.7467, "Wool Cloth",
                    "Travel to Wool Cloth."),
            },
        },
        {
            id = "objective-7793-1-silk-cloth",
            kind = "objective",
            priority = 350,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Collect 120 Silk Cloth.",
            complete = QuestObjective(7793, 1, "Silk Cloth"),
            route = {
                Point(1455, 0.2416, 0.7467, "Silk Cloth",
                    "Travel to Silk Cloth."),
            },
        },
        {
            id = "objective-7794-1-mageweave-cloth",
            kind = "objective",
            priority = 360,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Collect 120 Mageweave Cloth.",
            complete = QuestObjective(7794, 1, "Mageweave Cloth"),
            route = {
                Point(1455, 0.2416, 0.7467, "Mageweave Cloth",
                    "Travel to Mageweave Cloth."),
            },
        },
        {
            id = "objective-7795-1-runecloth",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Collect 120 Runecloth.",
            complete = QuestObjective(7795, 1, "Runecloth"),
            route = {
                Point(1455, 0.2416, 0.7467, "Runecloth",
                    "Travel to Runecloth."),
            },
        },
        {
            id = "accept-7802-a-donation-of-wool",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Wool.",
            complete = QuestState(7802, "activeOrCompleted"),
            route = {
                Point(1455, 0.4322, 0.3158, "A Donation of Wool",
                    "Travel to A Donation of Wool."),
            },
        },
        {
            id = "accept-7803-a-donation-of-silk",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Silk.",
            complete = QuestState(7803, "activeOrCompleted"),
            route = {
                Point(1455, 0.4322, 0.3158, "A Donation of Silk",
                    "Travel to A Donation of Silk."),
            },
        },
        {
            id = "accept-7804-a-donation-of-mageweave",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Mageweave.",
            complete = QuestState(7804, "activeOrCompleted"),
            route = {
                Point(1455, 0.4322, 0.3158, "A Donation of Mageweave",
                    "Travel to A Donation of Mageweave."),
            },
        },
        {
            id = "accept-7805-a-donation-of-runecloth",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Runecloth.",
            complete = QuestState(7805, "activeOrCompleted"),
            route = {
                Point(1455, 0.4322, 0.3158, "A Donation of Runecloth",
                    "Travel to A Donation of Runecloth."),
            },
        },
        {
            id = "accept-7807-a-donation-of-wool",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Wool.",
            complete = QuestState(7807, "activeOrCompleted"),
            route = {
                Point(1455, 0.7409, 0.4822, "A Donation of Wool",
                    "Travel to A Donation of Wool."),
            },
        },
        {
            id = "accept-7808-a-donation-of-silk",
            kind = "accept",
            priority = 430,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Silk.",
            complete = QuestState(7808, "activeOrCompleted"),
            route = {
                Point(1455, 0.7409, 0.4822, "A Donation of Silk",
                    "Travel to A Donation of Silk."),
            },
        },
        {
            id = "accept-7809-a-donation-of-mageweave",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Mageweave.",
            complete = QuestState(7809, "activeOrCompleted"),
            route = {
                Point(1455, 0.7409, 0.4822, "A Donation of Mageweave",
                    "Travel to A Donation of Mageweave."),
            },
        },
        {
            id = "accept-7811-a-donation-of-runecloth",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Donation of Runecloth.",
            complete = QuestState(7811, "activeOrCompleted"),
            route = {
                Point(1455, 0.7409, 0.4822, "A Donation of Runecloth",
                    "Travel to A Donation of Runecloth."),
            },
        },
        {
            id = "turnin-3450-an-easy-pickup",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in An Easy Pickup.",
            complete = QuestState(3450, "completed"),
            dependsOn = { "accept-3450-an-easy-pickup" },
            route = {
                Point(1455, 0.7087, 0.9457, "An Easy Pickup",
                    "Travel to An Easy Pickup."),
            },
        },
        {
            id = "accept-3451-signal-for-pickup",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept Signal for Pickup.",
            complete = QuestState(3451, "activeOrCompleted"),
            route = {
                Point(1455, 0.7087, 0.9457, "Signal for Pickup",
                    "Travel to Signal for Pickup."),
            },
        },
        {
            id = "turnin-3451-signal-for-pickup",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Signal for Pickup.",
            complete = QuestState(3451, "completed"),
            dependsOn = { "accept-3451-signal-for-pickup" },
            route = {
                Point(1455, 0.7087, 0.9457, "Signal for Pickup",
                    "Travel to Signal for Pickup."),
            },
        },
        {
            id = "accept-5090-a-call-to-arms-the-plaguelands",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Call to Arms: The Plaguelands! from Courier Hammerfall in Ironforge or Stormwind.",
            complete = QuestState(5090, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-3201-at-last",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in At Last!.",
            complete = QuestState(3201, "completed"),
            dependsOn = { "accept-3201-at-last" },
            route = {
                Point(1432, 0.1819, 0.8400, "At Last!",
                    "Travel to At Last!."),
            },
        },
        {
            id = "turnin-2989-the-altar-of-zul",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Altar of Zul.",
            complete = QuestState(2989, "completed"),
            route = {
                Point(1425, 0.0976, 0.4448, "The Altar of Zul",
                    "Travel to The Altar of Zul."),
            },
        },
        {
            id = "turnin-2877-skulk-rock-clean-up",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 51 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Skulk Rock Clean-up.",
            complete = QuestState(2877, "completed"),
            route = {
                Point(1425, 0.1483, 0.4456, "Skulk Rock Clean-up",
                    "Travel to Skulk Rock Clean-up."),
            },
        },
        {
            id = "turnin-626-cortello-s-riddle",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Cortello's Riddle.",
            complete = QuestState(626, "completed"),
            route = {
                Point(1425, 0.8081, 0.4681, "Cortello's Riddle",
                    "Travel to Cortello's Riddle."),
            },
        },
    },
})
