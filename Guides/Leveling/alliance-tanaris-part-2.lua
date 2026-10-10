local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Tanaris",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-tanaris-part-2",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 49 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-1691-more-wastewander-justice",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1691,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            text = "Accept More Wastewander Justice from Chief Engineer Bilgewhizzle.",
            id = "accept-1691-more-wastewander-justice",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1691, state = "activeOrCompleted" },
            },
            sourceStep = 2,
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
            priority = 30,
            route = {
                { y = 0.2702, mapID = 1446, label = "WANTED: Caliph Scorpidsting", offMapText = "Travel to WANTED: Caliph Scorpidsting.", x = 0.5184 },
            },
            text = "Accept WANTED: Caliph Scorpidsting.",
            id = "accept-2781-wanted-caliph-scorpidsting",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 2781, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            route = {
                { y = 0.2702, mapID = 1446, label = "WANTED: Andre Firebeard", offMapText = "Travel to WANTED: Andre Firebeard.", x = 0.5184 },
            },
            text = "Accept WANTED: Andre Firebeard.",
            id = "accept-2875-wanted-andre-firebeard",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2875, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept The Scrimshank Redemption from Senior Surveyor Fizzledowser.",
            id = "accept-10-the-scrimshank-redemption",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 10, state = "activeOrCompleted" },
            },
            sourceStep = 4,
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
            id = "level-before-turnin-3445-the-sunken-temple",
            kind = "note",
            text = "Reach level 46 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 3445,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { y = 0.4593, mapID = 1446, label = "Marvon Rivetseeker", offMapText = "Travel to Marvon Rivetseeker in Tanaris.", x = 0.5271 },
            },
            text = "Turn in The Sunken Temple to Marvon Rivetseeker.",
            id = "turnin-3445-the-sunken-temple",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 46 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3445, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-3161-gahz-ridian",
            kind = "note",
            text = "Reach level 43 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 43 },
            },
            requiredLevel = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3161,
            priority = 80,
        },
        {
            priority = 90,
            route = {
                { y = 0.4593, mapID = 1446, label = "Marvon Rivetseeker", offMapText = "Travel to Marvon Rivetseeker in Tanaris.", x = 0.5271 },
            },
            text = "Accept Gahz'ridian from Marvon Rivetseeker.",
            id = "accept-3161-gahz-ridian",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 3161, state = "activeOrCompleted" },
            },
            sourceStep = 5,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            priority = 100,
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
        },
        {
            id = "objective-1691-2-wastewander-assassin",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 7,
            priority = 110,
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
                    { faction = "Alliance" },
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
            sourceStep = 7,
            priority = 120,
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
                    { faction = "Alliance" },
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
            sourceStep = 7,
            priority = 130,
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
                    { faction = "Alliance" },
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
            sourceStep = 9,
            priority = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Collect 1 Firebeard's Head.",
            route = {
                { y = 0.4714, mapID = 1446, label = "Andre Firebeard", offMapText = "Travel to Andre Firebeard.", x = 0.7337 },
            },
            dependsOn = { "accept-2875-wanted-andre-firebeard" },
            id = "objective-2875-1-andre-firebeard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2875, text = "Andre Firebeard", index = 1, count = 1 },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            route = {
                { y = 0.466, mapID = 1446, label = "Southsea Pirate", offMapText = "Travel to Southsea Pirate.", x = 0.738 },
            },
            text = "Kill Southsea Pirate. Loot the starter item here, then use it to accept the quest.",
            id = "objective-2876-1-southsea-pirate",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            conditions = { faction = "Alliance" },
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
            priority = 170,
        },
        {
            priority = 180,
            text = "Use the Ship Schedule to accept Ship Schedules.",
            id = "accept-2876-ship-schedules",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2876, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-351-find-oox-17-tn",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Alliance" },
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
            priority = 190,
        },
        {
            priority = 200,
            text = "Use the OOX-17/TN Distress Beacon to accept Find OOX-17/TN!.",
            id = "accept-351-find-oox-17-tn",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 351, state = "activeOrCompleted" },
            },
            sourceStep = 12,
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
                    { faction = "Alliance" },
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
            sourceStep = 13,
            priority = 210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-8366-1-southsea-pirate",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 14,
            priority = 220,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-8366-2-southsea-freebooter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 14,
            priority = 230,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-8366-3-southsea-dock-worker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 15,
            priority = 240,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-8366-4-southsea-swashbuckler",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 16,
            priority = 250,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            text = "Turn in WANTED: Andre Firebeard to Security Chief Bilgewhizzle.",
            route = {
                { mapID = 1446, x = 0.6706, y = 0.2389, label = "Security Chief Bilgewhizzle", offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris." },
            },
            dependsOn = { "accept-2875-wanted-andre-firebeard", "objective-2875-1-andre-firebeard" },
            id = "turnin-2875-wanted-andre-firebeard",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2875, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            route = {
                { mapID = 1446, x = 0.6706, y = 0.2389, label = "Security Chief Bilgewhizzle", offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris." },
            },
            text = "Turn in Southsea Shakedown to Security Chief Bilgewhizzle.",
            id = "turnin-8366-southsea-shakedown",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 8366, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {
                "objective-8366-1-southsea-pirate",
                "objective-8366-2-southsea-freebooter",
                "objective-8366-3-southsea-dock-worker",
                "objective-8366-4-southsea-swashbuckler",
            },
        },
        {
            priority = 280,
            text = "Turn in Ship Schedules to Security Chief Bilgewhizzle.",
            route = {
                { mapID = 1446, x = 0.6706, y = 0.2389, label = "Security Chief Bilgewhizzle", offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris." },
            },
            dependsOn = { "accept-2876-ship-schedules" },
            id = "turnin-2876-ship-schedules",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2876, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            route = {
                { y = 0.2397, mapID = 1446, label = "Stoley", offMapText = "Travel to Stoley in Tanaris.", x = 0.6711 },
            },
            text = "Turn in Stoley's Shipment to Stoley.",
            id = "turnin-2873-stoley-s-shipment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2873, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-2873-1-stoley-s-shipment" },
        },
        {
            priority = 300,
            route = {
                { y = 0.2397, mapID = 1446, label = "Stoley", offMapText = "Travel to Stoley in Tanaris.", x = 0.6711 },
            },
            text = "Accept Deliver to MacKinley from Stoley.",
            id = "accept-2874-deliver-to-mackinley",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2874, state = "activeOrCompleted" },
            },
            sourceStep = 18,
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
            priority = 310,
            route = {
                { y = 0.2227, mapID = 1446, label = "Haughty Modiste", offMapText = "Travel to Haughty Modiste in Tanaris.", x = 0.6656 },
            },
            text = "Turn in Pirate Hats Ahoy! to Haughty Modiste.",
            id = "turnin-8365-pirate-hats-ahoy",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 8365, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-8365-1-southsea-pirate-hat" },
        },
        {
            priority = 320,
            text = "Kill a Vale Screecher in Feralas, then use Yeh'kinya's Bramble on its corpse. Speak with the spirit that appears. Repeat until you have 3 Screecher Spirits.",
            id = "objective-3520-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3520, state = "complete" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 330,
            route = {
                { y = 0.2236, mapID = 1446, label = "Yeh'kinya", offMapText = "Travel to Yeh'kinya in Tanaris.", x = 0.6699 },
            },
            text = "Turn in Screecher Spirits to Yeh'kinya.",
            id = "turnin-3520-screecher-spirits",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3520, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-3520-quest-work" },
        },
        {
            priority = 340,
            text = "Turn in Find OOX-17/TN! to Homing Robot OOX-17/TN.",
            route = {
                { y = 0.6472, mapID = 1446, label = "Homing Robot OOX-17/TN", offMapText = "Travel to Homing Robot OOX-17/TN in Tanaris.", x = 0.6023 },
            },
            dependsOn = { "accept-351-find-oox-17-tn" },
            id = "turnin-351-find-oox-17-tn",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 351, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-10-1-scrimshank-s-surveying-gear",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 22,
            priority = 350,
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
            priority = 360,
            text = "Turn in WANTED: Caliph Scorpidsting to Chief Engineer Bilgewhizzle.",
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            dependsOn = { "accept-2781-wanted-caliph-scorpidsting", "objective-2781-1-caliph-scorpidsting" },
            id = "turnin-2781-wanted-caliph-scorpidsting",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 2781, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1691, state = "completed" },
            },
            sourceStep = 23,
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
            priority = 380,
            route = {
                { y = 0.2891, mapID = 1446, label = "Red Power Crystal", offMapText = "Travel to Red Power Crystal.", x = 0.523 },
            },
            text = "Collect 7 Red Power Crystal.",
            id = "collect-before-pickup-objective-4284-1-red-power-crystal",
            kind = "note",
            conditions = { faction = "Alliance" },
            complete = {
                item = { name = "Red Power Crystal", minCount = 7 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            referenceQuest = 4284,
        },
        {
            id = "level-before-accept-2605-the-thirsty-goblin",
            kind = "note",
            text = "Reach level 44 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 44 },
            },
            requiredLevel = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2605,
            priority = 390,
        },
        {
            priority = 400,
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            text = "Accept The Thirsty Goblin from Marin Noggenfogger.",
            id = "accept-2605-the-thirsty-goblin",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2605, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 410,
            text = "Turn in The Scrimshank Redemption to Senior Surveyor Fizzledowser.",
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            dependsOn = { "accept-10-the-scrimshank-redemption", "objective-10-1-scrimshank-s-surveying-gear" },
            id = "turnin-10-the-scrimshank-redemption",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 10, state = "completed" },
            },
            sourceStep = 27,
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
            priority = 420,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept Insect Part Analysis from Senior Surveyor Fizzledowser.",
            id = "accept-110-insect-part-analysis",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 110, state = "activeOrCompleted" },
            },
            sourceStep = 27,
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
            priority = 430,
            text = "Turn in Insect Part Analysis to Alchemist Pestlezugg.",
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            dependsOn = { "accept-110-insect-part-analysis" },
            id = "turnin-110-insect-part-analysis",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 110, state = "completed" },
            },
            sourceStep = 28,
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
            priority = 440,
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            text = "Accept Insect Part Analysis from Alchemist Pestlezugg.",
            id = "accept-113-insect-part-analysis",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 113, state = "activeOrCompleted" },
            },
            sourceStep = 28,
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
            id = "level-before-accept-3362-thistleshrub-valley",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3362,
            priority = 450,
        },
        {
            priority = 460,
            route = {
                { y = 0.2676, mapID = 1446, label = "Tran'rek", offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157 },
            },
            text = "Accept Thistleshrub Valley from Tran'rek.",
            id = "accept-3362-thistleshrub-valley",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 3362, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            route = {
                { y = 0.274, mapID = 1446, label = "Andi Lynn", offMapText = "Travel to Andi Lynn in Tanaris.", x = 0.5282 },
            },
            text = "Accept The Dunemaul Compound from Andi Lynn.",
            id = "accept-5863-the-dunemaul-compound",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 5863, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 480,
            text = "Turn in Insect Part Analysis to Senior Surveyor Fizzledowser.",
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            dependsOn = { "accept-113-insect-part-analysis" },
            id = "turnin-113-insect-part-analysis",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 113, state = "completed" },
            },
            sourceStep = 31,
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
            priority = 490,
            text = "Kill Gor'marok the Ravager.",
            route = {
                { y = 0.5781, mapID = 1446, label = "Gor'marok the Ravager", offMapText = "Travel to Gor'marok the Ravager.", x = 0.415 },
            },
            dependsOn = { "accept-5863-the-dunemaul-compound" },
            id = "objective-5863-3-gor-marok-the-ravager",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5863, text = "Gor'marok the Ravager", index = 3 },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-5863-1-dunemaul-brute",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 33,
            priority = 500,
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
                    { faction = "Alliance" },
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
            sourceStep = 33,
            priority = 510,
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
                    { faction = "Alliance" },
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
                { mapID = 1446, x = 0.40299999999999997, y = 0.6890000000000001, label = "Gahz'ridian Ornament", offMapText = "Travel to Gahz'ridian Ornament." },
            },
            sourceStep = 34,
            priority = 520,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3161-gahz-ridian" },
        },
        {
            priority = 530,
            text = "Collect 1 Laden Dew Gland.",
            route = {
                { y = 0.668, mapID = 1446, label = "Thistleshrub Dew Collector", offMapText = "Travel to Thistleshrub Dew Collector.", x = 0.298 },
            },
            dependsOn = { "accept-2605-the-thirsty-goblin" },
            id = "objective-2605-1-thistleshrub-dew-collector",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2605, text = "Thistleshrub Dew Collector", index = 1, count = 1 },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-3362-1-gnarled-thistleshrub",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 36,
            priority = 540,
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
                    { faction = "Alliance" },
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
            sourceStep = 36,
            priority = 550,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3362-thistleshrub-valley" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
