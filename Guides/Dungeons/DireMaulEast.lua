local _, ns = ...

local MAP = {
    MOONGLADE = 1450,
    FERALAS = 1444,
}

local ALLIANCE = { faction = "Alliance" }
local HORDE = { faction = "Horde" }
local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
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
    id = "dungeons-dire-maul-east",
    title = "Dire Maul East",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 56 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "accept-5527-a-reliquary-of-purity",
            kind = "accept",
            priority = 10,
            conditions = { level = { min = 56 } },
            text = "Accept A Reliquary of Purity from Rabine Saturna.",
            complete = QuestState(5527, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.517, 0.451, "Rabine Saturna", "Travel to Moonglade."),
            },
        },
        {
            id = "turnin-5527-a-reliquary-of-purity",
            kind = "turnin",
            priority = 12,
            conditions = { level = { min = 56 } },
            text = "Turn in A Reliquary of Purity to Rabine Saturna.",
            dependsOn = { "accept-5527-a-reliquary-of-purity" },
            complete = QuestState(5527, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.517, 0.451, "Rabine Saturna", "Travel to Moonglade."),
            },
        },
        {
            id = "accept-5526-shards-of-the-felvine",
            kind = "accept",
            priority = 13,
            conditions = { level = { min = 56 } },
            text = "Accept Shards of the Felvine from Rabine Saturna.",
            dependsOn = { "turnin-5527-a-reliquary-of-purity" },
            complete = QuestState(5526, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.517, 0.451, "Rabine Saturna", "Travel to Moonglade."),
            },
        },
        {
            id = "accept-7488-lethtendris-s-web",
            kind = "accept",
            priority = 14,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            text = "Accept Lethtendris's Web from Latronicus Moonspear.",
            complete = QuestState(7488, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.304, 0.462, "Latronicus Moonspear", "Travel to Feralas."),
            },
        },
        {
            id = "accept-7441-pusillin-and-the-elder-azj-tordin",
            kind = "accept",
            priority = 15,
            conditions = { level = { min = 54 } },
            text = "Accept Pusillin and the Elder Azj'Tordin from Azj'Tordin.",
            complete = QuestState(7441, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.769, 0.373, "Azj'Tordin", "Travel to Feralas."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 16,
            conditions = { level = { min = 56 } },
            text = "Enter Dire Maul - East with your group.",
            dependsOn = { "accept-5527-a-reliquary-of-purity", "accept-5526-shards-of-the-felvine", "accept-7488-lethtendris-s-web", "accept-7441-pusillin-and-the-elder-azj-tordin" },
            persistCompletion = true,
            complete = { instance = 429 },
        },
        {
            id = "objective-7441-1-book-of-incantations",
            kind = "gossip",
            priority = 22,
            conditions = { level = { min = 54 } },
            text = "Talk to Pusillin. 'Prepare to meet your maker.' Collect Book of Incantations.",
            dependsOn = { "accept-7441-pusillin-and-the-elder-azj-tordin" },
            complete = QuestState(7441, "complete"),
            useClientPin = true,
        },
        {
            id = "objective-7488-1-lethtendris-s-web",
            kind = "objective",
            priority = 24,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            text = "Collect Lethtendris's Web.",
            dependsOn = { "accept-7488-lethtendris-s-web" },
            complete = QuestState(7488, "complete"),
            useClientPin = true,
        },
        {
            id = "objective-5526-1-seal-the-reliquary-of-pu",
            kind = "objective",
            priority = 30,
            conditions = { level = { min = 56 } },
            text = "Seal the Reliquary of Purity.",
            dependsOn = { "accept-5526-shards-of-the-felvine" },
            complete = QuestState(5526, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-7488-lethtendris-s-web",
            kind = "turnin",
            priority = 32,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            text = "Turn in Lethtendris's Web to Latronicus Moonspear.",
            dependsOn = { "objective-7488-1-lethtendris-s-web" },
            complete = QuestState(7488, "completed"),
            route = {
                Point(MAP.FERALAS, 0.304, 0.462, "Latronicus Moonspear", "Travel to Feralas."),
            },
        },
        {
            id = "turnin-7441-pusillin-and-the-elder-azj-tordin",
            kind = "turnin",
            priority = 33,
            conditions = { level = { min = 54 } },
            text = "Turn in Pusillin and the Elder Azj'Tordin to Azj'Tordin.",
            dependsOn = { "objective-7441-1-book-of-incantations" },
            complete = QuestState(7441, "completed"),
            route = {
                Point(MAP.FERALAS, 0.769, 0.373, "Azj'Tordin", "Travel to Feralas."),
            },
        },
        {
            id = "turnin-5526-shards-of-the-felvine",
            kind = "turnin",
            priority = 34,
            conditions = { level = { min = 56 } },
            text = "Turn in Shards of the Felvine to Rabine Saturna.",
            dependsOn = { "objective-5526-1-seal-the-reliquary-of-pu" },
            complete = QuestState(5526, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.517, 0.451, "Rabine Saturna", "Travel to Moonglade."),
            },
        },
        {
            id = "accept-7489-lethtendris-s-web",
            kind = "accept",
            priority = 35,
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            text = "Accept Lethtendris's Web from Talo Thornhoof.",
            complete = QuestState(7489, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.762, 0.438, "Talo Thornhoof", "Travel to Feralas."),
            },
        },
        {
            id = "objective-7489-1-lethtendris-s-web",
            kind = "objective",
            priority = 36,
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            text = "Collect Lethtendris's Web.",
            dependsOn = { "accept-7489-lethtendris-s-web" },
            complete = QuestState(7489, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-7489-lethtendris-s-web",
            kind = "turnin",
            priority = 38,
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            text = "Turn in Lethtendris's Web to Talo Thornhoof.",
            dependsOn = { "objective-7489-1-lethtendris-s-web" },
            complete = QuestState(7489, "completed"),
            route = {
                Point(MAP.FERALAS, 0.762, 0.438, "Talo Thornhoof", "Travel to Feralas."),
            },
        },
    },
})
