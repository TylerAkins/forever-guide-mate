local _, ns = ...

-- Horde Era leveling route for Desolace, levels 32-34.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Bone Collector (5501) is repeatable and does not stay complete. It stays off
-- the route until the quest is in your log.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DESOLACE = 1443,
    BARRENS = 1413,
    ORGRIMMAR = 1454,
    STONETALON = 1442,
    DUSTWALLOW = 1445,
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
    id = "leveling-era-32-34-desolace",
    title = "32-34 Desolace (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 32 } },
        },
    },
    goals = {
        {
            id = "accept-1145-the-swarm-grows",
            kind = "accept",
            priority = 20,
            text = "Accept The Swarm Grows from Korran in The Crossroads.",
            complete = QuestState(1145, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5109, 0.2959, "Korran",
                    "Travel to Korran."),
            },
        },
        {
            id = "turnin-1145-the-swarm-grows",
            kind = "turnin",
            priority = 40,
            text = "Turn in The Swarm Grows to Belgrom Rockmaul in Valley of Honor.",
            dependsOn = { "accept-1145-the-swarm-grows" },
            complete = QuestState(1145, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.7500, 0.3400, "Belgrom Rockmaul",
                    "Travel to Belgrom Rockmaul."),
            },
        },
        {
            id = "accept-1146-the-swarm-grows",
            kind = "accept",
            priority = 50,
            text = "Accept The Swarm Grows from Belgrom Rockmaul in Valley of Honor.",
            complete = QuestState(1146, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.7500, 0.3400, "Belgrom Rockmaul",
                    "Travel to Belgrom Rockmaul."),
            },
        },
        {
            id = "accept-1431-alliance-relations",
            kind = "accept",
            priority = 60,
            text = "Accept Alliance Relations from Craven Drok in Cleft of Shadow.",
            complete = QuestState(1431, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.5000, 0.4700, "Craven Drok",
                    "Travel to Craven Drok."),
            },
        },
        {
            id = "turnin-1431-alliance-relations",
            kind = "turnin",
            priority = 70,
            text = "Turn in Alliance Relations to Keldran in Orgrimmar.",
            dependsOn = { "accept-1431-alliance-relations" },
            complete = QuestState(1431, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.2240, 0.5280, "Keldran",
                    "Travel to Keldran."),
            },
        },
        {
            id = "accept-1432-alliance-relations",
            kind = "accept",
            priority = 80,
            text = "Accept Alliance Relations from Keldran in Orgrimmar.",
            complete = QuestState(1432, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.2240, 0.5280, "Keldran",
                    "Travel to Keldran."),
            },
        },
        {
            id = "accept-1362-the-kolkar-of-desolace",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { quest = { id = 1361, state = "completed" } },
                },
            },
            text = "Accept The Kolkar of Desolace from Regthar Deathgate in The Barrens.",
            complete = QuestState(1362, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4534, 0.2843, "Regthar Deathgate",
                    "Travel to Regthar Deathgate."),
            },
        },
        {
            id = "accept-5561-kodo-roundup",
            kind = "accept",
            priority = 130,
            text = "Accept Kodo Roundup from Smeed Scrabblescrew in Scrabblescrew's Camp.",
            complete = QuestState(5561, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.6085, 0.6192, "Smeed Scrabblescrew",
                    "Travel to Smeed Scrabblescrew."),
            },
        },
        {
            id = "turnin-1362-the-kolkar-of-desolace",
            kind = "turnin",
            priority = 150,
            conditions = {
                all = {
                    { quest = { id = 1361, state = "completed" } },
                },
            },
            text = "Turn in The Kolkar of Desolace to Felgur Twocuts in Ghost Walker Post.",
            dependsOn = { "accept-1362-the-kolkar-of-desolace" },
            complete = QuestState(1362, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5622, 0.5953, "Felgur Twocuts",
                    "Travel to Felgur Twocuts."),
            },
        },
        {
            id = "accept-1365-khan-dez-hepah",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { quest = { id = 1361, state = "completed" } },
                },
            },
            text = "Accept Khan Dez'hepah from Felgur Twocuts in Ghost Walker Post.",
            complete = QuestState(1365, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5622, 0.5953, "Felgur Twocuts",
                    "Travel to Felgur Twocuts."),
            },
        },
        {
            id = "accept-1368-gelkis-alliance",
            kind = "accept",
            priority = 170,
            text = "Accept Gelkis Alliance from Gurda Wildmane in Ghost Walker Post.",
            complete = QuestState(1368, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5625, 0.5960, "Gurda Wildmane",
                    "Travel to Gurda Wildmane."),
            },
        },
        {
            id = "turnin-1432-alliance-relations",
            kind = "turnin",
            priority = 180,
            text = "Turn in Alliance Relations to Takata Steelblade in Ghost Walker Post.",
            dependsOn = { "accept-1432-alliance-relations" },
            complete = QuestState(1432, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5259, 0.5432, "Takata Steelblade",
                    "Travel to Takata Steelblade."),
            },
        },
        {
            id = "accept-1433-alliance-relations",
            kind = "accept",
            priority = 190,
            text = "Accept Alliance Relations from Takata Steelblade in Ghost Walker Post.",
            complete = QuestState(1433, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5259, 0.5432, "Takata Steelblade",
                    "Travel to Takata Steelblade."),
            },
        },
        {
            id = "turnin-1433-alliance-relations",
            kind = "turnin",
            priority = 200,
            text = "Turn in Alliance Relations to Maurin Bonesplitter in Ghost Walker Post.",
            dependsOn = { "accept-1433-alliance-relations" },
            complete = QuestState(1433, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5224, 0.5350, "Maurin Bonesplitter",
                    "Travel to Maurin Bonesplitter."),
            },
        },
        {
            id = "accept-1435-the-burning-of-spirits",
            kind = "accept",
            priority = 210,
            text = "Accept The Burning of Spirits from Maurin Bonesplitter in Ghost Walker Post.",
            complete = QuestState(1435, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5224, 0.5350, "Maurin Bonesplitter",
                    "Travel to Maurin Bonesplitter."),
            },
        },
        {
            id = "objective-1365-khan-dez-hepah",
            kind = "objective",
            priority = 230,
            conditions = {
                all = {
                    { quest = { id = 1361, state = "completed" } },
                },
            },
            text = "Kill Khan Dez'hepah in Kolkar Village and collect Khan Dez'hepah's Head.",
            dependsOn = { "accept-1365-khan-dez-hepah" },
            complete = QuestState(1365, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.7397, 0.4916, "Khan Dez'hepah",
                    "Travel to Khan Dez'hepah."),
            },
        },
        {
            id = "objective-1368-gelkis-alliance",
            kind = "objective",
            priority = 240,
            text = "Kill Magram centaurs until you gain friendly reputation status with Gelkis.",
            dependsOn = { "accept-1368-gelkis-alliance" },
            complete = QuestState(1368, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.7350, 0.7350, "Gelkis Alliance",
                    "Travel to Gelkis Alliance."),
            },
        },
        {
            id = "objective-5561-kodo-roundup",
            kind = "objective",
            priority = 250,
            text = "Use the Kodo Kombobulator on the Dying Kodo in the Graveyard and then escort them to Smeed Scrabblescrew.",
            dependsOn = { "accept-5561-kodo-roundup" },
            complete = QuestState(5561, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.5100, 0.5900, "Continue toward Kodo Roundup",
                    "Continue toward Kodo Roundup."),
                Point(MAP.DESOLACE, 0.6080, 0.6190, "Dying Kodo",
                    "Travel to Dying Kodo."),
            },
        },
        {
            id = "turnin-5561-kodo-roundup",
            kind = "turnin",
            priority = 260,
            text = "Turn in Kodo Roundup to Smeed Scrabblescrew in Scrabblescrew's Camp.",
            dependsOn = { "objective-5561-kodo-roundup" },
            complete = QuestState(5561, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.6085, 0.6192, "Smeed Scrabblescrew",
                    "Travel to Smeed Scrabblescrew."),
            },
        },
        {
            id = "turnin-1365-khan-dez-hepah",
            kind = "turnin",
            priority = 280,
            conditions = {
                all = {
                    { quest = { id = 1361, state = "completed" } },
                },
            },
            text = "Turn in Khan Dez'hepah to Felgur Twocuts in Ghost Walker Post.",
            dependsOn = { "objective-1365-khan-dez-hepah" },
            complete = QuestState(1365, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5622, 0.5953, "Felgur Twocuts",
                    "Travel to Felgur Twocuts."),
            },
        },
        {
            id = "accept-1366-centaur-bounty",
            kind = "accept",
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 1361, state = "completed" } },
                },
            },
            text = "Accept Centaur Bounty from Felgur Twocuts in Ghost Walker Post.",
            complete = QuestState(1366, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5622, 0.5953, "Felgur Twocuts",
                    "Travel to Felgur Twocuts."),
            },
        },
        {
            id = "turnin-1368-gelkis-alliance",
            kind = "turnin",
            priority = 300,
            text = "Turn in Gelkis Alliance to Uthek the Wise in Gelkis Village.",
            dependsOn = { "objective-1368-gelkis-alliance" },
            complete = QuestState(1368, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.3630, 0.7927, "Uthek the Wise",
                    "Travel to Uthek the Wise."),
            },
        },
        {
            id = "accept-1370-stealing-supplies",
            kind = "accept",
            priority = 310,
            text = "Accept Stealing Supplies from Uthek the Wise in Gelkis Village.",
            complete = QuestState(1370, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.3630, 0.7927, "Uthek the Wise",
                    "Travel to Uthek the Wise."),
            },
        },
        {
            id = "accept-5381-hand-of-iruxos",
            kind = "accept",
            priority = 330,
            text = "Accept Hand of Iruxos from Taiga Wisemane in Shadowprey Village.",
            complete = QuestState(5381, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.2579, 0.6828, "Taiga Wisemane",
                    "Travel to Taiga Wisemane."),
            },
        },
        {
            id = "note-6143-shadowprey-village",
            kind = "note",
            priority = 340,
            text = "Set your hearth in Shadowprey Village with Innkeeper Sikewa.",
            route = {
                Point(MAP.DESOLACE, 0.2410, 0.6820, "Innkeeper Sikewa",
                    "Travel to Innkeeper Sikewa."),
            },
        },
        {
            id = "accept-6143-other-fish-to-fry",
            kind = "accept",
            priority = 350,
            text = "Accept Other Fish to Fry from Drulzegar Skraghook in Shadowprey Village.",
            complete = QuestState(6143, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.2328, 0.7283, "Drulzegar Skraghook",
                    "Travel to Drulzegar Skraghook."),
            },
        },
        {
            id = "accept-6142-clam-bait",
            kind = "accept",
            priority = 360,
            text = "Accept Clam Bait from Mai'Lahii in Shadowprey Village.",
            complete = QuestState(6142, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.2267, 0.7197, "Mai'Lahii",
                    "Travel to Mai'Lahii."),
            },
        },
        {
            id = "turnin-5421-fish-in-a-bucket",
            kind = "turnin",
            priority = 370,
            text = "Turn in Fish in a Bucket to Jinar'Zillen in Shadowprey Village. This is an elite. Bring a group.",
            complete = QuestState(5421, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.2240, 0.7300, "Jinar'Zillen",
                    "Travel to Jinar'Zillen."),
            },
        },
        {
            id = "accept-6161-claim-rackmore-s-treasure",
            kind = "accept",
            priority = 390,
            text = "Accept Claim Rackmore's Treasure! in Ethel Rethor.",
            complete = QuestState(6161, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.3603, 0.3041, "Ethel Rethor",
                    "Travel to Ethel Rethor."),
            },
        },
        {
            id = "accept-5741-sceptre-of-light",
            kind = "accept",
            priority = 400,
            text = "Accept Sceptre of Light from Azore Aldamort in Ethel Rethor.",
            complete = QuestState(5741, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.3804, 0.2457, "Continue toward Sceptre of Light",
                    "Continue toward Sceptre of Light."),
                Point(MAP.DESOLACE, 0.4122, 0.2905, "Continue toward Sceptre of Light",
                    "Continue toward Sceptre of Light."),
                Point(MAP.DESOLACE, 0.3889, 0.2721, "Azore Aldamort",
                    "Travel to Azore Aldamort."),
            },
        },
        {
            id = "objective-5741-sceptre-of-light",
            kind = "objective",
            priority = 420,
            text = "Go to the first watchtower on the left upon entering Thunder Axe Fortress. Work your way up, kill the Burning Blade Seer and take the Sceptre of Light.",
            dependsOn = { "accept-5741-sceptre-of-light" },
            complete = QuestState(5741, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.5520, 0.3010, "Burning Blade Seer",
                    "Travel to Burning Blade Seer."),
            },
        },
        {
            id = "objective-5381-hand-of-iruxos",
            kind = "objective",
            priority = 440,
            text = "Head into the biggest building in Thunder Axe Fortress. Clear the mainroom, use the Demon Pick on the Crystal in the center of the room. Kill the Demon Spirit that appears and collect the Demon Box.",
            dependsOn = { "accept-5381-hand-of-iruxos" },
            complete = QuestState(5381, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.5600, 0.2900, "Demon Spirit",
                    "Travel to Demon Spirit."),
            },
        },
        {
            id = "objective-1435-the-burning-of-spirits",
            kind = "objective",
            priority = 460,
            text = "Use the Burning Gem on the humanoids after you damage them to get 10 Infused Burning Gem in the Thunder Axe Fortress.",
            dependsOn = { "accept-1435-the-burning-of-spirits" },
            complete = QuestState(1435, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.5400, 0.2900, "Thunder Axe Fortress",
                    "Travel to Thunder Axe Fortress."),
            },
        },
        {
            id = "objective-1480-flayed-demon-skin-depricated",
            kind = "objective",
            priority = 470,
            text = "Kill Burning Blade enemies until you find Flayed Demon Skin [Depricated].",
            dependsOn = { "accept-1480-the-corrupter" },
            complete = QuestState(1480, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5620, 0.2810, "Burning Blade Felsworn",
                    "Travel to Burning Blade Felsworn."),
            },
        },
        {
            id = "accept-1480-the-corrupter",
            kind = "accept",
            priority = 480,
            text = "Use the Flayed Demon Skin [Depricated] to accept The Corrupter.",
            complete = QuestState(1480, "activeOrCompleted"),
        },
        {
            id = "turnin-1435-the-burning-of-spirits",
            kind = "turnin",
            priority = 500,
            text = "Turn in The Burning of Spirits to Maurin Bonesplitter in Ghost Walker Post.",
            dependsOn = { "objective-1435-the-burning-of-spirits" },
            complete = QuestState(1435, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5224, 0.5350, "Maurin Bonesplitter",
                    "Travel to Maurin Bonesplitter."),
            },
        },
        {
            id = "turnin-1480-the-corrupter",
            kind = "turnin",
            priority = 510,
            text = "Turn in The Corrupter to Maurin Bonesplitter in Ghost Walker Post.",
            dependsOn = { "objective-1480-flayed-demon-skin-depricated" },
            complete = QuestState(1480, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5224, 0.5350, "Maurin Bonesplitter",
                    "Travel to Maurin Bonesplitter."),
            },
        },
        {
            id = "accept-1481-the-corrupter",
            kind = "accept",
            priority = 520,
            text = "Accept The Corrupter from Maurin Bonesplitter in Ghost Walker Post.",
            complete = QuestState(1481, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5224, 0.5350, "Maurin Bonesplitter",
                    "Travel to Maurin Bonesplitter."),
            },
        },
        {
            id = "accept-1434-befouled-by-satyr",
            kind = "accept",
            priority = 530,
            text = "Accept Befouled by Satyr from Takata Steelblade in Ghost Walker Post.",
            complete = QuestState(1434, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5259, 0.5432, "Takata Steelblade",
                    "Travel to Takata Steelblade."),
            },
        },
        {
            id = "accept-5386-catch-of-the-day",
            kind = "accept",
            priority = 540,
            text = "Accept Catch of the Day from Nataka Longhorn in Ghost Walker Post.",
            complete = QuestState(5386, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5544, 0.5577, "Nataka Longhorn",
                    "Travel to Nataka Longhorn."),
            },
        },
        {
            id = "objective-5386-catch-of-the-day",
            kind = "objective",
            priority = 550,
            text = "Collect 2 Bloodbelly Fish, you can get it from completing 'Fish in a Bucket' quest from Jinar'Zillen in Shadowprey Village.",
            dependsOn = { "accept-5386-catch-of-the-day" },
            complete = QuestState(5386, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.2240, 0.7300, "Jinar'Zillen",
                    "Travel to Jinar'Zillen."),
            },
        },
        {
            id = "turnin-5386-catch-of-the-day",
            kind = "turnin",
            priority = 560,
            text = "Turn in Catch of the Day to Nataka Longhorn in Ghost Walker Post.",
            dependsOn = { "objective-5386-catch-of-the-day" },
            complete = QuestState(5386, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5544, 0.5577, "Nataka Longhorn",
                    "Travel to Nataka Longhorn."),
            },
        },
        {
            id = "objective-1481-the-corrupter",
            kind = "objective",
            priority = 580,
            text = "Kill Hatefury Shadowstalker to collect Shadowstalker Scalp Sargeron.",
            dependsOn = { "accept-1481-the-corrupter" },
            complete = QuestState(1481, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.7399, 0.2293, "Hatefury Shadowstalker",
                    "Travel to Hatefury Shadowstalker."),
            },
        },
        {
            id = "objective-1434-befouled-by-satyr",
            kind = "objective",
            priority = 590,
            text = "Kill 7 Hatefury Rogue, 7 Hatefury Felsworn, 7 Hatefury Betrayer and 7 Hatefury Hellcaller at Sergeron.",
            dependsOn = { "accept-1434-befouled-by-satyr" },
            complete = QuestState(1434, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.7500, 0.2200, "Hatefury Rogue",
                    "Travel to Hatefury Rogue."),
            },
        },
        {
            id = "accept-5501-bone-collector",
            kind = "accept",
            priority = 610,
            conditions = {
                all = {
                    { quest = { id = 5501, state = "active" } },
                },
            },
            text = "Accept Bone Collector from Bibbly F'utzbuckle in Kormek's Hut.",
            complete = QuestState(5501, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.6233, 0.3897, "Bibbly F'utzbuckle",
                    "Travel to Bibbly F'utzbuckle."),
            },
        },
        {
            id = "turnin-1434-befouled-by-satyr",
            kind = "turnin",
            priority = 630,
            text = "Turn in Befouled by Satyr to Takata Steelblade in Ghost Walker Post.",
            dependsOn = { "objective-1434-befouled-by-satyr" },
            complete = QuestState(1434, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5259, 0.5432, "Takata Steelblade",
                    "Travel to Takata Steelblade."),
            },
        },
        {
            id = "accept-1436-alliance-relations",
            kind = "accept",
            priority = 640,
            text = "Accept Alliance Relations from Takata Steelblade in Ghost Walker Post.",
            complete = QuestState(1436, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5259, 0.5432, "Takata Steelblade",
                    "Travel to Takata Steelblade."),
            },
        },
        {
            id = "turnin-1481-the-corrupter",
            kind = "turnin",
            priority = 650,
            text = "Turn in The Corrupter to Maurin Bonesplitter in Ghost Walker Post.",
            dependsOn = { "objective-1481-the-corrupter" },
            complete = QuestState(1481, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5224, 0.5350, "Maurin Bonesplitter",
                    "Travel to Maurin Bonesplitter."),
            },
        },
        {
            id = "accept-1482-the-corrupter",
            kind = "accept",
            priority = 660,
            text = "Accept The Corrupter from Maurin Bonesplitter in Ghost Walker Post.",
            complete = QuestState(1482, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5224, 0.5350, "Maurin Bonesplitter",
                    "Travel to Maurin Bonesplitter."),
            },
        },
        {
            id = "turnin-5741-sceptre-of-light",
            kind = "turnin",
            priority = 680,
            text = "Turn in Sceptre of Light to Azore Aldamort in Ethel Rethor.",
            dependsOn = { "objective-5741-sceptre-of-light" },
            complete = QuestState(5741, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.3889, 0.2719, "Azore Aldamort",
                    "Travel to Azore Aldamort."),
            },
        },
        {
            id = "accept-6027-book-of-the-ancients",
            kind = "accept",
            priority = 690,
            text = "Accept Book of the Ancients from Azore Aldamort in Ethel Rethor.",
            complete = QuestState(6027, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.3889, 0.2719, "Azore Aldamort",
                    "Travel to Azore Aldamort."),
            },
        },
        {
            id = "objective-6161-1-rackmore-s-golden-key",
            kind = "objective",
            priority = 700,
            text = "Kill Slitherblade enemies until you find Rackmore's Golden Key in Sar'theris Strand.",
            dependsOn = { "accept-6161-claim-rackmore-s-treasure" },
            complete = QuestObjective(6161, 1),
            route = {
                Point(MAP.DESOLACE, 0.3421, 0.3263, "Slitherblade Warrior",
                    "Travel to Slitherblade Warrior."),
            },
        },
        {
            id = "objective-6161-2-rackmore-s-silver-key",
            kind = "objective",
            priority = 710,
            text = "Kill Drysnap enemies until you find Rackmore's Silver Key in Ethel Rethor.",
            dependsOn = { "accept-6161-claim-rackmore-s-treasure" },
            complete = QuestObjective(6161, 2),
            route = {
                Point(MAP.DESOLACE, 0.3370, 0.2900, "Drysnap Pincer",
                    "Travel to Drysnap Pincer."),
            },
        },
        {
            id = "objective-6142-clam-bait",
            kind = "objective",
            priority = 730,
            text = "Collect 10 Soft-Shelled Clam Meat from Giant Softshell Clam in Sar'theris Strand.",
            dependsOn = { "accept-6142-clam-bait" },
            complete = QuestState(6142, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.3201, 0.3060, "Sar'theris Strand",
                    "Travel to Sar'theris Strand."),
            },
        },
        {
            id = "objective-6027-book-of-the-ancients",
            kind = "objective",
            priority = 750,
            text = "Clear the area around the Serpent Statue , then interact with it and kill the Slitherblade Sea Witch that spawns and collect the Book of the Ancients in Ranazjar Isle.",
            dependsOn = { "accept-6027-book-of-the-ancients" },
            complete = QuestState(6027, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.2818, 0.0664, "Slitherblade Sea Witch",
                    "Travel to Slitherblade Sea Witch."),
            },
        },
        {
            id = "turnin-6161-claim-rackmore-s-treasure",
            kind = "turnin",
            priority = 760,
            text = "Turn in Claim Rackmore's Treasure!",
            dependsOn = { "objective-6161-1-rackmore-s-golden-key", "objective-6161-2-rackmore-s-silver-key" },
            complete = QuestState(6161, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.3000, 0.0870, "Claim Rackmore's Treasure!",
                    "Travel to Claim Rackmore's Treasure!."),
            },
        },
        {
            id = "objective-6143-other-fish-to-fry",
            kind = "objective",
            priority = 780,
            text = "Kill 7 Slitherblade Myrmidon, 7 Slitherblade Naga and 5 Slitherblade Sorceress in Sar'theris Strand.",
            dependsOn = { "accept-6143-other-fish-to-fry" },
            complete = QuestState(6143, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.3200, 0.2400, "Slitherblade Myrmidon",
                    "Travel to Slitherblade Myrmidon."),
            },
        },
        {
            id = "objective-1482-the-corrupter",
            kind = "objective",
            priority = 790,
            text = "Collect an Oracle Crystal from a Slitherblade Oracle.",
            dependsOn = { "accept-1482-the-corrupter" },
            complete = QuestState(1482, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.3300, 0.2200, "Slitherblade Oracle",
                    "Travel to Slitherblade Oracle."),
            },
        },
        {
            id = "turnin-6027-book-of-the-ancients",
            kind = "turnin",
            priority = 810,
            text = "Turn in Book of the Ancients to Azore Aldamort in Ethel Rethor.",
            dependsOn = { "objective-6027-book-of-the-ancients" },
            complete = QuestState(6027, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.3889, 0.2719, "Azore Aldamort",
                    "Travel to Azore Aldamort."),
            },
        },
        {
            id = "turnin-1482-the-corrupter",
            kind = "turnin",
            priority = 830,
            text = "Turn in The Corrupter to Maurin Bonesplitter in Ghost Walker Post.",
            dependsOn = { "objective-1482-the-corrupter" },
            complete = QuestState(1482, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5589, 0.5340, "Continue toward The Corrupter",
                    "Continue toward The Corrupter."),
                Point(MAP.DESOLACE, 0.5224, 0.5350, "Maurin Bonesplitter",
                    "Travel to Maurin Bonesplitter."),
            },
        },
        {
            id = "accept-1484-the-corrupter",
            kind = "accept",
            priority = 840,
            text = "Accept The Corrupter from Maurin Bonesplitter in Ghost Walker Post.",
            complete = QuestState(1484, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5224, 0.5350, "Maurin Bonesplitter",
                    "Travel to Maurin Bonesplitter."),
            },
        },
        {
            id = "turnin-1484-the-corrupter",
            kind = "turnin",
            priority = 850,
            text = "Turn in The Corrupter to Takata Steelblade.",
            dependsOn = { "accept-1484-the-corrupter" },
            complete = QuestState(1484, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5260, 0.5430, "Takata Steelblade",
                    "Travel to Takata Steelblade."),
            },
        },
        {
            id = "objective-5501-bone-collector",
            kind = "objective",
            priority = 870,
            conditions = {
                all = {
                    { quest = { id = 5501, state = "active" } },
                },
            },
            text = "Collect 10 Kodo Bone lying around in Kodo Graveyard.",
            dependsOn = { "accept-5501-bone-collector" },
            complete = QuestState(5501, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.5100, 0.5900, "Kodo Graveyard",
                    "Travel to Kodo Graveyard."),
            },
        },
        {
            id = "objective-1370-stealing-supplies",
            kind = "objective",
            priority = 890,
            text = "Gather 6 bags of Crudely Dried Meat from the ground in the Magram Village.",
            dependsOn = { "accept-1370-stealing-supplies" },
            complete = QuestState(1370, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.6650, 0.8050, "Continue toward Stealing Supplies",
                    "Continue toward Stealing Supplies."),
                Point(MAP.DESOLACE, 0.6920, 0.7720, "Continue toward Stealing Supplies",
                    "Continue toward Stealing Supplies."),
                Point(MAP.DESOLACE, 0.7360, 0.7440, "Magram Village",
                    "Travel to Magram Village."),
            },
        },
        {
            id = "objective-1366-centaur-bounty",
            kind = "objective",
            priority = 900,
            conditions = {
                all = {
                    { quest = { id = 1361, state = "completed" } },
                },
            },
            text = "Kill the Centaurs in the Magram Village for 15 Centaur Ear.",
            dependsOn = { "accept-1366-centaur-bounty" },
            complete = QuestState(1366, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.7000, 0.7400, "Kolkar Scout",
                    "Travel to Kolkar Scout."),
            },
        },
        {
            id = "turnin-1366-centaur-bounty",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { quest = { id = 1361, state = "completed" } },
                },
            },
            text = "Turn in Centaur Bounty to Felgur Twocuts in Ghost Walker Post.",
            dependsOn = { "objective-1366-centaur-bounty" },
            complete = QuestState(1366, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5622, 0.5953, "Felgur Twocuts",
                    "Travel to Felgur Twocuts."),
            },
        },
        {
            id = "turnin-5501-bone-collector",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { quest = { id = 5501, state = "active" } },
                },
            },
            text = "Turn in Bone Collector to Bibbly F'utzbuckle in Kormek's Hut.",
            dependsOn = { "objective-5501-bone-collector" },
            complete = QuestState(5501, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.6233, 0.3901, "Bibbly F'utzbuckle",
                    "Travel to Bibbly F'utzbuckle."),
            },
        },
        {
            id = "turnin-5381-hand-of-iruxos",
            kind = "turnin",
            priority = 960,
            text = "Turn in Hand of Iruxos to Taiga Wisemane in Shadowprey Village.",
            dependsOn = { "objective-5381-hand-of-iruxos" },
            complete = QuestState(5381, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.2579, 0.6828, "Taiga Wisemane",
                    "Travel to Taiga Wisemane."),
            },
        },
        {
            id = "turnin-1370-stealing-supplies",
            kind = "turnin",
            priority = 970,
            text = "Turn in Stealing Supplies to Uthek the Wise in Gelkis Village.",
            dependsOn = { "objective-1370-stealing-supplies" },
            complete = QuestState(1370, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.3631, 0.7927, "Uthek the Wise",
                    "Travel to Uthek the Wise."),
            },
        },
        {
            id = "turnin-6143-other-fish-to-fry",
            kind = "turnin",
            priority = 980,
            text = "Turn in Other Fish to Fry to Drulzegar Skraghook in Shadowprey Village.",
            dependsOn = { "objective-6143-other-fish-to-fry" },
            complete = QuestState(6143, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.2328, 0.7283, "Drulzegar Skraghook",
                    "Travel to Drulzegar Skraghook."),
            },
        },
        {
            id = "turnin-6142-clam-bait",
            kind = "turnin",
            priority = 990,
            text = "Turn in Clam Bait to Mai'Lahii in Shadowprey Village.",
            dependsOn = { "objective-6142-clam-bait" },
            complete = QuestState(6142, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.2267, 0.7197, "Mai'Lahii",
                    "Travel to Mai'Lahii."),
            },
        },
        {
            id = "accept-5763-hunting-in-stranglethorn",
            kind = "accept",
            priority = 1000,
            text = "Accept Hunting in Stranglethorn from Roon Wildmane in Shadowprey Village.",
            complete = QuestState(5763, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.2510, 0.7239, "Roon Wildmane",
                    "Travel to Roon Wildmane."),
            },
        },
        {
            id = "accept-1268-suspicious-hoofprints",
            kind = "accept",
            priority = 1030,
            text = "Accept Suspicious Hoofprints in Shady Rest Inn.",
            complete = QuestState(1268, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.2970, 0.4770, "Shady Rest Inn",
                    "Travel to Shady Rest Inn."),
            },
        },
        {
            id = "accept-1269-lieutenant-paval-reethe",
            kind = "accept",
            priority = 1040,
            text = "Accept Lieutenant Paval Reethe in Shady Rest Inn.",
            complete = QuestState(1269, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.2980, 0.4820, "Shady Rest Inn",
                    "Travel to Shady Rest Inn."),
            },
        },
        {
            id = "accept-1251-the-black-shield",
            kind = "accept",
            priority = 1050,
            text = "Accept The Black Shield in Shady Rest Inn.",
            complete = QuestState(1251, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.2980, 0.4810, "Shady Rest Inn",
                    "Travel to Shady Rest Inn."),
            },
        },
        {
            id = "turnin-1251-the-black-shield",
            kind = "turnin",
            priority = 1070,
            text = "Turn in The Black Shield to Krog in Brackenwall Village.",
            dependsOn = { "accept-1251-the-black-shield" },
            complete = QuestState(1251, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3182, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "accept-1321-the-black-shield",
            kind = "accept",
            priority = 1080,
            text = "Accept The Black Shield from Krog in Brackenwall Village.",
            complete = QuestState(1321, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3182, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "turnin-1268-suspicious-hoofprints",
            kind = "turnin",
            priority = 1090,
            text = "Turn in Suspicious Hoofprints to Krog in Brackenwall Village.",
            dependsOn = { "accept-1268-suspicious-hoofprints" },
            complete = QuestState(1268, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3182, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "turnin-1269-lieutenant-paval-reethe",
            kind = "turnin",
            priority = 1100,
            text = "Turn in Lieutenant Paval Reethe to Krog in Brackenwall Village.",
            dependsOn = { "accept-1269-lieutenant-paval-reethe" },
            complete = QuestState(1269, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3182, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "turnin-1321-the-black-shield",
            kind = "turnin",
            priority = 1110,
            text = "Turn in The Black Shield to Do'gol in Brackenwall Village.",
            dependsOn = { "accept-1321-the-black-shield" },
            complete = QuestState(1321, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3654, 0.3086, "Do'gol",
                    "Travel to Do'gol."),
            },
        },
        {
            id = "turnin-1178-goblin-sponsorship",
            kind = "turnin",
            priority = 1130,
            text = "Turn in Goblin Sponsorship to Gazlowe in Ratchet.",
            complete = QuestState(1178, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6267, 0.3627, "Gazlowe",
                    "Travel to Gazlowe."),
            },
        },
        {
            id = "accept-1180-goblin-sponsorship",
            kind = "accept",
            priority = 1140,
            text = "Accept Goblin Sponsorship from Gazlowe in Ratchet.",
            complete = QuestState(1180, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6267, 0.3627, "Gazlowe",
                    "Travel to Gazlowe."),
            },
        },
        {
            id = "accept-1112-parts-for-kravel",
            kind = "accept",
            priority = 1150,
            conditions = {
                all = {
                    { quest = { id = 1112, state = "completed" } },
                },
            },
            text = "Accept Parts for Kravel from Wharfmaster Dizzywig in Ratchet.",
            complete = QuestState(1112, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6333, 0.3841, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
    },
})
