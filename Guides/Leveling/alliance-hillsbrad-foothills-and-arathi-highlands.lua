local _, ns = ...

-- Forever Casual spine: Hillsbrad Foothills & Arathi Highlands (32-33)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves:
-- 98059 Hillsbrad's Hoard, 98071 Brewer's Trade, 98463 Talk of the Town (Southshore).
-- 98463 turns in to Nixxrax Fillamug in Booty Bay (later STV chapter).
-- Alliance Kirin Tor / Dalaran Modera chain (92432/92458/92459) stays with attunement — not woven here.
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
    ARATHI_HIGHLANDS = 1417,
    HILLSBRAD_FOOTHILLS = 1424,
    IRONFORGE = 1455,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
    title = "Hillsbrad Foothills & Arathi Highlands",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 32 } },
        },
    },
    goals = {
        {
            id = "accept-565-bartolo-s-yeti-fur-cloak",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bartolo's Yeti Fur Cloak.",
            complete = QuestState(565, "activeOrCompleted"),
            route = {
                Point(1424, 0.4943, 0.5553, "Bartolo's Yeti Fur Cloak",
                    "Travel to Bartolo's Yeti Fur Cloak."),
            },
        },
        {
            id = "accept-564-costly-menace",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Costly Menace.",
            complete = QuestState(564, "activeOrCompleted"),
            route = {
                Point(1424, 0.5242, 0.5596, "Costly Menace",
                    "Travel to Costly Menace."),
            },
        },
        {
            id = "turnin-538-southshore",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Southshore.",
            complete = QuestState(538, "completed"),
            route = {
                Point(1424, 0.5057, 0.5709, "Southshore",
                    "Travel to Southshore."),
            },
        },
        {
            id = "accept-536-down-the-coast",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Down the Coast.",
            complete = QuestState(536, "activeOrCompleted"),
            route = {
                Point(1424, 0.5146, 0.5838, "Down the Coast",
                    "Travel to Down the Coast."),
            },
        },
        {
            id = "accept-555-soothing-turtle-bisque",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Soothing Turtle Bisque.",
            complete = QuestState(555, "activeOrCompleted"),
            route = {
                Point(1424, 0.5189, 0.5868, "Soothing Turtle Bisque",
                    "Travel to Soothing Turtle Bisque."),
            },
        },
        {
            id = "woven-accept-98071-brewers-trade",
            kind = "accept",
            priority = 61,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Brewer's Trade from Brewmeister Bilger in Southshore.",
            complete = QuestState(98071, "activeOrCompleted"),
            route = {
                Point(1424, 0.5200, 0.5860, "Brewmeister Bilger",
                    "Travel to Brewmeister Bilger."),
            },
        },
        {
            id = "woven-accept-98463-talk-of-the-town",
            kind = "accept",
            priority = 62,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Talk of the Town from Barkeep Kelly in Southshore.",
            complete = QuestState(98463, "activeOrCompleted"),
            route = {
                Point(1424, 0.5140, 0.5860, "Barkeep Kelly",
                    "Travel to Barkeep Kelly."),
            },
        },
        {
            id = "woven-accept-98059-hillsbrads-hoard",
            kind = "accept",
            priority = 63,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Accept Hillsbrad's Hoard from Captain McManus in Southshore.",
            complete = QuestState(98059, "activeOrCompleted"),
            route = {
                Point(1424, 0.4640, 0.5020, "Captain McManus",
                    "Travel to Captain McManus."),
            },
        },
        {
            id = "woven-objective-98071-brewers-trade",
            kind = "objective",
            priority = 64,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Brewer's Trade: deliver Fallrook Varietal to Dun Garok and collect Sack of Homebrew Hops.",
            complete = QuestState(98071, "complete"),
            dependsOn = { "woven-accept-98071-brewers-trade" },
            useClientPin = true,
            route = {
                Point(1424, 0.5200, 0.5860, "Brewmeister Bilger",
                    "Travel to Brewmeister Bilger."),
            },
        },
        {
            id = "woven-objective-98059-hillsbrads-hoard",
            kind = "objective",
            priority = 65,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Hillsbrad's Hoard: deliver the Sealed Company Request to the Hillsbrad council.",
            complete = QuestState(98059, "complete"),
            dependsOn = { "woven-accept-98059-hillsbrads-hoard" },
            useClientPin = true,
            route = {
                Point(1424, 0.4640, 0.5020, "Captain McManus",
                    "Travel to Captain McManus."),
            },
        },
        {
            id = "woven-turnin-98071-brewers-trade",
            kind = "turnin",
            priority = 66,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Brewer's Trade to Brewmeister Bilger in Southshore.",
            complete = QuestState(98071, "completed"),
            dependsOn = { "woven-accept-98071-brewers-trade", "woven-objective-98071-brewers-trade" },
            route = {
                Point(1424, 0.5200, 0.5860, "Brewmeister Bilger",
                    "Travel to Brewmeister Bilger."),
            },
        },
        {
            id = "woven-turnin-98059-hillsbrads-hoard",
            kind = "turnin",
            priority = 67,
            conditions = { all = {
                { level = { min = 27 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Hillsbrad's Hoard to Captain McManus in Southshore.",
            complete = QuestState(98059, "completed"),
            dependsOn = { "woven-accept-98059-hillsbrads-hoard", "woven-objective-98059-hillsbrads-hoard" },
            route = {
                Point(1424, 0.4640, 0.5020, "Captain McManus",
                    "Travel to Captain McManus."),
            },
        },
        {
            id = "turnin-555-soothing-turtle-bisque",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Soothing Turtle Bisque.",
            complete = QuestState(555, "completed"),
            dependsOn = { "accept-555-soothing-turtle-bisque" },
            route = {
                Point(1424, 0.5189, 0.5868, "Soothing Turtle Bisque",
                    "Travel to Soothing Turtle Bisque."),
            },
        },
        {
            id = "objective-536-1-torn-fin-tidehunter",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Torn Fin Tidehunter.",
            complete = QuestObjective(536, 1, "Torn Fin Tidehunter"),
            dependsOn = { "accept-536-down-the-coast" },
            route = {
                Point(1424, 0.4760, 0.6460, "Torn Fin Tidehunter",
                    "Travel to Torn Fin Tidehunter."),
            },
        },
        {
            id = "objective-536-2-torn-fin-oracle",
            kind = "objective",
            priority = 80,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Torn Fin Oracle.",
            complete = QuestObjective(536, 2, "Torn Fin Oracle"),
            dependsOn = { "accept-536-down-the-coast" },
            route = {
                Point(1424, 0.4760, 0.6460, "Torn Fin Oracle",
                    "Travel to Torn Fin Oracle."),
            },
        },
        {
            id = "turnin-536-down-the-coast",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Down the Coast.",
            complete = QuestState(536, "completed"),
            dependsOn = { "accept-536-down-the-coast", "objective-536-1-torn-fin-tidehunter", "objective-536-2-torn-fin-oracle" },
            route = {
                Point(1424, 0.5146, 0.5838, "Down the Coast",
                    "Travel to Down the Coast."),
            },
        },
        {
            id = "accept-559-farren-s-proof",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Farren's Proof.",
            complete = QuestState(559, "activeOrCompleted"),
            route = {
                Point(1424, 0.5146, 0.5838, "Farren's Proof",
                    "Travel to Farren's Proof."),
            },
        },
        {
            id = "objective-559-1-torn-fin-tidehunter",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Kill Torn Fin Tidehunter.",
            complete = QuestObjective(559, 1, "Torn Fin Tidehunter"),
            dependsOn = { "accept-559-farren-s-proof" },
            route = {
                Point(1424, 0.4760, 0.6460, "Torn Fin Tidehunter",
                    "Travel to Torn Fin Tidehunter."),
            },
        },
        {
            id = "turnin-559-farren-s-proof",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Farren's Proof.",
            complete = QuestState(559, "completed"),
            dependsOn = { "accept-559-farren-s-proof", "objective-559-1-torn-fin-tidehunter" },
            route = {
                Point(1424, 0.5146, 0.5838, "Farren's Proof",
                    "Travel to Farren's Proof."),
            },
        },
        {
            id = "accept-560-farren-s-proof",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Farren's Proof.",
            complete = QuestState(560, "activeOrCompleted"),
            route = {
                Point(1424, 0.5146, 0.5838, "Farren's Proof",
                    "Travel to Farren's Proof."),
            },
        },
        {
            id = "turnin-560-farren-s-proof",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Farren's Proof.",
            complete = QuestState(560, "completed"),
            dependsOn = { "accept-560-farren-s-proof" },
            route = {
                Point(1424, 0.4948, 0.5873, "Farren's Proof",
                    "Travel to Farren's Proof."),
            },
        },
        {
            id = "accept-561-farren-s-proof",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Farren's Proof.",
            complete = QuestState(561, "activeOrCompleted"),
            route = {
                Point(1424, 0.4948, 0.5873, "Farren's Proof",
                    "Travel to Farren's Proof."),
            },
        },
        {
            id = "turnin-561-farren-s-proof",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Farren's Proof.",
            complete = QuestState(561, "completed"),
            dependsOn = { "accept-561-farren-s-proof" },
            route = {
                Point(1424, 0.5146, 0.5838, "Farren's Proof",
                    "Travel to Farren's Proof."),
            },
        },
        {
            id = "accept-562-stormwind-ho",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Stormwind Ho!.",
            complete = QuestState(562, "activeOrCompleted"),
            route = {
                Point(1424, 0.5146, 0.5838, "Stormwind Ho!",
                    "Travel to Stormwind Ho!."),
            },
        },
        {
            id = "objective-562-1-daggerspine-shorehunter",
            kind = "objective",
            priority = 180,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Daggerspine Shorehunter.",
            complete = QuestObjective(562, 1, "Daggerspine Shorehunter"),
            dependsOn = { "accept-562-stormwind-ho" },
            route = {
                Point(1424, 0.5500, 0.6440, "Daggerspine Shorehunter",
                    "Travel to Daggerspine Shorehunter."),
            },
        },
        {
            id = "objective-562-2-daggerspine-siren",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Daggerspine Siren.",
            complete = QuestObjective(562, 2, "Daggerspine Siren"),
            dependsOn = { "accept-562-stormwind-ho" },
            route = {
                Point(1424, 0.5500, 0.6440, "Daggerspine Siren",
                    "Travel to Daggerspine Siren."),
            },
        },
        {
            id = "turnin-562-stormwind-ho",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Stormwind Ho!.",
            complete = QuestState(562, "completed"),
            dependsOn = { "accept-562-stormwind-ho", "objective-562-1-daggerspine-shorehunter", "objective-562-2-daggerspine-siren" },
            route = {
                Point(1424, 0.5146, 0.5838, "Stormwind Ho!",
                    "Travel to Stormwind Ho!."),
            },
        },
        {
            id = "accept-659-hints-of-a-new-plague",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Hints of a New Plague?.",
            complete = QuestState(659, "activeOrCompleted"),
            route = {
                Point(1424, 0.5034, 0.5905, "Hints of a New Plague?",
                    "Travel to Hints of a New Plague?."),
            },
        },
        {
            id = "accept-505-syndicate-assassins",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Syndicate Assassins.",
            complete = QuestState(505, "activeOrCompleted"),
            route = {
                Point(1424, 0.4814, 0.5911, "Syndicate Assassins",
                    "Travel to Syndicate Assassins."),
            },
        },
        {
            id = "objective-689-1-alterac-granite",
            kind = "objective",
            priority = 230,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Click Alterac Granite.",
            complete = QuestObjective(689, 1, "Alterac Granite"),
            route = {
                Point(1424, 0.4618, 0.3183, "Alterac Granite",
                    "Travel to Alterac Granite."),
            },
        },
        {
            id = "accept-510-foreboding-plans",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Foreboding Plans.",
            complete = QuestState(510, "activeOrCompleted"),
            route = {
                Point(1424, 0.4618, 0.3183, "Foreboding Plans",
                    "Travel to Foreboding Plans."),
            },
        },
        {
            id = "accept-511-encrypted-letter",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Encrypted Letter.",
            complete = QuestState(511, "activeOrCompleted"),
            route = {
                Point(1424, 0.4618, 0.3183, "Encrypted Letter",
                    "Travel to Encrypted Letter."),
            },
        },
        {
            id = "accept-563-reassignment",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Alliance" },
            } },
            text = "Accept Reassignment.",
            complete = QuestState(563, "activeOrCompleted"),
            route = {
                Point(1424, 0.5146, 0.5838, "Reassignment",
                    "Travel to Reassignment."),
            },
        },
        {
            id = "turnin-510-foreboding-plans",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Foreboding Plans.",
            complete = QuestState(510, "completed"),
            dependsOn = { "accept-510-foreboding-plans" },
            route = {
                Point(1424, 0.4814, 0.5911, "Foreboding Plans",
                    "Travel to Foreboding Plans."),
            },
        },
        {
            id = "turnin-505-syndicate-assassins",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Syndicate Assassins.",
            complete = QuestState(505, "completed"),
            dependsOn = { "accept-505-syndicate-assassins" },
            route = {
                Point(1424, 0.4814, 0.5911, "Syndicate Assassins",
                    "Travel to Syndicate Assassins."),
            },
        },
        {
            id = "turnin-511-encrypted-letter",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Encrypted Letter.",
            complete = QuestState(511, "completed"),
            dependsOn = { "accept-511-encrypted-letter" },
            route = {
                Point(1424, 0.5057, 0.5709, "Encrypted Letter",
                    "Travel to Encrypted Letter."),
            },
        },
        {
            id = "accept-514-letter-to-stormpike",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Letter to Stormpike.",
            complete = QuestState(514, "activeOrCompleted"),
            route = {
                Point(1424, 0.5057, 0.5709, "Letter to Stormpike",
                    "Travel to Letter to Stormpike."),
            },
        },
        {
            id = "turnin-564-costly-menace",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Costly Menace.",
            complete = QuestState(564, "completed"),
            dependsOn = { "accept-564-costly-menace" },
            route = {
                Point(1424, 0.5242, 0.5596, "Costly Menace",
                    "Travel to Costly Menace."),
            },
        },
        {
            id = "turnin-565-bartolo-s-yeti-fur-cloak",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bartolo's Yeti Fur Cloak.",
            complete = QuestState(565, "completed"),
            dependsOn = { "accept-565-bartolo-s-yeti-fur-cloak" },
            route = {
                Point(1424, 0.4943, 0.5553, "Bartolo's Yeti Fur Cloak",
                    "Travel to Bartolo's Yeti Fur Cloak."),
            },
        },
        {
            id = "accept-681-northfold-manor",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept Northfold Manor.",
            complete = QuestState(681, "activeOrCompleted"),
            route = {
                Point(1417, 0.4583, 0.4755, "Northfold Manor",
                    "Travel to Northfold Manor."),
            },
        },
        {
            id = "turnin-659-hints-of-a-new-plague",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Hints of a New Plague?.",
            complete = QuestState(659, "completed"),
            dependsOn = { "accept-659-hints-of-a-new-plague" },
            route = {
                Point(1417, 0.6019, 0.5385, "Hints of a New Plague?",
                    "Travel to Hints of a New Plague?."),
            },
        },
        {
            id = "accept-658-hints-of-a-new-plague",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Hints of a New Plague?.",
            complete = QuestState(658, "activeOrCompleted"),
            route = {
                Point(1417, 0.6019, 0.5385, "Hints of a New Plague?",
                    "Travel to Hints of a New Plague?."),
            },
        },
        {
            id = "objective-681-2-syndicate-mercenary",
            kind = "objective",
            priority = 360,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Kill 6 Syndicate Mercenary.",
            complete = QuestObjective(681, 2, "Syndicate Mercenary"),
            dependsOn = { "accept-681-northfold-manor" },
            route = {
                Point(1417, 0.3340, 0.3000, "Syndicate Mercenary",
                    "Travel to Syndicate Mercenary."),
            },
        },
        {
            id = "objective-681-1-syndicate-highwayman",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Syndicate Highwayman.",
            complete = QuestObjective(681, 1, "Syndicate Highwayman"),
            dependsOn = { "accept-681-northfold-manor" },
            route = {
                Point(1417, 0.3340, 0.3000, "Syndicate Highwayman",
                    "Travel to Syndicate Highwayman."),
            },
        },
        {
            id = "turnin-681-northfold-manor",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Northfold Manor.",
            complete = QuestState(681, "completed"),
            dependsOn = { "accept-681-northfold-manor", "objective-681-2-syndicate-mercenary", "objective-681-1-syndicate-highwayman" },
            route = {
                Point(1417, 0.4583, 0.4755, "Northfold Manor",
                    "Travel to Northfold Manor."),
            },
        },
        {
            id = "turnin-514-letter-to-stormpike",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Letter to Stormpike.",
            complete = QuestState(514, "completed"),
            dependsOn = { "accept-514-letter-to-stormpike" },
            route = {
                Point(1455, 0.7464, 0.1173, "Letter to Stormpike",
                    "Travel to Letter to Stormpike."),
            },
        },
        {
            id = "turnin-689-a-king-s-tribute",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A King's Tribute.",
            complete = QuestState(689, "completed"),
            dependsOn = { "objective-689-1-alterac-granite" },
            route = {
                Point(1455, 0.3904, 0.8805, "A King's Tribute",
                    "Travel to A King's Tribute."),
            },
        },
        {
            id = "accept-700-a-king-s-tribute",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept A King's Tribute.",
            complete = QuestState(700, "activeOrCompleted"),
            route = {
                Point(1455, 0.3904, 0.8805, "A King's Tribute",
                    "Travel to A King's Tribute."),
            },
        },
        {
            id = "turnin-700-a-king-s-tribute",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A King's Tribute.",
            complete = QuestState(700, "completed"),
            dependsOn = { "accept-700-a-king-s-tribute" },
            route = {
                Point(1455, 0.4456, 0.4958, "A King's Tribute",
                    "Travel to A King's Tribute."),
            },
        },
    },
})
