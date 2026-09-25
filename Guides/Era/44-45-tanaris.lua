local _, ns = ...

-- Horde Era leveling route for Tanaris, levels 44-45.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    TANARIS = 1446,
    STRANGLETHORN = 1434,
    THOUSAND_NEEDLES = 1441,
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
    id = "leveling-era-44-45-tanaris",
    title = "44-45 Tanaris (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 44 } },
        },
    },
    goals = {
        {
            id = "accept-2872-stoley-s-debt",
            kind = "accept",
            priority = 20,
            text = "Accept Stoley's Debt from \"Sea Wolf\" MacKinley in Booty Bay.",
            complete = QuestState(2872, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2778, 0.7705, "'Sea Wolf' MacKinley",
                    "Travel to 'Sea Wolf' MacKinley."),
            },
        },
        {
            id = "accept-2864-tran-rek",
            kind = "accept",
            priority = 30,
            text = "Accept Tran'rek from Krazek in The Salty Sailor Tavern.",
            complete = QuestState(2864, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2694, 0.7732, "Krazek",
                    "Travel to Krazek."),
            },
        },
        {
            id = "accept-2781-wanted-caliph-scorpidsting",
            kind = "accept",
            priority = 50,
            text = "Accept WANTED: Caliph Scorpidsting in Gadgetzan.",
            complete = QuestState(2781, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5184, 0.2699, "Gadgetzan",
                    "Travel to Gadgetzan."),
            },
        },
        {
            id = "accept-2875-wanted-andre-firebeard",
            kind = "accept",
            priority = 60,
            text = "Accept WANTED: Andre Firebeard in Gadgetzan.",
            complete = QuestState(2875, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5184, 0.2699, "Gadgetzan",
                    "Travel to Gadgetzan."),
            },
        },
        {
            id = "accept-1707-water-pouch-bounty",
            kind = "accept",
            priority = 70,
            text = "Accept Water Pouch Bounty from Chief Engineer Bilgewhizzle in Gadgetzan.",
            complete = QuestState(1707, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5244, 0.2848, "Chief Engineer Bilgewhizzle",
                    "Travel to Chief Engineer Bilgewhizzle."),
            },
        },
        {
            id = "accept-1690-wastewander-justice",
            kind = "accept",
            priority = 80,
            text = "Accept Wastewander Justice from Chief Engineer Bilgewhizzle in Gadgetzan.",
            complete = QuestState(1690, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5244, 0.2850, "Chief Engineer Bilgewhizzle",
                    "Travel to Chief Engineer Bilgewhizzle."),
            },
        },
        {
            id = "accept-992-gadgetzan-water-survey",
            kind = "accept",
            priority = 90,
            text = "Accept Gadgetzan Water Survey from Senior Surveyor Fizzledowser in Gadgetzan.",
            complete = QuestState(992, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5022, 0.2749, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "note-1190-gadgetzan",
            kind = "note",
            priority = 100,
            text = "Set your hearth in Gadgetzan with Curgle Cranklehop.",
            route = {
                Point(MAP.TANARIS, 0.5249, 0.2791, "Curgle Cranklehop",
                    "Travel to Curgle Cranklehop."),
            },
        },
        {
            id = "accept-1118-back-to-booty-bay",
            kind = "accept",
            priority = 120,
            text = "Accept Back to Booty Bay from Kravel Koalbeard in Mirage Raceway.",
            complete = QuestState(1118, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7780, 0.7723, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "turnin-1137-news-for-fizzle",
            kind = "turnin",
            priority = 130,
            text = "Turn in News for Fizzle to Fizzle Brassbolts in Mirage Raceway.",
            complete = QuestState(1137, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7805, 0.7712, "Fizzle Brassbolts",
                    "Travel to Fizzle Brassbolts."),
            },
        },
        {
            id = "turnin-1187-razzeric-s-tweaking",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 1186, state = "completed" } },
                },
            },
            text = "Turn in Razzeric's Tweaking to Razzeric in Mirage Raceway.",
            complete = QuestState(1187, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8031, 0.7603, "Razzeric",
                    "Travel to Razzeric."),
            },
        },
        {
            id = "accept-1188-safety-first",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { quest = { id = 1186, state = "completed" } },
                },
            },
            text = "Accept Safety First from Razzeric in Mirage Raceway.",
            complete = QuestState(1188, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8031, 0.7603, "Razzeric",
                    "Travel to Razzeric."),
            },
        },
        {
            id = "accept-1190-keeping-pace",
            kind = "accept",
            priority = 160,
            text = "Accept Keeping Pace from Pozzik in Mirage Raceway.",
            complete = QuestState(1190, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8018, 0.7588, "Pozzik",
                    "Travel to Pozzik."),
            },
        },
        {
            id = "turnin-1191-zamek-s-distraction",
            kind = "turnin",
            priority = 170,
            text = "Turn in Zamek's Distraction to Zamek in Mirage Raceway. This is an elite. Bring a group.",
            complete = QuestState(1191, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7980, 0.7702, "Zamek",
                    "Travel to Zamek."),
            },
        },
        {
            id = "turnin-1190-keeping-pace",
            kind = "turnin",
            priority = 180,
            text = "Turn in Keeping Pace to Zamek in Mirage Raceway.",
            dependsOn = { "accept-1190-keeping-pace" },
            complete = QuestState(1190, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7723, 0.7744, "Zamek",
                    "Travel to Zamek."),
            },
        },
        {
            id = "accept-1194-rizzle-s-schematics",
            kind = "accept",
            priority = 190,
            text = "Accept Rizzle's Schematics in Mirage Raceway.",
            complete = QuestState(1194, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7723, 0.7744, "Mirage Raceway",
                    "Travel to Mirage Raceway."),
            },
        },
        {
            id = "turnin-1194-rizzle-s-schematics",
            kind = "turnin",
            priority = 200,
            text = "Turn in Rizzle's Schematics to Pozzik in Mirage Raceway.",
            dependsOn = { "accept-1194-rizzle-s-schematics" },
            complete = QuestState(1194, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8016, 0.7587, "Pozzik",
                    "Travel to Pozzik."),
            },
        },
        {
            id = "turnin-1188-safety-first",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { quest = { id = 1186, state = "completed" } },
                },
            },
            text = "Turn in Safety First to Shreev in Gadgetzan.",
            dependsOn = { "accept-1188-safety-first" },
            complete = QuestState(1188, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5098, 0.2723, "Shreev",
                    "Travel to Shreev."),
            },
        },
        {
            id = "objective-1690-wastewander-justice",
            kind = "objective",
            priority = 230,
            text = "Start completing 'Wastewander Justice' by clearing the area and tick the step to move on Kill 10 Wastewander Thief, Wastewander Bandit and collect 5 Wastewander Water Pouch in Noonshade Ruins.",
            dependsOn = { "accept-1690-wastewander-justice" },
            complete = QuestState(1690, "complete"),
            route = {
                Point(MAP.TANARIS, 0.5982, 0.2465, "Wastewander Thief",
                    "Travel to Wastewander Thief."),
            },
        },
        {
            id = "accept-8365-pirate-hats-ahoy",
            kind = "accept",
            priority = 250,
            text = "Accept Pirate Hats Ahoy! from Haughty Modiste in Steamwheedle Port.",
            complete = QuestState(8365, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.6651, 0.2243, "Haughty Modiste",
                    "Travel to Haughty Modiste."),
            },
        },
        {
            id = "accept-3520-screecher-spirits",
            kind = "accept",
            priority = 260,
            text = "Accept Screecher Spirits from Yeh'kinya in Steamwheedle Port.",
            complete = QuestState(3520, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.6698, 0.2236, "Yeh'kinya",
                    "Travel to Yeh'kinya."),
            },
        },
        {
            id = "accept-8366-southsea-shakedown",
            kind = "accept",
            priority = 270,
            text = "Accept Southsea Shakedown from Security Chief Bilgewhizzle in Steamwheedle Port.",
            complete = QuestState(8366, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.6705, 0.2391, "Security Chief Bilgewhizzle",
                    "Travel to Security Chief Bilgewhizzle."),
            },
        },
        {
            id = "turnin-2872-stoley-s-debt",
            kind = "turnin",
            priority = 280,
            text = "Turn in Stoley's Debt to Stoley in Steamwheedle Port.",
            dependsOn = { "accept-2872-stoley-s-debt" },
            complete = QuestState(2872, "completed"),
            route = {
                Point(MAP.TANARIS, 0.6709, 0.2395, "Stoley",
                    "Travel to Stoley."),
            },
        },
        {
            id = "accept-2873-stoley-s-shipment",
            kind = "accept",
            priority = 290,
            text = "Accept Stoley's Shipment from Stoley in Steamwheedle Port.",
            complete = QuestState(2873, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.6709, 0.2395, "Stoley",
                    "Travel to Stoley."),
            },
        },
        {
            id = "objective-1690-wastewander-justice-2",
            kind = "objective",
            priority = 300,
            text = "Kill 10 Wastewander Bandit and 10 Wastewander Thief in Waterspring Field.",
            dependsOn = { "accept-1690-wastewander-justice" },
            complete = QuestState(1690, "complete"),
            route = {
                Point(MAP.TANARIS, 0.6376, 0.2999, "Wastewander Bandit",
                    "Travel to Wastewander Bandit."),
            },
        },
        {
            id = "objective-1707-water-pouch-bounty",
            kind = "objective",
            priority = 310,
            text = "Kill Wastewander enemies and collect 5 Wastewander Water Pouch in Noonshade Ruins.",
            dependsOn = { "accept-1707-water-pouch-bounty" },
            complete = QuestState(1707, "complete"),
            route = {
                Point(MAP.TANARIS, 0.5982, 0.2465, "Wastewander Bandit",
                    "Travel to Wastewander Bandit."),
            },
        },
        {
            id = "objective-2875-wanted-andre-firebeard",
            kind = "objective",
            priority = 330,
            text = "Kill Andre Firebeard and collect Firebeard's Head in Lost Rigger Cove.",
            dependsOn = { "accept-2875-wanted-andre-firebeard" },
            complete = QuestState(2875, "complete"),
            route = {
                Point(MAP.TANARIS, 0.7352, 0.4693, "Andre Firebeard",
                    "Travel to Andre Firebeard."),
            },
        },
        {
            id = "objective-2873-stoley-s-shipment",
            kind = "objective",
            priority = 340,
            text = "Go upstairs inside the building and collect Stoley's Shipment from the Stolen Cargo in Lost Rigger Cove.",
            dependsOn = { "accept-2873-stoley-s-shipment" },
            complete = QuestState(2873, "complete"),
            route = {
                Point(MAP.TANARIS, 0.7217, 0.4677, "Lost Rigger Cove",
                    "Travel to Lost Rigger Cove."),
            },
        },
        {
            id = "objective-8366-southsea-shakedown",
            kind = "objective",
            priority = 360,
            text = "Kill 10 Southsea Swashbuckler, 10 Southsea Dock Worker and 10 Southsea Freebooter in Lost Rigger Cove.",
            dependsOn = { "accept-8366-southsea-shakedown" },
            complete = QuestState(8366, "complete"),
            route = {
                Point(MAP.TANARIS, 0.7275, 0.4711, "Southsea Swashbuckler",
                    "Travel to Southsea Swashbuckler."),
            },
        },
        {
            id = "objective-8365-pirate-hats-ahoy",
            kind = "objective",
            priority = 370,
            text = "Collect 20 Southsea Pirate Hat from any pirates in Lost Rigger Cove.",
            dependsOn = { "accept-8365-pirate-hats-ahoy" },
            complete = QuestState(8365, "complete"),
            route = {
                Point(MAP.TANARIS, 0.7333, 0.4612, "Southsea Freebooter",
                    "Travel to Southsea Freebooter."),
            },
        },
        {
            id = "objective-2876-water-damaged-ship-schedule",
            kind = "objective",
            priority = 380,
            text = "Kill pirates and check for Pirate's Footlocker and open it until you find Water-Damaged Ship Schedule to start a new quest.",
            complete = QuestState(2876, "complete"),
        },
        {
            id = "turnin-1707-water-pouch-bounty",
            kind = "turnin",
            priority = 400,
            text = "Turn in Water Pouch Bounty to Spigot Operator Luglunket in Gadgetzan.",
            dependsOn = { "objective-1707-water-pouch-bounty" },
            complete = QuestState(1707, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5247, 0.2843, "Spigot Operator Luglunket",
                    "Travel to Spigot Operator Luglunket."),
            },
        },
        {
            id = "turnin-1690-wastewander-justice",
            kind = "turnin",
            priority = 410,
            text = "Turn in Wastewander Justice to Chief Engineer Bilgewhizzle in Gadgetzan.",
            dependsOn = { "objective-1690-wastewander-justice", "objective-1690-wastewander-justice-2" },
            complete = QuestState(1690, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5244, 0.2850, "Chief Engineer Bilgewhizzle",
                    "Travel to Chief Engineer Bilgewhizzle."),
            },
        },
        {
            id = "accept-1691-more-wastewander-justice",
            kind = "accept",
            priority = 420,
            text = "Accept More Wastewander Justice from Chief Engineer Bilgewhizzle in Gadgetzan.",
            complete = QuestState(1691, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5244, 0.2850, "Chief Engineer Bilgewhizzle",
                    "Travel to Chief Engineer Bilgewhizzle."),
            },
        },
        {
            id = "objective-992-gadgetzan-water-survey",
            kind = "objective",
            priority = 440,
            text = "Use Untapped Dowsing Widget inside the pool in Sandsorrow Watch.",
            dependsOn = { "accept-992-gadgetzan-water-survey" },
            complete = QuestState(992, "complete"),
            route = {
                Point(MAP.TANARIS, 0.3940, 0.2926, "Sandsorrow Watch",
                    "Travel to Sandsorrow Watch."),
            },
        },
        {
            id = "turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            priority = 460,
            text = "Turn in Gadgetzan Water Survey to Senior Surveyor Fizzledowser in Gadgetzan.",
            dependsOn = { "objective-992-gadgetzan-water-survey" },
            complete = QuestState(992, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5021, 0.2747, "Senior Surveyor Fizzledowser",
                    "Travel to Senior Surveyor Fizzledowser."),
            },
        },
        {
            id = "turnin-8365-pirate-hats-ahoy",
            kind = "turnin",
            priority = 480,
            text = "Turn in Pirate Hats Ahoy! to Haughty Modiste in Steamwheedle Port.",
            dependsOn = { "objective-8365-pirate-hats-ahoy" },
            complete = QuestState(8365, "completed"),
            route = {
                Point(MAP.TANARIS, 0.6655, 0.2226, "Haughty Modiste",
                    "Travel to Haughty Modiste."),
            },
        },
        {
            id = "turnin-2875-wanted-andre-firebeard",
            kind = "turnin",
            priority = 490,
            text = "Turn in WANTED: Andre Firebeard to Security Chief Bilgewhizzle in Steamwheedle Port.",
            dependsOn = { "objective-2875-wanted-andre-firebeard" },
            complete = QuestState(2875, "completed"),
            route = {
                Point(MAP.TANARIS, 0.6705, 0.2391, "Security Chief Bilgewhizzle",
                    "Travel to Security Chief Bilgewhizzle."),
            },
        },
        {
            id = "turnin-2876-ship-schedules",
            kind = "turnin",
            priority = 500,
            text = "Turn in Ship Schedules to Security Chief Bilgewhizzle in Steamwheedle Port.",
            dependsOn = { "objective-2876-water-damaged-ship-schedule" },
            complete = QuestState(2876, "completed"),
            route = {
                Point(MAP.TANARIS, 0.6705, 0.2391, "Security Chief Bilgewhizzle",
                    "Travel to Security Chief Bilgewhizzle."),
            },
        },
        {
            id = "turnin-8366-southsea-shakedown",
            kind = "turnin",
            priority = 510,
            text = "Turn in Southsea Shakedown to Security Chief Bilgewhizzle in Steamwheedle Port.",
            dependsOn = { "objective-8366-southsea-shakedown" },
            complete = QuestState(8366, "completed"),
            route = {
                Point(MAP.TANARIS, 0.6705, 0.2391, "Security Chief Bilgewhizzle",
                    "Travel to Security Chief Bilgewhizzle."),
            },
        },
        {
            id = "turnin-2873-stoley-s-shipment",
            kind = "turnin",
            priority = 520,
            text = "Turn in Stoley's Shipment to Stoley in Steamwheedle Port.",
            dependsOn = { "objective-2873-stoley-s-shipment" },
            complete = QuestState(2873, "completed"),
            route = {
                Point(MAP.TANARIS, 0.6707, 0.2394, "Stoley",
                    "Travel to Stoley."),
            },
        },
        {
            id = "accept-2874-deliver-to-mackinley",
            kind = "accept",
            priority = 530,
            text = "Accept Deliver to MacKinley from Stoley in Steamwheedle Port.",
            complete = QuestState(2874, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.6707, 0.2394, "Stoley",
                    "Travel to Stoley."),
            },
        },
        {
            id = "objective-2781-wanted-caliph-scorpidsting",
            kind = "objective",
            priority = 540,
            text = "Kill Caliph Scorpidsting and collect Caliph Scorpidsting's Head in Waterspring Field.",
            dependsOn = { "accept-2781-wanted-caliph-scorpidsting" },
            complete = QuestState(2781, "complete"),
            route = {
                Point(MAP.TANARIS, 0.6257, 0.3304, "Continue toward WANTED: Caliph Scorpidsting",
                    "Continue toward WANTED: Caliph Scorpidsting."),
                Point(MAP.TANARIS, 0.5881, 0.3997, "Continue toward WANTED: Caliph Scorpidsting",
                    "Continue toward WANTED: Caliph Scorpidsting."),
                Point(MAP.TANARIS, 0.6117, 0.3876, "Caliph Scorpidsting",
                    "Travel to Caliph Scorpidsting."),
            },
        },
        {
            id = "objective-1691-more-wastewander-justice",
            kind = "objective",
            priority = 550,
            text = "Kill 6 Wastewander Shadow Mage, 10 Wastewander Assassin and 8 Wastewander Rogue in Waterspring Field.",
            dependsOn = { "accept-1691-more-wastewander-justice" },
            complete = QuestState(1691, "complete"),
            route = {
                Point(MAP.TANARIS, 0.6100, 0.3749, "Wastewander Shadow Mage",
                    "Travel to Wastewander Shadow Mage."),
            },
        },
        {
            id = "turnin-1691-more-wastewander-justice",
            kind = "turnin",
            priority = 570,
            text = "Turn in More Wastewander Justice to Chief Engineer Bilgewhizzle in Gadgetzan.",
            dependsOn = { "objective-1691-more-wastewander-justice" },
            complete = QuestState(1691, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5245, 0.2850, "Chief Engineer Bilgewhizzle",
                    "Travel to Chief Engineer Bilgewhizzle."),
            },
        },
    },
})
