local _, ns = ...

-- Horde Era leveling route for Winterspring, levels 54-55.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    WINTERSPRING = 1452,
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
    id = "leveling-era-54-55-winterspring",
    title = "54-55 Winterspring (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 54 } },
        },
    },
    goals = {
        {
            id = "accept-8464-winterfall-activity",
            kind = "accept",
            priority = 20,
            text = "Accept Winterfall Activity from Salfa in Frostfire Hot Springs.",
            complete = QuestState(8464, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.2774, 0.3453, "Salfa",
                    "Travel to Salfa."),
            },
        },
        {
            id = "accept-4842-strange-sources",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 980, state = "completed" } },
                },
            },
            text = "Accept Strange Sources from Donova Snowden in Frostfire Hot Springs.",
            complete = QuestState(4842, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.3127, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "accept-5082-threat-of-the-winterfall",
            kind = "accept",
            priority = 50,
            text = "Accept Threat of the Winterfall from Donova Snowden in Frostfire Hot Springs.",
            complete = QuestState(5082, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.3128, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "accept-3783-are-we-there-yeti",
            kind = "accept",
            priority = 70,
            text = "Accept Are We There, Yeti? from Umi Rumplesnicker in Everlook.",
            complete = QuestState(3783, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6090, 0.3760, "Umi Rumplesnicker",
                    "Travel to Umi Rumplesnicker."),
            },
        },
        {
            id = "note-5245-everlook",
            kind = "note",
            priority = 80,
            text = "Set your hearth in Everlook with Innkeeper Vizzie.",
            route = {
                Point(MAP.WINTERSPRING, 0.6136, 0.3883, "Innkeeper Vizzie",
                    "Travel to Innkeeper Vizzie."),
            },
        },
        {
            id = "objective-4842-strange-sources",
            kind = "objective",
            priority = 90,
            conditions = {
                all = {
                    { quest = { id = 980, state = "completed" } },
                },
            },
            text = "Go over the bridge and discover Darkwhisper Gorge.",
            dependsOn = { "accept-4842-strange-sources" },
            complete = QuestState(4842, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6240, 0.6717, "Continue toward Strange Sources",
                    "Continue toward Strange Sources."),
                Point(MAP.WINTERSPRING, 0.6182, 0.7063, "Continue toward Strange Sources",
                    "Continue toward Strange Sources."),
                Point(MAP.WINTERSPRING, 0.6006, 0.7349, "Darkwhisper Gorge",
                    "Travel to Darkwhisper Gorge."),
            },
        },
        {
            id = "objective-8464-winterfall-activity",
            kind = "objective",
            priority = 110,
            text = "Kill the required Winterfall fulborg in Winterfall Village.",
            dependsOn = { "accept-8464-winterfall-activity" },
            complete = QuestState(8464, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6713, 0.3593, "Winterfall Shaman",
                    "Travel to Winterfall Shaman."),
            },
        },
        {
            id = "objective-5082-2-threat-of-the-winterfall",
            kind = "objective",
            priority = 120,
            text = "Kill 8 Winterfall Den Watcher in Winterfall Village.",
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
            complete = QuestObjective(5082, 2),
            route = {
                Point(MAP.WINTERSPRING, 0.6694, 0.3482, "Winterfall Den Watcher",
                    "Travel to Winterfall Den Watcher."),
            },
        },
        {
            id = "objective-5083-empty-firewater-flask",
            kind = "objective",
            priority = 130,
            text = "Collect Empty Firewater Flask from Winterfall fulborgs.",
            dependsOn = { "accept-5083-winterfall-firewater" },
            complete = QuestState(5083, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6713, 0.3593, "Winterfall Shaman",
                    "Travel to Winterfall Shaman."),
            },
        },
        {
            id = "accept-5083-winterfall-firewater",
            kind = "accept",
            priority = 140,
            text = "Use the Empty Firewater Flask to accept Winterfall Firewater.",
            complete = QuestState(5083, "activeOrCompleted"),
        },
        {
            id = "objective-5082-1-threat-of-the-winterfall",
            kind = "objective",
            priority = 160,
            text = "Kill 8 Winterfall Pathfinder and 8 Winterfall Totemic in Timbermaw Post There's not much Winterfall Den Watcher around this area, you can kill lots of them east of Everlook later.",
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
            complete = QuestObjective(5082, 1),
            route = {
                Point(MAP.WINTERSPRING, 0.4069, 0.4287, "Continue toward Threat of the Winterfall",
                    "Continue toward Threat of the Winterfall."),
                Point(MAP.WINTERSPRING, 0.3076, 0.3653, "Winterfall Pathfinder",
                    "Travel to Winterfall Pathfinder."),
            },
        },
        {
            id = "objective-5082-3-threat-of-the-winterfall",
            kind = "objective",
            priority = 170,
            text = "Kill 8 Winterfall Pathfinder and 8 Winterfall Totemic in Timbermaw Post There's not much Winterfall Den Watcher around this area, you can kill lots of them east of Everlook later.",
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
            complete = QuestObjective(5082, 3),
            route = {
                Point(MAP.WINTERSPRING, 0.3076, 0.3653, "Winterfall Pathfinder",
                    "Travel to Winterfall Pathfinder."),
            },
        },
        {
            id = "objective-4521-1-raging-owlbeast",
            kind = "objective",
            priority = 180,
            text = "Kill 15 Raging Owlbeast in Winterspring.",
            complete = QuestObjective(4521, 1),
            route = {
                Point(MAP.WINTERSPRING, 0.6213, 0.3176, "Continue toward Raging Owlbeast",
                    "Continue toward Raging Owlbeast."),
                Point(MAP.WINTERSPRING, 0.5891, 0.3357, "Continue toward Raging Owlbeast",
                    "Continue toward Raging Owlbeast."),
                Point(MAP.WINTERSPRING, 0.5912, 0.2786, "Continue toward Raging Owlbeast",
                    "Continue toward Raging Owlbeast."),
                Point(MAP.WINTERSPRING, 0.5444, 0.2815, "Raging Owlbeast",
                    "Travel to Raging Owlbeast."),
            },
        },
        {
            id = "objective-4521-2-ragged-owlbeast",
            kind = "objective",
            priority = 190,
            text = "Start killing 15 Ragged Owlbeast in Winterspring follow the waypoint and kill as much as you can for now.",
            complete = QuestObjective(4521, 2),
            route = {
                Point(MAP.WINTERSPRING, 0.5406, 0.3726, "Continue toward Ragged Owlbeast",
                    "Continue toward Ragged Owlbeast."),
                Point(MAP.WINTERSPRING, 0.4753, 0.3709, "Continue toward Ragged Owlbeast",
                    "Continue toward Ragged Owlbeast."),
                Point(MAP.WINTERSPRING, 0.4407, 0.3792, "Continue toward Ragged Owlbeast",
                    "Continue toward Ragged Owlbeast."),
                Point(MAP.WINTERSPRING, 0.4468, 0.4333, "Ragged Owlbeast",
                    "Travel to Ragged Owlbeast."),
            },
        },
        {
            id = "objective-5082-1-threat-of-the-winterfall-2",
            kind = "objective",
            priority = 200,
            text = "Kill 8 Winterfall Pathfinder and 8 Winterfall Totemic in Timbermaw Post There's not much Winterfall Den Watcher around this area, you can kill lots of them east of Everlook later.",
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
            complete = QuestObjective(5082, 1),
            route = {
                Point(MAP.WINTERSPRING, 0.4069, 0.4287, "Continue toward Threat of the Winterfall",
                    "Continue toward Threat of the Winterfall."),
                Point(MAP.WINTERSPRING, 0.3076, 0.3653, "Winterfall Pathfinder",
                    "Travel to Winterfall Pathfinder."),
            },
        },
        {
            id = "objective-5082-3-threat-of-the-winterfall-2",
            kind = "objective",
            priority = 210,
            text = "Kill 8 Winterfall Pathfinder and 8 Winterfall Totemic in Timbermaw Post There's not much Winterfall Den Watcher around this area, you can kill lots of them east of Everlook later.",
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
            complete = QuestObjective(5082, 3),
            route = {
                Point(MAP.WINTERSPRING, 0.3076, 0.3653, "Winterfall Pathfinder",
                    "Travel to Winterfall Pathfinder."),
            },
        },
        {
            id = "objective-5083-empty-firewater-flask-2",
            kind = "objective",
            priority = 220,
            text = "Collect Empty Firewater Flask from Winterfall fulborgs.",
            dependsOn = { "accept-5083-winterfall-firewater" },
            complete = QuestState(5083, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.3076, 0.3653, "Winterfall Pathfinder",
                    "Travel to Winterfall Pathfinder."),
            },
        },
        {
            id = "accept-5083-winterfall-firewater-2",
            kind = "accept",
            priority = 230,
            text = "Use the Empty Firewater Flask to accept Winterfall Firewater.",
            complete = QuestState(5083, "activeOrCompleted"),
        },
        {
            id = "turnin-4842-strange-sources",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { quest = { id = 980, state = "completed" } },
                },
            },
            text = "Turn in Strange Sources to Donova Snowden in Frostfire Hot Springs.",
            dependsOn = { "objective-4842-strange-sources" },
            complete = QuestState(4842, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.3127, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "accept-5084-falling-to-corruption",
            kind = "accept",
            priority = 260,
            text = "Accept Falling to Corruption from Donova Snowden in Frostfire Hot Springs.",
            complete = QuestState(5084, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.3127, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "turnin-5082-threat-of-the-winterfall",
            kind = "turnin",
            priority = 270,
            text = "Turn in Threat of the Winterfall to Donova Snowden in Frostfire Hot Springs.",
            dependsOn = { "objective-5082-2-threat-of-the-winterfall", "objective-5082-1-threat-of-the-winterfall", "objective-5082-3-threat-of-the-winterfall", "objective-5082-1-threat-of-the-winterfall-2", "objective-5082-3-threat-of-the-winterfall-2" },
            complete = QuestState(5082, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.3128, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "turnin-5083-winterfall-firewater",
            kind = "turnin",
            priority = 280,
            text = "Turn in Winterfall Firewater to Donova Snowden in Frostfire Hot Springs.",
            dependsOn = { "objective-5083-empty-firewater-flask", "objective-5083-empty-firewater-flask-2" },
            complete = QuestState(5083, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.3127, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "objective-4521-2-ragged-owlbeast-2",
            kind = "objective",
            priority = 290,
            text = "Kill 15 Ragged Owlbeast in Winterspring follow the waypoint and kill as much as you can for now.",
            complete = QuestObjective(4521, 2),
            route = {
                Point(MAP.WINTERSPRING, 0.3877, 0.3796, "Continue toward Ragged Owlbeast",
                    "Continue toward Ragged Owlbeast."),
                Point(MAP.WINTERSPRING, 0.4577, 0.3718, "Continue toward Ragged Owlbeast",
                    "Continue toward Ragged Owlbeast."),
                Point(MAP.WINTERSPRING, 0.4978, 0.4011, "Ragged Owlbeast",
                    "Travel to Ragged Owlbeast."),
            },
        },
        {
            id = "objective-3783-are-we-there-yeti",
            kind = "objective",
            priority = 310,
            text = "Kill Ice Thistle Yeti or Ice Thistle Yeti and collect 10 Thick Yeti Fur in Ice Thistle Hills.",
            dependsOn = { "accept-3783-are-we-there-yeti" },
            complete = QuestState(3783, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.7157, 0.3908, "Ice Thistle Yeti",
                    "Travel to Ice Thistle Yeti."),
            },
        },
        {
            id = "turnin-3783-are-we-there-yeti",
            kind = "turnin",
            priority = 330,
            text = "Turn in Are We There, Yeti? to Umi Rumplesnicker in Everlook.",
            dependsOn = { "objective-3783-are-we-there-yeti" },
            complete = QuestState(3783, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6089, 0.3764, "Umi Rumplesnicker",
                    "Travel to Umi Rumplesnicker."),
            },
        },
        {
            id = "accept-977-are-we-there-yeti",
            kind = "accept",
            priority = 340,
            text = "Accept Are We There, Yeti? from Umi Rumplesnicker in Everlook.",
            complete = QuestState(977, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6090, 0.3760, "Umi Rumplesnicker",
                    "Travel to Umi Rumplesnicker."),
            },
        },
        {
            id = "objective-977-are-we-there-yeti",
            kind = "objective",
            priority = 360,
            text = "Kill Ice Thistle Matriarch or Ice Thistle Patriarch and collect 2 Pristine Yeti Horn in Ice Thistle Hills.",
            dependsOn = { "accept-977-are-we-there-yeti" },
            complete = QuestState(977, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6888, 0.4100, "Ice Thistle Matriarch",
                    "Travel to Ice Thistle Matriarch."),
            },
        },
        {
            id = "turnin-977-are-we-there-yeti",
            kind = "turnin",
            priority = 380,
            text = "Turn in Are We There, Yeti? to Umi Rumplesnicker in Everlook.",
            dependsOn = { "objective-977-are-we-there-yeti" },
            complete = QuestState(977, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6088, 0.3763, "Umi Rumplesnicker",
                    "Travel to Umi Rumplesnicker."),
            },
        },
        {
            id = "accept-5163-are-we-there-yeti",
            kind = "accept",
            priority = 390,
            text = "Accept Are We There, Yeti? from Umi Rumplesnicker in Everlook.",
            complete = QuestState(5163, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6090, 0.3760, "Umi Rumplesnicker",
                    "Travel to Umi Rumplesnicker."),
            },
        },
        {
            id = "objective-5163-1-legacki",
            kind = "objective",
            priority = 400,
            text = "Use Umi's Mechanical Yeti near Legacki in Everlook.",
            dependsOn = { "accept-5163-are-we-there-yeti" },
            complete = QuestObjective(5163, 1),
            route = {
                Point(MAP.WINTERSPRING, 0.6153, 0.3863, "Legacki",
                    "Travel to Legacki."),
            },
        },
        {
            id = "accept-6029-the-everlook-report",
            kind = "accept",
            priority = 410,
            text = "Accept The Everlook Report from Gregor Greystone in Everlook.",
            complete = QuestState(6029, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6135, 0.3895, "Gregor Greystone",
                    "Travel to Gregor Greystone."),
            },
        },
        {
            id = "accept-6030-duke-nicholas-zverenhoff",
            kind = "accept",
            priority = 420,
            text = "Accept Duke Nicholas Zverenhoff from Jessica Redpath in Everlook.",
            complete = QuestState(6030, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6128, 0.3896, "Jessica Redpath",
                    "Travel to Jessica Redpath."),
            },
        },
        {
            id = "accept-5601-sister-pamela",
            kind = "accept",
            priority = 430,
            text = "Accept Sister Pamela from Jessica Redpath in Everlook.",
            complete = QuestState(5601, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6129, 0.3889, "Jessica Redpath",
                    "Travel to Jessica Redpath."),
            },
        },
    },
})
