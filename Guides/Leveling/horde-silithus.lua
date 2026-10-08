local _, ns = ...

-- Forever Casual spine: Silithus (59-60)
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
    MOONGLADE = 1450,
    SILITHUS = 1451,
    WINTERSPRING = 1452,
}

ns:RegisterGuide({
    id = "leveling-era-horde-silithus",
    title = "Silithus",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 59 } },
        },
    },
    goals = {
        {
            id = "turnin-1124-wasteland",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in Wasteland.",
            complete = QuestState(1124, "completed"),
            route = {
                Point(1451, 0.8187, 0.1893, "Wasteland",
                    "Travel to Wasteland."),
            },
        },
        {
            id = "accept-1125-the-spirits-of-southwind",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept The Spirits of Southwind.",
            complete = QuestState(1125, "activeOrCompleted"),
            route = {
                Point(1451, 0.8187, 0.1893, "The Spirits of Southwind",
                    "Travel to The Spirits of Southwind."),
            },
        },
        {
            id = "accept-8277-deadly-desert-venom",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept Deadly Desert Venom.",
            complete = QuestState(8277, "activeOrCompleted"),
            route = {
                Point(1451, 0.5171, 0.3858, "Deadly Desert Venom",
                    "Travel to Deadly Desert Venom."),
            },
        },
        {
            id = "turnin-8276-taking-back-silithus",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in Taking Back Silithus.",
            complete = QuestState(8276, "completed"),
            route = {
                Point(1451, 0.5115, 0.3829, "Taking Back Silithus",
                    "Travel to Taking Back Silithus."),
            },
        },
        {
            id = "accept-8280-securing-the-supply-lines",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept Securing the Supply Lines.",
            complete = QuestState(8280, "activeOrCompleted"),
            route = {
                Point(1451, 0.5115, 0.3829, "Securing the Supply Lines",
                    "Travel to Securing the Supply Lines."),
            },
        },
        {
            id = "accept-8284-the-twilight-mystery",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept The Twilight Mystery.",
            complete = QuestState(8284, "activeOrCompleted"),
            route = {
                Point(1451, 0.4967, 0.3746, "The Twilight Mystery",
                    "Travel to The Twilight Mystery."),
            },
        },
        {
            id = "accept-8318-secret-communication",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept Secret Communication.",
            complete = QuestState(8318, "activeOrCompleted"),
            route = {
                Point(1451, 0.4857, 0.3778, "Secret Communication",
                    "Travel to Secret Communication."),
            },
        },
        {
            id = "accept-8304-dearest-natalia",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept Dearest Natalia.",
            complete = QuestState(8304, "activeOrCompleted"),
            route = {
                Point(1451, 0.4919, 0.3418, "Dearest Natalia",
                    "Travel to Dearest Natalia."),
            },
        },
        {
            id = "accept-8308-brann-bronzebeard-s-lost-letter",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Use the Brann Bronzebeard's Lost Letter to accept Brann Bronzebeard's Lost Letter.",
            complete = QuestState(8308, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-1125-the-spirits-of-southwind",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Spirits of Southwind.",
            complete = QuestState(1125, "completed"),
            dependsOn = { "accept-1125-the-spirits-of-southwind" },
            route = {
                Point(1451, 0.8187, 0.1893, "The Spirits of Southwind",
                    "Travel to The Spirits of Southwind."),
            },
        },
        {
            id = "turnin-8277-deadly-desert-venom",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in Deadly Desert Venom.",
            complete = QuestState(8277, "completed"),
            dependsOn = { "accept-8277-deadly-desert-venom" },
            route = {
                Point(1451, 0.5171, 0.3858, "Deadly Desert Venom",
                    "Travel to Deadly Desert Venom."),
            },
        },
        {
            id = "accept-8278-noggle-s-last-hope",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept Noggle's Last Hope.",
            complete = QuestState(8278, "activeOrCompleted"),
            route = {
                Point(1451, 0.5171, 0.3858, "Noggle's Last Hope",
                    "Travel to Noggle's Last Hope."),
            },
        },
        {
            id = "turnin-8280-securing-the-supply-lines",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in Securing the Supply Lines.",
            complete = QuestState(8280, "completed"),
            dependsOn = { "accept-8280-securing-the-supply-lines" },
            route = {
                Point(1451, 0.5115, 0.3829, "Securing the Supply Lines",
                    "Travel to Securing the Supply Lines."),
            },
        },
        {
            id = "accept-8281-stepping-up-security",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept Stepping Up Security.",
            complete = QuestState(8281, "activeOrCompleted"),
            route = {
                Point(1451, 0.5115, 0.3829, "Stepping Up Security",
                    "Travel to Stepping Up Security."),
            },
        },
        {
            id = "objective-8284-1-twilight-tablet-fragment",
            kind = "objective",
            priority = 150,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Collect 8 Twilight Tablet Fragment.",
            complete = QuestObjective(8284, 1, "Twilight Tablet Fragment"),
            dependsOn = { "accept-8284-the-twilight-mystery" },
            route = {
                Point(1451, 0.2640, 0.1580, "Twilight Tablet Fragment",
                    "Travel to Twilight Tablet Fragment."),
            },
        },
        {
            id = "turnin-8284-the-twilight-mystery",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Twilight Mystery.",
            complete = QuestState(8284, "completed"),
            dependsOn = { "accept-8284-the-twilight-mystery", "objective-8284-1-twilight-tablet-fragment" },
            route = {
                Point(1451, 0.4968, 0.3746, "The Twilight Mystery",
                    "Travel to The Twilight Mystery."),
            },
        },
        {
            id = "accept-8285-the-deserter",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept The Deserter.",
            complete = QuestState(8285, "activeOrCompleted"),
            route = {
                Point(1451, 0.4968, 0.3746, "The Deserter",
                    "Travel to The Deserter."),
            },
        },
        {
            id = "turnin-8285-the-deserter",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Deserter.",
            complete = QuestState(8285, "completed"),
            dependsOn = { "accept-8285-the-deserter" },
            route = {
                Point(1451, 0.6719, 0.6976, "The Deserter",
                    "Travel to The Deserter."),
            },
        },
        {
            id = "accept-8279-the-twilight-lexicon",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept The Twilight Lexicon.",
            complete = QuestState(8279, "activeOrCompleted"),
            route = {
                Point(1451, 0.6719, 0.6976, "The Twilight Lexicon",
                    "Travel to The Twilight Lexicon."),
            },
        },
        {
            id = "objective-8279-2-twilight-keeper-exeter",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Kill Twilight Keeper Exeter.",
            complete = QuestObjective(8279, 2, "Twilight Keeper Exeter"),
            dependsOn = { "accept-8279-the-twilight-lexicon" },
            route = {
                Point(1451, 0.1540, 0.8620, "Twilight Keeper Exeter",
                    "Travel to Twilight Keeper Exeter."),
            },
        },
        {
            id = "objective-8279-3-twilight-keeper-havunth",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Kill Twilight Keeper Havunth.",
            complete = QuestObjective(8279, 3, "Twilight Keeper Havunth"),
            dependsOn = { "accept-8279-the-twilight-lexicon" },
            route = {
                Point(1451, 0.4043, 0.4199, "Twilight Keeper Havunth",
                    "Travel to Twilight Keeper Havunth."),
            },
        },
        {
            id = "objective-8279-1-twilight-keeper-mayna",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Kill Twilight Keeper Mayna.",
            complete = QuestObjective(8279, 1, "Twilight Keeper Mayna"),
            dependsOn = { "accept-8279-the-twilight-lexicon" },
            route = {
                Point(1451, 0.2662, 0.3633, "Twilight Keeper Mayna",
                    "Travel to Twilight Keeper Mayna."),
            },
        },
        {
            id = "turnin-8279-the-twilight-lexicon",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Twilight Lexicon.",
            complete = QuestState(8279, "completed"),
            dependsOn = { "accept-8279-the-twilight-lexicon", "objective-8279-2-twilight-keeper-exeter", "objective-8279-3-twilight-keeper-havunth", "objective-8279-1-twilight-keeper-mayna" },
            route = {
                Point(1451, 0.6719, 0.6976, "The Twilight Lexicon",
                    "Travel to The Twilight Lexicon."),
            },
        },
        {
            id = "accept-8287-a-terrible-purpose",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Accept A Terrible Purpose.",
            complete = QuestState(8287, "activeOrCompleted"),
            route = {
                Point(1451, 0.6719, 0.6976, "A Terrible Purpose",
                    "Travel to A Terrible Purpose."),
            },
        },
        {
            id = "turnin-8281-stepping-up-security",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stepping Up Security.",
            complete = QuestState(8281, "completed"),
            dependsOn = { "accept-8281-stepping-up-security" },
            route = {
                Point(1451, 0.5115, 0.3829, "Stepping Up Security",
                    "Travel to Stepping Up Security."),
            },
        },
        {
            id = "turnin-8278-noggle-s-last-hope",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in Noggle's Last Hope.",
            complete = QuestState(8278, "completed"),
            dependsOn = { "accept-8278-noggle-s-last-hope" },
            route = {
                Point(1451, 0.5171, 0.3858, "Noggle's Last Hope",
                    "Travel to Noggle's Last Hope."),
            },
        },
        {
            id = "turnin-8287-a-terrible-purpose",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Terrible Purpose.",
            complete = QuestState(8287, "completed"),
            dependsOn = { "accept-8287-a-terrible-purpose" },
            route = {
                Point(1451, 0.4919, 0.3418, "A Terrible Purpose",
                    "Travel to A Terrible Purpose."),
            },
        },
        {
            id = "turnin-8304-dearest-natalia",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in Dearest Natalia.",
            complete = QuestState(8304, "completed"),
            dependsOn = { "accept-8304-dearest-natalia" },
            route = {
                Point(1451, 0.4919, 0.3418, "Dearest Natalia",
                    "Travel to Dearest Natalia."),
            },
        },
        {
            id = "turnin-8318-secret-communication",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in Secret Communication.",
            complete = QuestState(8318, "completed"),
            dependsOn = { "accept-8318-secret-communication" },
            route = {
                Point(1451, 0.4858, 0.3778, "Secret Communication",
                    "Travel to Secret Communication."),
            },
        },
        {
            id = "turnin-5163-are-we-there-yeti",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in Are We There, Yeti?.",
            complete = QuestState(5163, "completed"),
            route = {
                Point(1452, 0.6088, 0.3762, "Are We There, Yeti?",
                    "Travel to Are We There, Yeti?."),
            },
        },
        {
            id = "turnin-5527-a-reliquary-of-purity",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 59 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Reliquary of Purity.",
            complete = QuestState(5527, "completed"),
            route = {
                Point(1450, 0.5168, 0.4508, "A Reliquary of Purity",
                    "Travel to A Reliquary of Purity."),
            },
        },
    },
})
