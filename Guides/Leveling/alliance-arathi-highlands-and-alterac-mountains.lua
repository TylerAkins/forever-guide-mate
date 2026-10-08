local _, ns = ...

-- Forever Casual spine: Arathi Highlands & Alterac Mountains (39-40)
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
    ALTERAC_MOUNTAINS = 1416,
    ARATHI_HIGHLANDS = 1417,
    HILLSBRAD_FOOTHILLS = 1424,
    THE_HINTERLANDS = 1425,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
    title = "Arathi Highlands & Alterac Mountains",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 39 } },
        },
    },
    goals = {
        {
            id = "objective-658-1-forsaken-courier",
            kind = "objective",
            priority = 10,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Kill Forsaken Courier.",
            complete = QuestObjective(658, 1, "Forsaken Courier"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-691-worth-its-weight-in-gold",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Worth Its Weight in Gold.",
            complete = QuestState(691, "activeOrCompleted"),
            route = {
                Point(1417, 0.4620, 0.4775, "Worth Its Weight in Gold",
                    "Travel to Worth Its Weight in Gold."),
            },
        },
        {
            id = "accept-642-the-princess-trapped",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Princess Trapped.",
            complete = QuestState(642, "activeOrCompleted"),
            route = {
                Point(1417, 0.6250, 0.3380, "The Princess Trapped",
                    "Travel to The Princess Trapped."),
            },
        },
        {
            id = "objective-642-1-drywhisker-kobold",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Kill Drywhisker Kobold.",
            complete = QuestObjective(642, 1, "Drywhisker Kobold"),
            dependsOn = { "accept-642-the-princess-trapped" },
            route = {
                Point(1417, 0.7600, 0.4420, "Drywhisker Kobold",
                    "Travel to Drywhisker Kobold."),
            },
        },
        {
            id = "turnin-642-the-princess-trapped",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Princess Trapped.",
            complete = QuestState(642, "completed"),
            dependsOn = { "accept-642-the-princess-trapped", "objective-642-1-drywhisker-kobold" },
            route = {
                Point(1417, 0.8090, 0.3996, "The Princess Trapped",
                    "Travel to The Princess Trapped."),
            },
        },
        {
            id = "accept-651-stones-of-binding",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Stones of Binding.",
            complete = QuestState(651, "activeOrCompleted"),
            route = {
                Point(1417, 0.8090, 0.3996, "Stones of Binding",
                    "Travel to Stones of Binding."),
            },
        },
        {
            id = "objective-691-3-witherbark-shadow-hunter",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Kill Witherbark Shadow Hunter.",
            complete = QuestObjective(691, 3, "Witherbark Shadow Hunter"),
            dependsOn = { "accept-691-worth-its-weight-in-gold" },
            route = {
                Point(1417, 0.6832, 0.7518, "Witherbark Shadow Hunter",
                    "Travel to Witherbark Shadow Hunter."),
            },
        },
        {
            id = "turnin-658-hints-of-a-new-plague",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Hints of a New Plague?.",
            complete = QuestState(658, "completed"),
            dependsOn = { "objective-658-1-forsaken-courier" },
            route = {
                Point(1417, 0.6019, 0.5385, "Hints of a New Plague?",
                    "Travel to Hints of a New Plague?."),
            },
        },
        {
            id = "accept-657-hints-of-a-new-plague",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Hints of a New Plague?.",
            complete = QuestState(657, "activeOrCompleted"),
            route = {
                Point(1417, 0.6019, 0.5385, "Hints of a New Plague?",
                    "Travel to Hints of a New Plague?."),
            },
        },
        {
            id = "turnin-657-hints-of-a-new-plague",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Hints of a New Plague?.",
            complete = QuestState(657, "completed"),
            dependsOn = { "accept-657-hints-of-a-new-plague" },
            route = {
                Point(1417, 0.6024, 0.5392, "Hints of a New Plague?",
                    "Travel to Hints of a New Plague?."),
            },
        },
        {
            id = "accept-660-hints-of-a-new-plague",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Hints of a New Plague?.",
            complete = QuestState(660, "activeOrCompleted"),
            route = {
                Point(1417, 0.6024, 0.5392, "Hints of a New Plague?",
                    "Travel to Hints of a New Plague?."),
            },
        },
        {
            id = "turnin-660-hints-of-a-new-plague",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Hints of a New Plague?.",
            complete = QuestState(660, "completed"),
            dependsOn = { "accept-660-hints-of-a-new-plague" },
            route = {
                Point(1417, 0.6019, 0.5385, "Hints of a New Plague?",
                    "Travel to Hints of a New Plague?."),
            },
        },
        {
            id = "accept-661-hints-of-a-new-plague",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Hints of a New Plague?.",
            complete = QuestState(661, "activeOrCompleted"),
            route = {
                Point(1417, 0.6019, 0.5385, "Hints of a New Plague?",
                    "Travel to Hints of a New Plague?."),
            },
        },
        {
            id = "turnin-691-worth-its-weight-in-gold",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Worth Its Weight in Gold.",
            complete = QuestState(691, "completed"),
            dependsOn = { "accept-691-worth-its-weight-in-gold", "objective-691-3-witherbark-shadow-hunter" },
            route = {
                Point(1417, 0.4620, 0.4775, "Worth Its Weight in Gold",
                    "Travel to Worth Its Weight in Gold."),
            },
        },
        {
            id = "turnin-661-hints-of-a-new-plague",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Hints of a New Plague?.",
            complete = QuestState(661, "completed"),
            dependsOn = { "accept-661-hints-of-a-new-plague" },
            route = {
                Point(1424, 0.5034, 0.5904, "Hints of a New Plague?",
                    "Travel to Hints of a New Plague?."),
            },
        },
        {
            id = "accept-500-crushridge-bounty",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Crushridge Bounty.",
            complete = QuestState(500, "activeOrCompleted"),
            route = {
                Point(1424, 0.4948, 0.5873, "Crushridge Bounty",
                    "Travel to Crushridge Bounty."),
            },
        },
        {
            id = "turnin-525-further-mysteries",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Further Mysteries.",
            complete = QuestState(525, "completed"),
            route = {
                Point(1424, 0.4814, 0.5911, "Further Mysteries",
                    "Travel to Further Mysteries."),
            },
        },
        {
            id = "accept-537-dark-council",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Dark Council.",
            complete = QuestState(537, "activeOrCompleted"),
            route = {
                Point(1424, 0.4814, 0.5911, "Dark Council",
                    "Travel to Dark Council."),
            },
        },
        {
            id = "accept-512-noble-deaths",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Noble Deaths.",
            complete = QuestState(512, "activeOrCompleted"),
            route = {
                Point(1424, 0.4814, 0.5911, "Noble Deaths",
                    "Travel to Noble Deaths."),
            },
        },
        {
            id = "turnin-602-magical-analysis",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Magical Analysis.",
            complete = QuestState(602, "completed"),
            route = {
                Point(1416, 0.1884, 0.7849, "Magical Analysis",
                    "Travel to Magical Analysis."),
            },
        },
        {
            id = "accept-603-ansirem-s-key",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Accept Ansirem's Key.",
            complete = QuestState(603, "activeOrCompleted"),
            route = {
                Point(1416, 0.1884, 0.7849, "Ansirem's Key",
                    "Travel to Ansirem's Key."),
            },
        },
        {
            id = "objective-537-2-nagaz",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Kill Nagaz.",
            complete = QuestObjective(537, 2, "Nagaz"),
            dependsOn = { "accept-537-dark-council" },
            route = {
                Point(1416, 0.3922, 0.1431, "Nagaz",
                    "Travel to Nagaz."),
            },
        },
        {
            id = "accept-551-the-ensorcelled-parchment",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Ensorcelled Parchment.",
            complete = QuestState(551, "activeOrCompleted"),
            route = {
                Point(1416, 0.3918, 0.1466, "The Ensorcelled Parchment",
                    "Travel to The Ensorcelled Parchment."),
            },
        },
        {
            id = "objective-537-1-argus-shadow-mage",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Kill 4 Argus Shadow Mage.",
            complete = QuestObjective(537, 1, "Argus Shadow Mage"),
            dependsOn = { "accept-537-dark-council" },
            route = {
                Point(1416, 0.6340, 0.4380, "Argus Shadow Mage",
                    "Travel to Argus Shadow Mage."),
            },
        },
        {
            id = "objective-500-1-crushridge-ogre",
            kind = "objective",
            priority = 250,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Kill Crushridge Ogre.",
            complete = QuestObjective(500, 1, "Crushridge Ogre"),
            dependsOn = { "accept-500-crushridge-bounty" },
            route = {
                Point(1416, 0.5440, 0.5240, "Crushridge Ogre",
                    "Travel to Crushridge Ogre."),
            },
        },
        {
            id = "turnin-500-crushridge-bounty",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Crushridge Bounty.",
            complete = QuestState(500, "completed"),
            dependsOn = { "accept-500-crushridge-bounty", "objective-500-1-crushridge-ogre" },
            route = {
                Point(1424, 0.4948, 0.5873, "Crushridge Bounty",
                    "Travel to Crushridge Bounty."),
            },
        },
        {
            id = "turnin-537-dark-council",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Dark Council.",
            complete = QuestState(537, "completed"),
            dependsOn = { "accept-537-dark-council", "objective-537-2-nagaz", "objective-537-1-argus-shadow-mage" },
            route = {
                Point(1424, 0.4814, 0.5911, "Dark Council",
                    "Travel to Dark Council."),
            },
        },
        {
            id = "turnin-512-noble-deaths",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Noble Deaths.",
            complete = QuestState(512, "completed"),
            dependsOn = { "accept-512-noble-deaths" },
            route = {
                Point(1424, 0.4814, 0.5911, "Noble Deaths",
                    "Travel to Noble Deaths."),
            },
        },
        {
            id = "turnin-551-the-ensorcelled-parchment",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Ensorcelled Parchment.",
            complete = QuestState(551, "completed"),
            dependsOn = { "accept-551-the-ensorcelled-parchment" },
            route = {
                Point(1424, 0.5057, 0.5709, "The Ensorcelled Parchment",
                    "Travel to The Ensorcelled Parchment."),
            },
        },
        {
            id = "turnin-1449-to-the-hinterlands",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in To The Hinterlands.",
            complete = QuestState(1449, "completed"),
            route = {
                Point(1425, 0.1181, 0.4676, "To The Hinterlands",
                    "Travel to To The Hinterlands."),
            },
        },
        {
            id = "accept-1450-gryphon-master-talonaxe",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Gryphon Master Talonaxe.",
            complete = QuestState(1450, "activeOrCompleted"),
            route = {
                Point(1425, 0.1181, 0.4676, "Gryphon Master Talonaxe",
                    "Travel to Gryphon Master Talonaxe."),
            },
        },
        {
            id = "turnin-1450-gryphon-master-talonaxe",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Gryphon Master Talonaxe.",
            complete = QuestState(1450, "completed"),
            dependsOn = { "accept-1450-gryphon-master-talonaxe" },
            route = {
                Point(1425, 0.0976, 0.4448, "Gryphon Master Talonaxe",
                    "Travel to Gryphon Master Talonaxe."),
            },
        },
        {
            id = "accept-1451-rhapsody-shindigger",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Rhapsody Shindigger.",
            complete = QuestState(1451, "activeOrCompleted"),
            route = {
                Point(1425, 0.0976, 0.4448, "Rhapsody Shindigger",
                    "Travel to Rhapsody Shindigger."),
            },
        },
        {
            id = "turnin-1451-rhapsody-shindigger",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Rhapsody Shindigger.",
            complete = QuestState(1451, "completed"),
            dependsOn = { "accept-1451-rhapsody-shindigger" },
            route = {
                Point(1425, 0.2081, 0.4782, "Rhapsody Shindigger",
                    "Travel to Rhapsody Shindigger."),
            },
        },
        {
            id = "accept-1452-rhapsody-s-kalimdor-kocktail",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Alliance" },
            } },
            text = "Accept Rhapsody's Kalimdor Kocktail.",
            complete = QuestState(1452, "activeOrCompleted"),
            route = {
                Point(1425, 0.2081, 0.4782, "Rhapsody's Kalimdor Kocktail",
                    "Travel to Rhapsody's Kalimdor Kocktail."),
            },
        },
        {
            id = "accept-693-wand-over-fist",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Wand over Fist.",
            complete = QuestState(693, "activeOrCompleted"),
            route = {
                Point(1417, 0.4665, 0.4701, "Wand over Fist",
                    "Travel to Wand over Fist."),
            },
        },
        {
            id = "objective-693-1-kor-gresh-coldrage",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Kill Kor'gresh Coldrage.",
            complete = QuestObjective(693, 1, "Kor'gresh Coldrage"),
            dependsOn = { "accept-693-wand-over-fist" },
            route = {
                Point(1417, 0.5375, 0.7737, "Kor'gresh Coldrage",
                    "Travel to Kor'gresh Coldrage."),
            },
        },
        {
            id = "turnin-693-wand-over-fist",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Wand over Fist.",
            complete = QuestState(693, "completed"),
            dependsOn = { "accept-693-wand-over-fist", "objective-693-1-kor-gresh-coldrage" },
            route = {
                Point(1417, 0.5368, 0.7723, "Wand over Fist",
                    "Travel to Wand over Fist."),
            },
        },
        {
            id = "turnin-1712-cyclonian",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Turn in Cyclonian.",
            complete = QuestState(1712, "completed"),
            route = {
                Point(1416, 0.8050, 0.6692, "Cyclonian",
                    "Travel to Cyclonian."),
            },
        },
        {
            id = "accept-1713-the-summoning",
            kind = "accept",
            priority = 400,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Accept The Summoning.",
            complete = QuestState(1713, "activeOrCompleted"),
            route = {
                Point(1416, 0.8050, 0.6692, "The Summoning",
                    "Travel to The Summoning."),
            },
        },
        {
            id = "turnin-1713-the-summoning",
            kind = "turnin",
            priority = 410,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Turn in The Summoning.",
            complete = QuestState(1713, "completed"),
            dependsOn = { "accept-1713-the-summoning" },
            route = {
                Point(1416, 0.8050, 0.6692, "The Summoning",
                    "Travel to The Summoning."),
            },
        },
        {
            id = "accept-1792-whirlwind-weapon",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
                { class = 1 },
            } },
            text = "Accept Whirlwind Weapon.",
            complete = QuestState(1792, "activeOrCompleted"),
            route = {
                Point(1416, 0.8050, 0.6692, "Whirlwind Weapon",
                    "Travel to Whirlwind Weapon."),
            },
        },
        {
            id = "turnin-651-stones-of-binding",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Stones of Binding.",
            complete = QuestState(651, "completed"),
            dependsOn = { "accept-651-stones-of-binding" },
            route = {
                Point(1417, 0.3619, 0.5737, "Stones of Binding",
                    "Travel to Stones of Binding."),
            },
        },
        {
            id = "accept-663-land-ho",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Land Ho!.",
            complete = QuestState(663, "activeOrCompleted"),
            route = {
                Point(1417, 0.3122, 0.6535, "Land Ho!",
                    "Travel to Land Ho!."),
            },
        },
        {
            id = "turnin-663-land-ho",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Land Ho!.",
            complete = QuestState(663, "completed"),
            dependsOn = { "accept-663-land-ho" },
            route = {
                Point(1417, 0.3228, 0.8138, "Land Ho!",
                    "Travel to Land Ho!."),
            },
        },
        {
            id = "accept-662-deep-sea-salvage",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Deep Sea Salvage.",
            complete = QuestState(662, "activeOrCompleted"),
            route = {
                Point(1417, 0.3277, 0.8147, "Deep Sea Salvage",
                    "Travel to Deep Sea Salvage."),
            },
        },
        {
            id = "accept-664-drowned-sorrows",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Drowned Sorrows.",
            complete = QuestState(664, "activeOrCompleted"),
            route = {
                Point(1417, 0.3400, 0.8079, "Drowned Sorrows",
                    "Travel to Drowned Sorrows."),
            },
        },
        {
            id = "accept-665-sunken-treasure",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Sunken Treasure.",
            complete = QuestState(665, "activeOrCompleted"),
            route = {
                Point(1417, 0.3387, 0.8055, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "turnin-665-sunken-treasure",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Sunken Treasure.",
            complete = QuestState(665, "completed"),
            dependsOn = { "accept-665-sunken-treasure" },
            route = {
                Point(1417, 0.3386, 0.8045, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "accept-666-sunken-treasure",
            kind = "accept",
            priority = 500,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Sunken Treasure.",
            complete = QuestState(666, "activeOrCompleted"),
            route = {
                Point(1417, 0.3386, 0.8045, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "objective-662-2-elixir-of-water-breathing",
            kind = "objective",
            priority = 510,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Use Elixir of Water Breathing.",
            complete = QuestObjective(662, 2, "Elixir of Water Breathing"),
            dependsOn = { "accept-662-deep-sea-salvage" },
            route = {
                Point(1417, 0.2341, 0.8510, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "objective-662-1-elixir-of-water-breathing",
            kind = "objective",
            priority = 520,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Use Elixir of Water Breathing.",
            complete = QuestObjective(662, 1, "Elixir of Water Breathing"),
            dependsOn = { "accept-662-deep-sea-salvage" },
            route = {
                Point(1417, 0.2304, 0.8451, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "objective-662-3-elixir-of-water-breathing",
            kind = "objective",
            priority = 530,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Use Elixir of Water Breathing.",
            complete = QuestObjective(662, 3, "Elixir of Water Breathing"),
            dependsOn = { "accept-662-deep-sea-salvage" },
            route = {
                Point(1417, 0.2045, 0.8560, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "objective-662-4-elixir-of-water-breathing",
            kind = "objective",
            priority = 540,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Use Elixir of Water Breathing.",
            complete = QuestObjective(662, 4, "Elixir of Water Breathing"),
            dependsOn = { "accept-662-deep-sea-salvage" },
            route = {
                Point(1417, 0.2065, 0.8510, "Elixir of Water Breathing",
                    "Travel to Elixir of Water Breathing."),
            },
        },
        {
            id = "turnin-662-deep-sea-salvage",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Deep Sea Salvage.",
            complete = QuestState(662, "completed"),
            dependsOn = { "accept-662-deep-sea-salvage", "objective-662-2-elixir-of-water-breathing", "objective-662-1-elixir-of-water-breathing", "objective-662-3-elixir-of-water-breathing", "objective-662-4-elixir-of-water-breathing" },
            route = {
                Point(1417, 0.3280, 0.8148, "Deep Sea Salvage",
                    "Travel to Deep Sea Salvage."),
            },
        },
        {
            id = "turnin-664-drowned-sorrows",
            kind = "turnin",
            priority = 560,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Drowned Sorrows.",
            complete = QuestState(664, "completed"),
            dependsOn = { "accept-664-drowned-sorrows" },
            route = {
                Point(1417, 0.3400, 0.8079, "Drowned Sorrows",
                    "Travel to Drowned Sorrows."),
            },
        },
        {
            id = "turnin-666-sunken-treasure",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Sunken Treasure.",
            complete = QuestState(666, "completed"),
            dependsOn = { "accept-666-sunken-treasure" },
            route = {
                Point(1417, 0.3385, 0.8045, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "accept-668-sunken-treasure",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Sunken Treasure.",
            complete = QuestState(668, "activeOrCompleted"),
            route = {
                Point(1417, 0.3385, 0.8045, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "turnin-668-sunken-treasure",
            kind = "turnin",
            priority = 590,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Sunken Treasure.",
            complete = QuestState(668, "completed"),
            dependsOn = { "accept-668-sunken-treasure" },
            route = {
                Point(1417, 0.3229, 0.8138, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "accept-669-sunken-treasure",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Accept Sunken Treasure.",
            complete = QuestState(669, "activeOrCompleted"),
            route = {
                Point(1417, 0.3229, 0.8138, "Sunken Treasure",
                    "Travel to Sunken Treasure."),
            },
        },
        {
            id = "accept-554-stormpike-s-deciphering",
            kind = "accept",
            priority = 610,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Stormpike's Deciphering.",
            complete = QuestState(554, "activeOrCompleted"),
            route = {
                Point(1424, 0.5057, 0.5709, "Stormpike's Deciphering",
                    "Travel to Stormpike's Deciphering."),
            },
        },
        {
            id = "turnin-554-stormpike-s-deciphering",
            kind = "turnin",
            priority = 620,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Stormpike's Deciphering.",
            complete = QuestState(554, "completed"),
            dependsOn = { "accept-554-stormpike-s-deciphering" },
            route = {
                Point(1455, 0.7464, 0.1174, "Stormpike's Deciphering",
                    "Travel to Stormpike's Deciphering."),
            },
        },
        {
            id = "accept-4487-summon-felsteed",
            kind = "accept",
            priority = 630,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
                { class = 9 },
            } },
            text = "Accept Summon Felsteed.",
            complete = QuestState(4487, "activeOrCompleted"),
            route = {
                Point(1455, 0.5035, 0.0566, "Summon Felsteed",
                    "Travel to Summon Felsteed."),
            },
        },
    },
})
