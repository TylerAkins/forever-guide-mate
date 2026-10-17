local _, ns = ...

ns:RegisterGuide({
    revision = 5,
    title = "Ashenvale",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-ashenvale",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 21 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-warlock-accept-1472-devourer-of-souls",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1472,
            alternativeQuests = { 1507 },
        },
        {
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            id = "woven-class-warlock-accept-1472-devourer-of-souls",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1472-devourer-of-souls",
        },
        {
            route = {
                { y = 0.148, mapID = 1458, label = "Godrick Farsan", x = 0.85, offMapText = "Travel to Godrick Farsan in Undercity." },
            },
            dependsOn = { "woven-class-warlock-accept-1472-devourer-of-souls" },
            id = "woven-class-warlock-turnin-1472-devourer-of-souls",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1472-devourer-of-souls",
        },
        {
            route = {
                { y = 0.148, mapID = 1458, label = "Godrick Farsan", x = 0.85, offMapText = "Travel to Godrick Farsan in Undercity." },
            },
            id = "woven-class-warlock-accept-1476-hearts-of-the-pure",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1476-hearts-of-the-pure",
        },
        {
            id = "woven-class-warlock-objective-1476-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-1476-hearts-of-the-pure" },
            classAction = "objective-1476-quest-work",
        },
        {
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "woven-class-warlock-accept-1476-hearts-of-the-pure", "woven-class-warlock-objective-1476-quest-work" },
            id = "woven-class-warlock-turnin-1476-hearts-of-the-pure",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1476-hearts-of-the-pure",
        },
        {
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1474-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1474-the-binding",
        },
        {
            id = "woven-class-warlock-objective-1474-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-1474-the-binding" },
            classAction = "objective-1474-quest-work",
        },
        {
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "woven-class-warlock-accept-1474-the-binding", "woven-class-warlock-objective-1474-quest-work" },
            id = "woven-class-warlock-turnin-1474-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1474-the-binding",
        },
        {
            route = {
                { y = 0.256, mapID = 1458, label = "Godrick Farsan", x = 0.85, offMapText = "Travel to Godrick Farsan in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-65593-hearts-of-the-lovers",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-65593-hearts-of-the-lovers",
        },
        {
            id = "woven-class-warlock-objective-65593-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-65593-hearts-of-the-lovers" },
            classAction = "objective-65593-quest-work",
        },
        {
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "woven-class-warlock-accept-65593-hearts-of-the-lovers", "woven-class-warlock-objective-65593-quest-work" },
            id = "woven-class-warlock-turnin-65593-hearts-of-the-lovers",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-65593-hearts-of-the-lovers",
        },
        {
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-65597-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-65597-the-binding",
        },
        {
            id = "woven-class-warlock-objective-65597-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-65597-the-binding" },
            classAction = "objective-65597-quest-work",
        },
        {
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "woven-class-warlock-accept-65597-the-binding", "woven-class-warlock-objective-65597-quest-work" },
            id = "woven-class-warlock-turnin-65597-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-65597-the-binding",
        },
        {
            route = {
                { y = 0.466, mapID = 1454, label = "Cazul", x = 0.472, offMapText = "Travel to Cazul in Orgrimmar." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-65601-love-hurts",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-65601-love-hurts",
        },
        {
            route = {
                { y = 0.5, mapID = 1454, label = "Magar", x = 0.634, offMapText = "Travel to Magar in Orgrimmar." },
            },
            dependsOn = { "woven-class-warlock-accept-65601-love-hurts" },
            id = "woven-class-warlock-turnin-65601-love-hurts",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-65601-love-hurts",
        },
        {
            route = {
                { y = 0.5, mapID = 1454, label = "Magar", x = 0.634, offMapText = "Travel to Magar in Orgrimmar." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-65610-wish-you-were-here",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-65610-wish-you-were-here",
        },
        {
            id = "woven-class-warlock-objective-65610-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-65610-wish-you-were-here" },
            classAction = "objective-65610-quest-work",
        },
        {
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "woven-class-warlock-accept-65610-wish-you-were-here", "woven-class-warlock-objective-65610-quest-work" },
            id = "woven-class-warlock-turnin-65610-wish-you-were-here",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-65610-wish-you-were-here",
        },
        {
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-65604-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-65604-the-binding",
        },
        {
            id = "woven-class-warlock-objective-65604-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-65604-the-binding" },
            classAction = "objective-65604-quest-work",
        },
        {
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "woven-class-warlock-accept-65604-the-binding", "woven-class-warlock-objective-65604-quest-work" },
            id = "woven-class-warlock-turnin-65604-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-65604-the-binding",
        },
        {
            id = "level-before-woven-class-priest-accept-5680-shadowguard",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5680,
            alternativeQuests = { 5642, 5643 },
        },
        {
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            id = "woven-class-priest-accept-5680-shadowguard",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5680-shadowguard",
        },
        {
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "woven-class-priest-accept-5680-shadowguard" },
            id = "woven-class-priest-turnin-5680-shadowguard",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5680-shadowguard",
        },
        {
            id = "level-before-woven-class-priest-accept-5679-devouring-plague",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5679,
            alternativeQuests = { 5644, 5646 },
        },
        {
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            id = "woven-class-priest-accept-5679-devouring-plague",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5679-devouring-plague",
        },
        {
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "woven-class-priest-accept-5679-devouring-plague" },
            id = "woven-class-priest-turnin-5679-devouring-plague",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5679-devouring-plague",
        },
        {
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            id = "woven-class-priest-accept-5646-devouring-plague",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5646-devouring-plague",
        },
        {
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "woven-class-priest-accept-5646-devouring-plague" },
            id = "woven-class-priest-turnin-5646-devouring-plague",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5646-devouring-plague",
        },
        {
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            id = "woven-class-priest-accept-5643-shadowguard",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5643-shadowguard",
        },
        {
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "woven-class-priest-accept-5643-shadowguard" },
            id = "woven-class-priest-turnin-5643-shadowguard",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5643-shadowguard",
        },
        {
            id = "level-before-woven-class-shaman-accept-2986-call-of-water",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2986,
            alternativeQuests = { 1528, 1529, 2985 },
        },
        {
            route = {
                { y = 0.625, mapID = 1412, label = "Narm Skychaser", x = 0.474, offMapText = "Travel to Narm Skychaser in Mulgore." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-2986-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2986-call-of-water",
        },
        {
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "woven-class-shaman-accept-2986-call-of-water" },
            id = "woven-class-shaman-turnin-2986-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2986-call-of-water",
        },
        {
            route = {
                { y = 0.426, mapID = 1411, label = "Swart", x = 0.544, offMapText = "Travel to Swart in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-2985-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2985-call-of-water",
        },
        {
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "woven-class-shaman-accept-2985-call-of-water" },
            id = "woven-class-shaman-turnin-2985-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2985-call-of-water",
        },
        {
            id = "level-before-woven-class-shaman-accept-1529-call-of-water",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1529,
            alternativeQuests = { 1528, 2985, 2986 },
        },
        {
            route = {
                { y = 0.21, mapID = 1456, label = "Xanis Flameweaver", x = 0.252, offMapText = "Travel to Xanis Flameweaver in Thunder Bluff." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-1529-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1529-call-of-water",
        },
        {
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "woven-class-shaman-accept-1529-call-of-water" },
            id = "woven-class-shaman-turnin-1529-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1529-call-of-water",
        },
        {
            id = "level-before-woven-class-warrior-accept-1824-trial-at-the-field-of-giants",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1824,
        },
        {
            route = {
                { y = 0.594, mapID = 1413, label = "Ruga Ragetotem", x = 0.446, offMapText = "Travel to Ruga Ragetotem in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1824-trial-at-the-field-of-giants",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1824-trial-at-the-field-of-giants",
        },
        {
            route = {
                { y = 0.694, mapID = 1413, label = "Silithid Creeper", x = 0.454, offMapText = "Travel to Silithid Creeper in The Barrens." },
                { y = 0.694, mapID = 1413, label = "Silithid Grub", x = 0.452, offMapText = "Travel to Silithid Grub in The Barrens." },
                { y = 0.688, mapID = 1413, label = "Silithid Swarmer", x = 0.452, offMapText = "Travel to Silithid Swarmer in The Barrens." },
                { y = 0.702, mapID = 1413, label = "Silithid Harvester", x = 0.478, offMapText = "Travel to Silithid Harvester in The Barrens." },
                { y = 0.704, mapID = 1413, label = "Silithid Protector", x = 0.434, offMapText = "Travel to Silithid Protector in The Barrens." },
            },
            dependsOn = { "woven-class-warrior-accept-1824-trial-at-the-field-of-giants" },
            id = "woven-class-warrior-objective-1824-trial-at-the-field-of-giants",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1824-trial-at-the-field-of-giants",
        },
        {
            route = {
                { y = 0.594, mapID = 1413, label = "Ruga Ragetotem", x = 0.446, offMapText = "Travel to Ruga Ragetotem in The Barrens." },
            },
            dependsOn = {
                "woven-class-warrior-accept-1824-trial-at-the-field-of-giants",
                "woven-class-warrior-objective-1824-trial-at-the-field-of-giants",
            },
            id = "woven-class-warrior-turnin-1824-trial-at-the-field-of-giants",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1824-trial-at-the-field-of-giants",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1838-brutal-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1838-brutal-armor",
        },
        {
            dependsOn = { "woven-class-warrior-accept-1838-brutal-armor" },
            id = "woven-class-warrior-objective-1838-brutal-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1838-brutal-armor",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "woven-class-warrior-accept-1838-brutal-armor", "woven-class-warrior-objective-1838-brutal-armor" },
            id = "woven-class-warrior-turnin-1838-brutal-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1838-brutal-armor",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1848-brutal-hauberk",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1848-brutal-hauberk",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "woven-class-warrior-accept-1848-brutal-hauberk" },
            id = "woven-class-warrior-turnin-1848-brutal-hauberk",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1848-brutal-hauberk",
        },
        {
            route = {
                { y = 0.392, mapID = 1458, label = "Velora Nitely", x = 0.624, offMapText = "Travel to Velora Nitely in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1846-dragonmaw-shinbones",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1846-dragonmaw-shinbones",
        },
        {
            id = "woven-class-warrior-objective-1846-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1846-dragonmaw-shinbones" },
            classAction = "objective-1846-quest-work",
        },
        {
            route = {
                { y = 0.392, mapID = 1458, label = "Velora Nitely", x = 0.624, offMapText = "Travel to Velora Nitely in Undercity." },
            },
            dependsOn = { "woven-class-warrior-accept-1846-dragonmaw-shinbones", "woven-class-warrior-objective-1846-quest-work" },
            id = "woven-class-warrior-turnin-1846-dragonmaw-shinbones",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1846-dragonmaw-shinbones",
        },
        {
            route = {
                { y = 0.392, mapID = 1458, label = "Velora Nitely", x = 0.624, offMapText = "Travel to Velora Nitely in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1847-brutal-legguards",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1847-brutal-legguards",
        },
        {
            route = {
                { y = 0.392, mapID = 1458, label = "Velora Nitely", x = 0.624, offMapText = "Travel to Velora Nitely in Undercity." },
            },
            dependsOn = { "woven-class-warrior-accept-1847-brutal-legguards" },
            id = "woven-class-warrior-turnin-1847-brutal-legguards",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1847-brutal-legguards",
        },
        {
            route = {
                { y = 0.558, mapID = 1456, label = "Orm Stonehoof", x = 0.39, offMapText = "Travel to Orm Stonehoof in Thunder Bluff." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1844-chimaeric-horn",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1844-chimaeric-horn",
        },
        {
            id = "woven-class-warrior-objective-1844-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1844-chimaeric-horn" },
            classAction = "objective-1844-quest-work",
        },
        {
            route = {
                { y = 0.558, mapID = 1456, label = "Orm Stonehoof", x = 0.39, offMapText = "Travel to Orm Stonehoof in Thunder Bluff." },
            },
            dependsOn = { "woven-class-warrior-accept-1844-chimaeric-horn", "woven-class-warrior-objective-1844-quest-work" },
            id = "woven-class-warrior-turnin-1844-chimaeric-horn",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1844-chimaeric-horn",
        },
        {
            route = {
                { y = 0.558, mapID = 1456, label = "Orm Stonehoof", x = 0.39, offMapText = "Travel to Orm Stonehoof in Thunder Bluff." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1845-brutal-helm",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1845-brutal-helm",
        },
        {
            route = {
                { y = 0.558, mapID = 1456, label = "Orm Stonehoof", x = 0.39, offMapText = "Travel to Orm Stonehoof in Thunder Bluff." },
            },
            dependsOn = { "woven-class-warrior-accept-1845-brutal-helm" },
            id = "woven-class-warrior-turnin-1845-brutal-helm",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1845-brutal-helm",
        },
        {
            route = {
                { y = 0.744, mapID = 1411, label = "Ula'elek", x = 0.562, offMapText = "Travel to Ula'elek in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1842-satyr-hooves",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1842-satyr-hooves",
        },
        {
            id = "woven-class-warrior-objective-1842-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1842-satyr-hooves" },
            classAction = "objective-1842-quest-work",
        },
        {
            route = {
                { y = 0.744, mapID = 1411, label = "Ula'elek", x = 0.562, offMapText = "Travel to Ula'elek in Durotar." },
            },
            dependsOn = { "woven-class-warrior-accept-1842-satyr-hooves", "woven-class-warrior-objective-1842-quest-work" },
            id = "woven-class-warrior-turnin-1842-satyr-hooves",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1842-satyr-hooves",
        },
        {
            route = {
                { y = 0.744, mapID = 1411, label = "Ula'elek", x = 0.562, offMapText = "Travel to Ula'elek in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1843-brutal-gauntlets",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1843-brutal-gauntlets",
        },
        {
            route = {
                { y = 0.744, mapID = 1411, label = "Ula'elek", x = 0.562, offMapText = "Travel to Ula'elek in Durotar." },
            },
            dependsOn = { "woven-class-warrior-accept-1843-brutal-gauntlets" },
            id = "woven-class-warrior-turnin-1843-brutal-gauntlets",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1843-brutal-gauntlets",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1841-velora-nitely-and-the-brutal-legguards",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1841-velora-nitely-and-the-brutal-legguards",
        },
        {
            route = {
                { y = 0.392, mapID = 1458, label = "Velora Nitely", x = 0.624, offMapText = "Travel to Velora Nitely in Undercity." },
            },
            dependsOn = { "woven-class-warrior-accept-1841-velora-nitely-and-the-brutal-legguards" },
            id = "woven-class-warrior-turnin-1841-velora-nitely-and-the-brutal-legguards",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1841-velora-nitely-and-the-brutal-legguards",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1840-orm-stonehoof-and-the-brutal-helm",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1840-orm-stonehoof-and-the-brutal-helm",
        },
        {
            route = {
                { y = 0.558, mapID = 1456, label = "Orm Stonehoof", x = 0.39, offMapText = "Travel to Orm Stonehoof in Thunder Bluff." },
            },
            dependsOn = { "woven-class-warrior-accept-1840-orm-stonehoof-and-the-brutal-helm" },
            id = "woven-class-warrior-turnin-1840-orm-stonehoof-and-the-brutal-helm",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1840-orm-stonehoof-and-the-brutal-helm",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1839-ulaelek-and-the-brutal-gauntlets",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1839-ulaelek-and-the-brutal-gauntlets",
        },
        {
            route = {
                { y = 0.744, mapID = 1411, label = "Ula'elek", x = 0.562, offMapText = "Travel to Ula'elek in Durotar." },
            },
            dependsOn = { "woven-class-warrior-accept-1839-ulaelek-and-the-brutal-gauntlets" },
            id = "woven-class-warrior-turnin-1839-ulaelek-and-the-brutal-gauntlets",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1839-ulaelek-and-the-brutal-gauntlets",
        },
        {
            route = {
                { y = 0.594, mapID = 1413, label = "Ruga Ragetotem", x = 0.446, offMapText = "Travel to Ruga Ragetotem in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1825-speak-with-thungrim",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1825-speak-with-thungrim",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "woven-class-warrior-accept-1825-speak-with-thungrim" },
            id = "woven-class-warrior-turnin-1825-speak-with-thungrim",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1825-speak-with-thungrim",
        },
        {
            route = {
                { y = 0.17, mapID = 1458, label = "Baltus Fowler", x = 0.472, offMapText = "Travel to Baltus Fowler in Undercity." },
            },
            id = "woven-class-warrior-accept-1823-speak-with-ruga",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1823-speak-with-ruga",
        },
        {
            route = {
                { y = 0.594, mapID = 1413, label = "Ruga Ragetotem", x = 0.446, offMapText = "Travel to Ruga Ragetotem in The Barrens." },
            },
            dependsOn = { "woven-class-warrior-accept-1823-speak-with-ruga" },
            id = "woven-class-warrior-turnin-1823-speak-with-ruga",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1823-speak-with-ruga",
        },
        {
            id = "level-before-woven-class-druid-accept-98362-to-thunder-bluff",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 6, 96 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 98362,
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98362-to-thunder-bluff",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 6, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98362-to-thunder-bluff",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "woven-class-druid-accept-98362-to-thunder-bluff" },
            id = "woven-class-druid-turnin-98362-to-thunder-bluff",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 6, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98362-to-thunder-bluff",
        },
        {
            id = "level-before-woven-class-druid-accept-98739-blessings-of-the-great-cat-spirit",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 98739,
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98739-blessings-of-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98739-blessings-of-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98739-blessings-of-the-great-cat-spirit" },
            id = "woven-class-druid-turnin-98739-blessings-of-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98739-blessings-of-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98342-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98342-the-great-cat-spirit",
        },
        {
            id = "woven-class-druid-objective-98342-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-druid-accept-98342-the-great-cat-spirit" },
            classAction = "objective-98342-quest-work",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98342-the-great-cat-spirit", "woven-class-druid-objective-98342-quest-work" },
            id = "woven-class-druid-turnin-98342-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98342-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            id = "woven-class-druid-accept-98405-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98405-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98405-the-great-cat-spirit" },
            id = "woven-class-druid-turnin-98405-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98405-the-great-cat-spirit",
        },
        {
            id = "level-before-woven-class-druid-accept-98738-blessings-of-the-great-windborne-cat-spirit",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Horde" },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 98738,
        },
        {
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98738-blessings-of-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98738-blessings-of-the-great-windborne-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98738-blessings-of-the-great-windborne-cat-spirit" },
            id = "woven-class-druid-turnin-98738-blessings-of-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98738-blessings-of-the-great-windborne-cat-spirit",
        },
        {
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            id = "woven-class-druid-accept-98404-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98404-the-great-windborne-cat-spirit",
        },
        {
            id = "woven-class-druid-objective-98404-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-druid-accept-98404-the-great-windborne-cat-spirit" },
            classAction = "objective-98404-quest-work",
        },
        {
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            dependsOn = {
                "woven-class-druid-accept-98404-the-great-windborne-cat-spirit",
                "woven-class-druid-objective-98404-quest-work",
            },
            id = "woven-class-druid-turnin-98404-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98404-the-great-windborne-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98341-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98341-the-great-windborne-cat-spirit",
        },
        {
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98341-the-great-windborne-cat-spirit" },
            id = "woven-class-druid-turnin-98341-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98341-the-great-windborne-cat-spirit",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            id = "woven-class-druid-accept-98340-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 6, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98340-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98340-the-great-cat-spirit" },
            id = "woven-class-druid-turnin-98340-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 6, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98340-the-great-cat-spirit",
        },
        {
            id = "level-before-woven-class-paladin-accept-95140-old-fire-eye",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 95140,
        },
        {
            route = {
                { y = 0.408, mapID = 1421, label = "Lumina Windsinger", x = 0.432, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            id = "woven-class-paladin-accept-95140-old-fire-eye",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-95140-old-fire-eye",
        },
        {
            dependsOn = { "woven-class-paladin-accept-95140-old-fire-eye" },
            id = "woven-class-paladin-objective-95140-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-95140-reviewed-mechanics",
        },
        {
            route = {
                { y = 0.408, mapID = 1421, label = "Lumina Windsinger", x = 0.432, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            dependsOn = { "woven-class-paladin-accept-95140-old-fire-eye", "woven-class-paladin-objective-95140-reviewed-mechanics" },
            id = "woven-class-paladin-turnin-95140-old-fire-eye",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-95140-old-fire-eye",
        },
        {
            route = {
                { y = 0.26, mapID = 1424, label = "Ott", x = 0.604, offMapText = "Travel to Ott in Hillsbrad Foothills." },
            },
            id = "woven-class-paladin-accept-95126-the-moonsilver-blade",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-95126-the-moonsilver-blade",
        },
        {
            route = {
                { y = 0.41, mapID = 1421, label = "Trevan Rol", x = 0.434, offMapText = "Travel to Trevan Rol in Silverpine Forest." },
            },
            dependsOn = { "woven-class-paladin-accept-95126-the-moonsilver-blade" },
            id = "woven-class-paladin-turnin-95126-the-moonsilver-blade",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-95126-the-moonsilver-blade",
        },
        {
            id = "level-before-woven-class-paladin-handoff-95036-class-dungeon",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 95036,
        },
        {
            id = "woven-class-paladin-handoff-95036-class-dungeon",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "handoff-95036-class-dungeon",
        },
        {
            id = "level-before-woven-class-paladin-accept-95042-seeking-the-kor-gem",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 95042,
        },
        {
            route = {
                { mapID = 1440, x = 0.118, y = 0.344, label = "Ulric Frostveil", offMapText = "Travel to the Zoram Strand in Ashenvale." },
            },
            id = "woven-class-paladin-accept-95042-seeking-the-kor-gem",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-95042-seeking-the-kor-gem",
        },
        {
            route = {
                { mapID = 1440, x = 0.1355, y = 0.1206, label = "Naga at Blackfathom Deeps", offMapText = "Travel north along the Zoram Strand in Ashenvale." },
            },
            dependsOn = { "woven-class-paladin-accept-95042-seeking-the-kor-gem" },
            id = "woven-class-paladin-objective-95042-seeking-the-kor-gem",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-95042-seeking-the-kor-gem",
        },
        {
            route = {
                { mapID = 1440, x = 0.118, y = 0.344, label = "Ulric Frostveil", offMapText = "Travel to the Zoram Strand in Ashenvale." },
            },
            dependsOn = {
                "woven-class-paladin-accept-95042-seeking-the-kor-gem",
                "woven-class-paladin-objective-95042-seeking-the-kor-gem",
            },
            id = "woven-class-paladin-turnin-95042-seeking-the-kor-gem",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-95042-seeking-the-kor-gem",
        },
        {
            id = "level-before-accept-216-between-a-rock-and-a-thistlefur",
            kind = "note",
            text = "Reach level 21 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 21 },
            },
            requiredLevel = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 216,
        },
        {
            route = {
                { y = 0.3453, mapID = 1440, label = "Karang Amakkar", offMapText = "Travel to Karang Amakkar in Ashenvale.", x = 0.119 },
            },
            text = "Accept Between a Rock and a Thistlefur from Karang Amakkar.",
            id = "accept-216-between-a-rock-and-a-thistlefur",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 216, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.349, mapID = 1440, label = "Marukai", offMapText = "Travel to Marukai in Ashenvale.", x = 0.1169 },
            },
            text = "Accept Naga at the Zoram Strand from Marukai.",
            id = "accept-6442-naga-at-the-zoram-strand",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6442, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.3485, mapID = 1440, label = "Mitsuwa", offMapText = "Travel to Mitsuwa in Ashenvale.", x = 0.1165 },
            },
            text = "Accept Troll Charm from Mitsuwa.",
            id = "accept-6462-troll-charm",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6462, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Collect 20 Wrathtail Head.",
            route = {
                { y = 0.292, mapID = 1440, label = "Wrathtail Wave Rider", offMapText = "Travel to Wrathtail Wave Rider.", x = 0.124 },
            },
            dependsOn = { "accept-6442-naga-at-the-zoram-strand" },
            id = "objective-6442-1-wrathtail-wave-rider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6442, text = "Wrathtail Wave Rider", index = 1, count = 20 },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Naga at the Zoram Strand to Marukai.",
            route = {
                { y = 0.349, mapID = 1440, label = "Marukai", offMapText = "Travel to Marukai in Ashenvale.", x = 0.1169 },
            },
            dependsOn = { "accept-6442-naga-at-the-zoram-strand", "objective-6442-1-wrathtail-wave-rider" },
            id = "turnin-6442-naga-at-the-zoram-strand",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6442, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.3091, mapID = 1456, label = "Magatha Grimtotem", offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.", x = 0.6985 },
            },
            text = "Turn in The Elder Crone to Magatha Grimtotem.",
            id = "turnin-1063-the-elder-crone",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1063, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.3091, mapID = 1456, label = "Magatha Grimtotem", offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.", x = 0.6985 },
            },
            text = "Accept Forsaken Aid from Magatha Grimtotem.",
            id = "accept-1064-forsaken-aid",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1064, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1063 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Turn in Forsaken Aid to Apothecary Zamah.",
            route = {
                { mapID = 1456, x = 0.2281, y = 0.209, label = "Apothecary Zamah", offMapText = "Travel to Apothecary Zamah in Thunder Bluff." },
            },
            dependsOn = { "accept-1064-forsaken-aid" },
            id = "turnin-1064-forsaken-aid",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1064, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1063 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { mapID = 1456, x = 0.2281, y = 0.209, label = "Apothecary Zamah", offMapText = "Travel to Apothecary Zamah in Thunder Bluff." },
            },
            text = "Accept Journey to Tarren Mill from Apothecary Zamah.",
            id = "accept-1065-journey-to-tarren-mill",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1065, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1064 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-5642-shadowguard",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5642,
            alternativeQuests = { 5643, 5680 },
        },
        {
            route = {
                { mapID = 1454, x = 0.35590000000000005, y = 0.8782, label = "Ur'kyo", offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            text = "Turn in Shadowguard to Ur'kyo.",
            id = "turnin-5642-shadowguard",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 5642, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            alternativeQuests = { 5643, 5680 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1511-ken-zigla-s-draught",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1511,
            alternativeQuests = { 1472 },
        },
        {
            route = {
                { mapID = 1413, x = 0.4462, y = 0.5927, label = "Grunt Logmar", offMapText = "Travel to Grunt Logmar in The Barrens." },
            },
            text = "Turn in Ken'zigla's Draught to Grunt Logmar.",
            id = "turnin-1511-ken-zigla-s-draught",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1511, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1510 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { mapID = 1413, x = 0.4462, y = 0.5927, label = "Grunt Logmar", offMapText = "Travel to Grunt Logmar in The Barrens." },
            },
            text = "Accept Dogran's Captivity from Grunt Logmar.",
            id = "accept-1515-dogran-s-captivity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1515, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1511 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Turn in Dogran's Captivity to Grunt Dogran.",
            route = {
                { y = 0.4789, mapID = 1413, label = "Grunt Dogran", offMapText = "Travel to Grunt Dogran in The Barrens.", x = 0.4331 },
            },
            dependsOn = { "accept-1515-dogran-s-captivity" },
            id = "turnin-1515-dogran-s-captivity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1515, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1511 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.4789, mapID = 1413, label = "Grunt Dogran", offMapText = "Travel to Grunt Dogran in The Barrens.", x = 0.4331 },
            },
            text = "Accept Love's Gift from Grunt Dogran.",
            id = "accept-1512-love-s-gift",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1512, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1515 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Turn in Love's Gift to Gan'rul Bloodeye.",
            route = {
                { y = 0.4529, mapID = 1454, label = "Gan'rul Bloodeye", offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar.", x = 0.4825 },
            },
            dependsOn = { "accept-1512-love-s-gift" },
            id = "turnin-1512-love-s-gift",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1512, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1515 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.4529, mapID = 1454, label = "Gan'rul Bloodeye", offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar.", x = 0.4825 },
            },
            text = "Accept The Binding from Gan'rul Bloodeye.",
            id = "accept-1513-the-binding",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1513, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1512 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Kill Summoned Succubus.",
            route = {
                { y = 0.5003, mapID = 1454, label = "Dogran's Pendant", offMapText = "Travel to Dogran's Pendant.", x = 0.4945 },
            },
            dependsOn = { "accept-1513-the-binding" },
            id = "objective-1513-1-dogran-s-pendant",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1513, text = "Dogran's Pendant", index = 1 },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1512 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Binding to Gan'rul Bloodeye.",
            route = {
                { y = 0.4529, mapID = 1454, label = "Gan'rul Bloodeye", offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar.", x = 0.4824 },
            },
            dependsOn = { "accept-1513-the-binding", "objective-1513-1-dogran-s-pendant" },
            id = "turnin-1513-the-binding",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1513, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1512 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-2460-the-shattered-salute",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2460,
        },
        {
            route = {
                { y = 0.5374, mapID = 1454, label = "Shenthul", offMapText = "Travel to Shenthul in Orgrimmar.", x = 0.4305 },
            },
            text = "Accept The Shattered Salute from Shenthul.",
            id = "accept-2460-the-shattered-salute",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2460, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-2460-quest-work",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 32,
            useClientPin = true,
            dependsOn = { "accept-2460-the-shattered-salute" },
            classAction = "objective-2460-quest-work",
        },
        {
            text = "Turn in The Shattered Salute to Shenthul.",
            route = {
                { y = 0.5374, mapID = 1454, label = "Shenthul", offMapText = "Travel to Shenthul in Orgrimmar.", x = 0.4305 },
            },
            dependsOn = { "accept-2460-the-shattered-salute", "objective-2460-quest-work" },
            id = "turnin-2460-the-shattered-salute",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2460, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.5374, mapID = 1454, label = "Shenthul", offMapText = "Travel to Shenthul in Orgrimmar.", x = 0.4305 },
            },
            text = "Accept Deep Cover from Shenthul.",
            id = "accept-2458-deep-cover",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2458, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2460 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-2458-1-flare-gun",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2458,
        },
        {
            text = "At the Venture Company tower north of the Sludge Fen, fire the Flare Gun twice before approaching Taskmaster Fizzule. Then target Fizzule and use /salute. Follow this order so he recognizes you.",
            dependsOn = { "accept-2458-deep-cover" },
            id = "objective-2458-1-flare-gun",
            kind = "objective",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2458, text = "Flare Gun", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2460 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
        },
        {
            text = "Turn in Deep Cover to Taskmaster Fizzule.",
            route = {
                { y = 0.0556, mapID = 1413, label = "Taskmaster Fizzule", offMapText = "Travel to Taskmaster Fizzule in The Barrens.", x = 0.5544 },
            },
            dependsOn = { "accept-2458-deep-cover", "objective-2458-1-flare-gun" },
            id = "turnin-2458-deep-cover",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2458, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2460 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.0556, mapID = 1413, label = "Taskmaster Fizzule", offMapText = "Travel to Taskmaster Fizzule in The Barrens.", x = 0.5544 },
            },
            text = "Accept Mission: Possible But Not Probable from Taskmaster Fizzule.",
            id = "accept-2478-mission-possible-but-not-probable",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2478, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-2478-5-silixiz-s-tower-key",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Silixiz's Tower Key.",
            complete = {
                questObjective = { id = 2478, index = 5, text = "Silixiz's Tower Key", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.5479999999999999, y = 0.059699999999999996, label = "Silixiz's Tower Key", offMapText = "Travel to Silixiz's Tower Key." },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
        },
        {
            text = "Kill 2 Mutated Venture Co. Drone.",
            route = {
                { y = 0.0573, mapID = 1413, label = "Mutated Venture Co. Drone", offMapText = "Travel to Mutated Venture Co. Drone.", x = 0.5471 },
            },
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            id = "objective-2478-1-mutated-venture-co-drone",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2478, text = "Mutated Venture Co. Drone", index = 1, count = 2 },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill 2 Venture Co. Patroller.",
            route = {
                { y = 0.0559, mapID = 1413, label = "Venture Co. Patroller", offMapText = "Travel to Venture Co. Patroller.", x = 0.5481 },
            },
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            id = "objective-2478-3-venture-co-patroller",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2478, text = "Venture Co. Patroller", index = 3, count = 2 },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill 2 Venture Co. Lookout.",
            route = {
                { y = 0.0564, mapID = 1413, label = "Venture Co. Lookout", offMapText = "Travel to Venture Co. Lookout.", x = 0.5463 },
            },
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            id = "objective-2478-2-venture-co-lookout",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2478, text = "Venture Co. Lookout", index = 2, count = 2 },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 1 Gallywix's Head.",
            route = {
                { y = 0.0559, mapID = 1413, label = "Grand Foreman Puzik Gallywix", offMapText = "Travel to Grand Foreman Puzik Gallywix.", x = 0.5475 },
            },
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            id = "objective-2478-4-grand-foreman-puzik-gallywix",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2478, text = "Grand Foreman Puzik Gallywix", index = 4, count = 1 },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 1 Cache of Zanzil's Altered Mixture.",
            route = {
                { y = 0.0555, mapID = 1413, label = "Gallywix's Lockbox", offMapText = "Travel to Gallywix's Lockbox.", x = 0.5475 },
            },
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            id = "objective-2478-6-gallywix-s-lockbox",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2478, text = "Gallywix's Lockbox", index = 6, count = 1 },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Mission: Possible But Not Probable to Shenthul.",
            route = {
                { y = 0.5374, mapID = 1454, label = "Shenthul", offMapText = "Travel to Shenthul in Orgrimmar.", x = 0.4305 },
            },
            dependsOn = {
                "accept-2478-mission-possible-but-not-probable",
                "objective-2478-5-silixiz-s-tower-key",
                "objective-2478-1-mutated-venture-co-drone",
                "objective-2478-3-venture-co-patroller",
                "objective-2478-2-venture-co-lookout",
                "objective-2478-4-grand-foreman-puzik-gallywix",
                "objective-2478-6-gallywix-s-lockbox",
            },
            id = "turnin-2478-mission-possible-but-not-probable",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2478, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.5374, mapID = 1454, label = "Shenthul", offMapText = "Travel to Shenthul in Orgrimmar.", x = 0.4305 },
            },
            text = "Accept Hinott's Assistance from Shenthul.",
            id = "accept-2479-hinott-s-assistance",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2479, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2478 },
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
