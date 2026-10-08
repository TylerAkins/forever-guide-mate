local _, ns = ...

-- Forever Casual spine: Tanaris (49-49)
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
    TANARIS = 1446,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-tanaris-part-2",
    title = "Tanaris",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 49 } },
        },
    },
    goals = {
        {
            id = "accept-1691-more-wastewander-justice",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept More Wastewander Justice.",
            complete = QuestState(1691, "activeOrCompleted"),
            route = {
                Point(1446, 0.5246, 0.2851, "More Wastewander Justice",
                    "Travel to More Wastewander Justice."),
            },
        },
        {
            id = "accept-2781-wanted-caliph-scorpidsting",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 30,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept WANTED: Andre Firebeard.",
            complete = QuestState(2875, "activeOrCompleted"),
            route = {
                Point(1446, 0.5184, 0.2702, "WANTED: Andre Firebeard",
                    "Travel to WANTED: Andre Firebeard."),
            },
        },
        {
            id = "accept-10-the-scrimshank-redemption",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Scrimshank Redemption.",
            complete = QuestState(10, "activeOrCompleted"),
            route = {
                Point(1446, 0.5021, 0.2748, "The Scrimshank Redemption",
                    "Travel to The Scrimshank Redemption."),
            },
        },
        {
            id = "turnin-3445-the-sunken-temple",
            kind = "turnin",
            priority = 50,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Sunken Temple.",
            complete = QuestState(3445, "completed"),
            route = {
                Point(1446, 0.5271, 0.4593, "The Sunken Temple",
                    "Travel to The Sunken Temple."),
            },
        },
        {
            id = "accept-3161-gahz-ridian",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Gahz'ridian.",
            complete = QuestState(3161, "activeOrCompleted"),
            route = {
                Point(1446, 0.5271, 0.4593, "Gahz'ridian",
                    "Travel to Gahz'ridian."),
            },
        },
        {
            id = "objective-2781-1-caliph-scorpidsting",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 80,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 90,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 100,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 110,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 120,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 130,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Southsea Shakedown.",
            complete = QuestState(8366, "completed"),
            route = {
                Point(1446, 0.6963, 0.4237, "Southsea Shakedown",
                    "Travel to Southsea Shakedown."),
            },
        },
        {
            id = "turnin-2876-ship-schedules",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 150,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Stoley's Shipment.",
            complete = QuestState(2873, "completed"),
            route = {
                Point(1446, 0.6711, 0.2397, "Stoley's Shipment",
                    "Travel to Stoley's Shipment."),
            },
        },
        {
            id = "accept-2874-deliver-to-mackinley",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
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
            priority = 170,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Pirate Hats Ahoy!.",
            complete = QuestState(8365, "completed"),
            route = {
                Point(1446, 0.6656, 0.2227, "Pirate Hats Ahoy!",
                    "Travel to Pirate Hats Ahoy!."),
            },
        },
        {
            id = "turnin-3520-screecher-spirits",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Screecher Spirits.",
            complete = QuestState(3520, "completed"),
            route = {
                Point(1446, 0.6699, 0.2236, "Screecher Spirits",
                    "Travel to Screecher Spirits."),
            },
        },
        {
            id = "turnin-351-find-oox-17-tn",
            kind = "turnin",
            priority = 190,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            id = "turnin-2781-wanted-caliph-scorpidsting",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 210,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            id = "objective-4284-1-red-power-crystal",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Collect 7 Red Power Crystal.",
            complete = QuestObjective(4284, 1, "Red Power Crystal"),
            route = {
                Point(1446, 0.5230, 0.2891, "Red Power Crystal",
                    "Travel to Red Power Crystal."),
            },
        },
        {
            id = "accept-2605-the-thirsty-goblin",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Thirsty Goblin.",
            complete = QuestState(2605, "activeOrCompleted"),
            route = {
                Point(1446, 0.5181, 0.2866, "The Thirsty Goblin",
                    "Travel to The Thirsty Goblin."),
            },
        },
        {
            id = "turnin-10-the-scrimshank-redemption",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 250,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 260,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 270,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Insect Part Analysis.",
            complete = QuestState(113, "activeOrCompleted"),
            route = {
                Point(1446, 0.5089, 0.2696, "Insect Part Analysis",
                    "Travel to Insect Part Analysis."),
            },
        },
        {
            id = "accept-3362-thistleshrub-valley",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Thistleshrub Valley.",
            complete = QuestState(3362, "activeOrCompleted"),
            route = {
                Point(1446, 0.5157, 0.2676, "Thistleshrub Valley",
                    "Travel to Thistleshrub Valley."),
            },
        },
        {
            id = "accept-5863-the-dunemaul-compound",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Dunemaul Compound.",
            complete = QuestState(5863, "activeOrCompleted"),
            route = {
                Point(1446, 0.5282, 0.2740, "The Dunemaul Compound",
                    "Travel to The Dunemaul Compound."),
            },
        },
        {
            id = "turnin-113-insect-part-analysis",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            id = "objective-5863-3-gor-marok-the-ravager",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 320,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Kill Thistleshrub Dew Collector.",
            complete = QuestObjective(2605, 1, "Thistleshrub Dew Collector"),
            dependsOn = { "accept-2605-the-thirsty-goblin" },
            route = {
                Point(1446, 0.2980, 0.6680, "Thistleshrub Dew Collector",
                    "Travel to Thistleshrub Dew Collector."),
            },
        },
    },
})
