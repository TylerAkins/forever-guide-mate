local _, ns = ...

-- Alliance Era leveling route for the Hinterlands, levels 46-46.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    HINTERLANDS = 1425,
    STRANGLETHORN = 1434,
    ARATHI = 1417,
    ALTERAC = 1416,
    IRONFORGE = 1455,
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
    id = "leveling-era-46-46-hinterlands",
    title = "46-46 Hinterlands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 46 } },
        },
    },
    goals = {
        {
            id = "accept-670-sunken-treasure",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { quest = { id = 669, state = "completed" } },
                },
            },
            text = "Accept Sunken Treasure from Fleet Master Seahorn in Booty Bay.",
            complete = QuestState(670, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2717, 0.7700, "Fleet Master Seahorn",
                    "Travel to Fleet Master Seahorn."),
            },
        },
        {
            id = "accept-602-magical-analysis",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 601, state = "completed" } },
                },
            },
            text = "Accept Magical Analysis from Baron Revilgaz in Booty Bay.",
            complete = QuestState(602, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2721, 0.7688, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "turnin-670-sunken-treasure",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 669, state = "completed" } },
                },
            },
            text = "Turn in Sunken Treasure to Shakes O'Breen in Faldir's Cove.",
            dependsOn = { "accept-670-sunken-treasure" },
            complete = QuestState(670, "completed"),
            route = {
                Point(MAP.ARATHI, 0.3228, 0.8139, "Shakes O'Breen",
                    "Travel to Shakes O'Breen."),
            },
        },
        {
            id = "accept-667-death-from-below",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 669, state = "completed" } },
                },
            },
            text = "Accept Death From Below from Shakes O'Breen in Faldir's Cove.",
            complete = QuestState(667, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.3228, 0.8139, "Shakes O'Breen",
                    "Travel to Shakes O'Breen."),
            },
        },
        {
            id = "objective-667-death-from-below",
            kind = "objective",
            priority = 60,
            conditions = {
                all = {
                    { quest = { id = 669, state = "completed" } },
                },
            },
            text = "Use the Cannon to kill 3 waves of Nagas in Faldir's Cove.",
            dependsOn = { "accept-667-death-from-below" },
            complete = QuestState(667, "complete"),
            route = {
                Point(MAP.ARATHI, 0.3198, 0.8087, "Faldir's Cove",
                    "Travel to Faldir's Cove."),
            },
        },
        {
            id = "turnin-667-death-from-below",
            kind = "turnin",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 669, state = "completed" } },
                },
            },
            text = "Turn in Death From Below to Shakes O'Breen in Faldir's Cove.",
            dependsOn = { "objective-667-death-from-below" },
            complete = QuestState(667, "completed"),
            route = {
                Point(MAP.ARATHI, 0.3230, 0.8141, "Shakes O'Breen",
                    "Travel to Shakes O'Breen."),
            },
        },
        {
            id = "turnin-602-magical-analysis",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { quest = { id = 601, state = "completed" } },
                },
            },
            text = "Turn in Magical Analysis to Archmage Ansirem Runeweaver in Dalaran.",
            dependsOn = { "accept-602-magical-analysis" },
            complete = QuestState(602, "completed"),
            route = {
                Point(MAP.ALTERAC, 0.1887, 0.7848, "Archmage Ansirem Runeweaver",
                    "Travel to Archmage Ansirem Runeweaver."),
            },
        },
        {
            id = "accept-603-ansirem-s-key",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { quest = { id = 601, state = "completed" } },
                },
            },
            text = "Accept Ansirem's Key from Archmage Ansirem Runeweaver in Dalaran.",
            complete = QuestState(603, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERAC, 0.1887, 0.7848, "Archmage Ansirem Runeweaver",
                    "Travel to Archmage Ansirem Runeweaver."),
            },
        },
        {
            id = "accept-2877-skulk-rock-clean-up",
            kind = "accept",
            priority = 110,
            text = "Accept Skulk Rock Clean-up from Fraggar Thundermantle in Wildhammer Keep.",
            complete = QuestState(2877, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.1482, 0.4457, "Fraggar Thundermantle",
                    "Travel to Fraggar Thundermantle."),
            },
        },
        {
            id = "accept-2880-troll-necklace-bounty",
            kind = "accept",
            priority = 120,
            text = "Accept Troll Necklace Bounty from Fraggar Thundermantle in Wildhammer Keep.",
            complete = QuestState(2880, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.1459, 0.4460, "Fraggar Thundermantle",
                    "Travel to Fraggar Thundermantle."),
            },
        },
        {
            id = "turnin-1449-to-the-hinterlands",
            kind = "turnin",
            priority = 130,
            text = "Turn in To The Hinterlands to Archmage Ansirem Runeweaver in Aerie Peak.",
            complete = QuestState(1449, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.1180, 0.4674, "Archmage Ansirem Runeweaver",
                    "Travel to Archmage Ansirem Runeweaver."),
            },
        },
        {
            id = "accept-1450-gryphon-master-talonaxe",
            kind = "accept",
            priority = 140,
            text = "Accept Gryphon Master Talonaxe from Falstad Wildhammer in Aerie Peak.",
            complete = QuestState(1450, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.1190, 0.4658, "Falstad Wildhammer",
                    "Travel to Falstad Wildhammer."),
            },
        },
        {
            id = "turnin-1450-gryphon-master-talonaxe",
            kind = "turnin",
            priority = 150,
            text = "Turn in Gryphon Master Talonaxe to Archmage Ansirem Runeweaver in Aerie Peak.",
            dependsOn = { "accept-1450-gryphon-master-talonaxe" },
            complete = QuestState(1450, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.0977, 0.4445, "Archmage Ansirem Runeweaver",
                    "Travel to Archmage Ansirem Runeweaver."),
            },
        },
        {
            id = "accept-1451-rhapsody-shindigger",
            kind = "accept",
            priority = 160,
            text = "Accept Rhapsody Shindigger from Gryphon Master Talonaxe in Aerie Peak.",
            complete = QuestState(1451, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.0977, 0.4445, "Gryphon Master Talonaxe",
                    "Travel to Gryphon Master Talonaxe."),
            },
        },
        {
            id = "accept-2988-witherbark-cages",
            kind = "accept",
            priority = 170,
            text = "Accept Witherbark Cages from Gryphon Master Talonaxe in Aerie Peak.",
            complete = QuestState(2988, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.0977, 0.4445, "Gryphon Master Talonaxe",
                    "Travel to Gryphon Master Talonaxe."),
            },
        },
        {
            id = "note-3661-wildhammer-keep",
            kind = "note",
            priority = 180,
            text = "Set your hearth in Wildhammer Keep with Innkeeper Thulfram.",
            route = {
                Point(MAP.HINTERLANDS, 0.1391, 0.4224, "Innkeeper Thulfram",
                    "Travel to Innkeeper Thulfram."),
            },
        },
        {
            id = "turnin-1451-rhapsody-shindigger",
            kind = "turnin",
            priority = 200,
            text = "Turn in Rhapsody Shindigger to Rhapsody Shindigger in Shindigger's Camp.",
            dependsOn = { "accept-1451-rhapsody-shindigger" },
            complete = QuestState(1451, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.2693, 0.4860, "Rhapsody Shindigger",
                    "Travel to Rhapsody Shindigger."),
            },
        },
        {
            id = "accept-1452-rhapsody-s-kalimdor-kocktail",
            kind = "accept",
            priority = 210,
            text = "Accept Rhapsody's Kalimdor Kocktail from Rhapsody Shindigger in Shindigger's Camp.",
            complete = QuestState(1452, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.2693, 0.4860, "Rhapsody Shindigger",
                    "Travel to Rhapsody Shindigger."),
            },
        },
        {
            id = "objective-2988-1-check-first-cage",
            kind = "objective",
            priority = 220,
            text = "Click First Witherbark Cage in Zun'watha.",
            dependsOn = { "accept-2988-witherbark-cages" },
            complete = QuestObjective(2988, 1),
            route = {
                Point(MAP.HINTERLANDS, 0.2327, 0.5871, "Zun'watha",
                    "Travel to Zun'watha."),
            },
        },
        {
            id = "objective-2988-2-check-second-cage",
            kind = "objective",
            priority = 230,
            text = "Click Second Witherbark Cage in Zun'watha.",
            dependsOn = { "accept-2988-witherbark-cages" },
            complete = QuestObjective(2988, 2),
            route = {
                Point(MAP.HINTERLANDS, 0.2313, 0.5873, "Zun'watha",
                    "Travel to Zun'watha."),
            },
        },
        {
            id = "objective-2988-3-check-third-cage",
            kind = "objective",
            priority = 240,
            text = "Click Third Witherbark Cage in Hiri'watha.",
            dependsOn = { "accept-2988-witherbark-cages" },
            complete = QuestObjective(2988, 3),
            route = {
                Point(MAP.HINTERLANDS, 0.3200, 0.5738, "Hiri'watha",
                    "Travel to Hiri'watha."),
            },
        },
        {
            id = "objective-2880-troll-necklace-bounty",
            kind = "objective",
            priority = 250,
            text = "Kill Witherbark Scalper or Witherbark Zealot collect 5 Troll Tribal Necklace in Hiri'watha.",
            dependsOn = { "accept-2880-troll-necklace-bounty" },
            complete = QuestState(2880, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.3200, 0.5738, "Witherbark Scalper",
                    "Travel to Witherbark Scalper."),
            },
        },
        {
            id = "accept-836-rescue-oox-09-hl",
            kind = "accept",
            priority = 270,
            conditions = {
                all = {
                    { quest = { id = 836, state = "completed" } },
                },
            },
            text = "Accept Rescue OOX-09/HL! from Homing Robot OOX-09/HL in Agol'watha.",
            complete = QuestState(836, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.4936, 0.3763, "Homing Robot OOX-09/HL",
                    "Travel to Homing Robot OOX-09/HL."),
            },
        },
        {
            id = "objective-2877-skulk-rock-clean-up",
            kind = "objective",
            priority = 280,
            text = "Kill 10 Green Sludge and 10 Jade Ooze in Agol'watha.",
            dependsOn = { "accept-2877-skulk-rock-clean-up" },
            complete = QuestState(2877, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.4635, 0.4024, "Green Sludge",
                    "Travel to Green Sludge."),
            },
        },
        {
            id = "objective-2944-1-the-super-snapper-fx",
            kind = "objective",
            priority = 300,
            text = "Use Super Snapper FX on Saltwater Snapjaw in The Overlook Cliffs, you don't need to kill the turtle.",
            complete = QuestObjective(2944, 1),
            route = {
                Point(MAP.HINTERLANDS, 0.7983, 0.5812, "Saltwater Snapjaw",
                    "Travel to Saltwater Snapjaw."),
            },
        },
        {
            id = "objective-3661-favored-of-elune",
            kind = "objective",
            priority = 310,
            text = "Collect 15 Wildkin Feather scattered around The Hinterlands.",
            complete = QuestState(3661, "complete"),
        },
        {
            id = "turnin-2877-skulk-rock-clean-up",
            kind = "turnin",
            priority = 330,
            text = "Turn in Skulk Rock Clean-up to Fraggar Thundermantle in Wildhammer Keep.",
            dependsOn = { "objective-2877-skulk-rock-clean-up" },
            complete = QuestState(2877, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.1482, 0.4458, "Fraggar Thundermantle",
                    "Travel to Fraggar Thundermantle."),
            },
        },
        {
            id = "turnin-2880-troll-necklace-bounty",
            kind = "turnin",
            priority = 340,
            text = "Turn in Troll Necklace Bounty to Fraggar Thundermantle in Wildhammer Keep.",
            dependsOn = { "objective-2880-troll-necklace-bounty" },
            complete = QuestState(2880, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.1482, 0.4458, "Fraggar Thundermantle",
                    "Travel to Fraggar Thundermantle."),
            },
        },
        {
            id = "turnin-2988-witherbark-cages",
            kind = "turnin",
            priority = 350,
            text = "Turn in Witherbark Cages to Gryphon Master Talonaxe in Aerie Peak.",
            dependsOn = { "objective-2988-1-check-first-cage", "objective-2988-2-check-second-cage", "objective-2988-3-check-third-cage" },
            complete = QuestState(2988, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.0974, 0.4450, "Gryphon Master Talonaxe",
                    "Travel to Gryphon Master Talonaxe."),
            },
        },
        {
            id = "accept-2989-the-altar-of-zul",
            kind = "accept",
            priority = 360,
            text = "Accept The Altar of Zul from Gryphon Master Talonaxe in Aerie Peak.",
            complete = QuestState(2989, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.0974, 0.4450, "Gryphon Master Talonaxe",
                    "Travel to Gryphon Master Talonaxe."),
            },
        },
        {
            id = "turnin-1467-reagents-for-reclaimers-inc",
            kind = "turnin",
            priority = 380,
            text = "Turn in Reagents for Reclaimers Inc. to Roetten Stonehammer in Hall of Explorers.",
            complete = QuestState(1467, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.6800, 0.1778, "Roetten Stonehammer",
                    "Travel to Roetten Stonehammer."),
            },
        },
        {
            id = "accept-3448-passing-the-burden",
            kind = "accept",
            priority = 390,
            text = "Accept Passing the Burden from Historian Karnik in The Library.",
            complete = QuestState(3448, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7748, 0.1182, "Historian Karnik",
                    "Travel to Historian Karnik."),
            },
        },
        {
            id = "turnin-3448-passing-the-burden",
            kind = "turnin",
            priority = 400,
            text = "Turn in Passing the Burden to Tymor in The Mystic Ward.",
            dependsOn = { "accept-3448-passing-the-burden" },
            complete = QuestState(3448, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.3104, 0.0477, "Tymor",
                    "Travel to Tymor."),
            },
        },
        {
            id = "accept-3449-arcane-runes",
            kind = "accept",
            priority = 410,
            text = "Accept Arcane Runes from Tymor in The Mystic Ward.",
            complete = QuestState(3449, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.3104, 0.0477, "Tymor",
                    "Travel to Tymor."),
            },
        },
        {
            id = "accept-3450-an-easy-pickup",
            kind = "accept",
            priority = 420,
            text = "Accept An Easy Pickup from Tymor in The Mystic Ward.",
            complete = QuestState(3450, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.3163, 0.0448, "Tymor",
                    "Travel to Tymor."),
            },
        },
        {
            id = "turnin-3450-an-easy-pickup",
            kind = "turnin",
            priority = 430,
            text = "Turn in An Easy Pickup to Xiggs Fuselighter in Hall of Arms.",
            dependsOn = { "accept-3450-an-easy-pickup" },
            complete = QuestState(3450, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7083, 0.9482, "Xiggs Fuselighter",
                    "Travel to Xiggs Fuselighter."),
            },
        },
        {
            id = "accept-3451-signal-for-pickup",
            kind = "accept",
            priority = 440,
            text = "Accept Signal for Pickup from Xiggs Fuselighter in Hall of Arms.",
            complete = QuestState(3451, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7083, 0.9482, "Xiggs Fuselighter",
                    "Travel to Xiggs Fuselighter."),
            },
        },
        {
            id = "turnin-3451-signal-for-pickup",
            kind = "turnin",
            priority = 450,
            text = "Turn in Signal for Pickup to Xiggs Fuselighter in Hall of Arms.",
            dependsOn = { "accept-3451-signal-for-pickup" },
            complete = QuestState(3451, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7083, 0.9482, "Xiggs Fuselighter",
                    "Travel to Xiggs Fuselighter."),
            },
        },
        {
            id = "objective-3483-standard-issue-flare-gun",
            kind = "objective",
            priority = 460,
            text = "Get Standard Issue Flare Gun from Xiggs Fuselighter in Hall of Arms.",
            complete = QuestState(3483, "complete"),
            route = {
                Point(MAP.IRONFORGE, 0.7083, 0.9482, "Xiggs Fuselighter",
                    "Travel to Xiggs Fuselighter."),
            },
        },
    },
})
