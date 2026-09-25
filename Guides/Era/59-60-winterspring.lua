local _, ns = ...

-- Horde Era leveling route for Winterspring, levels 59-60.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    WINTERSPRING = 1452,
    FELWOOD = 1448,
    MOONGLADE = 1450,
    THUNDER_BLUFF = 1456,
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
    id = "leveling-era-59-60-winterspring",
    title = "59-60 Winterspring (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 59 } },
        },
    },
    goals = {
        {
            id = "accept-4741-wild-guardians",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 4521, state = "completed" } },
                },
            },
            text = "Accept Wild Guardians from Trull Failbane in Bloodvenom Post.",
            complete = QuestState(4741, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.3472, 0.5277, "Trull Failbane",
                    "Travel to Trull Failbane."),
            },
        },
        {
            id = "accept-6845-uncovering-past-secrets",
            kind = "accept",
            priority = 30,
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
            priority = 40,
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
            priority = 50,
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
            priority = 60,
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
            priority = 70,
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
            id = "turnin-8798-a-yeti-of-your-own",
            kind = "turnin",
            priority = 90,
            conditions = {
                all = {
                    { quest = { id = 5163, state = "completed" } },
                },
            },
            text = "Turn in A Yeti of Your Own to Umi Rumplesnicker in Everlook.",
            complete = QuestState(8798, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6089, 0.3764, "Umi Rumplesnicker",
                    "Travel to Umi Rumplesnicker."),
            },
        },
        {
            id = "accept-4809-chillwind-horns",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { quest = { id = 4808, state = "completed" } },
                    { quest = { id = 4521, state = "completed" } },
                },
            },
            text = "Accept Chillwind Horns from Felnok Steelspring in Everlook.",
            complete = QuestState(4809, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6162, 0.3861, "Felnok Steelspring",
                    "Travel to Felnok Steelspring."),
            },
        },
        {
            id = "accept-969-luck-be-with-you",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { quest = { id = 6606, state = "completed" } },
                },
            },
            text = "Accept Luck Be With You from Witch Doctor Mau'ari in Everlook.",
            complete = QuestState(969, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6191, 0.3836, "Witch Doctor Mau'ari",
                    "Travel to Witch Doctor Mau'ari."),
            },
        },
        {
            id = "accept-5054-ursius-of-the-shardtooth",
            kind = "accept",
            priority = 120,
            text = "Accept Ursius of the Shardtooth from Storm Shadowhoof in Everlook.",
            complete = QuestState(5054, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6191, 0.3836, "Storm Shadowhoof",
                    "Travel to Storm Shadowhoof."),
            },
        },
        {
            id = "note-5054-everlook",
            kind = "note",
            priority = 130,
            text = "Set your hearth in Everlook with Innkeeper Vizzie.",
            route = {
                Point(MAP.WINTERSPRING, 0.6134, 0.3882, "Innkeeper Vizzie",
                    "Travel to Innkeeper Vizzie."),
            },
        },
        {
            id = "objective-969-luck-be-with-you",
            kind = "objective",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 6606, state = "completed" } },
                },
            },
            text = "Collect 10 Frostmaul Shards from the ground and you can also get it from the Frostmaul Giant in Frostwhisper Gorge.",
            dependsOn = { "accept-969-luck-be-with-you" },
            complete = QuestState(969, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6364, 0.6235, "Continue toward Luck Be With You",
                    "Continue toward Luck Be With You."),
                Point(MAP.WINTERSPRING, 0.6439, 0.6323, "Continue toward Luck Be With You",
                    "Continue toward Luck Be With You."),
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
            id = "turnin-969-luck-be-with-you",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { quest = { id = 6606, state = "completed" } },
                },
            },
            text = "Turn in Luck Be With You to Witch Doctor Mau'ari in Everlook.",
            dependsOn = { "objective-969-luck-be-with-you" },
            complete = QuestState(969, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6192, 0.3830, "Witch Doctor Mau'ari",
                    "Travel to Witch Doctor Mau'ari."),
            },
        },
        {
            id = "objective-5054-ursius-of-the-shardtooth",
            kind = "objective",
            priority = 170,
            text = "Kill Ursius, he's a level 56 elite and should be easy to solo.",
            dependsOn = { "accept-5054-ursius-of-the-shardtooth" },
            complete = QuestState(5054, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.5936, 0.3260, "Continue toward Ursius of the Shardtooth",
                    "Continue toward Ursius of the Shardtooth."),
                Point(MAP.WINTERSPRING, 0.6086, 0.3245, "Continue toward Ursius of the Shardtooth",
                    "Continue toward Ursius of the Shardtooth."),
                Point(MAP.WINTERSPRING, 0.6195, 0.2810, "Continue toward Ursius of the Shardtooth",
                    "Continue toward Ursius of the Shardtooth."),
                Point(MAP.WINTERSPRING, 0.6304, 0.2600, "Continue toward Ursius of the Shardtooth",
                    "Continue toward Ursius of the Shardtooth."),
                Point(MAP.WINTERSPRING, 0.6524, 0.2175, "Ursius",
                    "Travel to Ursius."),
            },
        },
        {
            id = "turnin-5054-ursius-of-the-shardtooth",
            kind = "turnin",
            priority = 180,
            text = "Turn in Ursius of the Shardtooth to Storm Shadowhoof in Everlook.",
            dependsOn = { "objective-5054-ursius-of-the-shardtooth" },
            complete = QuestState(5054, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6192, 0.3837, "Storm Shadowhoof",
                    "Travel to Storm Shadowhoof."),
            },
        },
        {
            id = "accept-5055-brumeran-of-the-chillwind",
            kind = "accept",
            priority = 190,
            text = "Accept Brumeran of the Chillwind from Storm Shadowhoof in Everlook.",
            complete = QuestState(5055, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6192, 0.3830, "Storm Shadowhoof",
                    "Travel to Storm Shadowhoof."),
            },
        },
        {
            id = "accept-975-cache-of-mau-ari",
            kind = "accept",
            priority = 200,
            text = "Accept Cache of Mau'ari from Witch Doctor Mau'ari in Everlook.",
            complete = QuestState(975, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6192, 0.3830, "Witch Doctor Mau'ari",
                    "Travel to Witch Doctor Mau'ari."),
            },
        },
        {
            id = "turnin-975-cache-of-mau-ari",
            kind = "turnin",
            priority = 210,
            text = "Turn in Cache of Mau'ari to Witch Doctor Mau'ari in Everlook.",
            dependsOn = { "accept-975-cache-of-mau-ari" },
            complete = QuestState(975, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6192, 0.3830, "Witch Doctor Mau'ari",
                    "Travel to Witch Doctor Mau'ari."),
            },
        },
        {
            id = "objective-4741-wild-guardians",
            kind = "objective",
            priority = 230,
            conditions = {
                all = {
                    { quest = { id = 4521, state = "completed" } },
                },
            },
            text = "Kill 13 Moontouched Owlbeast in Owl Wing Thicket.",
            dependsOn = { "accept-4741-wild-guardians" },
            complete = QuestState(4741, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6383, 0.5932, "Moontouched Owlbeast",
                    "Travel to Moontouched Owlbeast."),
            },
        },
        {
            id = "objective-5055-brumeran-of-the-chillwind",
            kind = "objective",
            priority = 240,
            text = "Kill Brumeran, this is a level 58 Elite and can be a bit tough to solo, you may need to get some help.",
            dependsOn = { "accept-5055-brumeran-of-the-chillwind" },
            complete = QuestState(5055, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6149, 0.5669, "Continue toward Brumeran of the Chillwind",
                    "Continue toward Brumeran of the Chillwind."),
                Point(MAP.WINTERSPRING, 0.5761, 0.4142, "Brumeran",
                    "Travel to Brumeran."),
            },
        },
        {
            id = "objective-4809-chillwind-horns",
            kind = "objective",
            priority = 250,
            conditions = {
                all = {
                    { quest = { id = 4808, state = "completed" } },
                    { quest = { id = 4521, state = "completed" } },
                },
            },
            text = "Kill Chillwind Ravager, Chillwind Chimaera and collect 8 Uncracked Chillwind Horn, you don't have to complete this quest now to complete later.",
            dependsOn = { "accept-4809-chillwind-horns" },
            complete = QuestState(4809, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.5873, 0.4343, "Chillwind Ravager",
                    "Travel to Chillwind Ravager."),
            },
        },
        {
            id = "turnin-5055-brumeran-of-the-chillwind",
            kind = "turnin",
            priority = 260,
            text = "Turn in Brumeran of the Chillwind to Storm Shadowhoof in Everlook.",
            dependsOn = { "objective-5055-brumeran-of-the-chillwind" },
            complete = QuestState(5055, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6191, 0.3837, "Storm Shadowhoof",
                    "Travel to Storm Shadowhoof."),
            },
        },
        {
            id = "accept-5056-shy-rotam",
            kind = "accept",
            priority = 270,
            text = "Accept Shy-Rotam from Storm Shadowhoof in Everlook.",
            complete = QuestState(5056, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6191, 0.3838, "Storm Shadowhoof",
                    "Travel to Storm Shadowhoof."),
            },
        },
        {
            id = "turnin-4741-wild-guardians",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 4521, state = "completed" } },
                },
            },
            text = "Turn in Wild Guardians to Trull Failbane in Bloodvenom Post.",
            dependsOn = { "objective-4741-wild-guardians" },
            complete = QuestState(4741, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.3472, 0.5276, "Trull Failbane",
                    "Travel to Trull Failbane."),
            },
        },
        {
            id = "accept-4721-wild-guardians",
            kind = "accept",
            priority = 300,
            conditions = {
                all = {
                    { quest = { id = 4521, state = "completed" } },
                },
            },
            text = "Accept Wild Guardians from Trull Failbane in Bloodvenom Post.",
            complete = QuestState(4721, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.3472, 0.5276, "Trull Failbane",
                    "Travel to Trull Failbane."),
            },
        },
        {
            id = "objective-4882-blue-feathered-necklace",
            kind = "objective",
            priority = 320,
            text = "Keep killing Moontouched Owlbeast until you find Blue-Feathered Necklace.",
            complete = QuestState(4882, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6383, 0.5932, "Moontouched Owlbeast",
                    "Travel to Moontouched Owlbeast."),
            },
        },
        {
            id = "objective-4721-wild-guardians",
            kind = "objective",
            priority = 340,
            conditions = {
                all = {
                    { quest = { id = 4521, state = "completed" } },
                },
            },
            text = "Kill 10 Berserk Owlbeast in The Hidden Grove.",
            dependsOn = { "accept-4721-wild-guardians" },
            complete = QuestState(4721, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.6492, 0.2030, "Berserk Owlbeast",
                    "Travel to Berserk Owlbeast."),
            },
        },
        {
            id = "objective-4809-chillwind-horns-2",
            kind = "objective",
            priority = 350,
            conditions = {
                all = {
                    { quest = { id = 4808, state = "completed" } },
                    { quest = { id = 4521, state = "completed" } },
                },
            },
            text = "Kill Chillwind Ravager, Chillwind Chimaera and collect 8 Uncracked Chillwind Horn.",
            dependsOn = { "accept-4809-chillwind-horns" },
            complete = QuestState(4809, "complete"),
            route = {
                Point(MAP.WINTERSPRING, 0.5980, 0.2264, "Chillwind Ravager",
                    "Travel to Chillwind Ravager."),
            },
        },
        {
            id = "turnin-5087-winterfall-runners",
            kind = "turnin",
            priority = 360,
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
            priority = 370,
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
            id = "turnin-4809-chillwind-horns",
            kind = "turnin",
            priority = 390,
            conditions = {
                all = {
                    { quest = { id = 4808, state = "completed" } },
                    { quest = { id = 4521, state = "completed" } },
                },
            },
            text = "Turn in Chillwind Horns to Felnok Steelspring in Everlook.",
            dependsOn = { "objective-4809-chillwind-horns", "objective-4809-chillwind-horns-2" },
            complete = QuestState(4809, "completed"),
            route = {
                Point(MAP.WINTERSPRING, 0.6158, 0.3859, "Felnok Steelspring",
                    "Travel to Felnok Steelspring."),
            },
        },
        {
            id = "accept-4810-return-to-tinkee",
            kind = "accept",
            priority = 400,
            conditions = {
                all = {
                    { quest = { id = 4809, state = "completed" } },
                },
            },
            text = "Accept Return to Tinkee from Felnok Steelspring in Everlook.",
            complete = QuestState(4810, "activeOrCompleted"),
            route = {
                Point(MAP.WINTERSPRING, 0.6158, 0.3859, "Felnok Steelspring",
                    "Travel to Felnok Steelspring."),
            },
        },
        {
            id = "objective-5121-high-chief-winterfall",
            kind = "objective",
            priority = 420,
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
            priority = 430,
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
            priority = 440,
            conditions = {
                all = {
                    { quest = { id = 5087, state = "completed" } },
                },
            },
            text = "Use the Crudely-Written Log to accept The Final Piece.",
            complete = QuestState(5123, "activeOrCompleted"),
        },
        {
            id = "turnin-5123-the-final-piece",
            kind = "turnin",
            priority = 460,
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
            priority = 470,
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
            id = "turnin-4721-wild-guardians",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { quest = { id = 4521, state = "completed" } },
                },
            },
            text = "Turn in Wild Guardians to Trull Failbane in Bloodvenom Post.",
            dependsOn = { "objective-4721-wild-guardians" },
            complete = QuestState(4721, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.3474, 0.5276, "Trull Failbane",
                    "Travel to Trull Failbane."),
            },
        },
        {
            id = "turnin-5128-words-of-the-high-chief",
            kind = "turnin",
            priority = 510,
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
            id = "turnin-4883-guarding-secrets",
            kind = "turnin",
            priority = 530,
            text = "Turn in Guarding Secrets to Nara Wildmane in Elder Rise.",
            complete = QuestState(4883, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7564, 0.3151, "Nara Wildmane",
                    "Travel to Nara Wildmane."),
            },
        },
        {
            id = "turnin-4810-return-to-tinkee",
            kind = "turnin",
            priority = 550,
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
