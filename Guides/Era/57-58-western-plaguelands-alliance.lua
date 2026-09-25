local _, ns = ...

-- Alliance Era leveling route for the Western Plaguelands, levels 57-58.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    WESTERN_PLAGUELANDS = 1422,
    IRONFORGE = 1455,
    EASTERN_PLAGUELANDS = 1423,
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
    id = "leveling-era-57-58-western-plaguelands-alliance",
    title = "57-58 Western Plaguelands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
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
            text = "Switch and complete #1422(56-57)#1422(56-57)\") before starting this guide.",
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
            text = "Switch and complete #1423(57-58)#1423(57-58)\") before starting this guide.",
        },
        {
            id = "turnin-5152-auntie-marlene",
            kind = "turnin",
            priority = 40,
            text = "Turn in Auntie Marlene to Marlene Redpath in Sorrow Hill.",
            complete = QuestState(5152, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4919, 0.7861, "Marlene Redpath",
                    "Travel to Marlene Redpath."),
            },
        },
        {
            id = "accept-5153-a-strange-historian",
            kind = "accept",
            priority = 50,
            text = "Accept A Strange Historian from Marlene Redpath in Sorrow Hill.",
            complete = QuestState(5153, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4917, 0.7859, "Marlene Redpath",
                    "Travel to Marlene Redpath."),
            },
        },
        {
            id = "objective-5153-a-strange-historian",
            kind = "objective",
            priority = 60,
            text = "Collect Joseph's Wedding Ring from Joseph Redpath's Monument in Sorrow Hill.",
            dependsOn = { "accept-5153-a-strange-historian" },
            complete = QuestState(5153, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4970, 0.7668, "Sorrow Hill",
                    "Travel to Sorrow Hill."),
            },
        },
        {
            id = "turnin-6185-the-eastern-plagues",
            kind = "turnin",
            priority = 80,
            text = "Turn in The Eastern Plagues to Flint Shadowmore in Chillwind Camp.",
            complete = QuestState(6185, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4362, 0.8451, "Flint Shadowmore",
                    "Travel to Flint Shadowmore."),
            },
        },
        {
            id = "accept-6186-the-blightcaller-cometh",
            kind = "accept",
            priority = 90,
            text = "Accept The Blightcaller Cometh from Flint Shadowmore in Chillwind Camp.",
            complete = QuestState(6186, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4362, 0.8451, "Flint Shadowmore",
                    "Travel to Flint Shadowmore."),
            },
        },
        {
            id = "turnin-5903-a-plague-upon-thee",
            kind = "turnin",
            priority = 100,
            text = "Turn in A Plague Upon Thee to Nathaniel Dumah in Chillwind Camp.",
            complete = QuestState(5903, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4344, 0.8485, "Nathaniel Dumah",
                    "Travel to Nathaniel Dumah."),
            },
        },
        {
            id = "accept-5904-a-plague-upon-thee",
            kind = "accept",
            priority = 110,
            text = "Accept A Plague Upon Thee from Nathaniel Dumah in Chillwind Camp.",
            complete = QuestState(5904, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4349, 0.8484, "Nathaniel Dumah",
                    "Travel to Nathaniel Dumah."),
            },
        },
        {
            id = "turnin-5153-a-strange-historian",
            kind = "turnin",
            priority = 130,
            text = "Turn in A Strange Historian to Chromie in Ruins of Andorhal.",
            dependsOn = { "objective-5153-a-strange-historian" },
            complete = QuestState(5153, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3945, 0.6678, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "accept-5154-the-annals-of-darrowshire",
            kind = "accept",
            priority = 140,
            text = "Accept The Annals of Darrowshire from Chromie in Ruins of Andorhal.",
            complete = QuestState(5154, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3945, 0.6678, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "objective-5154-the-annals-of-darrowshire",
            kind = "objective",
            priority = 150,
            text = "Collect the Annals of Darrowshire inside the town hall in the Ruins of Andorhal. The fake book has mixed grey and white pages. The real book has white pages and a brighter cover.",
            dependsOn = { "accept-5154-the-annals-of-darrowshire" },
            complete = QuestState(5154, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4417, 0.6924, "Continue toward The Annals of Darrowshire",
                    "Continue toward The Annals of Darrowshire."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.4340, 0.6972, "Ruins of Andorhal",
                    "Travel to Ruins of Andorhal."),
            },
        },
        {
            id = "turnin-5154-the-annals-of-darrowshire",
            kind = "turnin",
            priority = 160,
            text = "Turn in The Annals of Darrowshire to Chromie in Ruins of Andorhal.",
            dependsOn = { "objective-5154-the-annals-of-darrowshire" },
            complete = QuestState(5154, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3946, 0.6680, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "accept-5210-brother-carlin",
            kind = "accept",
            priority = 170,
            text = "Accept Brother Carlin from Chromie in Ruins of Andorhal.",
            complete = QuestState(5210, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.3946, 0.6680, "Chromie",
                    "Travel to Chromie."),
            },
        },
        {
            id = "objective-5904-a-plague-upon-thee",
            kind = "objective",
            priority = 190,
            text = "Clear the area and click on Northridge Lumber Mill Crate and then click on the Termite Barrel.",
            dependsOn = { "accept-5904-a-plague-upon-thee" },
            complete = QuestState(5904, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4833, 0.3192, "A Plague Upon Thee",
                    "Travel to A Plague Upon Thee."),
            },
        },
        {
            id = "turnin-5904-a-plague-upon-thee",
            kind = "turnin",
            priority = 200,
            text = "Turn in A Plague Upon Thee in Northridge Lumber Camp.",
            dependsOn = { "objective-5904-a-plague-upon-thee" },
            complete = QuestState(5904, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4833, 0.3192, "Northridge Lumber Camp",
                    "Travel to Northridge Lumber Camp."),
            },
        },
        {
            id = "accept-6389-a-plague-upon-thee",
            kind = "accept",
            priority = 210,
            text = "Accept A Plague Upon Thee in Northridge Lumber Camp.",
            complete = QuestState(6389, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4833, 0.3192, "Northridge Lumber Camp",
                    "Travel to Northridge Lumber Camp."),
            },
        },
        {
            id = "accept-6004-unfinished-business",
            kind = "accept",
            priority = 220,
            text = "Accept Unfinished Business from Kirsta Deepshadow in Northridge Lumber Camp.",
            complete = QuestState(6004, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4990, 0.3033, "Continue toward Unfinished Business",
                    "Continue toward Unfinished Business."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.5192, 0.2806, "Kirsta Deepshadow",
                    "Travel to Kirsta Deepshadow."),
            },
        },
        {
            id = "objective-6004-4-unfinished-business",
            kind = "objective",
            priority = 230,
            text = "Kill 2 Scarlet Knight and 2 Scarlet Mage.",
            dependsOn = { "accept-6004-unfinished-business" },
            complete = QuestObjective(6004, 4),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5075, 0.3167, "Continue toward Unfinished Business",
                    "Continue toward Unfinished Business."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.5276, 0.3558, "Continue toward Unfinished Business",
                    "Continue toward Unfinished Business."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.5381, 0.3613, "Continue toward Unfinished Business",
                    "Continue toward Unfinished Business."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.5295, 0.3633, "Scarlet Knight",
                    "Travel to Scarlet Knight."),
            },
        },
        {
            id = "objective-6004-3-unfinished-business",
            kind = "objective",
            priority = 240,
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
            priority = 250,
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
            priority = 260,
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
            priority = 270,
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
            priority = 280,
            text = "Kill Huntsman Radley in Hearthglen.",
            dependsOn = { "accept-6023-unfinished-business" },
            complete = QuestObjective(6023, 1),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5075, 0.3167, "Continue toward Huntsman Radley",
                    "Continue toward Huntsman Radley."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.5276, 0.3558, "Continue toward Huntsman Radley",
                    "Continue toward Huntsman Radley."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.5381, 0.3613, "Continue toward Huntsman Radley",
                    "Continue toward Huntsman Radley."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.5747, 0.3593, "Huntsman Radley",
                    "Travel to Huntsman Radley."),
            },
        },
        {
            id = "objective-6023-2-cavalier-durgen",
            kind = "objective",
            priority = 290,
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
            priority = 300,
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
            priority = 310,
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
            priority = 330,
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
            priority = 350,
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
            priority = 370,
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver in The Writhing Haunt.",
            complete = QuestState(4984, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5364, 0.6476, "Mulgris Deepriver",
                    "Travel to Mulgris Deepriver."),
            },
        },
        {
            id = "objective-4984-the-wildlife-suffers-too",
            kind = "objective",
            priority = 380,
            text = "Kill 8 Diseased Wolf in Dalson's Tears.",
            dependsOn = { "accept-4984-the-wildlife-suffers-too" },
            complete = QuestState(4984, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4617, 0.3997, "Continue toward The Wildlife Suffers Too",
                    "Continue toward The Wildlife Suffers Too."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.4611, 0.4810, "Continue toward The Wildlife Suffers Too",
                    "Continue toward The Wildlife Suffers Too."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.5071, 0.4833, "Diseased Wolf",
                    "Travel to Diseased Wolf."),
            },
        },
        {
            id = "turnin-4984-the-wildlife-suffers-too",
            kind = "turnin",
            priority = 390,
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
            priority = 400,
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
            priority = 410,
            text = "Kill 8 Diseased Grizzly in The Writhing Haunt.",
            dependsOn = { "accept-4985-the-wildlife-suffers-too" },
            complete = QuestState(4985, "complete"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5580, 0.4910, "Continue toward The Wildlife Suffers Too",
                    "Continue toward The Wildlife Suffers Too."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.5490, 0.4540, "Continue toward The Wildlife Suffers Too",
                    "Continue toward The Wildlife Suffers Too."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.6030, 0.5200, "Continue toward The Wildlife Suffers Too",
                    "Continue toward The Wildlife Suffers Too."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.6740, 0.4580, "Continue toward The Wildlife Suffers Too",
                    "Continue toward The Wildlife Suffers Too."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.6560, 0.5350, "Continue toward The Wildlife Suffers Too",
                    "Continue toward The Wildlife Suffers Too."),
                Point(MAP.WESTERN_PLAGUELANDS, 0.5580, 0.6300, "Diseased Grizzly",
                    "Travel to Diseased Grizzly."),
            },
        },
        {
            id = "turnin-4985-the-wildlife-suffers-too",
            kind = "turnin",
            priority = 420,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver in The Writhing Haunt.",
            dependsOn = { "objective-4985-the-wildlife-suffers-too" },
            complete = QuestState(4985, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5370, 0.6470, "Mulgris Deepriver",
                    "Travel to Mulgris Deepriver."),
            },
        },
        {
            id = "accept-4986-glyphed-oaken-branch",
            kind = "accept",
            priority = 430,
            text = "Accept Glyphed Oaken Branch from Mulgris Deepriver in The Writhing Haunt.",
            complete = QuestState(4986, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.5370, 0.6470, "Mulgris Deepriver",
                    "Travel to Mulgris Deepriver."),
            },
        },
        {
            id = "turnin-6185-the-eastern-plagues-2",
            kind = "turnin",
            priority = 450,
            text = "Turn in The Eastern Plagues to Flint Shadowmore in Chillwind Camp.",
            complete = QuestState(6185, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4342, 0.8484, "Flint Shadowmore",
                    "Travel to Flint Shadowmore."),
            },
        },
        {
            id = "accept-6186-the-blightcaller-cometh-2",
            kind = "accept",
            priority = 460,
            text = "Accept The Blightcaller Cometh from Flint Shadowmore in Chillwind Camp.",
            complete = QuestState(6186, "activeOrCompleted"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4342, 0.8484, "Flint Shadowmore",
                    "Travel to Flint Shadowmore."),
            },
        },
        {
            id = "turnin-6389-a-plague-upon-thee",
            kind = "turnin",
            priority = 470,
            text = "Turn in A Plague Upon Thee to Nathaniel Dumah in Chillwind Camp.",
            dependsOn = { "accept-6389-a-plague-upon-thee" },
            complete = QuestState(6389, "completed"),
            route = {
                Point(MAP.WESTERN_PLAGUELANDS, 0.4342, 0.8484, "Nathaniel Dumah",
                    "Travel to Nathaniel Dumah."),
            },
        },
        {
            id = "turnin-5210-brother-carlin",
            kind = "turnin",
            priority = 500,
            text = "Turn in Brother Carlin to Carlin Redpath in Light's Hope Chapel.",
            dependsOn = { "accept-5210-brother-carlin" },
            complete = QuestState(5210, "completed"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.8151, 0.5977, "Carlin Redpath",
                    "Travel to Carlin Redpath."),
            },
        },
        {
            id = "accept-5181-villains-of-darrowshire",
            kind = "accept",
            priority = 510,
            text = "Accept Villains of Darrowshire from Carlin Redpath in Light's Hope Chapel.",
            complete = QuestState(5181, "activeOrCompleted"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.8151, 0.5977, "Carlin Redpath",
                    "Travel to Carlin Redpath."),
            },
        },
        {
            id = "objective-5181-1-skull-of-horgus",
            kind = "objective",
            priority = 520,
            text = "Collect Skull of Horgus underwater in Blackwood Lake.",
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            complete = QuestObjective(5181, 1),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.5107, 0.4994, "Blackwood Lake",
                    "Travel to Blackwood Lake."),
            },
        },
        {
            id = "objective-5181-2-shattered-sword-of-marduk",
            kind = "objective",
            priority = 530,
            text = "Collect Shattered Sword of Marduk from down below in The Infectis Scar (53.89, 65.78.",
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            complete = QuestObjective(5181, 2),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.5389, 0.6578, "The Infectis Scar",
                    "Travel to The Infectis Scar."),
            },
        },
        {
            id = "turnin-5181-villains-of-darrowshire",
            kind = "turnin",
            priority = 550,
            text = "Turn in Villains of Darrowshire to Carlin Redpath in Light's Hope Chapel.",
            dependsOn = { "objective-5181-1-skull-of-horgus", "objective-5181-2-shattered-sword-of-marduk" },
            complete = QuestState(5181, "completed"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.8152, 0.5975, "Carlin Redpath",
                    "Travel to Carlin Redpath."),
            },
        },
    },
})
