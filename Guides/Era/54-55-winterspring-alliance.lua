local _, ns = ...

-- Alliance Era leveling route for Winterspring, levels 54-55.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    WINTERSPRING = 1452,
    FELWOOD = 1448,
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
    id = "leveling-era-54-55-winterspring-alliance",
    title = "54-55 Winterspring (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
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
            id = "accept-5244-the-ruins-of-kel-theril",
            kind = "accept",
            priority = 70,
            text = "Accept The Ruins of Kel'Theril from Wynd Nightchaser in Starfall Village.",
            complete = QuestState(5244, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.5197, 0.3039, "Wynd Nightchaser",
                    "Travel to Wynd Nightchaser."),
            },
        },
        {
            id = "turnin-5244-the-ruins-of-kel-theril",
            kind = "turnin",
            priority = 80,
            text = "Turn in The Ruins of Kel'Theril to Jaron Stoneshaper in Starfall Village.",
            dependsOn = { "accept-5244-the-ruins-of-kel-theril" },
            complete = QuestState(5244, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.5214, 0.3043, "Jaron Stoneshaper",
                    "Travel to Jaron Stoneshaper."),
            },
        },
        {
            id = "accept-5245-troubled-spirits-of-kel-theril",
            kind = "accept",
            priority = 90,
            text = "Accept Troubled Spirits of Kel'Theril from Jaron Stoneshaper in Starfall Village.",
            complete = QuestState(5245, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.5214, 0.3043, "Jaron Stoneshaper",
                    "Travel to Jaron Stoneshaper."),
            },
        },
        {
            id = "accept-4861-enraged-wildkin",
            kind = "accept",
            priority = 100,
            text = "Accept Enraged Wildkin from Jaron Stoneshaper in Starfall Village.",
            complete = QuestState(4861, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.5214, 0.3043, "Jaron Stoneshaper",
                    "Travel to Jaron Stoneshaper."),
            },
        },
        {
            id = "accept-3783-are-we-there-yeti",
            kind = "accept",
            priority = 120,
            text = "Accept Are We There, Yeti? from Umi Rumplesnicker in Everlook.",
            complete = QuestState(3783, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6052, 0.3818, "Continue toward Are We There, Yeti?",
                    "Continue toward Are We There, Yeti?."),
                Point(MAP.WINTERSPRING, 0.6090, 0.3760, "Umi Rumplesnicker",
                    "Travel to Umi Rumplesnicker."),
            },
        },
        {
            id = "note-5245-everlook",
            kind = "note",
            priority = 130,
            text = "Set your hearth in Everlook with Innkeeper Vizzie.",
            route = {
                Point(MAP.WINTERSPRING, 0.6136, 0.3883, "Innkeeper Vizzie",
                    "Travel to Innkeeper Vizzie."),
            },
        },
        {
            id = "objective-5245-1-first-relic-fragment",
            kind = "objective",
            priority = 150,
            text = "Collect First Relic Fragment from Highborne Relic Fragment in Lake Kel'Theril.",
            dependsOn = { "accept-5245-troubled-spirits-of-kel-theril" },
            complete = QuestObjective(5245, 1),
            route = {
                Point(MAP.WINTERSPRING, 0.5516, 0.4294, "Lake Kel'Theril",
                    "Travel to Lake Kel'Theril."),
            },
        },
        {
            id = "objective-5245-3-third-relic-fragment",
            kind = "objective",
            priority = 160,
            text = "Collect Third Relic Fragment from Highborne Relic Fragment in Lake Kel'Theril.",
            dependsOn = { "accept-5245-troubled-spirits-of-kel-theril" },
            complete = QuestObjective(5245, 3),
            route = {
                Point(MAP.WINTERSPRING, 0.5330, 0.4340, "Lake Kel'Theril",
                    "Travel to Lake Kel'Theril."),
            },
        },
        {
            id = "objective-5245-4-fourth-relic-fragment",
            kind = "objective",
            priority = 170,
            text = "Collect Fourth Relic Fragment from Highborne Relic Fragment in Lake Kel'Theril.",
            dependsOn = { "accept-5245-troubled-spirits-of-kel-theril" },
            complete = QuestObjective(5245, 4),
            route = {
                Point(MAP.WINTERSPRING, 0.5241, 0.4159, "Lake Kel'Theril",
                    "Travel to Lake Kel'Theril."),
            },
        },
        {
            id = "objective-5245-2-second-relic-fragment",
            kind = "objective",
            priority = 180,
            text = "Collect Second Relic Fragment from Highborne Relic Fragment in Lake Kel'Theril.",
            dependsOn = { "accept-5245-troubled-spirits-of-kel-theril" },
            complete = QuestObjective(5245, 2),
            route = {
                Point(MAP.WINTERSPRING, 0.5096, 0.4175, "Lake Kel'Theril",
                    "Travel to Lake Kel'Theril."),
            },
        },
        {
            id = "turnin-4861-enraged-wildkin",
            kind = "turnin",
            priority = 200,
            text = "Turn in Enraged Wildkin in Dun Mandarr.",
            dependsOn = { "accept-4861-enraged-wildkin" },
            complete = QuestState(4861, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.5899, 0.5976, "Dun Mandarr",
                    "Travel to Dun Mandarr."),
            },
        },
        {
            id = "accept-4863-enraged-wildkin",
            kind = "accept",
            priority = 210,
            text = "Accept Enraged Wildkin in Dun Mandarr.",
            complete = QuestState(4863, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.5899, 0.5976, "Dun Mandarr",
                    "Travel to Dun Mandarr."),
            },
        },
        {
            id = "turnin-4863-enraged-wildkin",
            kind = "turnin",
            priority = 220,
            text = "Turn in Enraged Wildkin in Dun Mandarr.",
            dependsOn = { "accept-4863-enraged-wildkin" },
            complete = QuestState(4863, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6140, 0.6067, "Dun Mandarr",
                    "Travel to Dun Mandarr."),
            },
        },
        {
            id = "accept-4864-enraged-wildkin",
            kind = "accept",
            priority = 230,
            text = "Accept Enraged Wildkin in Dun Mandarr.",
            complete = QuestState(4864, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6140, 0.6067, "Dun Mandarr",
                    "Travel to Dun Mandarr."),
            },
        },
        {
            id = "objective-4864-1-jaron-s-supplies",
            kind = "objective",
            priority = 240,
            text = "Collect Jaron's Supplies from the crate next to Jaron's Wagon in Dun Mandarr.",
            dependsOn = { "accept-4864-enraged-wildkin" },
            complete = QuestObjective(4864, 1),
            route = {
                Point(MAP.WINTERSPRING, 0.6140, 0.6074, "Dun Mandarr",
                    "Travel to Dun Mandarr."),
            },
        },
        {
            id = "objective-4864-2-blue-feathered-amulet",
            kind = "objective",
            priority = 250,
            text = "Kill Owlbeasts until you find Blue-Feathered Amulet in Owl Wing Thicket, (high drop rate).",
            dependsOn = { "accept-4864-enraged-wildkin" },
            complete = QuestObjective(4864, 2),
            route = {
                Point(MAP.WINTERSPRING, 0.6555, 0.6038, "Crazed Owlbeast",
                    "Travel to Crazed Owlbeast."),
            },
        },
        {
            id = "objective-4842-strange-sources",
            kind = "objective",
            priority = 260,
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
            priority = 290,
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
            priority = 300,
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
            priority = 310,
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
            priority = 320,
            text = "Use the Empty Firewater Flask to accept Winterfall Firewater.",
            complete = QuestState(5083, "activeOrCompleted"),
        },
        {
            id = "turnin-4864-enraged-wildkin",
            kind = "turnin",
            priority = 340,
            text = "Turn in Enraged Wildkin to Jaron Stoneshaper in Starfall Village.",
            dependsOn = { "objective-4864-1-jaron-s-supplies", "objective-4864-2-blue-feathered-amulet" },
            complete = QuestState(4864, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.5214, 0.3043, "Jaron Stoneshaper",
                    "Travel to Jaron Stoneshaper."),
            },
        },
        {
            id = "objective-5082-1-threat-of-the-winterfall",
            kind = "objective",
            priority = 360,
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
            priority = 370,
            text = "Kill 8 Winterfall Pathfinder and 8 Winterfall Totemic in Timbermaw Post There's not much Winterfall Den Watcher around this area, you can kill lots of them east of Everlook later.",
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
            complete = QuestObjective(5082, 3),
            route = {
                Point(MAP.WINTERSPRING, 0.3076, 0.3653, "Winterfall Pathfinder",
                    "Travel to Winterfall Pathfinder."),
            },
        },
        {
            id = "turnin-4842-strange-sources",
            kind = "turnin",
            priority = 390,
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
            id = "turnin-5083-winterfall-firewater",
            kind = "turnin",
            priority = 400,
            text = "Turn in Winterfall Firewater to Donova Snowden in Frostfire Hot Springs.",
            dependsOn = { "objective-5083-empty-firewater-flask" },
            complete = QuestState(5083, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.3127, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "accept-5084-falling-to-corruption",
            kind = "accept",
            priority = 410,
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
            priority = 420,
            text = "Turn in Threat of the Winterfall to Donova Snowden in Frostfire Hot Springs.",
            dependsOn = { "objective-5082-2-threat-of-the-winterfall", "objective-5082-1-threat-of-the-winterfall", "objective-5082-3-threat-of-the-winterfall" },
            complete = QuestState(5082, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.3128, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "objective-3783-are-we-there-yeti",
            kind = "objective",
            priority = 440,
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
            priority = 460,
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
            priority = 470,
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
            priority = 490,
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
            priority = 510,
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
            priority = 520,
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
            priority = 530,
            text = "Use Umi's Mechanical Yeti near Legacki in Everlook.",
            dependsOn = { "accept-5163-are-we-there-yeti" },
            complete = QuestObjective(5163, 1),
            route = {
                Point(MAP.WINTERSPRING, 0.6153, 0.3863, "Legacki",
                    "Travel to Legacki."),
            },
        },
        {
            id = "accept-5601-sister-pamela",
            kind = "accept",
            priority = 540,
            text = "Accept Sister Pamela from Jessica Redpath in Everlook.",
            complete = QuestState(5601, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6134, 0.3898, "Jessica Redpath",
                    "Travel to Jessica Redpath."),
            },
        },
        {
            id = "accept-6028-the-everlook-report",
            kind = "accept",
            priority = 550,
            text = "Accept The Everlook Report from Gregor Greystone in Everlook.",
            complete = QuestState(6028, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6134, 0.3898, "Gregor Greystone",
                    "Travel to Gregor Greystone."),
            },
        },
        {
            id = "accept-6030-duke-nicholas-zverenhoff",
            kind = "accept",
            priority = 560,
            text = "Accept Duke Nicholas Zverenhoff from Gregor Greystone in Everlook.",
            complete = QuestState(6030, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6135, 0.3897, "Gregor Greystone",
                    "Travel to Gregor Greystone."),
            },
        },
        {
            id = "turnin-5084-falling-to-corruption",
            kind = "turnin",
            priority = 580,
            text = "Turn in Falling to Corruption in Felpaw Village.",
            dependsOn = { "accept-5084-falling-to-corruption" },
            complete = QuestState(5084, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.6020, 0.0588, "Felpaw Village",
                    "Travel to Felpaw Village."),
            },
        },
        {
            id = "accept-5085-mystery-goo",
            kind = "accept",
            priority = 590,
            text = "Accept Mystery Goo in Felpaw Village.",
            complete = QuestState(5085, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.6020, 0.0588, "Felpaw Village",
                    "Travel to Felpaw Village."),
            },
        },
        {
            id = "turnin-8464-winterfall-activity",
            kind = "turnin",
            priority = 610,
            text = "Turn in Winterfall Activity to Salfa in Frostfire Hot Springs.",
            dependsOn = { "objective-8464-winterfall-activity" },
            complete = QuestState(8464, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.2775, 0.3458, "Salfa",
                    "Travel to Salfa."),
            },
        },
        {
            id = "turnin-5085-mystery-goo",
            kind = "turnin",
            priority = 620,
            text = "Turn in Mystery Goo to Donova Snowden in Frostfire Hot Springs.",
            dependsOn = { "accept-5085-mystery-goo" },
            complete = QuestState(5085, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.3127, 0.4515, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "accept-5086-toxic-horrors",
            kind = "accept",
            priority = 630,
            text = "Accept Toxic Horrors from Donova Snowden in Frostfire Hot Springs.",
            complete = QuestState(5086, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.3127, 0.4515, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
    },
})
