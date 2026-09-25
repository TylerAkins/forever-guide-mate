local _, ns = ...

-- Alliance Era leveling route for the Hinterlands, levels 50-50.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    HINTERLANDS = 1425,
    STRANGLETHORN = 1434,
    DUSTWALLOW = 1445,
    BARRENS = 1413,
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
    id = "leveling-era-50-50-hinterlands",
    title = "50-50 Hinterlands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 50 } },
        },
    },
    goals = {
        {
            id = "accept-580-whiskey-slim-s-lost-grog",
            kind = "accept",
            priority = 20,
            text = "Accept Whiskey Slim's Lost Grog from Whiskey Slim in The Salty Sailor Tavern.",
            complete = QuestState(580, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2712, 0.7743, "Whiskey Slim",
                    "Travel to Whiskey Slim."),
            },
        },
        {
            id = "note-3661-wildhammer-keep",
            kind = "note",
            priority = 40,
            text = "Set your hearth in Wildhammer Keep with Innkeeper Thulfram.",
            route = {
                Point(MAP.HINTERLANDS, 0.1391, 0.4224, "Innkeeper Thulfram",
                    "Travel to Innkeeper Thulfram."),
            },
        },
        {
            id = "accept-4297-food-for-baby",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 3843, state = "completed" } },
                },
            },
            text = "Accept Food for Baby from Agnar Beastamer in Wildhammer Keep.",
            complete = QuestState(4297, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.1381, 0.4328, "Agnar Beastamer",
                    "Travel to Agnar Beastamer."),
            },
        },
        {
            id = "objective-2641-violet-tragan",
            kind = "objective",
            priority = 70,
            text = "Collect Violet Tragan from the mushroom underwater in the middle of Valorwind Lake.",
            complete = QuestState(2641, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.4005, 0.5989, "Valorwind Lake",
                    "Travel to Valorwind Lake."),
            },
        },
        {
            id = "travel-2989-the-altar-of-zul",
            kind = "travel",
            priority = 80,
            text = "Travel to The Altar of Zul. Go up to the top of the stair to search The Altar of Zul.",
            complete = QuestState(2989, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.4876, 0.6835, "The Altar of Zul",
                    "Travel to The Altar of Zul."),
            },
        },
        {
            id = "objective-2989-the-altar-of-zul",
            kind = "objective",
            priority = 90,
            text = "Go up to the top of the stair to search The Altar of Zul.",
            complete = QuestState(2989, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.4876, 0.6835, "The Altar of Zul",
                    "Travel to The Altar of Zul."),
            },
        },
        {
            id = "accept-836-rescue-oox-09-hl",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { quest = { id = 485, state = "completed" } },
                },
            },
            text = "Accept Rescue OOX-09/HL! from Homing Robot OOX-09/HL in The Hinterlands.",
            complete = QuestState(836, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.4935, 0.3768, "Homing Robot OOX-09/HL",
                    "Travel to Homing Robot OOX-09/HL."),
            },
        },
        {
            id = "objective-836-rescue-oox-09-hl",
            kind = "objective",
            priority = 110,
            conditions = {
                all = {
                    { quest = { id = 485, state = "completed" } },
                },
            },
            text = "Escort Homing Robot OOX-09/HL to the shoreline beyond The Overlook Cliffs You will be ambushed by 3 level 47 Savage Owlbeast and 3 Trolls, and 1 Wolf on seperate occassions.",
            dependsOn = { "accept-836-rescue-oox-09-hl" },
            complete = QuestState(836, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.7899, 0.6133, "Homing Robot OOX-09/HL",
                    "Travel to Homing Robot OOX-09/HL."),
            },
        },
        {
            id = "turnin-626-cortello-s-riddle",
            kind = "turnin",
            priority = 130,
            text = "Turn in Cortello's Riddle in The Overlook Cliffs.",
            complete = QuestState(626, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.8082, 0.4679, "The Overlook Cliffs",
                    "Travel to The Overlook Cliffs."),
            },
        },
        {
            id = "objective-4297-food-for-baby",
            kind = "objective",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 3843, state = "completed" } },
                },
            },
            text = "Kill Silvermane Stalker and collect 5 Silvermane Stalker Flank.",
            dependsOn = { "accept-4297-food-for-baby" },
            complete = QuestState(4297, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.6917, 0.5407, "Silvermane Stalker",
                    "Travel to Silvermane Stalker."),
            },
        },
        {
            id = "turnin-4297-food-for-baby",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { quest = { id = 3843, state = "completed" } },
                },
            },
            text = "Turn in Food for Baby to Agnar Beastamer in Wildhammer Keep.",
            dependsOn = { "objective-4297-food-for-baby" },
            complete = QuestState(4297, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.1415, 0.4361, "Agnar Beastamer",
                    "Travel to Agnar Beastamer."),
            },
        },
        {
            id = "accept-4298-becoming-a-parent",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 3843, state = "completed" } },
                },
            },
            text = "Accept Becoming a Parent from Agnar Beastamer in Wildhammer Keep.",
            complete = QuestState(4298, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.1415, 0.4361, "Agnar Beastamer",
                    "Travel to Agnar Beastamer."),
            },
        },
        {
            id = "turnin-4298-becoming-a-parent",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { quest = { id = 3843, state = "completed" } },
                },
            },
            text = "Turn in Becoming a Parent to Agnar Beastamer in Wildhammer Keep.",
            dependsOn = { "accept-4298-becoming-a-parent" },
            complete = QuestState(4298, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.1415, 0.4361, "Agnar Beastamer",
                    "Travel to Agnar Beastamer."),
            },
        },
        {
            id = "turnin-2989-the-altar-of-zul",
            kind = "turnin",
            priority = 190,
            text = "Turn in The Altar of Zul to Gryphon Master Talonaxe in Aerie Peak.",
            dependsOn = { "objective-2989-the-altar-of-zul" },
            complete = QuestState(2989, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.0969, 0.4447, "Gryphon Master Talonaxe",
                    "Travel to Gryphon Master Talonaxe."),
            },
        },
        {
            id = "accept-2990-thadius-grimshade",
            kind = "accept",
            priority = 200,
            text = "Accept Thadius Grimshade from Gryphon Master Talonaxe in Aerie Peak.",
            complete = QuestState(2990, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.0969, 0.4447, "Gryphon Master Talonaxe",
                    "Travel to Gryphon Master Talonaxe."),
            },
        },
        {
            id = "note-4502-theramore-isle",
            kind = "note",
            priority = 220,
            text = "Set your hearth in Theramore Isle with Innkeeper Janene.",
            route = {
                Point(MAP.DUSTWALLOW, 0.6659, 0.4522, "Innkeeper Janene",
                    "Travel to Innkeeper Janene."),
            },
        },
        {
            id = "accept-4502-volcanic-activity",
            kind = "accept",
            priority = 240,
            text = "Accept Volcanic Activity from Liv Rizzlefix in Ratchet.",
            complete = QuestState(4502, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6245, 0.3872, "Liv Rizzlefix",
                    "Travel to Liv Rizzlefix."),
            },
        },
    },
})
