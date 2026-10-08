local _, ns = ...

-- Forever Casual spine: Ashenvale (21-22)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves ported from prior Leveling chapters (quest id >= 90000).
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
    ASHENVALE = 1440,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
}

ns:RegisterGuide({
    id = "leveling-era-horde-ashenvale",
    title = "Ashenvale",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 21 } },
        },
    },
    goals = {
        {
            id = "turnin-6562-trouble-in-the-deeps",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
            } },
            text = "Turn in Trouble in the Deeps.",
            complete = QuestState(6562, "completed"),
            route = {
                Point(1440, 0.1156, 0.3428, "Trouble in the Deeps",
                    "Travel to Trouble in the Deeps."),
            },
        },
        {
            id = "accept-216-between-a-rock-and-a-thistlefur",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept Between a Rock and a Thistlefur.",
            complete = QuestState(216, "activeOrCompleted"),
            route = {
                Point(1440, 0.1190, 0.3453, "Between a Rock and a Thistlefur",
                    "Travel to Between a Rock and a Thistlefur."),
            },
        },
        {
            id = "accept-6442-naga-at-the-zoram-strand",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
            } },
            text = "Accept Naga at the Zoram Strand.",
            complete = QuestState(6442, "activeOrCompleted"),
            route = {
                Point(1440, 0.1169, 0.3490, "Naga at the Zoram Strand",
                    "Travel to Naga at the Zoram Strand."),
            },
        },
        {
            id = "accept-6462-troll-charm",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 26 } },
                { faction = "Horde" },
            } },
            text = "Accept Troll Charm.",
            complete = QuestState(6462, "activeOrCompleted"),
            route = {
                Point(1440, 0.1165, 0.3485, "Troll Charm",
                    "Travel to Troll Charm."),
            },
        },
        {
            id = "objective-6442-1-wrathtail-wave-rider",
            kind = "objective",
            priority = 50,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
            } },
            text = "Kill Wrathtail Wave Rider.",
            complete = QuestObjective(6442, 1, "Wrathtail Wave Rider"),
            dependsOn = { "accept-6442-naga-at-the-zoram-strand" },
            route = {
                Point(1440, 0.1240, 0.2920, "Wrathtail Wave Rider",
                    "Travel to Wrathtail Wave Rider."),
            },
        },
        {
            id = "turnin-6442-naga-at-the-zoram-strand",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
            } },
            text = "Turn in Naga at the Zoram Strand.",
            complete = QuestState(6442, "completed"),
            dependsOn = { "accept-6442-naga-at-the-zoram-strand", "objective-6442-1-wrathtail-wave-rider" },
            route = {
                Point(1440, 0.1169, 0.3490, "Naga at the Zoram Strand",
                    "Travel to Naga at the Zoram Strand."),
            },
        },
        {
            id = "turnin-1063-the-elder-crone",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Elder Crone.",
            complete = QuestState(1063, "completed"),
            route = {
                Point(1456, 0.6985, 0.3091, "The Elder Crone",
                    "Travel to The Elder Crone."),
            },
        },
        {
            id = "accept-1064-forsaken-aid",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
            } },
            text = "Accept Forsaken Aid.",
            complete = QuestState(1064, "activeOrCompleted"),
            route = {
                Point(1456, 0.6985, 0.3091, "Forsaken Aid",
                    "Travel to Forsaken Aid."),
            },
        },
        {
            id = "turnin-1064-forsaken-aid",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
            } },
            text = "Turn in Forsaken Aid.",
            complete = QuestState(1064, "completed"),
            dependsOn = { "accept-1064-forsaken-aid" },
            route = {
                Point(1456, 0.2981, 0.2982, "Forsaken Aid",
                    "Travel to Forsaken Aid."),
            },
        },
        {
            id = "accept-1065-journey-to-tarren-mill",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept Journey to Tarren Mill.",
            complete = QuestState(1065, "activeOrCompleted"),
            route = {
                Point(1456, 0.2981, 0.2982, "Journey to Tarren Mill",
                    "Travel to Journey to Tarren Mill."),
            },
        },
        {
            id = "turnin-5642-shadowguard",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 5 },
            } },
            text = "Turn in Shadowguard.",
            complete = QuestState(5642, "completed"),
            route = {
                Point(1456, 0.2981, 0.2982, "Shadowguard",
                    "Travel to Shadowguard."),
            },
        },
        {
            id = "turnin-1511-ken-zigla-s-draught",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 9 },
            } },
            text = "Turn in Ken'zigla's Draught.",
            complete = QuestState(1511, "completed"),
            route = {
                Point(1456, 0.2981, 0.2982, "Ken'zigla's Draught",
                    "Travel to Ken'zigla's Draught."),
            },
        },
        {
            id = "accept-1515-dogran-s-captivity",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 9 },
            } },
            text = "Accept Dogran's Captivity.",
            complete = QuestState(1515, "activeOrCompleted"),
            route = {
                Point(1456, 0.2981, 0.2982, "Dogran's Captivity",
                    "Travel to Dogran's Captivity."),
            },
        },
        {
            id = "turnin-1515-dogran-s-captivity",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 9 },
            } },
            text = "Turn in Dogran's Captivity.",
            complete = QuestState(1515, "completed"),
            dependsOn = { "accept-1515-dogran-s-captivity" },
            route = {
                Point(1413, 0.4331, 0.4789, "Dogran's Captivity",
                    "Travel to Dogran's Captivity."),
            },
        },
        {
            id = "accept-1512-love-s-gift",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 9 },
            } },
            text = "Accept Love's Gift.",
            complete = QuestState(1512, "activeOrCompleted"),
            route = {
                Point(1413, 0.4331, 0.4789, "Love's Gift",
                    "Travel to Love's Gift."),
            },
        },
        {
            id = "turnin-1512-love-s-gift",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 9 },
            } },
            text = "Turn in Love's Gift.",
            complete = QuestState(1512, "completed"),
            dependsOn = { "accept-1512-love-s-gift" },
            route = {
                Point(1454, 0.4825, 0.4529, "Love's Gift",
                    "Travel to Love's Gift."),
            },
        },
        {
            id = "accept-1513-the-binding",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 9 },
            } },
            text = "Accept The Binding.",
            complete = QuestState(1513, "activeOrCompleted"),
            route = {
                Point(1454, 0.4825, 0.4529, "The Binding",
                    "Travel to The Binding."),
            },
        },
        {
            id = "objective-1513-1-dogran-s-pendant",
            kind = "objective",
            priority = 180,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 9 },
            } },
            text = "Use Dogran's Pendant.",
            complete = QuestObjective(1513, 1, "Dogran's Pendant"),
            dependsOn = { "accept-1513-the-binding" },
            route = {
                Point(1454, 0.4945, 0.5003, "Dogran's Pendant",
                    "Travel to Dogran's Pendant."),
            },
        },
        {
            id = "turnin-1513-the-binding",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 9 },
            } },
            text = "Turn in The Binding.",
            complete = QuestState(1513, "completed"),
            dependsOn = { "accept-1513-the-binding", "objective-1513-1-dogran-s-pendant" },
            route = {
                Point(1454, 0.4824, 0.4529, "The Binding",
                    "Travel to The Binding."),
            },
        },
        {
            id = "accept-2460-the-shattered-salute",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Accept The Shattered Salute.",
            complete = QuestState(2460, "activeOrCompleted"),
            route = {
                Point(1454, 0.4305, 0.5374, "The Shattered Salute",
                    "Travel to The Shattered Salute."),
            },
        },
        {
            id = "turnin-2460-the-shattered-salute",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Turn in The Shattered Salute.",
            complete = QuestState(2460, "completed"),
            dependsOn = { "accept-2460-the-shattered-salute" },
            route = {
                Point(1454, 0.4305, 0.5374, "The Shattered Salute",
                    "Travel to The Shattered Salute."),
            },
        },
        {
            id = "accept-2458-deep-cover",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Accept Deep Cover.",
            complete = QuestState(2458, "activeOrCompleted"),
            route = {
                Point(1454, 0.4305, 0.5374, "Deep Cover",
                    "Travel to Deep Cover."),
            },
        },
        {
            id = "objective-2458-1-flare-gun",
            kind = "objective",
            priority = 230,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Use Flare Gun.",
            complete = QuestObjective(2458, 1, "Flare Gun"),
            dependsOn = { "accept-2458-deep-cover" },
            route = {
                Point(1413, 0.5547, 0.0608, "Flare Gun",
                    "Travel to Flare Gun."),
            },
        },
        {
            id = "turnin-2458-deep-cover",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Turn in Deep Cover.",
            complete = QuestState(2458, "completed"),
            dependsOn = { "accept-2458-deep-cover", "objective-2458-1-flare-gun" },
            route = {
                Point(1413, 0.5544, 0.0556, "Deep Cover",
                    "Travel to Deep Cover."),
            },
        },
        {
            id = "accept-2478-mission-possible-but-not-probable",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Accept Mission: Possible But Not Probable.",
            complete = QuestState(2478, "activeOrCompleted"),
            route = {
                Point(1413, 0.5544, 0.0556, "Mission: Possible But Not Probable",
                    "Travel to Mission: Possible But Not Probable."),
            },
        },
        {
            id = "objective-2478-1-mutated-venture-co-drone",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Kill 2 Mutated Venture Co. Drone.",
            complete = QuestObjective(2478, 1, "Mutated Venture Co. Drone"),
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            route = {
                Point(1413, 0.5471, 0.0573, "Mutated Venture Co. Drone",
                    "Travel to Mutated Venture Co. Drone."),
            },
        },
        {
            id = "objective-2478-3-venture-co-patroller",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Kill 2 Venture Co. Patroller.",
            complete = QuestObjective(2478, 3, "Venture Co. Patroller"),
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            route = {
                Point(1413, 0.5481, 0.0559, "Venture Co. Patroller",
                    "Travel to Venture Co. Patroller."),
            },
        },
        {
            id = "objective-2478-2-venture-co-lookout",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Kill 2 Venture Co. Lookout.",
            complete = QuestObjective(2478, 2, "Venture Co. Lookout"),
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            route = {
                Point(1413, 0.5463, 0.0564, "Venture Co. Lookout",
                    "Travel to Venture Co. Lookout."),
            },
        },
        {
            id = "objective-2478-4-grand-foreman-puzik-gallywix",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Kill Grand Foreman Puzik Gallywix.",
            complete = QuestObjective(2478, 4, "Grand Foreman Puzik Gallywix"),
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            route = {
                Point(1413, 0.5475, 0.0559, "Grand Foreman Puzik Gallywix",
                    "Travel to Grand Foreman Puzik Gallywix."),
            },
        },
        {
            id = "objective-2478-6-gallywix-s-lockbox",
            kind = "objective",
            priority = 300,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Click Gallywix's Lockbox.",
            complete = QuestObjective(2478, 6, "Gallywix's Lockbox"),
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            route = {
                Point(1413, 0.5475, 0.0555, "Gallywix's Lockbox",
                    "Travel to Gallywix's Lockbox."),
            },
        },
        {
            id = "turnin-2478-mission-possible-but-not-probable",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 21 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Turn in Mission: Possible But Not Probable.",
            complete = QuestState(2478, "completed"),
            dependsOn = { "accept-2478-mission-possible-but-not-probable", "objective-2478-1-mutated-venture-co-drone", "objective-2478-3-venture-co-patroller", "objective-2478-2-venture-co-lookout", "objective-2478-4-grand-foreman-puzik-gallywix", "objective-2478-6-gallywix-s-lockbox" },
            route = {
                Point(1454, 0.4305, 0.5374, "Mission: Possible But Not Probable",
                    "Travel to Mission: Possible But Not Probable."),
            },
        },
        {
            id = "accept-2479-hinott-s-assistance",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Accept Hinott's Assistance.",
            complete = QuestState(2479, "activeOrCompleted"),
            route = {
                Point(1454, 0.4305, 0.5374, "Hinott's Assistance",
                    "Travel to Hinott's Assistance."),
            },
        },
        {
            id = "woven-accept-97538-pigments-for-paints",
            kind = "accept",
            priority = 330,
            conditions = { level = { min = 26 } },
            text = "Accept Pigments for Paints from Tah Winterhoof in Thunder Bluff.",
            complete = QuestState(97538, "activeOrCompleted"),
            route = {
                Point(1456, 0.5400, 0.4740, "Tah Winterhoof",
                    "Travel to Tah Winterhoof."),
            },
        },
    },
})
