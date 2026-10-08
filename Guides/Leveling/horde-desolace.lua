local _, ns = ...

-- Forever Casual spine: Desolace (34-36)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves:
-- 93225 Carved Centaur Totems (lvl 40) and 94873 Buying Friendship: Gelkis (lvl 45) wait at Ghost Walker (Gurda) until level; Gelkis elite 96222 is on part 2.
-- 97265 Hate the Hatefury from Aka'rai near Shadowprey Village.
-- Dalaran attunement Forever quests stay in Guides/Dungeons.
-- No-pin Desolace Forever quests (profession Nijel batch, Khan remakes without pins, etc.) omitted.
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
    DESOLACE = 1443,
    ORGRIMMAR = 1454,
}

ns:RegisterGuide({
    id = "leveling-era-horde-desolace",
    title = "Desolace",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 34 } },
        },
    },
    goals = {
        {
            id = "accept-1480-the-corrupter",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept The Corrupter.",
            complete = QuestState(1480, "activeOrCompleted"),
            route = {
                Point(1443, 0.5780, 0.2540, "The Corrupter",
                    "Travel to The Corrupter."),
            },
        },
        {
            id = "accept-5741-sceptre-of-light",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Accept Sceptre of Light.",
            complete = QuestState(5741, "activeOrCompleted"),
            route = {
                Point(1443, 0.3888, 0.2717, "Sceptre of Light",
                    "Travel to Sceptre of Light."),
            },
        },
        {
            id = "turnin-5361-family-tree",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Family Tree.",
            complete = QuestState(5361, "completed"),
            route = {
                Point(1443, 0.5610, 0.5366, "Family Tree",
                    "Travel to Family Tree."),
            },
        },
        {
            id = "turnin-1432-alliance-relations",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Alliance Relations.",
            complete = QuestState(1432, "completed"),
            route = {
                Point(1443, 0.5257, 0.5439, "Alliance Relations",
                    "Travel to Alliance Relations."),
            },
        },
        {
            id = "accept-1433-alliance-relations",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Alliance Relations.",
            complete = QuestState(1433, "activeOrCompleted"),
            route = {
                Point(1443, 0.5257, 0.5439, "Alliance Relations",
                    "Travel to Alliance Relations."),
            },
        },
        {
            id = "accept-1434-befouled-by-satyr",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Befouled by Satyr.",
            complete = QuestState(1434, "activeOrCompleted"),
            route = {
                Point(1443, 0.5257, 0.5439, "Befouled by Satyr",
                    "Travel to Befouled by Satyr."),
            },
        },
        {
            id = "turnin-1433-alliance-relations",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Alliance Relations.",
            complete = QuestState(1433, "completed"),
            dependsOn = { "accept-1433-alliance-relations" },
            route = {
                Point(1443, 0.5224, 0.5344, "Alliance Relations",
                    "Travel to Alliance Relations."),
            },
        },
        {
            id = "accept-1435-the-burning-of-spirits",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept The Burning of Spirits.",
            complete = QuestState(1435, "activeOrCompleted"),
            route = {
                Point(1443, 0.5224, 0.5344, "The Burning of Spirits",
                    "Travel to The Burning of Spirits."),
            },
        },
        {
            id = "turnin-1480-the-corrupter",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Corrupter.",
            complete = QuestState(1480, "completed"),
            dependsOn = { "accept-1480-the-corrupter" },
            route = {
                Point(1443, 0.5224, 0.5344, "The Corrupter",
                    "Travel to The Corrupter."),
            },
        },
        {
            id = "accept-1481-the-corrupter",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept The Corrupter.",
            complete = QuestState(1481, "activeOrCompleted"),
            route = {
                Point(1443, 0.5224, 0.5344, "The Corrupter",
                    "Travel to The Corrupter."),
            },
        },
        {
            id = "accept-1365-khan-dez-hepah",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Khan Dez'hepah.",
            complete = QuestState(1365, "activeOrCompleted"),
            route = {
                Point(1443, 0.5620, 0.5957, "Khan Dez'hepah",
                    "Travel to Khan Dez'hepah."),
            },
        },
        {
            id = "accept-1368-gelkis-alliance",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Gelkis Alliance.",
            complete = QuestState(1368, "activeOrCompleted"),
            route = {
                Point(1443, 0.5629, 0.5968, "Gelkis Alliance",
                    "Travel to Gelkis Alliance."),
            },
        },
        {
            id = "objective-1365-1-khan-dez-hepah",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Kill Khan Dez'hepah.",
            complete = QuestObjective(1365, 1, "Khan Dez'hepah"),
            dependsOn = { "accept-1365-khan-dez-hepah" },
            route = {
                Point(1443, 0.7468, 0.4884, "Khan Dez'hepah",
                    "Travel to Khan Dez'hepah."),
            },
        },
        {
            id = "objective-1481-1-hatefury-shadowstalker",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Kill Hatefury Shadowstalker.",
            complete = QuestObjective(1481, 1, "Hatefury Shadowstalker"),
            dependsOn = { "accept-1481-the-corrupter" },
            route = {
                Point(1443, 0.7240, 0.2420, "Hatefury Shadowstalker",
                    "Travel to Hatefury Shadowstalker."),
            },
        },
        {
            id = "accept-5501-bone-collector",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Accept Bone Collector.",
            complete = QuestState(5501, "activeOrCompleted"),
            route = {
                Point(1443, 0.6233, 0.3898, "Bone Collector",
                    "Travel to Bone Collector."),
            },
        },
        {
            id = "turnin-1434-befouled-by-satyr",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Befouled by Satyr.",
            complete = QuestState(1434, "completed"),
            dependsOn = { "accept-1434-befouled-by-satyr" },
            route = {
                Point(1443, 0.5589, 0.5349, "Befouled by Satyr",
                    "Travel to Befouled by Satyr."),
            },
        },
        {
            id = "turnin-1481-the-corrupter",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Corrupter.",
            complete = QuestState(1481, "completed"),
            dependsOn = { "accept-1481-the-corrupter", "objective-1481-1-hatefury-shadowstalker" },
            route = {
                Point(1443, 0.5225, 0.5345, "The Corrupter",
                    "Travel to The Corrupter."),
            },
        },
        {
            id = "accept-1482-the-corrupter",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept The Corrupter.",
            complete = QuestState(1482, "activeOrCompleted"),
            route = {
                Point(1443, 0.5225, 0.5345, "The Corrupter",
                    "Travel to The Corrupter."),
            },
        },
        {
            id = "turnin-1365-khan-dez-hepah",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Khan Dez'hepah.",
            complete = QuestState(1365, "completed"),
            dependsOn = { "accept-1365-khan-dez-hepah", "objective-1365-1-khan-dez-hepah" },
            route = {
                Point(1443, 0.5620, 0.5956, "Khan Dez'hepah",
                    "Travel to Khan Dez'hepah."),
            },
        },
        {
            id = "accept-1366-centaur-bounty",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Centaur Bounty.",
            complete = QuestState(1366, "activeOrCompleted"),
            route = {
                Point(1443, 0.5620, 0.5956, "Centaur Bounty",
                    "Travel to Centaur Bounty."),
            },
        },
        {
            id = "objective-1366-1-magram-outrunner",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Kill Magram Outrunner.",
            complete = QuestObjective(1366, 1, "Magram Outrunner"),
            dependsOn = { "accept-1366-centaur-bounty" },
            route = {
                Point(1443, 0.6900, 0.6920, "Magram Outrunner",
                    "Travel to Magram Outrunner."),
            },
        },
        {
            id = "accept-5561-kodo-roundup",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
            priority = 230,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
            priority = 240,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
            id = "turnin-1366-centaur-bounty",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Centaur Bounty.",
            complete = QuestState(1366, "completed"),
            dependsOn = { "accept-1366-centaur-bounty", "objective-1366-1-magram-outrunner" },
            route = {
                Point(1443, 0.5619, 0.5956, "Centaur Bounty",
                    "Travel to Centaur Bounty."),
            },
        },
        {
            id = "turnin-1368-gelkis-alliance",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gelkis Alliance.",
            complete = QuestState(1368, "completed"),
            dependsOn = { "accept-1368-gelkis-alliance" },
            route = {
                Point(1443, 0.3623, 0.7925, "Gelkis Alliance",
                    "Travel to Gelkis Alliance."),
            },
        },
        {
            id = "accept-1370-stealing-supplies",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Accept Stealing Supplies.",
            complete = QuestState(1370, "activeOrCompleted"),
            route = {
                Point(1443, 0.3623, 0.7925, "Stealing Supplies",
                    "Travel to Stealing Supplies."),
            },
        },
        {
            id = "accept-5381-hand-of-iruxos",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Hand of Iruxos.",
            complete = QuestState(5381, "activeOrCompleted"),
            route = {
                Point(1443, 0.2627, 0.7483, "Hand of Iruxos",
                    "Travel to Hand of Iruxos."),
            },
        },
        {
            id = "woven-accept-97265-hate-the-hatefury",
            kind = "accept",
            priority = 245,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Hate the Hatefury from Aka'rai near Shadowprey Village.",
            complete = QuestState(97265, "activeOrCompleted"),
            route = {
                Point(1443, 0.2520, 0.6720, "Aka'rai",
                    "Travel to Aka'rai."),
            },
        },
        {
            id = "woven-objective-97265-hate-the-hatefury",
            kind = "objective",
            priority = 246,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Hate the Hatefury: slay Hatefury Tricksters, Hellcallers, Shadowstalkers, and Felsworn.",
            complete = QuestState(97265, "complete"),
            dependsOn = { "woven-accept-97265-hate-the-hatefury" },
            route = {
                Point(1443, 0.7240, 0.2420, "Hatefury Shadowstalker",
                    "Travel to Hatefury Shadowstalker."),
            },
        },
        {
            id = "woven-turnin-97265-hate-the-hatefury",
            kind = "turnin",
            priority = 247,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hate the Hatefury to Aka'rai near Shadowprey Village.",
            complete = QuestState(97265, "completed"),
            dependsOn = { "woven-accept-97265-hate-the-hatefury", "woven-objective-97265-hate-the-hatefury" },
            route = {
                Point(1443, 0.2520, 0.6720, "Aka'rai",
                    "Travel to Aka'rai."),
            },
        },
        {
            id = "accept-6143-other-fish-to-fry",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Other Fish to Fry.",
            complete = QuestState(6143, "activeOrCompleted"),
            route = {
                Point(1443, 0.2332, 0.7287, "Other Fish to Fry",
                    "Travel to Other Fish to Fry."),
            },
        },
        {
            id = "accept-6142-clam-bait",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Clam Bait.",
            complete = QuestState(6142, "activeOrCompleted"),
            route = {
                Point(1443, 0.2265, 0.7197, "Clam Bait",
                    "Travel to Clam Bait."),
            },
        },
        {
            id = "turnin-5501-bone-collector",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
            id = "objective-5741-1-burning-blade-seer",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
            id = "objective-5381-1-hand-of-iruxos-crystal",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Click Hand of Iruxos Crystal.",
            complete = QuestObjective(5381, 1, "Hand of Iruxos Crystal"),
            dependsOn = { "accept-5381-hand-of-iruxos" },
            route = {
                Point(1443, 0.5497, 0.2665, "Hand of Iruxos Crystal",
                    "Travel to Hand of Iruxos Crystal."),
            },
        },
        {
            id = "turnin-5741-sceptre-of-light",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Turn in Sceptre of Light.",
            complete = QuestState(5741, "completed"),
            dependsOn = { "accept-5741-sceptre-of-light", "objective-5741-1-burning-blade-seer" },
            route = {
                Point(1443, 0.3888, 0.2717, "Sceptre of Light",
                    "Travel to Sceptre of Light."),
            },
        },
        {
            id = "accept-6027-book-of-the-ancients",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Accept Book of the Ancients.",
            complete = QuestState(6027, "activeOrCompleted"),
            route = {
                Point(1443, 0.3888, 0.2717, "Book of the Ancients",
                    "Travel to Book of the Ancients."),
            },
        },
        {
            id = "accept-6161-claim-rackmore-s-treasure",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
            priority = 370,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
            id = "turnin-6161-claim-rackmore-s-treasure",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
            id = "objective-6027-1-lord-kragaru",
            kind = "objective",
            priority = 390,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
            id = "turnin-6027-book-of-the-ancients",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
            id = "turnin-1435-the-burning-of-spirits",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Burning of Spirits.",
            complete = QuestState(1435, "completed"),
            dependsOn = { "accept-1435-the-burning-of-spirits" },
            route = {
                Point(1443, 0.5589, 0.5349, "The Burning of Spirits",
                    "Travel to The Burning of Spirits."),
            },
        },
        {
            id = "turnin-1482-the-corrupter",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Corrupter.",
            complete = QuestState(1482, "completed"),
            dependsOn = { "accept-1482-the-corrupter" },
            route = {
                Point(1443, 0.5589, 0.5349, "The Corrupter",
                    "Travel to The Corrupter."),
            },
        },
        {
            id = "accept-1484-the-corrupter",
            kind = "accept",
            priority = 430,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept The Corrupter.",
            complete = QuestState(1484, "activeOrCompleted"),
            route = {
                Point(1443, 0.5225, 0.5344, "The Corrupter",
                    "Travel to The Corrupter."),
            },
        },
        {
            id = "turnin-1484-the-corrupter",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Corrupter.",
            complete = QuestState(1484, "completed"),
            dependsOn = { "accept-1484-the-corrupter" },
            route = {
                Point(1443, 0.5257, 0.5438, "The Corrupter",
                    "Travel to The Corrupter."),
            },
        },
        {
            id = "accept-1436-alliance-relations",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Alliance Relations.",
            complete = QuestState(1436, "activeOrCompleted"),
            route = {
                Point(1443, 0.5257, 0.5438, "Alliance Relations",
                    "Travel to Alliance Relations."),
            },
        },
        {
            id = "objective-1370-1-sack-of-meat",
            kind = "objective",
            priority = 460,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
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
                { faction = "Horde" },
            } },
            text = "Turn in Stealing Supplies.",
            complete = QuestState(1370, "completed"),
            dependsOn = { "accept-1370-stealing-supplies", "objective-1370-1-sack-of-meat" },
            route = {
                Point(1443, 0.3623, 0.7925, "Stealing Supplies",
                    "Travel to Stealing Supplies."),
            },
        },
        {
            id = "accept-1373-ongeku",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Ongeku.",
            complete = QuestState(1373, "activeOrCompleted"),
            route = {
                Point(1443, 0.3623, 0.7925, "Ongeku",
                    "Travel to Ongeku."),
            },
        },
        {
            id = "accept-5763-hunting-in-stranglethorn",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 36 } },
                { faction = "Horde" },
            } },
            text = "Accept Hunting in Stranglethorn.",
            complete = QuestState(5763, "activeOrCompleted"),
            route = {
                Point(1443, 0.2627, 0.7483, "Hunting in Stranglethorn",
                    "Travel to Hunting in Stranglethorn."),
            },
        },
        {
            id = "turnin-5381-hand-of-iruxos",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hand of Iruxos.",
            complete = QuestState(5381, "completed"),
            dependsOn = { "accept-5381-hand-of-iruxos", "objective-5381-1-hand-of-iruxos-crystal" },
            route = {
                Point(1443, 0.2581, 0.6822, "Hand of Iruxos",
                    "Travel to Hand of Iruxos."),
            },
        },
        {
            id = "turnin-6143-other-fish-to-fry",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Other Fish to Fry.",
            complete = QuestState(6143, "completed"),
            dependsOn = { "accept-6143-other-fish-to-fry" },
            route = {
                Point(1443, 0.2332, 0.7287, "Other Fish to Fry",
                    "Travel to Other Fish to Fry."),
            },
        },
        {
            id = "turnin-6142-clam-bait",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Clam Bait.",
            complete = QuestState(6142, "completed"),
            dependsOn = { "accept-6142-clam-bait" },
            route = {
                Point(1443, 0.2264, 0.7197, "Clam Bait",
                    "Travel to Clam Bait."),
            },
        },
        {
            id = "turnin-1436-alliance-relations",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Turn in Alliance Relations.",
            complete = QuestState(1436, "completed"),
            dependsOn = { "accept-1436-alliance-relations" },
            route = {
                Point(1454, 0.2256, 0.5263, "Alliance Relations",
                    "Travel to Alliance Relations."),
            },
        },
        {
            id = "woven-accept-93225-carved-centaur-totems",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Accept Carved Centaur Totems from Gurda Wildmane at Ghost Walker Post.",
            complete = QuestState(93225, "activeOrCompleted"),
            route = {
                Point(1443, 0.5620, 0.5960, "Gurda Wildmane",
                    "Travel to Gurda Wildmane."),
            },
        },
        {
            id = "woven-objective-93225-carved-centaur-totems",
            kind = "objective",
            priority = 541,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Carved Centaur Totems: collect Carved Centaur Totems.",
            complete = QuestObjective(93225, 1, "Carved Centaur Totem"),
            dependsOn = { "woven-accept-93225-carved-centaur-totems" },
            useClientPin = true,
            route = {
                Point(1443, 0.5620, 0.5960, "Gurda Wildmane",
                    "Travel to Gurda Wildmane."),
            },
        },
        {
            id = "woven-turnin-93225-carved-centaur-totems",
            kind = "turnin",
            priority = 542,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Horde" },
            } },
            text = "Turn in Carved Centaur Totems to Gurda Wildmane at Ghost Walker Post.",
            complete = QuestState(93225, "completed"),
            dependsOn = { "woven-accept-93225-carved-centaur-totems", "woven-objective-93225-carved-centaur-totems" },
            route = {
                Point(1443, 0.5620, 0.5960, "Gurda Wildmane",
                    "Travel to Gurda Wildmane."),
            },
        },
        {
            id = "woven-accept-94873-buying-friendship-gelkis",
            kind = "accept",
            priority = 543,
            conditions = { level = { min = 45 } },
            text = "Accept Buying Friendship: Gelkis from Gurda Wildmane at Ghost Walker Post.",
            complete = QuestState(94873, "activeOrCompleted"),
            route = {
                Point(1443, 0.5620, 0.5960, "Gurda Wildmane",
                    "Travel to Gurda Wildmane."),
            },
        },
        {
            id = "woven-objective-94873-buying-friendship-gelkis",
            kind = "objective",
            priority = 544,
            conditions = { level = { min = 45 } },
            text = "Buying Friendship: Gelkis: deliver the Totem Tote.",
            complete = QuestState(94873, "complete"),
            dependsOn = { "woven-accept-94873-buying-friendship-gelkis" },
            useClientPin = true,
            route = {
                Point(1443, 0.5620, 0.5960, "Gurda Wildmane",
                    "Travel to Gurda Wildmane."),
            },
        },
        {
            id = "woven-turnin-94873-buying-friendship-gelkis",
            kind = "turnin",
            priority = 545,
            conditions = { level = { min = 45 } },
            text = "Turn in Buying Friendship: Gelkis to Molkar.",
            complete = QuestState(94873, "completed"),
            dependsOn = { "woven-accept-94873-buying-friendship-gelkis", "woven-objective-94873-buying-friendship-gelkis" },
            route = {
                Point(1443, 0.3560, 0.9200, "Molkar",
                    "Travel to Molkar."),
            },
        },
    },
})
