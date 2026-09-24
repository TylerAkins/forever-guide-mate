local _, ns = ...

-- Alliance Era leveling route for Winterspring, levels 59-60.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    WINTERSPRING = 1452,
    MOONGLADE = 1450,
    FELWOOD = 1448,
    TELDRASSIL = 1438,
    DARNASSUS = 1457,
    BURNING_STEPPES = 1428,
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
    id = "leveling-era-59-60-winterspring-alliance",
    title = "59-60 Winterspring (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 59 } },
        },
    },
    goals = {
        {
            id = "accept-6845-uncovering-past-secrets",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { quest = { id = 6844, state = "completed" } },
                },
            },
            text = "Accept Uncovering Past Secrets from Umber in Nighthaven.",
            complete = QuestState(6845, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.4483, 0.3571, "Umber",
                    "Travel to Umber."),
            },
        },
        {
            id = "turnin-6845-uncovering-past-secrets",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 6844, state = "completed" } },
                },
            },
            text = "Turn in Uncovering Past Secrets to Rabine Saturna in Nighthaven.",
            dependsOn = { "accept-6845-uncovering-past-secrets" },
            complete = QuestState(6845, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5169, 0.4503, "Rabine Saturna",
                    "Travel to Rabine Saturna."),
            },
        },
        {
            id = "turnin-1185-under-the-chitin-was",
            kind = "turnin",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 6845, state = "completed" } },
                },
            },
            text = "Turn in Under the Chitin Was... to Umber in Nighthaven. This is an elite. Bring a group.",
            complete = QuestState(1185, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.4483, 0.3571, "Umber",
                    "Travel to Umber."),
            },
        },
        {
            id = "accept-5087-winterfall-runners",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 5086, state = "completed" } },
                },
            },
            text = "Accept Winterfall Runners from Donova Snowden in Frostfire Hot Springs.",
            complete = QuestState(5087, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.3128, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "objective-5087-winterfall-runners",
            kind = "objective",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 5086, state = "completed" } },
                },
            },
            text = "Find Winterfall Runner along the road and kill them to collect Winterfall Crate.",
            dependsOn = { "accept-5087-winterfall-runners" },
            complete = QuestState(5087, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.3067, 0.4262, "Continue toward Winterfall Runners",
                    "Continue toward Winterfall Runners."),
                Point(MAP.WINTERSPRING, 0.4023, 0.4080, "Continue toward Winterfall Runners",
                    "Continue toward Winterfall Runners."),
                Point(MAP.WINTERSPRING, 0.4810, 0.3905, "Continue toward Winterfall Runners",
                    "Continue toward Winterfall Runners."),
                Point(MAP.WINTERSPRING, 0.5339, 0.3442, "Winterfall Runner",
                    "Travel to Winterfall Runner."),
            },
        },
        {
            id = "travel-4809-everlook",
            kind = "travel",
            priority = 60,
            text = "Travel to Everlook.",
            route = {
                Point(MAP.WINTERSPRING, 0.6089, 0.3764, "Everlook",
                    "Travel to Everlook."),
            },
        },
        {
            id = "accept-4809-chillwind-horns",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 4808, state = "completed" } },
                },
            },
            text = "Accept Chillwind Horns from Felnok Steelspring in Everlook.",
            complete = QuestState(4809, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6162, 0.3860, "Felnok Steelspring",
                    "Travel to Felnok Steelspring."),
            },
        },
        {
            id = "accept-969-luck-be-with-you",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { quest = { id = 6606, state = "completed" } },
                },
            },
            text = "Accept Luck Be With You from Witch Doctor Mau'ari in Everlook.",
            complete = QuestState(969, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6192, 0.3837, "Witch Doctor Mau'ari",
                    "Travel to Witch Doctor Mau'ari."),
            },
        },
        {
            id = "note-4970-everlook",
            kind = "note",
            priority = 90,
            text = "Set your hearth in Everlook with Innkeeper Vizzie.",
            route = {
                Point(MAP.WINTERSPRING, 0.6133, 0.3885, "Innkeeper Vizzie",
                    "Travel to Innkeeper Vizzie."),
            },
        },
        {
            id = "travel-4970-frostsaber-rock",
            kind = "travel",
            priority = 100,
            text = "Travel to Frostsaber Rock.",
            route = {
                Point(MAP.WINTERSPRING, 0.4857, 0.1037, "Frostsaber Rock",
                    "Travel to Frostsaber Rock."),
            },
        },
        {
            id = "accept-4970-frostsaber-provisions",
            kind = "accept",
            priority = 110,
            text = "Accept Frostsaber Provisions from Rivern Frostwind in Frostsaber Rock.",
            complete = QuestState(4970, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.4857, 0.1037, "Continue toward Frostsaber Provisions",
                    "Continue toward Frostsaber Provisions."),
                Point(MAP.WINTERSPRING, 0.4993, 0.0984, "Rivern Frostwind",
                    "Travel to Rivern Frostwind."),
            },
        },
        {
            id = "objective-4970-frostsaber-provisions",
            kind = "objective",
            priority = 120,
            text = "Kill Elder Shardtooth and Chillwind Ravager and collect 5 Shardtooth Meat and 5 Chillwind Meat near Frostsaber Rock.",
            dependsOn = { "accept-4970-frostsaber-provisions" },
            complete = QuestState(4970, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.5925, 0.1409, "Elder Shardtooth",
                    "Travel to Elder Shardtooth."),
            },
        },
        {
            id = "objective-4809-chillwind-horns",
            kind = "objective",
            priority = 130,
            conditions = {
                all = {
                    { quest = { id = 4808, state = "completed" } },
                },
            },
            text = "Kill Chillwind Ravager and collect 8 Uncracked Chillwind Horn near Frostsaber Rock.",
            dependsOn = { "accept-4809-chillwind-horns" },
            complete = QuestState(4809, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6227, 0.3404, "Chillwind Ravager",
                    "Travel to Chillwind Ravager."),
            },
        },
        {
            id = "turnin-4970-frostsaber-provisions",
            kind = "turnin",
            priority = 140,
            text = "Turn in Frostsaber Provisions to Rivern Frostwind in Frostsaber Rock.",
            dependsOn = { "objective-4970-frostsaber-provisions" },
            complete = QuestState(4970, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.4993, 0.0984, "Rivern Frostwind",
                    "Travel to Rivern Frostwind."),
            },
        },
        {
            id = "travel-4810-everlook",
            kind = "travel",
            priority = 150,
            conditions = {
                all = {
                    { quest = { id = 4808, state = "completed" } },
                },
            },
            text = "Travel to Everlook.",
            route = {
                Point(MAP.WINTERSPRING, 0.6160, 0.3861, "Everlook",
                    "Travel to Everlook."),
            },
        },
        {
            id = "turnin-4809-chillwind-horns",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { quest = { id = 4808, state = "completed" } },
                },
            },
            text = "Turn in Chillwind Horns to Felnok Steelspring in Everlook.",
            dependsOn = { "objective-4809-chillwind-horns" },
            complete = QuestState(4809, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6160, 0.3861, "Felnok Steelspring",
                    "Travel to Felnok Steelspring."),
            },
        },
        {
            id = "accept-4810-return-to-tinkee",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 4809, state = "completed" } },
                },
            },
            text = "Accept Return to Tinkee from Felnok Steelspring in Everlook.",
            complete = QuestState(4810, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6162, 0.3860, "Felnok Steelspring",
                    "Travel to Felnok Steelspring."),
            },
        },
        {
            id = "accept-4901-guardians-of-the-altar",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { quest = { id = 979, state = "completed" } },
                },
            },
            text = "Accept Guardians of the Altar from Ranshalla in Owl Wing Thicket.",
            complete = QuestState(4901, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6307, 0.5949, "Ranshalla",
                    "Travel to Ranshalla."),
            },
        },
        {
            id = "objective-4901-guardians-of-the-altar",
            kind = "objective",
            priority = 190,
            conditions = {
                all = {
                    { quest = { id = 979, state = "completed" } },
                },
            },
            text = "Escort Ranshalla to the Altar of Elune in Owl Wing Thicket.",
            dependsOn = { "accept-4901-guardians-of-the-altar" },
            complete = QuestState(4901, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6477, 0.5999, "Continue toward Guardians of the Altar",
                    "Continue toward Guardians of the Altar."),
                Point(MAP.WINTERSPRING, 0.6483, 0.6376, "Ranshalla",
                    "Travel to Ranshalla."),
            },
        },
        {
            id = "objective-969-luck-be-with-you",
            kind = "objective",
            priority = 200,
            conditions = {
                all = {
                    { quest = { id = 6606, state = "completed" } },
                },
            },
            text = "Collect 10 Frostmaul Shards from the ground and you can also get it from the Frostmaul Giant in Frostwhisper Gorge.",
            dependsOn = { "accept-969-luck-be-with-you" },
            complete = QuestState(969, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6504, 0.6541, "Continue toward Luck Be With You",
                    "Continue toward Luck Be With You."),
                Point(MAP.WINTERSPRING, 0.6459, 0.6633, "Continue toward Luck Be With You",
                    "Continue toward Luck Be With You."),
                Point(MAP.WINTERSPRING, 0.6435, 0.6715, "Continue toward Luck Be With You",
                    "Continue toward Luck Be With You."),
                Point(MAP.WINTERSPRING, 0.6253, 0.6725, "Continue toward Luck Be With You",
                    "Continue toward Luck Be With You."),
                Point(MAP.WINTERSPRING, 0.6183, 0.7074, "Continue toward Luck Be With You",
                    "Continue toward Luck Be With You."),
                Point(MAP.WINTERSPRING, 0.6346, 0.7243, "Continue toward Luck Be With You",
                    "Continue toward Luck Be With You."),
                Point(MAP.WINTERSPRING, 0.6438, 0.7233, "Continue toward Luck Be With You",
                    "Continue toward Luck Be With You."),
                Point(MAP.WINTERSPRING, 0.5988, 0.6950, "Frostmaul Giant",
                    "Travel to Frostmaul Giant."),
            },
        },
        {
            id = "travel-975-everlook",
            kind = "travel",
            priority = 210,
            conditions = {
                all = {
                    { quest = { id = 6606, state = "completed" } },
                },
            },
            text = "Travel to Everlook.",
            route = {
                Point(MAP.WINTERSPRING, 0.6192, 0.3829, "Everlook",
                    "Travel to Everlook."),
            },
        },
        {
            id = "turnin-969-luck-be-with-you",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { quest = { id = 6606, state = "completed" } },
                },
            },
            text = "Turn in Luck Be With You to Witch Doctor Mau'ari in Everlook.",
            dependsOn = { "objective-969-luck-be-with-you" },
            complete = QuestState(969, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6192, 0.3829, "Witch Doctor Mau'ari",
                    "Travel to Witch Doctor Mau'ari."),
            },
        },
        {
            id = "accept-975-cache-of-mau-ari",
            kind = "accept",
            priority = 230,
            conditions = {
                all = {
                    { quest = { id = 6606, state = "completed" } },
                },
            },
            text = "Accept Cache of Mau'ari from Witch Doctor Mau'ari in Everlook.",
            complete = QuestState(975, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6192, 0.3829, "Witch Doctor Mau'ari",
                    "Travel to Witch Doctor Mau'ari."),
            },
        },
        {
            id = "turnin-975-cache-of-mau-ari",
            kind = "turnin",
            priority = 240,
            conditions = {
                all = {
                    { quest = { id = 6606, state = "completed" } },
                },
            },
            text = "Turn in Cache of Mau'ari to Storm Shadowhoof in Everlook.",
            dependsOn = { "accept-975-cache-of-mau-ari" },
            complete = QuestState(975, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6192, 0.3829, "Storm Shadowhoof",
                    "Travel to Storm Shadowhoof."),
            },
        },
        {
            id = "travel-frostfire-hot-springs",
            kind = "travel",
            priority = 250,
            conditions = {
                all = {
                    { quest = { id = 5086, state = "completed" } },
                },
            },
            text = "Travel to Frostfire Hot Springs.",
            route = {
                Point(MAP.WINTERSPRING, 0.3128, 0.4517, "Frostfire Hot Springs",
                    "Travel to Frostfire Hot Springs."),
            },
        },
        {
            id = "turnin-5087-winterfall-runners",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { quest = { id = 5086, state = "completed" } },
                },
            },
            text = "Turn in Winterfall Runners to Donova Snowden in Frostfire Hot Springs.",
            dependsOn = { "objective-5087-winterfall-runners" },
            complete = QuestState(5087, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.3128, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "accept-5121-high-chief-winterfall",
            kind = "accept",
            priority = 270,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Accept High Chief Winterfall from Donova Snowden in Frostfire Hot Springs.",
            complete = QuestState(5121, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.3128, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "travel-5121-winterfall-village",
            kind = "travel",
            priority = 280,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Travel to Winterfall Village.",
            route = {
                Point(MAP.WINTERSPRING, 0.6969, 0.3826, "Winterfall Village",
                    "Travel to Winterfall Village."),
            },
        },
        {
            id = "objective-5121-high-chief-winterfall",
            kind = "objective",
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Kill High Chief Winterfall in Winterfall Village, he's a level 59 elite.",
            dependsOn = { "accept-5121-high-chief-winterfall" },
            complete = QuestState(5121, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6969, 0.3826, "High Chief Winterfall",
                    "Travel to High Chief Winterfall."),
            },
        },
        {
            id = "objective-5123-crudely-written-log",
            kind = "objective",
            priority = 300,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Collect Crudely-Written Log from High Chief Winterfall in Winterfall Village.",
            dependsOn = { "accept-5123-the-final-piece" },
            complete = QuestState(5123, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6969, 0.3826, "High Chief Winterfall",
                    "Travel to High Chief Winterfall."),
            },
        },
        {
            id = "accept-5123-the-final-piece",
            kind = "accept",
            priority = 310,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Use the Crudely-Written Log to accept The Final Piece.",
            complete = QuestState(5123, "activeOrCompleted"),
        },
        {
            id = "travel-frostfire-hot-springs-2",
            kind = "travel",
            priority = 320,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Travel to Frostfire Hot Springs.",
            route = {
                Point(MAP.WINTERSPRING, 0.3128, 0.4517, "Frostfire Hot Springs",
                    "Travel to Frostfire Hot Springs."),
            },
        },
        {
            id = "turnin-5123-the-final-piece",
            kind = "turnin",
            priority = 330,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Turn in The Final Piece to Donova Snowden in Frostfire Hot Springs.",
            dependsOn = { "objective-5123-crudely-written-log" },
            complete = QuestState(5123, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.3128, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "accept-5128-words-of-the-high-chief",
            kind = "accept",
            priority = 340,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Accept Words of the High Chief from Donova Snowden in Frostfire Hot Springs.",
            complete = QuestState(5128, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.3128, 0.4517, "Donova Snowden",
                    "Travel to Donova Snowden."),
            },
        },
        {
            id = "travel-emerald-sanctuary",
            kind = "travel",
            priority = 350,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Travel to Emerald Sanctuary in Felwood.",
            route = {
                Point(MAP.FELWOOD, 0.5114, 0.8176, "Emerald Sanctuary",
                    "Travel to Emerald Sanctuary."),
            },
        },
        {
            id = "turnin-5128-words-of-the-high-chief",
            kind = "turnin",
            priority = 360,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Turn in Words of the High Chief to Kelek Skykeeper in Emerald Sanctuary.",
            dependsOn = { "accept-5128-words-of-the-high-chief" },
            complete = QuestState(5128, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.5114, 0.8176, "Kelek Skykeeper",
                    "Travel to Kelek Skykeeper."),
            },
        },
        {
            id = "travel-4902-rut-theran-village",
            kind = "travel",
            priority = 370,
            conditions = {
                all = {
                    { quest = { id = 979, state = "completed" } },
                },
            },
            text = "Travel to Rut'theran Village.",
            route = {
                Point(MAP.TELDRASSIL, 0.5550, 0.9207, "Rut'theran Village",
                    "Travel to Rut'theran Village."),
            },
        },
        {
            id = "turnin-4901-guardians-of-the-altar",
            kind = "turnin",
            priority = 380,
            conditions = {
                all = {
                    { quest = { id = 979, state = "completed" } },
                },
            },
            text = "Turn in Guardians of the Altar to Erelas Ambersky in Rut'theran Village.",
            dependsOn = { "objective-4901-guardians-of-the-altar" },
            complete = QuestState(4901, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5550, 0.9207, "Erelas Ambersky",
                    "Travel to Erelas Ambersky."),
            },
        },
        {
            id = "accept-4902-wildkin-of-elune",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { quest = { id = 979, state = "completed" } },
                },
            },
            text = "Accept Wildkin of Elune from Erelas Ambersky in Rut'theran Village.",
            complete = QuestState(4902, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5550, 0.9207, "Erelas Ambersky",
                    "Travel to Erelas Ambersky."),
            },
        },
        {
            id = "turnin-4902-wildkin-of-elune",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { quest = { id = 979, state = "completed" } },
                },
            },
            text = "Turn in Wildkin of Elune to Archdruid Fandral Staghelm in Cenarion Enclave.",
            dependsOn = { "accept-4902-wildkin-of-elune" },
            complete = QuestState(4902, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3475, 0.0908, "Archdruid Fandral Staghelm",
                    "Travel to Archdruid Fandral Staghelm."),
            },
        },
        {
            id = "travel-4810-flame-crest",
            kind = "travel",
            priority = 410,
            conditions = {
                all = {
                    { quest = { id = 4809, state = "completed" } },
                },
            },
            text = "Travel to Flame Crest.",
            route = {
                Point(MAP.BURNING_STEPPES, 0.6523, 0.2395, "Flame Crest",
                    "Travel to Flame Crest."),
            },
        },
        {
            id = "turnin-4810-return-to-tinkee",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { quest = { id = 4809, state = "completed" } },
                },
            },
            text = "Turn in Return to Tinkee to Tinkee Steamboil in Flame Crest.",
            dependsOn = { "accept-4810-return-to-tinkee" },
            complete = QuestState(4810, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6523, 0.2395, "Tinkee Steamboil",
                    "Travel to Tinkee Steamboil."),
            },
        },
    },
})
