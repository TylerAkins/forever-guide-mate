local _, ns = ...

-- Forever Casual spine: Tanaris & Dustwallow Marsh (46-48)
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
    THOUSAND_NEEDLES = 1441,
    DUSTWALLOW_MARSH = 1445,
    TANARIS = 1446,
    ORGRIMMAR = 1454,
}

ns:RegisterGuide({
    id = "leveling-era-horde-tanaris-and-dustwallow-marsh",
    title = "Tanaris & Dustwallow Marsh",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 46 } },
        },
    },
    goals = {
        {
            id = "turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Zanzil's Mixture and a Fool's Stout.",
            complete = QuestState(1119, "completed"),
            route = {
                Point(1441, 0.7779, 0.7727, "Zanzil's Mixture and a Fool's Stout",
                    "Travel to Zanzil's Mixture and a Fool's Stout."),
            },
        },
        {
            id = "accept-1120-get-the-gnomes-drunk",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Get the Gnomes Drunk.",
            complete = QuestState(1120, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Get the Gnomes Drunk",
                    "Travel to Get the Gnomes Drunk."),
            },
        },
        {
            id = "turnin-1120-get-the-gnomes-drunk",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Get the Gnomes Drunk.",
            complete = QuestState(1120, "completed"),
            dependsOn = { "accept-1120-get-the-gnomes-drunk" },
            route = {
                Point(1441, 0.7756, 0.7694, "Get the Gnomes Drunk",
                    "Travel to Get the Gnomes Drunk."),
            },
        },
        {
            id = "accept-1122-report-back-to-fizzlebub",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept Report Back to Fizzlebub.",
            complete = QuestState(1122, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Report Back to Fizzlebub",
                    "Travel to Report Back to Fizzlebub."),
            },
        },
        {
            id = "turnin-1187-razzeric-s-tweaking",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Razzeric's Tweaking.",
            complete = QuestState(1187, "completed"),
            route = {
                Point(1441, 0.8033, 0.7610, "Razzeric's Tweaking",
                    "Travel to Razzeric's Tweaking."),
            },
        },
        {
            id = "accept-1188-safety-first",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Safety First.",
            complete = QuestState(1188, "activeOrCompleted"),
            route = {
                Point(1441, 0.8033, 0.7610, "Safety First",
                    "Travel to Safety First."),
            },
        },
        {
            id = "accept-3362-thistleshrub-valley",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Thistleshrub Valley.",
            complete = QuestState(3362, "activeOrCompleted"),
            route = {
                Point(1446, 0.5157, 0.2676, "Thistleshrub Valley",
                    "Travel to Thistleshrub Valley."),
            },
        },
        {
            id = "turnin-1188-safety-first",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Safety First.",
            complete = QuestState(1188, "completed"),
            dependsOn = { "accept-1188-safety-first" },
            route = {
                Point(1446, 0.5096, 0.2724, "Safety First",
                    "Travel to Safety First."),
            },
        },
        {
            id = "accept-992-gadgetzan-water-survey",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { quest = { id = 992, state = "notCompleted" } },
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Gadgetzan Water Survey.",
            complete = QuestState(992, "activeOrCompleted"),
            route = {
                Point(1446, 0.5021, 0.2748, "Gadgetzan Water Survey",
                    "Travel to Gadgetzan Water Survey."),
            },
        },
        {
            id = "objective-992-1-untapped-dowsing-widget",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Use Untapped Dowsing Widget.",
            complete = QuestObjective(992, 1, "Untapped Dowsing Widget"),
            dependsOn = { "accept-992-gadgetzan-water-survey" },
            route = {
                Point(1446, 0.3909, 0.2917, "Untapped Dowsing Widget",
                    "Travel to Untapped Dowsing Widget."),
            },
        },
        {
            id = "turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gadgetzan Water Survey.",
            complete = QuestState(992, "completed"),
            dependsOn = { "accept-992-gadgetzan-water-survey", "objective-992-1-untapped-dowsing-widget" },
            route = {
                Point(1446, 0.5021, 0.2748, "Gadgetzan Water Survey",
                    "Travel to Gadgetzan Water Survey."),
            },
        },
        {
            id = "accept-82-noxious-lair-investigation",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Noxious Lair Investigation.",
            complete = QuestState(82, "activeOrCompleted"),
            route = {
                Point(1446, 0.5021, 0.2748, "Noxious Lair Investigation",
                    "Travel to Noxious Lair Investigation."),
            },
        },
        {
            id = "accept-2781-wanted-caliph-scorpidsting",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept WANTED: Caliph Scorpidsting.",
            complete = QuestState(2781, "activeOrCompleted"),
            route = {
                Point(1446, 0.5184, 0.2702, "WANTED: Caliph Scorpidsting",
                    "Travel to WANTED: Caliph Scorpidsting."),
            },
        },
        {
            id = "accept-2875-wanted-andre-firebeard",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept WANTED: Andre Firebeard.",
            complete = QuestState(2875, "activeOrCompleted"),
            route = {
                Point(1446, 0.5184, 0.2702, "WANTED: Andre Firebeard",
                    "Travel to WANTED: Andre Firebeard."),
            },
        },
        {
            id = "accept-2741-the-super-egg-o-matic",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept The Super Egg-O-Matic.",
            complete = QuestState(2741, "activeOrCompleted"),
            route = {
                Point(1446, 0.5237, 0.2697, "The Super Egg-O-Matic",
                    "Travel to The Super Egg-O-Matic."),
            },
        },
        {
            id = "accept-2750-a-bad-egg",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept A Bad Egg.",
            complete = QuestState(2750, "activeOrCompleted"),
            route = {
                Point(1446, 0.5236, 0.2691, "A Bad Egg",
                    "Travel to A Bad Egg."),
            },
        },
        {
            id = "accept-2749-an-ordinary-egg",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept An Ordinary Egg.",
            complete = QuestState(2749, "activeOrCompleted"),
            route = {
                Point(1446, 0.5236, 0.2691, "An Ordinary Egg",
                    "Travel to An Ordinary Egg."),
            },
        },
        {
            id = "accept-2748-a-fine-egg",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept A Fine Egg.",
            complete = QuestState(2748, "activeOrCompleted"),
            route = {
                Point(1446, 0.5236, 0.2691, "A Fine Egg",
                    "Travel to A Fine Egg."),
            },
        },
        {
            id = "accept-2747-an-extraordinary-egg",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept An Extraordinary Egg.",
            complete = QuestState(2747, "activeOrCompleted"),
            route = {
                Point(1446, 0.5236, 0.2691, "An Extraordinary Egg",
                    "Travel to An Extraordinary Egg."),
            },
        },
        {
            id = "accept-5863-the-dunemaul-compound",
            kind = "accept",
            priority = 200,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept The Dunemaul Compound.",
            complete = QuestState(5863, "activeOrCompleted"),
            route = {
                Point(1446, 0.5282, 0.2740, "The Dunemaul Compound",
                    "Travel to The Dunemaul Compound."),
            },
        },
        {
            id = "accept-1691-more-wastewander-justice",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept More Wastewander Justice.",
            complete = QuestState(1691, "activeOrCompleted"),
            route = {
                Point(1446, 0.5246, 0.2851, "More Wastewander Justice",
                    "Travel to More Wastewander Justice."),
            },
        },
        {
            id = "accept-2605-the-thirsty-goblin",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept The Thirsty Goblin.",
            complete = QuestState(2605, "activeOrCompleted"),
            route = {
                Point(1446, 0.5181, 0.2866, "The Thirsty Goblin",
                    "Travel to The Thirsty Goblin."),
            },
        },
        {
            id = "accept-8365-pirate-hats-ahoy",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Pirate Hats Ahoy!.",
            complete = QuestState(8365, "activeOrCompleted"),
            route = {
                Point(1446, 0.6656, 0.2227, "Pirate Hats Ahoy!",
                    "Travel to Pirate Hats Ahoy!."),
            },
        },
        {
            id = "turnin-3520-screecher-spirits",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Screecher Spirits.",
            complete = QuestState(3520, "completed"),
            route = {
                Point(1446, 0.6699, 0.2236, "Screecher Spirits",
                    "Travel to Screecher Spirits."),
            },
        },
        {
            id = "accept-8366-southsea-shakedown",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Southsea Shakedown.",
            complete = QuestState(8366, "activeOrCompleted"),
            route = {
                Point(1446, 0.6706, 0.2389, "Southsea Shakedown",
                    "Travel to Southsea Shakedown."),
            },
        },
        {
            id = "accept-2873-stoley-s-shipment",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Stoley's Shipment.",
            complete = QuestState(2873, "activeOrCompleted"),
            route = {
                Point(1446, 0.6711, 0.2398, "Stoley's Shipment",
                    "Travel to Stoley's Shipment."),
            },
        },
        {
            id = "objective-2781-1-caliph-scorpidsting",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Caliph Scorpidsting.",
            complete = QuestObjective(2781, 1, "Caliph Scorpidsting"),
            dependsOn = { "accept-2781-wanted-caliph-scorpidsting" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-2875-1-andre-firebeard",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Andre Firebeard.",
            complete = QuestObjective(2875, 1, "Andre Firebeard"),
            dependsOn = { "accept-2875-wanted-andre-firebeard" },
            route = {
                Point(1446, 0.7337, 0.4714, "Andre Firebeard",
                    "Travel to Andre Firebeard."),
            },
        },
        {
            id = "objective-2876-1-southsea-pirate",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Southsea Pirate.",
            complete = QuestObjective(2876, 1, "Southsea Pirate"),
            route = {
                Point(1446, 0.7380, 0.4660, "Southsea Pirate",
                    "Travel to Southsea Pirate."),
            },
        },
        {
            id = "accept-2876-ship-schedules",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Ship Schedules.",
            complete = QuestState(2876, "activeOrCompleted"),
            route = {
                Point(1446, 0.7380, 0.4660, "Ship Schedules",
                    "Travel to Ship Schedules."),
            },
        },
        {
            id = "accept-351-find-oox-17-tn",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Find OOX-17/TN!.",
            complete = QuestState(351, "activeOrCompleted"),
            route = {
                Point(1446, 0.7380, 0.4660, "Find OOX-17/TN!",
                    "Travel to Find OOX-17/TN!."),
            },
        },
        {
            id = "turnin-2875-wanted-andre-firebeard",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in WANTED: Andre Firebeard.",
            complete = QuestState(2875, "completed"),
            dependsOn = { "accept-2875-wanted-andre-firebeard", "objective-2875-1-andre-firebeard" },
            route = {
                Point(1446, 0.6963, 0.4237, "WANTED: Andre Firebeard",
                    "Travel to WANTED: Andre Firebeard."),
            },
        },
        {
            id = "turnin-8366-southsea-shakedown",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Southsea Shakedown.",
            complete = QuestState(8366, "completed"),
            dependsOn = { "accept-8366-southsea-shakedown" },
            route = {
                Point(1446, 0.6963, 0.4237, "Southsea Shakedown",
                    "Travel to Southsea Shakedown."),
            },
        },
        {
            id = "turnin-2876-ship-schedules",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Ship Schedules.",
            complete = QuestState(2876, "completed"),
            dependsOn = { "accept-2876-ship-schedules", "objective-2876-1-southsea-pirate" },
            route = {
                Point(1446, 0.6963, 0.4237, "Ship Schedules",
                    "Travel to Ship Schedules."),
            },
        },
        {
            id = "turnin-2873-stoley-s-shipment",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Stoley's Shipment.",
            complete = QuestState(2873, "completed"),
            dependsOn = { "accept-2873-stoley-s-shipment" },
            route = {
                Point(1446, 0.6711, 0.2397, "Stoley's Shipment",
                    "Travel to Stoley's Shipment."),
            },
        },
        {
            id = "accept-2874-deliver-to-mackinley",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Accept Deliver to MacKinley.",
            complete = QuestState(2874, "activeOrCompleted"),
            route = {
                Point(1446, 0.6711, 0.2397, "Deliver to MacKinley",
                    "Travel to Deliver to MacKinley."),
            },
        },
        {
            id = "turnin-8365-pirate-hats-ahoy",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Pirate Hats Ahoy!.",
            complete = QuestState(8365, "completed"),
            dependsOn = { "accept-8365-pirate-hats-ahoy" },
            route = {
                Point(1446, 0.6656, 0.2227, "Pirate Hats Ahoy!",
                    "Travel to Pirate Hats Ahoy!."),
            },
        },
        {
            id = "turnin-2781-wanted-caliph-scorpidsting",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in WANTED: Caliph Scorpidsting.",
            complete = QuestState(2781, "completed"),
            dependsOn = { "accept-2781-wanted-caliph-scorpidsting", "objective-2781-1-caliph-scorpidsting" },
            route = {
                Point(1446, 0.5246, 0.2851, "WANTED: Caliph Scorpidsting",
                    "Travel to WANTED: Caliph Scorpidsting."),
            },
        },
        {
            id = "turnin-1691-more-wastewander-justice",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in More Wastewander Justice.",
            complete = QuestState(1691, "completed"),
            dependsOn = { "accept-1691-more-wastewander-justice" },
            route = {
                Point(1446, 0.5246, 0.2851, "More Wastewander Justice",
                    "Travel to More Wastewander Justice."),
            },
        },
        {
            id = "turnin-3380-the-sunken-temple",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Sunken Temple.",
            complete = QuestState(3380, "completed"),
            route = {
                Point(1446, 0.5271, 0.4593, "The Sunken Temple",
                    "Travel to The Sunken Temple."),
            },
        },
        {
            id = "accept-3444-the-stone-circle",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept The Stone Circle.",
            complete = QuestState(3444, "activeOrCompleted"),
            route = {
                Point(1446, 0.5271, 0.4593, "The Stone Circle",
                    "Travel to The Stone Circle."),
            },
        },
        {
            id = "accept-3161-gahz-ridian",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Gahz'ridian.",
            complete = QuestState(3161, "activeOrCompleted"),
            route = {
                Point(1446, 0.5271, 0.4593, "Gahz'ridian",
                    "Travel to Gahz'ridian."),
            },
        },
        {
            id = "objective-82-1-centipaar-wasp",
            kind = "objective",
            priority = 430,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Kill Centipaar Wasp.",
            complete = QuestObjective(82, 1, "Centipaar Wasp"),
            dependsOn = { "accept-82-noxious-lair-investigation" },
            route = {
                Point(1446, 0.3600, 0.4000, "Centipaar Wasp",
                    "Travel to Centipaar Wasp."),
            },
        },
        {
            id = "objective-5863-3-gor-marok-the-ravager",
            kind = "objective",
            priority = 440,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Gor'marok the Ravager.",
            complete = QuestObjective(5863, 3, "Gor'marok the Ravager"),
            dependsOn = { "accept-5863-the-dunemaul-compound" },
            route = {
                Point(1446, 0.4150, 0.5781, "Gor'marok the Ravager",
                    "Travel to Gor'marok the Ravager."),
            },
        },
        {
            id = "objective-2605-1-thistleshrub-dew-collector",
            kind = "objective",
            priority = 450,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Thistleshrub Dew Collector.",
            complete = QuestObjective(2605, 1, "Thistleshrub Dew Collector"),
            dependsOn = { "accept-2605-the-thirsty-goblin" },
            route = {
                Point(1446, 0.2980, 0.6680, "Thistleshrub Dew Collector",
                    "Travel to Thistleshrub Dew Collector."),
            },
        },
        {
            id = "turnin-3161-gahz-ridian",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Gahz'ridian.",
            complete = QuestState(3161, "completed"),
            dependsOn = { "accept-3161-gahz-ridian" },
            route = {
                Point(1446, 0.5271, 0.4593, "Gahz'ridian",
                    "Travel to Gahz'ridian."),
            },
        },
        {
            id = "turnin-2605-the-thirsty-goblin",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Thirsty Goblin.",
            complete = QuestState(2605, "completed"),
            dependsOn = { "accept-2605-the-thirsty-goblin", "objective-2605-1-thistleshrub-dew-collector" },
            route = {
                Point(1446, 0.5181, 0.2866, "The Thirsty Goblin",
                    "Travel to The Thirsty Goblin."),
            },
        },
        {
            id = "accept-2606-in-good-taste",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept In Good Taste.",
            complete = QuestState(2606, "activeOrCompleted"),
            route = {
                Point(1446, 0.5181, 0.2866, "In Good Taste",
                    "Travel to In Good Taste."),
            },
        },
        {
            id = "turnin-5863-the-dunemaul-compound",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Dunemaul Compound.",
            complete = QuestState(5863, "completed"),
            dependsOn = { "accept-5863-the-dunemaul-compound", "objective-5863-3-gor-marok-the-ravager" },
            route = {
                Point(1446, 0.5282, 0.2740, "The Dunemaul Compound",
                    "Travel to The Dunemaul Compound."),
            },
        },
        {
            id = "turnin-3362-thistleshrub-valley",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Thistleshrub Valley.",
            complete = QuestState(3362, "completed"),
            dependsOn = { "accept-3362-thistleshrub-valley" },
            route = {
                Point(1446, 0.5157, 0.2676, "Thistleshrub Valley",
                    "Travel to Thistleshrub Valley."),
            },
        },
        {
            id = "turnin-2606-in-good-taste",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in In Good Taste.",
            complete = QuestState(2606, "completed"),
            dependsOn = { "accept-2606-in-good-taste" },
            route = {
                Point(1446, 0.5106, 0.2687, "In Good Taste",
                    "Travel to In Good Taste."),
            },
        },
        {
            id = "accept-2641-sprinkle-s-secret-ingredient",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Sprinkle's Secret Ingredient.",
            complete = QuestState(2641, "activeOrCompleted"),
            route = {
                Point(1446, 0.5106, 0.2687, "Sprinkle's Secret Ingredient",
                    "Travel to Sprinkle's Secret Ingredient."),
            },
        },
        {
            id = "turnin-82-noxious-lair-investigation",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Noxious Lair Investigation.",
            complete = QuestState(82, "completed"),
            dependsOn = { "accept-82-noxious-lair-investigation", "objective-82-1-centipaar-wasp" },
            route = {
                Point(1446, 0.5089, 0.2696, "Noxious Lair Investigation",
                    "Travel to Noxious Lair Investigation."),
            },
        },
        {
            id = "accept-10-the-scrimshank-redemption",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept The Scrimshank Redemption.",
            complete = QuestState(10, "activeOrCompleted"),
            route = {
                Point(1446, 0.5021, 0.2748, "The Scrimshank Redemption",
                    "Travel to The Scrimshank Redemption."),
            },
        },
        {
            id = "turnin-351-find-oox-17-tn",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Find OOX-17/TN!.",
            complete = QuestState(351, "completed"),
            dependsOn = { "accept-351-find-oox-17-tn" },
            route = {
                Point(1446, 0.6023, 0.6472, "Find OOX-17/TN!",
                    "Travel to Find OOX-17/TN!."),
            },
        },
        {
            id = "accept-864-return-to-apothecary-zinge",
            kind = "accept",
            priority = 560,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Return to Apothecary Zinge.",
            complete = QuestState(864, "activeOrCompleted"),
            route = {
                Point(1446, 0.5246, 0.2851, "Return to Apothecary Zinge",
                    "Travel to Apothecary Zinge."),
            },
        },
        {
            id = "turnin-10-the-scrimshank-redemption",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Scrimshank Redemption.",
            complete = QuestState(10, "completed"),
            dependsOn = { "accept-10-the-scrimshank-redemption" },
            route = {
                Point(1446, 0.5021, 0.2748, "The Scrimshank Redemption",
                    "Travel to The Scrimshank Redemption."),
            },
        },
        {
            id = "accept-110-insect-part-analysis",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Insect Part Analysis.",
            complete = QuestState(110, "activeOrCompleted"),
            route = {
                Point(1446, 0.5021, 0.2748, "Insect Part Analysis",
                    "Travel to Insect Part Analysis."),
            },
        },
        {
            id = "turnin-110-insect-part-analysis",
            kind = "turnin",
            priority = 590,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Insect Part Analysis.",
            complete = QuestState(110, "completed"),
            dependsOn = { "accept-110-insect-part-analysis" },
            route = {
                Point(1446, 0.5089, 0.2696, "Insect Part Analysis",
                    "Travel to Insect Part Analysis."),
            },
        },
        {
            id = "accept-113-insect-part-analysis",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Insect Part Analysis.",
            complete = QuestState(113, "activeOrCompleted"),
            route = {
                Point(1446, 0.5089, 0.2696, "Insect Part Analysis",
                    "Travel to Insect Part Analysis."),
            },
        },
        {
            id = "turnin-113-insect-part-analysis",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Insect Part Analysis.",
            complete = QuestState(113, "completed"),
            dependsOn = { "accept-113-insect-part-analysis" },
            route = {
                Point(1446, 0.5021, 0.2748, "Insect Part Analysis",
                    "Travel to Insect Part Analysis."),
            },
        },
        {
            id = "accept-32-rise-of-the-silithid",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Rise of the Silithid.",
            complete = QuestState(32, "activeOrCompleted"),
            route = {
                Point(1446, 0.5021, 0.2748, "Rise of the Silithid",
                    "Travel to Rise of the Silithid."),
            },
        },
        {
            id = "accept-1172-the-brood-of-onyxia",
            kind = "accept",
            priority = 630,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept The Brood of Onyxia.",
            complete = QuestState(1172, "activeOrCompleted"),
            route = {
                Point(1445, 0.3715, 0.3308, "The Brood of Onyxia",
                    "Travel to The Brood of Onyxia."),
            },
        },
        {
            id = "accept-2846-tiara-of-the-deep",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Tiara of the Deep.",
            complete = QuestState(2846, "activeOrCompleted"),
            route = {
                Point(1445, 0.4606, 0.5709, "Tiara of the Deep",
                    "Travel to Tiara of the Deep."),
            },
        },
        {
            id = "turnin-1172-the-brood-of-onyxia",
            kind = "turnin",
            priority = 650,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Brood of Onyxia.",
            complete = QuestState(1172, "completed"),
            dependsOn = { "accept-1172-the-brood-of-onyxia" },
            route = {
                Point(1445, 0.3715, 0.3308, "The Brood of Onyxia",
                    "Travel to The Brood of Onyxia."),
            },
        },
        {
            id = "accept-3527-the-prophecy-of-mosh-aru",
            kind = "accept",
            priority = 660,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept The Prophecy of Mosh'aru.",
            complete = QuestState(3527, "activeOrCompleted"),
            route = {
                Point(1446, 0.6699, 0.2236, "The Prophecy of Mosh'aru",
                    "Travel to The Prophecy of Mosh'aru."),
            },
        },
        {
            id = "accept-2768-divino-matic-rod",
            kind = "accept",
            priority = 670,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Divino-matic Rod.",
            complete = QuestState(2768, "activeOrCompleted"),
            route = {
                Point(1446, 0.5246, 0.2851, "Divino-matic Rod",
                    "Travel to Divino-matic Rod."),
            },
        },
        {
            id = "accept-2865-scarab-shells",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Scarab Shells.",
            complete = QuestState(2865, "activeOrCompleted"),
            route = {
                Point(1446, 0.5157, 0.2676, "Scarab Shells",
                    "Travel to Scarab Shells."),
            },
        },
        {
            id = "accept-3042-troll-temper",
            kind = "accept",
            priority = 690,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Troll Temper.",
            complete = QuestState(3042, "activeOrCompleted"),
            route = {
                Point(1446, 0.5141, 0.2875, "Troll Temper",
                    "Travel to Troll Temper."),
            },
        },
        {
            id = "objective-3527-1-theka-the-martyr",
            kind = "objective",
            priority = 700,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Kill Theka the Martyr.",
            complete = QuestObjective(3527, 1, "Theka the Martyr"),
            dependsOn = { "accept-3527-the-prophecy-of-mosh-aru" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-2768-1-sergeant-bly",
            kind = "objective",
            priority = 710,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Kill Sergeant Bly.",
            complete = QuestObjective(2768, 1, "Sergeant Bly"),
            dependsOn = { "accept-2768-divino-matic-rod" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-3527-2-hydromancer-velratha",
            kind = "objective",
            priority = 720,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Kill Hydromancer Velratha.",
            complete = QuestObjective(3527, 2, "Hydromancer Velratha"),
            dependsOn = { "accept-3527-the-prophecy-of-mosh-aru" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-3527-the-prophecy-of-mosh-aru",
            kind = "turnin",
            priority = 730,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Prophecy of Mosh'aru.",
            complete = QuestState(3527, "completed"),
            dependsOn = { "accept-3527-the-prophecy-of-mosh-aru", "objective-3527-1-theka-the-martyr", "objective-3527-2-hydromancer-velratha" },
            route = {
                Point(1446, 0.6699, 0.2236, "The Prophecy of Mosh'aru",
                    "Travel to The Prophecy of Mosh'aru."),
            },
        },
        {
            id = "turnin-2768-divino-matic-rod",
            kind = "turnin",
            priority = 740,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Divino-matic Rod.",
            complete = QuestState(2768, "completed"),
            dependsOn = { "accept-2768-divino-matic-rod", "objective-2768-1-sergeant-bly" },
            route = {
                Point(1446, 0.5246, 0.2851, "Divino-matic Rod",
                    "Travel to Divino-matic Rod."),
            },
        },
        {
            id = "turnin-2865-scarab-shells",
            kind = "turnin",
            priority = 750,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Scarab Shells.",
            complete = QuestState(2865, "completed"),
            dependsOn = { "accept-2865-scarab-shells" },
            route = {
                Point(1446, 0.5157, 0.2676, "Scarab Shells",
                    "Travel to Scarab Shells."),
            },
        },
        {
            id = "turnin-3042-troll-temper",
            kind = "turnin",
            priority = 760,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Troll Temper.",
            complete = QuestState(3042, "completed"),
            dependsOn = { "accept-3042-troll-temper" },
            route = {
                Point(1446, 0.5141, 0.2875, "Troll Temper",
                    "Travel to Troll Temper."),
            },
        },
        {
            id = "turnin-2846-tiara-of-the-deep",
            kind = "turnin",
            priority = 770,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Tiara of the Deep.",
            complete = QuestState(2846, "completed"),
            dependsOn = { "accept-2846-tiara-of-the-deep" },
            route = {
                Point(1445, 0.4606, 0.5709, "Tiara of the Deep",
                    "Travel to Tiara of the Deep."),
            },
        },
        {
            id = "turnin-32-rise-of-the-silithid",
            kind = "turnin",
            priority = 780,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Rise of the Silithid.",
            complete = QuestState(32, "completed"),
            dependsOn = { "accept-32-rise-of-the-silithid" },
            route = {
                Point(1454, 0.5642, 0.5692, "Rise of the Silithid",
                    "Travel to Rise of the Silithid."),
            },
        },
        {
            id = "accept-649-ripple-recovery",
            kind = "accept",
            priority = 790,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Accept Ripple Recovery.",
            complete = QuestState(649, "activeOrCompleted"),
            route = {
                Point(1454, 0.5948, 0.3659, "Ripple Recovery",
                    "Travel to Ripple Recovery."),
            },
        },
        {
            id = "turnin-649-ripple-recovery",
            kind = "turnin",
            priority = 800,
            conditions = { all = {
                { level = { min = 46 } },
                { faction = "Horde" },
            } },
            text = "Turn in Ripple Recovery.",
            complete = QuestState(649, "completed"),
            dependsOn = { "accept-649-ripple-recovery" },
            route = {
                Point(1454, 0.5964, 0.3692, "Ripple Recovery",
                    "Travel to Ripple Recovery."),
            },
        },
        {
            id = "accept-650-ripple-recovery",
            kind = "accept",
            priority = 810,
            conditions = { all = {
                { level = { min = 48 } },
                { faction = "Horde" },
            } },
            text = "Accept Ripple Recovery.",
            complete = QuestState(650, "activeOrCompleted"),
            route = {
                Point(1454, 0.5964, 0.3692, "Ripple Recovery",
                    "Travel to Ripple Recovery."),
            },
        },
        {
            id = "accept-4300-bone-bladed-weapons",
            kind = "accept",
            priority = 820,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Bone-Bladed Weapons.",
            complete = QuestState(4300, "activeOrCompleted"),
            route = {
                Point(1454, 0.5551, 0.3409, "Bone-Bladed Weapons",
                    "Travel to Bone-Bladed Weapons."),
            },
        },
    },
})
