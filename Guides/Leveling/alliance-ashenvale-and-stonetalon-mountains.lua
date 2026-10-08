local _, ns = ...

-- Forever Casual spine: Ashenvale & Stonetalon Mountains (21-24)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Dungeon quests (BFD) belong in Guides/Dungeons/BlackfathomDeeps.lua.
-- Forever weaves are applied in a separate pass.
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
    THE_BARRENS = 1413,
    DARKSHORE = 1439,
    ASHENVALE = 1440,
    STONETALON_MOUNTAINS = 1442,
    DARNASSUS = 1457,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
    title = "Ashenvale & Stonetalon Mountains",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 21 } },
        },
    },
    goals = {
        {
            id = "turnin-967-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Tower of Althalaxx.",
            complete = QuestState(967, "completed"),
            route = {
                Point(1440, 0.2620, 0.3870, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "accept-970-the-tower-of-althalaxx",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Tower of Althalaxx.",
            complete = QuestState(970, "activeOrCompleted"),
            route = {
                Point(1440, 0.2620, 0.3870, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "accept-1010-bathran-s-hair",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bathran's Hair.",
            complete = QuestState(1010, "activeOrCompleted"),
            route = {
                Point(1440, 0.2644, 0.3859, "Bathran's Hair",
                    "Travel to Bathran's Hair."),
            },
        },
        {
            id = "objective-970-1-dark-strand-cultist",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Dark Strand Cultist.",
            complete = QuestObjective(970, 1, "Dark Strand Cultist"),
            dependsOn = { "accept-970-the-tower-of-althalaxx" },
            route = {
                Point(1440, 0.3139, 0.3062, "Dark Strand Cultist",
                    "Travel to Dark Strand Cultist."),
            },
        },
        {
            id = "objective-1010-1-bathran-s-hair",
            kind = "objective",
            priority = 50,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Collect 5 Bathran's Hair.",
            complete = QuestObjective(1010, 1, "Bathran's Hair"),
            dependsOn = { "accept-1010-bathran-s-hair" },
            route = {
                Point(1440, 0.3010, 0.2470, "Bathran's Hair",
                    "Travel to Bathran's Hair."),
            },
        },
        {
            id = "turnin-1010-bathran-s-hair",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bathran's Hair.",
            complete = QuestState(1010, "completed"),
            dependsOn = { "accept-1010-bathran-s-hair", "objective-1010-1-bathran-s-hair" },
            route = {
                Point(1440, 0.2644, 0.3859, "Bathran's Hair",
                    "Travel to Bathran's Hair."),
            },
        },
        {
            id = "accept-1020-orendil-s-cure",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Orendil's Cure.",
            complete = QuestState(1020, "activeOrCompleted"),
            route = {
                Point(1440, 0.2644, 0.3859, "Orendil's Cure",
                    "Travel to Orendil's Cure."),
            },
        },
        {
            id = "turnin-970-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Tower of Althalaxx.",
            complete = QuestState(970, "completed"),
            dependsOn = { "accept-970-the-tower-of-althalaxx", "objective-970-1-dark-strand-cultist" },
            route = {
                Point(1440, 0.2620, 0.3870, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "accept-973-the-tower-of-althalaxx",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Tower of Althalaxx.",
            complete = QuestState(973, "activeOrCompleted"),
            route = {
                Point(1440, 0.2620, 0.3870, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "turnin-945-therylune-s-escape",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Therylune's Escape.",
            complete = QuestState(945, "completed"),
            route = {
                Point(1440, 0.2265, 0.5191, "Therylune's Escape",
                    "Travel to Therylune's Escape."),
            },
        },
        {
            id = "accept-1008-the-zoram-strand",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Zoram Strand.",
            complete = QuestState(1008, "activeOrCompleted"),
            route = {
                Point(1440, 0.3467, 0.4884, "The Zoram Strand",
                    "Travel to The Zoram Strand."),
            },
        },
        {
            id = "accept-1070-on-guard-in-stonetalon",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept On Guard in Stonetalon.",
            complete = QuestState(1070, "activeOrCompleted"),
            route = {
                Point(1440, 0.3489, 0.4979, "On Guard in Stonetalon",
                    "Travel to On Guard in Stonetalon."),
            },
        },
        {
            id = "accept-1056-journey-to-stonetalon-peak",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Journey to Stonetalon Peak.",
            complete = QuestState(1056, "activeOrCompleted"),
            route = {
                Point(1440, 0.3576, 0.4910, "Journey to Stonetalon Peak",
                    "Travel to Journey to Stonetalon Peak."),
            },
        },
        {
            id = "accept-991-raene-s-cleansing",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(991, "activeOrCompleted"),
            route = {
                Point(1440, 0.3662, 0.4958, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1054-culling-the-threat",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Culling the Threat.",
            complete = QuestState(1054, "activeOrCompleted"),
            route = {
                Point(1440, 0.3662, 0.4958, "Culling the Threat",
                    "Travel to Culling the Threat."),
            },
        },
        {
            id = "turnin-1020-orendil-s-cure",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Orendil's Cure.",
            complete = QuestState(1020, "completed"),
            dependsOn = { "accept-1020-orendil-s-cure" },
            route = {
                Point(1440, 0.3737, 0.5179, "Orendil's Cure",
                    "Travel to Orendil's Cure."),
            },
        },
        {
            id = "accept-1033-elune-s-tear",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Elune's Tear.",
            complete = QuestState(1033, "activeOrCompleted"),
            route = {
                Point(1440, 0.3737, 0.5179, "Elune's Tear",
                    "Travel to Elune's Tear."),
            },
        },
        {
            id = "turnin-1716-devourer-of-souls",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Turn in Devourer of Souls.",
            complete = QuestState(1716, "completed"),
            route = {
                Point(1413, 0.4899, 0.0539, "Devourer of Souls",
                    "Travel to Devourer of Souls."),
            },
        },
        {
            id = "accept-1738-heartswood",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Accept Heartswood.",
            complete = QuestState(1738, "activeOrCompleted"),
            route = {
                Point(1413, 0.4899, 0.0539, "Heartswood",
                    "Travel to Heartswood."),
            },
        },
        {
            id = "objective-1054-1-dal-bloodclaw",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Dal Bloodclaw.",
            complete = QuestObjective(1054, 1, "Dal Bloodclaw"),
            dependsOn = { "accept-1054-culling-the-threat" },
            route = {
                Point(1440, 0.3840, 0.3660, "Dal Bloodclaw",
                    "Travel to Dal Bloodclaw."),
            },
        },
        {
            id = "turnin-1054-culling-the-threat",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Culling the Threat.",
            complete = QuestState(1054, "completed"),
            dependsOn = { "accept-1054-culling-the-threat", "objective-1054-1-dal-bloodclaw" },
            route = {
                Point(1440, 0.3662, 0.4958, "Culling the Threat",
                    "Travel to Culling the Threat."),
            },
        },
        {
            id = "turnin-1033-elune-s-tear",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Elune's Tear.",
            complete = QuestState(1033, "completed"),
            dependsOn = { "accept-1033-elune-s-tear" },
            route = {
                Point(1440, 0.3737, 0.5179, "Elune's Tear",
                    "Travel to Elune's Tear."),
            },
        },
        {
            id = "accept-1034-the-ruins-of-stardust",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Ruins of Stardust.",
            complete = QuestState(1034, "activeOrCompleted"),
            route = {
                Point(1440, 0.3737, 0.5179, "The Ruins of Stardust",
                    "Travel to The Ruins of Stardust."),
            },
        },
        {
            id = "objective-1034-1-handful-of-stardust",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Collect 5 Handful of Stardust.",
            complete = QuestObjective(1034, 1, "Handful of Stardust"),
            dependsOn = { "accept-1034-the-ruins-of-stardust" },
            route = {
                Point(1440, 0.3342, 0.6736, "Handful of Stardust",
                    "Travel to Handful of Stardust."),
            },
        },
        {
            id = "objective-973-1-ilkrud-magthrull",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Ilkrud Magthrull.",
            complete = QuestObjective(973, 1, "Ilkrud Magthrull"),
            dependsOn = { "accept-973-the-tower-of-althalaxx" },
            route = {
                Point(1440, 0.3612, 0.6182, "Ilkrud Magthrull",
                    "Travel to Ilkrud Magthrull."),
            },
        },
        {
            id = "turnin-973-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Tower of Althalaxx.",
            complete = QuestState(973, "completed"),
            dependsOn = { "accept-973-the-tower-of-althalaxx", "objective-973-1-ilkrud-magthrull" },
            route = {
                Point(1440, 0.2839, 0.6088, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "turnin-991-raene-s-cleansing",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(991, "completed"),
            dependsOn = { "accept-991-raene-s-cleansing" },
            route = {
                Point(1440, 0.2031, 0.4233, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1023-raene-s-cleansing",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1023, "activeOrCompleted"),
            route = {
                Point(1440, 0.2031, 0.4233, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "objective-1023-1-saltspittle-puddlejumper",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Saltspittle Puddlejumper.",
            complete = QuestObjective(1023, 1, "Saltspittle Puddlejumper"),
            dependsOn = { "accept-1023-raene-s-cleansing" },
            route = {
                Point(1440, 0.1920, 0.4300, "Saltspittle Puddlejumper",
                    "Travel to Saltspittle Puddlejumper."),
            },
        },
        {
            id = "accept-1007-the-ancient-statuette",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Ancient Statuette.",
            complete = QuestState(1007, "activeOrCompleted"),
            route = {
                Point(1440, 0.1479, 0.3130, "The Ancient Statuette",
                    "Travel to The Ancient Statuette."),
            },
        },
        {
            id = "turnin-1007-the-ancient-statuette",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Ancient Statuette.",
            complete = QuestState(1007, "completed"),
            dependsOn = { "accept-1007-the-ancient-statuette" },
            route = {
                Point(1440, 0.1479, 0.3130, "The Ancient Statuette",
                    "Travel to The Ancient Statuette."),
            },
        },
        {
            id = "accept-1009-ruuzel",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ruuzel.",
            complete = QuestState(1009, "activeOrCompleted"),
            route = {
                Point(1440, 0.1479, 0.3130, "Ruuzel",
                    "Travel to Ruuzel."),
            },
        },
        {
            id = "objective-1009-1-lady-vespia",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Lady Vespia.",
            complete = QuestObjective(1009, 1, "Lady Vespia"),
            dependsOn = { "accept-1009-ruuzel" },
            route = {
                Point(1440, 0.1240, 0.1880, "Lady Vespia",
                    "Travel to Lady Vespia."),
            },
        },
        {
            id = "objective-1009-1-lady-vespia-2",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Lady Vespia.",
            complete = QuestObjective(1009, 1, "Lady Vespia"),
            dependsOn = { "accept-1009-ruuzel" },
            route = {
                Point(1440, 0.0940, 0.1520, "Lady Vespia",
                    "Travel to Lady Vespia."),
            },
        },
        {
            id = "objective-1009-1-ruuzel",
            kind = "objective",
            priority = 350,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Ruuzel.",
            complete = QuestObjective(1009, 1, "Ruuzel"),
            dependsOn = { "accept-1009-ruuzel" },
            route = {
                Point(1440, 0.0720, 0.1300, "Ruuzel",
                    "Travel to Ruuzel."),
            },
        },
        {
            id = "turnin-1009-ruuzel",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Ruuzel.",
            complete = QuestState(1009, "completed"),
            dependsOn = { "accept-1009-ruuzel", "objective-1009-1-lady-vespia", "objective-1009-1-lady-vespia-2", "objective-1009-1-ruuzel" },
            route = {
                Point(1440, 0.1479, 0.3130, "Ruuzel",
                    "Travel to Ruuzel."),
            },
        },
        {
            id = "turnin-1023-raene-s-cleansing",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(1023, "completed"),
            dependsOn = { "accept-1023-raene-s-cleansing", "objective-1023-1-saltspittle-puddlejumper" },
            route = {
                Point(1440, 0.3662, 0.4958, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "turnin-1034-the-ruins-of-stardust",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Ruins of Stardust.",
            complete = QuestState(1034, "completed"),
            dependsOn = { "accept-1034-the-ruins-of-stardust", "objective-1034-1-handful-of-stardust" },
            route = {
                Point(1440, 0.3737, 0.5179, "The Ruins of Stardust",
                    "Travel to The Ruins of Stardust."),
            },
        },
        {
            id = "turnin-1008-the-zoram-strand",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Zoram Strand.",
            complete = QuestState(1008, "completed"),
            dependsOn = { "accept-1008-the-zoram-strand" },
            route = {
                Point(1440, 0.3467, 0.4884, "The Zoram Strand",
                    "Travel to The Zoram Strand."),
            },
        },
        {
            id = "accept-1134-pridewings-of-stonetalon",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Pridewings of Stonetalon.",
            complete = QuestState(1134, "activeOrCompleted"),
            route = {
                Point(1440, 0.3467, 0.4884, "Pridewings of Stonetalon",
                    "Travel to Pridewings of Stonetalon."),
            },
        },
        {
            id = "turnin-4730-beached-sea-creature",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Beached Sea Creature.",
            complete = QuestState(4730, "completed"),
            route = {
                Point(1439, 0.3662, 0.4559, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "turnin-4731-beached-sea-turtle",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Beached Sea Turtle.",
            complete = QuestState(4731, "completed"),
            route = {
                Point(1439, 0.3662, 0.4559, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "turnin-4732-beached-sea-turtle",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Beached Sea Turtle.",
            complete = QuestState(4732, "completed"),
            route = {
                Point(1439, 0.3662, 0.4559, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "turnin-4733-beached-sea-creature",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Beached Sea Creature.",
            complete = QuestState(4733, "completed"),
            route = {
                Point(1439, 0.3662, 0.4559, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "turnin-4740-wanted-murkdeep",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in WANTED: Murkdeep!.",
            complete = QuestState(4740, "completed"),
            route = {
                Point(1439, 0.3771, 0.4339, "WANTED: Murkdeep!",
                    "Travel to WANTED: Murkdeep!."),
            },
        },
        {
            id = "turnin-731-the-absent-minded-prospector",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Absent Minded Prospector.",
            complete = QuestState(731, "completed"),
            route = {
                Point(1439, 0.3744, 0.4184, "The Absent Minded Prospector",
                    "Travel to The Absent Minded Prospector."),
            },
        },
        {
            id = "accept-741-the-absent-minded-prospector",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Absent Minded Prospector.",
            complete = QuestState(741, "activeOrCompleted"),
            route = {
                Point(1439, 0.3744, 0.4184, "The Absent Minded Prospector",
                    "Travel to The Absent Minded Prospector."),
            },
        },
        {
            id = "turnin-995-escape-through-stealth",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Escape Through Stealth.",
            complete = QuestState(995, "completed"),
            route = {
                Point(1439, 0.3937, 0.4348, "Escape Through Stealth",
                    "Travel to Escape Through Stealth."),
            },
        },
        {
            id = "turnin-994-escape-through-force",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Escape Through Force.",
            complete = QuestState(994, "completed"),
            route = {
                Point(1439, 0.3937, 0.4348, "Escape Through Force",
                    "Travel to Escape Through Force."),
            },
        },
        {
            id = "turnin-741-the-absent-minded-prospector",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Absent Minded Prospector.",
            complete = QuestState(741, "completed"),
            dependsOn = { "accept-741-the-absent-minded-prospector" },
            route = {
                Point(1457, 0.3125, 0.8450, "The Absent Minded Prospector",
                    "Travel to The Absent Minded Prospector."),
            },
        },
        {
            id = "accept-942-the-absent-minded-prospector",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Absent Minded Prospector.",
            complete = QuestState(942, "activeOrCompleted"),
            route = {
                Point(1457, 0.3125, 0.8450, "The Absent Minded Prospector",
                    "Travel to The Absent Minded Prospector."),
            },
        },
        {
            id = "accept-1199-twilight-falls",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Twilight Falls.",
            complete = QuestState(1199, "activeOrCompleted"),
            route = {
                Point(1457, 0.5524, 0.2399, "Twilight Falls",
                    "Travel to Twilight Falls."),
            },
        },
        {
            id = "accept-1198-in-search-of-thaelrid",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept In Search of Thaelrid.",
            complete = QuestState(1198, "activeOrCompleted"),
            route = {
                Point(1457, 0.5536, 0.2503, "In Search of Thaelrid",
                    "Travel to In Search of Thaelrid."),
            },
        },
        {
            id = "accept-1275-researching-the-corruption",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Researching the Corruption.",
            complete = QuestState(1275, "activeOrCompleted"),
            route = {
                Point(1439, 0.3833, 0.4304, "Researching the Corruption",
                    "Travel to Researching the Corruption."),
            },
        },
        {
            id = "turnin-1070-on-guard-in-stonetalon",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in On Guard in Stonetalon.",
            complete = QuestState(1070, "completed"),
            dependsOn = { "accept-1070-on-guard-in-stonetalon" },
            route = {
                Point(1440, 0.4227, 0.7109, "On Guard in Stonetalon",
                    "Travel to On Guard in Stonetalon."),
            },
        },
        {
            id = "accept-1085-on-guard-in-stonetalon",
            kind = "accept",
            priority = 560,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept On Guard in Stonetalon.",
            complete = QuestState(1085, "activeOrCompleted"),
            route = {
                Point(1440, 0.4227, 0.7109, "On Guard in Stonetalon",
                    "Travel to On Guard in Stonetalon."),
            },
        },
        {
            id = "turnin-1085-on-guard-in-stonetalon",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in On Guard in Stonetalon.",
            complete = QuestState(1085, "completed"),
            dependsOn = { "accept-1085-on-guard-in-stonetalon" },
            route = {
                Point(1442, 0.5952, 0.6715, "On Guard in Stonetalon",
                    "Travel to On Guard in Stonetalon."),
            },
        },
        {
            id = "accept-1071-a-gnome-s-respite",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Gnome's Respite.",
            complete = QuestState(1071, "activeOrCompleted"),
            route = {
                Point(1442, 0.5952, 0.6715, "A Gnome's Respite",
                    "Travel to A Gnome's Respite."),
            },
        },
        {
            id = "accept-1093-super-reaper-6000",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Super Reaper 6000.",
            complete = QuestState(1093, "activeOrCompleted"),
            route = {
                Point(1442, 0.5899, 0.6260, "Super Reaper 6000",
                    "Travel to Super Reaper 6000."),
            },
        },
        {
            id = "objective-1093-1-venture-co-operator",
            kind = "objective",
            priority = 600,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Venture Co. Operator.",
            complete = QuestObjective(1093, 1, "Venture Co. Operator"),
            dependsOn = { "accept-1093-super-reaper-6000" },
            route = {
                Point(1442, 0.6220, 0.5200, "Venture Co. Operator",
                    "Travel to Venture Co. Operator."),
            },
        },
        {
            id = "turnin-1093-super-reaper-6000",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Super Reaper 6000.",
            complete = QuestState(1093, "completed"),
            dependsOn = { "accept-1093-super-reaper-6000", "objective-1093-1-venture-co-operator" },
            route = {
                Point(1442, 0.5899, 0.6260, "Super Reaper 6000",
                    "Travel to Super Reaper 6000."),
            },
        },
        {
            id = "turnin-1071-a-gnome-s-respite",
            kind = "turnin",
            priority = 620,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Gnome's Respite.",
            complete = QuestState(1071, "completed"),
            dependsOn = { "accept-1071-a-gnome-s-respite" },
            route = {
                Point(1442, 0.5952, 0.6715, "A Gnome's Respite",
                    "Travel to A Gnome's Respite."),
            },
        },
        {
            id = "accept-1072-an-old-colleague",
            kind = "accept",
            priority = 630,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept An Old Colleague.",
            complete = QuestState(1072, "activeOrCompleted"),
            route = {
                Point(1442, 0.5952, 0.6715, "An Old Colleague",
                    "Travel to An Old Colleague."),
            },
        },
        {
            id = "accept-1075-a-scroll-from-mauren",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Scroll from Mauren.",
            complete = QuestState(1075, "activeOrCompleted"),
            route = {
                Point(1442, 0.5952, 0.6715, "A Scroll from Mauren",
                    "Travel to A Scroll from Mauren."),
            },
        },
        {
            id = "objective-1134-1-pridewing-wyvern",
            kind = "objective",
            priority = 650,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Pridewing Wyvern.",
            complete = QuestObjective(1134, 1, "Pridewing Wyvern"),
            dependsOn = { "accept-1134-pridewings-of-stonetalon" },
            route = {
                Point(1442, 0.5040, 0.4560, "Pridewing Wyvern",
                    "Travel to Pridewing Wyvern."),
            },
        },
        {
            id = "turnin-1056-journey-to-stonetalon-peak",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Journey to Stonetalon Peak.",
            complete = QuestState(1056, "completed"),
            dependsOn = { "accept-1056-journey-to-stonetalon-peak" },
            route = {
                Point(1442, 0.3710, 0.0810, "Journey to Stonetalon Peak",
                    "Travel to Journey to Stonetalon Peak."),
            },
        },
        {
            id = "turnin-1134-pridewings-of-stonetalon",
            kind = "turnin",
            priority = 670,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Pridewings of Stonetalon.",
            complete = QuestState(1134, "completed"),
            dependsOn = { "accept-1134-pridewings-of-stonetalon", "objective-1134-1-pridewing-wyvern" },
            route = {
                Point(1440, 0.3467, 0.4884, "Pridewings of Stonetalon",
                    "Travel to Pridewings of Stonetalon."),
            },
        },
        {
            id = "accept-1025-an-aggressive-defense",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept An Aggressive Defense.",
            complete = QuestState(1025, "activeOrCompleted"),
            route = {
                Point(1440, 0.3662, 0.4958, "An Aggressive Defense",
                    "Travel to An Aggressive Defense."),
            },
        },
        {
            id = "accept-1016-elemental-bracers",
            kind = "accept",
            priority = 690,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Accept Elemental Bracers.",
            complete = QuestState(1016, "activeOrCompleted"),
            route = {
                Point(1440, 0.4980, 0.6721, "Elemental Bracers",
                    "Travel to Elemental Bracers."),
            },
        },
        {
            id = "objective-1016-1-befouled-water-elemental",
            kind = "objective",
            priority = 700,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Befouled Water Elemental.",
            complete = QuestObjective(1016, 1, "Befouled Water Elemental"),
            dependsOn = { "accept-1016-elemental-bracers" },
            route = {
                Point(1440, 0.4960, 0.6920, "Befouled Water Elemental",
                    "Travel to Befouled Water Elemental."),
            },
        },
        {
            id = "turnin-1016-elemental-bracers",
            kind = "turnin",
            priority = 710,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Elemental Bracers.",
            complete = QuestState(1016, "completed"),
            dependsOn = { "accept-1016-elemental-bracers", "objective-1016-1-befouled-water-elemental" },
            route = {
                Point(1440, 0.4980, 0.6721, "Elemental Bracers",
                    "Travel to Elemental Bracers."),
            },
        },
        {
            id = "objective-1025-1-foulweald-den-watcher",
            kind = "objective",
            priority = 720,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill Foulweald Den Watcher.",
            complete = QuestObjective(1025, 1, "Foulweald Den Watcher"),
            dependsOn = { "accept-1025-an-aggressive-defense" },
            route = {
                Point(1440, 0.5240, 0.6280, "Foulweald Den Watcher",
                    "Travel to Foulweald Den Watcher."),
            },
        },
        {
            id = "objective-1025-2-foulweald-ursa",
            kind = "objective",
            priority = 730,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill 2 Foulweald Ursa.",
            complete = QuestObjective(1025, 2, "Foulweald Ursa"),
            dependsOn = { "accept-1025-an-aggressive-defense" },
            route = {
                Point(1440, 0.5240, 0.6280, "Foulweald Ursa",
                    "Travel to Foulweald Ursa."),
            },
        },
        {
            id = "objective-1025-3-foulweald-totemic",
            kind = "objective",
            priority = 740,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Foulweald Totemic.",
            complete = QuestObjective(1025, 3, "Foulweald Totemic"),
            dependsOn = { "accept-1025-an-aggressive-defense" },
            route = {
                Point(1440, 0.5240, 0.6280, "Foulweald Totemic",
                    "Travel to Foulweald Totemic."),
            },
        },
        {
            id = "objective-1025-4-foulweald-warrior",
            kind = "objective",
            priority = 750,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Kill 12 Foulweald Warrior.",
            complete = QuestObjective(1025, 4, "Foulweald Warrior"),
            dependsOn = { "accept-1025-an-aggressive-defense" },
            route = {
                Point(1440, 0.5240, 0.6280, "Foulweald Warrior",
                    "Travel to Foulweald Warrior."),
            },
        },
        {
            id = "turnin-1275-researching-the-corruption",
            kind = "turnin",
            priority = 790,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Researching the Corruption.",
            complete = QuestState(1275, "completed"),
            dependsOn = { "accept-1275-researching-the-corruption" },
            route = {
                Point(1439, 0.3833, 0.4304, "Researching the Corruption",
                    "Travel to Researching the Corruption."),
            },
        },
        {
            id = "turnin-1199-twilight-falls",
            kind = "turnin",
            priority = 800,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Twilight Falls.",
            complete = QuestState(1199, "completed"),
            dependsOn = { "accept-1199-twilight-falls" },
            route = {
                Point(1457, 0.5524, 0.2399, "Twilight Falls",
                    "Travel to Twilight Falls."),
            },
        },
        {
            id = "turnin-1025-an-aggressive-defense",
            kind = "turnin",
            priority = 820,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Alliance" },
            } },
            text = "Turn in An Aggressive Defense.",
            complete = QuestState(1025, "completed"),
            dependsOn = { "accept-1025-an-aggressive-defense", "objective-1025-1-foulweald-den-watcher", "objective-1025-2-foulweald-ursa", "objective-1025-3-foulweald-totemic", "objective-1025-4-foulweald-warrior" },
            route = {
                Point(1440, 0.3662, 0.4958, "An Aggressive Defense",
                    "Travel to An Aggressive Defense."),
            },
        },
    },
})
