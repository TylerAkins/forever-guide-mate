local _, ns = ...

-- Horde Era leveling route for the Western Plaguelands, levels 57-58.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    WESTERN_PLAGUELANDS = 1422,
    TIRISFAL = 1420,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
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
    id = "leveling-era-57-58-western-plaguelands",
    title = "57-58 Western Plaguelands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 57 } },
        },
    },
    goals = {
        {
            id = "note-switch-guide",
            kind = "note",
            priority = 10,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 5152, state = "activeOrCompleted" } } },
                },
            },
            text = "Switch and complete #1422(56-56)#1422(56-56)\") before starting this guide.",
        },
        {
            id = "note-switch-guide-2",
            kind = "note",
            priority = 20,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 5152, state = "activeOrCompleted" } } },
                },
            },
            text = "Switch and complete #1423(56-57)#1423(56-57)\") before starting this guide.",
        },
        {
            id = "turnin-5236-return-to-the-bulwark",
            kind = "turnin",
            priority = 40,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis in The Bulwark.",
            complete = QuestState(5236, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8305, 0.7191, "Shadow Priestess Vandis",
                    "Travel to Shadow Priestess Vandis."),
            },
        },
        {
            id = "turnin-5901-a-plague-upon-thee",
            kind = "turnin",
            priority = 50,
            text = "Turn in A Plague Upon Thee to Mickey Levine in The Bulwark.",
            complete = QuestState(5901, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8328, 0.7234, "Mickey Levine",
                    "Travel to Mickey Levine."),
            },
        },
        {
            id = "accept-5902-a-plague-upon-thee",
            kind = "accept",
            priority = 60,
            text = "Accept A Plague Upon Thee from Mickey Levine in The Bulwark.",
            complete = QuestState(5902, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8328, 0.7234, "Mickey Levine",
                    "Travel to Mickey Levine."),
            },
        },
        {
            id = "turnin-5237-mission-accomplished",
            kind = "turnin",
            priority = 70,
            text = "Turn in Mission Accomplished! to High Executor Derrington in The Bulwark. This is an elite. Bring a group.",
            complete = QuestState(5237, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8314, 0.6896, "High Executor Derrington",
                    "Travel to High Executor Derrington."),
            },
        },
        {
            id = "accept-5098-all-along-the-watchtowers",
            kind = "accept",
            priority = 80,
            text = "Accept All Along the Watchtowers from High Executor Derrington in The Bulwark.",
            complete = QuestState(5098, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8314, 0.6896, "High Executor Derrington",
                    "Travel to High Executor Derrington."),
            },
        },
        {
            id = "accept-5051-two-halves-become-one",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { quest = { id = 5050, state = "completed" } },
                },
            },
            text = "Accept Two Halves Become One from Janice Felstone in Felstone Field.",
            complete = QuestState(5051, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3839, 0.5406, "Janice Felstone",
                    "Travel to Janice Felstone."),
            },
        },
        {
            id = "objective-5051-1-jabbering-ghoul",
            kind = "objective",
            priority = 100,
            conditions = {
                all = {
                    { quest = { id = 5050, state = "completed" } },
                },
            },
            text = "Kill Jabbering Ghoul and collect Good Luck Other-Half-Charm in Felstone Field.",
            dependsOn = { "accept-5051-two-halves-become-one" },
            complete = QuestObjective(5051, 1),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3681, 0.5832, "Jabbering Ghoul",
                    "Travel to Jabbering Ghoul."),
            },
        },
        {
            id = "objective-5051-two-halves-become-one",
            kind = "objective",
            priority = 110,
            conditions = {
                all = {
                    { quest = { id = 5050, state = "completed" } },
                },
            },
            text = "Use Good Luck Other-Half-Charm to create Good Luck Charm in Felstone Field.",
            dependsOn = { "accept-5051-two-halves-become-one" },
            complete = QuestState(5051, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3681, 0.5832, "Felstone Field",
                    "Travel to Felstone Field."),
            },
        },
        {
            id = "turnin-5051-two-halves-become-one",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { quest = { id = 5050, state = "completed" } },
                },
            },
            text = "Turn in Two Halves Become One to Janice Felstone in Felstone Field.",
            dependsOn = { "objective-5051-1-jabbering-ghoul", "objective-5051-two-halves-become-one" },
            complete = QuestState(5051, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3840, 0.5404, "Janice Felstone",
                    "Travel to Janice Felstone."),
            },
        },
        {
            id = "objective-5902-a-plague-upon-thee",
            kind = "objective",
            priority = 140,
            text = "Clear the area and click on Northridge Lumber Mill Crate and then click on the Termite Barrel.",
            dependsOn = { "accept-5902-a-plague-upon-thee" },
            complete = QuestState(5902, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4833, 0.3192, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "turnin-5902-a-plague-upon-thee",
            kind = "turnin",
            priority = 150,
            text = "Turn in A Plague Upon Thee in Northridge Lumber Camp.",
            dependsOn = { "objective-5902-a-plague-upon-thee" },
            complete = QuestState(5902, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4833, 0.3192, "Northridge Lumber Camp",
                    "Travel to Northridge Lumber Camp."),
            },
        },
        {
            id = "accept-6390-a-plague-upon-thee",
            kind = "accept",
            priority = 160,
            text = "Accept A Plague Upon Thee in Northridge Lumber Camp.",
            complete = QuestState(6390, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4833, 0.3192, "Northridge Lumber Camp",
                    "Travel to Northridge Lumber Camp."),
            },
        },
        {
            id = "accept-6004-unfinished-business",
            kind = "accept",
            priority = 170,
            text = "Accept Unfinished Business from Kirsta Deepshadow in Northridge Lumber Camp.",
            complete = QuestState(6004, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5192, 0.2806, "Kirsta Deepshadow",
                    "Travel to Kirsta Deepshadow."),
            },
        },
        {
            id = "objective-6004-4-unfinished-business",
            kind = "objective",
            priority = 180,
            text = "Kill 2 Scarlet Knight and 2 Scarlet Mage.",
            dependsOn = { "accept-6004-unfinished-business" },
            complete = QuestObjective(6004, 4),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5295, 0.3633, "Scarlet Knight",
                    "Travel to Scarlet Knight."),
            },
        },
        {
            id = "objective-6004-3-unfinished-business",
            kind = "objective",
            priority = 190,
            text = "Kill 2 Scarlet Knight and 2 Scarlet Mage.",
            dependsOn = { "accept-6004-unfinished-business" },
            complete = QuestObjective(6004, 3),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5295, 0.3633, "Scarlet Knight",
                    "Travel to Scarlet Knight."),
            },
        },
        {
            id = "objective-6004-unfinished-business",
            kind = "objective",
            priority = 200,
            text = "Kill 2 Scarlet Hunter and 2 Scarlet Medic.",
            dependsOn = { "accept-6004-unfinished-business" },
            complete = QuestState(6004, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5152, 0.4428, "Scarlet Hunter",
                    "Travel to Scarlet Hunter."),
            },
        },
        {
            id = "turnin-6004-unfinished-business",
            kind = "turnin",
            priority = 210,
            text = "Turn in Unfinished Business to Kirsta Deepshadow in Northridge Lumber Camp.",
            dependsOn = { "objective-6004-4-unfinished-business", "objective-6004-3-unfinished-business", "objective-6004-unfinished-business" },
            complete = QuestState(6004, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5195, 0.2810, "Kirsta Deepshadow",
                    "Travel to Kirsta Deepshadow."),
            },
        },
        {
            id = "accept-6023-unfinished-business",
            kind = "accept",
            priority = 220,
            text = "Accept Unfinished Business from Kirsta Deepshadow in Northridge Lumber Camp.",
            complete = QuestState(6023, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5195, 0.2810, "Kirsta Deepshadow",
                    "Travel to Kirsta Deepshadow."),
            },
        },
        {
            id = "objective-6023-1-huntsman-radley",
            kind = "objective",
            priority = 230,
            text = "Kill Huntsman Radley in Hearthglen.",
            dependsOn = { "accept-6023-unfinished-business" },
            complete = QuestObjective(6023, 1),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5747, 0.3593, "Huntsman Radley",
                    "Travel to Huntsman Radley."),
            },
        },
        {
            id = "objective-6023-2-cavalier-durgen",
            kind = "objective",
            priority = 240,
            text = "Kill Cavalier Durgen in Hearthglen.",
            dependsOn = { "accept-6023-unfinished-business" },
            complete = QuestObjective(6023, 2),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5494, 0.2355, "Cavalier Durgen",
                    "Travel to Cavalier Durgen."),
            },
        },
        {
            id = "turnin-6023-unfinished-business",
            kind = "turnin",
            priority = 250,
            text = "Turn in Unfinished Business to Kirsta Deepshadow in Northridge Lumber Camp.",
            dependsOn = { "objective-6023-1-huntsman-radley", "objective-6023-2-cavalier-durgen" },
            complete = QuestState(6023, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5191, 0.2808, "Kirsta Deepshadow",
                    "Travel to Kirsta Deepshadow."),
            },
        },
        {
            id = "accept-6025-unfinished-business",
            kind = "accept",
            priority = 260,
            text = "Accept Unfinished Business from Kirsta Deepshadow in Northridge Lumber Camp.",
            complete = QuestState(6025, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5192, 0.2804, "Kirsta Deepshadow",
                    "Travel to Kirsta Deepshadow."),
            },
        },
        {
            id = "objective-6025-unfinished-business",
            kind = "objective",
            priority = 280,
            text = "You just need to reach the top of the tower without dying to complete the quest, just mount up and ignore the Elite npcs and run to top of the tower then jump down. You will need to use a health potion.",
            dependsOn = { "accept-6025-unfinished-business" },
            complete = QuestState(6025, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4577, 0.1831, "Unfinished Business",
                    "Travel to Unfinished Business."),
            },
        },
        {
            id = "turnin-6025-unfinished-business",
            kind = "turnin",
            priority = 300,
            text = "Turn in Unfinished Business to Kirsta Deepshadow in Northridge Lumber Camp.",
            dependsOn = { "objective-6025-unfinished-business" },
            complete = QuestState(6025, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5194, 0.2806, "Kirsta Deepshadow",
                    "Travel to Kirsta Deepshadow."),
            },
        },
        {
            id = "accept-4984-the-wildlife-suffers-too",
            kind = "accept",
            priority = 320,
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver in The Writhing Haunt.",
            complete = QuestState(4984, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5367, 0.6476, "Mulgris Deepriver",
                    "Travel to Mulgris Deepriver."),
            },
        },
        {
            id = "objective-4984-the-wildlife-suffers-too",
            kind = "objective",
            priority = 330,
            text = "Kill 8 Diseased Wolf in Dalson's Tears.",
            dependsOn = { "accept-4984-the-wildlife-suffers-too" },
            complete = QuestState(4984, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5071, 0.4833, "Diseased Wolf",
                    "Travel to Diseased Wolf."),
            },
        },
        {
            id = "turnin-4984-the-wildlife-suffers-too",
            kind = "turnin",
            priority = 340,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver in The Writhing Haunt.",
            dependsOn = { "objective-4984-the-wildlife-suffers-too" },
            complete = QuestState(4984, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5370, 0.6470, "Mulgris Deepriver",
                    "Travel to Mulgris Deepriver."),
            },
        },
        {
            id = "accept-4985-the-wildlife-suffers-too",
            kind = "accept",
            priority = 350,
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver in The Writhing Haunt.",
            complete = QuestState(4985, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5370, 0.6470, "Mulgris Deepriver",
                    "Travel to Mulgris Deepriver."),
            },
        },
        {
            id = "objective-4985-the-wildlife-suffers-too",
            kind = "objective",
            priority = 360,
            text = "Kill 8 Diseased Grizzly in The Writhing Haunt.",
            dependsOn = { "accept-4985-the-wildlife-suffers-too" },
            complete = QuestState(4985, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5580, 0.6300, "Diseased Grizzly",
                    "Travel to Diseased Grizzly."),
            },
        },
        {
            id = "turnin-4985-the-wildlife-suffers-too",
            kind = "turnin",
            priority = 370,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver in The Writhing Haunt.",
            dependsOn = { "objective-4985-the-wildlife-suffers-too" },
            complete = QuestState(4985, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5370, 0.6470, "Mulgris Deepriver",
                    "Travel to Mulgris Deepriver."),
            },
        },
        {
            id = "accept-4987-glyphed-oaken-branch",
            kind = "accept",
            priority = 380,
            text = "Accept Glyphed Oaken Branch from Mulgris Deepriver in The Writhing Haunt.",
            complete = QuestState(4987, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5370, 0.6470, "Mulgris Deepriver",
                    "Travel to Mulgris Deepriver."),
            },
        },
        {
            id = "turnin-5152-auntie-marlene",
            kind = "turnin",
            priority = 400,
            text = "Turn in Auntie Marlene to Mulgris Deepriver in Sorrow Hill.",
            complete = QuestState(5152, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4919, 0.7861, "Mulgris Deepriver",
                    "Travel to Mulgris Deepriver."),
            },
        },
        {
            id = "accept-5153-a-strange-historian",
            kind = "accept",
            priority = 410,
            text = "Accept A Strange Historian from Marlene Redpath in Sorrow Hill.",
            complete = QuestState(5153, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4919, 0.7861, "Marlene Redpath",
                    "Travel to Marlene Redpath."),
            },
        },
        {
            id = "objective-5153-a-strange-historian",
            kind = "objective",
            priority = 420,
            text = "Collect Joseph's Wedding Ring from Joseph Redpath's Monument in Sorrow Hill.",
            dependsOn = { "accept-5153-a-strange-historian" },
            complete = QuestState(5153, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4970, 0.7668, "Sorrow Hill",
                    "Travel to Sorrow Hill."),
            },
        },
        {
            id = "objective-5098-4-mark-tower-four",
            kind = "objective",
            priority = 430,
            text = "Use Beacon Torch between the door way of the Tower in Ruins of Andorhal.",
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            complete = QuestObjective(5098, 4),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4663, 0.7126, "Ruins of Andorhal",
                    "Travel to Ruins of Andorhal."),
            },
        },
        {
            id = "objective-5098-1-mark-tower-one",
            kind = "objective",
            priority = 440,
            text = "Use Beacon Torch between the door way of the Tower in Ruins of Andorhal.",
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            complete = QuestObjective(5098, 1),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4000, 0.7158, "Ruins of Andorhal",
                    "Travel to Ruins of Andorhal."),
            },
        },
        {
            id = "turnin-5153-a-strange-historian",
            kind = "turnin",
            priority = 450,
            text = "Turn in A Strange Historian to Chromie in Ruins of Andorhal.",
            dependsOn = { "objective-5153-a-strange-historian" },
            complete = QuestState(5153, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3946, 0.6676, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "accept-5154-the-annals-of-darrowshire",
            kind = "accept",
            priority = 460,
            text = "Accept The Annals of Darrowshire from Chromie in Ruins of Andorhal.",
            complete = QuestState(5154, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3946, 0.6676, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "accept-4971-a-matter-of-time",
            kind = "accept",
            priority = 470,
            text = "Accept A Matter of Time from Chromie in Ruins of Andorhal.",
            complete = QuestState(4971, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3950, 0.6710, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "objective-5154-the-annals-of-darrowshire",
            kind = "objective",
            priority = 480,
            text = "Collect the Annals of Darrowshire inside the town hall in the Ruins of Andorhal. The fake book has mixed grey and white pages. The real book has white pages and a brighter cover.",
            dependsOn = { "accept-5154-the-annals-of-darrowshire" },
            complete = QuestState(5154, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4340, 0.6972, "Ruins of Andorhal",
                    "Travel to Ruins of Andorhal."),
            },
        },
        {
            id = "objective-5098-2-mark-tower-two",
            kind = "objective",
            priority = 490,
            text = "Use Beacon Torch between the door way of the Tower in Ruins of Andorhal.",
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            complete = QuestObjective(5098, 2),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4243, 0.6607, "Ruins of Andorhal",
                    "Travel to Ruins of Andorhal."),
            },
        },
        {
            id = "objective-5098-3-mark-tower-three",
            kind = "objective",
            priority = 500,
            text = "Use Beacon Torch between the door way of the Tower in Ruins of Andorhal.",
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            complete = QuestObjective(5098, 3),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4415, 0.6325, "Ruins of Andorhal",
                    "Travel to Ruins of Andorhal."),
            },
        },
        {
            id = "objective-4971-a-matter-of-time",
            kind = "objective",
            priority = 510,
            text = "Use Temporal Displacer near the glowing silo to spawn and kill 10 Temporal Parasite in Ruins of Andorhal.",
            dependsOn = { "accept-4971-a-matter-of-time" },
            complete = QuestState(4971, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4999, 0.6695, "Temporal Parasite",
                    "Travel to Temporal Parasite."),
            },
        },
        {
            id = "turnin-4971-a-matter-of-time",
            kind = "turnin",
            priority = 520,
            text = "Turn in A Matter of Time to Chromie in Ruins of Andorhal.",
            dependsOn = { "objective-4971-a-matter-of-time" },
            complete = QuestState(4971, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3945, 0.6678, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "turnin-5154-the-annals-of-darrowshire",
            kind = "turnin",
            priority = 530,
            text = "Turn in The Annals of Darrowshire to Chromie in Ruins of Andorhal.",
            dependsOn = { "objective-5154-the-annals-of-darrowshire" },
            complete = QuestState(5154, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3946, 0.6679, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "accept-4972-counting-out-time",
            kind = "accept",
            priority = 540,
            text = "Accept Counting Out Time from Chromie in Ruins of Andorhal.",
            complete = QuestState(4972, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3946, 0.6679, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "accept-5210-brother-carlin",
            kind = "accept",
            priority = 550,
            text = "Accept Brother Carlin from Chromie in Ruins of Andorhal.",
            complete = QuestState(5210, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3946, 0.6679, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "objective-4972-counting-out-time",
            kind = "objective",
            priority = 560,
            text = "Collect Andorhal Watch from small lockbox in Ruins of Andorhal.",
            dependsOn = { "accept-4972-counting-out-time" },
            complete = QuestState(4972, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4231, 0.6873, "Ruins of Andorhal",
                    "Travel to Ruins of Andorhal."),
            },
        },
        {
            id = "turnin-4972-counting-out-time",
            kind = "turnin",
            priority = 570,
            text = "Turn in Counting Out Time to Chromie in Ruins of Andorhal.",
            dependsOn = { "objective-4972-counting-out-time" },
            complete = QuestState(4972, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3945, 0.6677, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "turnin-6390-a-plague-upon-thee",
            kind = "turnin",
            priority = 590,
            text = "Turn in A Plague Upon Thee to Mickey Levine in The Bulwark.",
            dependsOn = { "accept-6390-a-plague-upon-thee" },
            complete = QuestState(6390, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8328, 0.7234, "Mickey Levine",
                    "Travel to Mickey Levine."),
            },
        },
        {
            id = "turnin-5098-all-along-the-watchtowers",
            kind = "turnin",
            priority = 600,
            text = "Turn in All Along the Watchtowers to High Executor Derrington in The Bulwark.",
            dependsOn = { "objective-5098-4-mark-tower-four", "objective-5098-1-mark-tower-one", "objective-5098-2-mark-tower-two", "objective-5098-3-mark-tower-three" },
            complete = QuestState(5098, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8313, 0.6896, "High Executor Derrington",
                    "Travel to High Executor Derrington."),
            },
        },
        {
            id = "accept-838-scholomance",
            kind = "accept",
            priority = 610,
            text = "Accept Scholomance from High Executor Derrington in The Bulwark.",
            complete = QuestState(838, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8313, 0.6896, "High Executor Derrington",
                    "Travel to High Executor Derrington."),
            },
        },
        {
            id = "turnin-838-scholomance",
            kind = "turnin",
            priority = 620,
            text = "Turn in Scholomance to Apothecary Dithers in The Bulwark.",
            dependsOn = { "accept-838-scholomance" },
            complete = QuestState(838, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8326, 0.6925, "Apothecary Dithers",
                    "Travel to Apothecary Dithers."),
            },
        },
        {
            id = "accept-964-skeletal-fragments",
            kind = "accept",
            priority = 630,
            text = "Accept Skeletal Fragments from Apothecary Dithers in The Bulwark.",
            complete = QuestState(964, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.8326, 0.6925, "Apothecary Dithers",
                    "Travel to Apothecary Dithers."),
            },
        },
        {
            id = "objective-964-skeletal-fragments",
            kind = "objective",
            priority = 650,
            text = "Kill Skeletal Sorcerer and Skeletal Flayer to collect Skeletal Fragments in Felstone Field.",
            dependsOn = { "accept-964-skeletal-fragments" },
            complete = QuestState(964, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3691, 0.5719, "Skeletal Sorcerer",
                    "Travel to Skeletal Sorcerer."),
            },
        },
        {
            id = "turnin-964-skeletal-fragments",
            kind = "turnin",
            priority = 660,
            text = "Turn in Skeletal Fragments to Apothecary Dithers in The Bulwark.",
            dependsOn = { "objective-964-skeletal-fragments" },
            complete = QuestState(964, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.8328, 0.6924, "Apothecary Dithers",
                    "Travel to Apothecary Dithers."),
            },
        },
        {
            id = "note-orgrimmar",
            kind = "note",
            priority = 680,
            text = "Set your hearth in Orgrimmar with Innkeeper Gryshka.",
            route = {
                Point(MAP.ORGRIMMAR, 0.5410, 0.6860, "Innkeeper Gryshka",
                    "Travel to Innkeeper Gryshka."),
            },
        },
        {
            id = "turnin-4987-glyphed-oaken-branch",
            kind = "turnin",
            priority = 700,
            text = "Turn in Glyphed Oaken Branch to Nara Wildmane in Elder Rise.",
            dependsOn = { "accept-4987-glyphed-oaken-branch" },
            complete = QuestState(4987, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7570, 0.3154, "Nara Wildmane",
                    "Travel to Nara Wildmane."),
            },
        },
        {
            id = "turnin-1004-the-new-frontier",
            kind = "turnin",
            priority = 710,
            text = "Turn in The New Frontier to Nara Wildmane in Elder Rise.",
            complete = QuestState(1004, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7855, 0.2859, "Nara Wildmane",
                    "Travel to Nara Wildmane."),
            },
        },
        {
            id = "accept-1123-rabine-saturna",
            kind = "accept",
            priority = 720,
            text = "Accept Rabine Saturna from Archdruid Hamuul Runetotem in Elder Rise.",
            complete = QuestState(1123, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7855, 0.2859, "Archdruid Hamuul Runetotem",
                    "Travel to Archdruid Hamuul Runetotem."),
            },
        },
    },
})
