local _, ns = ...

-- Forever Casual spine: Azshara & Felwood (52-52)
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
    TELDRASSIL = 1438,
    AZSHARA = 1447,
    FELWOOD = 1448,
    WINTERSPRING = 1452,
    DARNASSUS = 1457,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-azshara-and-felwood",
    title = "Azshara & Felwood",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 52 } },
        },
    },
    goals = {
        {
            id = "turnin-3661-favored-of-elune",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Favored of Elune?.",
            complete = QuestState(3661, "completed"),
            route = {
                Point(1438, 0.5550, 0.9205, "Favored of Elune?",
                    "Travel to Favored of Elune?."),
            },
        },
        {
            id = "accept-978-moontouched-wildkin",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Moontouched Wildkin.",
            complete = QuestState(978, "activeOrCompleted"),
            route = {
                Point(1438, 0.5550, 0.9205, "Moontouched Wildkin",
                    "Travel to Moontouched Wildkin."),
            },
        },
        {
            id = "turnin-2944-the-super-snapper-fx",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Super Snapper FX.",
            complete = QuestState(2944, "completed"),
            route = {
                Point(1438, 0.5541, 0.9223, "The Super Snapper FX",
                    "Travel to The Super Snapper FX."),
            },
        },
        {
            id = "accept-2943-return-to-troyas",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Troyas.",
            complete = QuestState(2943, "activeOrCompleted"),
            route = {
                Point(1438, 0.5541, 0.9223, "Return to Troyas",
                    "Travel to Troyas."),
            },
        },
        {
            id = "objective-3764-1-un-goro-soil",
            kind = "objective",
            priority = 50,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Collect 20 Un'Goro Soil.",
            complete = QuestObjective(3764, 1, "Un'Goro Soil"),
            route = {
                Point(1457, 0.3960, 0.4198, "Un'Goro Soil",
                    "Travel to Un'Goro Soil."),
            },
        },
        {
            id = "turnin-3763-assisting-arch-druid-staghelm",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Assisting Arch Druid Staghelm.",
            complete = QuestState(3763, "completed"),
            route = {
                Point(1457, 0.3482, 0.0925, "Assisting Arch Druid Staghelm",
                    "Travel to Assisting Arch Druid Staghelm."),
            },
        },
        {
            id = "turnin-3789-assisting-arch-druid-staghelm",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Assisting Arch Druid Staghelm.",
            complete = QuestState(3789, "completed"),
            route = {
                Point(1457, 0.3482, 0.0925, "Assisting Arch Druid Staghelm",
                    "Travel to Assisting Arch Druid Staghelm."),
            },
        },
        {
            id = "turnin-3790-assisting-arch-druid-staghelm",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Assisting Arch Druid Staghelm.",
            complete = QuestState(3790, "completed"),
            route = {
                Point(1457, 0.3482, 0.0925, "Assisting Arch Druid Staghelm",
                    "Travel to Assisting Arch Druid Staghelm."),
            },
        },
        {
            id = "accept-3764-un-goro-soil",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Un'Goro Soil.",
            complete = QuestState(3764, "activeOrCompleted"),
            route = {
                Point(1457, 0.3482, 0.0925, "Un'Goro Soil",
                    "Travel to Un'Goro Soil."),
            },
        },
        {
            id = "turnin-3764-un-goro-soil",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Un'Goro Soil.",
            complete = QuestState(3764, "completed"),
            dependsOn = { "accept-3764-un-goro-soil", "objective-3764-1-un-goro-soil" },
            route = {
                Point(1457, 0.3149, 0.0823, "Un'Goro Soil",
                    "Travel to Un'Goro Soil."),
            },
        },
        {
            id = "turnin-162-rise-of-the-silithid",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Rise of the Silithid.",
            complete = QuestState(162, "completed"),
            route = {
                Point(1457, 0.4184, 0.8562, "Rise of the Silithid",
                    "Travel to Rise of the Silithid."),
            },
        },
        {
            id = "accept-4493-march-of-the-silithid",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept March of the Silithid.",
            complete = QuestState(4493, "activeOrCompleted"),
            route = {
                Point(1457, 0.4184, 0.8562, "March of the Silithid",
                    "Travel to March of the Silithid."),
            },
        },
        {
            id = "accept-5535-spiritual-unrest",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Spiritual Unrest.",
            complete = QuestState(5535, "activeOrCompleted"),
            route = {
                Point(1447, 0.1137, 0.7816, "Spiritual Unrest",
                    "Travel to Spiritual Unrest."),
            },
        },
        {
            id = "accept-5536-a-land-filled-with-hatred",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Land Filled with Hatred.",
            complete = QuestState(5536, "activeOrCompleted"),
            route = {
                Point(1447, 0.1137, 0.7816, "A Land Filled with Hatred",
                    "Travel to A Land Filled with Hatred."),
            },
        },
        {
            id = "objective-5535-1-highborne-apparition",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Highborne Apparition.",
            complete = QuestObjective(5535, 1, "Highborne Apparition"),
            dependsOn = { "accept-5535-spiritual-unrest" },
            route = {
                Point(1447, 0.1340, 0.7340, "Highborne Apparition",
                    "Travel to Highborne Apparition."),
            },
        },
        {
            id = "objective-5535-2-highborne-lichling",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Highborne Lichling.",
            complete = QuestObjective(5535, 2, "Highborne Lichling"),
            dependsOn = { "accept-5535-spiritual-unrest" },
            route = {
                Point(1447, 0.1340, 0.7340, "Highborne Lichling",
                    "Travel to Highborne Lichling."),
            },
        },
        {
            id = "objective-5536-2-haldarr-trickster",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 2 Haldarr Trickster.",
            complete = QuestObjective(5536, 2, "Haldarr Trickster"),
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            route = {
                Point(1447, 0.1980, 0.6460, "Haldarr Trickster",
                    "Travel to Haldarr Trickster."),
            },
        },
        {
            id = "objective-5536-3-haldarr-felsworn",
            kind = "objective",
            priority = 180,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 2 Haldarr Felsworn.",
            complete = QuestObjective(5536, 3, "Haldarr Felsworn"),
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            route = {
                Point(1447, 0.1980, 0.6460, "Haldarr Felsworn",
                    "Travel to Haldarr Felsworn."),
            },
        },
        {
            id = "objective-5536-1-haldarr-satyr",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Haldarr Satyr.",
            complete = QuestObjective(5536, 1, "Haldarr Satyr"),
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            route = {
                Point(1447, 0.1980, 0.6460, "Haldarr Satyr",
                    "Travel to Haldarr Satyr."),
            },
        },
        {
            id = "turnin-5535-spiritual-unrest",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Spiritual Unrest.",
            complete = QuestState(5535, "completed"),
            dependsOn = { "accept-5535-spiritual-unrest", "objective-5535-1-highborne-apparition", "objective-5535-2-highborne-lichling" },
            route = {
                Point(1447, 0.1137, 0.7817, "Spiritual Unrest",
                    "Travel to Spiritual Unrest."),
            },
        },
        {
            id = "turnin-5536-a-land-filled-with-hatred",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A Land Filled with Hatred.",
            complete = QuestState(5536, "completed"),
            dependsOn = { "accept-5536-a-land-filled-with-hatred", "objective-5536-2-haldarr-trickster", "objective-5536-3-haldarr-felsworn", "objective-5536-1-haldarr-satyr" },
            route = {
                Point(1447, 0.1137, 0.7817, "A Land Filled with Hatred",
                    "Travel to A Land Filled with Hatred."),
            },
        },
        {
            id = "accept-4101-cleansing-felwood",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Cleansing Felwood.",
            complete = QuestState(4101, "activeOrCompleted"),
            route = {
                Point(1448, 0.5415, 0.8683, "Cleansing Felwood",
                    "Travel to Cleansing Felwood."),
            },
        },
        {
            id = "accept-5155-forces-of-jaedenar",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Forces of Jaedenar.",
            complete = QuestState(5155, "activeOrCompleted"),
            route = {
                Point(1448, 0.5121, 0.8211, "Forces of Jaedenar",
                    "Travel to Forces of Jaedenar."),
            },
        },
        {
            id = "accept-4421-the-corruption-of-the-jadefire",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Corruption of the Jadefire.",
            complete = QuestState(4421, "activeOrCompleted"),
            route = {
                Point(1448, 0.5135, 0.8151, "The Corruption of the Jadefire",
                    "Travel to The Corruption of the Jadefire."),
            },
        },
        {
            id = "accept-8460-timbermaw-ally",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Timbermaw Ally.",
            complete = QuestState(8460, "activeOrCompleted"),
            route = {
                Point(1448, 0.5093, 0.8501, "Timbermaw Ally",
                    "Travel to Timbermaw Ally."),
            },
        },
        {
            id = "objective-8460-1-deadwood-warrior",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Deadwood Warrior.",
            complete = QuestObjective(8460, 1, "Deadwood Warrior"),
            dependsOn = { "accept-8460-timbermaw-ally" },
            route = {
                Point(1448, 0.4840, 0.8920, "Deadwood Warrior",
                    "Travel to Deadwood Warrior."),
            },
        },
        {
            id = "objective-8460-2-deadwood-pathfinder",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Deadwood Pathfinder.",
            complete = QuestObjective(8460, 2, "Deadwood Pathfinder"),
            dependsOn = { "accept-8460-timbermaw-ally" },
            route = {
                Point(1448, 0.4840, 0.8920, "Deadwood Pathfinder",
                    "Travel to Deadwood Pathfinder."),
            },
        },
        {
            id = "objective-8460-3-deadwood-gardener",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Deadwood Gardener.",
            complete = QuestObjective(8460, 3, "Deadwood Gardener"),
            dependsOn = { "accept-8460-timbermaw-ally" },
            route = {
                Point(1448, 0.4840, 0.8920, "Deadwood Gardener",
                    "Travel to Deadwood Gardener."),
            },
        },
        {
            id = "turnin-8460-timbermaw-ally",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Timbermaw Ally.",
            complete = QuestState(8460, "completed"),
            dependsOn = { "accept-8460-timbermaw-ally", "objective-8460-1-deadwood-warrior", "objective-8460-2-deadwood-pathfinder", "objective-8460-3-deadwood-gardener" },
            route = {
                Point(1448, 0.5093, 0.8502, "Timbermaw Ally",
                    "Travel to Timbermaw Ally."),
            },
        },
        {
            id = "accept-8462-speak-to-nafien",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Speak to Nafien.",
            complete = QuestState(8462, "activeOrCompleted"),
            route = {
                Point(1448, 0.5093, 0.8502, "Speak to Nafien",
                    "Travel to Speak to Nafien."),
            },
        },
        {
            id = "objective-4512-1-package-of-empty-ooze-containers",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Use Package of Empty Ooze Containers.",
            complete = QuestObjective(4512, 1, "Package of Empty Ooze Containers"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-4512-1-cursed-ooze",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Kill Cursed Ooze.",
            complete = QuestObjective(4512, 1, "Cursed Ooze"),
            route = {
                Point(1448, 0.4160, 0.7160, "Cursed Ooze",
                    "Travel to Cursed Ooze."),
            },
        },
        {
            id = "objective-4512-2-tainted-ooze",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { level = { min = 56 } },
                { faction = "Alliance" },
            } },
            text = "Kill Tainted Ooze.",
            complete = QuestObjective(4512, 2, "Tainted Ooze"),
            route = {
                Point(1448, 0.4080, 0.5900, "Tainted Ooze",
                    "Travel to Tainted Ooze."),
            },
        },
        {
            id = "objective-5155-1-jaedenar-hound",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 4 Jaedenar Hound.",
            complete = QuestObjective(5155, 1, "Jaedenar Hound"),
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            route = {
                Point(1448, 0.4040, 0.5760, "Jaedenar Hound",
                    "Travel to Jaedenar Hound."),
            },
        },
        {
            id = "objective-5155-2-jaedenar-guardian",
            kind = "objective",
            priority = 350,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 4 Jaedenar Guardian.",
            complete = QuestObjective(5155, 2, "Jaedenar Guardian"),
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            route = {
                Point(1448, 0.4040, 0.5760, "Jaedenar Guardian",
                    "Travel to Jaedenar Guardian."),
            },
        },
        {
            id = "objective-5155-3-jaedenar-adept",
            kind = "objective",
            priority = 360,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Jaedenar Adept.",
            complete = QuestObjective(5155, 3, "Jaedenar Adept"),
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            route = {
                Point(1448, 0.4040, 0.5760, "Jaedenar Adept",
                    "Travel to Jaedenar Adept."),
            },
        },
        {
            id = "objective-5155-4-jaedenar-cultist",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Jaedenar Cultist.",
            complete = QuestObjective(5155, 4, "Jaedenar Cultist"),
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            route = {
                Point(1448, 0.4040, 0.5760, "Jaedenar Cultist",
                    "Travel to Jaedenar Cultist."),
            },
        },
        {
            id = "turnin-5155-forces-of-jaedenar",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Forces of Jaedenar.",
            complete = QuestState(5155, "completed"),
            dependsOn = { "accept-5155-forces-of-jaedenar", "objective-5155-1-jaedenar-hound", "objective-5155-2-jaedenar-guardian", "objective-5155-3-jaedenar-adept", "objective-5155-4-jaedenar-cultist" },
            route = {
                Point(1448, 0.5121, 0.8211, "Forces of Jaedenar",
                    "Travel to Forces of Jaedenar."),
            },
        },
        {
            id = "accept-5157-collection-of-the-corrupt-water",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Collection of the Corrupt Water.",
            complete = QuestState(5157, "activeOrCompleted"),
            route = {
                Point(1448, 0.5121, 0.8211, "Collection of the Corrupt Water",
                    "Travel to Collection of the Corrupt Water."),
            },
        },
        {
            id = "turnin-4421-the-corruption-of-the-jadefire",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Corruption of the Jadefire.",
            complete = QuestState(4421, "completed"),
            dependsOn = { "accept-4421-the-corruption-of-the-jadefire" },
            route = {
                Point(1448, 0.5135, 0.8151, "The Corruption of the Jadefire",
                    "Travel to The Corruption of the Jadefire."),
            },
        },
        {
            id = "accept-4906-further-corruption",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Further Corruption.",
            complete = QuestState(4906, "activeOrCompleted"),
            route = {
                Point(1448, 0.5135, 0.8151, "Further Corruption",
                    "Travel to Further Corruption."),
            },
        },
        {
            id = "accept-5156-verifying-the-corruption",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Verifying the Corruption.",
            complete = QuestState(5156, "activeOrCompleted"),
            route = {
                Point(1448, 0.5089, 0.8162, "Verifying the Corruption",
                    "Travel to Verifying the Corruption."),
            },
        },
        {
            id = "accept-939-flute-of-xavaric",
            kind = "accept",
            priority = 430,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Use the Flute of Xavaric to accept Flute of Xavaric.",
            complete = QuestState(939, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "objective-939-1-jadefire-hellcaller",
            kind = "objective",
            priority = 440,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill Jadefire Hellcaller.",
            complete = QuestObjective(939, 1, "Jadefire Hellcaller"),
            dependsOn = { "accept-939-flute-of-xavaric" },
            route = {
                Point(1448, 0.4040, 0.2000, "Jadefire Hellcaller",
                    "Travel to Jadefire Hellcaller."),
            },
        },
        {
            id = "objective-4101-1-warpwood-moss-flayer",
            kind = "objective",
            priority = 450,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Kill Warpwood Moss Flayer.",
            complete = QuestObjective(4101, 1, "Warpwood Moss Flayer"),
            dependsOn = { "accept-4101-cleansing-felwood" },
            route = {
                Point(1448, 0.5578, 0.1685, "Warpwood Moss Flayer",
                    "Travel to Warpwood Moss Flayer."),
            },
        },
        {
            id = "turnin-8462-speak-to-nafien",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Speak to Nafien.",
            complete = QuestState(8462, "completed"),
            dependsOn = { "accept-8462-speak-to-nafien" },
            route = {
                Point(1448, 0.6477, 0.0813, "Speak to Nafien",
                    "Travel to Speak to Nafien."),
            },
        },
        {
            id = "accept-3909-the-videre-elixir",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Videre Elixir.",
            complete = QuestState(3909, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "The Videre Elixir",
                    "Travel to The Videre Elixir."),
            },
        },
        {
            id = "turnin-3908-it-s-a-secret-to-everybody",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Turn in It's a Secret to Everybody.",
            complete = QuestState(3908, "completed"),
            route = {
                Point(1452, 0.3127, 0.4516, "It's a Secret to Everybody",
                    "Travel to It's a Secret to Everybody."),
            },
        },
        {
            id = "objective-978-1-moontouched-feather",
            kind = "objective",
            priority = 490,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Collect 10 Moontouched Feather.",
            complete = QuestObjective(978, 1, "Moontouched Feather"),
            dependsOn = { "accept-978-moontouched-wildkin" },
            route = {
                Point(1452, 0.2940, 0.4670, "Moontouched Feather",
                    "Travel to Moontouched Feather."),
            },
        },
        {
            id = "turnin-5156-verifying-the-corruption",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Verifying the Corruption.",
            complete = QuestState(5156, "completed"),
            dependsOn = { "accept-5156-verifying-the-corruption" },
            route = {
                Point(1448, 0.5089, 0.8162, "Verifying the Corruption",
                    "Travel to Verifying the Corruption."),
            },
        },
        {
            id = "turnin-939-flute-of-xavaric",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Flute of Xavaric.",
            complete = QuestState(939, "completed"),
            dependsOn = { "accept-939-flute-of-xavaric", "objective-939-1-jadefire-hellcaller" },
            route = {
                Point(1448, 0.5135, 0.8151, "Flute of Xavaric",
                    "Travel to Flute of Xavaric."),
            },
        },
        {
            id = "accept-4441-felbound-ancients",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Alliance" },
            } },
            text = "Accept Felbound Ancients.",
            complete = QuestState(4441, "activeOrCompleted"),
            route = {
                Point(1448, 0.5135, 0.8151, "Felbound Ancients",
                    "Travel to Felbound Ancients."),
            },
        },
        {
            id = "turnin-4906-further-corruption",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Further Corruption.",
            complete = QuestState(4906, "completed"),
            dependsOn = { "accept-4906-further-corruption" },
            route = {
                Point(1448, 0.5135, 0.8151, "Further Corruption",
                    "Travel to Further Corruption."),
            },
        },
        {
            id = "turnin-5157-collection-of-the-corrupt-water",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Collection of the Corrupt Water.",
            complete = QuestState(5157, "completed"),
            dependsOn = { "accept-5157-collection-of-the-corrupt-water" },
            route = {
                Point(1448, 0.5121, 0.8211, "Collection of the Corrupt Water",
                    "Travel to Collection of the Corrupt Water."),
            },
        },
        {
            id = "accept-5158-seeking-spiritual-aid",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Seeking Spiritual Aid.",
            complete = QuestState(5158, "activeOrCompleted"),
            route = {
                Point(1448, 0.5121, 0.8211, "Seeking Spiritual Aid",
                    "Travel to Seeking Spiritual Aid."),
            },
        },
        {
            id = "turnin-4101-cleansing-felwood",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Cleansing Felwood.",
            complete = QuestState(4101, "completed"),
            dependsOn = { "accept-4101-cleansing-felwood", "objective-4101-1-warpwood-moss-flayer" },
            route = {
                Point(1448, 0.5415, 0.8683, "Cleansing Felwood",
                    "Travel to Cleansing Felwood."),
            },
        },
    },
})
