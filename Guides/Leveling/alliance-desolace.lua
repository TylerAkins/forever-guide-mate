local _, ns = ...

-- Forever Casual spine: Desolace (35-37)
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
    THOUSAND_NEEDLES = 1441,
    DESOLACE = 1443,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-desolace",
    title = "Desolace",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 35 } },
        },
    },
    goals = {
        {
            id = "turnin-1453-reclaimers-business-in-desolace",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Reclaimers' Business in Desolace.",
            complete = QuestState(1453, "completed"),
            route = {
                Point(1443, 0.6620, 0.0963, "Reclaimers' Business in Desolace",
                    "Travel to Reclaimers' Business in Desolace."),
            },
        },
        {
            id = "accept-1454-the-karnitol-shipwreck",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Karnitol Shipwreck.",
            complete = QuestState(1454, "activeOrCompleted"),
            route = {
                Point(1443, 0.6620, 0.0963, "The Karnitol Shipwreck",
                    "Travel to The Karnitol Shipwreck."),
            },
        },
        {
            id = "accept-1458-reagents-for-reclaimers-inc",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Reagents for Reclaimers Inc.",
            complete = QuestState(1458, "activeOrCompleted"),
            route = {
                Point(1443, 0.6620, 0.0963, "Reagents for Reclaimers Inc",
                    "Travel to Reagents for Reclaimers Inc.."),
            },
        },
        {
            id = "accept-1387-centaur-bounty",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Centaur Bounty.",
            complete = QuestState(1387, "activeOrCompleted"),
            route = {
                Point(1443, 0.6674, 0.1087, "Centaur Bounty",
                    "Travel to Centaur Bounty."),
            },
        },
        {
            id = "accept-1382-strange-alliance",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Strange Alliance.",
            complete = QuestState(1382, "activeOrCompleted"),
            route = {
                Point(1443, 0.6666, 0.1093, "Strange Alliance",
                    "Travel to Strange Alliance."),
            },
        },
        {
            id = "accept-1437-vahlarriel-s-search",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Vahlarriel's Search.",
            complete = QuestState(1437, "activeOrCompleted"),
            route = {
                Point(1443, 0.6644, 0.1182, "Vahlarriel's Search",
                    "Travel to Vahlarriel's Search."),
            },
        },
        {
            id = "objective-1458-1-hatefury-trickster",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Kill Hatefury Trickster.",
            complete = QuestObjective(1458, 1, "Hatefury Trickster"),
            dependsOn = { "accept-1458-reagents-for-reclaimers-inc" },
            route = {
                Point(1443, 0.6940, 0.1580, "Hatefury Trickster",
                    "Travel to Hatefury Trickster."),
            },
        },
        {
            id = "objective-1458-2-hatefury-horn",
            kind = "objective",
            priority = 80,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Collect 10 Hatefury Horn.",
            complete = QuestObjective(1458, 2, "Hatefury Horn"),
            dependsOn = { "accept-1458-reagents-for-reclaimers-inc" },
            route = {
                Point(1443, 0.6940, 0.1580, "Hatefury Horn",
                    "Travel to Hatefury Horn."),
            },
        },
        {
            id = "turnin-1458-reagents-for-reclaimers-inc",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Reagents for Reclaimers Inc.",
            complete = QuestState(1458, "completed"),
            dependsOn = { "accept-1458-reagents-for-reclaimers-inc", "objective-1458-1-hatefury-trickster", "objective-1458-2-hatefury-horn" },
            route = {
                Point(1443, 0.6749, 0.1576, "Reagents for Reclaimers Inc",
                    "Travel to Reagents for Reclaimers Inc.."),
            },
        },
        {
            id = "accept-1459-reagents-for-reclaimers-inc",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Reagents for Reclaimers Inc.",
            complete = QuestState(1459, "activeOrCompleted"),
            route = {
                Point(1443, 0.6749, 0.1576, "Reagents for Reclaimers Inc",
                    "Travel to Reagents for Reclaimers Inc.."),
            },
        },
        {
            id = "turnin-1437-vahlarriel-s-search",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Vahlarriel's Search.",
            complete = QuestState(1437, "completed"),
            dependsOn = { "accept-1437-vahlarriel-s-search" },
            route = {
                Point(1443, 0.5654, 0.1783, "Vahlarriel's Search",
                    "Travel to Vahlarriel's Search."),
            },
        },
        {
            id = "accept-1465-vahlarriel-s-search",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Vahlarriel's Search.",
            complete = QuestState(1465, "activeOrCompleted"),
            route = {
                Point(1443, 0.5654, 0.1783, "Vahlarriel's Search",
                    "Travel to Vahlarriel's Search."),
            },
        },
        {
            id = "accept-5741-sceptre-of-light",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Sceptre of Light.",
            complete = QuestState(5741, "activeOrCompleted"),
            route = {
                Point(1443, 0.3888, 0.2717, "Sceptre of Light",
                    "Travel to Sceptre of Light."),
            },
        },
        {
            id = "turnin-1454-the-karnitol-shipwreck",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Karnitol Shipwreck.",
            complete = QuestState(1454, "completed"),
            dependsOn = { "accept-1454-the-karnitol-shipwreck" },
            route = {
                Point(1443, 0.3611, 0.3045, "The Karnitol Shipwreck",
                    "Travel to The Karnitol Shipwreck."),
            },
        },
        {
            id = "accept-1455-the-karnitol-shipwreck",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Karnitol Shipwreck.",
            complete = QuestState(1455, "activeOrCompleted"),
            route = {
                Point(1443, 0.3611, 0.3045, "The Karnitol Shipwreck",
                    "Travel to The Karnitol Shipwreck."),
            },
        },
        {
            id = "accept-6161-claim-rackmore-s-treasure",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Claim Rackmore's Treasure!.",
            complete = QuestState(6161, "activeOrCompleted"),
            route = {
                Point(1443, 0.3607, 0.3041, "Claim Rackmore's Treasure!",
                    "Travel to Claim Rackmore's Treasure!."),
            },
        },
        {
            id = "objective-6161-1-elixir-of-water-breathing",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Use Elixir of Water Breathing.",
            complete = QuestObjective(6161, 1, "Elixir of Water Breathing"),
            dependsOn = { "accept-6161-claim-rackmore-s-treasure" },
            route = {
                Point(1443, 0.3380, 0.3020, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "turnin-1455-the-karnitol-shipwreck",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Karnitol Shipwreck.",
            complete = QuestState(1455, "completed"),
            dependsOn = { "accept-1455-the-karnitol-shipwreck" },
            route = {
                Point(1443, 0.6620, 0.0963, "The Karnitol Shipwreck",
                    "Travel to The Karnitol Shipwreck."),
            },
        },
        {
            id = "accept-1456-the-karnitol-shipwreck",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Karnitol Shipwreck.",
            complete = QuestState(1456, "activeOrCompleted"),
            route = {
                Point(1443, 0.6620, 0.0963, "The Karnitol Shipwreck",
                    "Travel to The Karnitol Shipwreck."),
            },
        },
        {
            id = "turnin-1465-vahlarriel-s-search",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Vahlarriel's Search.",
            complete = QuestState(1465, "completed"),
            dependsOn = { "accept-1465-vahlarriel-s-search" },
            route = {
                Point(1443, 0.6644, 0.1182, "Vahlarriel's Search",
                    "Travel to Vahlarriel's Search."),
            },
        },
        {
            id = "accept-1438-vahlarriel-s-search",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Vahlarriel's Search.",
            complete = QuestState(1438, "activeOrCompleted"),
            route = {
                Point(1443, 0.6644, 0.1182, "Vahlarriel's Search",
                    "Travel to Vahlarriel's Search."),
            },
        },
        {
            id = "objective-5741-1-burning-blade-seer",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Kill Burning Blade Seer.",
            complete = QuestObjective(5741, 1, "Burning Blade Seer"),
            dependsOn = { "accept-5741-sceptre-of-light" },
            route = {
                Point(1443, 0.5517, 0.3015, "Burning Blade Seer",
                    "Travel to Burning Blade Seer."),
            },
        },
        {
            id = "turnin-1438-vahlarriel-s-search",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Vahlarriel's Search.",
            complete = QuestState(1438, "completed"),
            dependsOn = { "accept-1438-vahlarriel-s-search" },
            route = {
                Point(1443, 0.5486, 0.2613, "Vahlarriel's Search",
                    "Travel to Vahlarriel's Search."),
            },
        },
        {
            id = "accept-1439-search-for-tyranis",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Search for Tyranis.",
            complete = QuestState(1439, "activeOrCompleted"),
            route = {
                Point(1443, 0.5486, 0.2613, "Search for Tyranis",
                    "Travel to Search for Tyranis."),
            },
        },
        {
            id = "objective-1439-1-tyranis-malem",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Kill Tyranis Malem.",
            complete = QuestObjective(1439, 1, "Tyranis Malem"),
            dependsOn = { "accept-1439-search-for-tyranis" },
            route = {
                Point(1443, 0.5301, 0.2908, "Tyranis Malem",
                    "Travel to Tyranis Malem."),
            },
        },
        {
            id = "turnin-1439-search-for-tyranis",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Search for Tyranis.",
            complete = QuestState(1439, "completed"),
            dependsOn = { "accept-1439-search-for-tyranis", "objective-1439-1-tyranis-malem" },
            route = {
                Point(1443, 0.5486, 0.2613, "Search for Tyranis",
                    "Travel to Search for Tyranis."),
            },
        },
        {
            id = "accept-1440-return-to-vahlarriel",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Vahlarriel.",
            complete = QuestState(1440, "activeOrCompleted"),
            route = {
                Point(1443, 0.5486, 0.2613, "Return to Vahlarriel",
                    "Travel to Vahlarriel."),
            },
        },
        {
            id = "accept-5501-bone-collector",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bone Collector.",
            complete = QuestState(5501, "activeOrCompleted"),
            route = {
                Point(1443, 0.6233, 0.3898, "Bone Collector",
                    "Travel to Bone Collector."),
            },
        },
        {
            id = "objective-1387-1-magram-outrunner",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Kill Magram Outrunner.",
            complete = QuestObjective(1387, 1, "Magram Outrunner"),
            dependsOn = { "accept-1387-centaur-bounty" },
            route = {
                Point(1443, 0.6900, 0.6920, "Magram Outrunner",
                    "Travel to Magram Outrunner."),
            },
        },
        {
            id = "accept-5561-kodo-roundup",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Kodo Roundup.",
            complete = QuestState(5561, "activeOrCompleted"),
            route = {
                Point(1443, 0.6086, 0.6186, "Kodo Roundup",
                    "Travel to Kodo Roundup."),
            },
        },
        {
            id = "objective-5561-1-kodo-kombobulator",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Use Kodo Kombobulator.",
            complete = QuestObjective(5561, 1, "Kodo Kombobulator"),
            dependsOn = { "accept-5561-kodo-roundup" },
            route = {
                Point(1443, 0.5440, 0.6030, "Kodo Kombobulator",
                    "Travel to Kodo Kombobulator."),
            },
        },
        {
            id = "turnin-5561-kodo-roundup",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Kodo Roundup.",
            complete = QuestState(5561, "completed"),
            dependsOn = { "accept-5561-kodo-roundup", "objective-5561-1-kodo-kombobulator" },
            route = {
                Point(1443, 0.6086, 0.6186, "Kodo Roundup",
                    "Travel to Kodo Roundup."),
            },
        },
        {
            id = "turnin-1382-strange-alliance",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Strange Alliance.",
            complete = QuestState(1382, "completed"),
            dependsOn = { "accept-1382-strange-alliance" },
            route = {
                Point(1443, 0.3623, 0.7925, "Strange Alliance",
                    "Travel to Strange Alliance."),
            },
        },
        {
            id = "accept-1384-raid-on-the-kolkar",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raid on the Kolkar.",
            complete = QuestState(1384, "activeOrCompleted"),
            route = {
                Point(1443, 0.3623, 0.7925, "Raid on the Kolkar",
                    "Travel to Raid on the Kolkar."),
            },
        },
        {
            id = "turnin-1387-centaur-bounty",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Centaur Bounty.",
            complete = QuestState(1387, "completed"),
            dependsOn = { "accept-1387-centaur-bounty", "objective-1387-1-magram-outrunner" },
            route = {
                Point(1443, 0.6674, 0.1087, "Centaur Bounty",
                    "Travel to Centaur Bounty."),
            },
        },
        {
            id = "turnin-1440-return-to-vahlarriel",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Vahlarriel.",
            complete = QuestState(1440, "completed"),
            dependsOn = { "accept-1440-return-to-vahlarriel" },
            route = {
                Point(1443, 0.6644, 0.1182, "Return to Vahlarriel",
                    "Travel to Vahlarriel."),
            },
        },
        {
            id = "objective-1384-1-kolkar-ambusher",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Kill Kolkar Ambusher.",
            complete = QuestObjective(1384, 1, "Kolkar Ambusher"),
            dependsOn = { "accept-1384-raid-on-the-kolkar" },
            route = {
                Point(1443, 0.6840, 0.3900, "Kolkar Ambusher",
                    "Travel to Kolkar Ambusher."),
            },
        },
        {
            id = "turnin-5501-bone-collector",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bone Collector.",
            complete = QuestState(5501, "completed"),
            dependsOn = { "accept-5501-bone-collector" },
            route = {
                Point(1443, 0.6233, 0.3898, "Bone Collector",
                    "Travel to Bone Collector."),
            },
        },
        {
            id = "turnin-5741-sceptre-of-light",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Sceptre of Light.",
            complete = QuestState(5741, "completed"),
            dependsOn = { "accept-5741-sceptre-of-light", "objective-5741-1-burning-blade-seer" },
            route = {
                Point(1443, 0.3889, 0.2717, "Sceptre of Light",
                    "Travel to Sceptre of Light."),
            },
        },
        {
            id = "accept-6027-book-of-the-ancients",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Book of the Ancients.",
            complete = QuestState(6027, "activeOrCompleted"),
            route = {
                Point(1443, 0.3889, 0.2717, "Book of the Ancients",
                    "Travel to Book of the Ancients."),
            },
        },
        {
            id = "objective-6027-1-lord-kragaru",
            kind = "objective",
            priority = 410,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Kill Lord Kragaru.",
            complete = QuestObjective(6027, 1, "Lord Kragaru"),
            dependsOn = { "accept-6027-book-of-the-ancients" },
            route = {
                Point(1443, 0.2819, 0.0662, "Lord Kragaru",
                    "Travel to Lord Kragaru."),
            },
        },
        {
            id = "turnin-6161-claim-rackmore-s-treasure",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Claim Rackmore's Treasure!.",
            complete = QuestState(6161, "completed"),
            dependsOn = { "accept-6161-claim-rackmore-s-treasure", "objective-6161-1-elixir-of-water-breathing" },
            route = {
                Point(1443, 0.3000, 0.0870, "Claim Rackmore's Treasure!",
                    "Travel to Claim Rackmore's Treasure!."),
            },
        },
        {
            id = "turnin-6027-book-of-the-ancients",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Book of the Ancients.",
            complete = QuestState(6027, "completed"),
            dependsOn = { "accept-6027-book-of-the-ancients", "objective-6027-1-lord-kragaru" },
            route = {
                Point(1443, 0.4074, 0.2895, "Book of the Ancients",
                    "Travel to Book of the Ancients."),
            },
        },
        {
            id = "turnin-1384-raid-on-the-kolkar",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raid on the Kolkar.",
            complete = QuestState(1384, "completed"),
            dependsOn = { "accept-1384-raid-on-the-kolkar", "objective-1384-1-kolkar-ambusher" },
            route = {
                Point(1443, 0.3622, 0.7925, "Raid on the Kolkar",
                    "Travel to Raid on the Kolkar."),
            },
        },
        {
            id = "accept-1370-stealing-supplies",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Stealing Supplies.",
            complete = QuestState(1370, "activeOrCompleted"),
            route = {
                Point(1443, 0.3622, 0.7925, "Stealing Supplies",
                    "Travel to Stealing Supplies."),
            },
        },
        {
            id = "objective-1370-1-sack-of-meat",
            kind = "objective",
            priority = 460,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Click Sack of Meat.",
            complete = QuestObjective(1370, 1, "Sack of Meat"),
            dependsOn = { "accept-1370-stealing-supplies" },
            route = {
                Point(1443, 0.7090, 0.7530, "Sack of Meat",
                    "Travel to Sack of Meat."),
            },
        },
        {
            id = "turnin-1370-stealing-supplies",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Stealing Supplies.",
            complete = QuestState(1370, "completed"),
            dependsOn = { "accept-1370-stealing-supplies", "objective-1370-1-sack-of-meat" },
            route = {
                Point(1443, 0.3622, 0.7925, "Stealing Supplies",
                    "Travel to Stealing Supplies."),
            },
        },
        {
            id = "accept-1373-ongeku",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ongeku.",
            complete = QuestState(1373, "activeOrCompleted"),
            route = {
                Point(1443, 0.3622, 0.7925, "Ongeku",
                    "Travel to Ongeku."),
            },
        },
        {
            id = "turnin-1456-the-karnitol-shipwreck",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Karnitol Shipwreck.",
            complete = QuestState(1456, "completed"),
            dependsOn = { "accept-1456-the-karnitol-shipwreck" },
            route = {
                Point(1443, 0.6620, 0.0963, "The Karnitol Shipwreck",
                    "Travel to The Karnitol Shipwreck."),
            },
        },
        {
            id = "accept-1457-the-karnitol-shipwreck",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 38 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Karnitol Shipwreck.",
            complete = QuestState(1457, "activeOrCompleted"),
            route = {
                Point(1443, 0.6620, 0.0963, "The Karnitol Shipwreck",
                    "Travel to The Karnitol Shipwreck."),
            },
        },
        {
            id = "turnin-1459-reagents-for-reclaimers-inc",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Reagents for Reclaimers Inc.",
            complete = QuestState(1459, "completed"),
            dependsOn = { "accept-1459-reagents-for-reclaimers-inc" },
            route = {
                Point(1443, 0.6749, 0.1576, "Reagents for Reclaimers Inc",
                    "Travel to Reagents for Reclaimers Inc.."),
            },
        },
        {
            id = "turnin-1112-parts-for-kravel",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Parts for Kravel.",
            complete = QuestState(1112, "completed"),
            route = {
                Point(1441, 0.7779, 0.7726, "Parts for Kravel",
                    "Travel to Parts for Kravel."),
            },
        },
        {
            id = "accept-1114-delivery-to-the-gnomes",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Accept Delivery to the Gnomes.",
            complete = QuestState(1114, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Delivery to the Gnomes",
                    "Travel to Delivery to the Gnomes."),
            },
        },
        {
            id = "turnin-1114-delivery-to-the-gnomes",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Delivery to the Gnomes.",
            complete = QuestState(1114, "completed"),
            dependsOn = { "accept-1114-delivery-to-the-gnomes" },
            route = {
                Point(1441, 0.7806, 0.7712, "Delivery to the Gnomes",
                    "Travel to Delivery to the Gnomes."),
            },
        },
        {
            id = "accept-1115-the-rumormonger",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Rumormonger.",
            complete = QuestState(1115, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "The Rumormonger",
                    "Travel to The Rumormonger."),
            },
        },
        {
            id = "turnin-1183-goblin-sponsorship",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Goblin Sponsorship.",
            complete = QuestState(1183, "completed"),
            route = {
                Point(1441, 0.8018, 0.7588, "Goblin Sponsorship",
                    "Travel to Goblin Sponsorship."),
            },
        },
        {
            id = "accept-1186-the-eighteenth-pilot",
            kind = "accept",
            priority = 570,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Eighteenth Pilot.",
            complete = QuestState(1186, "activeOrCompleted"),
            route = {
                Point(1441, 0.8018, 0.7588, "The Eighteenth Pilot",
                    "Travel to The Eighteenth Pilot."),
            },
        },
        {
            id = "turnin-1186-the-eighteenth-pilot",
            kind = "turnin",
            priority = 580,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Eighteenth Pilot.",
            complete = QuestState(1186, "completed"),
            dependsOn = { "accept-1186-the-eighteenth-pilot" },
            route = {
                Point(1441, 0.8033, 0.7609, "The Eighteenth Pilot",
                    "Travel to The Eighteenth Pilot."),
            },
        },
        {
            id = "accept-1187-razzeric-s-tweaking",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Alliance" },
            } },
            text = "Accept Razzeric's Tweaking.",
            complete = QuestState(1187, "activeOrCompleted"),
            route = {
                Point(1441, 0.8033, 0.7609, "Razzeric's Tweaking",
                    "Travel to Razzeric's Tweaking."),
            },
        },
    },
})
