local _, ns = ...

-- Forever Casual spine: Stranglethorn Vale (44-45)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
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
    STRANGLETHORN_VALE = 1434,
}

ns:RegisterGuide({
    id = "leveling-era-horde-stranglethorn-vale-part-2",
    title = "Stranglethorn Vale",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 44 } },
        },
    },
    goals = {
        {
            id = "accept-586-speaking-with-gan-zulah",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Speaking with Gan'zulah.",
            complete = QuestState(586, "activeOrCompleted"),
            route = {
                Point(1434, 0.3222, 0.2760, "Speaking with Gan'zulah",
                    "Travel to Speaking with Gan'zulah."),
            },
        },
        {
            id = "objective-628-1-elder-saltwater-crocolisk",
            kind = "objective",
            priority = 20,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Kill Elder Saltwater Crocolisk.",
            complete = QuestObjective(628, 1, "Elder Saltwater Crocolisk"),
            route = {
                Point(1434, 0.2920, 0.2240, "Elder Saltwater Crocolisk",
                    "Travel to Elder Saltwater Crocolisk."),
            },
        },
        {
            id = "objective-586-4-ana-thek-the-cruel",
            kind = "objective",
            priority = 30,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Kill Ana'thek the Cruel.",
            complete = QuestObjective(586, 4, "Ana'thek the Cruel"),
            dependsOn = { "accept-586-speaking-with-gan-zulah" },
            route = {
                Point(1434, 0.4440, 0.4440, "Ana'thek the Cruel",
                    "Travel to Ana'thek the Cruel."),
            },
        },
        {
            id = "objective-193-1-bhag-thera",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Kill Bhag'thera.",
            complete = QuestObjective(193, 1, "Bhag'thera"),
            route = {
                Point(1434, 0.4637, 0.2905, "Bhag'thera",
                    "Travel to Bhag'thera."),
            },
        },
        {
            id = "turnin-193-panther-mastery",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Panther Mastery.",
            complete = QuestState(193, "completed"),
            dependsOn = { "objective-193-1-bhag-thera" },
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "accept-338-the-green-hills-of-stranglethorn",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept The Green Hills of Stranglethorn.",
            complete = QuestState(338, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "The Green Hills of Stranglethorn",
                    "Travel to The Green Hills of Stranglethorn."),
            },
        },
        {
            id = "accept-339-chapter-i",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Chapter I.",
            complete = QuestState(339, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter I",
                    "Travel to Chapter I."),
            },
        },
        {
            id = "turnin-339-chapter-i",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Chapter I.",
            complete = QuestState(339, "completed"),
            dependsOn = { "accept-339-chapter-i" },
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter I",
                    "Travel to Chapter I."),
            },
        },
        {
            id = "accept-340-chapter-ii",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Chapter II.",
            complete = QuestState(340, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter II",
                    "Travel to Chapter II."),
            },
        },
        {
            id = "turnin-340-chapter-ii",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Chapter II.",
            complete = QuestState(340, "completed"),
            dependsOn = { "accept-340-chapter-ii" },
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter II",
                    "Travel to Chapter II."),
            },
        },
        {
            id = "accept-341-chapter-iii",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Chapter III.",
            complete = QuestState(341, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter III",
                    "Travel to Chapter III."),
            },
        },
        {
            id = "turnin-341-chapter-iii",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Chapter III.",
            complete = QuestState(341, "completed"),
            dependsOn = { "accept-341-chapter-iii" },
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter III",
                    "Travel to Chapter III."),
            },
        },
        {
            id = "accept-342-chapter-iv",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Chapter IV.",
            complete = QuestState(342, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter IV",
                    "Travel to Chapter IV."),
            },
        },
        {
            id = "turnin-342-chapter-iv",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Chapter IV.",
            complete = QuestState(342, "completed"),
            dependsOn = { "accept-342-chapter-iv" },
            route = {
                Point(1434, 0.3566, 0.1053, "Chapter IV",
                    "Travel to Chapter IV."),
            },
        },
        {
            id = "turnin-338-the-green-hills-of-stranglethorn",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Green Hills of Stranglethorn.",
            complete = QuestState(338, "completed"),
            dependsOn = { "accept-338-the-green-hills-of-stranglethorn" },
            route = {
                Point(1434, 0.3566, 0.1053, "The Green Hills of Stranglethorn",
                    "Travel to The Green Hills of Stranglethorn."),
            },
        },
        {
            id = "turnin-586-speaking-with-gan-zulah",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Speaking with Gan'zulah.",
            complete = QuestState(586, "completed"),
            dependsOn = { "accept-586-speaking-with-gan-zulah", "objective-586-4-ana-thek-the-cruel" },
            route = {
                Point(1434, 0.3222, 0.2760, "Speaking with Gan'zulah",
                    "Travel to Speaking with Gan'zulah."),
            },
        },
        {
            id = "accept-588-the-fate-of-yenniku",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept The Fate of Yenniku.",
            complete = QuestState(588, "activeOrCompleted"),
            route = {
                Point(1434, 0.3222, 0.2760, "The Fate of Yenniku",
                    "Travel to The Fate of Yenniku."),
            },
        },
        {
            id = "turnin-588-the-fate-of-yenniku",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Fate of Yenniku.",
            complete = QuestState(588, "completed"),
            dependsOn = { "accept-588-the-fate-of-yenniku" },
            route = {
                Point(1434, 0.3227, 0.2771, "The Fate of Yenniku",
                    "Travel to The Fate of Yenniku."),
            },
        },
        {
            id = "accept-589-the-singing-crystals",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept The Singing Crystals.",
            complete = QuestState(589, "activeOrCompleted"),
            route = {
                Point(1434, 0.3227, 0.2771, "The Singing Crystals",
                    "Travel to The Singing Crystals."),
            },
        },
        {
            id = "accept-571-mok-thardin-s-enchantment",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Mok'thardin's Enchantment.",
            complete = QuestState(571, "activeOrCompleted"),
            route = {
                Point(1434, 0.3212, 0.2924, "Mok'thardin's Enchantment",
                    "Travel to Mok'thardin's Enchantment."),
            },
        },
        {
            id = "turnin-1118-back-to-booty-bay",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Back to Booty Bay.",
            complete = QuestState(1118, "completed"),
            route = {
                Point(1434, 0.2712, 0.7721, "Back to Booty Bay",
                    "Travel to Back to Booty Bay."),
            },
        },
        {
            id = "accept-621-zanzil-s-secret",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Zanzil's Secret.",
            complete = QuestState(621, "activeOrCompleted"),
            route = {
                Point(1434, 0.2712, 0.7721, "Zanzil's Secret",
                    "Travel to Zanzil's Secret."),
            },
        },
        {
            id = "accept-606-scaring-shaky",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Scaring Shaky.",
            complete = QuestState(606, "activeOrCompleted"),
            route = {
                Point(1434, 0.2778, 0.7707, "Scaring Shaky",
                    "Travel to Scaring Shaky."),
            },
        },
        {
            id = "accept-595-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept The Bloodsail Buccaneers.",
            complete = QuestState(595, "activeOrCompleted"),
            route = {
                Point(1434, 0.2810, 0.7622, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "turnin-628-excelsior",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Excelsior.",
            complete = QuestState(628, "completed"),
            dependsOn = { "objective-628-1-elder-saltwater-crocolisk" },
            route = {
                Point(1434, 0.2829, 0.7759, "Excelsior",
                    "Travel to Excelsior."),
            },
        },
        {
            id = "objective-571-1-elder-mistvale-gorilla",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Kill Elder Mistvale Gorilla.",
            complete = QuestObjective(571, 1, "Elder Mistvale Gorilla"),
            dependsOn = { "accept-571-mok-thardin-s-enchantment" },
            route = {
                Point(1434, 0.2800, 0.7346, "Elder Mistvale Gorilla",
                    "Travel to Elder Mistvale Gorilla."),
            },
        },
        {
            id = "objective-606-1-mistvale-giblets",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Collect 5 Mistvale Giblets.",
            complete = QuestObjective(606, 1, "Mistvale Giblets"),
            dependsOn = { "accept-606-scaring-shaky" },
            route = {
                Point(1434, 0.2800, 0.7346, "Mistvale Giblets",
                    "Travel to Mistvale Giblets."),
            },
        },
        {
            id = "turnin-595-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Bloodsail Buccaneers.",
            complete = QuestState(595, "completed"),
            dependsOn = { "accept-595-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.2728, 0.6952, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "accept-597-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept The Bloodsail Buccaneers.",
            complete = QuestState(597, "activeOrCompleted"),
            route = {
                Point(1434, 0.2728, 0.6952, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "turnin-606-scaring-shaky",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Scaring Shaky.",
            complete = QuestState(606, "completed"),
            dependsOn = { "accept-606-scaring-shaky", "objective-606-1-mistvale-giblets" },
            route = {
                Point(1434, 0.2956, 0.7251, "Scaring Shaky",
                    "Travel to Scaring Shaky."),
            },
        },
        {
            id = "accept-607-return-to-mackinley",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Return to MacKinley.",
            complete = QuestState(607, "activeOrCompleted"),
            route = {
                Point(1434, 0.2956, 0.7251, "Return to MacKinley",
                    "Travel to MacKinley."),
            },
        },
        {
            id = "turnin-597-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Bloodsail Buccaneers.",
            complete = QuestState(597, "completed"),
            dependsOn = { "accept-597-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.2810, 0.7621, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "accept-599-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept The Bloodsail Buccaneers.",
            complete = QuestState(599, "activeOrCompleted"),
            route = {
                Point(1434, 0.2810, 0.7621, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "turnin-607-return-to-mackinley",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Return to MacKinley.",
            complete = QuestState(607, "completed"),
            dependsOn = { "accept-607-return-to-mackinley" },
            route = {
                Point(1434, 0.2778, 0.7707, "Return to MacKinley",
                    "Travel to MacKinley."),
            },
        },
        {
            id = "accept-609-voodoo-dues",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Voodoo Dues.",
            complete = QuestState(609, "activeOrCompleted"),
            route = {
                Point(1434, 0.2778, 0.7707, "Voodoo Dues",
                    "Travel to Voodoo Dues."),
            },
        },
        {
            id = "accept-587-up-to-snuff",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Up to Snuff.",
            complete = QuestState(587, "activeOrCompleted"),
            route = {
                Point(1434, 0.2692, 0.7735, "Up to Snuff",
                    "Travel to Up to Snuff."),
            },
        },
        {
            id = "turnin-599-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Bloodsail Buccaneers.",
            complete = QuestState(599, "completed"),
            dependsOn = { "accept-599-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.2717, 0.7701, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "accept-604-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept The Bloodsail Buccaneers.",
            complete = QuestState(604, "activeOrCompleted"),
            route = {
                Point(1434, 0.2717, 0.7701, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "accept-576-keep-an-eye-out",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Keep An Eye Out.",
            complete = QuestState(576, "activeOrCompleted"),
            route = {
                Point(1434, 0.2859, 0.7590, "Keep An Eye Out",
                    "Travel to Keep An Eye Out."),
            },
        },
        {
            id = "turnin-576-keep-an-eye-out",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Keep An Eye Out.",
            complete = QuestState(576, "completed"),
            dependsOn = { "accept-576-keep-an-eye-out" },
            route = {
                Point(1434, 0.2956, 0.7251, "Keep An Eye Out",
                    "Travel to Keep An Eye Out."),
            },
        },
        {
            id = "accept-617-akiris-by-the-bundle",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Akiris by the Bundle.",
            complete = QuestState(617, "activeOrCompleted"),
            route = {
                Point(1434, 0.2743, 0.7678, "Akiris by the Bundle",
                    "Travel to Akiris by the Bundle."),
            },
        },
        {
            id = "turnin-587-up-to-snuff",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Up to Snuff.",
            complete = QuestState(587, "completed"),
            dependsOn = { "accept-587-up-to-snuff" },
            route = {
                Point(1434, 0.2692, 0.7735, "Up to Snuff",
                    "Travel to Up to Snuff."),
            },
        },
        {
            id = "turnin-604-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Bloodsail Buccaneers.",
            complete = QuestState(604, "completed"),
            dependsOn = { "accept-604-the-bloodsail-buccaneers" },
            route = {
                Point(1434, 0.2717, 0.7701, "The Bloodsail Buccaneers",
                    "Travel to The Bloodsail Buccaneers."),
            },
        },
        {
            id = "turnin-571-mok-thardin-s-enchantment",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Mok'thardin's Enchantment.",
            complete = QuestState(571, "completed"),
            dependsOn = { "accept-571-mok-thardin-s-enchantment", "objective-571-1-elder-mistvale-gorilla" },
            route = {
                Point(1434, 0.3212, 0.2924, "Mok'thardin's Enchantment",
                    "Travel to Mok'thardin's Enchantment."),
            },
        },
        {
            id = "accept-573-mok-thardin-s-enchantment",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Accept Mok'thardin's Enchantment.",
            complete = QuestState(573, "activeOrCompleted"),
            route = {
                Point(1434, 0.3212, 0.2924, "Mok'thardin's Enchantment",
                    "Travel to Mok'thardin's Enchantment."),
            },
        },
        {
            id = "objective-609-1-maury-club-foot-wilkins",
            kind = "objective",
            priority = 460,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Kill Maury \"Club Foot\" Wilkins.",
            complete = QuestObjective(609, 1, "Maury \"Club Foot\" Wilkins"),
            dependsOn = { "accept-609-voodoo-dues" },
            route = {
                Point(1434, 0.4199, 0.5003, "Maury \"Club Foot\" Wilkins",
                    "Travel to Maury \"Club Foot\" Wilkins."),
            },
        },
        {
            id = "objective-609-2-jon-jon-the-crow",
            kind = "objective",
            priority = 470,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Kill Jon-Jon the Crow.",
            complete = QuestObjective(609, 2, "Jon-Jon the Crow"),
            dependsOn = { "accept-609-voodoo-dues" },
            route = {
                Point(1434, 0.3493, 0.5185, "Jon-Jon the Crow",
                    "Travel to Jon-Jon the Crow."),
            },
        },
        {
            id = "turnin-609-voodoo-dues",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Voodoo Dues.",
            complete = QuestState(609, "completed"),
            dependsOn = { "accept-609-voodoo-dues", "objective-609-1-maury-club-foot-wilkins", "objective-609-2-jon-jon-the-crow" },
            route = {
                Point(1434, 0.2956, 0.7251, "Voodoo Dues",
                    "Travel to Voodoo Dues."),
            },
        },
        {
            id = "turnin-617-akiris-by-the-bundle",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Akiris by the Bundle.",
            complete = QuestState(617, "completed"),
            dependsOn = { "accept-617-akiris-by-the-bundle" },
            route = {
                Point(1434, 0.2743, 0.7678, "Akiris by the Bundle",
                    "Travel to Akiris by the Bundle."),
            },
        },
        {
            id = "accept-580-whiskey-slim-s-lost-grog",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept Whiskey Slim's Lost Grog.",
            complete = QuestState(580, "activeOrCompleted"),
            route = {
                Point(1434, 0.2713, 0.7745, "Whiskey Slim's Lost Grog",
                    "Travel to Whiskey Slim's Lost Grog."),
            },
        },
        {
            id = "turnin-621-zanzil-s-secret",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Zanzil's Secret.",
            complete = QuestState(621, "completed"),
            dependsOn = { "accept-621-zanzil-s-secret" },
            route = {
                Point(1434, 0.2712, 0.7721, "Zanzil's Secret",
                    "Travel to Zanzil's Secret."),
            },
        },
        {
            id = "turnin-573-mok-thardin-s-enchantment",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in Mok'thardin's Enchantment.",
            complete = QuestState(573, "completed"),
            dependsOn = { "accept-573-mok-thardin-s-enchantment" },
            route = {
                Point(1434, 0.3212, 0.2924, "Mok'thardin's Enchantment",
                    "Travel to Mok'thardin's Enchantment."),
            },
        },
        {
            id = "turnin-589-the-singing-crystals",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Singing Crystals.",
            complete = QuestState(589, "completed"),
            dependsOn = { "accept-589-the-singing-crystals" },
            route = {
                Point(1434, 0.3227, 0.2771, "The Singing Crystals",
                    "Travel to The Singing Crystals."),
            },
        },
    },
})
