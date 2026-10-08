local _, ns = ...

-- Forever dungeon quest list:
-- https://www.wowhead.com/forever/quests/dungeons/ruins-of-lordaeron
-- The guide level is the highest required level among those quests (16).
-- Unending Torment step 97290 and Remember That I Love You step 95161 are the
-- in-between and follow-up steps of chains listed on that page.
-- The Wrath of Rath'mael and the Undercity Crest of Lordaeron are unmarked on
-- Wowhead, but their givers and turn-ins are Forsaken, so those steps are Horde.
-- Horde use the portal above the Undercity (71.78, 11.44). Alliance use the
-- Tirisfal door in northern Tirisfal Glades. Map id 2999 is the Forever client
-- dungeon map reported for this instance.

local MAP = {
    TIRISFAL = 1420,
    SILVERPINE = 1421,
    UNDERCITY = 1458,
    STORMWIND = 1453,
    DUSKWOOD = 1431,
}

local HORDE = { faction = "Horde" }
local ALLIANCE = { faction = "Alliance" }
local BOTH_FACTIONS = { any = { ALLIANCE, HORDE } }
local RUINS_OF_LORDAERON = 2999

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
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

local function Undercity(x, y, label)
    return {
        Point(MAP.UNDERCITY, x, y, label, "Travel to the Undercity."),
    }
end

local function Stormwind(x, y, label)
    return {
        Point(MAP.STORMWIND, x, y, label, "Travel to Stormwind City."),
    }
end

ns:RegisterGuide({
    id = "dungeons-ruins-of-lordaeron",
    title = "Ruins of Lordaeron",
    category = "Dungeon Quest Guides",
    revision = 2,
    conditions = {
        all = {
            { level = { min = 16 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "accept-frightened-request",
            kind = "accept",
            priority = 9,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Accept A Frightened Request from Tabitha Heartweaver in the Sepulcher.",
            taxiDestination = "The Sepulcher",
            complete = QuestState(92401, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINE, 0.446, 0.428, "Tabitha Heartweaver in the Sepulcher",
                    "Travel to the Sepulcher in Silverpine Forest."),
            },
        },
        {
            id = "accept-wrath-of-rathmael",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Accept The Wrath of Rath'mael from Deathguard Kristof southeast of Brill.",
            taxiDestination = "Undercity",
            complete = QuestState(92422, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.652, 0.602, "Deathguard Kristof southeast of Brill",
                    "Travel to Tirisfal Glades. Kristof stands at the camp between Brill and the Undercity."),
            },
        },
        {
            id = "accept-lights-justice",
            kind = "accept",
            priority = 11,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Accept Light's Justice from Morbin Lightbane in the Royal Quarter.",
            taxiDestination = "Undercity",
            complete = QuestState(92421, "activeOrCompleted"),
            route = Undercity(0.576, 0.894, "Morbin Lightbane in the Royal Quarter"),
        },
        {
            id = "accept-new-plague",
            kind = "accept",
            priority = 12,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Accept The New Plague from Theodore Griffs in the Apothecarium.",
            taxiDestination = "Undercity",
            complete = QuestState(95216, "activeOrCompleted"),
            route = Undercity(0.466, 0.715, "Theodore Griffs in the Apothecarium"),
        },
        {
            id = "enter-ruins-of-lordaeron",
            kind = "travel",
            priority = 40,
            text = "Enter the Ruins of Lordaeron. Horde: use the portal above the Undercity. Alliance: use the entrance in northern Tirisfal Glades.",
            dependsOn = {
                "accept-frightened-request",
                "accept-wrath-of-rathmael",
                "accept-lights-justice",
                "accept-new-plague",
            },
            complete = { instance = RUINS_OF_LORDAERON },
            persistCompletion = true,
            route = {
                Point(MAP.UNDERCITY, 0.7178, 0.1144, "Ruins of Lordaeron portal above the Undercity",
                    "Travel to the Undercity and enter through the portal in the ruins above the city.",
                    ALLIANCE),
                Point(MAP.TIRISFAL, 0.716, 0.114, "Ruins of Lordaeron entrance from Tirisfal Glades",
                    "Travel to the Ruins of Lordaeron in northern Tirisfal Glades.",
                    HORDE),
            },
        },
        {
            id = "complete-frightened-request",
            kind = "objective",
            priority = 40,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Find Edward Heartweaver in the graveyard area near Rath'mael.",
            dependsOn = { "enter-ruins-of-lordaeron" },
            complete = QuestState(92401, "complete"),
        },
        {
            id = "complete-wrath-of-rathmael",
            kind = "objective",
            priority = 41,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Slay Rath'mael in the center. Clear the mobs around him. " ..
                "Interrupt or stun Flamestrike. Heal the aura around him. Edward Heartweaver's corpse is in the graveyard beside this area.",
            dependsOn = { "enter-ruins-of-lordaeron" },
            complete = QuestState(92422, "complete"),
        },
        {
            id = "complete-lights-justice",
            kind = "objective",
            priority = 42,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Kill Risen Guards and Anatomical Abominations in the ruins until you loot 25 Intact Limbs.",
            dependsOn = { "enter-ruins-of-lordaeron" },
            complete = QuestState(92421, "complete"),
        },
        {
            id = "complete-new-plague",
            kind = "objective",
            priority = 39,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Take the Highly Toxic Strain from Witherfang, by King's Alley across from the entrance. " ..
                "She patrols with Broodlings. The fight is a poison on the tank.",
            dependsOn = { "enter-ruins-of-lordaeron" },
            complete = QuestState(95216, "complete"),
        },
        {
            id = "accept-abominable-creatures",
            kind = "accept",
            priority = 44,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 16 } },
                },
            },
            text = "Accept Abominable Creatures. Captain Truman wants the Head of the Baron.",
            dependsOn = { "enter-ruins-of-lordaeron" },
            complete = QuestState(95250, "activeOrCompleted"),
        },
        {
            id = "complete-abominable-creatures",
            kind = "objective",
            priority = 45,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 16 } },
                },
            },
            text = "Collect the Head of the Baron at the end of the southeast hall. " ..
                "Stay behind him to avoid Cleave. He knocks the tank back and drops threat, so taunt immediately and do not get knocked into other packs.",
            dependsOn = { "accept-abominable-creatures" },
            complete = QuestState(95250, "complete"),
        },
        {
            id = "accept-unending-torment",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Use the Abominable Head dropped by The Baron to accept Unending Torment. Everyone in the group can loot it.",
            dependsOn = { "enter-ruins-of-lordaeron" },
            complete = QuestState(97288, "activeOrCompleted"),
        },
        {
            id = "accept-crest-horde",
            kind = "accept",
            priority = 51,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Loot the Crest of Lordaeron inside the ruins to accept the quest. It can be hanging on a tower or behind a door.",
            dependsOn = { "enter-ruins-of-lordaeron" },
            complete = QuestState(95204, "activeOrCompleted"),
        },
        {
            id = "accept-crest-alliance",
            kind = "accept",
            priority = 52,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 16 } },
                },
            },
            text = "Loot the Crest of Lordaeron inside the ruins to accept the quest. It can be hanging on a tower or behind a door.",
            dependsOn = { "enter-ruins-of-lordaeron" },
            complete = QuestState(95189, "activeOrCompleted"),
        },
        {
            id = "accept-bloodied-insignia",
            kind = "accept",
            priority = 53,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 16 } },
                },
            },
            text = "Collect Bloodied Insignias in the ruins to accept Bloodied Insignia.",
            dependsOn = { "enter-ruins-of-lordaeron" },
            complete = QuestState(95195, "activeOrCompleted"),
        },
        {
            id = "complete-bloodied-insignia",
            kind = "objective",
            priority = 54,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 16 } },
                },
            },
            text = "Kill Scarlet troops and Forsaken in the ruins until you loot 10 Bloodied Insignias.",
            dependsOn = { "accept-bloodied-insignia" },
            complete = QuestState(95195, "complete"),
        },
        {
            id = "accept-remember-letter",
            kind = "accept",
            priority = 55,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 15 } },
                },
            },
            text = "Read the Blood-Stained Letter found in the ruins to accept Remember That I Love You.",
            dependsOn = { "enter-ruins-of-lordaeron" },
            complete = QuestState(92415, "activeOrCompleted"),
        },
        {
            id = "turnin-frightened-request",
            kind = "turnin",
            priority = 59,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Return to Tabitha Heartweaver in the Sepulcher.",
            dependsOn = { "complete-frightened-request" },
            taxiDestination = "The Sepulcher",
            complete = QuestState(92401, "completed"),
            route = {
                Point(MAP.SILVERPINE, 0.446, 0.428, "Tabitha Heartweaver in the Sepulcher",
                    "Travel to the Sepulcher in Silverpine Forest."),
            },
        },
        {
            id = "turnin-wrath-of-rathmael",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Return to Deathguard Kristof and turn in The Wrath of Rath'mael.",
            dependsOn = { "complete-wrath-of-rathmael" },
            taxiDestination = "Undercity",
            complete = QuestState(92422, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.652, 0.602, "Deathguard Kristof southeast of Brill",
                    "Travel to Tirisfal Glades. Kristof stands at the camp between Brill and the Undercity."),
            },
        },
        {
            id = "turnin-lights-justice",
            kind = "turnin",
            priority = 61,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 15 } },
                },
            },
            text = "Bring the Intact Limbs to Morbin Lightbane in the Royal Quarter.",
            dependsOn = { "complete-lights-justice" },
            taxiDestination = "Undercity",
            complete = QuestState(92421, "completed"),
            route = Undercity(0.576, 0.894, "Morbin Lightbane in the Royal Quarter"),
        },
        {
            id = "turnin-new-plague",
            kind = "turnin",
            priority = 62,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Bring the Highly Toxic Strain to Theodore Griffs in the Apothecarium.",
            dependsOn = { "complete-new-plague" },
            taxiDestination = "Undercity",
            complete = QuestState(95216, "completed"),
            route = Undercity(0.466, 0.715, "Theodore Griffs in the Apothecarium"),
        },
        {
            id = "turnin-unending-torment",
            kind = "turnin",
            priority = 63,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Deliver the Abominable Head to Master Apothecary Faranell.",
            dependsOn = { "accept-unending-torment" },
            taxiDestination = "Undercity",
            complete = QuestState(97288, "completed"),
            route = Undercity(0.485, 0.696, "Master Apothecary Faranell in the Apothecarium"),
        },
        {
            id = "accept-unending-torment-place",
            kind = "accept",
            priority = 64,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Accept the next Unending Torment task from Master Apothecary Faranell.",
            dependsOn = { "turnin-unending-torment" },
            taxiDestination = "Undercity",
            complete = QuestState(97289, "activeOrCompleted"),
            route = Undercity(0.485, 0.696, "Master Apothecary Faranell in the Apothecarium"),
        },
        {
            id = "turnin-unending-torment-place",
            kind = "turnin",
            priority = 65,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Place the Head of the Baron beside Othmar's body in the next room. Do not attach it.",
            dependsOn = { "accept-unending-torment-place" },
            complete = QuestState(97289, "completed"),
        },
        {
            id = "accept-unending-torment-report",
            kind = "accept",
            priority = 66,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Accept the unfinished abomination's Unending Torment report.",
            dependsOn = { "turnin-unending-torment-place" },
            complete = QuestState(97290, "activeOrCompleted"),
        },
        {
            id = "turnin-unending-torment-report",
            kind = "turnin",
            priority = 67,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Report back to Master Apothecary Faranell.",
            dependsOn = { "accept-unending-torment-report" },
            taxiDestination = "Undercity",
            complete = QuestState(97290, "completed"),
            route = Undercity(0.485, 0.696, "Master Apothecary Faranell in the Apothecarium"),
        },
        {
            id = "accept-unending-torment-reagents",
            kind = "accept",
            priority = 68,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Accept Faranell's reagent list for Unending Torment.",
            dependsOn = { "turnin-unending-torment-report" },
            taxiDestination = "Undercity",
            complete = QuestState(97291, "activeOrCompleted"),
            route = Undercity(0.485, 0.696, "Master Apothecary Faranell in the Apothecarium"),
        },
        {
            id = "complete-unending-torment-reagents",
            kind = "objective",
            priority = 69,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Collect a Toxic Skullcap from Tawny Grisette, Blisterweed near the Alliestars, and Essence of Agony from Ezekiel Graves.",
            dependsOn = { "accept-unending-torment-reagents" },
            complete = QuestState(97291, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.660, 0.437, "Tawny Grisette in the Trade Quarter",
                    "Travel to the Undercity."),
                Point(MAP.UNDERCITY, 0.544, 0.500, "Blisterweed by the Alliestar herbalists",
                    "Travel to the Undercity."),
                Point(MAP.UNDERCITY, 0.755, 0.515, "Ezekiel Graves in the Rogues' Quarter",
                    "Travel to the Undercity."),
            },
        },
        {
            id = "turnin-unending-torment-reagents",
            kind = "turnin",
            priority = 70,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Bring the reagents to Master Apothecary Faranell.",
            dependsOn = { "complete-unending-torment-reagents" },
            taxiDestination = "Undercity",
            complete = QuestState(97291, "completed"),
            route = Undercity(0.485, 0.696, "Master Apothecary Faranell in the Apothecarium"),
        },
        {
            id = "accept-unending-torment-serum",
            kind = "accept",
            priority = 71,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Accept Faranell's Hissing Serum for the last Unending Torment step.",
            dependsOn = { "turnin-unending-torment-reagents" },
            taxiDestination = "Undercity",
            complete = QuestState(97292, "activeOrCompleted"),
            route = Undercity(0.485, 0.696, "Master Apothecary Faranell in the Apothecarium"),
        },
        {
            id = "complete-unending-torment-serum",
            kind = "objective",
            priority = 72,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Inject the Hissing Serum into the system above Othmar's body.",
            dependsOn = { "accept-unending-torment-serum" },
            complete = QuestState(97292, "complete"),
        },
        {
            id = "turnin-unending-torment-serum",
            kind = "turnin",
            priority = 73,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Return to Master Apothecary Faranell and finish Unending Torment.",
            dependsOn = { "complete-unending-torment-serum" },
            taxiDestination = "Undercity",
            complete = QuestState(97292, "completed"),
            route = Undercity(0.485, 0.696, "Master Apothecary Faranell in the Apothecarium"),
        },
        {
            id = "turnin-crest-horde",
            kind = "turnin",
            priority = 74,
            conditions = {
                all = {
                    HORDE,
                    { level = { min = 16 } },
                },
            },
            text = "Bring the Crest of Lordaeron to Oran Snakewrithe.",
            dependsOn = { "accept-crest-horde" },
            taxiDestination = "Undercity",
            complete = QuestState(95204, "completed"),
            route = Undercity(0.735, 0.325, "Oran Snakewrithe in the Undercity"),
        },
        {
            id = "turnin-abominable-creatures",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 16 } },
                },
            },
            text = "Bring the Head of the Baron to Captain Truman.",
            dependsOn = { "complete-abominable-creatures" },
            complete = QuestState(95250, "completed"),
        },
        {
            id = "turnin-crest-alliance",
            kind = "turnin",
            priority = 81,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 16 } },
                },
            },
            text = "Return the Crest of Lordaeron to Lady Dena Kennedy in Stormwind.",
            dependsOn = { "accept-crest-alliance" },
            taxiDestination = "Stormwind",
            complete = QuestState(95189, "completed"),
            route = Stormwind(0.640, 0.060, "Lady Dena Kennedy in Stormwind"),
        },
        {
            id = "turnin-bloodied-insignia",
            kind = "turnin",
            priority = 82,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 16 } },
                },
            },
            text = "Take the Bloodied Insignias to General Marcus Jonathan in Stormwind.",
            dependsOn = { "complete-bloodied-insignia" },
            taxiDestination = "Stormwind",
            complete = QuestState(95195, "completed"),
            route = Stormwind(0.640, 0.760, "General Marcus Jonathan in Stormwind"),
        },
        {
            id = "turnin-remember-letter",
            kind = "turnin",
            priority = 83,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 15 } },
                },
            },
            text = "Bring the Blood-Stained Letter to Orphan Matron Nightingale in Stormwind.",
            dependsOn = { "accept-remember-letter" },
            taxiDestination = "Stormwind",
            complete = QuestState(92415, "completed"),
            route = Stormwind(0.474, 0.384, "Orphan Matron Nightingale in Stormwind"),
        },
        {
            id = "accept-remember-duskwood",
            kind = "accept",
            priority = 84,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 15 } },
                },
            },
            text = "Accept Nightingale's delivery for Remember That I Love You.",
            dependsOn = { "turnin-remember-letter" },
            taxiDestination = "Stormwind",
            complete = QuestState(95161, "activeOrCompleted"),
            route = Stormwind(0.474, 0.384, "Orphan Matron Nightingale in Stormwind"),
        },
        {
            id = "turnin-remember-duskwood",
            kind = "turnin",
            priority = 85,
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 15 } },
                },
            },
            text = "Deliver the Blood-Stained Letter to Avette Fellwood in Duskwood.",
            dependsOn = { "accept-remember-duskwood" },
            taxiDestination = "Darkshire",
            complete = QuestState(95161, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.731, 0.446, "Avette Fellwood in Duskwood",
                    "Travel to Duskwood."),
            },
        },
    },
})
