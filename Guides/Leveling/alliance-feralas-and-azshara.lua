local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Feralas & Azshara",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-feralas-and-azshara",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 52 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-7733-improved-quality",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7733,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.4271, mapID = 1444, label = "Pratt McGrubben", offMapText = "Travel to Pratt McGrubben in Feralas.", x = 0.3063 },
            },
            text = "Accept Improved Quality from Pratt McGrubben.",
            id = "accept-7733-improved-quality",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 7733, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2821 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-2943-return-to-troyas",
            kind = "note",
            text = "Reach level 42 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 42 },
            },
            requiredLevel = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2943,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.455, mapID = 1444, label = "Troyas Moonbreeze", offMapText = "Travel to Troyas Moonbreeze in Feralas.", x = 0.3178 },
            },
            text = "Turn in Return to Troyas to Troyas Moonbreeze.",
            id = "turnin-2943-return-to-troyas",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2943, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2944 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.455, mapID = 1444, label = "Troyas Moonbreeze", offMapText = "Travel to Troyas Moonbreeze in Feralas.", x = 0.3178 },
            },
            text = "Accept The Stave of Equinex from Troyas Moonbreeze.",
            id = "accept-2879-the-stave-of-equinex",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2879, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2943 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-7003-zapped-giants",
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
            checkpointQuest = 7003,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { y = 0.4342, mapID = 1444, label = "Zorbin Fandazzle", offMapText = "Travel to Zorbin Fandazzle in Feralas.", x = 0.4481 },
            },
            text = "Accept Zapped Giants from Zorbin Fandazzle.",
            id = "accept-7003-zapped-giants",
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
                quest = { id = 7003, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.4342, mapID = 1444, label = "Zorbin Fandazzle", offMapText = "Travel to Zorbin Fandazzle in Feralas.", x = 0.4481 },
            },
            text = "Accept Fuel for the Zapping from Zorbin Fandazzle.",
            id = "accept-7721-fuel-for-the-zapping",
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
                quest = { id = 7721, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "Use the Ultra-Shrinker on giants along the coast, then kill them and collect 15 Miniaturization Residues.",
            route = {
                { y = 0.498, mapID = 1444, label = "Zorbin's Ultra-Shrinker", offMapText = "Travel to Zorbin's Ultra-Shrinker.", x = 0.444 },
            },
            dependsOn = { "accept-7003-zapped-giants" },
            id = "objective-7003-1-zorbin-s-ultra-shrinker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                questObjective = { id = 7003, text = "Zorbin's Ultra-Shrinker", index = 1, count = 15 },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-7721-1-water-elemental-core",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Collect 10 Water Elemental Core.",
            complete = {
                questObjective = { id = 7721, index = 1, text = "Water Elemental Core", count = 10 },
            },
            route = {
                { mapID = 1444, x = 0.442, y = 0.506, label = "Water Elemental Core", offMapText = "Travel to Water Elemental Core." },
            },
            sourceStep = 6,
            priority = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7721-fuel-for-the-zapping" },
        },
        {
            priority = 110,
            text = "Turn in Zapped Giants to Zorbin Fandazzle.",
            route = {
                { y = 0.4342, mapID = 1444, label = "Zorbin Fandazzle", offMapText = "Travel to Zorbin Fandazzle in Feralas.", x = 0.4481 },
            },
            dependsOn = { "accept-7003-zapped-giants", "objective-7003-1-zorbin-s-ultra-shrinker" },
            id = "turnin-7003-zapped-giants",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 7003, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            text = "Turn in Fuel for the Zapping to Zorbin Fandazzle.",
            route = {
                { y = 0.4342, mapID = 1444, label = "Zorbin Fandazzle", offMapText = "Travel to Zorbin Fandazzle in Feralas.", x = 0.4481 },
            },
            dependsOn = { "accept-7721-fuel-for-the-zapping", "objective-7721-1-water-elemental-core" },
            id = "turnin-7721-fuel-for-the-zapping",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 7721, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-7735-pristine-yeti-hide",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Loot Pristine Yeti Hide from Ferocious Rage Scar. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Pristine Yeti Hide", minCount = 1 },
                    },
                    {
                        quest = { id = 7735, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 130,
        },
        {
            priority = 140,
            text = "Use the Pristine Yeti Hide to accept Pristine Yeti Hide.",
            id = "accept-7735-pristine-yeti-hide",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 7735, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2821 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-7733-1-rage-scar-yeti-hide",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 10 Rage Scar Yeti Hide.",
            complete = {
                questObjective = { id = 7733, index = 1, text = "Rage Scar Yeti Hide", count = 10 },
            },
            route = {
                { mapID = 1444, x = 0.514, y = 0.324, label = "Rage Scar Yeti Hide", offMapText = "Travel to Rage Scar Yeti Hide." },
            },
            sourceStep = 11,
            priority = 150,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2821 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7733-improved-quality" },
        },
        {
            id = "level-before-accept-2844-the-giant-guardian",
            kind = "note",
            text = "Reach level 44 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 44 },
            },
            requiredLevel = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2844,
            priority = 160,
        },
        {
            priority = 170,
            route = {
                { mapID = 1444, x = 0.4238, y = 0.22, label = "Rockbiter", offMapText = "Travel to Rockbiter in Feralas." },
            },
            text = "Accept The Giant Guardian from Rockbiter.",
            id = "accept-2844-the-giant-guardian",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2844, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Climb the ledges on the eastern side of the ruins. Touch the Flame of Samha on the upper ledge to obtain Samha Essence.",
            route = {
                { mapID = 1444, x = 0.4054, y = 0.1265, label = "Flame of Samha", offMapText = "Travel to Flame of Samha." },
            },
            dependsOn = { "accept-2879-the-stave-of-equinex" },
            id = "collect-2879-samha-essence",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Samha Essence", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 2879, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2943 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 18,
            sourceInstructionIndex = 1,
            checkpointQuest = 2879,
            instructionOnly = true,
            rememberPreparation = 2879,
        },
        {
            priority = 190,
            text = "Touch the Flame of Imbel to obtain Imbel Essence.",
            route = {
                { mapID = 1444, x = 0.3993, y = 0.0944, label = "Flame of Imbel", offMapText = "Travel to Flame of Imbel." },
            },
            dependsOn = { "accept-2879-the-stave-of-equinex" },
            id = "objective-2879-1-flame-of-imbel",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Imbel Essence", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 2879, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2943 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 18,
            sourceInstructionIndex = 1,
            checkpointQuest = 2879,
            instructionOnly = true,
            rememberPreparation = 2879,
        },
        {
            priority = 200,
            text = "Touch the Flame of Lahassa to obtain Lahassa Essence.",
            route = {
                { mapID = 1444, x = 0.3776, y = 0.1217, label = "Flame of Lahassa", offMapText = "Travel to Flame of Lahassa." },
            },
            dependsOn = { "accept-2879-the-stave-of-equinex" },
            id = "objective-2879-1-flame-of-lahassa",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Lahassa Essence", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 2879, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2943 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2879,
            instructionOnly = true,
            rememberPreparation = 2879,
        },
        {
            priority = 210,
            text = "Touch the Flame of Byltan to obtain Byltan Essence.",
            route = {
                { mapID = 1444, x = 0.385, y = 0.158, label = "Flame of Byltan", offMapText = "Travel to Flame of Byltan." },
            },
            dependsOn = { "accept-2879-the-stave-of-equinex" },
            id = "objective-2879-1-flame-of-byltan",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Byltan Essence", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 2879, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2943 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2879,
            instructionOnly = true,
            rememberPreparation = 2879,
        },
        {
            priority = 220,
            text = "With Samha, Imbel, Lahassa and Byltan Essence in your bags, use Troyas' Stave at the Equinex Monolith to obtain the Stave of Equinex.",
            route = {
                { mapID = 1444, x = 0.3887, y = 0.1323, label = "Equinex Monolith", offMapText = "Travel to Equinex Monolith." },
            },
            dependsOn = { "accept-2879-the-stave-of-equinex" },
            id = "objective-2879-1-troyas-stave",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2879, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2943 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            text = "Touch the Equinex Monolith to turn in The Stave of Equinex.",
            route = {
                { y = 0.1323, mapID = 1444, label = "The Stave of Equinex", offMapText = "Travel to The Stave of Equinex.", x = 0.3887 },
            },
            dependsOn = {
                "accept-2879-the-stave-of-equinex",
                "objective-2879-1-flame-of-imbel",
                "objective-2879-1-flame-of-lahassa",
                "objective-2879-1-flame-of-byltan",
                "objective-2879-1-troyas-stave",
            },
            id = "turnin-2879-the-stave-of-equinex",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2879, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2943 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            route = {
                { y = 0.1323, mapID = 1444, label = "The Morrow Stone", offMapText = "Travel to The Morrow Stone.", x = 0.3887 },
            },
            text = "Accept The Morrow Stone.",
            id = "accept-2942-the-morrow-stone",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2942, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2879 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            text = "Turn in The Giant Guardian to Shay Leafrunner.",
            route = {
                { y = 0.103, mapID = 1444, label = "Shay Leafrunner", offMapText = "Travel to Shay Leafrunner in Feralas.", x = 0.3822 },
            },
            dependsOn = { "accept-2844-the-giant-guardian" },
            id = "turnin-2844-the-giant-guardian",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2844, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            route = {
                { y = 0.103, mapID = 1444, label = "Shay Leafrunner", offMapText = "Travel to Shay Leafrunner in Feralas.", x = 0.3822 },
            },
            text = "Accept Wandering Shay from Shay Leafrunner.",
            id = "accept-2845-wandering-shay",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2845, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2844 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            text = "Collect 1 Shay's Bell.",
            route = {
                { y = 0.1029, mapID = 1444, label = "Shay's Chest", offMapText = "Travel to Shay's Chest.", x = 0.3825 },
            },
            dependsOn = { "accept-2845-wandering-shay" },
            id = "objective-2845-1-shay-s-chest",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2845, text = "Shay's Chest", index = 1, count = 1 },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2844 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-2845-reviewed-escort",
            kind = "objective",
            text = "Escort Shay Leafrunner to Rockbiter's camp. Stay close and use Shay's Bell whenever she wanders away. The quest is timed.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2844 },
                    conditions = {},
                },
            },
            complete = {
                quest = { id = 2845, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1444, x = 0.4238, y = 0.22, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 22,
            dependsOn = { "accept-2845-wandering-shay" },
            priority = 280,
        },
        {
            priority = 290,
            text = "Turn in Wandering Shay to Rockbiter.",
            route = {
                { y = 0.22, mapID = 1444, label = "Rockbiter", offMapText = "Travel to Rockbiter in Feralas.", x = 0.4238 },
            },
            dependsOn = { "accept-2845-wandering-shay", "objective-2845-1-shay-s-chest", "objective-2845-reviewed-escort" },
            id = "turnin-2845-wandering-shay",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2845, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2844 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-4142-a-visit-to-gregan",
            kind = "note",
            text = "Reach level 47 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 47 },
            },
            requiredLevel = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4142,
            priority = 300,
        },
        {
            priority = 310,
            route = {
                { y = 0.2557, mapID = 1444, label = "Gregan Brewspewer", offMapText = "Travel to Gregan Brewspewer in Feralas.", x = 0.4512 },
            },
            text = "Turn in A Visit to Gregan to Gregan Brewspewer.",
            id = "turnin-4142-a-visit-to-gregan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4142, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4141 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-3909-1-evoroot",
            kind = "note",
            text = "Reach level 47 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 47 },
            },
            requiredLevel = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3909,
            priority = 320,
        },
        {
            priority = 330,
            route = {
                { mapID = 1444, x = 0.4512, y = 0.2557, label = "Videre Elixir", offMapText = "Travel to Videre Elixir." },
            },
            text = "Collect 1 Videre Elixir.",
            id = "objective-3909-1-evoroot",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3909, text = "Evoroot", index = 1, count = 1 },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3908 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            text = "For The Morrow Stone: Return the Sparkling Stone and the Stave of Equinex to Troyas Moonbreeze in Feathermoon Stronghold.",
            id = "objective-2942-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2942, state = "complete" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2879 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2942-the-morrow-stone" },
        },
        {
            priority = 350,
            text = "Turn in The Morrow Stone to Troyas Moonbreeze.",
            route = {
                { y = 0.455, mapID = 1444, label = "Troyas Moonbreeze", offMapText = "Travel to Troyas Moonbreeze in Feralas.", x = 0.3178 },
            },
            dependsOn = { "accept-2942-the-morrow-stone", "objective-2942-quest-work" },
            id = "turnin-2942-the-morrow-stone",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2942, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2879 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Turn in Improved Quality to Pratt McGrubben.",
            route = {
                { y = 0.4271, mapID = 1444, label = "Pratt McGrubben", offMapText = "Travel to Pratt McGrubben in Feralas.", x = 0.3063 },
            },
            dependsOn = { "accept-7733-improved-quality", "objective-7733-1-rage-scar-yeti-hide" },
            id = "turnin-7733-improved-quality",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 7733, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2821 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            text = "Turn in Pristine Yeti Hide to Pratt McGrubben.",
            route = {
                { y = 0.4271, mapID = 1444, label = "Pratt McGrubben", offMapText = "Travel to Pratt McGrubben in Feralas.", x = 0.3063 },
            },
            dependsOn = { "accept-7735-pristine-yeti-hide" },
            id = "turnin-7735-pristine-yeti-hide",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 7735, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2821 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-5158-seeking-spiritual-aid",
            kind = "note",
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 48 },
            },
            requiredLevel = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5158,
            priority = 380,
        },
        {
            priority = 390,
            route = {
                { y = 0.4378, mapID = 1413, label = "Islen Waterseer", offMapText = "Travel to Islen Waterseer in The Barrens.", x = 0.6583 },
            },
            text = "Turn in Seeking Spiritual Aid to Islen Waterseer.",
            id = "turnin-5158-seeking-spiritual-aid",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 5158, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5157 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            route = {
                { y = 0.3854, mapID = 1413, label = "Marvon's Chest", offMapText = "Travel to Marvon's Chest.", x = 0.625 },
            },
            text = "Collect 1 Stone Circle.",
            id = "objective-3444-1-marvon-s-chest",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 46 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3444, text = "Marvon's Chest", index = 1, count = 1 },
            },
            sourceStep = 30,
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
            id = "level-before-accept-4502-volcanic-activity",
            kind = "note",
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 49 },
            },
            requiredLevel = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4502,
            priority = 410,
        },
        {
            priority = 420,
            route = {
                { y = 0.3874, mapID = 1413, label = "Liv Rizzlefix", offMapText = "Travel to Liv Rizzlefix in The Barrens.", x = 0.6245 },
            },
            text = "Accept Volcanic Activity from Liv Rizzlefix.",
            id = "accept-4502-volcanic-activity",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4502, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            route = {
                { y = 0.2182, mapID = 1447, label = "Kim'jael", offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345 },
            },
            text = "Accept Kim'jael Indeed! from Kim'jael.",
            id = "accept-3601-kim-jael-indeed",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3601, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            text = "Collect 1 Kim'Jael's Compass.",
            route = {
                { y = 0.301, mapID = 1447, label = "Kim'jael's Equipment", offMapText = "Travel to Kim'jael's Equipment.", x = 0.561 },
            },
            dependsOn = { "accept-3601-kim-jael-indeed" },
            id = "objective-3601-1-kim-jael-s-equipment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3601, text = "Kim'jael's Equipment", index = 1, count = 1 },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-3601-2-kim-jael-s-scope",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Kim'Jael's Scope.",
            complete = {
                questObjective = { id = 3601, index = 2, text = "Kim'Jael's Scope", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.561, y = 0.301, label = "Kim'Jael's Scope", offMapText = "Travel to Kim'Jael's Scope." },
            },
            sourceStep = 35,
            priority = 450,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3601-kim-jael-indeed" },
        },
        {
            id = "objective-3601-3-kim-jael-s-stuffed-chicken",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Kim'Jael's Stuffed Chicken.",
            complete = {
                questObjective = { id = 3601, index = 3, text = "Kim'Jael's Stuffed Chicken", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.561, y = 0.301, label = "Kim'Jael's Stuffed Chicken", offMapText = "Travel to Kim'Jael's Stuffed Chicken." },
            },
            sourceStep = 35,
            priority = 460,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3601-kim-jael-indeed" },
        },
        {
            id = "objective-3601-4-kim-jael-s-wizzlegoober",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Kim'Jael's Wizzlegoober.",
            complete = {
                questObjective = { id = 3601, index = 4, text = "Kim'Jael's Wizzlegoober", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.561, y = 0.301, label = "Kim'Jael's Wizzlegoober", offMapText = "Travel to Kim'Jael's Wizzlegoober." },
            },
            sourceStep = 35,
            priority = 470,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3601-kim-jael-indeed" },
        },
        {
            priority = 480,
            text = "Turn in Kim'jael Indeed! to Kim'jael.",
            route = {
                { y = 0.2182, mapID = 1447, label = "Kim'jael", offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345 },
            },
            dependsOn = {
                "accept-3601-kim-jael-indeed",
                "objective-3601-1-kim-jael-s-equipment",
                "objective-3601-2-kim-jael-s-scope",
                "objective-3601-3-kim-jael-s-stuffed-chicken",
                "objective-3601-4-kim-jael-s-wizzlegoober",
            },
            id = "turnin-3601-kim-jael-indeed",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3601, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            route = {
                { y = 0.2182, mapID = 1447, label = "Kim'jael", offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345 },
            },
            text = "Accept Kim'jael's \"Missing\" Equipment from Kim'jael.",
            id = "accept-5534-kim-jael-s-missing-equipment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 5534, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3601 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            route = {
                { y = 0.5031, mapID = 1447, label = "Rune of Jin'yael", offMapText = "Travel to Rune of Jin'yael.", x = 0.3956 },
            },
            text = "Collect 1 Rubbing: Rune of Jin'yael.",
            id = "objective-3449-2-rune-of-jin-yael",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3449, text = "Rune of Jin'yael", index = 2, count = 1 },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3448 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            route = {
                { y = 0.5319, mapID = 1447, label = "Rune of Beth'Amara", offMapText = "Travel to Rune of Beth'Amara.", x = 0.3687 },
            },
            text = "Collect 1 Rubbing: Rune of Beth'Amara.",
            id = "objective-3449-1-rune-of-beth-amara",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3449, text = "Rune of Beth'Amara", index = 1, count = 1 },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3448 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            route = {
                { y = 0.5548, mapID = 1447, label = "Rune of Markri", offMapText = "Travel to Rune of Markri.", x = 0.393 },
            },
            text = "Collect 1 Rubbing: Rune of Markri.",
            id = "objective-3449-3-rune-of-markri",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3449, text = "Rune of Markri", index = 3, count = 1 },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3448 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            route = {
                { y = 0.6413, mapID = 1447, label = "Rune of Sael'hai", offMapText = "Travel to Rune of Sael'hai.", x = 0.4234 },
            },
            text = "Collect 1 Rubbing: Rune of Sael'hai.",
            id = "objective-3449-4-rune-of-sael-hai",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3449, text = "Rune of Sael'hai", index = 4, count = 1 },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3448 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5534-1-some-rune",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Some Rune.",
            complete = {
                questObjective = { id = 5534, index = 1, text = "Some Rune", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.45399999999999996, y = 0.54, label = "Some Rune", offMapText = "Travel to Some Rune." },
            },
            sourceStep = 41,
            priority = 540,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3601 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5534-kim-jael-s-missing-equipment" },
        },
        {
            priority = 550,
            text = "Turn in Kim'jael's \"Missing\" Equipment to Kim'jael.",
            route = {
                { mapID = 1447, x = 0.5345, y = 0.2182, label = "Kim'jael", offMapText = "Travel to Kim'jael in Azshara." },
            },
            dependsOn = { "accept-5534-kim-jael-s-missing-equipment", "objective-5534-1-some-rune" },
            id = "turnin-5534-kim-jael-s-missing-equipment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 5534, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3601 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            text = "Turn in Arcane Runes to Pilot Xiggs Fuselighter.",
            route = {
                { mapID = 1447, x = 0.778, y = 0.9131999999999999, label = "Pilot Xiggs Fuselighter", offMapText = "Travel to Pilot Xiggs Fuselighter in Azshara." },
            },
            dependsOn = {
                "objective-3449-2-rune-of-jin-yael",
                "objective-3449-1-rune-of-beth-amara",
                "objective-3449-3-rune-of-markri",
                "objective-3449-4-rune-of-sael-hai",
            },
            id = "turnin-3449-arcane-runes",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3449, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3448 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            route = {
                { mapID = 1447, x = 0.778, y = 0.9131999999999999, label = "Pilot Xiggs Fuselighter", offMapText = "Travel to Pilot Xiggs Fuselighter in Azshara." },
            },
            text = "Accept Return to Tymor from Pilot Xiggs Fuselighter.",
            id = "accept-3461-return-to-tymor",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3461, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3449 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
