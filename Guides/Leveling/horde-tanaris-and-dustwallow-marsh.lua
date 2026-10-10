local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Tanaris & Dustwallow Marsh",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-tanaris-and-dustwallow-marsh",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 46 },
            },
        },
    },
    goals = {
        {
            id = "level-before-turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1119,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Turn in Zanzil's Mixture and a Fool's Stout to Kravel Koalbeard.",
            id = "turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1119, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 621, 1118 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Get the Gnomes Drunk from Kravel Koalbeard.",
            id = "accept-1120-get-the-gnomes-drunk",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1120, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1119 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1121 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            text = "Turn in Get the Gnomes Drunk to Gnome Pit Boss.",
            route = {
                { y = 0.7694, mapID = 1441, label = "Gnome Pit Boss", offMapText = "Travel to Gnome Pit Boss in Thousand Needles.", x = 0.7756 },
            },
            dependsOn = { "accept-1120-get-the-gnomes-drunk" },
            id = "turnin-1120-get-the-gnomes-drunk",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1120, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1119 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1121 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 50,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Report Back to Fizzlebub from Kravel Koalbeard.",
            id = "accept-1122-report-back-to-fizzlebub",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1122, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1120, 1121 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { mapID = 1445, x = 0.5407, y = 0.5649000000000001, label = "Razzeric's Tweaking", offMapText = "Travel to Razzeric's Tweaking." },
            },
            text = "Open the Gizmorium Shipping Crate on the Dustwallow coast and collect the Seaforium Booster.",
            id = "objective-1187-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1187, index = 1, count = 1 },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.761, mapID = 1441, label = "Razzeric", offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033 },
            },
            text = "Turn in Razzeric's Tweaking to Razzeric.",
            id = "turnin-1187-razzeric-s-tweaking",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1187, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1187-quest-work" },
        },
        {
            priority = 80,
            route = {
                { y = 0.761, mapID = 1441, label = "Razzeric", offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033 },
            },
            text = "Accept Safety First from Razzeric.",
            id = "accept-1188-safety-first",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1188, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1187 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-3362-thistleshrub-valley",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3362,
            priority = 90,
        },
        {
            priority = 100,
            route = {
                { y = 0.2676, mapID = 1446, label = "Tran'rek", offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157 },
            },
            text = "Accept Thistleshrub Valley from Tran'rek.",
            id = "accept-3362-thistleshrub-valley",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 3362, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            text = "Turn in Safety First to Shreev.",
            route = {
                { y = 0.2724, mapID = 1446, label = "Shreev", offMapText = "Travel to Shreev in Tanaris.", x = 0.5096 },
            },
            dependsOn = { "accept-1188-safety-first" },
            id = "turnin-1188-safety-first",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1188, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1187 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept Gadgetzan Water Survey from Senior Surveyor Fizzledowser.",
            id = "accept-992-gadgetzan-water-survey",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                quest = { id = 992, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            text = "Use the Untapped Dowsing Widget at the Tanaris insect mound to obtain the Tapped Dowsing Widget. Expect an attack and avoid nearby elite insects.",
            route = {
                { y = 0.2917, mapID = 1446, label = "Untapped Dowsing Widget", offMapText = "Travel to Untapped Dowsing Widget.", x = 0.3909 },
            },
            dependsOn = { "accept-992-gadgetzan-water-survey" },
            id = "objective-992-1-untapped-dowsing-widget",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                questObjective = { id = 992, text = "Untapped Dowsing Widget", index = 1, count = 1 },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            text = "Turn in Gadgetzan Water Survey to Senior Surveyor Fizzledowser.",
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            dependsOn = { "accept-992-gadgetzan-water-survey", "objective-992-1-untapped-dowsing-widget" },
            id = "turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                quest = { id = 992, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept Noxious Lair Investigation from Senior Surveyor Fizzledowser.",
            id = "accept-82-noxious-lair-investigation",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 82, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 992 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            route = {
                { y = 0.2702, mapID = 1446, label = "WANTED: Caliph Scorpidsting", offMapText = "Travel to WANTED: Caliph Scorpidsting.", x = 0.5184 },
            },
            text = "Accept WANTED: Caliph Scorpidsting.",
            id = "accept-2781-wanted-caliph-scorpidsting",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 2781, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 170,
            route = {
                { y = 0.2702, mapID = 1446, label = "WANTED: Andre Firebeard", offMapText = "Travel to WANTED: Andre Firebeard.", x = 0.5184 },
            },
            text = "Accept WANTED: Andre Firebeard.",
            id = "accept-2875-wanted-andre-firebeard",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2875, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            route = {
                { y = 0.274, mapID = 1446, label = "Andi Lynn", offMapText = "Travel to Andi Lynn in Tanaris.", x = 0.5282 },
            },
            text = "Accept The Dunemaul Compound from Andi Lynn.",
            id = "accept-5863-the-dunemaul-compound",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 5863, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            text = "Accept More Wastewander Justice from Chief Engineer Bilgewhizzle.",
            id = "accept-1691-more-wastewander-justice",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1691, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1690 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            text = "Accept The Thirsty Goblin from Marin Noggenfogger.",
            id = "accept-2605-the-thirsty-goblin",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2605, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            route = {
                { y = 0.2227, mapID = 1446, label = "Haughty Modiste", offMapText = "Travel to Haughty Modiste in Tanaris.", x = 0.6656 },
            },
            text = "Accept Pirate Hats Ahoy! from Haughty Modiste.",
            id = "accept-8365-pirate-hats-ahoy",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 8365, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "Kill a Vale Screecher in Feralas, then use Yeh'kinya's Bramble on its corpse. Speak with the spirit that appears. Repeat until you have 3 Screecher Spirits.",
            id = "objective-3520-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3520, state = "complete" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 230,
            route = {
                { y = 0.2236, mapID = 1446, label = "Yeh'kinya", offMapText = "Travel to Yeh'kinya in Tanaris.", x = 0.6699 },
            },
            text = "Turn in Screecher Spirits to Yeh'kinya.",
            id = "turnin-3520-screecher-spirits",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3520, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-3520-quest-work" },
        },
        {
            priority = 240,
            route = {
                { y = 0.2389, mapID = 1446, label = "Security Chief Bilgewhizzle", offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris.", x = 0.6706 },
            },
            text = "Accept Southsea Shakedown from Security Chief Bilgewhizzle.",
            id = "accept-8366-southsea-shakedown",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 8366, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            route = {
                { y = 0.2398, mapID = 1446, label = "Stoley", offMapText = "Travel to Stoley in Tanaris.", x = 0.6711 },
            },
            text = "Accept Stoley's Shipment from Stoley.",
            id = "accept-2873-stoley-s-shipment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2873, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-2781-wanted-caliph-scorpidsting" },
            id = "objective-2781-1-caliph-scorpidsting",
            text = "Collect 1 Caliph Scorpidsting's Head.",
            useClientPin = true,
            complete = {
                questObjective = { id = 2781, text = "Caliph Scorpidsting", index = 1, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            priority = 260,
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
        },
        {
            id = "objective-1691-2-wastewander-assassin",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Kill 6 Wastewander Assassin.",
            complete = {
                questObjective = { id = 1691, index = 2, text = "Wastewander Assassin", count = 6 },
            },
            route = {
                { mapID = 1446, x = 0.608, y = 0.366, label = "Wastewander Assassin", offMapText = "Travel to Wastewander Assassin." },
            },
            sourceStep = 26,
            priority = 270,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1690 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1691-more-wastewander-justice" },
        },
        {
            id = "objective-1691-1-wastewander-rogue",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Kill 8 Wastewander Rogue.",
            complete = {
                questObjective = { id = 1691, index = 1, text = "Wastewander Rogue", count = 8 },
            },
            route = {
                { mapID = 1446, x = 0.608, y = 0.366, label = "Wastewander Rogue", offMapText = "Travel to Wastewander Rogue." },
            },
            sourceStep = 26,
            priority = 280,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1690 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1691-more-wastewander-justice" },
        },
        {
            id = "objective-1691-3-wastewander-shadow-mage",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Kill 10 Wastewander Shadow Mage.",
            complete = {
                questObjective = { id = 1691, index = 3, text = "Wastewander Shadow Mage", count = 10 },
            },
            route = {
                { mapID = 1446, x = 0.608, y = 0.366, label = "Wastewander Shadow Mage", offMapText = "Travel to Wastewander Shadow Mage." },
            },
            sourceStep = 26,
            priority = 290,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1690 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1691-more-wastewander-justice" },
        },
        {
            id = "objective-2873-1-stoley-s-shipment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Collect 1 Stoley's Shipment.",
            complete = {
                questObjective = { id = 2873, index = 1, text = "Stoley's Shipment", count = 1 },
            },
            route = {
                { mapID = 1446, x = 0.7219, y = 0.4677, label = "Stoley's Shipment", offMapText = "Travel to Stoley's Shipment." },
            },
            sourceStep = 27,
            priority = 300,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2873-stoley-s-shipment" },
        },
        {
            priority = 310,
            text = "Collect 1 Firebeard's Head.",
            route = {
                { y = 0.4714, mapID = 1446, label = "Andre Firebeard", offMapText = "Travel to Andre Firebeard.", x = 0.7337 },
            },
            dependsOn = { "accept-2875-wanted-andre-firebeard" },
            id = "objective-2875-1-andre-firebeard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2875, text = "Andre Firebeard", index = 1, count = 1 },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            route = {
                { y = 0.466, mapID = 1446, label = "Southsea Pirate", offMapText = "Travel to Southsea Pirate.", x = 0.738 },
            },
            text = "Kill Southsea Pirate. Loot the starter item here, then use it to accept the quest.",
            id = "objective-2876-1-southsea-pirate",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2876, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-2876-ship-schedules",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot Ship Schedule from Ship Schedule. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Ship Schedule", minCount = 1 },
                    },
                    {
                        quest = { id = 2876, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 330,
        },
        {
            priority = 340,
            text = "Use the Ship Schedule to accept Ship Schedules.",
            id = "accept-2876-ship-schedules",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2876, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-351-find-oox-17-tn",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot OOX-17/TN Distress Beacon from Glasshide Basilisk, Scorpid Hunter, Starving Blisterpaw, Fire Roc, Divined Scroll, Dunemaul Enforcer, Dunemaul Brute, Thistleshrub Dew Collector, Thistleshrub Rootshaper, Gnarled Thistleshrub, Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage, Wastewander Bandit, Wastewander Assassin, Sandfury Shadowhunter, Scarab, Theka the Martyr, Zul'Farrak Zombie, Sergeant Bly, Hydromancer Velratha, Caliph Scorpidsting, Southsea Pirate, Southsea Freebooter, Southsea Dock Worker, Southsea Swashbuckler, Andre Firebeard, Big Voodoo Robe, Tough Scorpid Breastplate, Gor'marok the Ravager. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "OOX-17/TN Distress Beacon", minCount = 1 },
                    },
                    {
                        quest = { id = 351, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 350,
        },
        {
            priority = 360,
            text = "Use the OOX-17/TN Distress Beacon to accept Find OOX-17/TN!.",
            id = "accept-351-find-oox-17-tn",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 351, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-8365-1-southsea-pirate-hat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Collect 20 Southsea Pirate Hat.",
            complete = {
                questObjective = { id = 8365, index = 1, text = "Southsea Pirate Hat", count = 20 },
            },
            route = {
                { mapID = 1446, x = 0.738, y = 0.466, label = "Southsea Pirate Hat", offMapText = "Travel to Southsea Pirate Hat." },
            },
            sourceStep = 31,
            priority = 370,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8365-pirate-hats-ahoy" },
        },
        {
            id = "objective-8366-1-southsea-pirate",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Kill 10 Southsea Pirate.",
            complete = {
                questObjective = { id = 8366, index = 1, text = "Southsea Pirate", count = 10 },
            },
            route = {
                { mapID = 1446, x = 0.738, y = 0.466, label = "Southsea Pirate", offMapText = "Travel to Southsea Pirate." },
            },
            sourceStep = 32,
            priority = 380,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8366-southsea-shakedown" },
        },
        {
            id = "objective-8366-2-southsea-freebooter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Kill 10 Southsea Freebooter.",
            complete = {
                questObjective = { id = 8366, index = 2, text = "Southsea Freebooter", count = 10 },
            },
            route = {
                { mapID = 1446, x = 0.738, y = 0.466, label = "Southsea Freebooter", offMapText = "Travel to Southsea Freebooter." },
            },
            sourceStep = 32,
            priority = 390,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8366-southsea-shakedown" },
        },
        {
            id = "objective-8366-3-southsea-dock-worker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Kill 10 Southsea Dock Worker.",
            complete = {
                questObjective = { id = 8366, index = 3, text = "Southsea Dock Worker", count = 10 },
            },
            route = {
                { mapID = 1446, x = 0.73, y = 0.478, label = "Southsea Dock Worker", offMapText = "Travel to Southsea Dock Worker." },
            },
            sourceStep = 33,
            priority = 400,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8366-southsea-shakedown" },
        },
        {
            id = "objective-8366-4-southsea-swashbuckler",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Kill 10 Southsea Swashbuckler.",
            complete = {
                questObjective = { id = 8366, index = 4, text = "Southsea Swashbuckler", count = 10 },
            },
            route = {
                { mapID = 1446, x = 0.7440000000000001, y = 0.452, label = "Southsea Swashbuckler", offMapText = "Travel to Southsea Swashbuckler." },
            },
            sourceStep = 34,
            priority = 410,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8366-southsea-shakedown" },
        },
        {
            priority = 420,
            text = "Turn in WANTED: Andre Firebeard to Security Chief Bilgewhizzle.",
            route = {
                { mapID = 1446, x = 0.6706, y = 0.2389, label = "Security Chief Bilgewhizzle", offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris." },
            },
            dependsOn = { "accept-2875-wanted-andre-firebeard", "objective-2875-1-andre-firebeard" },
            id = "turnin-2875-wanted-andre-firebeard",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2875, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            text = "Turn in Southsea Shakedown to Security Chief Bilgewhizzle.",
            route = {
                { mapID = 1446, x = 0.6706, y = 0.2389, label = "Security Chief Bilgewhizzle", offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris." },
            },
            dependsOn = {
                "accept-8366-southsea-shakedown",
                "objective-8366-1-southsea-pirate",
                "objective-8366-2-southsea-freebooter",
                "objective-8366-3-southsea-dock-worker",
                "objective-8366-4-southsea-swashbuckler",
            },
            id = "turnin-8366-southsea-shakedown",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 8366, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            text = "Turn in Ship Schedules to Security Chief Bilgewhizzle.",
            route = {
                { mapID = 1446, x = 0.6706, y = 0.2389, label = "Security Chief Bilgewhizzle", offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris." },
            },
            dependsOn = { "accept-2876-ship-schedules" },
            id = "turnin-2876-ship-schedules",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2876, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            text = "Turn in Stoley's Shipment to Stoley.",
            route = {
                { y = 0.2397, mapID = 1446, label = "Stoley", offMapText = "Travel to Stoley in Tanaris.", x = 0.6711 },
            },
            dependsOn = { "accept-2873-stoley-s-shipment", "objective-2873-1-stoley-s-shipment" },
            id = "turnin-2873-stoley-s-shipment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2873, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { y = 0.2397, mapID = 1446, label = "Stoley", offMapText = "Travel to Stoley in Tanaris.", x = 0.6711 },
            },
            text = "Accept Deliver to MacKinley from Stoley.",
            id = "accept-2874-deliver-to-mackinley",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2874, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2873 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Turn in Pirate Hats Ahoy! to Haughty Modiste.",
            route = {
                { y = 0.2227, mapID = 1446, label = "Haughty Modiste", offMapText = "Travel to Haughty Modiste in Tanaris.", x = 0.6656 },
            },
            dependsOn = { "accept-8365-pirate-hats-ahoy", "objective-8365-1-southsea-pirate-hat" },
            id = "turnin-8365-pirate-hats-ahoy",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 8365, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            text = "Turn in WANTED: Caliph Scorpidsting to Chief Engineer Bilgewhizzle.",
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            dependsOn = { "accept-2781-wanted-caliph-scorpidsting", "objective-2781-1-caliph-scorpidsting" },
            id = "turnin-2781-wanted-caliph-scorpidsting",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 2781, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Turn in More Wastewander Justice to Chief Engineer Bilgewhizzle.",
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            dependsOn = {
                "accept-1691-more-wastewander-justice",
                "objective-1691-2-wastewander-assassin",
                "objective-1691-1-wastewander-rogue",
                "objective-1691-3-wastewander-shadow-mage",
            },
            id = "turnin-1691-more-wastewander-justice",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1691, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1690 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-3380-the-sunken-temple",
            kind = "note",
            text = "Reach level 46 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 46 },
            },
            requiredLevel = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3380,
            priority = 500,
        },
        {
            priority = 510,
            route = {
                { y = 0.4593, mapID = 1446, label = "Marvon Rivetseeker", offMapText = "Travel to Marvon Rivetseeker in Tanaris.", x = 0.5271 },
            },
            text = "Turn in The Sunken Temple to Marvon Rivetseeker.",
            id = "turnin-3380-the-sunken-temple",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 46 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3380, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-3444-the-stone-circle",
            kind = "note",
            text = "Reach level 46 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 46 },
            },
            requiredLevel = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3444,
            priority = 520,
        },
        {
            priority = 530,
            route = {
                { y = 0.4593, mapID = 1446, label = "Marvon Rivetseeker", offMapText = "Travel to Marvon Rivetseeker in Tanaris.", x = 0.5271 },
            },
            text = "Accept The Stone Circle from Marvon Rivetseeker.",
            id = "accept-3444-the-stone-circle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 46 },
                    },
                },
            },
            complete = {
                quest = { id = 3444, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3380, 3445 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            route = {
                { y = 0.4593, mapID = 1446, label = "Marvon Rivetseeker", offMapText = "Travel to Marvon Rivetseeker in Tanaris.", x = 0.5271 },
            },
            text = "Accept Gahz'ridian from Marvon Rivetseeker.",
            id = "accept-3161-gahz-ridian",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 3161, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 550,
            text = "Collect 5 Centipaar Insect Parts.",
            route = {
                { y = 0.4, mapID = 1446, label = "Centipaar Wasp", offMapText = "Travel to Centipaar Wasp.", x = 0.36 },
            },
            dependsOn = { "accept-82-noxious-lair-investigation" },
            id = "objective-82-1-centipaar-wasp",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                questObjective = { id = 82, text = "Centipaar Wasp", index = 1, count = 5 },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 992 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            text = "Kill Gor'marok the Ravager.",
            route = {
                { y = 0.5781, mapID = 1446, label = "Gor'marok the Ravager", offMapText = "Travel to Gor'marok the Ravager.", x = 0.415 },
            },
            dependsOn = { "accept-5863-the-dunemaul-compound" },
            id = "objective-5863-3-gor-marok-the-ravager",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5863, text = "Gor'marok the Ravager", index = 3 },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-5863-1-dunemaul-brute",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            text = "Kill 10 Dunemaul Brute.",
            complete = {
                questObjective = { id = 5863, index = 1, text = "Dunemaul Brute", count = 10 },
            },
            route = {
                { mapID = 1446, x = 0.40399999999999997, y = 0.56, label = "Dunemaul Brute", offMapText = "Travel to Dunemaul Brute." },
            },
            sourceStep = 45,
            priority = 570,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5863-the-dunemaul-compound" },
        },
        {
            id = "objective-5863-2-dunemaul-enforcer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            text = "Kill 10 Dunemaul Enforcer.",
            complete = {
                questObjective = { id = 5863, index = 2, text = "Dunemaul Enforcer", count = 10 },
            },
            route = {
                { mapID = 1446, x = 0.40399999999999997, y = 0.56, label = "Dunemaul Enforcer", offMapText = "Travel to Dunemaul Enforcer." },
            },
            sourceStep = 45,
            priority = 580,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5863-the-dunemaul-compound" },
        },
        {
            id = "objective-3161-1-gahz-ridian-ornament",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            text = "Collect 30 Gahz'ridian Ornament.",
            complete = {
                questObjective = { id = 3161, index = 1, text = "Gahz'ridian Ornament", count = 30 },
            },
            route = {
                { mapID = 1446, x = 0.48200000000000004, y = 0.647, label = "Gahz'ridian Ornament", offMapText = "Travel to Gahz'ridian Ornament." },
            },
            sourceStep = 46,
            priority = 590,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3161-gahz-ridian" },
        },
        {
            priority = 600,
            text = "Collect 1 Laden Dew Gland.",
            route = {
                { y = 0.668, mapID = 1446, label = "Thistleshrub Dew Collector", offMapText = "Travel to Thistleshrub Dew Collector.", x = 0.298 },
            },
            dependsOn = { "accept-2605-the-thirsty-goblin" },
            id = "objective-2605-1-thistleshrub-dew-collector",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2605, text = "Thistleshrub Dew Collector", index = 1, count = 1 },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-3362-1-gnarled-thistleshrub",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 8 Gnarled Thistleshrub.",
            complete = {
                questObjective = { id = 3362, index = 1, text = "Gnarled Thistleshrub", count = 8 },
            },
            route = {
                { mapID = 1446, x = 0.298, y = 0.6679999999999999, label = "Gnarled Thistleshrub", offMapText = "Travel to Gnarled Thistleshrub." },
            },
            sourceStep = 48,
            priority = 610,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3362-thistleshrub-valley" },
        },
        {
            id = "objective-3362-2-thistleshrub-rootshaper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 8 Thistleshrub Rootshaper.",
            complete = {
                questObjective = { id = 3362, index = 2, text = "Thistleshrub Rootshaper", count = 8 },
            },
            route = {
                { mapID = 1446, x = 0.298, y = 0.6679999999999999, label = "Thistleshrub Rootshaper", offMapText = "Travel to Thistleshrub Rootshaper." },
            },
            sourceStep = 48,
            priority = 620,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3362-thistleshrub-valley" },
        },
        {
            priority = 630,
            text = "Turn in Gahz'ridian to Marvon Rivetseeker.",
            route = {
                { y = 0.4593, mapID = 1446, label = "Marvon Rivetseeker", offMapText = "Travel to Marvon Rivetseeker in Tanaris.", x = 0.5271 },
            },
            dependsOn = { "accept-3161-gahz-ridian", "objective-3161-1-gahz-ridian-ornament" },
            id = "turnin-3161-gahz-ridian",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 3161, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            text = "Turn in The Thirsty Goblin to Marin Noggenfogger.",
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            dependsOn = { "accept-2605-the-thirsty-goblin", "objective-2605-1-thistleshrub-dew-collector" },
            id = "turnin-2605-the-thirsty-goblin",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2605, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            text = "Accept In Good Taste from Marin Noggenfogger.",
            id = "accept-2606-in-good-taste",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2606, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2605 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            text = "Turn in The Dunemaul Compound to Andi Lynn.",
            route = {
                { y = 0.274, mapID = 1446, label = "Andi Lynn", offMapText = "Travel to Andi Lynn in Tanaris.", x = 0.5282 },
            },
            dependsOn = {
                "accept-5863-the-dunemaul-compound",
                "objective-5863-3-gor-marok-the-ravager",
                "objective-5863-1-dunemaul-brute",
                "objective-5863-2-dunemaul-enforcer",
            },
            id = "turnin-5863-the-dunemaul-compound",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 5863, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 670,
            text = "Turn in Thistleshrub Valley to Tran'rek.",
            route = {
                { y = 0.2676, mapID = 1446, label = "Tran'rek", offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157 },
            },
            dependsOn = {
                "accept-3362-thistleshrub-valley",
                "objective-3362-1-gnarled-thistleshrub",
                "objective-3362-2-thistleshrub-rootshaper",
            },
            id = "turnin-3362-thistleshrub-valley",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 3362, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            text = "Turn in In Good Taste to Sprinkle.",
            route = {
                { y = 0.2687, mapID = 1446, label = "Sprinkle", offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106 },
            },
            dependsOn = { "accept-2606-in-good-taste" },
            id = "turnin-2606-in-good-taste",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2606, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2605 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.2687, mapID = 1446, label = "Sprinkle", offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106 },
            },
            text = "Accept Sprinkle's Secret Ingredient from Sprinkle.",
            id = "accept-2641-sprinkle-s-secret-ingredient",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2641, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2606 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            text = "Turn in Noxious Lair Investigation to Alchemist Pestlezugg.",
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            dependsOn = { "accept-82-noxious-lair-investigation", "objective-82-1-centipaar-wasp" },
            id = "turnin-82-noxious-lair-investigation",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 82, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 992 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept The Scrimshank Redemption from Senior Surveyor Fizzledowser.",
            id = "accept-10-the-scrimshank-redemption",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 10, state = "activeOrCompleted" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 82 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 720,
            text = "Turn in Find OOX-17/TN! to Homing Robot OOX-17/TN.",
            route = {
                { y = 0.6472, mapID = 1446, label = "Homing Robot OOX-17/TN", offMapText = "Travel to Homing Robot OOX-17/TN in Tanaris.", x = 0.6023 },
            },
            dependsOn = { "accept-351-find-oox-17-tn" },
            id = "turnin-351-find-oox-17-tn",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 351, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-10-1-scrimshank-s-surveying-gear",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            text = "Collect 1 Scrimshank's Surveying Gear.",
            complete = {
                questObjective = { id = 10, index = 1, text = "Scrimshank's Surveying Gear", count = 1 },
            },
            route = {
                { mapID = 1446, x = 0.5597, y = 0.7118000000000001, label = "Scrimshank's Surveying Gear", offMapText = "Travel to Scrimshank's Surveying Gear." },
            },
            sourceStep = 58,
            priority = 730,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 82 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-10-the-scrimshank-redemption" },
        },
        {
            priority = 740,
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            text = "Accept Return to Apothecary Zinge from Chief Engineer Bilgewhizzle.",
            id = "accept-864-return-to-apothecary-zinge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 864, state = "activeOrCompleted" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 654 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 750,
            text = "Turn in The Scrimshank Redemption to Senior Surveyor Fizzledowser.",
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            dependsOn = { "accept-10-the-scrimshank-redemption", "objective-10-1-scrimshank-s-surveying-gear" },
            id = "turnin-10-the-scrimshank-redemption",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 10, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 82 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 760,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept Insect Part Analysis from Senior Surveyor Fizzledowser.",
            id = "accept-110-insect-part-analysis",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 110, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 10 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 770,
            text = "Turn in Insect Part Analysis to Alchemist Pestlezugg.",
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            dependsOn = { "accept-110-insect-part-analysis" },
            id = "turnin-110-insect-part-analysis",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 110, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 10 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 780,
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            text = "Accept Insect Part Analysis from Alchemist Pestlezugg.",
            id = "accept-113-insect-part-analysis",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 113, state = "activeOrCompleted" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 110 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 790,
            text = "Turn in Insect Part Analysis to Senior Surveyor Fizzledowser.",
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            dependsOn = { "accept-113-insect-part-analysis" },
            id = "turnin-113-insect-part-analysis",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 113, state = "completed" },
            },
            sourceStep = 63,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 110 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 800,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept Rise of the Silithid from Senior Surveyor Fizzledowser.",
            id = "accept-32-rise-of-the-silithid",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 32, state = "activeOrCompleted" },
            },
            sourceStep = 63,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 113 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 810,
            route = {
                { y = 0.3308, mapID = 1445, label = "Draz'Zilb", offMapText = "Travel to Draz'Zilb in Dustwallow Marsh.", x = 0.3715 },
            },
            text = "Accept The Brood of Onyxia from Draz'Zilb.",
            id = "accept-1172-the-brood-of-onyxia",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1172, state = "activeOrCompleted" },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1171 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 820,
            text = "Destroy 5 brown, spiky Eggs of Onyxia around the southern Dustwallow dragon nests.",
            id = "objective-1172-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1172, index = 1, count = 5 },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1171 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1172-the-brood-of-onyxia" },
            route = {
                { mapID = 1445, x = 0.4839, y = 0.7598, label = "The Brood of Onyxia", offMapText = "Travel to The Brood of Onyxia." },
            },
        },
        {
            priority = 830,
            text = "Turn in The Brood of Onyxia to Draz'Zilb.",
            route = {
                { y = 0.3308, mapID = 1445, label = "Draz'Zilb", offMapText = "Travel to Draz'Zilb in Dustwallow Marsh.", x = 0.3715 },
            },
            dependsOn = { "accept-1172-the-brood-of-onyxia", "objective-1172-quest-work" },
            id = "turnin-1172-the-brood-of-onyxia",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1172, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1171 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-3444-1-stone-circle",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 46 },
                    },
                },
            },
            text = "Collect 1 Stone Circle.",
            complete = {
                questObjective = { id = 3444, index = 1, text = "Stone Circle", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.625, y = 0.38539999999999996, label = "Stone Circle", offMapText = "Travel to Stone Circle." },
            },
            sourceStep = 87,
            priority = 840,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3380, 3445 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3444-the-stone-circle" },
        },
        {
            priority = 850,
            text = "Turn in Rise of the Silithid to Zilzibin Drumlore.",
            route = {
                { mapID = 1454, x = 0.5627, y = 0.4667, label = "Zilzibin Drumlore", offMapText = "Travel to Zilzibin Drumlore in Orgrimmar." },
            },
            dependsOn = { "accept-32-rise-of-the-silithid" },
            id = "turnin-32-rise-of-the-silithid",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 32, state = "completed" },
            },
            sourceStep = 96,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 113 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 860,
            route = {
                { y = 0.3659, mapID = 1454, label = "Dran Droffers", offMapText = "Travel to Dran Droffers in Orgrimmar.", x = 0.5948 },
            },
            text = "Accept Ripple Recovery from Dran Droffers.",
            id = "accept-649-ripple-recovery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 649, state = "activeOrCompleted" },
            },
            sourceStep = 97,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 870,
            text = "Turn in Ripple Recovery to Malton Droffers.",
            route = {
                { y = 0.3692, mapID = 1454, label = "Malton Droffers", offMapText = "Travel to Malton Droffers in Orgrimmar.", x = 0.5964 },
            },
            dependsOn = { "accept-649-ripple-recovery" },
            id = "turnin-649-ripple-recovery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 649, state = "completed" },
            },
            sourceStep = 98,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 880,
            route = {
                { y = 0.3692, mapID = 1454, label = "Malton Droffers", offMapText = "Travel to Malton Droffers in Orgrimmar.", x = 0.5964 },
            },
            text = "Accept Ripple Recovery from Malton Droffers.",
            id = "accept-650-ripple-recovery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 650, state = "activeOrCompleted" },
            },
            sourceStep = 98,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 649 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4300-bone-bladed-weapons",
            kind = "note",
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 48 },
            },
            requiredLevel = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4300,
            priority = 890,
        },
        {
            priority = 900,
            route = {
                { y = 0.3409, mapID = 1454, label = "Jes'rimon", offMapText = "Travel to Jes'rimon in Orgrimmar.", x = 0.5551 },
            },
            text = "Accept Bone-Bladed Weapons from Jes'rimon.",
            id = "accept-4300-bone-bladed-weapons",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4300, state = "activeOrCompleted" },
            },
            sourceStep = 99,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
